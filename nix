;-*- mode: Org; fill-column: 110;-*-

Dave McKay https://www.howtogeek.com/author/davidmckay/page/7/
nixCraft - library

- https://zerobin.net/
- cat file  | gzip -f - |base64
- echo "codes here"  | base64 -d | gzip -d -
- wizardchan for link


* Gentoo full install - disk encryption USB - Dracut

steps
- we need offset for MBR with grub and boot partition. This partition will contain GRUB files, plain
  (unencrypted) kernel and kernel initrd, dracut initramfs:
- Partitioning GPT table (offset is a separate partition of size 1M):
  - parted /dev/sda
    - mkpart primary fat32 3 515
    - name 2 boot
    - set 2 BOOT on
    - mkpart primary 515 -1
    - name 3 lvm
    - set 3 lvm on
    - set 1 bios_grub on # offset for MBR in GPT table
- Partitioning MSDOS table (offset is an empty space of size 1-10M):
  - fdisk /dev/sda
    - o
    - n, p, 1, 20488 (10M offset, not shure how many required for grub), +300M, w - boot
    - n, p, 2, 20488, Enter, +10G, w - swap
    - n, p, 3, 20488, Enter, Enter - luks partition
- Formatting:
  - mkfs.vfat -F32 /dev/sdX2
  - modprobe dm-crypt
  - gpg variant
    - export GPG_TTY=$(tty)
    - dd if=/dev/urandom bs=8388607 count=1 | gpg --symmetric --cipher-algo AES256 --output /mnt/key/rootkey.gpg
    - gpg --quiet --decrypt /mnt/key/rootkey.gpg | cryptsetup --batch-mode --key-file - luksFormat /dev/sdX3
    - gpg --quiet --decrypt /mnt/key/rootkey.gpg | cryptsetup --batch-mode --key-file - luksOpen /dev/sdX3 lvm
  - cryptsetup-variant (not tested):
    - cryptsetup luksFormat /dev/sdZn
    - cryptsetup luksOpen /dev/ssdZn
  - cryptsetup luksDump /dev/sdX3 # check
- Create LVM inside encrypted block - for SSD TRIM require special options
  - vgcreate vg0 /dev/mapper/lvm  # Create volume group vg0:
  - lvcreate -L 60G -n root vg0  # Create logical volume for /root filesystem
  - lvcreate -L 40G -n var vg0  # Create logical volume for /var filesystem
  - lvcreate -L 7G -n swap vg0  # Create logical volume for swap filesystem
  - lvcreate -l 100%FREE -n home vg0  # Create logical volume for /home filesystem:
  - cryptsetup luksHeaderBackup /dev/sdXn --header-backup-file /tmp/efiboot/luks-header.img  # backup
- format
  - mkswap -L "swap" -n 32k /dev/mapper/vg1-swap
  - mkfs.btrfs -L "root" -n 32k /dev/mapper/vg1-root
  - mkfs.btrfs -L "var" -n 32k /dev/mapper/vg1-var
  - mkfs.trfs -L "home" -n 32k /dev/mapper/vg1-home
- mount
  - mount -o ssd,compress=lzo,discard=async /dev/vg0/root /mnt/gentoo/
  - mkdir /mnt/getnoo/var
  - mount -o ssd,compress=lzo,discard=async /dev/vg0/var/ /mnt/gentoo/var/
- tar xpvf stage3-*.tar.xz --xattrs-include='*.*' --numeric-owner # v - verbose
- mirrorselect -i -o >> /mnt/gentoo/etc/portage/make.conf
- mkdir --parents /mnt/gentoo/etc/portage/repos.conf
- cp /mnt/gentoo/usr/share/portage/config/repos.conf /mnt/gentoo/etc/portage/repos.conf/gentoo.conf
- cp --dereference /etc/resolv.conf /mnt/gentoo/etc/
- nano -w /mnt/gentoo/etc/portage/make.conf
  - COMMON_FLAGS="-march=native -O2 -pipe"
  - MAKEOPTS="-j4"
- chroot! (don't forget env-update && . /etc/profile )
- emerge-webrsync
- emerge --sync --quiet
- gcc -v -E -x c /dev/null -o /dev/null -march=native 2>&1 | grep /cc1 | grep mtune
- replace -march=native
- emerge --ask  app-portage/cpuid2cpuflags
- $cpuid2cpuflags >> /etc/portage/make.conf
- emerge --ask emacs sys-kernel/dracut sys-kernel/gentoo-sources sys-boot/grub sys-fs/lvm2 sys-fs/cryptsetup
  app-crypt/gnupg sys-fs/btrfs-progs
- USE="-gtk -pango -libkms" emerge --ask sys-boot/plymouth
- rc-update add lvm boot
- fstab
- sfdisk -d /dev/sda > /mnt/img/sda.partition.table.txt # backup partition table
- findmnt --verify --verbose # verify fstab
- set time:
  - date +%Y%m%d -s "20220429"
  - date -s "19:35"
  - hwclock --systohc
- configure and build Kernel [[config_kernel_gentoo]]
- /etc/dracut.conf
  - # Equivalent to -a "module"
  - # located /usr/lib/dracut/modules.d/
  - add_dracutmodules+=" lvm btrfs crypt crypt-gpg dm "
  - filesystems+=" btrfs "
  - kernel_cmdline="rd.luks.key=/luks-key.gpg:UUID=xxxxxx-xxx-xx-xx rd.luks.uuid=luks-xxxxxx-xxx-xx-xx rd.luks
    rd.lvm rd.lvm.vg=vg0 rd.lvm.lv=vg0/root root=/dev/mapper/vg0-root rootfstype=btrfs
    rootflags=rw,noatime,nodirtime,compress=lzo,ssd,space_cache=v2,subvolid=5,subvol=/" # shoud work
  - full: kernel_cmdline="
  - early_microcode="no
  - show_modules="yes"
  - rd.lvm.vg="vg0"
- dracut --kver 5.15.26-gentoo --force --hostonly --fstab 2>drac_log.txt # - to generate initramfs
- grub-mkconfig -o /boot/grub/grub.cfg
- grub-instal
- /etc/dracut.conf: kernel_cmdline shoud be copied to /etc/default/grub:GRUB_CMDLINE_LINUX
- passwd # set root password
- useradd -m -G users,wheel,audio,video,cdrom,games,usb -s /bin/bash larry
- network confuguration [[network_config_gentoo]]
- Xorg/X11 confuguration [[xfce4_install_gentoo]]
- logging daemon
  - emerge --ask app-admin/sysklogd
  - rc-update add sysklogd default
  - chmod 700 /var/log
- passwd larry
- user autologin:
  - /etc/inittab: c2:2345:respawn:/sbin/agetty -a larry 38400 tty2 linux
- timezone:
  - ls /usr/share/zoneinfo
  - echo "UTC" > /etc/timezone
- locale
  - cat /usr/share/i18n/SUPPORTED
  - nano -w /etc/locale.gen
  - locale-gen
  - eselect locale list
- [[kernel_security]]


change password:
- gpg -d /mnt/key/rootkey.gpg > /mnt/key/rootkey
- cat /mnt/key/rootkey | gpg --cipher-algo aes256 --armor -c > /mnt/key/rootkey_sc.gpg

btrfs:
- btrfs filesystem defragment -r -v -clzo / # force mounted to compress
- mount -o compress=lzo,discard=async /dev/  /mnt/

** links
https://mirrors.edge.kernel.org/pub/linux/utils/boot/dracut/dracut.html
https://wiki.gentoo.org/wiki/Dm-crypt_full_disk_encryption
** dracut.conf
# Gentoo specific
udevdir=/lib/udev
ro_mnt=yes
omit_drivers+=" i2o_scsi "


omit_dracutmodules+=" systemd systemd-initrd dracut-systemd
** errors
crypt error allocating crypto tfm
- device-mapper: table : crypt error allocating crypto tfm
- device-mapper: ioctl: error adding target to table
- device-mapper: reload ioctl on failed: no such file or directory
- no cryptographic support in Cryptographic API --->

grub install: WARNING: Failed to connect to lvmetad. Failling back to device scanning. ; Cannot process volume
group luks
- in /etc/lvm/lvm.conf the following : use_lvmetad = 0
- USE=device-manager emerge --ask grub
** change password luks.gpg
- export GPG_TTY=$(tty)
- gpg --quiet --decrypt /mnt/key/rootkey.gpg > file
- cat file | gpg --symmetric --cipher-algo AES256 --output /mnt/key/luks-key_new.gpg

** ru descryption
Если вам интересно, так я обеспечиваю свою безопасность. Понимаю, что вы работаете с более серьезными задачами.
- Перепрошиваю чип с UEFI BIOS на "coreboot", это обратный инжинеринг волонтерами.
- Устанавливаю Gentoo, где бинарные пакеты только на первом шаге, затем они же пересобирается из исходного кода.
- Компилирую ядро Линукс с отключенными модулями и такими настройками, как: защита от переполнения буфера, рандомизация структур, очистка стека, отладка структур. Выборочно вставляю бинарные Блобы в ядро, когда нет альтернатив.
- Полное шифрование диска с помощью LUKS (Linux Unified Key Setup) структуры раздела, где берется файл-ключ шифрования размером несколько мегабайт, шифруется симметричным шифрованием (AES256) обычным паролем и помещается на флеш карту. Во время загрузки из initramfs запрашивается пароль, с флешки берется файл, расшифровывается паролем и используется как ключ для LUKS (aes-xts-plain64,256 bits). /boot раздел располагается на флешке без шифрования.
-  /etc/fstab: proc /proc proc hidepid=2,nosuid,noexec,gid=wheel       /home на отдельном разделе с noexec,nosuid,nodev
- Простой фаервол с помощью iptables или nftables. Logcheck анализатор логов. Бэкап с помощью rsync.
- Не использую SELinux, так как под рутом вроде бы ничего не запускаю, вместо этого устанавливаю библиотеку POSIX Capabilities, которая поддерживается многими пакетами.
- Захожу под рутом и пользователем с разных консолей, для каждого прилажения создаю отдельного пользователя, sudo использую только для запуска таких прилажений.
- Изолирую прилажения с помощью чательно настроенного Firejail, чтобы исключить сбор информации о системе и кейлогеров. Аппаратная виртуализация слишком сложная в настройке, даже паравиртуализация слишком много требует.
* dev directory
** divice file
- device files is that they are most definitely not device drivers
- they are portals to the device drivers
  - app -> dev_file -> drive -> phisic
  - app <- dev_file <- drive <- phisic
ls -al
- c.... - characted device
- b... - block device, typically a multiple of 256 bytes
- major device number and minor device number

info:
- udevadm info -a -p  $(udevadm info -q path -n /dev/input/event1)

** disks
find disk by uuid
- $blkid - partitions, UUID, BLOCK_SIZE, TYPE
- ls -al /dev/disk/by-uuid/

recover partitions and change partition table type:
- testdisk

mount options
- findmnt

change uuid
- uuidgen
- tune2fs /dev/sdy1 -U cd6ecfb1-05e0-4dd7-89e7-8e78dad1fa0e

sector - phisical disk area
Disk sector  - traditionally 512 bytes  - 4096-byte (4 KiB) sectors, which are known as the Advanced Format

remount directory:
- mount -o remount /var

** bad blocks
- blocksize=$(blockdev --getbsz /dev/sdX)
- badblocks -t random -w -s -b $blocksize -c 5000 -o out.txt /dev/sdX
check bad blocks fast:
- cryptsetup open /dev/device name --type plain --cipher aes-xts-plain64
- shred -v -n 0 -z /dev/mapper/name
- cmp -b /dev/zero /dev/mapper/name
- or diff-hightlight -y <(xxd /dev/zero) <(xxd /dev/mapper/name)
- or diff -y <(hexdump -C /dev/zero) <(hexdump -C /dev/mapper/name)
** partition table theory

MBR Partition Table(msdos)
- first 512 bytes of a storage device
- saves partition information on the first sector of disk(MBR sector)
- stored in the first sector (cylinder 0, head 0, sector 1 -- or, alternately, LBA 0) of the hard drive
- Each partition entry is 16 bytes, and the total is 64 bytes.
- maximum of 4 entries
- size of a single partition in MBR disk can only amount to 2TB
- Each of the four Partition Table entries contains the following elements, in the following structure:
  - Boot indicator bit flag: 0 = no, 0x80 = bootable (or "active")
  - starting position, size and ending position
- At most one partition should be active
- https://wiki.osdev.org/MBR_(x86)

GPT (GUID Partition Table)
- up to 128 partitions on hard disk.
- uses UUIDs
- CRC32 checksums to detect errors and corruption of the header and partition table.
- Stores a backup header and partition table at the end of the disk that aids in recovery in case the primary
  ones are damaged.
- kernel require: CONFIG_EFI_PARTITION=y.

** boot BIOS/UEFI/MBR/GPT
- BIOS MBR
- BIOS GPT - may have conflicts i motherboard.
  - BIOS boot partition - (1 to 2 MB) partition - in which boot loaders like GRUB2 can put additional data
    that doesn't fit in the allocated storage.
- UEFI GPT
  - EFI System Partition (ESP) - FAT variant for /boot
    - mkfs.fat -F 32 /dev/sda1
- UEFI MBR - ? not used.

GPT It carries CRC32 checksums to detect errors in the header and partition tables and has a backup GPT at the
end of the disk. This backup table can be used to recover damage of the primary GPT near the beginning of the
disk.
** btrfs
*** mount options
- discard - default off -
  - required SATA revision 3.1 chipsets and devices. TRIM on the backing device
- autodefrag, noautodefrag - default: off - Not well suited for large database workloads.
- compress, compress=<type[:level]>, compress-force, compress-force=<type[:level]>
-


chech TRIM is supported:
- lsblk
- A device supporting discard has non-zero values in the columns of DISC-GRAN (discard granularity) and DISC-MAX
(discard max bytes). In the example listing above, the /dev/sda device supports discard while /dev/sdb does
not.

example:
- /dev/mapper/sda2_crypt /home                btrfs   defaults,noatime,autodefrag,compress=zstd,commit=120,subvol=home 0 0
https://btrfs.readthedocs.io/en/latest/Administration.html
** boot sequence
Simple:
1) BIOS or ?
2) MBR or EFI ?
3) grub inside of MBR or ?
4) mount /boot/ and read /boot/grub.conf
5) Linux kernel
6) mount real /
7) drivers
8) init /etc/inittab
9) udev daemon

initramfs
1) boot loader
2) Linux kernel
3) initramfs - contains / file system
4) mount real / read-only
5) mount /
6) init /etc/inittab
7) udev daemon
** clone hard drive
Why # dd if=/dev/hda of=/dev/hdc bs=2048k - is bad?
- no defragmentation
- copying of unused space
- very slow if read error

way https://forums.gentoo.org/viewtopic.php?t=28123&highlight=backup
-
** backup
- Bare metal recovery - dd, CloneZilla, PartImage, or FSArchiver
- recover: mount read only or make copy first!
*** rsync:
default - full file sunchronization without deletion of files
- --delete - removes target if source is empty
- --update - do not sync if target file is newer

rsync -aAXv / --delete --progress --exclude={/dev/*,/proc/*,/sys/*,/tmp/*,/var/tmp/*,/var/log/*,/var/cache/*,/run/*,/mnt/*,/lost+found} / /backup
  - then later you can add the -u option to rsync and just update what has changed.
  - rsync -aAXv --delete /mnt/drive  /mnt/system
  - -a – Archive mode. -rlptgoD (no -A,-X,-U,-N,-H),U,N- time, H- hard links
  - -A – This preserves the Access Control List.
  - -X – This preserves all extended file attributes of the files.
  - --delete – This option enables you to make an incremental backup. In simple terms, with exception of the
    first backup, it only backs up the difference existing between the source and the destination backup
    drive. It only backs up new and modified files as well as deletes all the files in the backup location
    which have been deleted.
  - --update skip files which exist on destination and have a modidied time (and size) that is newer than the source file
  - --dry-run – This is the option that simulates the backup process.
- rsync -aAXv -e ssh root@192.186.0.1:/ /mnt/backup
- restore: COPY FIRST! rsync -aAXv /backup/ /mnt/gentoo
  - / after backup is required

copy root (do not forget exclude):
- rsync -aAXv / /mnt/gentoo

*** TODO cpio
- find / -xdev | cpio -pvdm /destdir

*** tar
COPY ORIGINAL BACKUP FIRST!
- tar -ztvf my-data.tar.gz # view content
- tar --exclude-from=/home/john/exclude.txt -czpvf /home/john/backup/linux_backup.tar.gz /
- restore: tar --exclude-from=$exclude_file --xattrs-include=*.* -xpvf backupfile.tar.gz /

- exclude.txt - must contain path inside of tar, not outside or starting with target dirname
#+begin_src text
tmp/*
proc/*
dev/*
sys/*
run/*
var/tmp/*
var/run/*
var/lock/*
usr/src/*
var/log/*
var/cache/distfiles/*
mnt/*
home/u/MEDIA/*
#+end_src

path inside of tar:
- tar -zcvf b.tar.gz --exclude-from="exclude.txt" tmpd/ => tmpd/ - inside of tar
- tar -zcvf b.tar.gz --exclude-from="exclude.txt" /home/u/tmpd/ => /home/u/tmpd/ - inside of tar

*** TODO backup-tar
*** links
- https://averagelinuxuser.com/backup-and-restore-your-linux-system-with-rsync/
- https://www.howtogeek.com/427480/how-to-back-up-your-linux-system/
- https://www.vultr.com/docs/use-gnu-tar-to-backup-linux
- https://wiki.archlinux.org/title/Full_system_backup_with_tar
** hierarchy
- https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard
- posix: https://www.baeldung.com/linux/posix
** SSD
- When partitioning an SSD, align primary and logical partitions on one-megabyte (1048576 bytes)
  boundaries. If partitions, file system blocks, or RAID stripes are incorrectly aligned and overlap the
  boundaries of the underlying storage's pages, which are usually either 4 KB or 8 KB in size, the device
  controller has to modify twice as many pages than if correct alignment is used.
- I recommand to use TMPFS for
  - /tmp
  - /var/tmp
  - /var/log
- NOOP scheduler is the simplest I/O scheduler - kernel option: elevator=noop
- align partition with HDD blocks and use the same size of sectors if possible
- use noatime, compress, ssd_spread and nodiratime mount options
- btrfs: ssd,discard=async option to mount for btrfs
- ext4: discard
- cryptsetup luksOpen --allow-discards /dev/thing luks
- dracut:  rd.luks.allow-discards=<luks uuid>
- echo "vm.swappiness = 1" >> /etc/sysctl.conf # reduce the tendency of the kernel to perform anticipatory writes to swap
  - default value of vm.swappiness is 60
  - represents the percentage of the free memory before activating swap
  - The lower the value, the less swapping is used and the more memory pages are kept in physical memory.
* disk encryption
- dm-crypt - disk encryption system - administrators can encrypt entire disks, logical volumes, partitions,
  but also single files.
- Linux Unified Key Setup (LUKS) structure, which allows for multiple keys to access the encrypted data
  - supports non-LUKS setups as well
  - LUKS functions are accessed via the cryptsetup program, and use dm-crypt for the back-end processing.

** LUKS partition
- cryptsetup luksFormat /dev/sdb1
- cryptsetup luksOpen /dev/sdd1 map_point
- mkfs.exfat /dev/mapper/map_point -n volume_name
- mount /dev/mapper/map_point /mnt/luks_mount

to close:
- vgchange -a n vg0
- cryptsetup close map_point

for SSD  TRIM:
- cryptsetup luksOpen --allow-discards /dev/thing luks
- GRUB_CMDLINE_LINUX_DEFAULT="root_trim=yes"
- for dracut: GRUB_CMDLINE_LINUX_DEFAULT="rd.luks.allow-discards"
** LUKS with a detached header
to achive plausible deniability - no proof that a block device is encrypted
- LUKS version in use 1 or 2
- the cipher name and mode
- hash algorithm used for the password salt, the master key bits, digest, salt and hash iterations, and the device UUID

--header option would be also used each time we try to unlock the device, or when we need to perform other
  operations which modifies it, such as adding, removing or changing a password, or when using luksDump to
  read its content.
- cryptsetup luksFormat /dev/sdb --header luksheader.img
- cryptsetup luksOpen /dev/sdb sdb-crypt --header=luksheader.img

Create partition
- export GPG_TTY=$(tty) # optional
- gpg --quiet --decrypt /mnt/key/rootkey.gpg | cryptsetup --batch-mode --key-file - luksFormat /dev/sdX3
  --header luksheader.img --type luks2  # gpg variant
- cryptsetup luksDump /dev/sdZn --header luksheader.img # Check that the formatting worked
- gpg --quiet --decrypt /mnt/key/rootkey.gpg | cryptsetup --key-file - luksOpen /dev/sdZn --header luksheader.img
  --type luks2 gentoo
- ls /dev/mapper
*** create/restore backup header
- cryptsetup luksHeaderBackup /dev/sdb --header-backup-file sdbheaderbackup.img
- cryptsetup luksHeaderRestore /dev/sdb --header-backup-file sdbheaderbackup.img
** LVM (Logical Volume Manager)
Create meta devices that provide an abstraction layer between a file system and the physical storage that is
used underneath.

- lvscan - show
- vgchange -a n vg0 - decativate volume group
- vgremove vol_grp - Delete Volume Group
- lvremove /dev/vol_grp/log_grp1 - Delete Logical Volume
*** LVM terminology:
- physical volume (PV) is an underlying storage device (for example, an actual disk partition or loopback
  file), which is managed by LVM. PVs have a special header, and are divided into physical extents.
- A physical extent (PE) is the smallest allocatable unit of a PV. We will use the default PE size of 4MiB in
  this tutorial.
- A logical volume (LV) is LVM's equivalent of a partition. It contains logical extents, which are mapped
  one-to-one onto the PEs of contributing physical volumes. Note - unlike a conventional partition, because of
  this architecture an LV can span multiple underlying physical volumes, and a physical volume can host
  multiple logical volumes, if desired. The LV appears as a standard block device, and so can be formatted
  with any normal Linux filesystem (e.g. ext4). We will create LVs for the root directory, the user home
  directory and swap in this tutorial.
- A volume group (VG) is an administrative unit gathering together a collection of LVs and PVs. We will create
  a single VG containing a single PV, and (as just mentioned) three LVs.

https://wiki.archlinux.org/index.php/LVM
http://www.datadisk.co.uk/html_docs/redhat/rh_lvm.htm
** Bootable USB Key
1) Creating a Password-Protected Keyfile for LUKS
   - export GPG_TTY=$(tty)
   - dd if=/dev/urandom bs=8388607 count=1 | gpg --symmetric --cipher-algo AES256 --output /tmp/efiboot/luks-key.gpg
2) Formatting the New Partition with LUKS
   - gpg --decrypt /tmp/efiboot/luks-key.gpg | cryptsetup --cipher serpent-xts-plain64 --key-size 512 --hash
     whirlpool --key-file - luksFormat /dev/sdZn
     - echo RELOADAGENT | gpg-connect-agent # force check password, clear password from cache
     - cryptsetup luksDump /dev/sdZn  # Check that the formatting worked, with:
     - cryptsetup luksHeaderBackup /dev/sdZn --header-backup-file /tmp/efiboot/luks-header.img # backup header
3) open the LUKS volume we just created and partitioning
   - gpg --decrypt /tmp/efiboot/luks-key.gpg | cryptsetup --key-file - luksOpen /dev/sdZn gentoo
     - ls /dev/mapper

https://wiki.gentoo.org/wiki/User:Sakaki/Sakaki%27s_EFI_Install_Guide/Preparing_the_LUKS-LVM_Filesystem_and_Boot_USB_Key
** simple full
- GRUB BIOS                       2   MB       no fs       GRUB loader itself
- /boot                 boot      512 MB       fat32       GRUB and kernel
- LUKS encrypted                  100%         encrypted   encrypted block device
  - LVM             lvm       100%
    - /          root      40  GB       ext4        root filesystem
    - /var       var       40  GB       ext4        var files
    - /home      home      100%         ext4        user files

parted -a optimal /dev/sdX
- unit mib
- mklabel gpt
- Create the BIOS partition:
  - mkpart primary 1 3
  - name 1 grub
  - set 1 bios_grub on
- Create boot partition. This partition will contain GRUB files, plain (unencrypted) kernel and kernel initrd:
  - mkpart primary fat32 3 515
  - name 2 boot
  - set 2 BOOT on
  - mkpart primary 515 -1
  - name 3 lvm
  - set 3 lvm on
  - mkfs.vfat -F32 /dev/sdX2
  - modprobe dm-crypt
  - cryptsetup luksFormat /dev/sdX3 # aes-xts-plain64 512 bits
  - cryptsetup luksDump /dev/sdX3
- Create LVM inside encrypted block
  - cryptsetup luksOpen /dev/sdX3 lvm
  - vgcreate vg0 /dev/mapper/lvm  # Create volume group vg0:
  - lvcreate -L 60G -n root vg0  # Create logical volume for /root filesystem
  - lvcreate -L 40G -n var vg0  # Create logical volume for /var filesystem
  - lvcreate -l 100%FREE -n home vg0  # Create logical volume for /home filesystem:

File Systems
- mkfs.ext4 /dev/mapper/vg0-root
- mkfs.ext4 /dev/mapper/vg0-var
- mkfs.ext4 /dev/mapper/vg0-home

https://wiki.gentoo.org/wiki/Full_Disk_Encryption_From_Scratch_Simplified

** Dracut
install
- emerge --ask sys-kernel/dracut
- modules:
  - emerge sys-fs/btrfs-progs
  - emerge sys-fs/cryptsetup
  - emerge app-crypt/gnupg
  - USE="-gtk -pango -libkms" emerge --ask sys-boot/plymouth

basic
- /usr/lib/dracut/modules.d
- The most basic dracut module is 99base. In 99base the initial shell script init is defined, which gets run
  by the kernel after initramfs loading
- If a module passed check, install and installkernel will be called to install all of the necessary files for the module.

trouble shooting:
- (Repari filesystem):/# cat /run/initramfs/rdsosreport.txt

*** inspect initramfs
- dracut --print-cmdline
- lsinitrd /boot/initramfs | less
- lsinitrd -f etc/cmdline.d/01-default.conf /boot/initramfs # inspect file inside initramfs
help
- man dracut.kernel
- man dracut.conf

*** tmp
systemd-udevd  used greates stack depth

Password (/luks-key.pgp on /dev/sdb1 for /dev/sda3) [1/3]:+eval 'gpg --homedir /tmp/gnupg --no-mdc-warning
--skip-verify --quiet --logger-file /dev/null --batch --no-tty --passphrase-fd 0 --decrypt
/mnt/keydev--dev-sdb1--luks-key.gpg//luks-key.gpg'

dracut: ++ gpg --homedir /tmp/gnupg --no-mdc-warning --skip-verify --quiet --logger-file /dev/null --batch
--no-tty --passphrase-fd 0 --decrypt /mnt/keydev--dev-sdb1--luks-key.gpg/luks-key.gpg

ply_cmd='/sbin/cryptsetup luksOpen -T1 /dev/sda3 luks-5706...


line 116 stty : command not found
line 117 stty : command not found

/lib/dracut/lib.sh
/lib/dracut/hook/initqueue/finish/90-

- sleep 7
- sleep 10

- sleep 8
*** 91crypt-gpg
- 90crypt/cryptroot-ask.sh:
  - 90crypt/crypt-lib.sh: readkey() # Mounts <keydev>, reads key from file <keypath>, optionally processes it
    1. 91crypt-gpg/crypt-gpg-lib.sh: gpg_decrypt() # ask for massword
       - crypt-lib.sh: ask_for_password()
	 - > gpg --homedir /tmp/gnupg --no-mdc-wanring --skip-verify --quiet --batch --no-tty --passphrase-fd 0
           --decrypt /mnt/keydev-luks-key.gpg/luks-key.gpg
    2. loop_decrypt

*** kernel command line
default - no-hostonly
- does not contain any system configuration files (except for some special exceptions), so the configuration
  has to be done on the kernel command line
- you can easily boot from a changed root partition, without the need to recompile the initramfs image

hostonly:
- store configuration and kernel command line inside initramfs
** links
- https://wiki.gentoo.org/wiki/Dm-crypt
- https://cryptsetup-team.pages.debian.net/cryptsetup/encrypted-boot.html
- LUKS forensic review https://blog.elcomsoft.ru/2022/08/shifrovanie-diskov-v-linux-luks2-argon2-i-apparatnoe-uskorenie/
* linux_kernel
sec recomandations   https://kernsec.org/wiki/index.php/Kernel_Self_Protection_Project/Recommended_Settings
** theory
*** initrams
initramfs (initial ram file system) - used to prepare Linux systems during boot before the init process
starts.
- is a root filesystem that is embedded into the kernel and loaded at an early stage of the boot process
- provides early userspace which can do things the kernel can't easily do by itself during the boot process
- initramfs is optional
- mounting important file systems (by loading the proper kernel modules and drivers) such as /usr or /var,
  preparing the /dev file structure, etc.
- initramfs ask for the passphrase before it can mount the file systems

for
- Mounting an encrypted, logical, or otherwise special root partition
- Providing a minimalistic rescue shell (if something goes wrong)
- Customize the boot process (e.g., print a welcome message)
- Load modules necessary to boot (e.g., third party storage drivers)
- Anything the kernel can't do that's usually handled in user space


By default, the kernel initializes hardware using built-in drivers, mounts the specified root partition, loads
the init system of the installed Linux distribution. The init system then loads additional modules and starts
services until it eventually presents a log in dialog.

cpio archive. This archive is then either embedded directly into the kernel image, or stored as a separate
file which can be loaded by the bootloader during the boot process.

REQUIRED ALWAYS:
- CONFIG_BLK_DEV_INITRD=y
- General setup  --->    [*] Initial RAM filesystem and RAM disk (initramfs/initrd) support

/boot/grub/grub.conf:
- initrd	/initramfs-5.15.11-gentoo.img
https://wiki.gentoo.org/wiki/Custom_Initramfs
** usage
*kerenl install*
1. eselect kernel list
2. eselect kernel set 1
3. make clean
4. make oldconfig - reads the existing .config file that was used for an old kernel and prompts the
   user for options in the current kernel source that are not found in the file.
5. make olddefconfig (alternative) - keep old settings, new settings set to default
6. make menuconfig / make nconfig
7. make prepare && make modules_prepare # Некоторые модули не могут быть установлены или подготовлены до того,
   как будет собрано ядро.
8. make -j3 && make modules_install && make install
9. cp .config /.config_tmp
10. genkernel --kernel-config=/.config_tmp initramfs # if /usr or others located at separate partition or encrypted
11. grub-mkconfig -o /boot/grub/grub.cfg
12. grub-install /dev/sda

*chroot and update*
mount -o loop tu.img /mnt/img
/a

*remove kernel*
rm /usr/src/linux-x.x
rm /lib/modules/x.x
rm /boot/vmlinuz-x.x
rm /boot/System.map-x.x
rm /boot/config-x.x
rm /boot/initramfs-genkernel-


*xen*
Device Drivers->Graphical support -> disable Nouveau
Device Drivers->X86 Platform Specific Device Drivers -> disable WMI
cp vmlinux
cp /usr/src/linux/.config
cp /usr/src/linux/Makeefile

** config for dracut <<config_kernel_gentoo>>
1) emerge --ask sys-apps/pciutils sys-kernel/gentoo-sources
2) eselect kernel list
3) eselect kernel set 1
4) lspci -k > lspci_installcd
5) lsmod > lsmod_installcd
6) dmesg > dmesg_installcd
7) make menuconfig / make nconfig
   1. processor type and features
      - disable
	- support for extended non-PC x86 platforms
	- AMD optons
	- CPU microcode loading support
      - enable
	- Processor family - Core 2/newer Xeon or Generic x86_64
   2. File systems
   3. Device Drivers  --->   Multiple devices driver support (RAID and LVM)  ---> <*> Device mapper support
      - enable
	- Crypt target support
	- Snapshot target
	- Multipath target
	  - I/O Path Selector based on the number of in-flight I/Os
	  - I/O Path Selector based on the service time
   4. Cryptographic API
      - enable
	- XTS support
	- LZO compression algorithm
	- Zstd compression algorithm
	- User-space interface for hash algorithms
	- User-space interface for symmetric key cipher algorithms
   5. Generel
      - enable
	- Make compiler warnings as errors
   6. Device Drivers  ---> Graphic support
      - enable
	- Frame buffer Devices --->   <*>    Support for frame buffer devices
	  - disable - all inside
	- Intel 8xx/9xx/G3x/G4x/HD Graphics
	- [*]   Enable capturing GPU state following a hang
	- [*]     Compress GPU error state
	- [*]   Always enable userptr support
	- Frame buffers Defices ->
	  - VESA VGA
	  - Simple framebuffer support
   7. Network
      - enable
	- Device Drivers -> X86 Platform Specific Device Drivers - ThinkPad ACPI Laptop Ectras
	- Device Drivers -> Thermal drivers -> Intel Thermal drivers
	- Device Drivers -> Network -> leave only enable Ethernet and WLAN
	  - 802.1Q VLAN
	  - LAN
	    - Qualcomm Atheros AR8172 Fast Ethernet
	    - jme:JMicron JMC2XX ethernet driver
	- Broadcom 802.11b/g/n BCM43142 - CONFIG_CFG80211_WEXT=y, package broadcom-sta
	  - Network support -> Wireless -> cfg80211 wireless extension compatibility
      - ifconfig # should show connections
8) make all modules as * - if it is not device specific: check with  lsmod command


https://wiki.gentoo.org/wiki/Handbook:AMD64/Installation/Kernel

** security config <<kernel_security>>
- General setup:
  - Randomize slab freelist
  - Page allocator randomization
- General architecture-dependent options
  - Randomize kernel stack offset on syscall entry
  - GCC plugins -> Randomize layout of sensitive kernel structures
- Enable loadable module - sign all
- Security options
  - Restrict uprivileged access tp the kernel syslog
  - Harden memory copies between kernel and userspace
    - Allow usercopy whitelist ... - must be disabled slab_common.usercopy_fallback=N
  - Harden common str/mem functions agains buffer overflows
  - Kernel hardening options
- Kernel hacking -> disable
  - Kernel debugging
  - Generic Kernel Debugging Instruments -> Debugfs default access - set - No access
  - all debugging
** hardening
- https://kernsec.org/wiki/index.php/Kernel_Self_Protection_Project/Recommended_Settings
- https://pmateti.github.io/Courses/4420/Lectures/Hardening/SecureKernel/
- Kernel Hacking
  - [*] Kernel debugging
  - Debug Oops, Lockups and Hangs
    - [*] Panic on Oops CONFIG_PANIC_ON_OOPS=y
      - (-1) panic timeout CONFIG_PANIC_TIMEOUT=-1
  - Memory debugging
    - Warn or W+X mappings at boot CONFIG_DEBUG_WX
    - Detect stack corrution on CONFIG_SCHED_STACK_END_CHECK=y
    - KFENCE: low- CONFIG_KFENCE=y
  - Debug kernel data structures - all
    - Debug linked list CONFIG_DEBUG_LIST=y
    - CONFIG_DEBUG_SG=y
    - CONFIG_BUG_ON_DATA_CORRUPTION=y
    - CONFIG_DEBUG_NOTIFIERS=y
- Device drivers
  - IOMMU Hardware Support
    - IOMMU default domain type - strict
- General setup
  - [ ] Core Scheduling for SMT - better to DISABLE!
- Filesystems
  - Pseudo filesystems
    - [ ] /proc/kcore support - DISABLE!!
- Processor type and features
  - [ ] kexec system call - DISABLE!!
- Executable file formats
  - [ ] Kernel suppoert for MISC binaries - DISABLE!!
- General architecture-dependent options
  - Gcc plugins
    - Generate some entropy during boot and runtime
- Memory managgement options (for x86_64)
  - (65536) Low address space to protect -  CONFIG_DEFAULT_MMAP_MIN_ADDR=65536
** nconfig search
- / - search
- Up/Down array - next/preview search


make NCONFIG_MODE=single_menu nconfig - shows all sub-menus in one large tree.
** menuconfig search
- / - search
- / TAB TAB - help
- regex supported

** links
https://kernel.org/
* keyboard
- https://wiki.archlinux.org/title/Xmodmap
- https://cs.gmu.edu/~sean/stuff/n800/keyboard/old.html

- xmodmap - only recommended for the simplest tasks - file ./xmodmap
- setxkbmap -  X keyboard extension (XKB) - should be saved to ~/.profile (or ./xinitrc)
- xev - find out key kode
- dumpkeys/loadkeys - console and global
** xmodmap
https://www.in-ulm.de/~mascheck/X11/xmodmap.html

- xmodmap -pke - get current config
- xmodmap ~/.xmodmap - load from file
- keysym - a,z,Mode_switch, Shift
- keycode - 0xfd,0x5f
- modifier key types: Shift, Lock, Control, Mod1, Mod2, Mod3, Mod4, Mod5

Each keysym column in the table corresponds to a particular combination of modifier keys ( Only the
first four elements are platform-independent):
1. Key
2. Shift+Key
3. Mode_switch+Key
4. Mode_switch+Shift+Key
5. ISO_Level3_Shift+Key or <"Num_Lock"-key>  or Ctrl
6. ISO_Level3_Shift+Shift+Key
7. <"Num_Lock"-"Mode_switch"-key>
8. -

ISO_Level3_Shift may be set with:
- setxkbmap -option 'lv3:ralt_alt'
*** .xmodmap
- ! - comment
- keysym key_symbol = keymapping - keysym z = z Z Greek_omega Greek_OMEGA
- keycode key_code = keymapping - keycode 0xfd = Page_Down
- clear modifier
- add modifier = key_symbol - assign key to modifier
*** usage Firefox & IJKL

firefox
keycode  18 = 9 parenleft Prior parenleft
keycode  19 = 0 parenright Next parenright
keycode  17 = 8 asterisk 8 Up U20BD
keycode  20 = minus underscore Down underscore
keycode  65 = space NoSymbol Return
keycode 108 = Mode_switch

ex:
keycode 66 = Mode_switch
keysym j = j J Left
keysym l = l L Right
keysym i = i I Up
keysym k = k K Down
keysym h = h H Prior
keysym n = n N Next
keysym y = y Y Home
keysym m = m m End

*** Ctrl as a CapsLook
 ./xmodmap:

 remove Lock = Caps_Lock
 keysym Caps_Lock = Control_L
 add Control = Control_L

 or

 setxkbmap -option ctrl:nocaps

** xkb
/usr/share/X11/xkb/symbols/ru = locale

- setxkbmap -query - get current model and options
- setxkbmap -option - reset
- man 7 xkeyboard-config - get options
- xev -event keyboard - to get keycodes and to check how your keymap works

sections:
- xkb_keycodes
- xkb_types

# save current
xkbcomp -xkb $DISPLAY xkbmap
# apply
test -f ~/.Xkeymap && xkbcomp ~/.Xkeymap $DISPLAY

levels:
- Level 1 is unshifted
- level 2 is the result of a ⇧ Shift modifier, a shift latch, a ⇫ Shift Lock, a Num Lock, or a ⇬ Caps Lock;
- and level 3 is the result of a "level three modifier" of some kind.

setxkbmap -model pc101 -layout 'us,ru' -variant ',' -option 'grp:shift_caps_switch'

*** files to autostart
cp /etc/xdg/xfce4/xinitrc ~/.config/xfce4/xinitrc
*** LINKS
https://wiki.archlinux.org/title/X_keyboard_extension
https://wiki.gentoo.org/wiki/Keyboard_layout_switching
https://askubuntu.com/questions/1006856/how-to-use-mode-switch-and-xmodmap-in-current-ubuntu-versions
https://michal.kosmulski.org/computing/articles/custom-keyboard-layouts-xkb.html

*** TODO Ctrl+key
xkb_types "complete" {
  type "CTRL" {
        modifiers= Control;
        map[Control]= Level2;
        level_name[Level1]= "Base";
        level_name[Level2]= "Ctrl";
    };
}
xkb_symbols "pc+us+ru:2+inet(evdev)+group(shift_caps_switch)" {
  key <AB07> {
        type[Group1]= "ALPHABETIC",
        type[Group2]= "ALPHABETIC",
        type[Group3]= "PC_CONTROL_LEVEL2",
        symbols[Group1]= [               m,               M ],
        symbols[Group2]= [ Cyrillic_softsign, Cyrillic_SOFTSIGN ],
        symbols[Group3]= [ Return, Return ]
    };
}
*** Ctrl+Shift problem
  https://unix.stackexchange.com/questions/118228/how-to-bind-super-key-to-ctrlshift-using-xmodmap
  - xkbcomp $DISPLAY ~/.Xkeymap
  - add to xkb_symbols, your key = CAPS or LWIN
  #+BEGIN_SRC ?
  key <your key> {
    repeat= no,
    type= "ONE_LEVEL",
    symbols[Group1]= [ Hyper_L ],
    actions[group1]=[ SetMods(modifiers=Shift+Control) ]
  };
  #+END_SRC
  - add to ~/.xinitrc
  : test -f ~/.Xkeymap && xkbcomp ~/.Xkeymap $DISPLAY

*** disable capslock
- setxkbmap -option caps:none
** keyboard theory
- history http://xahlee.info/kbd/keyboard_hardware_and_key_choices.html


- \*nix [LF] whereas on a windows operating system you have [CRLF]
** Tab to right Alt
- get keys: xmodmap -pke
- map to right alt: xmodmap -e "keycode 108 = Tab ISO_Left_Tab Tab ISO_Left_Tab"
- reselt setxkbmap -option
** GTK Emacs
https://wiki.archlinux.org/title/GTK


xfconf-query -c xsettings -p /Gtk/KeyThemeName -s Emacs

** TODO unicode characters and emoji

** rebind

- https://man.openbsd.org/xkeyboard-config.7#Position_of_Compose_key


- https://github.com/tbocek/dvorak

- https://github.com/zw963/linux_key_rebinding
- https://github.com/kui/rbindkeys
- xfumble, keyfake and rbindkeys

-  https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/diyism-myboard/myboard.py
*** C++ http://yashiromann.sakura.ne.jp/x11keymacs/index-en.html
In order to run x11keymacs, you need the following previleges:
- Read/Write privileges on /dev/uinput, /dev/input/event*
  - In case /dev/uinput does not exist, you first need to "modprobe uinput" to create this device file
- X-Window server access privileges
  - You need to give X server access privileges to the user that runs this tool, for example using
    xhost or xauth. It is also needed to provide enviroment variable "DISPLAY" correctly.

*** C https://github.com/kawao/x-set-keys
https://stackoverflow.com/questions/13821332/why-is-it-better-to-use-glib-data-types-e-g-gint-instead-of-int

gint - Glib data types - gint and gchar are not defined to be a certain size and so there is no
reason to use them.

import own
- common
- x-set-keys
- config

 search keyboard device from /dev/input/event* and use the first found.
*** XCompose - cannot bind to Return
- https://man.archlinux.org/man/Compose.5
- https://wiki.debian.org/XCompose
- https://github.com/ibus/ibus/issues/1876

*** xkb ISO_Level3_Shift - require unused key
** pynput - cannot suppress pressed
pip3 install pynput --user

1) pynput.keyboard.__init__
2) pynput.keyboard._xorg (listener)
   - extension of:
     - pynput._util.xorg (ListenerMixin)
     - keyboard._base (Listener)
       - pynput._util.__init__ (AbstractListener (threading.Thread))
3) Xlib

._util.__init__.AbstractListener
- .__enter__:
  - start()
  - wait()
- run():
  - _run()
  - _thread = threading.current_thread()
_xorg.Listener.__init__
- join()
  -


Usages:
1)
   - __init__
   - __enter__
     1. start()
	- run()
	  - _run()
     2. wait
   - .join() -
2) non-blocking
   - __init__
   - start()
     - run()
       - _run()


** kaymap with dumpkeys/loadkeys
1. mkdir -p /usr/local/share/kbd/keymaps/
2. dumpkeys -f > /usr/local/share/kbd/keymaps/personal.map


showkey --scancodes
dumpkeys -l
https://wiki.archlinux.org/title/Linux_console/Keyboard_configuration

default kernel keymap: /usr/src/linux/drivers/char/defkeymap.map

man keymaps
*** pressing Caps Lock key once or more sets the keyboard in CapsLock state and pressing either of the Shift keys releases it.
keycode  42 = Uncaps_Shift
keycode  54 = Uncaps_Shift
keycode  58 = Caps_On

** mouse emulation
- xfce4-settings-accessibility # GUI
- xfconf-query -c accessibility -p /MouseKeys -s true # switch on
- xfconf-query -c accessibility -p /MouseKeys -s false # switch off

conf:
- delay: 50
- repeat interval: 18
- acceleration time: 230
- max speed: 1910
- acc profile: 0
* monitor
** brightness
monitor
- x11-apps/xrandr
- xrandr --output DVI-I-1 --brightness 0.4

backlight for notebook
- /sys/class/backlight/????/brightness
** colours
- xrandr - get outputs
- xrandr --output LVDS1 --gamma 1.0:1.0:1.0 # red,green,blue
* software debuging
- ldd /bin/app - Shared Library Dependencies, unsafe may execute app
  - objdump -p /path/to/program | grep NEEDED - safer way
    - readelf -d /bin/ls | grep 'NEEDED' -
  - pldd <PID> - of runned process
  - pmap <PID> - memory map of a process, can also show shared library dependencies of a running process.
  - sudo awk '/\.so/{print $6}' /proc/<pid of process>/maps | sort -u - runned process

*** network requests by Process
strace -f -e trace=network -s 10000 PROCESS ARGUMENTS

To monitor an existing process with a known PID:

strace -p $PID -f -e trace=network -s 10000
- -f is for "follow new processes"
- -e defines a filter
- -s sets the limit of strings to more then 32
- -p takes the process id to attach to


* tty - teletype or terminal
** keys
  https://ss64.com/bash/syntax-keyboard.html

It's basically a device (implemented in software nowadays)

Ctrl+-		undo


Ctrl+I = Tab
Alt+/  = autocompletion for path
Ctrl+J = Newline
Ctrl+M = Enter
Ctrl+[ = Escape
Ctrl+v tells the terminal to not interpret the following character, so Ctrl+v Ctrl-I will display a tab character,
similarly Ctrl+v ENTER will display the escape sequence for the Enter key: ^M

Ctrl + C	Break command
Ctrl + Z	in background, commands: jobs, fg, bg
Ctrl + D	logout

Ctrl + XX	toggle cursor from current position to begining and back
Alt+U/L		to UPPER/LOWER case word
Alt+C		upper first letter of word

Ctrl/Alt + D: 	Delete one char/to end of word starting at the cursor

Ctrl + u/k	erase line to begining/end of line
Ctrl + w	cut word before cursor
Alt + b		cut word after cursor
Ctrl+y		yank


Ctrl+N/P	loop commands
Ctrl+S 	Stops all output on-screen (XOFF).
Ctrl+Q 	Turns all output stopped on-screen back on (XON). Also, closes an application window.

!! 	Repeats the line last entered at the shell.
!$ 	Repeats the last argument for the command last used. See history command for previous commands.


Alt+SysRq+r Unraw 	Take control of keyboard back from X. 	4
Alt+SysRq+e Terminate 	Send SIGTERM to all processes, allowing them to terminate gracefully. 	64
Alt+SysRq+i Kill 	Send SIGKILL to all processes, forcing them to terminate immediately.
Alt+SysRq+s Sync 	Flush data to disk. 	16 	-
Alt+SysRq+u Unmount 	Unmount and remount all filesystems read-only. 	32 	-
Alt+SysRq+b Reboot 	Reboot 	128
Alt+SysRq+k SAK
Alt+SysRq+f OOM kill
Alt+SysRq+j Thaw

X
Ctrl+Alt+F1, F2, F3, ... 	Switch to n-th virtual console 	If it does not work, try Ctrl+Alt+Fn+F….
Shift+Insert  	Paste text from the PRIMARY buffer


*** special Bash keys
https://git.savannah.gnu.org/cgit/bash.git/tree/bashline.c?id=3ba697465bc74fab513a26dea700cc82e9f4724e#n957
https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html
C-x ~ - bash_possible_username_completions
C-x @ - bash_complete_hostname
C-x C-$ - bash_complete_variable
C-x C-! - bash_complete_command
C-x / - bash_complete_filename
C-x C-e - Bash attempts to invoke $FCEDIT, $EDITOR, and emacs as the editor, in that order.
C-x C-v - Bash version
C-x C-r - re-reads this init file, thus incorporating any changes that you might have made to it.

Alt+number - repeat next key

C-_ or C-x C-u  Undo the last editing command. You can undo all the way back to an empty line.
*** History:
  Ctrl + r   Recall the last command including the specified character(s).
             searches the command history as you type.
             Equivalent to : vim ~/.bash_history.
  Ctrl + p   Previous command in history (i.e. walk back through the command history).
  Ctrl + n   Next command in history (i.e. walk forward through the command history).

  Ctrl + s   Go back to the next most recent command.
             (beware to not execute it from a terminal because this will also launch its XOFF).
  Ctrl + o   Execute the command found via Ctrl+r or Ctrl+s
  Ctrl + g   Escape from history searching mode
        !!   Repeat last command
       !n    Repeat from the last command: args n e.g. !:2 for the second argumant.
       !n:m  Repeat from the last command: args from n to m. e.g. !:2-3 for the second and third.
       !n:$  Repeat from the last command: args n to the last argument.
       !n:p  Print last command starting with n
     !string Print the last command beginning with string.
       !:q   Quote the last command with proper Bash escaping applied.
              Tip: enter a line of Bash starting with a # comment, then run !:q on the next line to escape it.
        !$   Last argument of previous command.
   ALT + .   Last argument of previous command.
        !*   All arguments of previous command.
^abc­^­def   Run previous command, replacing abc with def

*** Process control:

 Ctrl + C   Interrupt/Kill whatever you are running (SIGINT).
 Ctrl + l   Clear the screen.
 Ctrl + s   Stop output to the screen (for long running verbose commands).
            Then use PgUp/PgDn for navigation.
 Ctrl + q   Allow output to the screen (if previously stopped using command above).
 Ctrl + D   Send an EOF marker, unless disabled by an option, this will close the current shell (EXIT).
 Ctrl + Z   Send the signal SIGTSTP to the current task, which suspends it.
            To return to it later enter fg 'process name' (foreground).
*** Moving the cursor:

  Ctrl + a   Go to the beginning of the line (Home)
  Ctrl + e   Go to the End of the line (End)
  Ctrl + p   Previous command (Up arrow)
  Ctrl + n   Next command (Down arrow)
   Alt + b   Back (left) one word
   Alt + f   Forward (right) one word
  Ctrl + f   Forward one character
  Ctrl + b   Backward one character
  Ctrl + xx  Toggle between the start of line and current cursor position
*** Editing:

 Ctrl + L   Clear the Screen, similar to the clear command

  Alt + Del Delete the Word before the cursor.
  Alt + d   Delete the Word after the cursor.
 Ctrl + d   Delete character under the cursor
 Ctrl + h   Delete character before the cursor (Backspace)

 Ctrl + w   Cut the Word before the cursor to the clipboard.
 Ctrl + k   Cut the Line after the cursor to the clipboard.
 Ctrl + u   Cut/delete the Line before the cursor to the clipboard.

  Alt + t   Swap current word with previous
 Ctrl + t   Swap the last two characters before the cursor (typo).
 Esc  + t   Swap the last two words before the cursor.

 ctrl + y   Paste the last thing to be cut (yank)
  Alt + u   UPPER capitalize every character from the cursor to the end of the current word.
  Alt + l   Lower the case of every character from the cursor to the end of the current word.
  Alt + c   Capitalize the character under the cursor and move to the end of the word.
  Alt + r   Cancel the changes and put back the line as it was in the history (revert).
 ctrl + _   Undo
** how it works
https://unix.stackexchange.com/questions/4126/what-is-the-exact-difference-between-a-terminal-a-shell-a-tty-and-a-con
https://dev.to/napicella/linux-terminals-tty-pty-and-shell-192e
https://www.oreilly.com/library/view/linux-device-drivers/0596005903/ch18.html
https://en.wikipedia.org/wiki/POSIX_terminal_interface
https://habr.com/ru/post/460257/
https://medium.com/securitythread/linux-terminal-subsystem-d000475c8dd
www.embeddedlinux.org.cn/essentiallinuxdevicedrivers/final/ch06lev1sec4.html

tty - teletypewriter https://en.wikipedia.org/wiki/Teleprinter

- terminal - became a computer program in the kernel which would send characters directly to the TTY
  driver, read from it and print to the screen.
  - is a character-oriented device, comprising streams of characters received from and sent to the
    device,  dev/tty - device which implements a number of additional commands (ioctls) beyond read and write.
  - consist of:
    - character device interface ( open, read, write, close …)
    - Line discipline
    - driver - keyboard IO, display
  - may be: kernel program or pseudo terminal or serial device (old)
  - communicate with the terminal through terminal character device file
- terminal emulator - the kernel program emulate the physical terminal device. it listens for events
  coming from the keyboard and sends it down to the driver
- pseudo-terminal (pty) - provided by terminal emulators - it's not a kernel program but one that
  runs in the user land.
- System console - interface more
  1. physical device consisting of a keyboard and a screen
  2. text entry and display device for system administration messages
- Virtual console/virtual terminal - Ctrl+Alt+F1234
  - On each virtual terminal, a getty process is run, which in turn runs /bin/login to authenticate a user.
  - supported at the Linux kernel level
  - are emulated text terminals, using the keyboard and monitor of a personal computer or workstation
- terminal monitor program spawns (sets TERM env - Specifies the terminal type.)
  - may be:
    - getty TERM=linux
    - SSH server ( to the same terminal type as the SSH client)
    - software terminal emulator, using a pseudoterminal ( sets the TERM environment variable to
      specify the type of terminal that it is emulating)
      - GNU Screen program sets /screen/ as the terminal type.
- shell - user space app
- escape code - . Certain sequences of bytes, most starting with an ASCII escape character and a
  bracket character, are embedded into text to control cursor location, color, font styling, and
  other options on video text terminals and terminal emulators.
  - man console_codes - Linux console escape and control sequences

Terminal emulator(get keys and draw gui) -> PTY master -> tty driver(with line discipline) -> pty slave -> bash

По умолчанию TTY устройство работает в каноничном режиме с включенным эхо (echoing). Эхо — это
отображение введенных вами символов на экране.
** terminal related commands:
- who
- w
- last
- tty
- ps
- stty - change terminal settings
  - stty icanon -echo - disable echo
  - stty raw echo
  - stty <control-character> <string>
  - stty erase 0
- reset - reset terminal after cat binary file
** escape codes
The escape codes received from the terminal signify things such as function key, arrow key, and
other special keystrokes (home key, end key, help key, PgUp key, PgDn key, insert key, delete key,
and so forth)
** POSIX terminal interface
** pseudo-teletypes (PTS)
The multiplexor is the master, and the PTS are the slaves. The multiplexor is addressed by the
kernel through the device file located at /dev/ptmx.

** history links
https://www.computernetworkingnotes.com/linux-tutorials/linux-virtual-console-and-terminal-explained.html
https://www.howtogeek.com/428174/what-is-a-tty-on-linux-and-how-to-use-the-tty-command/
** tty scroll
*** screen
Ctrl-A, Esc - now Page Up, Page down
Esc - exit

without:
 - Ctrl+z - background
 - $ fg - front

Scroll:
Ctrl-A, Esc - now Page Up, Page down

 - screen - start
 - Ctrl+a+c create new
 - Ctrl+a+" list

 - Ctrl+a+d deattach
 - Ctrl+a+b next window
 - Ctrl+a   to last used
 - Ctrl+a+0 switch to 0 screen
 - Shift+a - Set title for window.

Copy/paste
- Ctrl-A, Esc
- Enter, Enter
- Ctrl-A, ] - paste

*** tmux
- Ctrl-b - all commands
- ? - help
- [ - now Page Up, Page down
- CTRL+SPACE to start copying
- ALT+w or CTRL+w to copy into Tmux buffer.
- ] to paste
- q - exit
- % create a horizontal pane
- " create a vertical pane
- o toggle between panes
- array - toggle between panes
- kill the current pane
- https://danielmiessler.com/study/tmux/
** clipboard
1. emerge x11-misc/xsel
   - bind '"\C-p": "\C-e\C-u xsel <<"EOF"\n\C-y\nEOF\n\C-y"'
2. emerge x11-misc/xclip
   - cat a | xclip -sel clip

**** configure
tmux show-options -g | grep status

* bash / commands
You may indent or not indent however you like
** variables
${ varname } is general syntax for $variable
- $_ At shell startup, set to the pathname used to invoke the shell or shell script being executed
- $1 - first parameter
- $#: How many command line parameters were passed to the script.
- $?: The exit status of the last process to run.
- $$: The Process ID (PID) of the current script.
- $* is a single string that consists of all of the positional parameters, separated by the first character in the environment variable IFS
- $@: All the command line parameters passed to the script. Cat be set: $set -- 1 2 3
- $USER: The username of the user executing the script.
- $HOSTNAME: The hostname of the computer running the script.
- $SECONDS: The number of seconds the script has been running for.
- $RANDOM: Returns a random number.
- $LINENO: Returns the current line number of the script.
- IFS (internal field separator), which is a space, TAB, and NEWLINE by default.
- env | less # environment variables


my=Dave
my="Dave Green"
file_count=$(ls $folder_to_count | wc -l) # miltiline

export mt_var # to save variables to outside of the script

multiline variable:
#+begin_src sh
method1="This is line no.1\nThis is line no.3\nThis is line no.3"
echo -e $method1


read -r -d '' MULTI_LINE_VAR << EOM
Print line 1.
Print line 2.
Print line 3
EOM
#+end_src
** wildcard
move all except one:
- shopt -s extglob
- mv !(fileOne) ~/path/newFolder

: ls hello.???

: ls [a-p0-5]*.* # dot means dot

[!...] or [^...] which matches any character except the ones in the set.

brace expansion {}
- it actually generates all the permutations of the pattern you specify and then performs wildcard expansion on the results.
- echo d{a,e,i,u,o}g => dag deg dig dug dog
- echo d{a..z}g =>  dag dbg dcg ddg deg dfg dgg dhg dig djg dkg dlg dmg dng dog dpg dqg drg dsg dtg dug dvg dwg dxg dyg dzg
- echo {cat,dog} => cat dog
- echo {cat,d*} => cat dawg dg dig dog doug dug
- echo {j{p,pe}g,png} => jpg jpeg png
- echo .{mp{3..4},m4{a,b,p,v}} => .mp3 .mp4 .m4a .m4b .m4p .m4v
*** classes
- [:alpha:] 	It is used to match with any uppercase and lowercase letter and equivalent to [a-zA-Z].
- [:digit:] 	It is used to match with any digits and is equivalent to [0-9].
- [:alnum:] 	It is used to match any alphabet and digit. It is equivalent to [a-zA-Z].
- [:upper:] 	It is used to match with uppercase latter only and equivalent to [A-Z]
- [:lower:] 	It is used to match with uppercase latter only and equivalent to [a-z]
- [:blank:] 	It is used to match with space and tab.
- [:print:] 	It is used to match with printable characters.
- [:cntrl:] 	It is used to match with non-printable characters.
- [:space:] 	It is used to match with while-space.
- [:xdigit:] 	It is used to match with hexadecimal digits.
- [:ascii:] 	It is used to match with ASCII characters.
- [:word:] 	It is used to alphanumeric characters including underscore(_).
** {} Curly Braces
#+begin_src bash
$ echo {0..10}
0 1 2 3 4 5 6 7 8 9 10
echo a{d,c,b}e
ade ace abe
echo {a..z}{a..z}
aa ab ac ad ae af ag ah ai aj ak al am an ao ap aq ar as at au av aw ax ...
month=("Jan" "Feb" "Mar" "Apr")
echo ${month[3]}
Apr
# { ... } to group the output from several commands into one big blob
{ echo "I found all these PNGs:"; find . -iname "*.png"; echo "Within this bunch of files:"; ls; } > PNGs.txt

# Parameter Expansion:
parameter=22 && echo $0 # parent command paramters
bash
parameter=22 && echo $parameter
22
parameter=22 && echo ${parameter}
22
parameter=abcd && echo ${parameter:1} # get [1:] ${parameter:offset:length}
bcd
a=213 && p=a && echo ${!p} # indirection
213
echo ${!#} # "#" stores the number of arguments !#=0
array=(2 1 3) && ${array[@]} == ${array[*]} # all elements
bash
p=abc && echo ${p^} # The ^ operator modifies the first character to uppercase, the , operator to lowercase
Abc
p=abc && echo ${p^^}
ABC
p=ABC && echo ${p~} # change chase
aBC
echo ${BASH*}  # ${!PREFIX*} or ${!PREFIX@}  variable names beginning with the string PREFIX
BASH BASH_ARGC BASH_ARGV BASH_COMMAND BASH_LINENO BASH_SOURCE BASH_SUBSHELL BASH_VERSINFO BASH_VERSION

# Substring removal:
a="Hello World!" && echo Goodbye${a#Hello} # a chunk from the beginning of a variable
Goodbye World!
a="Too longgg" && echo ${a%gg} # chops off the last two gg and prints “Too long“.
Too long
p=123 && echo ${p%??} # remove 23
1
#  "#" will try to remove the shortest text matching the pattern, while "##" tries to do it with the longest text matching.
MYSTRING="Be liberal in what you accept, and conservative in what you send" &&  echo ${MYSTRING#*in}
what you accept, and conservative in what you send
MYSTRING="Be liberal in what you accept, and conservative in what you send" &&  echo ${MYSTRING##*in}
what you send

    Get name without extension
        ${FILENAME%.*}
        ⇒ bash_hackers.txt
    Get extension
        ${FILENAME##*.}
        ⇒ bash_hackers.txt
    Get directory name
        ${PATHNAME%/*}
        ⇒ /home/bash/bash_hackers.txt
    Get filename
        ${PATHNAME##*/}
        ⇒ /home/bash/bash_hackers.txt

    echo "${array[@]%is}" # Simple example, removing a trailing is from all array elements (on expansion):
        ⇒ Th a text
        (it was: This is a text)

# Search and replace
${PARAMETER/PATTERN/STRING} # first occurrence
${PARAMETER//PATTERN/STRING} # all occurrence
${PARAMETER/PATTERN} # remove
${PARAMETER//PATTERN}

p=abc && echo ${#p} # length
3

# Use a default value
p= && echo ${p:-aaa} # if unset or empty
aaa
p= && echo ${v:-aaa} # if unset
aaa
p= && echo ${p:=aaa} # p=aaa now
aaa
p= && echo ${p=aaa} # p=aaa now dont print
""
p=123 && echo ${p:+aaa} # is set and not empty. but ignore p value
aaa
p= && echo ${p:+aaa}
""
p= && echo ${p+aaa} # is set (empy or not). but ignore p value
aaa
p= && echo ${p:?aaa} # if not set or empty
bash: p: aaa
p= && echo ${p:?aaa} # if not set or empty
bash: p: aaa
p= && echo ${p?aaa} # if not set
""
#+end_src

** {} Brace Expansion
- ls *{txt,log} list all files ending with txt or log in the current directory
- cp ~/projects/adders/verilog/{half_,full_}adder.v . copy half_adder.v and full_adder.v to current directory
- mv story.txt{,.bkp} rename story.txt as story.txt.bkp
- cp story.txt{,.bkp} to create bkp file as well retain original
- mv story.txt{.bkp,} rename story.txt.bkp as story.txt
- mv story{,_old}.txt rename story.txt as story_old.txt
- touch file{1..4}.txt same as touch file1.txt file2.txt file3.txt file4.txt
- touch file_{x..z}.txt same as touch file_x.txt file_y.txt file_z.txt
- rm file{1..4}.txt same as rm file1.txt file2.txt file3.txt file4.txt
- echo story.txt{,.bkp} displays the expanded version 'story.txt story.txt.bkp' , useful to dry run before executing actual command

** Extended globs
- ?(pattern-list) Matches zero or one occurrence of the given patterns
- *(pattern-list) Matches zero or more occurrences of the given patterns
- +(pattern-list) Matches one or more occurrences of the given patterns
- @(pattern-list) Matches one of the given patterns
- !(pattern-list) Matches anything except one of the given patterns

sheck if enabled:
: $ shopt extglob
: extglob            on

ex.
: $ ls !(*.txt)
: main.c  math.h  power.log

** stdin(0), stdout(1), and stderr(2), pipes
standard streams == file descriptors

Commands has:
- 0 <- terminal
- 1 -> terminal
- 2 -> terminal
*** pipeline
- '|&' equal to '2>&1 |' std out+err to std input
-  | - pipe stdout only
- command >(command1) >(command2g) - pipe to two and more processes
- command 2> >(command) >c - pipe
- (command1 ; command2 ; command3) | command4
*** redirection
 - redirect stdout to a file	ls > a.txt
 - redirect stderr to a file	2> a.txt
 - redirect stdout to a stderr	ls 1>&2 >&2
 - redirect stderr to a stdout	ls 2>&1
 - redirect stderr and stdout to a file	ls &> /dev/null
 - redirect stderr and stdout to stdout &>&1
 - redirect stderr and stdout to stderr &>&2

>&2 means copy file descriptor 2 to 1 both will refer to the 2

more:
- command 3> file # open new file descriptor
- command < file # standard input from file

- tee a b c - redirection to multiple files (>a >b >c - not working)
*** close file descriptors/streams
- >&- 2>&- 3>&- # close 1,2,3
- <&- # close 0
*** "2>&1 >file" vs "> file 2>&1"
2>& - do nothing becouse 0,1,2 -> points to terminal

command >file 2>&1 (or just &>)
- stdout = file
- stderr = file

command 2>&1 >file   - redirects only stdout to file
- stderr is redirected to stdout
  - stderr = stdout_target
- stdout = file
*** stderr to pipe
command 2>&1 >/dev/null | grep 'something'
1) First copy stderr to stdout - all stderr
2) redirect stdout to /dev/null
3) pipe stdout

*** redirect stdout to file and to stdout
: command | tee >(tee) > file
*** named pipe
the FIFO file must be opened on both ends
- mkfifo pipe0 # create file
- mkfifo -m 644 pipe0
- echo "input message" > pipe0
- cat pipe0
** String processing
- echo '$(echo "upg")' = > $(echo "upg")
- echo "$(echo "upg")" = > upg
  - The special parameters * and @ have special meaning when in double quotes in special cases
- a="as\nasd $BASH $(echo wtf)(new line)"
- a='as\nasd $BASH $(echo wtf)(new line)'
  - echo $a => as\nasd $BASH $(echo wtf)
  - echo "$a" => as\nasd $BASH $(echo wtf)(new line)
  - echo -e $a => as(new line)asd $BASH $(echo wtf)
  - echo -e "$a" => as(new line)asd $BASH $(echo wtf)(new line)
  - printf '%q\n' "$a" => $'as\\nasd $BASH $(echo wtf)\n'
general
- cat
- sed
- grep
- awk - excellent slicer and more
- perl/python

special
- sort
- head/tail
- cut
- xargs
- uniq
- cmp/diff
- tr		replace characters
- nl		umber lines of files
- paste	merge lines of files
- rev		reverse lines characterwise
- fold
- shuf		get random lines
- for item in list; do command $item done
*** sort
sort by column:
: sort -t, -nk3 user.csv
- -t, - defines your delimiter as ,.
- -n - gives you numerical sort. Added since you added it in your attempt. If your user field is text only
  then you dont need it.
- -k3 - defines the field (key). user is the third field.
*** cut - get column
cut -d "delimiter" -f (field number) file.txt
- --complement
- --output-delimiter=”delimiter”

cut -c [(k)-(n)/(k),(n)/(n)] filename
- k denotes the starting position of the character
- n denotes the ending position of the character in each line
- if k and n are separated by “-” otherwise they are only the position of character in each line from the file
  taken as an input.
*** sed
Default only change the first occurrence of the word on a line.

get line:
: echo -e "as\nasd" | sed -n '2p' => asd
*** grep
- filter lines by pattern -
- case insensitive grep -i "FILe"

- -v invert match or NOT
- -i case insensitive

OR
- dmesg | grep -i -E 'xx:xx.x|wlan|iwl|80211'
- dmesg | grep -i -e 'xx:xx.x' -e wlan -e iwl -e 80211
- grep -Ev "(127|192)"

first match
- ip a | grep -o -m 1 wlan.

search in files:
- grep -Rin patern
  - n - line number, R - recursive

extract http links
- cat a.html | grep -o 'href=\"/.media[^\"]*/dl/[0-9]*[^\"]*' | grep -o "/.*" | sed 's#^#http://site.onion#' | xatrs torsocks wget --user-agent="Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)"
*** python
split paragraphs:
- cat aa | python -c "import sys; print(sys.stdin.read().split('123'))"
  - ['asasd\n\n\n asdasd\n\n','asd\nas']
*** perl
split paragraphs:
-
bad try:
- echo "aavbb" | perl -e '@a=<>; print( (split(/v/, join "", @a))[0] )' => "aa"
*** awk
- echo -e "a\navbb" | awk -v RS='v' NR==1' => a\na
*** uniq
MUST BE USED AFTER *sort*
- -s n - skip n first characters
- -w n - sort by n first characters
- --group - separate duplicates
** Process Control
- top
- ps
- kill/killall/pkill
- free
- pgrep

background
- nohup command & - even after exiting the shell
- timeout 15 command &


** Programming
*** Hello World.sh
#+begin_src sh
#!/bin/sh
#or !/usr/bin/env bash

set -u # Report Non-Existent Variables
# set -x # write to standard error a trace for each  command
# set -n # do not execute only check syntax
#+end_src
*** arguments
- $@ - all
- $0 - script name
- $1-...  - argumensts
**** check if executes with source or with exec
#+begin_src sh
if [ -n "$(echo $0 | grep a.sh)" ] ; then
    echo exec
else
    echo source
fi
#+end_src
*** array
- array=(item1 item2 item3)
- echo ${array[*]} # echo item1 item2 item3
- set -- item1 item2 item3
- echo "$3" # Arrays indices start from 1
- set -- "$@" 4 # add item
- shift 2 # Remove first 2 items
- for item in "$@"; do echo "$item"; done # loop
- “${99}” - “$98” is not working

Associative Arrays / Hash Maps
- hm="$(hm_create)"
- hm_put "$hm" mykey myvalue
- hm_get "$hm" mykey
-

length:
- echo ${#array[@]}

Splice an Array:
- ${arrayname[@]:start:end}


from start point to end:
- v=${#a[@]}
- echo ${a[@]:1:$v}
*** if
- [] is just a reference to the command *test*
- (( )) - ariphmetic

*if* [ $c == 5 ]
*then* echo ok
*elif* [ <some test> ]
*then* something
*else* something
*fi*

if [ $c == 5 ] ;then echo ok;fi
test $c = 5;echo $?

ERROR: if[ or [$c or 5] or 5 ];
**** double square brackets
- Single [] are posix shell compliant condition tests. Portable.
- Double [[]] are an extension to the standard [] and are supported by bash and other shells (e.g. zsh, ksh)
  For example: || instead of -o and regex matching with =~
- [ is POSIX
- [[ is a Bash extension inspired from Korn shell

Use [] whenever you want your script to be portable across shells. Use [[]] if you want conditional
expressions not supported by [] and don't need to be portable.
*** comparision Posix
1) ! EXPRESSION 	The EXPRESSION is false.
2) -n STRING	 	The length of STRING is greater than zero.
3) -z STRING 		The lengh of STRING is zero (ie it is empty).
4) STRING1 = STRING2 	STRING1 is equal to STRING2
5) STRING1 != STRING2 	STRING1 is not equal to STRING2
6) INTEGER1 -eq INTEGER2 	INTEGER1 is numerically equal to INTEGER2
7) INTEGER1 -gt INTEGER2 	INTEGER1 is numerically greater than INTEGER2
8) INTEGER1 -lt INTEGER2 	INTEGER1 is numerically less than INTEGER2
9) -d FILE 		FILE exists and is a directory.
10) -e FILE 		FILE exists.
11) -r FILE 		FILE exists and the read permission is granted.
12) -s FILE 		FILE exists and it's size is greater than zero (ie. it is not empty).
13) -w FILE 		FILE exists and the write permission is granted.
14) -x FILE 		FILE exists and the execute permission is granted.

Boolean Operations
- && - is and
- || - is or

-a means AND and -o means OR
*** numbers comparision
must be checked agains tested not empty values
- = and != is safe for empty values
 "$n" = 1 - must be in ""

- num1 -eq num2                  check if 1st  number is equal to 2nd number
- num1 -ge num2                  checks if 1st  number  is greater than or equal to 2nd number
- num1 -gt num2                  checks if 1st  number is greater than 2nd number
- num1 -le num2                   checks if 1st number is less than or equal to 2nd number
- num1 -lt num2                   checks if 1st  number  is less than 2nd number
- num1 -ne num2                  checks if 1st  number  is not equal to 2nd number

*** strings compatision
variables must be in ""
- var1 = var2     checks if var1 is the same as string var2
- var1 != var2    checks if var1 is not the same as var2
- var1 < var2     checks if var1 is less than var2
- var1 > var2     checks if var1 is greater than var2
- -n var1             checks if var1 has a length greater than zero
- -z var1             checks if var1 has a length of zero

*** file comparision
- -d file                        checks if the file exists and is it’s a directory
- -e file                        checks if the file exists on system
- -w file                       checks if the file exists on system and if it is writable
- -r file                        checks if the file exists on system and it is readable
- -s file                        checks if the file exists on system and it is not empty
- -f file                         checks if the file exists on system and it is a file
- -O file                       checks if the file exists on system and if it’s is owned by the current user
- -G file                        checks if the file exists and the default group is the same as the current user
- -x file                         checks if the file exists on system and is executable
- file A -nt file B         checks if file A is newer than file B
- file A -ot file B          checks if file A is older than file B

*** functions
- function must precede call.
- exit - stop script
- return - stop function
#+begin_src sh
function_name () {
    if [ -z $1 ] ;then return 1;fi # Checks if any params.
    echo $1 # first parameter
    if [ $2 ] ; then
	echo "Parameter #2 is $2."
    fi
    ret="val" # return value
    return 32 # set $? status
}

func2 # call with no params
func2 first # call with one param

b(){ echo wtf;}

#+end_src

*** loop
- while
- until - same as while and inverse
- for
- select word in words - same as echo words | while IFS=" " read word; do

#+begin_src sh
while IFS= read -r line
do
    echo "$line"
done <<< "$the_list"

while IFS=, read -r name familyname address; do
    printf 'Got "%s", "%s", and "%s"\n' "$name" "$familyname" "$address"
done <file.csv

while read line ; do
    echo $line
done < <( ... code ... )

your_code | while read line;
do
    echo $line
done

while read line;
do
    echo $line
done < $lines

echo -e "$a" | while IFS=":" read f v; do
    echo "$f _ $v" # f - first column v - all others
done

set -- "123 3456"
for v in "$@"; do
    $v
done

for j in `seq 0 24`; do # safest
    ...
done

select DRINK in tea cofee water juice appe all none
do
   case $DRINK in
      tea|cofee|water|all)
         echo "Go to canteen"
         ;;
      juice|appe)
         echo "Available at home"
      ;;
      none)
         break
      ;;
      ,*) echo "ERROR: Invalid selection"
      ;;
   esac
done

#+end_src
*** debug
https://www.cyberciti.biz/tips/debugging-shell-script.html

Display commands and their arguments as they are executed.
- bash -x script-name
- set -x - for bash

Display shell input lines as they are read.
- set -v - for bash

export _DEBUG=on #  intelligent DEBUG function

*** exit status
- $?
- exit 5

exit codes:
- 0           success
- 1-255       failure (in general)
- 1 : Miscellaneous errors, such as “divide by zero” and other impermissible operations.
- 2 : Missing keyword or command, or permission problem.
- 126         the requested command (file) can't be executed (but was found)
- 127         command (file) not found
- 128         according to ABS it's used to report an invalid argument to the exit uiltin, but I wasn't able to verify that in the source code of Bash (see code 255)
- 128 +        N the shell was terminated by the signal N (also used like this by various other programs), invalid argument to exit.
- 255          wrong argument to the exit builtin (see code 128)
** ls
directory -  flat file that maps an name to inode on the filesystem.

- ls * - directories and deep 1 files
- ls -d */ - only directories
- ls -al -tr - sort by time, reversal (latest at the bottom) (desc)

*** get direcotories
- ls -d */
- ls -l | grep '^d'
- find . -maxdepth 1 -type d
- echo */
- tree -d -L 1
*** Linux File Timestamps
- mtime - modified time - write file's conetents
- ctime - change time - tracks metadata changes such as ownership and permissions. It includes renaming a file.
- atime - (access time) anyone accessed the file

ls - default mtime
- u - atime
- c - ctime
** pushd/popd and dirs
- dirs -v - to print stack
- dirs - cd history without pushd/popd.
  - dirs +0 - current directory
  - dirs +1 - last directory
  - ~1 = dirs +1
  - ~-0 dirs -0 - first directory in history
https://www.howtogeek.com/659146/how-to-use-pushd-and-popd-on-linux/
** sh script
#!/usr/bin/env bash

set -euxo pipefail

# https://gist.github.com/mohanpedala/1e2ff5661761d3abd0385e8223e16425
** source & ./ & exec
in bash . and source equal
in POSIX:
- ./script creates a new shell and executes each command in the script within the new shell. When
  the end of the script file is encountered, the new shell exits. Any changes in the new shell
  caused by the script are lost when the shell exits. (no screen formations)
- *source* execute a shell script within the context of the current shell. Since execution takes place
  within the context of the current shell, any changes in the shell are retained following the
  completion of the shell. (like by yourself)
- . script - in the current shell without forking a sub shell (equal to *source*)
- exec ./script - exit shell after finish

The exec command will execute a command in place of the current shell, that is, it terminates the
current shell and starts a new process in its place.

exec was often used to execute the last command of a shell script. This would kill the shell
slightly earlier; otherwise, the shell would wait until the last command was finished. This practice
saves a process and some memory.

try exec ls. you will be logged out from your login shell.
** ariphmetic
let m=(4 * 1024)
echo $((2*2))
((m-=3)) # m=m-3
((m++)

the let command is not specified by POSIX®. The portable alternative is:
[ "$(( <EXPRESSION> ))" -ne 0 ]

echo $((2#010)) - binary to decimal

expr
- is command should be preffered
- cannot assign directly to bash variables but instead returns a result on stdout
- takes each operator it recognizes as a separate word and then concatenates them into a single expression that's evaluated according to it's own rules (which differ from shell arithmetic).
** execute command
$() or ``

. file == source file - execute commands in file in current shell. no need x right
./file - execute file - need x right
** multiline string
a=$(cat <<EOF
s
s
EOF)

as=$(echo -e "s\ns")

echo $a  # s s
echo "$a"  # s\ns

cat - внешняя программа которой нет в bash
** xargs
- -0, --null - Input items are terminated by a null character instead of by whitespace - file or directory
  names containing spaces or newlines are correctly handled
-

- transfer input to one line usable as arguments (default echo)
- xargs -n 2 # execute command for every two argument, ex diff

ex
- find /path -name '*.foo' | xargs -P 24 -I '{}' /cpu/bound/process '{}' -o '{}'.out
  - -P n - Run up to max-procs processes at a time
- cat lines | xargs | tr ' ' ',' => line1,line2,line3,line4
** USECASES
- print column: awk '{print $2}'
- find duplicated files:
  - find ./ -type f -exec md5sum '{}' ';' > dupl
  - cat dupl  | sort | uniq --all-repeated=separate -w 15 | grep '\.\/' | uniq -w 15 | cut -c 35- | xargs rm
- copy files from stdinput | xargs -I{} cp -u {} /destination/path
- rename multiple files: find . -depth -name "*.html" -exec sh -c 'f="{}"; mv -- "$f" "${f%.html}.php"' \;


- sync directories:  # rsync -aqxP /var/* /mnt/newvar
- вывод в файл и stdout: cmd | tee file
- list directories: ls -d */
- read file line by line:  while read -r line;do echo "$line";done < file
- message window: xmessage -timeout 50 "MESSAGE HERE!!!"
- execute for every file: find . -name "*.jpg" -maxdepth 1 -type f -exec ~/firef \{\} \; -exec sleep 1 \; -exec pkill firefox \;
  - find . -name "*.mpg" -maxdepth 1 -type f   -exec sh -c "firefox {} & sleep 10 ; pkill firefox ;" \;
  - for f in *.txt; do echo "$f"; done
- zip
  - for f in ./* ; do zip -r "${f:2}".zip "${f:2}" ; done # all folders
  - for f in ./* ; do zip -r "${f:2}".zip "$f" ; done # all files
** history save with time
with timestamp
echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.bash_profile

** id -u user
get user id
** diff
https://www.math.utah.edu/docs/info/diff_3.html

- default
- “Copied” context with -c
- “Unified” context with -u Instead of displaying the two files separately, it merges them together.

diff one two

Default context - no longer widely used (used by git)
- `8a12,15' (lar) - after line 8 of one append lines 12-15 of two.
- '5,7c8,10' (fct) - change lines 5--7 of one to read as lines 8--10 of two
- `5,7d3' (rdl) - delete lines 5--7 of one (which at 3 in two)
- < - in one
- > - in two

“Copied” context - has context lines without pre-symbols
- '!' - changing like
- '+' - line of two file (nothin in one)
- '-' - line of one file (nothin in two)

“Unified” context - more compact because it omits redundant context lines. GNU patch can apply this format.
- *** from-file from-file-modification-time
- --- to-file to-file-modification time
- @@ from-file-range to-file-range @@
- '+' line of two file
- '-' line of one file

Differences Side by Side diff -y :
- `|'    The corresponding lines differ, and they are either both complete or both incomplete.
- `<'    The files differ and only the first file contains the line.
- `>'    The files differ and only the second file contains the line.
- `('    Only the first file contains the line, but the difference is ignored.
- `)'    Only the second file contains the line, but the difference is ignored.
- `\'    The corresponding lines differ, and only the first line is incomplete.
- `/'    The corresponding lines differ, and only the second line is incomplete.
** date
- date +%c --date "2022-06-20" => Mon Jun 20 00:00:00 2022
- date +%F --date='@2147483647' => 2038-01-19
- date --date '06/02/2016 09:01:39' +"%s" => 1464872499
- date +%s => 1656480511
** ps
https://www.computernetworkingnotes.com/linux-tutorials/ps-aux-command-and-ps-command-explained.html

a:- This option prints the running processes from all users.
u:- This option shows user or owner column in output.
x:- This option prints the processes those have not been executed from the terminal.

ps –eo pid,user,%cpu,cmd –-sort=-%cpu | head –n 4
ps –A --forest

notes:
- CPU usage is expressed as the percentage of time spent running during the entire lifetime of a process.
- The SIZE and RSS fields don't count some parts of a process including the page tables, kernel stack, struct thread_info, and struct task_struct.
- SIZE is the virtual size of the process (code+data+stack).
- Processes marked <defunct> are dead processes (so-called "zombies") that remain because their parent has not destroyed them properly.
- If the length of the username is greater than the length of the display column, the username will be truncated.

*** Column	Description
USER 	The user account under which this process is running
PID	Process ID of this process
%CPU	CPU time used by this process (in percentage).
%MEM	Physical memory used by this process (in percentage).
VSZ	Virtual memory used by this process (in bytes).
RSS	Resident Set Size, the non-swappable physical memory used by this process (in KiB)
TTY	Terminal from which this process is started. Question mark (?) sign represents that this process is not started from a terminal.
STAT	Process state. Explained in next table.
START	Starting time and date of this process
TIME	Total CPU time used by this process
COMMAND	The command with all its arguments which started this process

*** stat code with description
D	uninterruptible sleep (usually IO)
R	running or runnable (on run queue)
S	interruptible sleep (waiting for an event to complete)
T	stopped by job control signal
t	stopped by debugger during the tracing
w	paging (not valid since the 2.6.xx kernel)
x	dead (should never be seen)
Z	defunct ("zombie") process, terminated but not reaped by its parent
< 	high-priority (not nice to other users)
N	low-priority (nice to other users)
L	has pages locked into memory (for real-time and custom IO)
s	is a session leader
l	is multi-threaded (using CLONE_THREAD, like NPTL pthreads do)
+	is in the foreground process group
** top

sort:
- ps -o RES
- Shift+F - select - s key, q key

parent-child - V key

kill: press k and enter PID

first row:
- current time (22 :14:26)
- uptime of the machine (up 155 day, 16:33)
- users sessions logged in (2 users)

second row:
- Total Processes running (866 total)
- Running Processes (8 running)
- Sleeping Processes (856 sleeping)
- Stopped Processes (0 stopped)

CPU line: sum up all the percentages the total will be 100% of the cpu
- us, user    : time running un-niced user processes in percentage(18.6%us)
- sy, system  : time running kernel processes
- ni, nice    : time running niced user processes
- id, idle    : time spent in the kernel idle handler
- wa, IO-wait : time waiting for I/O completion
- hi : time spent servicing hardware interrupts
- si : time spent servicing software interrupts
- st : time stolen from this vm by the hypervisor

processes
- PID – ID of the process(819328)
- USER – The user that is the owner of the process (root)
- PR – priority of the process (20)
- NI – The “NICE” value of the process (0)
- VIRT – virtual memory used by the process (3423m)
- RES – physical memory used from the process (3.3g)
- SHR – shared memory of the process (1788)
- S – indicates the status of the process: S=sleep R=running Z=zombie (S)
- %CPU – This is the percentage of CPU used by this process (65.9)
- %MEM – This is the percentage of RAM used by the process (5.2)
- TIME+ –This is the total time of activity of this process (1363:48)
- COMMAND – And this is the name of the process (exim)

** vmstat
 https://www.howtogeek.com/425232/how-to-securely-delete-files-on-linux/


Since last reboot

vmstat 2 -d -S M
- 2 sec recreate
-


- -a - active and inactive memory
- -f -  shows the number of tasks that have been launched
- -d - disk
- -D - summary statistics for your disk activity
- -p sda1
** find
find files by name and execute command:
- find . -type f -name "*.txt" -exec ls -l {} +
- find . -type f -name "*.txt" | xargs ls -l
- find . -type f -name "*.txt" -exec mv {} {}.old \;
multiple file extensions:
- find . -type f \( -name "*.sh" -o -name "*.txt" \)
find directory:
- find . -type d -iname So* -ls
  - -ls - print in ls -al format
*** find [options] [starting-point...] [ex‐pression]
expressions:
- TESTS:
  - -amin n File was last accessed less than, more than or exactly n minutes ago.
  - -empty File is empty and is either a regular file or a directory.
  - -executable Matches  files  which  are  executable
  - -group gname File belongs to group gname (numeric group ID allowed).
  - -iname pattern  Like -name, but the match is case insensitive.
  - -name pattern  Base of file name
  - -links n  has less than, more than or exactly n hard links.
  - -nouser No user corresponds to file's numeric user ID.
  - -perm -a+r,u+w
  - -readable  Matches  files  which  are  readable  by the current user.
  - -size 2M
  - -type c
    - b      block (buffered) special
    - c      character (unbuffered) special
    - d      directory
    - p      named pipe (FIFO)
    - f      regular file
    - l      symbolic link;
    - s      socket
    - D      door (Solaris)
  - -user uname File is owned by user uname (numeric user ID allowed).
- ACTION
  - -delete
  - exec command ;
  - -print full file name
  - -quit exit

when {} used - at the end must be:
- + - result: ls -l file1 file2 file3
- \; -  {} may be used more than once in the same exec statement, result: ls -l file1, ls -l file2

*** links
https://www.howtogeek.com/425408/how-to-use-all-linuxs-search-commands/

** dd
*** usecases
create:
dd if=/dev/zero of=test.img bs=1 count 0 seek=10G

resize +2G:
e2fsck -f test.img
resize2fs test.img 12G
e2fsck -f test.img


---
Iso Disk write:
cdrecord dev=0,0,0 -eject -dao debian-testing-amd64-xfce-CD-1.iso

# flash gentoo iso to USB
dd if=/a.iso of=/dev/sdc bs=8192k

# flash tails to USB
dd if=tails.img of=/dev/sda bs=16M oflag=direct status=progress

# flash ISO Gentoo to HDDD
dd if=gentoo.iso of=/dev/sda bs=4M oflag=direct status=progress

# Clone disk partition using dd over SSH
dd bs=16M if=/dev/sda3 | ssh root@serverB "dd bs=16M of=/dev/sda3"
*** bs
read and write up to BYTES bytes at a time (default: 512); overrides ibs and obs

**** block size theory
Block devices and block sizes
- For example hard disks, cdrom drives and floppies are block devices, but not the keyboard.
- file system needs to split up a partition into blocks to store files and file parts (another block size)
- Most hard drives shipped with 512 byte sector/block sizes.


Logical and Physical Sector Size
- Advanced Format, same as 4K sector technology, uses the storage surface media more efficiently by combining
data that would have been stored in eight 512-byte sectors into one single sector that is 4096 bytes (4 KiB)
in length.
- any data transfers between the disk and the computer still use the common 512-byte block size.
- the disk is addressable in 512-byte blocks, but performance will be better if the OS arranges the disk
  operations to take into account the 4096-byte internal block size.

filesystem block size:
- tune2fs -l /dev/sdb2
- file -s /dev/sda1
- stat -fc %s .
- blockdev --getbsz /dev/sda # change when mounted

Kernel block size
- All linux blocks are currently 1024 bytes.

https://www.baeldung.com/linux/dd-optimal-blocksize
*** cteate disk
dd if=/dev/zero of=/mnt/sda5/tdisk.img bs=1 seek=40G count=1
Discarding device blocks:     4096/10485760                 done
Creating filesystem with 10485760 4k blocks and 2621440 inodes
Filesystem UUID: 351a17dd-246d-49f5-b871-dde0cf38c1c4
Superblock backups stored on blocks:
	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208,
	4096000, 7962624

Allocating group tables:   0/320       done
Writing inode tables:   0/320       done
Creating journal (65536 blocks): done
Writing superblocks and filesystem accounting information:   0/320       done

mkfs.ext4 tdisk.img


.
** for external storages
- lsblk -p - list block devices, find connected USB Flash
- parted - partition table
  - parted -l  - list partitions on all disks
- fdisk - partition table
  - fdisk -l
- dd
  - status=progress - useful to see what's happening
- sync - Synchronize cached writes to persistent storagem, when u write to USB

** split and rejoin big file
- split -d -b 1M file file_prefix_
  - -b 1M put SIZE bytes per output file
  - -d use numeric suffixes starting at 0, not alphabetic
- cat file_prefix_* > file
** filesystem block size
- tune2fs -l /dev/sdb2
- file -s /dev/sda1
- stat -fc %s .
- blockdev --getbsz /dev/sda # change when mounted

** tar
tar.gz:
- crate: tar -cvzf a.tar.gz /
- extract: tar xpzf  "$1" --xattrs-include=' *.*' --numeric-owner
- inspect: tar ztvf/tvf m.tar.gz/m.tar
** zip chunks/multi-part/split
to chunks:
- zip -r -s <size in megabytes>M <new_file>.zip <folder>/*
to single archive (myfiles.z01, myfiles.z02, myfiles.z03):
- zip -F myfiles.zip --out single-archive.zip
decompress:
- All parts must be concatenated together in order, and then ``zip -F'' (for zip 2.x) or ``zip -FF'' (for zip
  3.x) must be performed on the concatenated archive in order to ``fix'' it
- unzip -l - list archive files
** curl
mimic browser request:
- curl --http0.9 -vvv -H "Accept: application/xml" -A "Mozilla" http://a.ru

SOCKS5 proxy
- curl -x socks5h://localhost:8080 api.ipify.org

** links
- https://learnbyexample.gitbooks.io/linux-command-line/content/Shell.html
* install tarball - (from source, install sources)
- /opt if it is a binary install
- /usr/local if it's a from source install.
steps
- tar xzf -C /usr/local/src program.tar.gz # source code
  - tar xjf program.tar.bz2 -C /opt # binary
  - --directory == -C
  - z - unzip
- tar xzf <file>.tar.[bz2|gz] --directory=/opt
- cd /opt/
- sudo chown -R $USER /opt/program
- gedit ~/.local/share/applications/waterfox.desktop
- ./configure or ./configure --prefix=/usr/local
- make
- make install #It’ll probably be stored under /usr/local
- export PATH=$PATH:/opt/local/bin:/usr/local/bin
- make uninstall
* GPG - GNU Privacy Guard
- https://www.gnupg.org/gph/en/manual.html
- https://riseup.net/en/security/message-security/openpgp/gpg-best-practices

** install
chmod 0700 ~/.gnupg/
** about
GNU Privacy Guard (GnuPG system, GnuPG or GPG)

compliant with
- RFC 4880
- the IETF standards-track specification of OpenPGP.

interoperable with GnuPG
** theory
*** Криптосистема с открытым ключом
разновидность асимметричного шифрования

- *открытый ключ* - передаётся по открытому каналу и используется для проверки ЭП и для шифрования сообщения.
- *закрытый ключ* - Для генерации ЭП и для расшифровки сообщения

Виды асимметричных шифров:
- *RSA (Rivest-Shamir-Adleman)* - best suited for verification and encryption.
- DSA (Digital Signature Algorithm) - best suited for signing in and decryption.
- Elgamal (Шифросистема Эль-Гамаля) - semantically secure
- Diffie-Hellman (Обмен ключами Диффи — Хелмана)
- ECDSA (Elliptic Curve Digital Signature Algorithm) — алгоритм с открытым ключом для создания цифровой подписи.
- ГОСТ Р 34.10-2012
- Rabin
- Luc
- McEliece
- Криптосистема Уильямса
*** Цифровая подпись Digital signature
- authentication - who sent
- integrity - was not altered

steps:
- hash of message
- шифрование с закрытым ключом => подпись
- сектификат(какой ключ) + подпись + Данные

расшифрование с открытым ключом и сверка хешей

асимметричные схемы
FDH (Full Domain Hash), вероятностная схема RSA-PSS (Probabilistic Signature Scheme), схемы стандарта PKCS#1 и другие схемы, основанные на алгоритме RSA

*** keyservers
Идеально - делиться ключами из рук в руки

просто хранят ключи доступные по fingerprint

The major keyservers synchronize themselves, so it is fine to pick a keyserver close to you on the
Internet and then use it regularly for sending and receiving keys.

hkp:// or x-hkp:// - 11371 not port 80.

hkps:// (HKP over TLS)

- pool.sks-keyservers.net	SKS Keyserver Pool: federated, no verification, keys cannot be deleted.
- https://keys.mailvelope.com/	Mailvelope Keyserver: central, verification of email IDs, keys can be deleted.
- https://keys.openpgp.org/ 	central, verification of email IDs, keys can be deleted, no third-party
  signatures (i.e. no Web of Trust support).

Чтобы ключи не залеживались на почту приходит запрос об актуальности ключа
*** TODO signing keys
** therms
uid - USER-ID - string after: uid [ultimate]

*kaypares*
- primary keypair and then zero or more additional subordinate keypairs
- they are bundled and can often be considered simply as one keypair.

*revocation certificate* - published to notify others that the public key should no longer be used
- created right after keypare creation
- revoked public key can still be used to verify signatures made by you in the past

*key ring* - is a set of keys, public or private. (public keyring - public keys of others stored)

*fingerprint* or frp - SHA-1 hash of key and additional data
 - *key-id* or hash-key - portion of the SHA-1 fingerprint at the end of fingerprint. --keyid-format=long/short
 - examples:
   - fingerprint: 0D69 E11F 12BD BA07 7B37  26AB 4E1F 799A A4FF 2279
   - long id:                                    4E1F 799A A4FF 2279
   - short id:                                             A4FF 2279

two key pairs: (1, 3) and (2, 4):
1. pub -- public primary key (master-key) - used for for signing
2. sub -- public sub-key - signed by the primary key and thus confirmed to belong to its user-IDs -
   used for encryption/decryption.
3. sec -- secret primary key
4. ssb -- secret sub-key

** list-keys
- supported algorithms: gpg --version
- gpg --list-keys: List all keys from the public keyrings, or just the keys given on the command line.
- gpg --list-secret-keys: List all keys from the secret keyrings or just the ones given on the command line
- gpg --list-sigs: Same as --list-keys, but the signatures are listed too.
- --list-keys --with-colons
-  --keyid-format {none|short|0xshort|long|0xlong}
-

full key: gpg --armor --export email@kernel.org | less

pub   dsa1024/17072058 2004-07-20 [SC] [expires: 2022-01-01]
- public primary key
- SC primary and E subordinate keyparis ? algoritm and key size
- key-id SHORT - last part of fingerprint.
- created date
- flag
  - SC - signing and certification.
  - E - used for encryption.
- expires

** Correct way to replace a GPG key
The original idea was that people with keys would get together in person-to-person meet-ups called
*key signing parties* to sign each other's keys and build a *web of trust*.

** USE CASES
- https://keys.openpgp.org/about/usage
- https://www.howtogeek.com/427982/how-to-encrypt-and-decrypt-files-with-gpg-on-linux/
*** create keys
- gpg --gen-key - too stupid
- gpg --full-gen-key - dialogs for all options
  - RSA and RSA
  - 4096
- gpg --gen-revoke --armor --output=revocation_certificate.asc user-id
  - armor - ASCII output suitable for copy. default - binary format

Export:
- gpg --output public.key --armor --export user-id/fingerprint - generage ASCII version of a user's public key
  to file public.key (to exchange)
*** delete keys
gpg --delete-key fingerprint
*** keyserver get key
Чтобы не указывать keyserver:
- ~/.gnupg/gpg.conf: keyserver hkps://keys.openpgp.org

Правильыне Шаги:
1. gpg --keyserver hkps://keys.openpgp.org --recv-key '<fingerprint>'
2. You should verify with the individual owner the full key fingerprint of their key.
3. check key by fingerpint:
   - gpg --fingerprint '<fingerprint>'

You must periodically refresh keys. You might do this every few months or when you receive a key
from a new contact.
- gpg --keyserver hkps://keys.openpgp.org --refresh-keys

To locate the key of a user, by email address:
- gpg --auto-key-locate hkps://keys.openpgp.org --locate-keys releng@gentoo.org

To refresh all your keys (e.g. new revocation certificates and subkeys):
- gpg --refresh-keys

- gpg --keyserver pool.sks-keyservers.net --send-keys key-id - register your key with a
  public PGP key server, so that others can retrieve your key without having to contact you directly
- gpg --keyserver pool.sks-keyservers.net --search-keys key-id
- gpg --keyserver pool.sks-keyservers.net --recv-keys 0xBB572E0E2D182910
  - ТЫ должен проверить fingerprint primary key из другого источника и потом выполнить trusted
*** upload your key
gpg --export your_address@example.net | curl -T - https://keys.openpgp.org
or
gpg --export your_address@example.net > my_key.pub
*** trust level for key
gpg --edit-key blake
- > trust
- > 3
- > quit
*** import key
- gpg --import ~/mygpgkey_pub.gpg
- or: gpg --allow-secret-key-import --import ~/mygpgkey_sec.gpg
- check key manually!:
  - gpg --list-keys
  - gpg --armor --export user-id/fingerpr/email

*** verify .sign
gpg2 --locate-keys torvalds@kernel.org gregkh@kernel.org
- gpg --verify [signature-file] [file]
- gpg --verify install-amd64-minimal-20201001T120249Z.iso.DIGESTS.asc install-amd64-minimal-20201001T120249Z.iso.DIGESTS
gpg: not a detached signature
- To make the "WARNING" message go away you can indicate that you choose to trust that key using TOFU:
  - gpg2 --tofu-policy good 38DBBDC86092693E
  - gpg2 --trust-model tofu --verify linux-4.6.6.tar.sign # --trust-model tofu required for first time only
*** export public for share
Echo your public key to stdout.
- gpg --export --armor nick@example.com

Write your public key to a file.
- gpp --export --armor --output nickexample.gpg.pub nick@example.com
*** Backup and restore your GPG key pair
backup just your private key, which includes your public key too:
- gpg --export-secret-keys --armor --output nickexample.gpg.backup.asc nick@example.com

backup the GPG trust database
- gpg --export-ownertrust > /path/to/trustdb-backup.txt

*restore*
1) gpg -import nickexample.gpg.backup.asc
2) gpg --edit-key name # Replace "name" with yours #  the restored GPG key will have an “unknown” trust level
3) $ gpg> trust # Choose "ultimate" or other trust level
4) $ gpg> save # Save the changes

*restore your GPG trust database*
  1. rm ~/.gnupg/trustdb.gpg
  2. gpg --import-ownertrust < /path/to/trustdb-backup.txt

*** sign keys
If you don’t do this, you can still use it to encrypt and decrypt messages from and to that
person. But gpg will ask you every time whether you wish to proceed because the key is unsigned.

gpg --sign-key mary-geek@protonmail.com
*** encripting file
Without public key of recipient
- gpg --armored --symmetric --cipher-algo AES256 ./file
- or zip -re out.txt.zip out.txt

With public key of recipient
1) wget https://keys.openpgp.org/vks/v1/by-fingerprint/xxxxxxxxxxxxxxxx
2) gpg -- import xxxxxxxxxxxxxxxxxxxxxxxx
3) *encrypt and sign*
   - gpg --encrypt --sign --armor --recipient mary-geek@protonmail.com FILE.txt

*** decrypt file
gpg --decrypt coded.asc > plain.txt
*** encrypt/decrypt with password (symmetric) (armored)
- gpg --armored -c --cipher-algo AES256 ./file
  - -c = --symmetric
- gpg --decrypt ./file.gpg # binary
- gpg --decrypt ./file.asc # armored

Cypher: 3DES, CAST5, BLOWFISH, AES, AES192, AES256, TWOFISH, CAMELLIA128, CAMELLIA192, CAMELLIA256
*** generate password
gpg --gen-random --armor 1 14
** trust model (Web of trust or Trust on first use)
default - Web of trust -  responsibility for validating public keys is delegated to people you trust
- Trust on First Use (TOFU)

trust levels
- *unknown* - Nothing is known about the owner's judgment in key signing. Keys on your public keyring
  that you do not own initially have this trust level.
- *none* - The owner is known to improperly sign other keys.
- *marginal* - The owner understands the implications of key signing and properly validates keys
  before signing them.
- *full* - The owner has an excellent understanding of key signing, and his signature on a key would
  be as good as your own.
- *ultimately*
** GPG agent
cache passphrase entered and allow applications to use GPG concurrently

** как шифрвоать
Добрый день.

Пришли мне зафированный файл FILE.txt:
1) wget https://keys.openpgp.org/vks/v1/by-fingerprint/074C37CF05B861D4C4CC3AC20C5A9B0DA76B2719
2) gpg --import 074C37CF05B861D4C4CC3AC20C5A9B0DA76B2719
3) gpg --encrypt --armor --recipient chepelev_vs@bel-rusnarbank.ru FILE.txt

Зашифрованный файл:
FILE.txt.asc

1) берет мой публичный ключ
2) добавляет его в GnuPG
3) шифрует им файл

gpg --decrypt coded.asc > plain.txt
** links
https://www.kernel.org/doc/html/latest/process/maintainer-pgp-guide.html
*** extend validity of the main key
- gpg --edit-key 0x12345678
- gpg> expire
- gpg> save

You have to make a decision about extending validity of vs. replacing the subkey(s). Replacing them gives you limited forward security (limited to rather large time frames). If that is important to you then you should have (separate) subkeys for both encryption and signing (the default is one for encryption only).

https://unix.stackexchange.com/questions/177291/how-to-renew-an-expired-keypair-with-gpg
* The X Window System (X11 or X)
X.Org Foundation leads the X project (MIT License)

Competitior:
- Wayland - modern replacement for X display server
- Mir

Xorg is an open source implementation of the X Window System.

- Screen is a physical monitor and hardware
  - There can be multiple screens for each display or workstatio
- Display - A set of screens for a single user with one keyboard and one pointer (usually a mouse)
- root window - partially or completely covered by child windows
- pixmaps - off-screen storage of graphics objects
- drawables - Windows and pixmaps together
** Xfce4 - insert unicode
C-S-u	hex code

compose keys ? /usr/share/X11/locale/en_US.UTF-8/Compose
- Preferences → Keyboard → Layouts tab → Layout Options → Compose key position.
- setxkbmap -option 'compose:menu'
** Xfce4 - bind keys to applications
- can not create several aplications for Firefox - it keeps updating its own name

firefox:
#+begin_src sh
#!/usr/bin/env sh
xdotool search "Mozilla Firefox"
if [ $? == 0 ] ; then
   xdotool search "Mozilla Firefox" windowactivate
   exit
fi
firefox
#+end_src

terminal:
#+begin_src sh
#!/usr/bin/env sh

n=$@
xdotool search "term$n"

if [ $? == 0 ] ; then
   xdotool search "term$n" windowactivate
   exit
fi

xfce4-terminal --initial-title term$n
#+end_src

** lock screen
x11-misc/xautolock https://packages.gentoo.org/packages/x11-misc/xautolock

xautolock -time 1 -locker 'xflock4'

/etc/sudoers.d/user:
- u ALL=(ALL) NOPASSWD:/usr/bin/killall telegram-desktop,/usr/bin/vlock -n,/usr/local/bin/usblock.sh

/usr/local/bin/usblock.sh:
- #!/bin/sh
- echo 0 | tee /sys/bus/usb/devices/*/authorized


Alt+F1 -> Settings -> Session and startup -> Application Autostart -> add
- xautolock -time 10 -locker 'sudo vlock -n ; sudo /usr/local/bin/usblock.sh'
* Firefox configuration
startup:
- emerge x11-apps/xhost app-admin/sudo
- /etc/sudoers.d/ff
  - user ALL=(ff) NOPASSWD: ALL
- xhost si:localuser:ff ; sudo -u ff firefox -width 1366 -height 768 $@

- privacy.resistFingerprinting to true - fix screen resolution 1000 × 900 with errors possible, replace user-agent

browser.cache.disk.enable - to false ?

** fingerprints
articles:
- article https://pixelprivacy.com/resources/browser-fingerprinting/
- 1 https://habr.com/ru/company/selectel/blog/521550/
- 2 https://habr.com/ru/company/selectel/blog/523462/
- entropy https://habr.com/ru/post/357238/
- https://webkay.robinlinus.com/

 https://amiunique.org/fp
 https://browserleaks.com/

*** https://coveryourtracks.eff.org/
 Hash of canvas fingerprint
 e9c63d7fe3a3f9cc2687d88cff61506e
 Hash of WebGL fingerprint
 cf316a71a991aced31cfbf8a043fa324
 WebGL Vendor & Renderer
 Mesa/X.org~llvmpipe (LLVM 11.0.0, 128 bits)

 Screen Size and Color Depth
 1366x768x24
 One in x browsers have this value: 14.24

 System Fonts
 Arial, Courier New, Times New Roman (via javascript)
 One in x browsers have this value: 759.86


 User Agent
 Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0
 One in x browsers have this value: 6.79

Hash of WebGL fingerprint (disabled)
d928a8c2420ac1b95e719f20d5d93341
https://coveryourtracks.eff.org
*** http://uniquemachine.org/ with source code
 Browser fingerprint
 707b6f3c0e81118309c95b165772ddbc

 Computer fingerprint (Developing, not finished)
 1c1d5d28a5423225bd29d898d1c5c551

*** https://browserleaks.com/fonts

 286,568 tested

 ✔ 2e8d42d63e7a992891473b0e92b935c7
 Report	60 fonts and 15 unique metrics found

 Fingerprint	✔ f11f4549
** screen
Никогда не развертывать на весь экран
- stats https://www.w3schools.com/browsers/browsers_display.asp
  - most common 1366x768
- get current https://whatismyresolution.com/

firefox -width 1366 -height 768 ( do not work with resistFingerprinting)
add-on Window Resizer by antwhere.com https://addons.mozilla.org/en-US/firefox/addon/window-resizer-antwhere/
- 870 - 666 = 102 = 768 + 102 = 1366x870
** disable GPU fingerprint(hardware acceleration)
to true:
gfx.direct2d.disabled
layers.acceleration.disabled

** fonts
Font Fingerprint Defender by ilGur https://addons.mozilla.org/en-US/firefox/addon/font-fingerprint-defender/

or

browser.display.use_document_fonts  - 0
** TLS
- check https://browserleaks.com/ssl
- config https://wiki.gentoo.org/wiki/Firefox

security.tls.version.min - 3
** user agent ( net required)
https://amiunique.org/stats
- about:config  general.useragent.override

popular:
- https://beamtic.com/user-agents/?browser=FireFox
- https://whatmyuseragent.com/browser/firefox/ff
- Mozilla/5.0 (Linux x86_64; rv:79.0) Gecko/20100101 Firefox/79.0
- Mozilla/5.0 (Linux x86_64; rv:79.0) Gecko/20100101 Firefox/79.0
- Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0

** disable webgl
to true
- webgl.disabled
- privacy.firstparty.isolate
to false
- geo.enabled
FOR VPN:
media.peerconnection.enabled
** plugins
Disable JavaScript https://github.com/dpacassi/disable-javascript
Font Fingerprint Defender https://addons.mozilla.org/en-US/firefox/addon/window-resizer-antwhere/
WindowResizer
CanvasBlocker by Korbinian Kapsner github.com/kkapsner



** disable javaScript
javascript.enabled


** profile
about:profiles

firefox -width 1366 -height 768 -P -no-remote second
** GNU JS Trap
https://www.gnu.org/philosophy/javascript-trap.html

** xpi extensions
https://wiki.mozilla.org/Add-ons/Extension_Signing#Unbranded_Builds

Extension must be
1) zipped:
   - zip -r -FS a.zip mouseless-plugin-master/* --exclude '*.git*'
   - 7z a a.xpi librejs-7.20.2/* -r
2) zip must be signed with api or web-ext sign to xpi format

xpinstall.signatures.required false - but not working

** check xpi extension
diff -Z mouseless-plugin-master/ mouseless_jk-0.12.2-an+fx-linux/
** Mouse and links
https://github.com/mortie/mouseless-plugin
with krita images extracted https://github.com/aaact-aatia/mouseless-plugin
https://addons.mozilla.org/en-US/firefox/addon/mouseless-plugin/

not working
- alt
- meta
- go forward
- page up,page down , fast ones

** Mouse and links complex
https://github.com/brookhong/Surfingkeys
https://addons.mozilla.org/en-US/firefox/addon/surfingkeys_ff/
** Gentoo specific
USE="-gmp-autoupdate" has disabled the following plugins from updating or installing into new profiles:
- gmp-gmpopenh264
- gmp-widevinecdm
*** Normandy
- service which allow Mozilla to push changes for default settings or even install new add-ons remotely
- app.normandy.enable=false
  - disabled in gentoo
** Tor compatibility
network.proxy.socks_remote_dns    true
network.dns.disablePrefetch       true
network.dns.disableIPv6           true
media.peerconnection.enabled    false

** user.js - Firefox configuration hardening
- https://github.com/pyllyukko/user.js/
- https://github.com/arkenfox/user.js/
  - app.update.enabled false
  - extensions.update.enabled false
  - security.OCSP.enabled 1 - for normal 0 - for tor
  - dom.security.https_only_mode - true for normal, false for tor
  - plugins.update.notifyUser false
  - dom.event.contextmenu.enabled - uncomment
  - places.history.enabled - true for normal false for tor
  - may request something
    - browser.safebrowsing.enabled - false
    - browser.safebrowsing.phishing.enabled - false
    - browser.safebrowsing.malware.enabled - false
  - keyword.enabled true
  - image.webp.enabled false - by hands now

*** own config from two sources
#+begin_src sh
#!/usr/bin/env bash
wget -O /tmp/user_arkenfox.js https://raw.githubusercontent.com/arkenfox/user.js/master/user.js
wget -O /tmp/user_pyllyukko.js https://raw.githubusercontent.com/pyllyukko/user.js/master/user.js
sleep 1
rm /tmp/user.js 2>/dev/null
# filter uncomment lines to user.js
cat /tmp/user_arkenfox.js | grep ^user_pref >> /tmp/user.js
cat /tmp/user_pyllyukko.js | grep ^user_pref >> /tmp/user.js
# uncomment some lines to user.js
cat /tmp/user_arkenfox.js | grep -i -e account -e dom.event.contextmenu.enabled >> /tmp/user.js
cat /tmp/user_pyllyukko.js | grep -i -e account -e dom.event.contextmenu.enabled >> /tmp/user.js
sleep 1
# remove dublicates and commented strings
sort /tmp/user.js | uniq | sed "s#^\ \ \ //\ ##" > /tmp/user1.js
# filter important
cat /tmp/user1.js | grep -v -e _user.js.parrot\
			 -e plugins.update.notifyUser \
			 -e app.update.enabled \
			 -e extensions.update.enabled \
			 -e plugins.update.notifyUser \
			 -e browser.safebrowsing.enabled \
			 -e browser.safebrowsing.phishing.enabled \
			 -e browser.safebrowsing.malware.enabled \
			 -e keyword.enabled \
			 -e security.OCSP.enabled \
			 -e dom.security.https_only_mode \
			 -e places.history.enabled \
			 > /tmp/user_filtered.js
# all false
cp /tmp/user_filtered.js /tmp/user_common.js
cat /tmp/user1.js | grep -e app.update.enabled \
				 -e extensions.update.enabled \
				 -e plugins.update.notifyUser \
				 -e browser.safebrowsing.enabled \
				 -e browser.safebrowsing.phishing.enabled \
				 -e browser.safebrowsing.malware.enabled \
    | sed s/true/false/ >> /tmp/user_common.js
# all true
cat /tmp/user1.js | grep -e keyword.enabled | sed s/false/true/ >> /tmp/user_common.js
# normal 1
cp /tmp/user_common.js user_normal.js
cat /tmp/user1.js | grep -e security.OCSP.enabled | sed s/0/1/ >> user_normal.js
# normal true
cat /tmp/user1.js | grep -e dom.security.https_only_mode \
			    -e places.history.enabled | sed s/false/true/ >> user_normal.js
# tor 0
cp /tmp/user_common.js user_tor.js
cat /tmp/user1.js | grep -e security.OCSP.enabled | sed s/1/0/ >> user_tor.js
# tor false
cat /tmp/user1.js | grep -e dom.security.https_only_mode \
				 -e places.history.enabled \
    | sed s/true/false/ >> user_tor.js
#+end_src
** certificates
By default your browser trusts 100's of Certificate Authorities (CAs)

Settings -> Privacy & Security -> Certificates
** User-Agent
Random User-Agent by Paramtamtam

require privacy.resistFingerprinting to be disabled

latest:
- http://www.whatuseragent.com/
** images loading
permissions.default.image
- 1 -- Always load the images
- 2 -- Never load the images
- 3 -- Don't load third images

** Debugging remote Firefox instances and headless

- /path/to/firefox --start-debugger-server 6000 -headless
- /path/to/firefox --start-debugger-server ws:6000 -headless
- about:debugging
- https://github.com/mozilla/node-firefox
- https://github.com/saucelabs/foxdriver

https://pythonbasics.org/selenium-firefox-headless/
* rtorrent
- https://github.com/rakshasa/rtorrent
- https://github.com/rakshasa/rtorrent/wiki

** keys
Throttling
- a/s/d 	Increase the upload throttle by 1/5/50 KB.
- z/x/c 	Decrease the upload throttle by 1/5/50 KB.
- A/S/D 	Increase the download throttle by 1/5/50 KB.
- Z/X/C 	Decrease the download throttle by 1/5/50 KB.

main
- ^q 	quit
- ^s 	Start download. Runs hash first unless already done.
- ^d 	Stop an active download, or remove a stopped download.
- ^k 	Stop and close the files of an active download.
- backspace 	Add torrent using an URL or file path. Use tab to view directory content and do auto-complete. Also, wildcards can be used. For example: ~/torrent/*
- return Same as backspace, except the torrent remains inactive. (Use ^s to activate)
- l 	View log. Exit by pressing the space-bar.
- +/- 	Change priority of torrent.
- ^r 	Initiate hash check of torrent. Without starting to download/upload.

keys
- 1 	Show all downloads
- 2 	Show all downloads, ordered by name
- 3 	Show started downloads
- 4 	Show stopped downloads
- 5 	Show complete downloads
- 6 	Show incomplete downloads
- 7 	Show hashing downloads
- 8 	Show seeding downloads
- 9 	Show leeching downloads
- 0 	Show active downloads

- * 	Change the priority of all files
- / 	Collapse directories. While collapsed, press right to expand the selected directory.
- space 	Change the file priority; applies recursively when done on a directory
** screen
[Throttle 500/600 KB]
- 500/600 - upload/download

[D 15/0]
- Current number of download slots in use/the maximum (the maximum is shown as 0 if unlimited).

[H 1/32]
- Current number of active HTTP requests (for tracker announces and downloads of .torrent files)/the maximum.

[U 3/14]
- Current number of upload slots in use/the maximum, which depends on the global upload rate limit.

[S 6/40/768]
- The three numbers represent handshakes/open sockets/max open sockets.

[F 4/128]
- The two numbers represent open files/max open files. The library dynamically closes the least used files as needed.
** lags probles
lags because of http dns request - they are single-threaded
** To turn off DHT connection tracking on Linux,
iptables -t raw -I PREROUTING -p udp --dport 6881 -j CT --notrack
iptables -t raw -I OUTPUT -p udp --sport 6881 -j CT --notrack

in gernel:
- Network options -> Network packet filtering framework -> IP: Netfiltering configuration -> [*] raw table support
** config
#+begin_src conf
# https://github.com/prog-it/rtorrent-rutorrent-setup-guide/blob/master/.rtorrent.rc
# rtorrent will not start without IPv6 support in your kernel
bind=0.0.0.0

# Global upload and download rate in KiB. "0" for unlimited.
#throttle.global_down.max_rate.set_kb = 0
throttle.global_up.max_rate.set_kb = 1575
# throttle.max_uploads.set = 8

# Default directory to save the downloaded torrents.
directory.default.set = /mnt/sda6/media/

# Default session directory. When restarting rtorrent, the torrents from this directory will be restarted.
session.path.set = /home/rtorr/session

# system.daemon.set = true

pieces.hash.on_completion.set = yes

# network
network.port_range.set = 49333-49333
protocol.encryption.set = allow_incoming,try_outgoing,enable_retry
#dht.mode.set = auto
# 6881
dht.port.set = 6981
protocol.pex.set= yes

# use a http proxy. [url] ;an empty string disables this setting
# To connect torrent Trackers
#
# network.http.proxy_address.set = 127.0.0.1:9040

# Proxy for all traffic. Include torrent traffic peers
#
# network.proxy_address.set = 127.0.0.1:9050

# Maximum number of connections rtorrent can accept/make (`sockets`)
# number of sockets to simultaneously keep open
#
# network.max_open_sockets.set = 999


# -- LOGGING
log.open_file = "rtorrent", /home/rtorr/rtorrent.log
log.open_file = "tracker", /home/rtorr/tracker.log

log.add_output = "info", "rtorrent"
log.add_output = "critical", "rtorrent"
log.add_output = "error", "rtorrent"
log.add_output = "warn", "rtorrent"
log.add_output = "notice", "rtorrent"
log.add_output = "debug", "rtorrent"

log.add_output = "dht_debug", "tracker"
log.add_output = "tracker_debug", "tracker"

# -- throttle
throttle.max_uploads.set = 5
throttle.max_uploads.global.set = 15

throttle.min_peers.normal.set = 3
throttle.max_peers.normal.set = 12

throttle.min_peers.seed.set = 3
throttle.max_peers.seed.set = 20
trackers.numwant.set = 18

network.http.max_open.set = 3
network.max_open_files.set = 120
network.max_open_sockets.set = 126

pieces.memory.max.set = 2800M
network.xmlrpc.size_limit.set = 4M
encoding.add = utf8
# system.umask.set = 0027

trackers.use_udp.set = yes
network.http.dns_cache_timeout.set = 125

# Save all the sessions in every 6 hours instead of the default 20 minutes.
schedule2 = session_save, 1200, 21600, ((session.save))
#+end_src
* cron
- emerge --ask sys-process/dcron
Cron checks:
- /var/spool/cron/ - undividual user cron files
- /etc/cron.d/ - system services and apps
- /etc/anacrontab - configuration file for anacron
- /etc/crontab - cron tasks not edited with crontab -e (old)
- /var/spool/cron/crontabs/<user> - per user edited with crontab -e (right way)
- cron task scripts: - place scripts to execute here
  - /etc/cron.hourly/
  - /etc/cron.daily/
  - /etc/cron.weekly/
  - /etc/cron.monthly/

Commands:

- crontab -l
- crontab -e
- export VISUAL=nano - change editor
- export EDITOR=nano - change editor

** format
# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name  command to be executed

Wildcard, specifies every possible time interval
- The comma (,): To specify a list of values
- Asterisk (*): To specify all possible values for a field
- /	Specify a periodicity/frequency using a slash
- Dash (-): To specify a range of values

| Symbol | Description                                                |
|--------+------------------------------------------------------------|
| '*'    | Wildcard, specifies every possible time interval           |
| ,      | List multiple values separated by a comma.                 |
| '-'    | Specify a range between two numbers, separated by a hyphen |
| '/'    | Specify a periodicity/frequency using a slash              |

Special:
| @reboot   | at startup                                |           |
| @yearly   | midnight of 1 January                     | 0 0 1 1 * |
| @annually | ( == @yearly)                             |           |
| @monthly  | at midnight of the first day of the month | 0 0 1 * * |
| @weekly   | midnight on Sunday morning                | 0 0 * * 0 |
| @daily    | once a day at midnight                    | 0 0 * * * |
| @midnight | ( == @daily)                              |           |
| @hourly   | once an hour at the beginning of the hour | 0 * * * * |


** Examples:
30 4 echo "It is now 4:30 am."
0 22 echo "It is now 10 pm."
30 15 25 12 echo "It is 3:30pm on Christmas Day."
30 3 * * * echo "Remind me that it's 3:30am every day."
0 * * * * echo "It is the start of a new hour."
0 6 1,15 * * echo "At 6am on the 1st and 15th of every month."
0 6 * * 2,3,5 echo "At 6am on Tuesday, Wednesday and Thursdays."
59 23 * * 1-5 echo "Just before midnight on weekdays."
0 */2 * * * echo "Every two hours."
0 20 * * 4 echo "8pm on a Thursday."
0 20 * * Thu echo "8pm on a Thursday."
*/15 9-17 * * 2-5 echo "Every 15 minutes from 9am-5pm on weekdays."
@yearly echo "Happy New Year!"

* SSH
Secure SHell - port 22.
- Mozilla recommendations https://infosec.mozilla.org/guidelines/openssh
** config files
- /etc/ssh/sshd_config - server conf
  - /etc/conf.d/sshd
  - /etc/ssh/known_hosts and ~/.ssh/known_hosts - list of public keys for all the hosts to which the user has
    connected with ssh. for verifying the identity of client's systems. protecting against impersonation or
    man-in-the-middle attacks.
  - ~/.ssh/authorized_keys - mandatory, not added automatically
- /etc/ssh/ssh_config - client conf
  - ~/.ssh/config

** permissions
- 0600 ~/.ssh/authorized_keys # rw
- 0600 ~/.ssh/known_hosts
- 0644 ~/.ssh/config # rw-r-r
- 0600 ~/.ssh/id_rsa # rw
- 0644 ~/.ssh/id_rsa.pub # rw-r-r
- 0700 or 755 /ssh
- 644 /etc/ssh_config
- 600 /etc/ss_config
** authentication types
1) password
   - PasswordAuthentication yes
2) public key
3) Host-based - public key + ip white list
   - EnableSSHKeySign yes
   - HostbasedAuthentication yes
   - IgnoreRhosts no
4) keyboard-interactive - server sends prompts to the Client who should provide the correct response.
   - KbdInteractiveAuthentication yes
   - ChallengeResponseAuthentication yes
5) challenge-response - A specific backend system sends the challenges to the client’s PC and verifies the response.
   - ChallengeResponseAuthentication yes
   - KbdInteractiveAuthentication yes
6) GSSAPI - Kerberos authentication
   - GssapiAuthentication
   - GssapiKeyExchange
** usage
- /usr/sbin/sshd -t # validate its configuration
- ssh-add -l # list keys
- copy files
  - from remote to local
    - rsync username@ip_address:/home/username/filename .
    - scp filename username@ip_address:/home/username .
    - rsync -r source_folder/ dest_folder/ # recurse copy contents of the source folder into dest_folder
    - rsync -vP username@host:/path/to/file . # download large file with progress
  - from local to the remote
    - rsync username@ip_address:/home/username/filename .
    - scp filename username@ip_address:/home/username
      -
** commands
- scp - secure file copy
- sftp - secure file transfer
- ssh-add - add private key identities to the authentication agent
- ssh-agent - authentication agent
- ssh-copy-id - use locally available keys to authorize logins on a remote machine
- ssh-keygen - authentication key utility
- ssh-keyscan - gather SSH public keys from servers
- sshd - OpenSSH daemon


** 1) ssh server - password
- net-misc/openssh
- Config server:
  - PasswordAuthentication yes
  - PermitRootLogin yes
  - PubkeyAuthentication yes # allow migrate to pubkey (not required)
  - ListenAddress 0.0.0.0 # and add rc_need="net.enp" to /etc/conf.d/sshd (not required)
- sshd -t
client: ssh user@127.16.0.1

** 2) ssh server - public key
Just don’t use ECDSA/DSA!

1) create and copy key at client
   - ssh-keygen -b 4096 -t rsa -f ~/.ssh/mykey_rsa
   - ssh-keygen -t ed25519 -a 256 (-f ~/.ssh/id_ed25519 -C "username@hostname")
   - ssh-copy-id -i ~/.ssh/id_rsa.pub 172.16.0.1
   - ssh user@172.16.0.1 # try loggin
   - eval `ssh-agent`
   - ssh-add /home/user/.ssh/id_rsa
   - ssh user@172.16.0.1 # try loggin
2) server - change config of sshd
   - PermitRootLogin no # if not needed
   - PasswordAuthentication no
   - HostbasedAuthentication no
   - KbdInteractiveAuthentication no # keyboard-interactive
   - # UsePAM yes # should be commented
   - AllowUsers user1 user2 # restrict access for this users only
   - sshd -t


1) client - samplify ~/.ssh/config
   - Host ssh-ex
     - HostName 104.236.90.57
     - User fideloper
     - IdentitiesOnly yes # where ssh-agent offers many different identities. (optional)
     - IdentityFile ~/.ssh/id_sshex
     - PreferredAuthentications publickey # (optional)

** 3) sftp server
1. uncomment /etc/ssh/sshd_config: Subsystem sftp /usr...
2. for autocompletion at client: echo "net-misc/openssh libedit" >> /etc/portage/package.use/openssh
** 4) X11 Forwarding
to start a graphical applications installed on a remote Linux system and forward that application windows
(screen) to the local system

1) /etc/sshd_config
   - ForwardX11=yes
2) ssh -Y host


ssh -X - is not working:
- Warning: untrusted X11 forwarding setup failed: xauth key data not generated
- xset: ubable to open display ""
** 5) sshfs - client
- File systems  --->  [*] FUSE (Filesystem in Userspace) support
- emerge --ask net-fs/sshfs
- umount: fusermount -u /path/to/local/sshfs/mount

Options for access:
- -o allow_other
  - replace allow_other with allow_root, for root).
- -o umask=M
  - set file permissions (octal)
- -o uid=N
  - set file owner
- -o gid=N
  - set file group


It is recommended to run SSHFS as regular user (not as root).

There is your options:
1) run as root
   - only root can access folder
   - with allow_other - you must hide folder as subfolder and set permissions on parent folder
     - chmod o-rwx /mnt
     - chown root:users /mnt
     - mkdir /mnt/share
     - sshfs -o allow_others -o uid=1000 -o gid=100 target:/mnt/share /mnt/share
2) run as user
   - only user can access folder
   - root and user can access folder but user can allow access to anyone
     - with /etc/fuse.conf uncomment: user_allow_other
     - sudo -u user sshfs -o allow_root -o uid=1000 -o gid=100 target:/mnt/share /mnt/share

/etc/fstab:
- as root (allow_other):
  - sshfs#SERVER_USER@remotehost:/SOURCEDIR /home/USER/Music fuse user,_netdev,idmap=user,transform_symlinks,identityfile=/home/USER/.ssh/id_rsa,allow_other,default_permissions,uid=1000,gid=1000 0 0
  - user@host:/remote/path /local/path  fuse.sshfs noauto,x-systemd.automount,_netdev,users,idmap=user,IdentityFile=/home/user/.ssh/id_rsa,allow_other,reconnect 0 0
    - noauto tells it not to mount at boot
    - x-systemd.automount does the on-demand magic
    - _netdev tells it that it is a network device, not a block device (without it "No such device" errors might happen)
- as user:
  - user@host:/remote/path /local/path  fuse.sshfs noauto,x-systemd.automount,_netdev,user,idmap=user,follow_symlinks,identityfile=/home/user/.ssh/id_rsa,allow_other,default_permissions,uid=USER_ID_N,gid=USER_GID_N 0 0

up:
- sshfs -o allow_other -o uid=1000 -o gid=100 target:/mnt/share /mnt/share

down:
- chmod -R g+rwx /mnt/share/* # allow at target to write
- fusermount -u /mnt/share # umount
** ssh-agent
- key manager for SSH. It holds your keys and certificates in memory, unencrypted, and ready for use by ssh
- runs in the background on your system

*do not type password all the time*
- eval $(ssh-agent) or eval `ssh-agent` # to start agent
- ssh-agent -k # to kill agent
- ssh-add -l # list private keys currently accessible to the agent ~/.ssh/id_rsa
- ssh-add key
- ssh-add -D - del -l list

ssh-add without any parameters - it will scan your home directory for some standard keys and add them to your
agent

ssh-agent -k # kill daemon

** agent forwarding problem
security risk: anyone with root access on the remote host can discreetly access your local SSH agent through
the socket. They can use your keys to impersonate you on other machines on the network.

How to reduce your risk when agent forwarding:
- ssh -A turns on agent forwarding for a single session.
- ssh-add -x locks the agent with a password, and ssh-add -X unlocks it
- alternative SSH agent that prompts you when it’s being used.
- ProxyJump directive: ssh -J bastion.example.com cloud.computer.internal # to connect to
  cloud.computer.internal via your bastion.example.com
  1. your SSH client uses keys from your agent to connect to bastion.example.com.
  2. Once connected, SSHD on the bastion connects to cloud.computer.internal and hands that connection off to
     your local SSH client.
  3. Your local SSH client runs through the handshake again, this time with cloud.computer.internal.
- Older versions of SSH and SSHD (prior to 7.2, released in 2016) don’t support ProxyJump:
  - ssh -o ProxyCommand="ssh bastion.example.com nc %h %p" cloud.computer.internal

https://smallstep.com/blog/ssh-agent-explained/
** ssh-copy-id
ssh-copy-id user@hostname.example.com -p <port-number>

copies the public key of your default identity (use -i identity_file for other identities) to the remote host.
** inside of ssh
- The client presents a public key to the server.
- The server generates and sends a brief, random message, asking the client to sign it using the private key.
- The client asks the SSH agent to sign the message and forwards the result back to the server.
- The server checks the signature using the client’s public key.
- The server now has proof that the client is in possession of their private key.
- Later in the handshake process, a set of new, ephemeral and symmetric keys are generated and used to encrypt
  the SSH session traffic. These keys may not even last the entire session; a “rekey” event happens at regular
  intervals.

** old


В начале - настраиваем сервар на аутентификация по ключу
1) на клиенте (без пароля): ssh-keygen -o -b 4096 -t rsa -f ~/.ssh/mykey_rsa
2) на сервере по рутом /etc/ssh/sshd_config:
   - PermitRootLogin yes
   - PubkeyAuthentication no
   - PasswordAuthentication yes
На клиенте - копируем публичный ключ на сервер в authorized_keys:
- ip = 10.0.0.1 - сервера
- scp user@$ip:"~/.ssh/mykey_rsa.pub" ~/.ssh/authorized_keys

потом на сервере :
- PubkeyAuthentication yes
- AuthorizedKeysFile      .ssh/authorized_keys
- PasswordAuthentication no
- UsePAM no - Also verify UsePAM yes is not in the configuration file; it overrides the public key
  authentication mechanism. Alternatively PasswordAuthentication or ChallengeResponseAuthentication
  directives can be disabled

X: конектится по ssh сразу под тем пользователем под которым хочешь запустить X-приложение
- /etc/ssh/sshd_config
  - X11Forwarding yes
  - X11DisplayOffset 10

# E82.40 Check Point Remote Access VPN Clients for Windows
wine msiexec /i E82.40_CheckPointVPN.msi

*SOCKS 5 прокси*
ssh -D 8888 user@33.224.56.34

*restict one command with argument*
1. command="./nuke $SSH_ORIGINAL_COMMAND",no-port-forwarding,no-x11-forwarding,no-agent-forwarding KEY_TYPE KEY COMMENT
2. ./nuke:
   - set -euf -o pipefail
   - echo "$@"

*copy public key to remote machine*
- ssh-copy-id -i ~/.ssh/id_rsa.pub 192.168.0.1

** githib ~/.ssh/config
#+begin_src
# alias:
Host github.com
    HostName github.com
    Port 22
    User git_username
    IdentityFile ~/.ssh/rsa_id
    PreferredAuthentications publickey
#+end_src

** key type
- RSA - difficulty of factoring large numbers
- DSA - no longer recommended.
- ECDSA - weak - elliptic curves. Only three key sizes are supported: 256, 384, and 521 (sic!) bits.
- ed25519 (EdDS) - new

 https://stribika.github.io/2015/01/04/secure-secure-shell.html
** security
- Protocol 2                                  	                #Protocol 1 is fundamentally broken
- StrictModes yes                                                 #Protects from misconfiguration


Diffie-Hellman key exchange
- use 2048-bit or larger primes

RFC4419: The use of multiple moduli inhibits a determined attacker from precalculating moduli exchange values,
and discourages dedication of resources for analysis of any particular modulus.

generate new non elliptic-curve primes do this:
- ssh-keygen -G moduli-2048.candidates -b 2048
- ssh-keygen -T moduli-2048 -f moduli-2048.candidates
- cp moduli-2048 /etc/ssh/moduli

soft
- sshguard
- fail2ban

- Logjam Attack https://weakdh.org/

Stronger sshd_config:
- ClientAliveInterval 60 # seconds
** Port Forwarding/Tunneling
https://www.techrepublic.com/article/how-to-use-local-and-remote-ssh-port-forwarding/

-N - Do not execute a remote command.  This is useful for just forwarding ports.
-f - background
*** Local
local port to conecting ssh mashine

-g      Allows remote hosts to connect to local forwarded ports.

cons:
- TLS certificate validation fails
- When the website you are accessing redirects you to another URL, the connection fails because port
  forwarding is only valid for exactly this web server. This situation might be a problem when using single
  sign-on (SSO), for instance.
**** ex

Enables you to access another server from your local computer
- port numbers that are less than 1024 or greater than 49151 are reserved for the system

: ssh -L 8080:www.slashdot.org:80 localhost

You will be prompted to enter your user password for the client machine.  You are connecting, via SSH, back to
your client machine, but creating the necessary SSH tunnel to the destination. After that, open up a browser
and point it to http://localhost:8080. Your browser should automatically redirect you to Slashdot.

: ssh -L 9090:example.com:80 admin@server.com

localhost port 9090 will be connected to example.com:80

: ssh -L 9090:localhost:3306 admin@server.com

localhost 3306 will be opened as localhost 9090 for access admin@server.com
*** Remote
require: GatewayPorts yes in sshd_config

: ssh -R 9090:example.com:80 admin@server.com

server.com 9090 will be forwardet to example.com 80 which is accessed on local network only of server.com

: ssh -R 5900:localhost:5900 USERNAME@192.168.1.192

192.168.1.192 5900 will be forwarded to localhost 5900 with encryption

*** Dynamic
ssh will act as SOCKS4/5 proxy (Port 1080 is the IANA registered port for SOCKS)

: ssh -D 1080 bastion.securecorp.io

localhost 1080 is now SOCKS proxy to bastion.securecorp.io which is work as SOCKS proxy

** Reverse SSH Tunnel
Require: GatewayPorts yes in sshd_config ???

target:
- ssh -fN -R 7010:localhost:23 username@yourMachine
- yourMachine:7010 will be forwarded to target:22


https://jfrog.com/connect/post/reverse-ssh-tunneling-from-start-to-end/
https://www.marksanborn.net/howto/bypass-firewall-and-nat-with-reverse-ssh-tunnel/
** USE CASES
compare private and public
- diff <( ssh-keygen -y -e -f "id_rsa" ) <( ssh-keygen -y -e -f "id_rsa.pub" )
** links
- Памятка пользователям ssh https://habr.com/en/post/122445/
- https://en.wikibooks.org/wiki/OpenSSH/Cookbook/Public_Key_Authentication
- https://help.ubuntu.com/community/SSH/OpenSSH/Configuring
- config example https://stosb.com/blog/explaining-my-configs-sshd_config/

* email linux
- /var/spool/mail or /var/mail
- net-mail/mailutils

forward email destined for the root user to another email (say a postfix mail account)
- All you need to do is create a file named ".forward" in the "/root/" directory and on the first line enter
  the email address you want to forward to.

DKIM - contains encrypted hash value of email body and headers
- DKIM domain -  nslookup -q=TXT brisbane._domainkey.example.net
  - _domainkey - is fixed

DKIM record together with DMARC (and even SPF) you can also protect your domain against malicious emails sent
on behalf of your domains
* grub
write boot code to:
- MBR at disk
- boot partition - this code can be started if the boot code in MBR is able to do chain loading
https://www.gnu.org/software/grub/manual/grub/

** notes
- Esc or Shift - call for menu
- e - edit item
** disable menu
GRUB_RECORDFAIL_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT_QUIET=true
GRUB_TIMEOUT=10

* vi/vim
 https://www.tutorialspoint.com/vim/vim_quick_guide.htm

- ~/_vimrc or ~/.vimrc - config file

  set nu    Now Vim will show line numbers when file is opened. We’ll add more options to this file latter on.

copy:
1. v - visual mode
2. y/d - copy/cut
3. p/P - paste


** insert modes
Enter insert mode:
- i/I	insert before cursor/begin of line
- a/A 	Append text after cursor/end of line
- o/O	Append new line below/above
- s/(S or cc)	Remove char/whole line
- C	remove all after cursor

- r     replace one character
- R	Enter Replace mode
- J	remove \n at the end of line

** Navigation
- jkl;
- Ctrl+b scroll back
- Ctrl+f scroll forward
- 0/$	Move cursor to the begining/end of current line
- :n 	Jump to the nth line
- :0 	Jump to the start of file
- :$	Jump to the end of file
- w/e	Move cursor to the beginning/end of the next word
- b	Move cursor to the beginning of the previous word

:jumps
- Ctrl + o Jump back to the previous position
- Ctrl + i Jump to the next position

** other
- Esc	Enter command mode, esc insert mode
- u	Undo changes
- Ctrl + r	Redo changes
- yy	Copy a line
- p	Paste the content of the buffer
- [[ or gg	Move to the beginning of a file
- ]] or G	Move to the end of a file
- :w	Save changes
- :q!	Force quit Vim discarding all changes
- dd	Delete line
- /	Search, n- next N-previous

to line number:
- vi +36 foo.c
- :36

copy area:
1. v	visual mode
2. y	copy
3. p	paste

** plugins
 ~/.vim  - direcotry

The plugins kept in  ~/.vim/pack/*/start folder loaded into Vim memory when it starts
- Any directory under ~/.vim/pack is considered a package.
- The plugins under start/ folder are loaded on startup, while the plugins under opt/ folder are loaded manually
- :packadd pluginopt1 - load plugin from vendor/opt

** old
In normal mode
==============

:23,30m200  -- Move a section of code to another line.

df, (reverse dF,)   -- Delete all characters till , on the current line.

I  -- Go to beginning of the line as insert mode.

$   -- In command mode, go to end of the line.

gg  -- Go to beginning of the file
G  -- Go to end of the file.

CTRL + o, CTRL + i  -- Jumps back and forward, very useful.

CTRL + h/j/k/l  -- Move the selection to different split windows and
MinibuferExplorer.

CTRL + F    -- Page down scroll.
CTRL + B    -- Page back scroll.

номера					 :set number       :set nonumber
номера курсора				:set ruler
подсветка результатов поиска  :set hlsearch
строка  :(0)    $

Ctrl-U   CTRL + B -- Page back scroll
Ctrl-D   CTRL + F -- Page down scroll.

Page H M L

Macros:
        qa                      Start recording a macro in register a.
        ^                       Move to the beginning of the line.
        i#include "<Esc>        Insert the string #include " at the beginning
                                of the line.
        $                       Move to the end of the line.
        a"<Esc>                 Append the character double quotation mark (")
                                to the end of the line.
        j                       Go to the next line.
        q                       Stop recording the macro.

Now that you have done the work once, you can repeat the change by typing the
command "@a" three times.



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Macros:
        include one
        include two
        include three
        include four

Move the cursor to the "o" of "one" and press CTRL-V.  Move it down with "3j"
to "four".  You now have a block selection that spans four lines.  Now type:

        Imain.<Esc>

The result:

        include main.one
        include main.two
        include main.three
        include main.four
----------------------------------



:set textwidth=72
)))))))))))))))))))))))))))))))
windows:
:split (file name)            :new
Cltr-W
:close    :only -close all others
:vsplit   :vnew

tabs:
   :tabedit thatfile
   :tab split
   :0tabnew   - before first one
   :tabc
   gt  -> (goto tab)
   gT  <-
   :tabl
   :tabfir


)))))))))))))))))))))))))))))))

syntax on
modeline -- моды в самом файле
for python:
# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4

http://habrahabr.ru/post/64224/
tabstop (по умолчанию 8) — количество пробелов, которыми символ табуляции отображается в тексте. Оказывает влияние как на уже существующие табуляции, так и на новые. В случае изменения значения, «на лету» применяется к тексту.

softtabstop (0) — количество пробелов, которыми символ табуляции отображается при добавлении. Несмотря на то, что при нажатии на Tab вы получите ожидаемый результат (добавляется новый символ табуляции), фактически в отступе могут использоваться как табуляция так и пробелы. Например, при установленных tabstop равной 8 и softtabstop равной 4, троекратное нажатие Tab приведет к добавлению отступа шириной 12 пробелов, однако сформирован он будет из одного символа табуляции и 4 пробелов.

shiftwidth (8) — по умолчанию используется для регулирование ширины отступов в пробелах, добавляемых командами >> и <<. Если значение опции не равно tabstop, как и в случае с softtabstop, отступ может состоять как из символов табуляций так и из пробелов. При включении опции — smarttab, оказывает дополнительное влияние.

smarttab (выключена) — в случае включения этой опции, нажатие Tab в начале строки (если быть точнее, до первого непробельного символа в строке) приведет к добавлению отступа, ширина которого соответствует shiftwidth (независимо от значений в tabstop и softtabstop). Нажатие на Backspace удалит отступ, а не только один символ, что очень полезно при включенной expandtab. Напомню: опция оказывает влияние только на отступы в начале строки, в остальных местах используются значения из tabstop и softtabstop.

expandtab (выключена) — в режиме вставки заменяет символ табуляции на соответствующее количество пробелов. Так же влияет на отступы, добавляемые командами >> и <<.


autoindent (выключена) — копирует отступы с текущей строки при добавлении новой.

smartindent (выключена) — делает то же, что и autoindent плюс автоматически выставляет отступы в «нужных» местах. В частности, отступ ставится после строки, которая заканчивается символом {, перед строкой, которая заканчивается символом }, удаляется перед символом #, если он следует первым в строке и т.д. (подробнее help 'smartindent').


# vim: tabstop=4 shiftwidth=4 smarttab expandtab smartindent

set list - показать конец строки

Syntastic is a Vim plugin that brings syntax checking to Vim.
* nano
-  CTRL + 6 and ALT + 6 to copy
- Ctrl+U	to paste
* ffmpeg
- slicing
  - ffmpeg -i input.mp4 -ss 00:00:05 -c copy -to 00:00:07 sliced-output.mp4
- flac to mp3
  - ffmpeg -i "path.flac" -ab 320k -id3v2_version 3 -map_metadata 0 a.mp3
- clear metadata
  - ffmpeg -i s.mp4 -map_metadata -1 -c:v copy -c:a copy t.mp4

'-i', self.filename,      # input file
               '-y',                     # overwrite existing output file
               '-map', '0',              # copy everything all streams from input to output
               '-codec', 'copy',         # don't decode anything, just copy (speed!)
               '-loglevel', 'panic',     # Don't show log
               '-hide_banner',           # hide the banner
               '-map_metadata', '-1',    # remove supperficial metadata
               '-map_chapters', '-1',    # remove chapters
               '-disposition', '0',      # Remove dispositions (check ffmpeg's manpage)
               '-fflags', '+bitexact',   # don't add any metadata
               '-flags:v', '+bitexact',  # don't add any metadata
               '-flags:a', '+bitexact',  # don't add any metadata

-i FILE -y -map 0 -codec copy  -hide_banner -map_metadata -1 -map_chapters -1 -disposition 0 -fflags +bitexact -flags:v +bitexact -flags:a +bitexact FILE



- remove image from mp3
  - ffmpeg -i Lilu45_Kino3.mp3 -map 0:a -c:a copy -map_metadata -1 Lilu45_Kino4.mp3
- get info
  - ffmpeg - i file
  - ffprobe file
- to gif
  - ffmpeg -ss 1900.0 -t 6.5 -i /mnt/sda6/media/The.Matrix.Resurrections.2021.1080p.HMAX.WEBRip.1600MB.DD5.1.x264-GalaxyRG[TGx]/The.Matrix.Resurrections.2021.1080p.HMAX.WEBRip.1600MB.DD5.1.x264-GalaxyRG.mkv -filter_complex "[0:v] fps=12,scale=480:-1,split [a][b];[a] palettegen [p];[b][p] paletteuse" SmallerStickAround.gif
  - https://engineering.giphy.com/how-to-make-gifs-with-ffmpeg/

record audio from a running application using:
- ffmpeg -f alsa -channels 2 -sample_rate 44100 -i loopout out.wav



* Gentoo
** short help
https://wiki.gentoo.org/wiki/Gentoo_Cheat_Sheet
  emerge:
- eclean-dist - clear /var/cache/distfiles, /usr/portage/distfiles - DISTDIR and the PKGDIR respectively
  variables in /etc/portage/make.conf
- eclean-pkg - clear /usr/portage/packages, /var/cache/binpkgs
- light (standard):
  - emerge --ask --update --changed-use --deep @world :: update
    - emerge -1vUD @world
- hard
  - emerge --ask --update --newuse --deep --with-bdeps=y --verbose-conflicts --tree @world :: update
- emerge -atv :: install package with --ask --tree --verbose
- emerge --search pck :: search package in names
- emerge -s '@net-ftp' :: search al packages in category
- emerge --ask --oneshot sys-apps/portage
- emerge --ask --depclean --verbose package - :: find out reverse dependencies
- emerge --ask --autounmask =sys-libs/glibc-2.33-r1 :: emerge older version
- USE="qt4 -gtk" emerge -1v app-misc/autokey
- cat /var/lib/portage/world :: installed packages
- emerge --resume :: resume from package was finished (after Ctr+C)
- emerge --resume --skip-first :: skip first package with couse failure --keep-going - ignore fails

equery:
for installes:
 - equery h flag1 flag2 :: packages with specific USE flags
 - equery list '*' :: all installed packages - chech if package installed
 - equery f package :: files of package
 - equery b 'ifstat' :: belongs - list packages that owns FILE
 - equery g iwd-1.24 :: dependencies for iwd - "-1.24" - required
for all:
 - equery meta package :: info
 - equery u package :: package USE flags

which package provide file:
- emerge -av app-portage/pfl
- e-file YOURFILE
- or http://www.portagefilelist.de/site/query/file


 REQUIRED_USE conditions:
 | foo? ( bar )            | if foo is set, bar must be set     |
 | foo? (!bar )            | if foo is set, bar must not be set |
 | foo? (or (bar baz aha ) | at least one must be set           |
 | ^^ (foo bar aha)        | exactly one must be set            |
 | ?? ( foo bar aha)       | no more than one may be set        |

CFLAGS per package:

** emerge stupid language
- D - deep
- u - update
- q - quiet
- N - newuse
- v - verbose
- a - ask
- 1 - oneshot
** install handbook
- mkfs.ext4 -T small /dev/sda2
- parted /dev/sda: set 1 bios_grub on # very important for GPT table
- gpg --verify stage3-amd64-<release>-<init>.tar.?(bz2|xz){.DIGESTS.asc,}
- tar xpvf stage3-*.tar.xz --xattrs-include='*.*' --numeric-owner
- set time:
  - date +%Y%m%d -s "20220429"
  - date -s "19:35"
  - hwclock --systohc
- mirrorselect -i -o >> /mnt/gentoo/etc/portage/make.conf # require correct date
- chroot!
- mkdir --parents /etc/portage/repos.conf
- cp /usr/share/portage/config/repos.conf /etc/portage/repos.conf/gentoo.conf
- nano /etc/resolv.conf: nameserver 8.8.8.8
- for CPU_FLAGS_X86: emerge --ask app-portage/cpuid2cpuflags
  - variant: #`echo "*/* $(cpuid2cpuflags)" >> /etc/portage/package.use/00cpuflags
- to raplace -march=native: gcc -v -E -x c /dev/null -o /dev/null -march=native 2>&1 | grep /cc1 | grep mtune
- /etc/portage/make.conf:
  - USE="caps X alsa ipv6 jpeg png ogg upower verify-sig -fonts -themes -nls -su -pam -qt5 -cups -fortran udev -elogind -udisks" # udev
  - CPU_FLAGS_X86="avx f16c mmx mmxext pclmul popcnt sse sse2 sse3 sse4_1 sse4_2 ssse3"
  - COMMON_FLAGS="-march=native -O2 -pipe"
  - MAKEOPTS="-j2"
  - L10N="en"
- emerge --sync --quiet
- build and install gentoo ???????????
- emerge --ask sys-boot/grub sys-kernel/gentoo-sources
- install kernel and grub
- install dhcp client [[network_config_gentoo]]
- Xorg/X11 confuguration [[xfce4_install_gentoo]]
- logging daemon
  - emerge --ask app-admin/sysklogd or app-admin/syslog-ng
  - rc-update add sysklogd default
  - chmod 700 /var/log
- passwd larry
- user autologin:
  - /etc/inittab: c2:2345:respawn:/sbin/agetty -a larry 38400 tty2 linux
- timezone:
  - ls /usr/share/zoneinfo
  - echo "UTC" > /etc/timezone
- locale
  - cat /usr/share/i18n/SUPPORTED
  - nano -w /etc/locale.gen
  - locale-gen
  - eselect locale list
- [[kernel_security]]
- emerge --ask app-portage/gentoolkit # equery

*** firmware
- download https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
- emerge --ask --autounmask=y linux-firmware
- emerge --ask sys-kernel/linux-firmware
- emerge --ask net-wireless/wireless-regdb
- copy files to /lib/firmware
- emerge --unmerge sys-kernel/linux-firmware
- set Device Drivers -> Generic Driver Options -> Formware loader -> regulatory.db regulatory.db.p7s


-
*** chroot
- mount --types proc /proc /mnt/gentoo/proc
- mount --rbind /sys /mnt/gentoo/sys
- mount --make-rslave /mnt/gentoo/sys
- mount --rbind /dev /mnt/gentoo/dev
- mount --make-rslave /mnt/gentoo/dev
- mount --bind /run /mnt/gentoo/run
- mount --make-slave /mnt/gentoo/run
- chroot /mnt/gentoo /bin/bash
- source /etc/profile
- export PS1="(chroot) ${PS1}"
** install xfce4 <<xfce4_install_gentoo>>
1) emerge --ask app-misc/tmux && tmux
2) /etc/portage/make.conf:
   - INPUT_DEVICES="evdev synaptics"
   - VIDEO_CARDS="intel i915" or "amdgpu radeon"
   - USE="X jpeg png ogg upower -qt5 -pam -su -elogind"
     - -qt5 - because of app-text/poppler
3) emerge --pretend --verbose x11-base/xorg-server
4) USE=-server emerge --ask x11-base/xorgcp ????????
5) env-update
6) source /etc/profile
7) echo "xfce-base/xfce4-panel -dbusmenu" >> /etc/portage/package.use/xfce4-panel
8) emerge --ask --oneshot xfce-extra/xfce4-notifyd
9) emerge --ask xfce-base/xfce4-meta
10) emerge --ask xfce4-xkb-plugin # keyboard layouts
11) cp -r /usr/share/X11/xorg.conf.d /etc/X11/xorg.conf.d # copy configuration files of xorg-drivers
12) rc-service dbus start && rc-update add dbus default # required for battery power management
13) useradd -m -G users,wheel,input,audio,video,cdrom,games,usb -s /bin/bash larry
14) or #usermod -a -G input,video larry # user should be in input,video groups
16) $startxfce4 -- vt1 # 1 - number of current tty
17) security:
    - $startx -- -nolisten tcp
    - or:
      - /usr/bin/startx: defaultserverargs="-nolisten tcp"
      - /etc/portage/make.conf:
	- CONFIG_PROTECT="/usr/bin/startx" # To make sure that startx does not get overwritten when emerging a new version of Xorg you must protect it. Add the following line to /etc/portage/make.conf:
18) keyboard repeat delay: 200, speed: 35


Testing and trouble shooting
- emerge --ask x11-wm/twm x11-terms/xterm
- X -config /home/u/xorg.conf
- $X -configure # generate xorg.conf (for testing)
- evtest # test evdev app-misc/evtest
- $less .local/share/xorg/Xorg.0.log # holy grail of trouble shooting
** create USB stick
1) check gpg
2) or check hash
3) USB: dd if=/path/to/image.iso of=/dev/sdc bs=8192k
** python
PYTHON_SINGLE_TARGET
PYTHON_TARGETS

app-editors/vim PYTHON_TARGETS: -* python2_7 PYTHON_SINGLE_TARGET: -* python2_7

$profile-config list      - current stable

** no root Xorg
package.use/xorg:
x11-base/xorg-server -suid

startx -- vt2

~/.xinitrc
exec startxfce4

** add user
useradd -m -G video,audio,wheel -s /bin/bash larry
usermod -a -G video larry
gpasswd -d larry video
** network configuration <<network_config_gentoo>>
netifrc is Gentoo's default framework for configuring and managing network interfaces
1) emerge --ask  net-misc/dhcpcd
2) dhcpcd eth0
3) echo 'config_eth0="dhcp"' > /etc/conf.d/net
4) ln -s /etc/init.d/net.lo /etc/init.d/net.eth0
5) rc-service net.eth0 start
6) rc-update add dhcpcd default
7) iptables or nftables

wifi:
- emerge --ask net-wireless/iw net-wireless/wpa_supplicant
*** /etc/wpa_supplicant/wpa_supplicant.conf
#+begin_src sh
#ctrl_interface=/var/run/wpa_supplicant
eapol_version=2
country=RU

# random
# auto_uuid=1
mac_addr=1
preassoc_mac_addr=1

bss_expiration_age=1980
bss_expiration_scan_count=5

passive_scan=1

network={
        ssid="TP-Link_ACC3"
        psk="60s%.!_Col"
}
#+end_src
*** router
- emerge --ask net-dns/dnsmasq
- /etc/sysctl.conf:
  - net.ipv4.ip_forward = 1
  - net.ipv4.conf.default.rp_filter = 1
- susctl -p /etc/sysctl.conf
- /etc/dnsmasq.conf:
  - dhcp-range=eth0,192.168.0.100,192.168.0.250,72h
  - interface=eth0
- /etc/init.d/: ln -s net.ln net.eth0
- rc-service net.eth0 restart

- client:
- /etc/init.d/: ln -s net.ln net.eth0
- /etc/conf.d/:
  - config_eth0="192.168.0.2/24"
  - routes_eth0="default via 192.168.0.1" # or ip route add default via 192.168.0.1 dev eth0
- rc-service net.eth0 restart
- /etc/resolv.conf: nameserver 192.168.0.1
-
** audio
- add user to audio group!
- euse -E alsa # add alsa to /etc/portage/make.conf
- emerge --ask --changed-use --deep @world
- emerge --ask media-sound/alsa-utils
- alamixer # unmute Master
- speaker-test -c2 -t wav

microphone
- SND_USB_AUDIO - kernel
- arecord -l # list capture hardware
- arecord -f S16_LE -d 3 -r 44100 --device="hw:0,0" -c 2 /tmp/test.wav
- aplat /tmp/test.wav
-
*** links
- https://wiki.gentoo.org/wiki/ALSA
- https://wiki.debian.org/ALSA#Troubleshooting
- https://alsa.opensrc.org/MultipleCards
- https://alsa.opensrc.org/Troubleshooting
** fonts
eselect fontconfig list

System:
- emerge --ask media-fonts/dejavu

Chinese:
- emerge --ask media-fonts/font-isas-misc

** linux firmware
- package distributed alongside the Linux kernel
- contains firmware binary blobs

bin files should be placed to /lib/firmware/
** OpenRC
- gide https://github.com/OpenRC/openrc/blob/master/service-script-guide.md
- /etc/conf.d/ - configuration files for /etc/init.d/ scripts with same name

make two instances
- ln -s sshd /etc/init.d/sshd.eth0
- cp /etc/conf.d/sshd /etc/conf.d/sshd.eth0

** package manager  - Portage
- emerge --info

Portage security
- https://wiki.gentoo.org/wiki/Portage_Security
- Gentoo public keys: gpg /usr/share/openpgp-keys/gentoo-release.asc
- verify: gemato verify -K /usr/share/openpgp-keys/gentoo-release.asc /var/db/repos/gentoo

*** terms
- *Portage* - package manager and distribution system (emerge command)
  - packages or atoms
- *ebuild repository*, colloquially known as an overlay - metadata files for pachages
- primary repository - *Gentoo ebuild repository* - Gentoo repo, ::gentoo, gentoo.git - the Portage
  tree, rsync tree, or sometimes just "the tree"
  - contains ebuilds
- *ebuild* file - bash like
  - standardized through the Package Manager Specification
  - define Ebuild Phase Functions - how to install
    - src_unpack, src_prepare, src_configure, src_compile
  - SRC_URI - tells Portage the address to use for downloading the source tarball
  - BDEPEND, DEPEND, and RDEPEND - dependencies
- *Gentoo rsync mirrors* - mirrors distribute the Gentoo ebuild repository
  - sync-uri variable in the [gentoo] section of repos.conf
  - https://www.gentoo.org/support/rsync-mirrors/
- *Gentoo source mirrors* - distribute the source archives for the software, stages and tree snapshots for installation
  - GENTOO_MIRRORS variable in make.conf
  - https://www.gentoo.org/downloads/mirrors/
ebuild
- Manifest - hashes
- 20200316.ebuild
- 99999999.ebuild
- metadata.xml - use flags, maintainers

*** system directories and files
directories
- /usr/tmp/portage/ - extracted source files
- /var/db/pkg/ - config of installed packages

make.conf:
- PORTDIR="/var/db/repos/gentoo/" - snapshot of Gentoo ebuild repository
  - /var/db/repos/gentoo/profiles/use.desc - A full description on the available USE flags
  - /var/db/repos/gentoo/metadata/timestamp.chk  - last updated (synced)
- DISTDIR="/var/cache/distfiles" - is the default directory Portage uses to store source code tarballs.
- PKGDIR="/var/cache/binpkgs"

default config /usr/share/portage/config/
- repos.conf - may be overwriten in /etc/portage/repos.conf/gentoo.conf
- make.globals - main config file defaults
*** solving conflicts
types:
- slot conflict
- dependency confclit ( warning)

search installed packages and output formatted:
- equery l kde-frameworks/* -F '$category/$name'
*** add localrep and own modified package
- emerge --ask app-eselect/eselect-repository
- eselect repository create <repository_name>  #  /var/db/repos/localrepo created
- emerge --ask git -iconv -pcre -perl -webdav
- /var/db/repos/localrepo/metadata/layout.conf:
  - auto-sync = false
- git install and initiate in /var/db/repos/localrepo/
- mkdir /var/db/repos/localrepo/<package-group>
- cp /var/db/repos/gentoo/<package-group>/<package> /var/db/repos/localrepo/<package-group>/<package>
- cp <package-group>/<package> <package-group>/<package>-r222 # version must be more
- emerge --ask --verbose app-portage/repoman
- repoman manifest
- chown -R portage:portage /var/db/repos/localrepo
- https://wiki.gentoo.org/wiki/Handbook:AMD64/Portage/CustomTree#Defining_a_custom_ebuild_repository
- https://wiki.gentoo.org/wiki/Creating_an_ebuild_repository
*** install from overlay
- emerge --ask app-eselect/eselect-repository
- eselect repository enable N
- emerge --sync
- emerge ??
*** issue solving
- emerge --info
- eselect profile show
** media player
media-video/mpv
** install git
- git config --global user.email "<larry@gentoo.org>"
- git config --global user.name "Larry the cow"
- git config --global core.editor emacs
- git init
- git add .
- git commit
** udev brightness
/etc/udev/rules.d/91-backlight.rules:
- ACTION=="add", SUBSYSTEM=="backlight", RUN+="/bin/sh -c 'echo 150 > /sys/class/backlight/radeon_bl0/brightness'"
** device manager udev/eudev/hal
- hal - old device manager
- udev - systemd's device manager
-

** parallel emerge
- MAKEOPTS="-jN" - parallel makes
- EMERGE_DEFAULT_OPTS= "--jobs 3 --load-average 2.9" - parallel emerges
- N*K = max cpu
- MAKEOPTS=”-j${core} +1″ is NOT the best optimization
** raspberry pi
- https://wiki.gentoo.org/wiki/Raspberry_Pi/Quick_Install_Guide
  - git clone --depth 1 https://github.com/raspberrypi/firmware/
  - boot to /boot
  - modules to /lib
- https://wiki.gentoo.org/wiki/Raspberry_Pi/Installation
  - emerge --ask sys-kernel/raspberrypi-image sys-boot/raspberrypi-firmware


- arm64
- Clear root password: sed -i 's/^root:.*/root::::::::/' /mnt/gentoo/etc/shadow
- /etc/fstab
- for CPU_FLAGS_X86: emerge --ask app-portage/cpuid2cpuflags
- to raplace -march=native: gcc -v -E -x c /dev/null -o /dev/null -march=native 2>&1 | grep /cc1 | grep march
- /etc/portage/make.conf
- mkdir --parents /etc/portage/repos.conf
- cp /usr/share/portage/config/repos.conf /etc/portage/repos.conf/gentoo.conf
- date +%Y%m%d -s "20220429"
- date -s "19:35"
- rc-update add swclock


*** kernel:
- emerge --ask sys-devel/bc sys-devel/bison sys-devel/flex
- Platform selection - Broadcom BCM2835 family
- emerge --ask sys-boot/raspberrypi-firmware or git clone --depth 1 git://github.com/raspberrypi/linux.git
- make bcmrpi3_defconfig
- make bcm2711_defconfig
- CPU Power Management -> SPU Frequency scaling -> Default CPUFreq governor = performance
- make -j4 zImage modules dtbs
- make -j4 Image modules dtbs
- sudo make modules_install
- sudo cp arch/arm64/boot/dts/broadcom/*.dtb /boot/
- sudo cp arch/arm64/boot/dts/overlays/*.dtb* /boot/overlays/
- sudo cp arch/arm64/boot/dts/overlays/README /boot/overlays/
- sudo cp arch/arm64/boot/Image /boot/kernel8.img

Network support -> Network opetions -> The IPv6 protocol
Network support -> RF switch subsystem support
Device drivers -> Network -> Broadcom FullMac WLAN driver
**** links
- official https://www.raspberrypi.com/documentation/computers/linux_kernel.html
- https://wiki.gentoo.org/wiki/Raspberry_Pi/Kernel_Compilation
- https://wiki.gentoo.org/wiki/Raspberry_Pi/Mainline_Kernel
- https://wiki.gentoo.org/wiki/Raspberry_Pi4_64_Bit_Install
*** firmware
- emerge sys-kernel/linux-firmware --autounmask=y
-

https://github.com/raspberrypi/firmware/tree/master/boot
*** overcloking
https://haydenjames.io/raspberry-pi-3-overclock/
** games
*** dri
emerge --ask mesa-progs
emerge --ask dev-util/strace
strace glxinfo
*** openmw
- emerge app-arch/innoextract
*** fps
games-fps/doomsday - modern engine for Doom, Heretic, and Hexen
-
** hdmi mirroring
xarndr --output HDMI-0 --auto --same-as LVDS
** opencl
- virtual/opencl
- emerge --ask =dev-util/rocminfo-5.0.2 --autounmask=y
- dev-libs/rocm-opencl-runtime

- HSA_USERPTR_FOR_PAGED_MEM=0 rocminfo
- HSAKMT_DEBUG_LEVEL=7 rocminfo

Segmentation fault:
- fix VIDEO_CARD or disable opencl flag from mesa
** all modifications:
- ~/.bashrc
- ~/.bash_aliases
- ~/nftables
- ~/.ssh
- /etc/udev/rules.d/91-backlight.rules
- /etc/portage/make.conf
- /etc/portage/package.use/*
- /etc/sysctl.conf
- ~/firef*
- ~/hotkeys.sh
- ~/.emacs
- ~/x-set-keys.conf
- create /mnt/share
** lock screen & consoles
screen:
- emerge --ask x11-misc/alock
- alock -auth passwd
consoles:
- emerge --ask app-misc/vlock
- vlock -a
** USECASES
downgrade package dracut to dracut-055-r4 for dracut-056-r1:
- echo ">sys-kernel/dracut-055-r4" >> /etc/portage/package.mask/glibc


specify using the greater than operator (>) prefix if it is an older package than latest stable or lesser than
operator (<) as a prefix if it is a newer one:
** links
https://wiki.gentoo.org/wiki/User:SwifT/Complete_Handbook
https://wiki.gentoo.org/wiki/Gentoo_Cheat_Sheet
* Debian
 - list installed packages :: dpkg-query -l
 - list all packages :: dpkg-query -l '*' | less
 - list file of package :: dpkg-query -L packagename
 - install :: apt-get -s install emacs
 - apt-cache search package :: available package

alias update="sudo apt-get udate && sudo apt-get upgrade && sudo apt-get dist-upgrade"
---------
laoding:
1) systemctl disable lightdm
2) /etc/default/grub GRUB_CMDLINE_LINUX_DEFAULT = "text"
3) update-grub
4) /etc/systemd/system/getty.target.wants/getty@tty1.service
   - TTYVTDisallocate=no
** apt
apt is newer

apt -y install ...

List packages by criteria	apt list

| Update the package repository                        | apt-get update       | apt update       |
| Upgrade packages                                     | apt-get upgrade      | apt upgrade      |
| Upgrade packages and remove unnecessary dependencies | apt-get dist-upgrade | apt full-upgrade |

** tigervnc
under user
- tigervncserver -localhost no
** samba
для работы в Thunar: apt-get install smbclient gvfs-fuse gvfs-backend
** iptables
https://wiki.debian.org/iptables

iptables-save - show filtered, processed tables and export rules

** sound
/etc/asound.conf
вторая строка - карта по умолчанию

pcm.!default {
        type hw
        card 1
}

ctl.!default {
        type hw
        card 0
}

amixer set Master 5+
amixer set Master 5-
** proxy

-
** ssh
- apt-get install openssh-server
- systemctl start ssh

WinSCP
* Ubuntu
*user*
- adduser --home=/home/user --create-home --shell=/bin/bash -ou 0 -g 0 user
- sudo gpasswd -d u sudo
- reboot

*audio*
- apt-get install alsa pulseaudio
- usermod -a -G audio u
- groups - check current user groups
- alsamixer - unmute m key. up arrow
- amixer set Master 5+
- amixer set Master 5-

*archiver*
- apt-get install xarchiver

*nvidia*
- tty not working:
  - GRUB_CMDLINE_LINUX_DEFAULT="apt-setup/multiverse=false ipv6.disable=1 console=tty1 noplymouth nomodeset vga=792"
  - https://en.wikipedia.org/wiki/VESA_BIOS_Extensions#Linux_video_mode_numbers
** network
- GRUB_CMDLINE_LINUX_DEFAULT="ipv6.disable=1"
- /etc/netplan/50-cloud-init.yaml
network:
    ethernets:
        enp3s0:
            dhcp4: false
            addresses: [192.168.2.148/24]
            gateway4: 192.168.2.51
            nameservers:
                addresses: [192.168.2.254]
    version: 2

netplan apply
ip route delete default via 192.168.2.51

*iptables*
- iptables-save > /etc/iptables/...

*DNS*
- systemctl disable systemd-resolved.service
- /etc/resolv.conf - nameserver 1.2.3.4
- nslookup finds ip, but ping doesnt https://askubuntu.com/questions/81797/nslookup-finds-ip-but-ping-doesnt
  - /etc/nsswitch.conf : hosts:          files dns

** security
*rootless Xorg*
- after installation of nvidia proprietary drivers
- /etc/X11/Xwrapper.config
- needs_root_rights=no
- startx -- vt1

*/etc/fstab* proc    /proc    proc    defaults,hidepid=2     0     0

** time
- ntp not used
- https://help.ubuntu.com/lts/serverguide/NTP.html#timedate-info
- /etc/systemd/timesyncd.conf: NTP=0.arch.pool.ntp.org 1.arch.pool.ntp.org 2.arch.pool.ntp.org 3.arch.pool.ntp.org
- systemctl restart systemd-timesyncd.service
** thumbrd
alias thumb-disable="chmod u-rwx /home/u2/.cache/thumbnails"
alias thumb-enable="chmod u+rwx /home/u2/.cache/thumbnails"
** printer linux
HP LaserJet P3004/P3005 PCL6 Class Driver
192.168.2.230

steps:
- # apt-get install hplip
- # hp-setup -i 192.168.1.27
** kerberos and Active Directory
- # apt-get install krb5-config krb5-user
- # dpkg-reconfigure krb5-config

/etc/krb5.conf:
- default_realm = INT.RUSNARBANK.RU
- kdc = srv-dc-03.int.rusnarbank.ru
- admin_server = srv-dc-03.int.rusnarbank.ru

connect:
- $ echo 'password' | kinit Chepelev_VS@INT.RUSNARBANK.RU
- $ klist    - проверить

*Thunderbird address book*
- Name:Rusnarbank
- Hostname: srv-dc-03.int.rusnarbank.ru
- Base DN: DC=int,DC=rusnarbank,DC=ru
- port: 389
- Advanced Login methid:kerberos
- Advanced search file: empty!

** windows share
- sudo apt install cifs-utils
** VSCODE
- wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
- sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
- sudo apt install code
- $ code
- во вкладке расширений - @builtin php
- отключить PHP Language Features - стандартные возможности убоги
- установить например: PHP Intelephense,


* TODO Haskell
** comparision

 haskell
 - *composability* - liberal use of many tiny functions, or UNIX philosophy
 - *fusion* little functions may be pipelined with dot . (fused)

 lisp pros
 - monolithism :: procedure tends ti accept many options which configure its behaviou
 - parameter is added to existing function. Composition is a bit wordier and rarely used.
* AWK
- https://www.gnu.org/software/gawk/manual/gawk.pdf
- https://github.com/freznicek/awesome-awk
- https://www.gnu.org/software/gawk/manual/gawk.html
** terms
- field - column separated by white space
- record - line of input
** structure
- BEGIN {commands} - initialization of variables
- /pattern/ {commands} /pattern/ {commands} ... - on every line
- END {commands} -
** Built-in variables
- field variables: $1, $2, $3, and so on ($0 represents the entire record)
- NR: Number of Records. Keeps a current count of the number of input records read so far from all data
  files. It starts at zero, but is never automatically reset to zero.[14]
- FNR: File Number of Records. Keeps a current count of the number of input records read so far in the current
  file. This variable is automatically reset to zero each time a new file is started.[14]
- NF: Number of Fields. Contains the number of fields in the current input record. The last field in the input
  record can be designated by $NF, the 2nd-to-last field by $(NF-1), the 3rd-to-last field by $(NF-2), etc.
- FILENAME: Contains the name of the current input-file.
- FS: Field Separator. Contains the "field separator" used to divide fields in the input record. The default,
  "white space", allows any sequence of space and tab characters. FS can be reassigned with another character
  or character sequence to change the field separator.
- RS: Record Separator. Stores the current "record separator" character. Since, by default, an input line is
  the input record, the default record separator character is a "newline".
- OFS: Output Field Separator. Stores the "output field separator", which separates the fields when Awk prints
  them. The default is a "space" character.
- ORS: Output Record Separator. Stores the "output record separator", which separates the output records when
  Awk prints them. The default is a "newline" character.
- OFMT: Output Format. Stores the format for numeric output. The default format is "%.6g".
** loops
- for (initialization; condition; increment/decrement) action
- while (condition) action
-
** commands
print
- print $1, $3 - Displays the first and third fields of the current record, separated by a predefined string
  called the output field separator (OFS)

* security
proactive security
** simple sandbox
- useradd --home=/home/ff --create-home --shell /bin/false --user-group ff --groups input,users,video,audio
  - -u $UID -g $GUID
- xhost si:localuser:ff2 ; cd /home/ff2 ; sudo -u ff2 firejail --profile=/etc/firejail/firefox.profile firefox -P -no-remote normal $@
- userdel -r ff # remove user

remove password and lock:
- passwd -ld ff
** Linux Access Permissions
*** standart Unix discretionary access control (DAC) permissions
****  - user-owner, group, others
 Only root can change ownership!

 Dicrectory and subdirectory:
- if r-x for directory and rwx for subdirectory, = r-x subdirectory

-rw-r--r--
  first:
  [-] - file
  [d] - directory
  [l] - symbolic link to file or directory

chmod - who:
- u - user, cat change permissions
- g - group (name and ID)
- o - others (All users)
- a - ugo

chmod 0777 - what:
- r - file- read, direcotry - ls
- w - directory - 1 for user - create delete modify files and directories (how: rename only) even if they are not yours
- x - file - execute, directory - cd and read files by direct name
- s - (4/2) setuid/guid (UID/GID) ? user or group Id on execution (chmod g+s - setgid) (chmod u+s - setuid)
- t - (1) sticky bit  or restricted deletion

X - already has at least 1 execution permission for u or g or a. Useful for -R on directories. a+rX

****  setuid/setgid for file - any user execute with user(uid) or group(gid) privileges.
- (rwsrwsrwt = s-suid,s-guid,t-sticky bit)

SUID and SGID for file - this means that the file will be executed with the same permissions as the owner of the
executable file.
- chmod u+s file_name
- -rwSrw-rw- - S - means there is an error that you should look into. not even the owner is allowed to execute
  the file
- The setuid permission set on a directory is ignored on most UNIX and Linux systems


setgid for directory:
1. new files and subdirectories inherit group ID and ignore group ID who created (owner ID not affected)
   (exception - moved files and subdirs.)
2. subdirectories inherit setgid bit.
3. apply for new files.
4. exising and moved files/directories are not affected

sticky bit: for directories:
- chmod +t my_dir
- fiels in - may only be unlinked, deleted or renamed by owner or direcotry owner(Linux)
- files in - only owner or directory's can rename or delete the file. (OpenBSD)
- default - any user with write and x permissions for directory cat rename or delete.
- used for /tmp
- for files:
  - when accessed will not be cached by the kernel (OpenBSD)
  - used for swap files(OpenBSD)
  - used by the automounters to indicate that file was not mounted yet
  - the Linux kernel ignores the sticky bit on files.

*** mandatory access control (MAC)
  - AppArmor
  - SELinux
*** capabilities

 Capabilities are implemented on Linux using extended attributes (xattr(7)) in the security namespace.
**** traditional UNIX categories of processes:
 - pivileged UID=0
 - unprovoleged UID!=0
   - permussuib checks(on process credentials)
     - UID
     - GID - primary or login group ($ id command)
     - supplementary group list - user may be member of 0 or more secondary groups /etc/groups ($id -nG)

**** commands
 - setcap - set file capabilities
 - getcap /bin/ping

** TODO PAM
** s/key
- one-time password system
- систему генерирования одноразовых паролей на основе стандартов MD4 и MD5
- relies on the difficulty of reversing cryptographic hash functions
- Клиент начинает обмен S/Key, отправляя серверу пакет инициализации, а сервер в ответ отправляет порядковый
  номер и случайное число, так называемое «зерно» (seed). После этого клиент генерирует одноразовый пароль в
  ходе операции, состоящей из трех этапов: подготовительного этапа, этапа генерирования и функции выхода. На
  этапе генерирования клиент многократно использует хеш-функцию и получает 64-разрядную итоговую величину.
- RFC 1760
- vulnerable to a man in the middle attack if used by itself
- vulnerable to certain race conditions
** su
Users group "wheel" can su - to become root
** /etc/passwd
root:x:0:0:root:/root:/usr/bin/zsh
- root - Username
- x - x here denotes password is encrypted
- 0 - UID
- 0 - GID user's group ID
- root - Ifno of the user(GECOS)
- /root - User home directory
- /usr/bin/zsh - Login shell
** /etc/shadow
mark:$6$.n.:17736:0:99999:7:::
- Username
- $6$.n. - Encrypted Password
  - * - blank password L - used for service accounts
  - ! - blank password L - user accounts
  - $1$ – MD5
  - $2a$ – Blowfish
  - $2y$ – Eksblowfish
  - $5$ – SHA-256
  - $6$ – SHA-512
- 17736 - Last password change epoch date
- 0 - Minimum password age - the number of days that must pass before the user password can be changed
- 99999 - Maximum password age
- Warning period
- Inactivity period - the number of days before the password expires during which the user is warned that the
  password must be changed
- Inactivity period - The number of days after the user password expires before the user account is disabled
- Expiration date. The date when the account was disabled. It is represented as an epoch date.
- reserved
** TODO logcheck
- emerge --ask app-admin/logcheck
- useradd --home=/home/logcheck --create-home --shell /bin/false --user-group logcheck
- /etc/logcheck/logcheck.conf:
  - SENDMAILTO="root"
** firejail
*** xephyr
- USE=xephyr emerge  x11-base/xorg-server
- emerge --ask  x11-wm/openbox
*** hardening line
- --machine-id - regenerate /etc/machine-id
- --blacklist=/sys - block access to PC serial number cat /sys/devices/virtual/dmi/id/*
- --blacklist=/proc/cpuinfo
- --novideo - if you dont need video
- --dbus-user=none - disable access and fix error: DBUS user socket was not found
- - --dbus-system=none
- --private-lib --private-bin - amd64 ony - complicated
- --caps.drop=all - This option is recommended for running GUI programs or any other program that doesn't require root privileges
- --nonewprivs
#+begin_src sh
--caps.drop=all \
	 --novideo --nosound \
         --private-dev
	 --nodvd \
         --noprinters \
         --nonewprivs \
	 --dbus-user=none --dbus-system=none \
	 --env=HOME=~ \
	 --env=HOSTNAME=localhost \
         --hostname=localhost \
	 --env=USER= \
	 --env=HOSTTYPE=arm64 \
	 --env='BASH_VERSION=4.4.19(1)-release' \
	 --blacklist=/usr/lib/os-release \
	 --blacklist=/usr/bin/xfce4-session \
	 --blacklist=/usr/bin/xfconf-query \
	 --blacklist=/usr/bin/gsettings \
	 --blacklist=/usr/bin/id \
	 --blacklist=/usr/bin/who \
 	 --blacklist=/bin/hostname \
	 --blacklist=/bin/uname \
     --blacklist=/etc/os-release \
     --blacklist=/etc/gentoo-release \
     --blacklist=/sys \
     --blacklist=/var \
     --blacklist=/proc/version \
     --blacklist=/proc/cpuinfo \
     --blacklist=/proc/meminfo \
     --blacklist=/proc/uptime \

#+end_src
#+begin_src sh
# --blacklist=/sys  - may be replaced with:
     --blacklist=/sys/block \
     --blacklist=/sys/dev \
     --blacklist=/sys/firmware \
     --blacklist=/sys/fs \
     --blacklist=/sys/kernel \
     --blacklist=/sys/module \
     --blacklist=/sys/power \

#+end_src
*** config hardening
/et/firejail/firejail.config:
- bind no
- disable-mnt yes
- file-transfer no
- force-nonewprivs yes
- join no
- name-change no
- private-bin-no-local yes
- seccomp-filter-add !chroot,kcmp,mincore
- seccomp-error-action kill
- whitelist-disable-topdir /etc,/usr/etc



*** errors
DBUS user socket was not found
  - --dbus-user=none - disable dbus session access completely

Error: cannot access profile file: firefox.local
- you disabled access to /home/user
- cd /home/user ; firejail command

dont forget to:
- chmod o-rx /home/user
*** per app
firefox:
1) firefox-common.profile: comment nogroups
2) harden confing - uncomment: private-bin and private-etc lines

firefox problems:
- does not start
  - firefox.profile: comment ignore dbus-user none
- W [pulseaudio] core-util.c: Uh, personality() failed: Operation not permitted
  - firefox-common.profile: comment nogroups
- firefox.profile: comment
  - whitelist /usr/*
  - include whitelist-usr-share-common.inc
- firefox.profile: uncomment
  - private-bin basename ...
- for hardware acceleration require /sys
- no sound error
  - firefire-common.profile: comment
    - nogroups


telegram-dekstop:
- no notification sound:
  - telegram.profile:
    - comment line: private-bin bash, sh,telegram,Telegram

wine
- require
  - /usr/bin/id
  - /sys/
  - ln -s /usr/lib/dri/r600_dri.so /usr/lib/dri/radeon_dri.so
- firefox.profile: comment
  - nogroups
- firefox.profile: uncomment
  - net none
- firefox.profile: add
  - noblocklist /usr/lib/dri
  - noblocklist ${HOME}
  - whitelist ${HOME}


rtorrent
- comment # netfilter
- add whitelist

mpv:
- comment # nogroups - for audio
- whitelist
** apparmor
- ps auxZ | grep -v '^unconfined'  :: ограниченные программы -v - invert
- aa-complain /full/path/to/program :: отключить apparmor и смотреть syslog
- aa-enforce /full/path/to/program :: включить обратно после удаления ненужных ограничений
- apparmor_parser -r /etc/apparmor.d/profile :: перезагрузить один профиль
- aa-status :: .
- aa-genprof app && app :: create profile for app
- aa-logprof :: for existing profiles - allow/deny acces to certain tasks
- Inherit :: create rule in paret and executable inherit it from parent
- Child :: create sub-profile with separete rules

** TODO CFLAGS
https://wiki.gentoo.org/wiki/GCC_optimization
** nfs
- client /etc/fstab
- server /etc/exports
options
- file systems on a separate partition of a harddisk, we can ensure that malicious users can not simply fill up
 the entire harddisk by writing large files onto it.
- /home nfs-client(secure) - Prevent normal users on an NFS client from mounting an NFS file system (on server)
- /home nfs-client(ro)
- nfs-clients - use numeric IP addresses or fully qualified domain names, instead of aliases.
- /home nfs-client(root_squash) - while mounting using the command mount, the user ID ?root? on the NFS client
  will be replaced by the user ID ?nobody? on the NFS server.
- nfs-server:/home /mnt/nfs nfs ro,nosuid,noexec 0 0 - Disable suid (superuser ID) on an NFS file system (on client)
- ssh encryption of traffic: ssh -f -c blowfish -L 7777:nfs-server:2049 -l tony nfs-server /bin/sleep 86400
  - On the NFS client computer, bind a SSH port with NFS port 2049.
  - -c blowfish means SSH will use the algorithm blowfish to perform encryption.
  - -L 7777:nfs-server:2049 means binding the SSH client at port 7777 (or any other port that you want) to
    communicate with the NFS server at address nfs-server on port 2049.
  - -l tony nfs-server means in the process of login on the authentication server at address nfs-server
    (specify either the IP address or domain name of the authentication server), use the user login name tony
    to authenticate on the server.
  - /bin/sleep 86400 means to prevent spawning a shell on the client computer for 1 day (86,400 seconds). You
    can specify any larger number.

fstab exampe
- /home /mnt/nfs/ nfs tcp,rsize=8192,wsize=8192,intr,rw,bg,nosuid,port=7777,mountport=8888,noauto

*** iptables
RPC Portmapper (on port 111), NFS (on port 2049), and Mountd (on port 2219)
#iptables -A INPUT -i eth0 -s 10.226.43.0/24 -dport 111 -j ACCEPT
#iptables -A INPUT -i eth0 -s 10.226.43.0/24 -dport 2049 -j ACCEPT
#iptables -A INPUT -i eth0 -s 10.226.43.0/24 -dport 2219 -j ACCEPT

Deny something else.
#iptables -A INPUT -i eth0 -s 0/0 -dport 111 -j DROP
#iptables -A INPUT -i eth0 -s 0/0 -dport 2049 -j DROP
#iptables -A INPUT -i eth0 -s 0/0 -dport 2219 -j DROP
#iptables -A INPUT -i eth0 -s 0/0 -j DROP

 TCP wrapper to filter access to your portmapper by adding the line:
- /etc/hosts.allow -  portmapper: 10.226.43.0/24
-  /etc/hosts.deny  - portmapper:ALL
** USB
vectors:
1. HID devices
2. Faked network adapters - are no real danger
3. firmware flashing over the USB connection

*** protection
- alias usb-block="echo 0 | tee /sys/bus/usb/devices/*/authorized"
- alias usb-unblock="echo 1 | tee /sys/bus/usb/devices/*/authorized"
- alias block="echo 0 | tee /sys/bus/usb/devices/*/authorized ; vlock -a"



https://wiki.gentoo.org/wiki/Allow_only_known_usb_devices

* Darknet
Deep web - parts of the World Wide Web whose contents are not indexed by standard web search-engines
** TOR
*** types of relays or nodes
 - non-exit relays
   - Guard -  first relay in the chain of 3 relays building a Tor circuit -  must be stable and fast (at least 2MByte/s) otherwise it will remain a middle relay.
   - middle relay - acts as the second hop between Guard and exit relays
 - bridge - static IP better - not relay - node - IP not listed in public TOR derectory
   -  Pluggable transports, a special kind of bridge, address this by adding an additional layer of obfuscation.
*** torrc
**** tor node and dirctionary - gentoo
- default:
  - User tor
  - PIDFile /run/tor/tor.pid
  - # Log notice syslog
  - DataDirectory /var/lib/tor/data
- RunAsDaemon 1
- ExitRelay 0
- BridgeRelay 0
- ORPort 0.0.0.0:xxx
- DirPort 0.0.0.0:xxx
- Nickname
- RelayBandwidthRate 2 MBytes
- RelayBandwidthBurst 3 MBytes
- ContactInfo xxx <xxx@xxx.xxx>
- Sandbox 1
- Log notice file /var/log/tor_notices.log
- Log warn file /var/log/tor_warn.log
- Log debug file /var/log/tor_debug.log

**** tor bridge - gentoo
1) echo "net-vpn/tor caps lzma scrypt seccomp server tor-hardening verify-sig zstd" > /etc/portage/package.use/tor
2) emerge --ask tor net-proxy/obfs4proxy
3) config:
   - RunAsDaemon 1
   - SOCKSPort localhost:9050
   - BridgeRelay 1
   - ExitRelay 0
   - ORPort 0.0.0.0:xxx
   - Sandbox 0 # not compatible with obfs4
   - ClientTransportPlugin obfs4 exec /usr/bin/obfs4proxy
   - ClientTransportPlugin obfs3 exec /usr/bin/obfs4proxy
**** tor bridge client
1) echo "net-vpn/tor caps lzma scrypt seccomp server tor-hardening verify-sig zstd" > /etc/portage/package.use/tor
2) emerge --ask tor net-proxy/obfs4proxy
3) get brideges: https://bridges.torproject.org/
4) config:
   - UseBridges 1
   - ClientTransportPlugin obfs4 exec /usr/bin/obfs4proxy
   - ClientTransportPlugin obfs3 exec /usr/bin/obfs4proxy
   - Sandbox 0 # not compatible with obfs4
   - ShutdownWaitLength 5 seconds
   - bridge obfs4 xxx.xxx.xxx.xxx:xxxx xxxxxxxxx cert=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx iat-mode=0
**** ControlPort
- tor --hash-password password
- /etc/tor/torrc:- HashedControlPassword hashed_password
- (echo authenticate '"password"'; echo signal newnym; echo quit) | nc localhost 9051
*** firefox config
 network.proxy.socks_remote_dns    true
 network.dns.disablePrefetch       true
 network.dns.disableIPv6           true
 javascript.enabled false

 and all fingerprints disabled
 - media.peerconnection.enabled    false
*** route tor through tor
 NON_TOR="192.168.1.0/24 192.168.0.0/24"
                 TOR_UID=$( id -ur debian-tor )
                 TRANS_PORT="9040"
                 iptables -F
                 iptables -t nat -F
                 iptables -t nat -A OUTPUT -m owner --uid-owner $TOR_UID -j RETURN
                 iptables -t nat -A OUTPUT -p udp --dport 53 -j REDIRECT --to-ports 5353
                 for NET in $NON_TOR 127.0.0.0/9 127.128.0.0/10; do
                         iptables -t nat -A OUTPUT -d $NET -j RETURN
                 done

                 iptables -t nat -A OUTPUT -p tcp --syn -j REDIRECT --to-ports $TRANS_PORT
                 iptables -A OUTPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

                 for NET in $NON_TOR 127.0.0.0/8; do
                         iptables -A OUTPUT -d $NET -j ACCEPT
                 done
                 iptables -A OUTPUT -m owner --uid-owner $TOR_UID -j ACCEPT
                 iptables -A OUTPUT -j REJECT

*** theory
 consist of
 - onion routers

 Tor relies on a network of volunteer-operated relays and a set of central directory authorities.

 cons:
 - Tor’s circuit moderation is bandwidth-weighted, you are much more likely to use high-bandwidth nodes than low-bandwidth ones, meaning that a large percentage of Tor’s 7000+ nodes are underutilised due to having insufficient bandwidth.
*** dangers
>tor is safe - sure, but it won't last for long if more than 50% of nodes are run by feds, and
remember feds which are controlled by zionists have a lot of money, a lot to rent out entire aws
region domain to host tor nodes and catch you red handed
*** Tor vulnerabilities
*A* access to phisical network and exit-node.
or middle nodes and exit-node
if ISP has exit-node.
correlate attack
Protection
VPN to TOR + generation of non-Tor traffic.
*B* Bittorrent send UDP without TOR.
Block all UDP packets. TOR only provides a TCP connections.

*** Verification
https://cdimage.debian.org/cdimage/weekly-builds/amd64/iso-cd/debian-testing-amd64-xfce-CD-1.iso
gpg --keyserver pool.sks-keyservers.net --recv-keys 0x4E2C6E8793298290

gpg --fingerprint 0x4E2C6E8793298290

You should see:

    pub   4096R/93298290 2014-12-15
          Key fingerprint = EF6E 286D DA85 EA2A 4BA7  DE68 4E2C 6E87 9329 8290
    uid                  Tor Browser Developers (signing key)
    sub   4096R/F65C2036 2014-12-15
    sub   4096R/D40814E0 2014-12-15
    sub   4096R/C3C07136 2016-08-24

gpg --verify tor-browser-linux64-8.0.1_en-US.tar.xz.asc


The output should say "Good signature":

    gpg: Signature made Tue 24 Jan 2015 09:29:09 AM CET using RSA key ID D40814E0
    gpg: Good signature from "Tor Browser Developers (signing key) "
    gpg: WARNING: This key is not certified with a trusted signature!
    gpg:          There is no indication that the signature belongs to the owner.
    Primary key fingerprint: EF6E 286D DA85 EA2A 4BA7  DE68 4E2C 6E87 9329 8290

Currently valid subkey fingerprints are:

1107 75B5 D101 FB36 BC6C  911B EB77 4491 D9FF 06E2

*** search engines
http://darkzzx4avcsuofgfez5zq75cqc4mprjvfqywo45dfcaxrwqg6qrlfid.onion/
LeafWiki also seems to be trustworthy by the amount of hentai search queries in it's Comics category:
http://lljcwddkoyjq3xxtchl7a4i3ig6wqrg7nfxuzbzj4k4tbnb6pnzq7kid.onion/index.php/Main_Page
If it lists nanochan, it's probably legit. (This is how you found us on some other link list, right?)

Search engines you asked for, use on your own risk:
Ahmia - http://juhanurmihxlp77nkq76byazcldy2hlmovfu2epvl5ankdibsot4csyd.onion/
Phobos - http://phobosxilamwcg75xt22id7aywkzol6q6rfl2flipcqoc4e4ahima5id.onion/
Abiko - http://abikoifawyrftqivkhfxiwdjcdzybumpqrbowtudtwhrhpnykfonyzid.onion/
TORCH - http://torchdeedp3i2jigzjdmfpn5ttjhthh5wbmda2rr3jvqjg5p77c54dqd.onion
(you can immediately see it's redeeming quality by abundance of colorful banners offering you all sorts of nice things)
Another (?) Torch - http://xmh57jrknzkhv6y3ls3ubitzfqnkrwxhopf5aygthi7d6rplyvk3noyd.onion/cgi-bin/omega/omega
Haystak - http://haystak5njsmn2hqkewecpaxetahtwhsbsa64jom2k22z5afxhnpxfid.onion/
Onionland - http://3bbad7fauom4d6sgppalyqddsqbf5u5p56b5k5uk2zxsy3d6ey2jobad.onion/
*** proxies
emerge --ask net-proxy/torsocks
- $ torsocks application
- DNS handled
- rejects any traffic other than TCP
- WRNING It uses the LD_PRELOAD mechanism (man ld.so.8) which means that if the application is not using the
  libc or for instance uses raw syscalls, torsocks will be useless and the traffic will not go through Tor.


redirect ALL non-tor outgoing trafic to a Tor transparent proxy:
- iptables -t nat -A OUTPUT -p TCP -m owner ! --uid-owner tor -j DNAT --to-destination 127.0.0.1:9040
** TODO i2p
- i2p doesn't store other people stuff on your hdd
** TODO lokinet
- lokinet.org
- uses the Oxen Service Node network
** TODO https://yggdrasil-network.github.io/
** TODO freenet
- store other people stuff on your hdd
** TODO zeronet
- store other people stuff on your hdd
** TODO ipfs
- store other people stuff on your hdd
* network
** theory
*** ip output
1. enp5s1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
   - device
   - physical layer or Device flags https://man7.org/linux/man-pages/man7/netdevice.7.html
   - mtu -  maximum transmission unit  - maximum packet size
   - qdisc - queuing mechanism. There are different queuing techniques called disciplines. noqueue discipline
     means “send instantly, don’t queue.”
   - state
     - DOWN (the network interface is not operational)
     - UNKNOWN (the network interface is operational but nothing is connected)
     - UP (the network is operational and there is a connection).
   - group default - Interfaces can be grouped logically
   - qlen 1000 - maximum length of the transmission queue.
   - mode
2. link/ether 5a:ec:ea:71:df:7a brd ff:ff:ff:ff:ff:ff
   - link/loopback -
   - link/ether - media access control (MAC) address of the interface.
     - permaddr -  permanent hardware address.
3. inet 10.77.61.30/24 scope global tap0
   - Classless Inter-Domain Routing notation
   - scope host -  IP address scope -  IP address is only valid inside the computer (the “host”)
4. _ valid_lft forever preferred_lft forever
   - valid_lft - (DHCP), this is the length of time the IP address is considered valid
   - preferred_lft - DHCP, this is the amount of time the IP address can be used with no restrictions. This
     should never be larger than the valid_lft value.
5. inet6 fe80::ac92:e9ff:fe17:a939/64 scope link
6. _ valid_lft forever preferred_lft forever

statistic
- ip -s a
- cat /proc/net/dev

**** links
- /usr/include/linux/if.h
- https://www.computerhope.com/unix/ip.htm
- https://www.howtogeek.com/657911/how-to-use-the-ip-command-on-linux/
*** ip route
- ip route - new
- route / netstat -r - old
routing table - keep settings

Netmask https://www.ietf.org/rfc/rfc1878.txt
- 192.168.0.1/32 = 255.255.255.255: just the address 192.168.0.1
- /24 = 255.255.255.0
- 192.168.0.1/0 = 0.0.0.0: all 4.3 billion addresses from 0.0.0.0 to 255.255.255.255

**** route:
- Destination :: The destination network or destination host.
- Gateway :: address to send
- Genmask :: 255.255.255.255 for a host destination and 0.0.0.0 for the default route. (Destination + Genmask)
- Flags :: Possible flags include
- U (route is up)
- H (target is a host)
- G (use gateway)
- R (reinstate route for dynamic routing)
- D (dynamically installed by daemon or redirect)
- M (modified from routing daemon or redirect)
- A (installed by addrconf)
- C (cache entry)
- ! (reject route)
- Metric :: The distance to the target (usually counted in hops). It is not used by recent kernels, but may be
  needed by routing daemons. e lower number represents the better route
**** ip route
- 10.77.61.0      0.0.0.0         255.255.255.0   U     0      0        0 tap0
- 10.77.61.0/24 dev tap0 proto kernel scope link src 10.77.61.30
- destination mask - via (gateway) - dev (destination) - proto - scope - src (source ip) - metric
- scope link: The scope is link, which means the scope is limited to the network to which this computer is
  directly connected.
- proto kernel: The route created by the kernel during auto-configuration.
*** ip neigh
Address Resolution Protocol (ARP)
*** TODO ip maddress
** iproute2 - controlling TCP / IP - new one
| legacy           | replacement      | note                                |
|------------------+------------------+-------------------------------------|
| ifconfig         | ip addr, ip link | Address and link configuration      |
| route            | ip route         | Routing tables                      |
| arp              | ip neigh         | Neighbors                           |
| iptunnel         | ip tunnel        | Tunnels                             |
| nameif, ifrename | ip link set name | Rename network interfaces           |
| ipmaddr          | ip maddr         | Multicast                           |
| netstat          | ss, ip route     | Show various networking statistics  |
| brctl            | bridge           | Handle bridge addresses and devices |
*** ip route
- Assign an IP Address to a Specific Interface:  ip addr add 192.168.50.5 dev eth1
- add static route: ip route add 10.10.20.0/24 via 192.168.50.100 dev eth0
  - persistent /etc/sysconfig/network-scripts/route-eth0:
    - 10.10.20.0/24 via 192.168.50.100 dev eth0
  - ubuntu persistent:
    - /etc/network/interfaces:
      - up ip route add 10.10.20.0/24 via 192.168.50.100 dev eth0
- remove route: ip route del 10.10.20.0/24
- Add Default Gateway: ip route add default via 192.168.50.100
*** ss
local  | remote addr

incoming connections - when source port are listening. (But It is possible to reuse listening port)
- ss state established - filter by state
- ss '( sport = :443 or dport = :443 )' - filter by port
- ss dst 127.0.0.1 - filter by remote ip

*** USE CASES
- ip link set up eth1 - Activate or Deactivate a Network Interface
- ip addr add 10.0.0.1/24 broadcast 10.0.0.255 dev eth1 - Assign IPv4 address(es) to a Network Interface
- ip -6 addr add 2002:0db5:0:f102::1/64 dev eth1
- ip addr del 10.0.0.1/24 dev eth1 - Remove an IPv4 address from a Network Interface
- ip route show - routing table
- ss -l - Socket Statistics
- ip neigh - ARP
- ip link set name - Rename network interfaces
- ip maddr - Multicast
- ip -s, ss, ip route 	Show various networking statistics
*** all commands
- arpd

- bridge Handle bridge addresses and devices

- ctstat

- dcb

- devlink

- ip - main

- lnstat

- nstat

- rdma

- routef

- routel

- rtacct

- rtmon

- rtstat

- ss - another utility to investigate sockets

- tc - show / manipulate traffic control settinsg

- tipc - a TIPC configuration and management tool

- ip tunnel - tunnel configuration

** net-tools - based on /proc - too old
- arp is used to manipulate the kernel's ARP cache, usually to add or delete an entry, or to dump the entire cache.
- dnsdomainname reports the system's DNS domain name.
- domainname reports or sets the system's NIS/YP domain name.
- hostname reports or sets the name of the current host system.
- ifconfig is the main utility for configuring network interfaces.
- nameif names network interfaces based on MAC addresses.
- netstat is used to report network connections, routing tables, and interface statistics..
- nisdomainname does the same as domainname.
- plipconfig is used to fine tune the PLIP device parameters, to improve its performance.
- rarp is used to manipulate the kernel's RARP table.
- route is used to manipulate the IP routing table.
- slattach attaches a network interface to a serial line. This allows you to use normal terminal lines for point-to-point links to other computers.
- ypdomainname does the same as domainname.
*** arp
arp -an
- ip neigh
*** ifconfig
*** route
- netstat -rn
- ip route show

*** netstat
netstat -l - socket statistic
- ip -s, ss, ip route 	Show various networking statistics
*** iptunnel
*** brctl
- bridge
*** ifstat


** dig
DNS lookups and displays the answers

examples:
- dig -x 1.1.1.1  - reverse DNS requiest
  - dig ptr 148.188.51.209.in-addr.arpa - same
- type of DNS record
- dig howtogeek.com +shor
- dig howtogeek.com +nocomments
- dig redhat.com MX  +noall +answer

dig [@server] [name] [type]
- @8.8.8.8 - dns server
- name - dns or IP
- type of DNS record
  - A Record: Links the domain to an IP version 4 address.
  - MX Record: Mail exchange records direct emails sent to domains to the correct mail server.
  - NS Record: Name server records delegate a domain (or subdomain) to a set of DNS servers.
  - TXT Record: Text records store text-based information regarding the domain. Typically, they might be used to suppress spoofed or forged email.
  - SOA Record: Start of authority records can hold a lot of information about the domain. Here, you can find the primary name server, the responsible party, a timestamp for changes, the frequency of zone refreshes, and a series of time limits for retries and abandons.
  - TTL: Time to live is a setting for each DNS record that specifies how long a DNS precursor server is allowed to cache each DNS query. When that time expires, the data must be refreshed for subsequent requests.
  - ANY: This tells dig to return every type of DNS record it can.

** nslookup
 DNS lookups and displays the answers
- -port=[port-number]	Specify the port for queries. The default port number is 53.
- -type=any 	View all available records. - Not all actualy
- -type=txt	View Text Records
- -type=ns	View Domain's NS Records
- -type=mx	Mail Exchange server data.
- -type=soa	Start of Authority (SOA) records provide authoritative information about the domain and the
  server, such as the email address of the administrator, serial number, refresh interval, query expiration
  time, etc.
- nslookup -type=ptr [reverse-ip-address].in-addr.arpa

Internationalized domain name -
-  IDNA ToASCII algorithm
- ToASCII and ToUnicode.
  -  not applied to the domain name as a whole, but rather to individual labels - to each part separately
** traceroute
** whois
- net-misc/whois improved Whois Client GPL-2
- net-misc/jwhois Advanced Internet Whois client capable of recursive queries  GPL-3


** iptables
- iptables -F --flush chain - delete all rules
- iptables -P --policy chain target - target must be ACCEPT or DROP - default policy for chain
- iptables -A --append chain rule
*** tables and chains
- filter:
  - INPUT
  - FORWARD
  - OUTPUT
- nat:
  - PREROUTING
  - OUTPUT
  - POSTROUTING
- mangle - specialized packet alteration
  - PREROUTING - incoming packets before routing
  - OUTPUT
  - INPUT
  - FORWARD
  - POSTROUTING - about to go out
- raw: - to set a mark on packets that they should not be handled by the connection tracking system
  ip_conntrack
  - PREROUTING
  - OUTPUT

*** Target Values
- ACCEPT – Firewall will accept the packet.
- DROP – Firewall will drop the packet.
- QUEUE – Firewall will pass the packet to the userspace.
- RETURN – Firewall will stop executing the next set of rules in the current chain for this packet. The
  control will be returned to the calling chain.
*** gentoo net-firewall/iptables:
- rc-service iptables save
- rc-service iptables start
- rc-update add iptables default
*** log bad ppl

iptables -N bad_people  # create chain
iptables ...rules... -j bad_people
*** simple
/etc/network/if-pre-up.d/iptables

: #!/bin/sh
: /sbin/iptables-restore < /etc/iptables.up.rules

iptables-save > /etc/iptables.up.rules

#+BEGIN_SRC sh
iptables -F # flush all
iptables -X
iptables -Z

iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT ! -i lo -d 127.0.0.0/8 -j REJECT
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p icmp -m icmp --icmp-type 8 -j ACCEPT
# iptables -A INPUT -p tcp -m tcp --dport 6890 -j ACCEPT
# iptables -A INPUT -p udp -m udp --dport 6881 -j ACCEPT
#+END_SRC
** nftables
*** print rules
- nft list tables ip
- nft list ruleset
- nft flush ruleset
*** table
nft (add | delete | flush) table [<family>] <name>
- family: ip, arp, ip6, bridge, inet, netdev.
*** chain
nft (add | create) chain [<family>] <table> <name> [ { type <type> hook <hook> [device <device>] priority <priority> \; [policy <policy> \;] } ]

type:
- filter: Supported by arp, bridge, ip, ip6 and inet table families.
- route: Mark packets (like mangle for the output hook, for other hooks use the type filter instead),
  supported by ip and ip6.
- nat: In order to perform Network Address Translation, supported by ip and ip6.
hook -  refers to an specific stage of the packet while it's being processed through the kernel.
- The hooks for ip, ip6 and inet families are: prerouting, input, forward, output, postrouting.
- The hooks for arp family are: input, output.
- The bridge family handles ethernet packets traversing bridge devices.
- The hook for netdev is: ingress.
priority - number used to order the chains or to set them between some Netfilter operations.
- NF_IP_PRI_FILTER (0)
-
policy  - accept (default) and drop.

*** rule
nft add rule [<family>] <table> <chain> <matches> <statements>

*** gentoo net-firewall/nftables:
- rc-service nftables save
- rc-service nftables start
- rc-update add nftables default
*** /etc/nftables-local skeleton nftables config file
#+begin_src sh
#! /sbin/nft -f

# this is a skeleton file for an nftables ruleset
# load it with nft -f /etc/nftables-local

# it is supported to define variables here, that can later on be
# expanded in rule definitions
define http_ports = {80, 443}

flush ruleset

table inet local {

  chain input {
    type filter hook input priority 0; policy drop;
    tcp dport $http_ports counter accept comment "incoming http traffic";
  }
  chain output {
    type filter hook output priority 0; policy drop;
  }

}
#+end_src
*** links
- https://wiki.gentoo.org/wiki/Nftables/Examples
- https://www.nftables.org/
- firewall https://stosb.com/blog/explaining-my-configs-nftables/
- home router ex https://wiki.nftables.org/wiki-nftables/index.php/Simple_ruleset_for_a_home_router
- doc https://wiki.nftables.org/wiki-nftables/index.php/Main_Page
** net-dns/bind-tools
- https://www.isc.org/bind/
- https://gitlab.isc.org/isc-projects/bind9/-/blob/main/doc/dnssec-guide/getting-started.rst
** nmap - network exploration
** proxy
*** wget
- wget --quiet --output-document=- https://ip.oxylabs.io
** USECASES

** test network with wireshark
create a test network namespace:

ip netns add test

create a pair of virtual network interfaces (veth-a and veth-b):

ip link add veth-a type veth peer name veth-b

change the active namespace of the veth-a interface:

ip link set veth-a netns test

configure the IP addresses of the virtual interfaces:

ip netns exec test ifconfig veth-a up 192.168.163.1 netmask 255.255.255.0
ifconfig veth-b up 192.168.163.254 netmask 255.255.255.0

configure the routing in the test namespace:

ip netns exec test route add default gw 192.168.163.254 dev veth-a

activate ip_forward and establish a NAT rule to forward the traffic coming in from the namespace you created (you have to adjust the network interface and SNAT ip address):

echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -t nat -A POSTROUTING -s 192.168.163.0/24 -o <your internet interface, e.g. eth0> -j SNAT --to-source <your ip address>

(You can also use the MASQUERADE rule if you prefer)

finally, you can run the process you want to analyze in the new namespace, and wireshark too:

ip netns exec test thebinarytotest
ip netns exec test wireshark

* wifi
- wifi phy /sys/bus/usb/driver/mt7601u/*/ieee80211/
- wifi dev /sys/bus/usb/driver/mt7601u/*/net/
** theory
electromagnetic radiation (EMR) - radio waves, microwaves, infrared, (visible) light, ultraviolet, X-rays, and
gamma rays

IEEE 802.11  wireless local area network (WLAN)

The most basic BSS consists of one AP and one STA.

Cellular network or mobile network - require sim card and modem, GMS-2G, UMTS-3g, LTE-4G, 5G
*** terms:
- WLAN - Wireless LAN
- WIFI - Wireless Fidelity - trademark
- Fidelity - compatibility between wireless equipme
- WiFI Alliance - non-profit organization wifi.org
- RSSI - Received Signal Strength Indicator (usually 0-60 or 0-255)  - isn't standardized
- dBm - decibels relative to a milliwatt - (-30 is a higher signal than -80)
- access point (AP)
- STAs - stations - all devices
- Supplicant - [ˈsʌplɪkənt] Проситель at point-to-point LAN/WLAN segment that seeks to be authenticated by an
  authenticator. used in IEEE 802.1X standard
- SSID - service set ID - WLAN needs a unique name. WLAN can have several AP - zero to 32 octets (32 bytes)
  long
  - 32 bytes
  - wildcard SSID - null SSID - hidden SSID - used, in enterprise and mesh networks to steer a client to a
    particular (e.g. less utilized) access point.
  - can be used by multiple APs in WLAN
- BSSID - basic service set identifier - subset of SSID - included in all wireless packets. = AP MAC address
- ESSID - extended basic service set - consists of all of the BSSs in the network - identifies the same
  network as the SSID does. The term SSID is used most often.
- MBSS - mesh basic service set
- MLME - Media Access Control (MAC) Sublayer Management Entity.
- SME - Station Management Entity, often prepended with AP (Access Point)
- Hotspot 2.0 - free access point, 2.0 is an approach to automatically connect and roam
- tethering - private hotstop with smartphone
- Beacon -  management frames in IEEE 802.11 based WLANs
  - beacon interval - the frequency of the beacon is broadcast by router. transmitted by the access point (AP)
- often 'packet' is taken to be the layer above 'frame' (i.e. level 3 of the OSI model).
- frame -  (layer 2) IEEE 802.11 packets is encapsulated within the data field of the packet
- Wireless Intrusion Prevention System (WIPS) - classifying known wireless devices, cataloguing their unique
  signal patterns
- HT20 - channel bandwidth is 20 MHz. main channel sends Beacon packets and data packets, and the auxiliary
  channel sends other packets.
- HT40 -  channel bandwidth is 40 MHz
  - +/- - Two neighboring 20 MHz channels are bundled to form a 40 MHz channel. If the center frequency of the
    main 20 MHz channel is higher than that of the auxiliary channel, 40MHz-plus is displayed; otherwise,
    40MHz-minus is displayed.
*** frequency
microwaves - as short as one meter to as short as one millimeter; with frequencies between 300 MHz (0.3 GHz) and 300 GHz.
EHF = Extremely high frequency (microwaves)
SHF = Super-high frequency (microwaves) 30GHz-3GHz 1cm-1dm

UHF = Ultrahigh frequency (radio waves) 3GHz-300MHz 1dm-1m
VHF = Very high frequency (radio)
HF = High frequency (radio)
MF = Medium frequency (radio)
LF = Low frequency (radio)
VLF = Very low frequency (radio)
VF = Voice frequency
ULF = Ultra-low frequency (radio)
SLF = Super-low frequency (radio)
ELF = Extremely low frequency (radio)

Wifi - 2.4/5/6 GHz
5G cellular network - 3–6 GHz, and millimeter wave band, around 28 and 39 GHz
bluetooth -  from 2.402 to 2.48 GHz
*** channels 2.4 GHz (802.11b/g/n/ax)
| Channel | F0 (MHz) | Frequency range (MHz) |
|---------+----------+-----------------------|
|       1 |     2412 | 2401–2423             |
|       2 |     2417 | 2406–2428             |
|       3 |     2422 | 2411–2433             |
|       4 |     2427 | 2416–2438             |
|       5 |     2432 | 2421–2443             |
|       6 |     2437 | 2426–2448             |
|       7 |     2442 | 2431–2453             |
|       8 |     2447 | 2436–2458             |
|       9 |     2452 | 2441–2463             |
|      10 |     2457 | 2446–2468             |
|      11 |     2462 | 2451–2473             |
|      12 |     2467 | 2456–2478             |
|      13 |     2472 | 2461–2483             |
*** health
The World Health Organization has classified radio frequency electromagnetic radiation as Group 2B – possibly
carcinogenic.
*** modes
- AccessPoint (AP) infrastructure mode
- Station infrastructure mode
- Monitor mode
- Ad-Hoc (IBSS) mode
- Wireless Distribution System (WDS)
- Mesh - Ячеистая топология
*** distance
free space loss:
- FSPL (dB) = 20log10(d) + 20log10(f) + K
- d = distance
- f = frequency
- K= constant that depends on the units used for d and f
- If d is measured in kilometers, f in MHz, the formula is:
- FSPL (dB) = 20log10(d)+ 20log10(f) + 32.44

Distance (km) = 10(Free Space Path Loss – 32.44 – 20log10(f))/20

https://stackoverflow.com/questions/11217674/how-to-calculate-distance-from-wifi-router-using-signal-strength
**** java
private const val DISTANCE_MHZ_M = 27.55

fun calculateDistance(frequency: Int, level: Int): Double =
        10.0.pow((DISTANCE_MHZ_M - 20 * log10(frequency.toDouble()) + abs(level)) / 20.0)

*** security
- Wired Equivalent Privacy (WEP) - security algorithm ( 802.11 Wired Equivalent Privacy (WEP) security
  mechanism defined in the original standard IEEE 802.11-1997)
- Wi-Fi Protected Access (WPA) (802.11e then 802.11i)
  - implements the Temporal Key Integrity Protocol (TKIP) - per-packet key - message integrity check stronger
    than a CRC
- 802.11i standard (i.e. WPA2) - WEP-40 and WEP-104  deprecated (802.11i, later incorporated into 802.11-2007)
  - AES-based encryption mode (Pre-Shared Key)
  - EAP-TLS optional authentication method .
  - PSK - Pre-Shared Key
  - CCMP protocol - Counter Mode CBC-MAC Protocol - message integrity check stronger
- WPA3

Wi-Fi Protected Setup (WPS) - without password
- PIN method
- Push button method - typically 2 minutes or less -  router will scan for devices
- Near-field communication method
- USB method (deprecated)

WPA-Personal (WPA-PSK mode) - encrypts the network traffic by deriving its 128-bit encryption key from a
256-bit shared key.
- string of 64 hexadecimal digits or 8 to 63 printable ASCII characters.
- pre-shared key (PSK) -

WPA-Enterprise (WPA-802.1X mode) (sometimes just WPA as opposed to WPA-PSK)
- requires a RADIUS authentication server (FreeRADIUS)
- Extensible Authentication Protocol (EAP) are used for authentication

Wi-Fi Protected Setup (WPS)
- creates a major security hole via WPS PIN recovery.

CCMP -
https://en.wikipedia.org/wiki/IEEE_802.11
**** EAP extensions
- EAP-TLS (previously tested)
- EAP-TTLS/MSCHAPv2 (April 2005[27])
- PEAPv0/EAP-MSCHAPv2 (April 2005)
- PEAPv1/EAP-GTC (April 2005)
- PEAP-TLS
- EAP-SIM (April 2005)
- EAP-AKA (April 2009[28])
- EAP-FAST (April 2009)
**** Security issues
- Weak password - Pre-shared key WPA and WPA2
  - WPA passphrase hashes are seeded from the SSID name and its length
- Lack of forward secrecy
  - Forward secrecy - feature of specific key agreement protocols - session keys will not be compromised even
    if long-term secrets used in the session key exchange are compromised
*** wifi Generations
- Wi‑Fi 7 	802.11be 	40000 	TBA 	2.4/5/6
- Wi‑Fi 6E 	802.11ax 	600 to 9608 	2020 	2.4/5/6
- Wi‑Fi 6 	2019 	2.4/5
- Wi‑Fi 5 	802.11ac 	433 to 6933 	2014 	2.4/5	обратн совместимост с n
- Wi‑Fi 4 	802.11n 	72 to 600 	2008 	2.4/5	обратно совместим с b / g / a?
- (Wi-Fi 3*) 	802.11g 	6 to 54 	2003 	2.4	обратно совместимой с b
- (Wi-Fi 2*) 	802.11a 	6 to 54 	1999 	5	Не совместим с сетями b или g.
- (Wi-Fi 1*) 	802.11b 	1 to 11 	1999 	2.4	Совместим с g сетями.
- (Wi-Fi 0*) 	802.11 	1 to 2 	1997 	2.4
*** MIMO Multiple Input Multiple Output
802.11n

*** frames layer 2
**** consist of
Each frame consists of a
- MAC header
- payload
- frame check sequence (FCS).
- Management frames (opetional)

MAC header:
- Frame Control − 2 bytes, 11 subfields.
  - Protocol version − 2 bits 00.
  - Type − 2 bits
  - Subtype − 4 bits – Request to Send (RTS) or a Clear to Send (CTS) For a regular data frame, the value is
    set to 0000.
  - To DS − 1 bit indicating whether the frame is going to the access point (AC)
  - From DS − 1 bit subfield indicating whether the frame is coming from the AC.
  - More Fragments − 1 bit - 1 indicates that more fragments would follow.
  - Retry − 1 bit -  1 specifies a retransmission of a previous frame.
  - Power Management − 1 bit - 1 =  the sender is adopting power-save mode.
  - More Data − 1 bit - 1 = sender has further data frames for the receiver.
  - Protected Frame − 1 bit - 1 = encrypted frame.
  - Order − 1 bit, informs the receiver that to the higher layers the frames should be in an ordered sequence.
- Duration −  2-byte - the time period for which the frame and its acknowledgement occupy the channel.
- Address 1:  6-byte - Destination address MAC
- Address 2:  6-byte - Source address MAC
- Address 3:  6-byte - BSS Id
- Sequence − 0 or 2-byte - first 4 bits provides identification to the fragment and the rest 12 bits contain the
  sequence number that increments with each transmission.
- Address 4: - 0 or 6-byte only present in between access points in an Extended Service Set or between intermediate nodes in a mesh network.
- QoS control 0 or 2 bytes -
- Data − variable sized
- Frame Check Sequence (FCS) − 4-byte field -  error detection information.
**** Types and SubTypes
- Probe Request/Response
- Beacon frame - send by AP
- RTS <= ready to send
- CTS => Clear to send
- Data <= MAC level transmission is not acked
- ACK => Acknowledgement
**** links
https://en.wikipedia.org/wiki/802.11_Frame_Types

*** WPA/WPA2
- PMK - (Pairwise Master Key)
- PTK or GTK (Pairwise Transit Key) PTK = f(ANonce, SNonce, PMK, A_MAC, S_MAC)
- ANONCE- is a random number that the AP has made. Authenticator
- SNONCE- is a random number that the client has made. supplicant
- MIC- Message Integrity Code
| encryption | encryption algorithm | IV size | encryption key | Integrity mechanism    |
|------------+----------------------+---------+----------------+------------------------|
| WEP        | RC4                  | 24-bits | 40/104-bits    | CRC-32                 |
| WPA        | RC4,TKIP             | 48-bits | 128-bits       | Michael Alg and CRC-32 |
| WPA2       | AES, CCMP            | 48-bits | 128-bits       | CBC-MAC                |

EAP-based 4-way handshake
1) <= ANonce
2) => SNONCE + MIC
3) <= GTK + MIC
4) => Ack
** Mediatek mt7601u
- https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/mediatek
- https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/net/wireless/mediatek/mt7601u
b/g/n

/lib/firmware/mt7601u.bin
** linix kernel support
Firmware license tags: redistribution allowed, *closed source*!
- https://en.wikipedia.org/wiki/Comparison_of_open-source_wireless_drivers
- https://wireless.wiki.kernel.org/en/users/drivers
- https://deviwiki.com/wiki/Main_Page
** install
1) to keep simple names: touch /etc/udev/rules.d/80-net-name-slot.rules
2) net-wireless/iwd or net-wireless/wpa_supplicant -  allows users to connect to WPA enabled access points
3) enable regulatory domain in kernel
4) - rfkill unblock all
   - ifconfig -a
   - ifconfig -v wan0 up

** iw
low level device config, WEP, scan
- iw phy [phy1 info]
- iw dev
- iw dev wlan0 info
- iw phy1 reg get
- iw dev wlan0 scan -u passive | less
-
*** monitor mode
- new_mac=(date +%N |md5sum|sed 's/^\(..\)\(..\)\(..\)\(..\)\(..\).*$/02:\1:\2:\3:\4:\5/') # generate MAC address random MAC address
- iw phy phy0 interface add mon0 type monitor addr $new_mac
- iw dev wlan0 del (optional)
- ifconfig mon0 up # default channel 1 frequency 2412 MHz
- iw dev mon0 set freq 2437
** iwd
- debug: /usr/libexec/iwd -d
- iwd keeps the configuration file at /var/lib/iwd as a .psk file with your access point name.
*** dependencies
- kernel access ell -
-
*** iwctl
- iwctl device list
- iwctl station wlan0 show - station mode infp
- iwctl known-networks list - history of connections
- scan:
  - station wlp2s0b1 scan - not required
  - station wlp2s0b1 get-networks
- iwctl --passphrase '' station  wlp2s0b1 connect TestWPA2
*** bash_alias
alias wificonn="echo detected WLAN: $(ip a | grep -o -m1 'wlan.') ; rc-service iwd start ; sleep 1 ; iwctl --passphrase='60s%.!_Col' station $(ip a | grep -o -m1 'wlan.') connect TP-Link_ACC3 "
alias wifiget="rc-service iwd start ; sleep 1 ; iwctl station $(ip a | grep -o -m1 'wlan.') get-networks"
alias wifiup="rfkill unblock 0 && ip link set wlan0 up"
*** WiFi provisioning
- Blynk.Inject - mobile app UI - get password for  your home or office WiFi

*** MAC Address Randomization
/etc/iwd/main.conf:
- [General]
- AddressRandomization=network
*** scripts
alias wificonn="echo detected WLAN: $(ip a | grep -o -m1 'wlan.') ; rc-service iwd start ; sleep 1 ; iwctl --passphrase='60s%.!_Col' station $(ip a | grep -o -m1 'wlan.') connect TP-Link_ACC3 "
alias wifiget="rc-service iwd start ; sleep 1 ; iwctl station $(ip a | grep -o -m1 'wlan.') get-networks"
alias wifiup="rfkill unblock 0 && ip link set wlan0 up"
*** links
- https://wiki.archlinux.org/title/Iwd
- https://wiki.gentoo.org/wiki/Iwd
- iwd doc https://iwd.wiki.kernel.org/
- git https://git.kernel.org/pub/scm/network/wireless/iwd.git
** wpa_supplicant
WPA/WPA2/Enterprise connections, device control

1. emerge --ask net-wireless/wpa_supplicant
2. bzless /usr/share/doc/${P}/wpa_supplicant.conf.bz2 > /etc/wpa_supplicant/wpa_supplicant.conf
3. chmod o-rwx /etc/wpa_supplicant/wpa_supplicant.conf

*** config
- ctrl_interface=DIR=/run/wpa_supplicant GROUP=wheel
- update_config=1
- bgscan="simple:120:-75:600" - scab trashold
- mac_addr=1 - rendom MAC per EES connection

*** status
- address - MAC address
- UUID - for WPS - generated based on local MAC address
*** scan and scan_results
- frequency - MHZ
- signal level - dBm
- flags -  security options

*** wpa_cli
>add_network
>set_network 0 ssid "myssid"
>set_network 0 psk "password"
>enable 0


>add_network
>set_network 0 ssid "myssid"
>set_network 0 key_mgmt SAE
>set_network 0 sae_password "password"
>enable 0


set_network ieee80211w 2
** wireless-tools
- iwconfig
- iwevenqt
- iwgetid
- iwlist
  - scanning
  - frequency/channel - Center frequencies
  - encryption/keys
- iwpriv
- iwspy
** cat /proc/net/wireless
** errors
direct firmware load failed error -2
- if you built driver into kernel (not as a module) the firmware will not load because at the time kernel
  loads the root filesystem is not mounted yet.
- include firmware in kernel binary:
  - Device Drivers  --->  Generic Driver Options  --->  Firmware loader --->
    - -*- Firmware loading facility
    - () Build named firmware blobs into the kernel binary
    - (/lib/firmware) Firmware blobs root directory
DORMANT - power saving mode
- disable pwer saving
-
** regulatory domain
governments assert the right to regulate usage of radio spectrum within their respective territories
- ne-wireless/crda
  - Central Regulatory Domain Agent (CRDA) - can be triggered to update the kernel wireless core's definition of
    the regulatory permissions for a specific country.
- ne-wireless/wireless-regdb -  regulatory database used by CRDA
- use ISO 3166-1 alpha-2 country codes https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2

loads the database via udev rule

TODO /etc/default/crda

regilatory database
- binary file format - to have the data available quickly and as compact as possible, authorship and integrity
- embedding the signature into the binary file
- signature is checked against a list of public keys built into the regulatory daemon binary

Kernel:
- Please set CONFIG_CFG80211=m or add regulatory.db and regulatory.db.p7s to CONFIG_EXTRA_FIRMWARE.
  - CONFIG_EXTRA_FIRMWARE="regulatory.db regulatory.db.p7s"
  - CONFIG_EXTRA_FORMWARE_D="/lib/firmare"
*** links
https://wireless.wiki.kernel.org/en/developers/Regulatory
https://wiki.archlinux.org/title/Network_configuration/Wireless#Respecting_the_regulatory_domain
https://www.kernel.org/doc/html/latest/networking/regulatory.html
** testing
- tree /sys/class/net
- ip addr
- ifconfig -a
  - ifconfig -v wlan0 up # activate
- dmesg | grep -i -E 'xx:xx.x|wlan|iwl|80211'
- udevadm monitor --environment kernel
** links
- linux kernel doc https://wireless.wiki.kernel.org/en/users/documentation
- https://docs.google.com/viewer?url=https%3A%2F%2Fwifigid.ru%2Fwp-content%2Fuploads%2F2018%2F11%2Fwifi-3.pdf&hl=ru&embedded=true
** hardware
- https://en.wikipedia.org/wiki/Comparison_of_open-source_wireless_drivers
- https://openwrt.org
- https://github.com/ZerBea/hcxdumptool
*** standards
- IEEE 802.11 - base standard 1997
  - 802 Overview and Archirecture
  - 802.2 Logical Link Control
  - 802.1 Bridging, Management
  - 802.10 Security
  - IEEE 802.3 Etherenet
  - 802.16 WiMAX
  - 802.17 Resilient Packet Ring (RPR)
  - 802.11* apply to all WiFi devices
  - Standards with upper case letters are base standards, e.g. IEEE 802.1AB-2009
- first version 1997 IEEE 802.11 -
  - MAC layer and 3 physical
  - 2.4 GHz
  - 1-2Mbps
  - no longer used
*** physical
1) ready to send (RTS) (dest and message duration) ->
2) Clear to send (CTS) <-
3) Data ->
4) ACK <-(MAC-level retransmission if not acked)

Frame Format
** wifi sec recomendations
- избегайте банковских операций во время подключения к публичным сетям
- никогда не авторизуйтесь в сети, если для подтверждения у вас просят номер телефона, электронную почту или
  же социальную сеть. В таком случае, этими данными могут воспользоваться злоумышленники
- отключите опцию общего доступа к вашим файлам
- не используйте обнаружение вашего девайся другими пользователями сети
- также нежелательна опция автоматического подключения к открытой сети
- не регистрируйтесь на сайтах во время подключения к общедоступным сетям Wi-Fi
- избегайте сетей в которых соединение периодически прерывается
- при подключении к общей сети - желательно использовать VPN-сервесы
** RTL8812AU
- https://github.com/aircrack-ng/rtl8812au
- https://www.justsomestuff.co.uk/wiki/doku.php/linux/add_driver
- book linux device drivers https://lwn.net/Kernel/LDD3/
- https://stackoverflow.com/questions/8549992/kernel-how-to-add-a-new-source-file-for-kernel-build


I copied  aircrack-ng/rtl8812au to kernel folder: drivers/net/wireless/realtek/rtlwifi/
I add line to drivers/net/wireless/realtek/rtlwifi/Makefile:  obj-$(CONFIG_88XXAU)		+= rtl8812au/
I add lines to drivers/net/wireless/realtek/rtlwifi/Kconfig:
config 88XXAU
	tristate "Realtek RTL8812AU USB Wireless Network Adapter"
	depends on USB
	select RTLWIFI
	select RTLWIFI_USB
	help
	This is the driver for Realtek RTL8812AU USB
I replaced line in file rtl8812au/Makefile : export CONFIG_88XXAU = m
with: export CONFIG_88XXAU = y
* bluetooth
2.4 GHz - 1-3Mbps

- net-wireless/blueman
- net-wireless/bluez

 bluetoothctl
 - scan on

 pairing - connection without user intervention (for example, as soon as in range)
** BT-400 not required
- guide https://gist.github.com/ssledz/69b7f7b0438e653c08c155e244fdf7d8
- curl 'https://dlcdnets.asus.com/pub/ASUS/wireless/USB-BT400/DR_USB_BT400_1201710_Windows.zip' -o bt400-driver.zip
- id to  hex name https://aur.archlinux.org/cgit/aur.git/tree/filelist.txt?h=bcm20702a1-firmware

** D-Bus
inter-process communication mechanism
- non-transactional. It is stateful and connection-based
- dbus daemon - runs an actual *bus*
  - bus address will typically be the filename of a Unix-domain socket such as "/tmp/.hiddensocket

dev-util/d-feet

** bash alias
alias blueup="rc-service bluetooth up ; sleep 1; bluetoothctl power on && bluetoothctl scan on"
alias bluedown="bluetoothctl power off"
** RTL8761B
    /usr/lib/firmware/rtl_bt/rtl8761b_fw.bin OR /lib/firmware/rtl_bt/rtl8761b_fw.bin
    /usr/lib/firmware/rtl_bt/rtl8761b_config.bin OR /lib/firmware/rtl_bt/rtl8761b_config.bin
https://linuxreviews.org/Realtek_RTL8761B
    https://aur.archlinux.org/packages/rtl8761usb

    https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=rtl8761usb
** links
https://elinux.org/images/3/32/Doing_Bluetooth_Low_Energy_on_Linux.pdf

* images slideshow
- feh -D 2 /dir
*get hidden data*
- feh --draw-exif
- exiv2 / exifgrep
- exiftool -auU -g1 image
*clear hidden data*
- exiftool -all= image
* Midnight Commander
- app-misc/mc
- panel - frame of direcotry list
- dependson slang text display library (it's like ncurses, but different)

unique features:
- hexdump with unicode support
- sftp, ftp support
** options
size options
Options -> Panel options ... -> Use SI size units
[New Left Panel]
user_format=half type name mark size:4 space mtime

Options -> Panel options ... -> Lynx-like motion - lift to parrent, right go in directory
** keys
navigation
- C-up/C-down - up down
- page-up/page-down - C/A-v
- C - page-up/page-down 	down/up by directory

- Tab		switch frame
- Alt-1 	help
- F4		open in default editor (env EDITOR) or Emacs Dired (env PAGER)
- Enter		open in system (mime type) editor
- F9 		top menu
  - F9 l g	file listing
- Alt + . 	hiddent files

- Ctrl+Space	size of directory
- Alt/Ctrl + s	Quick search
- Alt + ?	Opens search dialog
- Alt + U/Y	move to the next/\previous directory in the history
- Alt+Shift+h	history
- Alt + i	Sync panels

- Shift + F3	raw preview
- Alt + t	loop panel list mode
- Ctrl + u 	swap panels
- Alt + o 	load directory to other panel

select files
- Indert/C-t	tag file
- +/-/*/\ - select/unselect/inverse_selected/unselect

console
- Alt + Tab		autocompletion in console
- Ctrl + o		switch to console and back
- Ctrl/Alt + Enter	copy file name to console
- Cltr + Shift + Enter		Copy full path to console
- C - H			show console history
advanced
- Alt+e		change charset of panel
- Alt + ,	top bottom for long file names
** links
https://klimer.eu/2015/05/01/use-midnight-commander-like-a-pro/
* Thunar - file manager
- Shortcuts: cat ~/.config/Thunar/accels.scm

- Shift + Tab - to side panel, Tab - to main list
- Alt + up	to parrent
- C + 1/2/3	thumbnails, list, small lists
- Ctrl+Shift+N	new folder

- C + t		new tab
- C + Page_up/Page_down - scroll tabs
- Alt + 1/2/3	go to tab 1, to tab 2
- C + w 	close tab

* LibreOffice vs Microsoft
keys
- Ctrl+M - clear formatting

** LibreOffice (Microsoft)
- Writer (Word)
- Calc (Excel)
- Impress (PowerPoint)
- Draw (Visio)
- Math
- Base (Access)

* coreboot
System Firmware: An Essential Guide to Open Source and Embedded Solutions
- ubuntu install https://www.coreboot.org/Lesson1
- common usage https://www.coreboot.org/Build_HOWTO
https://www.instructables.com/Lenovo-T420-Coreboot-WRaspberry-Pi/
https://review.coreboot.org/plugins/gitiles/coreboot/+/refs/heads/master
https://doc.coreboot.org/tutorial/part1.html

** usage
- git clone --depth 1 https://review.coreboot.org/coreboot.git
Download the required submodules:
- git submodule update --depth 1 --init --checkout --recursive
- or git clone --recursive https://review.coreboot.org/coreboot

mkdir -p ~/work/coreboot/3rdparty/blobs/mainboard/lenovo/t420

cd util/ifdtool
make

print a partition table, and extract some blobs.
- ifdtool -x flash.bin
- mv flashregion_3_gbe.bin gbe.bin
- mv flashregion_2_intel_me.bin me.bin
- mv flashregion_0_flashdescriptor.bin descriptor.bin
- mv gbe.bin me.bin  descriptor.bin coreboot/3rdparty/blobs/mainboard/lenovo/t420/

core:
- make distclean
- make nconfig
- make crossgcc-i386 CPUS=${nproc}
- make iasl
- make
- build/coreboot.rom and .config

flash only bios:
- $./util/ifdtool/ifdtool -f t420.layout t420.bin
- flashrom -p linux_spi:dev=/dev/spidev0.0,spispeed=22000 -l t420.layout -i bios --noverify -w coreboot.rom


configuration in nvramcui
- secondary payloads -> nvramcui
- general setup -> option backend to use -> use CMOD for cinfiguration values
** requirements
- make - already have
- gcc - already have
- iasl - sys-power/iasl
- pkg-config -  dev-util/pkgconf - already have
- libssl-dev (openssl) - dev-libs/openssl - already have
- dev-lang/gnat-gpl
optional
- sys-libs/ncurses
- flex and bison
** SPI Flash
You need to connect CS# (Pin 1 for the W25Q32BV, goes to CS0# on the Raspberry Pi), SO (Pin 2, MISO
on RaspberryPi), GND (Pin 4), SI (Pin5, MOSI on Raspberry Pi), SCLK (Pin 6) and Vcc (Pin 8, 3.3V on
RaspberryPi, connect before RaspberryPi is powered on!)

My S430 has two of them. The bigger one (8MByte) contains the flash descriptor table and the Intel
ME firmware. The smaller one (4MByte) is for the BIOS.

*** general GPIO
https://www.egr.msu.edu/classes/ece480/capstone/fall09/group03/AN_balachandran.pdf
General Purpose Input/output (GPIO) is an interface available on most modern
microcontrollers (MCU) to provide an ease of access to the devices internal properties.

- The pins are usually arranged into groups of 8 pins where signals can be sent or received to and
from other devices.
- Each GPIO should be able to define either an input mode or an output mode for individual pins on the chip.

** debug console
https://www.coreboot.org/Network_console
http://pcengines.github.io/apu2-documentation/generating_coreboot_support_logs/

network console

- # openvpn --mktun --dev tap0
- # ip addr add 10.0.1.27/24 dev tap0
 (00:13:d4:76:a2:ac) Destination MAC address of remote system (NEW)     │
 │     (10.0.1.27) Destination IP of logging system (NEW)                     │
 │     (10.0.1.253) IP address of coreboot system (NEW)
** Coreinfo libpayload
- coreinfo is a small payload which can display system information such as PCI info, or an NVRAM dump.
- libpayload used as a basis for coreboot payloads.

https://www.coreboot.org/Coreinfo
https://www.coreboot.org/Libpayload

** https://www.instructables.com/Lenovo-T420-Coreboot-WRaspberry-Pi/

- Ponoma 5250 Test Clip - For connecting to the bios chip.
- Female to Female Breadboard Jumper Cables - Also known as Dupont wires.
- Raspberry Pi(3 or 4) - running the latest version or Raspberry Pi OS
- flashrom - on R PI
- coreboot

- It is a good idea to update the Embedded Controller to the latest version. The easiest way to do this is
  install the latest version of the factory bios. Coreboot is unable to touch the EC. You will be unable to
  update it after flashing unless you revert to the factory bios.
* qemu
 app-emulation/qemu
- nvramcui payload will allow setting this and other options
** theory
- used in conjunction with acceleration in the form of a Type-I hypervisor such as KVM (Kernel-based Virtual
  Machine) or Xen.
  - Type 1 hypervisor has direct access to the hardware resources.
- KVM as the accelerator of choice due to its GPL licensing and availability
- KVM resides in Linux kernel and there is a little configuration for it

SoftMMU is an overloaded term in QEMU. In terms of features the SoftMMU is the mechanism by which the TCG
allows the emulation of virtual memory.

** modes
- "system emulation" - rovides a virtual model of an entire machine (CPU, memory and emulated devices) to run
  a guest OS.  In this mode the CPU may be fully emulated, or it may work with a hypervisor such as KVM, Xen,
  Hax or Hypervisor.Framework to allow the guest to run directly on the host CPU.
  - A softmmu target is the standard qemu use-case of emulating an entire system (like VirtualBox or VMWare,
    but with optional support for emulating CPU hardware along with peripherals)
- “user mode emulation”, where QEMU can launch processes compiled for one CPU on another CPU. In this mode the
CPU is always emulated. CPU is always emulated.
 - user targets execute user-mode code only; the (somewhat shockingly ambitious) purpose of these targets is
   to "magically" allow importing user-space linux ELF binaries from a different architecture into the native
   system (that is, they are like multilib, without the awkward need for a software stack or CPU capable of
   running it).

** usage
- qemu-system-x86_64 is the binary or command for Qemu which is used to create 64-bit x86 VMs.

Set RAM or Memory Size For Qemu VM:
- qemu-system-x86_64 -m 256

qemu-system-x86_64 -cdrom iso_image -cpu host -enable-kvm -m 256 -smp cores=2 -m 256 -name poftut.com
-nographic file=fedoraraw.qcow2,if=virtio,format=qcow2
- -smp option which will enable multiple CPU cores with the core=2
- -m 256 - w56 MiB
- -name - VM name will be displayed in the Window header of the Qemu
- -nographic - if you need console only
- file=fedoraraw.qcow2,if=virtio - "if" is used to provide the driver or interface type for the disk.
  - virtio - Virtio was chosen to be the main platform for IO virtualization in KVM
- -enable-kvm - starts QEMU in KVM mode
- -cpu host is to emulate the host processor. There is a list of supported architectures available –
  qemu-system-x86_64 -cpu ?

qemu-system-x86_64 -drive if=pflash,format=raw,readonly,file=build/coreboot.rom -drive file=~/example.img -serial stdio -m 1G


exit:
- Ctrl-A X
- ALT-2 instead of CTRL-ALT-2, then type quit
** boot
iso
qemu-system-x86_64 -drive format=raw,media=cdrom,readonly,file=debian-8.2.0-amd64-DVD-1.iso

img
qemu-system-x86_64 -drive format=raw,file=x86-64.img
** Graphic card
text mode:
- -curses - ALT-2 instead of CTRL-ALT-2, then type quit
- -nographic
graphic -vga type:
- std
** create image
qemu-img create -f qcow2 example.img 100M
- -f qcow2 - recommended since it is dynamically allocated
- 100M size of image

get info:
- qemu-img info example.img

resize
- qemu-img resize ubuntu.qcow2 +5GB
chech for errors
- qemu-img check ubuntu.qcow2
*** file formats
- qcow2 :: The recommended file format. It is fast, dynamically allocated, and has decent support in
  QEMU. However it does have a minor speed loss compared to raw, but this is unnoticeable in normal use.
- qcow :: This is an older version of the qcow2 file format. The main difference between the qcow2 and qcow file
  formats is that qcow2 supports multiple snapshots through a newer, flexible model for storing snapshots. It
  is recommended to use qcow2 instead.
- raw :: As the name suggests - it is a "raw" file format, which means it will allocate all the space to the disk
  immediately, e.g. if you formatted a file named raw with 2G as the size, it would take up 2 gigabytes of
  space on the disk. This is the fastest option, and is recommended if you have a lot of disk space to spare.
- vdi :: A file format which is also compatible with VirtualBox 1.1. Recommended only if you are going to be
  switching through VirtualBox and QEMU frequently.
  - static - If set, the image will be created with metadata preallocation.
- vmdk :: A file format which is compatible with VMWare 3 and 4. Recommended only if you are going to be
  switching through VMWare and QEMU frequently. It supports the following arguments:
- compat6 :: Create a VMDK 6 image, instead of the default VMDK 4.
- hwversion :: Specify the vmdk virtual hardware version. If set, the Compat6 flag cannot be enabled.
- vpc :: A file format which is compatible with Windows Virtual PC. Recommended only if you are going to be
  switching through Windows Virtual PC and QEMU frequently.
- vhdx :: A Hyper-V compatible image format. Not recommended unless you're going to switch between Hyper-V and
  QEMU frequently.
- parallels :: A Parallels compatible image format. Not recommended unless you're going to switch between
  Parallels and QEMU frequently.
- file :: Not a file with any format - just a plain raw file.
- cow :: Ancient, depreciated QEMU file format that is not present in newer versions. Like qcow2 and qcow, it is
  a dynamically allocated file format. This cannot be used in Win32. Not recommended.
Read only file formats
- bochs - Bochs image file
- cloop - Linux Compressed Loop image, useful only to reuse directly compressed CD-ROM images present for
  example in the Knoppix CD-ROMs.
- dmg - Apple disk image
** OTHER
*** remote disk image with ssh
 qemu-system-x86_64 -drive file=ssh://ismail@baydan.com/disk.img

* mercurial
- hg log -
- hg summary - git status
- hg up branchname - git checkout branchname
* wineHQ
- видит всю систему, нужно устанавливать отдельным пользователем и убрать диск с /
- Garbage - not supported!
- WINEARCH=win32 winecfg
- WINEARCH=win64 winecfg
- WINEPREFIX=~/.wine/prefix # где будет папка конфигурацией и C: диск

- wine explorer
- apt-get install winbind

* paranoia
** backdoors
It has been pointed out time and time again that there is absolutely no practical difference what-so-ever
between intentional vulnerabilities in computer hardware and unintentional vulnerabilities. The only people
with the capacity to do either en masse have the capacity to hire hundreds of scientists and engineers for
entire departments of the sciences. As long as your box is not actively transmitting data without your
permission (it isn't), proper non-attribution techniques will protect you.
*** BIOS/UEFI
- proprietary - close source
- by default - may be updated inside OS
*** save bios
*** CPU microcode
for
- for CPU bugs
- Microcode has become more important with the Spectre vulnerability. Intel CPUs need new “microcode” from
  Intel to properly defend against Spectre attacks.

facts
- Microcode updates do not persist across reboot

Intel Microcode Update Points
- BIOS/UEFI
- Early OS Microcode Update
- Runtime Microcode Update

packages
- Ubuntu
  - intel-microcode
  - amd64-microcode
- Gentoo
  - sys-kernel/linux-firmware
  - sys-firmware/intel-microcode.
- Fedora, Arch microcode updates are installed by default.

less /proc/cpuinfo
- *microarchitecture*:
  - cpu family
  - model
  - stepping
- microcode - microcode revision number



kernel
Processor type and features --->
   [*] CPU microcode loading support
   [*]   Intel microcode loading support
   [*]   AMD microcode loading support

** TLS
- корневые сертификаты SSL, одобренные Роскомнадзором
- все мировые центры сертификации – это, как правило, частные компании: GlobalSign, DigiCert и др.
- крупнейшие компании — такие как Яндекс, Mail.ru Group, Сбербанк и даже Telegram — обязаны будут в
  принудительном порядке внедрить в свои продукты средства шифрования, одобренные Роскомнадзором
- браузеры пользователей будут в принудительном порядке «заражать» отечественными сертификатами, которые
  позволят ФСБ и иным спецслужбам просматривать любой трафик пользователя.


** hide data in image
- echo text >> image.jpg
- split -b 464334 image.jpg
progs
- last bits of image rgb  https://github.com/computationalcore/cryptosteganography
- https://steghide.sourceforge.net/

* telegram api
create bot https://core.telegram.org/bots
get group id https://stackoverflow.com/questions/32423837/telegram-bot-how-to-get-a-group-chat-id

get group id:
- https://api.telegram.org/botXXX:YYYY/getUpdates

send message:
- curl -X POST "https://api.telegram.org/botXXX:YYYY/sendMessage" -d "chat_id=-zzzzzzzzzz&text=my sample text"

* cloud
open source consoles - OpenShift
* decentralazied storage
*** know
- Git
- BitTorrent
- Direct Connect
- eDonkey
- Gnutella
- Bitcoin
- Perfect Dark
- Freenet
- Soulseek
- GNUnet
- https://en.wikipedia.org/wiki/List_of_P2P_protocols

*** problems:
- security
- tracking
- flood attack
- 14-18% of all executable programs available for download contained malware
- 47% of all zero-day malware uses BitTorrent
- file search
*** Interplanetary File System (IPFS)
- users - hold a portion of the overall data
- if Alice and Bob publish a block of data with the same hash, the peers downloading the content from Alice
 will exchange data with the ones downloading it from Bob
- IPFS aims to replace WEB using gateways which are accessible with HTTP.
- content-based routing instead of address-based
- cannot restrict except of encryption
- publish to share
- Data is stored in chunks of 256 KB, called IPFS objects.
- Garbage collection will periodically remove cached IPFS objects. If you want to permanently store a file you
  can pin it to your node.
-

* duckduckgo
- ip
- dns records xakep.ru
- is xakep.ru down # ping
- @xakepru # info about tweeter
- validate zobnin@gmail.com # validate email
- shorten https://xakep.ru/2017/02/23/bitlocker-hacking/ # get short link
- expand https://is.gd/8TIGsL
- qr https://is.gd/8TIGsL # qr-code
- password 10 # generate password
- random passphrase
- base64 encode <текст>
- md5 <текст>
- sha <текст>
- hash <хеш> # detect algorithn
- python pyhub # search module in PyPI
- jquery .ajaxsuccess # info about method of jQuery
- regex /(?x: (w+) s (w+) )/ hacker magazine # check regex
- compute Integral Of X^2 Dx Solve X+2>3x # math
- python syntax highlighter # open editor
- site:linux.org.ru
- android security report f:.pdf # search for specific file type
- intitle:"iphone 8" # search only in page titles
- intitle:"iphone 8" -android # not search
- (apple)AND((macos)OR("os x"))
-


html:
- color codes
- css colors
- html chars
- html dollar # get character
- file .txt # info about file extension
- chmod 755 # decode
- uppercase xakep.ru
- lowercase XAKEP.RU
- calendar
- countdown 10m
- stopwatch
- figlet xakep.ru # create ASCII banner
- bang
  - !so Java InterruptedException # search in Stack Overflow (!twitter), на eBay (!ebay), YouTube (!yt),
    Facebook (!facebook) and 9000 more
  - Translation google:
    - !gt-chinese
  - languages: !java !python !html !js !php
  - Gentoo: !emerge !fgentoo !gbugs !gentoopkg !gpackages !gpackages !gpo !gw !gwiki !installgentoo !pfl
    - !gentoo !gentoowiki
  - !man
  - !be - blockchain block explorer
  -



https://duckduckgo.com/bang_lite.html
