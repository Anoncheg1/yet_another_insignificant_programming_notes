
# Table of Contents

1.  [common use cases](#orge6ec5c0)
2.  [theory - linux kernel](#org3fbf864)
    1.  [Symmetric Multi-Processing](#org5dd3977)
3.  [links](#orga55a134)
4.  [dev and filesystem](#orge0fb75f)
    1.  [divice file](#org6b79b69)
    2.  [disks](#org860d676)
    3.  [bad blocks](#org173546f)
    4.  [partition table theory](#orgd63fa76)
    5.  [boot BIOS/UEFI/MBR/GPT](#org27ecfdf)
    6.  [btrfs](#org9ba94e9)
        1.  [mount options](#org4e916ac)
    7.  [boot sequence](#orgb5d0ab9)
    8.  [clone hard drive](#org28fa315)
    9.  [backup](#orgae06d7b)
        1.  [rsync:](#orgeb19c7a)
        2.  [cpio](#org399d09d)
        3.  [tar](#org36b64de)
        4.  [backup-tar](#orge273862)
        5.  [links](#org1ce93a4)
    10. [hierarchy](#org0179f0f)
    11. [chroot](#org43b48d5)
        1.  [chroot](#org59523dc)
        2.  [btrs subvolumes](#orgfb1607d)
        3.  [Logical Volume Management (LVM) subvolumes](#orgcd67c65)
    12. [filesystem attributes](#orgdde41f5)
        1.  [traditional permissions Unix and POSIX](#orgf3e7b56)
        2.  [extended attributes (abbreviated xattr)](#org82db89a)
        3.  [POSIX ACLs](#org12686a0)
    13. [SSD](#orge0710e4)
5.  [disk encryption](#org22601f9)
    1.  [LUKS partition](#org27c99ff)
    2.  [LUKS with a detached header](#org803d395)
        1.  [create/restore backup header](#org6cd127f)
    3.  [LVM (Logical Volume Manager)](#orgeb4de7a)
        1.  [LVM terminology:](#org0e611b5)
    4.  [Bootable USB Key](#org2d0f565)
    5.  [simple full](#org871fcde)
    6.  [Dracut](#orga652d9b)
        1.  [inspect initramfs](#orgeabc8ae)
        2.  [tmp](#orgf35dbf1)
        3.  [91crypt-gpg](#org4b3c9f4)
        4.  [kernel command line](#orge1bdba7)
    7.  [links](#org23ab1ea)
6.  [bootloader](#orgd1e7426)
    1.  [limine](#org2af02e5)
        1.  [links](#org4782692)
    2.  [grub](#orgef9904c)
        1.  [notes](#org4ea4b20)
        2.  [disable menu](#orgb32e07b)
    3.  [links](#orgf488172)
7.  [linux<sub>kernel</sub>](#orgb0e1bb7)
    1.  [theory](#org55ad915)
        1.  [initrams](#org9761b2b)
    2.  [usage ](#org0ef1385)
    3.  [config for dracut ](#orgc9bdcf8)
    4.  [security config ](#org924c350)
    5.  [hardening](#orgdd8c240)
    6.  [nconfig search](#orga9d59d1)
    7.  [menuconfig search](#orgd36fe25)
    8.  [add binary driver to kernel](#orgaf4813e)
    9.  [modules parameters](#org44d78d5)
    10. [renaming vmlinuz and System.map ](#org572c0c6)
    11. [GNU Linux-libre](#orgb35741d)
    12. [Linux Libre](#org7b5edef)
        1.  [kernel deblob script of GNU Linux-libre project](#org67865d5)
        2.  [librewolf](#org4a4d790)
    13. [links](#org557554a)
8.  [keyboard](#orgd7d8f0f)
    1.  [xmodmap](#orgf1466db)
        1.  [.xmodmap](#org90e0ca4)
        2.  [usage Firefox & IJKL](#org5bb8e91)
        3.  [Ctrl as a CapsLook](#org03db7c6)
    2.  [xkb](#orgaaddf73)
        1.  [files to autostart](#orgc920b4d)
        2.  [LINKS](#orgbc7d67c)
        3.  [Ctrl+key](#org6e453a5)
        4.  [Ctrl+Shift problem](#org5ec6d4a)
        5.  [disable capslock](#org9525179)
        6.  [Right Alt as Ctrl](#org679d973)
    3.  [keyboard theory](#orgfd320a6)
    4.  [Tab to right Alt](#org9791849)
    5.  [GTK Emacs](#org39c1f13)
    6.  [unicode characters and emoji](#org4a0a7cf)
    7.  [rebind](#orgffd7770)
        1.  [C++ http://yashiromann.sakura.ne.jp/x11keymacs/index-en.html](#org98aac96)
        2.  [C https://github.com/kawao/x-set-keys](#org31ef06b)
        3.  [XCompose - cannot bind to Return](#orged7b2cd)
        4.  [xkb ISO<sub>Level3</sub><sub>Shift</sub> - require unused key](#orgfd66c88)
    8.  [pynput - cannot suppress pressed](#org9a272ed)
    9.  [kaymap with dumpkeys/loadkeys](#orgc8556b6)
        1.  [pressing Caps Lock key once or more sets the keyboard in CapsLock state and pressing either of the Shift keys releases it.](#org8a06452)
    10. [/usr/share/X11/xkb/symbols/pc](#org814acef)
    11. [mouse emulation](#org4fab501)
9.  [monitor](#org9801f12)
    1.  [brightness](#org29ce9ad)
    2.  [colours](#orge5b935e)
10. [software debuging](#org5eef94f)
        1.  [network requests by Process](#org4b80f49)
11. [processes communcation](#org8e49645)
    1.  [Inter-process communication](#orgc59a279)
        1.  [Unix Domain Sockets](#org9c2db08)
        2.  [shared memory and message queues:](#orgc0ea6a5)
        3.  [pipelines](#org64ab97f)
        4.  [Message Queues: Message queues provide a way for processes to exchange messages in a way that is guaranteed to be delivered, even if the sending or receiving process is not currently running.](#org3f9f3f9)
    2.  [D-Bus](#orga5df113)
    3.  [links](#org9620177)
12. [install tarball - (from source, install sources)](#org8330d2c)
13. [GPG - GNU Privacy Guard](#org459c872)
    1.  [install](#orgf329034)
    2.  [about](#org84c2ebd)
    3.  [theory](#orgd8ccbad)
        1.  [Криптосистема с открытым ключом](#orgd1b63dc)
        2.  [Цифровая подпись Digital signature](#orgfc20d0e)
        3.  [keyservers](#org551c91a)
        4.  [signing keys](#orgbfae0ab)
        5.  [subkeys](#orgbe8bf0b)
    4.  [therms](#org9521972)
    5.  [create key](#orgbdcd233)
    6.  [list-keys](#orgedd9421)
    7.  [Correct way to replace a GPG key](#org0e5d884)
    8.  [USE CASES](#org0d606a9)
        1.  [create keys](#orgf959192)
        2.  [delete keys](#orgcbca01a)
        3.  [keyserver get key](#org8d6b716)
        4.  [upload your key](#org8ec1318)
        5.  [trust level for key](#org33e29e4)
        6.  [import key](#orgd6a7c54)
        7.  [verify .sign](#orgb9543ec)
        8.  [export public for share](#org384d9d9)
        9.  [Backup and restore your GPG key pair](#org67e117b)
        10. [sign keys (after importing)](#org0925a34)
        11. [encripting file](#org19bd65b)
        12. [decrypt file](#orgb61b35c)
        13. [encrypt/decrypt with password (symmetric) (armored)](#org5c47fcc)
        14. [generate password](#org243175e)
        15. [password storage in file](#org071ac70)
    9.  [trust model (Web of trust or Trust on first use)](#org75be111)
    10. [GPG agent](#org41e07ae)
    11. [как шифрвоать](#org2ea4b89)
    12. [Emacs EasyPG Assistant](#org3a0fd78)
    13. [links](#org7c88cbc)
        1.  [extend validity of the main key](#org3160d5d)
14. [The X Window System (X11 or X)](#org90081ae)
    1.  [terms](#org1cfc412)
    2.  [lock screen](#orgadf8b99)
    3.  [unused terminals](#org20d6b27)
    4.  [amdgpu](#org67b7d97)
        1.  [vga<sub>switcheroo</sub>](#org4e5bbd7)
    5.  [xorg.conf.d](#org00ad0c0)
    6.  [tilling](#org2494d04)
15. [xfce4](#orgb5689fa)
    1.  [history](#orgeeb7672)
    2.  [Emacs - conflict](#org099fe61)
    3.  [xfce4-terminal](#org5231074)
        1.  [hotkeys](#org41fafdb)
        2.  [set title and execute command](#orga97203a)
    4.  [insert unicode](#orgde21871)
    5.  [bind keys to applications](#org700bbc7)
    6.  [accessibility - mouse emulation](#org053d11b)
16. [Wayland](#org247163c)
    1.  [terms](#org90d2dd7)
17. [cron](#orgcec720b)
    1.  [format](#org4568ce8)
    2.  [Examples:](#orgd0826a3)
18. [vi/vim](#orgbcf6981)
    1.  [insert modes](#org4314068)
    2.  [Navigation](#org1378b43)
    3.  [other](#org56d37c5)
    4.  [plugins](#orgdfcfa33)
    5.  [old](#org38f8604)
19. [nano](#orgb94bd1d)
20. [ffmpeg](#org41c1a49)
21. [camera](#org46e92f1)
22. [screen recorder](#orged0a9b5)
23. [Nginx](#org65a3c8b)
    1.  [install](#org22a05ea)
    2.  [reverse proxy](#org0e9ec03)
        1.  [ex](#org04ce8db)
        2.  [links](#org1ef49cc)
    3.  [config](#orgd7791ec)
        1.  [terms](#org8e8c3c9)
        2.  [validate the configuration file](#org9ace29a)
        3.  [blocks](#org203c963)
        4.  [variables](#orga63ba3a)
        5.  [Most useful variables:](#orgb5ddbe5)
    4.  [logging](#org5997acb)
    5.  [troubleshooting](#org949a487)
24. [Debian](#orgd5ae969)
    1.  [apt](#orgaa12d0f)
    2.  [tigervnc](#org0914b02)
    3.  [samba](#org75f9b65)
    4.  [iptables](#org95553e3)
    5.  [sound](#org6e04590)
    6.  [proxy](#orgf24d355)
    7.  [ssh](#org57ed912)
    8.  [dwarf-fortress](#org72c83a2)
        1.  [50 installation](#org7bf2f95)
        2.  [troubleshooting](#orgf2511aa)
    9.  [make swap from image ](#org185e7c3)
    10. [links](#orgd189ab5)
25. [Ubuntu](#org855728b)
    1.  [network](#org5296349)
    2.  [security](#org3f2ab20)
    3.  [time](#org5df64a6)
    4.  [thumbrd](#orgdbd4db1)
    5.  [printer linux](#orgbbf5dc4)
    6.  [kerberos and Active Directory](#orga6cba69)
    7.  [windows share](#orgaf8a3bb)
    8.  [VSCODE](#orgb159d62)
26. [Astra Linux - Debian derivative](#org90ecd41)
    1.  [Special Edition](#orgc499404)
    2.  [мандатным контролем целостности (ГОСТ Р 59453.1-2021)](#org1ef8db6)
    3.  [замкнутая программная среда](#org0126d2c)
    4.  [Мандатное управление доступом](#orgc6d4276)
    5.  [Технологии разработки безопасного ПО и формальная модель управления доступом](#orgfeb21b8)
    6.  [other](#orgcbcd85d)
27. [REDHAT/AlmaLinux](#org7c66e5b)
    1.  [cudnn](#orgd3e277e)
    2.  [tigervnc server](#org9c1a6db)
    3.  [container toolkit](#orgc99d282)
    4.  [nftables](#org59e255a)
28. [termux](#org6c0c34a)
    1.  [how it works](#orgfb1548e)
    2.  [terms](#orgce3252b)
    3.  [ps](#org48ce4b8)
    4.  [ways to transfer files](#org03112f4)
    5.  [metasploit](#orgd63d1c6)
    6.  [termux-](#orgb190910)
    7.  [links](#org2478a83)
29. [Haskell](#orge5b1f9c)
    1.  [comparision](#orgb8ee297)
30. [AWK](#org564986a)
    1.  [terms](#org7c08d24)
    2.  [structure](#orgb3f2335)
    3.  [Built-in variables](#org1c5ccad)
    4.  [loops](#orgaa97102)
    5.  [commands](#org94b97f5)
31. [network](#org01e0265)
    1.  [theory](#orgce22a86)
        1.  [ip output](#org9d4da29)
        2.  [ip route](#org56f9687)
        3.  [ip neigh](#orgfdb5c71)
        4.  [ip maddress](#org60ee51e)
    2.  [iproute2 - controlling TCP / IP - new one](#org0fa4299)
        1.  [ip route](#orgaa8af90)
        2.  [ss](#org86c5547)
        3.  [USE CASES](#org9da0611)
        4.  [all commands](#orgb655b59)
    3.  [net-tools - based on /proc - too old](#orgfd6ba97)
        1.  [arp](#org60200a6)
        2.  [ifconfig](#orgc65cfbb)
        3.  [route](#org29dd6b7)
        4.  [netstat](#org1048b5f)
        5.  [iptunnel](#orgbda8164)
        6.  [brctl](#orgffeadc1)
        7.  [ifstat](#orga983b9c)
    4.  [lsof](#org56d9121)
    5.  [dig](#orgd7b2394)
    6.  [nslookup](#org4aad9b7)
    7.  [host](#org5efc9ed)
    8.  [traceroute](#org9cb0ffc)
    9.  [whois](#org5f4e1b0)
    10. [iptables](#orge3e63db)
        1.  [tables and chains](#orga9ec150)
        2.  [Target Values](#org4c2eb5e)
        3.  [gentoo net-firewall/iptables:](#orga4e8117)
        4.  [log bad ppl](#orge3e95f2)
        5.  [simple](#orgd607369)
    11. [nftables](#org04d41d7)
        1.  [print rules](#org3cf772a)
        2.  [table](#org0029938)
        3.  [chain](#orga0cd5d6)
        4.  [rule](#org67a7076)
        5.  [gentoo net-firewall/nftables:](#org8ff2135)
        6.  [/etc/nftables-local skeleton nftables config file](#org8b784b3)
        7.  [Masquerading and source NAT (SNAT)](#orge24266d)
        8.  [use cases](#orgac3c04e)
        9.  [socks](#orgc3c7ef9)
        10. [links](#orgf05ce14)
    12. [arptables](#orgba5d467)
        1.  [links](#org354e446)
    13. [net-dns/bind-tools](#orga2b995e)
    14. [nmap - network exploration](#orgc74f2f8)
    15. [tcpdump](#orgb0b30bf)
    16. [OpenVPN](#orgc0e5031)
        1.  [OpenVPN over Tor](#org4aaa865)
    17. [TAP/TUN devices](#org478bd35)
    18. [get my ip](#orgdd791c8)
        1.  [wget](#orgb5d9127)
    19. [speed, bandwith, latency](#orga21a051)
    20. [USECASES allow opening ports for user not root](#orgbfce1ac)
    21. [test network with wireshark](#org1c9c746)
32. [security](#org131f254)
    1.  [simple sandbox](#orgb9adce6)
    2.  [Linux Access Permissions](#org654f9b2)
        1.  [mandatory access control (MAC)](#orgb3c103e)
        2.  [access-control list (ACL)](#orgda90b33)
        3.  [capabilities](#org6c87f99)
        4.  [standart Unix discretionary access control (DAC) permissions](#org9ec4605)
        5.  [acl vs capability list](#org5406ca4)
    3.  [PAM](#org6750e3d)
    4.  [s/key](#orga394bf2)
    5.  [su](#org382e8e3)
    6.  [/etc/passwd](#org78309dd)
    7.  [/etc/shadow](#org833990d)
    8.  [logcheck](#org74ce7e2)
    9.  [firejail](#org7847888)
        1.  [xephyr](#orgb8218fd)
        2.  [hardening line](#orgbf7c194)
        3.  [config hardening](#org3587760)
        4.  [errors](#org96dffcb)
        5.  [per app](#org4d69caa)
    10. [apparmor](#org409702a)
    11. [nfs](#org64fc727)
        1.  [iptables](#org5371962)
    12. [USB](#org7b82833)
        1.  [protection](#orgf12b70e)
    13. [telegram ](#org0bf4326)
        1.  [procs & cons](#org13ccd9f)
        2.  [harden](#org846959c)
        3.  [telegram api](#org26b3882)
    14. [Check system by intrusion](#org46b8e8e)
    15. [namespaces - isolated instance of the global resource](#orga35367c)
        1.  [types](#org102f817)
    16. [Selinux (Security-Enhanced Linux)](#org914b065)
    17. [Disable executables, pip](#org5753ada)
    18. [Hardening testers](#org84efc4a)
    19. [Log analyzers](#org893dfb1)
    20. [Antivirus, online system monitoring](#org2ac4dea)
    21. [links](#orgc6db598)
33. [wifi](#org97d3a48)
    1.  [theory](#orga10f3c6)
        1.  [terms:](#org3ce6bc7)
        2.  [frequency](#org5131bb4)
        3.  [channels 2.4 GHz (802.11b/g/n/ax)](#orgb3b42e6)
        4.  [health](#orgdf265c2)
        5.  [modes](#orgd905d48)
        6.  [distance](#org189f6e7)
        7.  [security](#orgc6c190b)
        8.  [wifi Generations](#orgb39479c)
        9.  [MIMO Multiple Input Multiple Output](#orgc21f639)
        10. [frames layer 2](#org59943ed)
        11. [WPA/WPA2](#org49e855d)
    2.  [Mediatek mt7601u](#org704708f)
    3.  [linix kernel support](#org6e8db50)
    4.  [install](#orga590e02)
    5.  [iw](#org8efe91c)
        1.  [monitor mode](#orge0df541)
    6.  [iwd](#orgdce14e0)
        1.  [dependencies](#orgaf6cd18)
        2.  [iwctl](#orge540afa)
        3.  [bash<sub>alias</sub>](#orge2c70b2)
        4.  [WiFi provisioning](#orgdc0c0d2)
        5.  [MAC Address Randomization](#orgec426e4)
        6.  [scripts](#org2027ea1)
        7.  [links](#org26c81b8)
    7.  [wpa<sub>supplicant</sub>](#org964478d)
        1.  [config](#orgff4332f)
        2.  [status](#org110ff28)
        3.  [scan and scan<sub>results</sub>](#orgcceb95e)
        4.  [wpa<sub>cli</sub>](#org9689a86)
    8.  [wireless-tools](#org048f76a)
    9.  [cat /proc/net/wireless](#orgf51d852)
    10. [errors](#org00a8efe)
    11. [regulatory domain](#org759d621)
        1.  [links](#orgb70a144)
    12. [testing](#org15273bd)
    13. [links](#org7739b81)
    14. [hardware](#orgf3355d4)
        1.  [standards](#org11c2e88)
        2.  [physical](#org3c179e8)
    15. [wifi sec recomendations](#orge23eecd)
    16. [RTL8812AU/21AU](#org6c3b2c2)
34. [bluetooth](#orgad1d0c1)
    1.  [pygatt vs pybluez](#orgbca7fa5)
    2.  [terms](#org58d6885)
    3.  [BT-400 not required](#org1a5794d)
    4.  [D-Bus](#orgd14b1f9)
    5.  [bash alias](#orgd57a6fc)
    6.  [RTL8761B](#orge75222f)
    7.  [bluetoothctl](#orgd7d9107)
    8.  [bluealsa-aplay](#org355b154)
        1.  [/etc/dbus-1/system.d/bluealsa.conf](#org8fa7f9a)
        2.  [asoundrc](#org9fccf3f)
        3.  [asoundrc2](#org38a3672)
    9.  [links](#orgbd10474)
35. [image](#orgbb7d6ff)
    1.  [rotate](#org5e7d981)
    2.  [reduse size](#orgc04bd3a)
    3.  [hidden data](#orgf8bccba)
    4.  [images slideshow](#orge84eb8d)
    5.  [one image inside of onether](#orgfb49928)
    6.  [merge several to one](#org04bfe24)
36. [imageMagic](#org0d39508)
    1.  [troubles](#org9945ed0)
37. [Firefox](#orga3412ab)
    1.  [keys](#org145bc41)
    2.  [fingerprints](#org4c8f7c9)
        1.  [https://coveryourtracks.eff.org/](#org3f50903)
        2.  [http://uniquemachine.org/ with source code](#org35ab167)
        3.  [https://browserleaks.com/fonts](#org7036c1c)
    3.  [screen](#orga63ef41)
    4.  [disable GPU fingerprint(hardware acceleration)](#orgf83cbd8)
    5.  [fonts](#org7af6785)
    6.  [TLS](#org8060009)
    7.  [User-Agent](#org8eacd13)
        1.  [testers](#org4d6ceb9)
    8.  [user agent ( net required)](#org49d5a3f)
    9.  [User-Agent checkers](#org59bbce3)
    10. [disable webgl](#org580890a)
    11. [plugins](#org2a6d46d)
    12. [disable javaScript](#org7499881)
    13. [profile](#org6722696)
    14. [GNU JS Trap](#org99ee21d)
    15. [xpi extensions](#orgba9e3f6)
    16. [check xpi extension](#org999f23c)
    17. [Mouse and links](#orgff08e57)
    18. [Mouse and links complex](#orgf698d20)
    19. [Gentoo specific](#org8578aa8)
        1.  [Normandy](#org2ada53e)
    20. [Tor compatibility](#orgf1688e4)
    21. [user.js - Firefox configuration hardening](#orgf10b8e6)
        1.  [own config from two sources](#orgbe68d92)
    22. [certificates](#orgf611d6a)
    23. [images loading](#orgd9a4195)
    24. [Debugging remote Firefox instances and headless](#org94adb68)
    25. [proxy switcher](#orgff39074)
    26. [troubleshooting](#org86f07ec)
    27. [microphone](#orgc1b6368)
    28. [cache](#org7ab3cf3)
38. [Stumpmw - window manager](#orgc7aebcb)
    1.  [links](#org38f545c)
39. [Nyxt](#org4c93dde)
40. [suckless tools](#org3435188)
41. [rtorrent](#orgbce3671)
    1.  [install from sources](#org92a74be)
    2.  [keys](#org951a330)
    3.  [screen](#org1028ccc)
    4.  [lags probles](#orge50b5a6)
    5.  [To turn off DHT connection tracking on Linux,](#orgc276e78)
    6.  [config](#org9c31b08)
    7.  [service systemd](#orga419c37)
    8.  [aliases](#org0cb132b)
42. [email](#orgb71b93a)
    1.  [theory](#org58b9c9b)
        1.  [soft:](#org2946f88)
    2.  [protocols](#org4085b5a)
    3.  [isync ](#org7afa7c0)
        1.  [cur, new, tmp](#org6d40320)
        2.  [usage:](#orgf3f7334)
        3.  [links](#orgba078be)
    4.  [notmuch](#orgccd3d32)
        1.  [tags](#orgdde16ab)
        2.  [queries](#orgc9d1c09)
        3.  [links](#org18ba350)
    5.  [neomutt](#org1e42c59)
        1.  [keys](#org7761d30)
        2.  [examples](#orgab525bd)
        3.  [mutt and neomutt - clients](#org8212d1c)
        4.  [links](#org18ff41b)
    6.  [emailutils](#org7243a99)
    7.  [DKIM](#orgebd15c7)
        1.  [how it looks like:](#org37660f1)
        2.  [DKIM Key Rotation](#org4962cfd)
        3.  [links](#orge5d6c83)
43. [Midnight Commander](#org02fed6c)
    1.  [options](#org533c6eb)
    2.  [keys](#org765cc9a)
    3.  [links](#org79d59e2)
44. [Thunar - file manager](#org63c3e66)
45. [LibreOffice vs Microsoft](#orgb8cabdc)
    1.  [LibreOffice (Microsoft)](#org3e202d0)
46. [Gimp](#org778b36c)
47. [coreboot](#orgba73a80)
    1.  [usage](#org1349706)
    2.  [requirements](#org77b1e0a)
    3.  [SPI Flash](#orgc18575c)
        1.  [general GPIO](#org48960bb)
    4.  [debug console](#org22d9645)
    5.  [Coreinfo libpayload](#org95d707e)
    6.  [https://www.instructables.com/Lenovo-T420-Coreboot-WRaspberry-Pi/](#orgbbecb39)
48. [qemu](#orgb37eee3)
    1.  [theory](#org6601ba1)
    2.  [modes](#org48afa9a)
    3.  [usage](#orge3f0545)
    4.  [boot](#org732a29d)
    5.  [Graphic card](#orgbeefd77)
    6.  [create image](#org81d7a22)
        1.  [file formats](#org8929c0d)
    7.  [OTHER](#orgddcf63c)
        1.  [remote disk image with ssh](#org0df9c03)
49. [systemd](#orgc64bef7)
    1.  [terms](#orgc103baf)
    2.  [types of units](#org96f3ec3)
    3.  [create .service](#orgbdac88b)
    4.  [Unit files](#orgbd6d66b)
    5.  [sections - common](#org60e9672)
    6.  [setions - unit specific](#orgf500ef3)
    7.  [tamplate and instance unit names](#org44d6930)
    8.  [systemctl command](#orge28d23f)
        1.  [own service](#org1f6f41e)
        2.  [VIEWING-SYSTEMD-INFORMATION](#org4bf412c)
        3.  [WORKING WITH SERVICES](#orge2b36fb)
        4.  [run levels](#org97f3334)
        5.  [Changing-System-States](#org3899012)
        6.  [Viewing-log-messages](#org78022fb)
        7.  [SYSVINIT](#org8f90ad2)
    9.  [usage](#orgff033ba)
    10. [links](#org65d83dc)
50. [LibreOffice](#org9f64087)
    1.  [Formula field](#org38b2542)
    2.  [Cell Reference](#orgc2879ec)
    3.  [troubleshooting](#org22534af)
51. [mercurial](#orge562878)
52. [wineHQ](#orgbcb476a)
    1.  [create index](#org9c68087)
    2.  [env variables](#org1c99f47)
    3.  [mono](#orgb0ffbb3)
        1.  [versions](#orgcdaf261)
    4.  [components](#orgf53ed0a)
    5.  [links](#org4de8247)
53. [paranoia](#org1fb30c8)
    1.  [backdoors](#org44ecc56)
        1.  [BIOS/UEFI](#org0ee164f)
        2.  [save bios](#org40711c1)
        3.  [CPU microcode](#org5581106)
    2.  [TLS](#orga879472)
    3.  [hide data in image](#org64d2055)
54. [Matrix](#org9eec2f4)
    1.  [theory](#orgf9a941f)
    2.  [clients](#org4494cd1)
55. [Irssi](#orgb619b34)
    1.  [IRC protocol](#org453d66a)
    2.  [irc basic commands - IRC commands cheat sheet](#org499b1de)
    3.  [IRC colours](#org0a11228)
    4.  [terms](#org743a9fb)
    5.  [ui](#org2fb3e60)
    6.  [keys](#orgcad227e)
        1.  [windows](#org21cbc86)
        2.  [in window](#orgec528f1)
        3.  [Navigating while typing](#org078a521)
        4.  [rebindin](#org602d1ac)
        5.  [links](#orge48be5c)
    7.  [commands](#org921af7e)
    8.  [1](#org55cbe78)
    9.  [2](#org0efe947)
    10. [librechat](#org24a57b4)
    11. [automation](#org7d6e996)
        1.  [my](#orgdbe7a1a)
    12. [socks](#org1e20966)
    13. [proxy (HTTP)](#org3b8c8ac)
    14. [script: python module](#org74a8922)
    15. [script: (Perl)](#orgefee1bd)
        1.  [command available in script:](#org275fdf1)
        2.  [ex](#org68db520)
    16. [links](#org0523d3d)
56. [mpv](#org77f17ac)
57. [TigerVNC](#orgf88f298)
58. [cloud](#org11dad91)
59. [openssl](#org2555d52)
60. [decentralized Darknet](#orge005c70)
    1.  [TOR](#org8cc18e8)
        1.  [offical and not official resources](#org9ebbb7b)
        2.  [site security audit](#orgcec1dbe)
        3.  [types of relays or nodes](#org33a1454)
        4.  [torrc](#orgcbb444e)
        5.  [firefox config](#org9d9dc61)
        6.  [route tor through tor](#orgfe5b581)
        7.  [theory](#org60b3f2a)
        8.  [dangers](#org05039bc)
        9.  [Tor vulnerabilities](#org796dc73)
        10. [Verification](#org51adaca)
        11. [search engines](#orgf0f04ed)
        12. [proxies](#orgbfa579e)
        13. [fstab logging to tmpfs](#orgdfb3f9d)
        14. [Debian update tor from official repository](#orga74792a)
        15. [popular](#org6eb026a)
        16. [own hidden service](#org8b16dea)
        17. [email over tor](#org07c9b32)
        18. [countries](#org8a60602)
        19. [snowflake](#org57d1731)
        20. [obfs4 - lyrebird - Pluggable Transport](#orgbfe86f6)
        21. [webtunnel - mimic encrypted web traffic (HTTPS)](#org1c84a62)
        22. [webrtc proxies](#org8596790)
        23. [webrtc-socket-proxy - working](#orgec007c8)
        24. [Snowflake - Pluggable Transport using WebRTC](#orgb593fbd)
        25. [theory](#orgeaf2ea1)
        26. [get bridges by email](#org4b37ebe)
        27. [links](#org25c051d)
        28. [installation Debian](#org68e2e85)
        29. [install gentoo](#org909df53)
        30. [client configuration examples](#org682d481)
        31. [ssh hidden service configuration example](#org01aa019)
        32. [bad sites](#org69fd206)
    2.  [tunnel techniques](#org2846972)
        1.  [server config](#org4998246)
        2.  [client config](#org6c7627b)
        3.  [systemd](#orga05aee9)
        4.  [block echo](#orgcba1af1)
        5.  [nftables](#orga4b34b9)
        6.  [links](#orga67e6b1)
    3.  [i2p](#org4404d4f)
    4.  [freenet](#org228ba4e)
    5.  [zeronet](#org078115e)
    6.  [lokinet](#org906db03)
        1.  [install binary](#orged5b74a)
        2.  [links](#org540841b)
    7.  [https://yggdrasil-network.github.io/](#org0006593)
    8.  [ipfs](#orgf60f7b3)
    9.  [https://urbit.org/](#org3354490)
        1.  [terms](#org469153e)
    10. [Rus https://github.com/number571/go-peer](#orgab4b56f)
    11. [decentralazied storage](#org0f78444)
    12. [links](#orgad730de)
61. [search engines](#orgb7d3da0)
    1.  [review](#org6b8d78a)
    2.  [duckduckgo](#org8376d31)
62. [unicode](#org4042734)
63. [questions](#org1c0e53b)
64. [web crawler](#orge7ecc2c)
65. [obfs4 standalone](#org0d6b5ce)
    1.  [Server:](#orgc219e0d)
    2.  [Client:](#org9cdfb18)
    3.  [systemd service for server](#orgacea82c)
    4.  [full](#org4644f01)
    5.  [full client](#orga05daf9)
    6.  [links](#org337a0b1)
66. [VPS configuration](#orgd2b1494)
67. [markdown](#org7aa9c80)
68. [mount<sub>cifs</sub>](#org59269a1)
69. [suites of utils](#org539f2da)
    1.  [util-linux](#org3e11c87)
70. [translate-shell](#org15549bd)
71. [linkedin create post](#org5713802)
72. [whatsapp](#orgd13f35b)
    1.  [whatsie - C++ client](#orge61c4ce)
73. [Affiliate marketing](#orgda09fb0)
    1.  [terms:](#org32f3f5f)

;-**- mode: Org; fill-column: 110;-**-

nixCraft - library

linux kernel map <https://makelinux.github.io/kernel/map/>

-   <https://github.com/makelinux/linux_kernel_map>


<a id="orge6ec5c0"></a>

# common use cases

Create user.

    useradd --create-home --shell /bin/false --user-group whatsapp

Add user to group.

    sudo usermod -a -G groupName userName

Download with resume:

    wget --continue --user-agent="" https://file


<a id="org3fbf864"></a>

# theory - linux kernel


<a id="org5dd3977"></a>

## Symmetric Multi-Processing

**preemption** is the act of temporarily interrupting an executing task,

Concurrency with multi-cpu (Memory architectures supporting concurrency):

-   UMA (Uniform Memory Access) - all the processors share the physical memory uniformly. The peripheral devices
    follow a set of rules. uses a single shared system bus  typically used for up to 8 processors.
    -   symmetric multiprocessor - processors have equal access to all the peripheral devices
    -   asymmetric multiprocessor - one or a few processors can access the peripheral devices
-   Non-uniform Memory Access (NUMA) - dedicates different memory banks to different processors - may access
    local memory quickly and remote memory more slowly. Benefits on servers where the data are often associated
    strongly with certain tasks or users.
-   Cache Only Memory Architecture (COMA)

Race conditions can occur when:

-   there are at least two execution contexts that run in "parallel"
-   the execution contexts perform read-write accesses to shared memory

race conditions can be avoided by:

-   make the critical section atomic
-   disable preemption during the critical section (e.g. disable interrupts, bottom-half handlers, or thread preemption)
-   serialize the access to the critical section (e.g. use spin locks or mutexes to allow only one context or
    thread in the critical section)

**mutexes** and **spin locks** usage **intersect**

-   mutexes don't "waste" CPU cycles; system throughput is better than spin locks if context switch overhead is
    lower than medium spinning time
-   mutexes can't be used in interrupt context
-   mutexes have a higher latency than spin locks

Read Copy Update (RCU) - synchronization mechanism


<a id="orga55a134"></a>

# links

-   <https://distrowatch.com>
-   <https://planet.gentoo.org/>
-   <https://zerobin.net/>
-   <https://www.cyberciti.biz/>


<a id="orge0fb75f"></a>

# dev and filesystem


<a id="org6b79b69"></a>

## divice file

-   device files is that they are most definitely not device drivers
-   they are portals to the device drivers
    -   app -> dev<sub>file</sub> -> drive -> phisic
    -   app <- dev<sub>file</sub> <- drive <- phisic

ls -al

-   c&#x2026;. - characted device
-   b&#x2026; - block device, typically a multiple of 256 bytes
-   major device number and minor device number

info:

-   udevadm info -a -p  $(udevadm info -q path -n /dev/input/event1)


<a id="org860d676"></a>

## disks

find disk by uuid

-   $blkid - partitions, UUID, BLOCK<sub>SIZE</sub>, TYPE
-   ls -al *dev/disk/by-uuid*

recover partitions and change partition table type:

-   testdisk

mount options

-   findmnt

change uuid

-   uuidgen
-   tune2fs /dev/sdy1 -U cd6ecfb1-05e0-4dd7-89e7-8e78dad1fa0e

sector - phisical disk area
Disk sector  - traditionally 512 bytes  - 4096-byte (4 KiB) sectors, which are known as the Advanced Format

remount directory:

-   mount -o remount /var


<a id="org173546f"></a>

## bad blocks

-   blocksize=$(blockdev &#x2013;getbsz /dev/sdX)
-   badblocks -t random -w -s -b $blocksize -c 5000 -o out.txt /dev/sdX

check bad blocks fast:

-   cryptsetup open /dev/device name &#x2013;type plain &#x2013;cipher aes-xts-plain64
-   shred -v -n 0 -z /dev/mapper/name
-   cmp -b /dev/zero /dev/mapper/name
-   or diff-hightlight -y <(xxd /dev/zero) <(xxd /dev/mapper/name)
-   or diff -y <(hexdump -C /dev/zero) <(hexdump -C /dev/mapper/name)


<a id="orgd63fa76"></a>

## partition table theory

MBR Partition Table(msdos)

-   first 512 bytes of a storage device
-   saves partition information on the first sector of disk(MBR sector)
-   stored in the first sector (cylinder 0, head 0, sector 1 &#x2013; or, alternately, LBA 0) of the hard drive
-   Each partition entry is 16 bytes, and the total is 64 bytes.
-   maximum of 4 entries
-   size of a single partition in MBR disk can only amount to 2TB
-   Each of the four Partition Table entries contains the following elements, in the following structure:
    -   Boot indicator bit flag: 0 = no, 0x80 = bootable (or "active")
    -   starting position, size and ending position
-   At most one partition should be active
-   <https://wiki.osdev.org/MBR_(x86)>

GPT (GUID Partition Table)

-   up to 128 partitions on hard disk.
-   uses UUIDs
-   CRC32 checksums to detect errors and corruption of the header and partition table.
-   Stores a backup header and partition table at the end of the disk that aids in recovery in case the primary
    ones are damaged.
-   kernel require: CONFIG<sub>EFI</sub><sub>PARTITION</sub>=y.


<a id="org27ecfdf"></a>

## boot BIOS/UEFI/MBR/GPT

-   BIOS MBR
-   BIOS GPT - may have conflicts i motherboard.
    -   BIOS boot partition - (1 to 2 MB) partition - in which boot loaders like GRUB2 can put additional data
        that doesn't fit in the allocated storage.
-   UEFI GPT
    -   EFI System Partition (ESP) - FAT variant for /boot
        -   mkfs.fat -F 32 /dev/sda1
-   UEFI MBR - ? not used.

GPT It carries CRC32 checksums to detect errors in the header and partition tables and has a backup GPT at the
end of the disk. This backup table can be used to recover damage of the primary GPT near the beginning of the
disk.


<a id="org9ba94e9"></a>

## btrfs


<a id="org4e916ac"></a>

### mount options

-   discard - default off -
    -   required SATA revision 3.1 chipsets and devices. TRIM on the backing device
-   autodefrag, noautodefrag - default: off - Not well suited for large database workloads.
-   compress, compress=<type[:level]>, compress-force, compress-force=<type[:level]>
-   

chech TRIM is supported:

-   lsblk
-   A device supporting discard has non-zero values in the columns of DISC-GRAN (discard granularity) and DISC-MAX

(discard max bytes). In the example listing above, the /dev/sda device supports discard while /dev/sdb does
not.

example:

-   /dev/mapper/sda2<sub>crypt</sub> /home                btrfs   defaults,noatime,autodefrag,compress=zstd,commit=120,subvol=home 0 0

<https://btrfs.readthedocs.io/en/latest/Administration.html>


<a id="orgb5d0ab9"></a>

## boot sequence

Simple:

1.  BIOS or ?
2.  MBR or EFI ?
3.  grub inside of MBR or ?
4.  mount *boot* and read /boot/grub.conf
5.  Linux kernel
6.  mount real /
7.  drivers
8.  init /etc/inittab
9.  udev daemon

initramfs

1.  boot loader
2.  Linux kernel
3.  initramfs - contains / file system
4.  mount real / read-only
5.  mount /
6.  init /etc/inittab
7.  udev daemon


<a id="org28fa315"></a>

## clone hard drive

Why # dd if=/dev/hda of=/dev/hdc bs=2048k - is bad?

-   no defragmentation
-   copying of unused space
-   very slow if read error

way <https://forums.gentoo.org/viewtopic.php?t=28123&highlight=backup>

-   


<a id="orgae06d7b"></a>

## backup

-   Bare metal recovery - dd, CloneZilla, PartImage, or FSArchiver
-   recover: mount read only or make copy first!


<a id="orgeb19c7a"></a>

### rsync:

default - full file sunchronization without deletion of files

-   &#x2013;delete - removes target if source is empty
-   &#x2013;update - do not sync if target file is newer

rsync -aAXv / &#x2013;delete &#x2013;progress &#x2013;exclude={/dev/\*,/proc/\*,/sys/\*,/tmp/\*,/var/tmp/\*,/var/log/\*,/var/cache/\*,/run/\*,/mnt/\*,/lost+found} / /backup

-   then later you can add the -u option to rsync and just update what has changed.
-   rsync -aAXv &#x2013;delete /mnt/drive  /mnt/system
-   -a – Archive mode. -rlptgoD (no -A,-X,-U,-N,-H),U,N- time, H- hard links
-   -A – This preserves the Access Control List.
-   -X – This preserves all extended file attributes of the files.
-   &#x2013;delete – This option enables you to make an incremental backup. In simple terms, with exception of the
    first backup, it only backs up the difference existing between the source and the destination backup
    drive. It only backs up new and modified files as well as deletes all the files in the backup location
    which have been deleted.
-   &#x2013;update skip files which exist on destination and have a modidied time (and size) that is newer than the source file
-   &#x2013;dry-run – This is the option that simulates the backup process.

-   rsync -aAXv -e ssh root@192.186.0.1:/ /mnt/backup
-   restore: COPY FIRST! rsync -aAXv *backup* /mnt/gentoo
    -   / after backup is required

copy root (do not forget exclude):

-   rsync -aAXv / /mnt/gentoo


<a id="org399d09d"></a>

### TODO cpio

-   find / -xdev | cpio -pvdm /destdir


<a id="org36b64de"></a>

### tar

COPY ORIGINAL BACKUP FIRST!

-   tar -ztvf my-data.tar.gz # view content
-   tar &#x2013;exclude-from=/home/john/exclude.txt -czpvf /home/john/backup/linux<sub>backup.tar.gz</sub> /
-   restore: tar &#x2013;exclude-from=$exclude<sub>file</sub> &#x2013;xattrs-include=\*.\* -xpvf backupfile.tar.gz /
-   exclude.txt - must contain path inside of tar, not outside or starting with target dirname

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

path inside of tar:

-   tar -zcvf b.tar.gz &#x2013;exclude-from="exclude.txt" tmpd/ => tmpd/ - inside of tar
-   tar -zcvf b.tar.gz &#x2013;exclude-from="exclude.txt" *home/u/tmpd* => *home/u/tmpd* - inside of tar

remote (Not stable!):

-   save remote: tar zcvf - / | ssh user@dumpserver.nixcraft.in "cat > /backup/wwwdata.tar.gz"
-   save local: ssh user@box tar czf - / > /destination/file.tar.gz


<a id="orge273862"></a>

### TODO backup-tar


<a id="org1ce93a4"></a>

### links

-   <https://averagelinuxuser.com/backup-and-restore-your-linux-system-with-rsync/>
-   <https://www.howtogeek.com/427480/how-to-back-up-your-linux-system/>
-   <https://www.vultr.com/docs/use-gnu-tar-to-backup-linux>
-   <https://wiki.archlinux.org/title/Full_system_backup_with_tar>


<a id="org0179f0f"></a>

## hierarchy

-   <https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard>
-   posix: <https://www.baeldung.com/linux/posix>


<a id="org43b48d5"></a>

## chroot


<a id="org59523dc"></a>

### chroot


<a id="orgfb1607d"></a>

### btrs subvolumes

file extent-based

can be

-   like any other directory that is accessible to the user
-   ike a separately mounted filesystem (options subvol or subvolid)

Snapshots are subvolumes that share data and metadata with other subvolumes

commands

-   \# btrfs subvolume list .
-   \# btrfs subvolume list /mnt/btrfs

create snapshot of root:

-   \# btrfs subvolume snapshot / *mnt/backup/rootfs*


<a id="orgcd67c65"></a>

### Logical Volume Management (LVM) subvolumes

block-level snapshot


<a id="orgdde41f5"></a>

## filesystem attributes


<a id="orgf3e7b56"></a>

### traditional permissions Unix and POSIX

a 'mode' containing 9 bit flags

-   read, write and execute permission for each of the file's owner, group and all other users
-   setuid and setgid bit flags and a 'sticky' bit flag.
-   file type:
    -   - regular file
    -   d directory
    -   l Symbolic link
    -   p named pipe
    -   s socket
    -   c or b device file
    -   D door ( currently implemented only in Solaris. )


<a id="org82db89a"></a>

### extended attributes (abbreviated xattr)

all major Linux filesystems support
<https://en.wikipedia.org/wiki/Chattr#Attributes>

Linux: chattr and lsattr

BSD: chflags


<a id="org12686a0"></a>

### POSIX ACLs

kernel

-   CONFIG<sub>FS</sub><sub>POSIX</sub><sub>ACL</sub>=y
-   CONFIG<sub>EXT4</sub><sub>FS</sub><sub>POSIX</sub><sub>ACL</sub>=y
-   CONFIG<sub>TMPFS</sub><sub>POSIX</sub><sub>ACL</sub>=y

Gentoo package: sys-apps/acl provides setfacl, getfacl, and chacl utilities.

Some filesystems, such as ext4, XFS, or Btrfs, enable ACLs by default when mounted.

ls command used with the -l option displays a + sign if the listed file uses ACL.

    drwxr-xr-x+ 2 apache  apache       135 Dec 11 17:48 apache2


<a id="orge0710e4"></a>

## SSD

-   When partitioning an SSD, align primary and logical partitions on one-megabyte (1048576 bytes)
    boundaries. If partitions, file system blocks, or RAID stripes are incorrectly aligned and overlap the
    boundaries of the underlying storage's pages, which are usually either 4 KB or 8 KB in size, the device
    controller has to modify twice as many pages than if correct alignment is used.
-   I recommand to use TMPFS for
    -   /tmp
    -   /var/tmp
    -   /var/log
-   NOOP scheduler is the simplest I/O scheduler - kernel option: elevator=noop
-   align partition with HDD blocks and use the same size of sectors if possible
-   use noatime, compress, ssd<sub>spread</sub> and nodiratime mount options
-   btrfs: ssd,discard=async option to mount for btrfs
-   ext4: discard
-   cryptsetup luksOpen &#x2013;allow-discards /dev/thing luks
-   dracut:  rd.luks.allow-discards=<luks uuid>
-   echo "vm.swappiness = 1" >> /etc/sysctl.conf # reduce the tendency of the kernel to perform anticipatory writes to swap
    -   default value of vm.swappiness is 60
    -   represents the percentage of the free memory before activating swap
    -   The lower the value, the less swapping is used and the more memory pages are kept in physical memory.


<a id="org22601f9"></a>

# disk encryption

-   dm-crypt - disk encryption system - administrators can encrypt entire disks, logical volumes, partitions,
    but also single files.
-   Linux Unified Key Setup (LUKS) structure, which allows for multiple keys to access the encrypted data
    -   supports non-LUKS setups as well
    -   LUKS functions are accessed via the cryptsetup program, and use dm-crypt for the back-end processing.


<a id="org27c99ff"></a>

## LUKS partition

-   cryptsetup luksFormat /dev/sdb1
-   cryptsetup luksOpen /dev/sdd1 map<sub>point</sub>
-   mkfs.exfat /dev/mapper/map<sub>point</sub> -n volume<sub>name</sub>
-   mount /dev/mapper/map<sub>point</sub> /mnt/luks<sub>mount</sub>

to close:

-   vgchange -a n vg0
-   cryptsetup close map<sub>point</sub>

for SSD  TRIM:

-   cryptsetup luksOpen &#x2013;allow-discards /dev/thing luks
-   GRUB<sub>CMDLINE</sub><sub>LINUX</sub><sub>DEFAULT</sub>="root<sub>trim</sub>=yes"
-   for dracut: GRUB<sub>CMDLINE</sub><sub>LINUX</sub><sub>DEFAULT</sub>="rd.luks.allow-discards"


<a id="org803d395"></a>

## LUKS with a detached header

to achive plausible deniability - no proof that a block device is encrypted

-   LUKS version in use 1 or 2
-   the cipher name and mode
-   hash algorithm used for the password salt, the master key bits, digest, salt and hash iterations, and the device UUID

&#x2013;header option would be also used each time we try to unlock the device, or when we need to perform other
  operations which modifies it, such as adding, removing or changing a password, or when using luksDump to
  read its content.

-   cryptsetup luksFormat /dev/sdb &#x2013;header luksheader.img
-   cryptsetup luksOpen /dev/sdb sdb-crypt &#x2013;header=luksheader.img

Create partition

-   export GPG<sub>TTY</sub>=$(tty) # optional
-   gpg &#x2013;quiet &#x2013;decrypt /mnt/key/rootkey.gpg | cryptsetup &#x2013;batch-mode &#x2013;key-file - luksFormat /dev/sdX3
    &#x2013;header luksheader.img &#x2013;type luks2  # gpg variant
-   cryptsetup luksDump /dev/sdZn &#x2013;header luksheader.img # Check that the formatting worked
-   gpg &#x2013;quiet &#x2013;decrypt /mnt/key/rootkey.gpg | cryptsetup &#x2013;key-file - luksOpen /dev/sdZn &#x2013;header luksheader.img
    &#x2013;type luks2 gentoo
-   ls /dev/mapper


<a id="org6cd127f"></a>

### create/restore backup header

-   cryptsetup luksHeaderBackup /dev/sdb &#x2013;header-backup-file sdbheaderbackup.img
-   cryptsetup luksHeaderRestore /dev/sdb &#x2013;header-backup-file sdbheaderbackup.img


<a id="orgeb4de7a"></a>

## LVM (Logical Volume Manager)

Create meta devices that provide an abstraction layer between a file system and the physical storage that is
used underneath.

-   lvscan - show
-   vgchange -a n vg0 - decativate volume group
-   vgremove vol<sub>grp</sub> - Delete Volume Group
-   lvremove /dev/vol<sub>grp</sub>/log<sub>grp1</sub> - Delete Logical Volume


<a id="org0e611b5"></a>

### LVM terminology:

-   physical volume (PV) is an underlying storage device (for example, an actual disk partition or loopback
    file), which is managed by LVM. PVs have a special header, and are divided into physical extents.
-   A physical extent (PE) is the smallest allocatable unit of a PV. We will use the default PE size of 4MiB in
    this tutorial.
-   A logical volume (LV) is LVM's equivalent of a partition. It contains logical extents, which are mapped
    one-to-one onto the PEs of contributing physical volumes. Note - unlike a conventional partition, because of
    this architecture an LV can span multiple underlying physical volumes, and a physical volume can host
    multiple logical volumes, if desired. The LV appears as a standard block device, and so can be formatted
    with any normal Linux filesystem (e.g. ext4). We will create LVs for the root directory, the user home
    directory and swap in this tutorial.
-   A volume group (VG) is an administrative unit gathering together a collection of LVs and PVs. We will create
    a single VG containing a single PV, and (as just mentioned) three LVs.

<https://wiki.archlinux.org/index.php/LVM>
<http://www.datadisk.co.uk/html_docs/redhat/rh_lvm.htm>


<a id="org2d0f565"></a>

## Bootable USB Key

1.  Creating a Password-Protected Keyfile for LUKS
    -   export GPG<sub>TTY</sub>=$(tty)
    -   dd if=/dev/urandom bs=8388607 count=1 | gpg &#x2013;symmetric &#x2013;cipher-algo AES256 &#x2013;output /tmp/efiboot/luks-key.gpg
2.  Formatting the New Partition with LUKS
    -   gpg &#x2013;decrypt /tmp/efiboot/luks-key.gpg | cryptsetup &#x2013;cipher serpent-xts-plain64 &#x2013;key-size 512 &#x2013;hash
        whirlpool &#x2013;key-file - luksFormat /dev/sdZn
        -   echo RELOADAGENT | gpg-connect-agent # force check password, clear password from cache
        -   cryptsetup luksDump /dev/sdZn  # Check that the formatting worked, with:
        -   cryptsetup luksHeaderBackup /dev/sdZn &#x2013;header-backup-file /tmp/efiboot/luks-header.img # backup header
3.  open the LUKS volume we just created and partitioning
    -   gpg &#x2013;decrypt /tmp/efiboot/luks-key.gpg | cryptsetup &#x2013;key-file - luksOpen /dev/sdZn gentoo
        -   ls /dev/mapper

<https://wiki.gentoo.org/wiki/User:Sakaki/Sakaki%27s_EFI_Install_Guide/Preparing_the_LUKS-LVM_Filesystem_and_Boot_USB_Key>


<a id="org871fcde"></a>

## simple full

-   GRUB BIOS                       2   MB       no fs       GRUB loader itself
-   /boot                 boot      512 MB       fat32       GRUB and kernel
-   LUKS encrypted                  100%         encrypted   encrypted block device
    -   LVM             lvm       100%
        -   /          root      40  GB       ext4        root filesystem
        -   /var       var       40  GB       ext4        var files
        -   /home      home      100%         ext4        user files

parted -a optimal /dev/sdX

-   unit mib
-   mklabel gpt
-   Create the BIOS partition:
    -   mkpart primary 1 3
    -   name 1 grub
    -   set 1 bios<sub>grub</sub> on
-   Create boot partition. This partition will contain GRUB files, plain (unencrypted) kernel and kernel initrd:
    -   mkpart primary fat32 3 515
    -   name 2 boot
    -   set 2 BOOT on
    -   mkpart primary 515 -1
    -   name 3 lvm
    -   set 3 lvm on
    -   mkfs.vfat -F32 /dev/sdX2
    -   modprobe dm-crypt
    -   cryptsetup luksFormat /dev/sdX3 # aes-xts-plain64 512 bits
    -   cryptsetup luksDump /dev/sdX3
-   Create LVM inside encrypted block
    -   cryptsetup luksOpen /dev/sdX3 lvm
    -   vgcreate vg0 /dev/mapper/lvm  # Create volume group vg0:
    -   lvcreate -L 60G -n root vg0  # Create logical volume for /root filesystem
    -   lvcreate -L 40G -n var vg0  # Create logical volume for /var filesystem
    -   lvcreate -l 100%FREE -n home vg0  # Create logical volume for /home filesystem:

File Systems

-   mkfs.ext4 /dev/mapper/vg0-root
-   mkfs.ext4 /dev/mapper/vg0-var
-   mkfs.ext4 /dev/mapper/vg0-home

<https://wiki.gentoo.org/wiki/Full_Disk_Encryption_From_Scratch_Simplified>


<a id="orga652d9b"></a>

## Dracut

install

-   emerge &#x2013;ask sys-kernel/dracut
-   modules:
    -   emerge sys-fs/btrfs-progs
    -   emerge sys-fs/cryptsetup
    -   emerge app-crypt/gnupg
    -   USE="-gtk -pango -libkms" emerge &#x2013;ask sys-boot/plymouth

basic

-   /usr/lib/dracut/modules.d
-   The most basic dracut module is 99base. In 99base the initial shell script init is defined, which gets run
    by the kernel after initramfs loading
-   If a module passed check, install and installkernel will be called to install all of the necessary files for the module.

trouble shooting:

-   (Repari filesystem):/# cat /run/initramfs/rdsosreport.txt


<a id="orgeabc8ae"></a>

### inspect initramfs

-   dracut &#x2013;print-cmdline
-   lsinitrd /boot/initramfs | less
-   lsinitrd -f etc/cmdline.d/01-default.conf /boot/initramfs # inspect file inside initramfs

help

-   man dracut.kernel
-   man dracut.conf


<a id="orgf35dbf1"></a>

### tmp

systemd-udevd  used greates stack depth

Password (/luks-key.pgp on /dev/sdb1 for /dev/sda3) <code>[1/3]</code>:+eval 'gpg &#x2013;homedir /tmp/gnupg &#x2013;no-mdc-warning
&#x2013;skip-verify &#x2013;quiet &#x2013;logger-file /dev/null &#x2013;batch &#x2013;no-tty &#x2013;passphrase-fd 0 &#x2013;decrypt
/mnt/keydev&#x2013;dev-sdb1&#x2013;luks-key.gpg//luks-key.gpg'

dracut: ++ gpg &#x2013;homedir /tmp/gnupg &#x2013;no-mdc-warning &#x2013;skip-verify &#x2013;quiet &#x2013;logger-file /dev/null &#x2013;batch
&#x2013;no-tty &#x2013;passphrase-fd 0 &#x2013;decrypt /mnt/keydev&#x2013;dev-sdb1&#x2013;luks-key.gpg/luks-key.gpg

ply<sub>cmd</sub>='/sbin/cryptsetup luksOpen -T1 /dev/sda3 luks-5706&#x2026;

line 116 stty : command not found
line 117 stty : command not found

/lib/dracut/lib.sh
/lib/dracut/hook/initqueue/finish/90-

-   sleep 7
-   sleep 10

-   sleep 8


<a id="org4b3c9f4"></a>

### 91crypt-gpg

-   90crypt/cryptroot-ask.sh:
    -   90crypt/crypt-lib.sh: readkey() # Mounts <keydev>, reads key from file <keypath>, optionally processes it
        1.  91crypt-gpg/crypt-gpg-lib.sh: gpg<sub>decrypt</sub>() # ask for massword
            -   crypt-lib.sh: ask<sub>for</sub><sub>password</sub>()
                -   > gpg &#x2013;homedir /tmp/gnupg &#x2013;no-mdc-wanring &#x2013;skip-verify &#x2013;quiet &#x2013;batch &#x2013;no-tty &#x2013;passphrase-fd 0
                    &#x2013;decrypt /mnt/keydev-luks-key.gpg/luks-key.gpg
        2.  loop<sub>decrypt</sub>


<a id="orge1bdba7"></a>

### kernel command line

default - no-hostonly

-   does not contain any system configuration files (except for some special exceptions), so the configuration
    has to be done on the kernel command line
-   you can easily boot from a changed root partition, without the need to recompile the initramfs image

hostonly:

-   store configuration and kernel command line inside initramfs


<a id="org23ab1ea"></a>

## links

-   <https://wiki.gentoo.org/wiki/Dm-crypt>
-   <https://cryptsetup-team.pages.debian.net/cryptsetup/encrypted-boot.html>
-   LUKS forensic review <https://blog.elcomsoft.ru/2022/08/shifrovanie-diskov-v-linux-luks2-argon2-i-apparatnoe-uskorenie/>


<a id="orgd1e7426"></a>

# bootloader

UEFI Secure Boot with systemd’s boot stub - gentoo developer <https://concord.sh/posts/2022/08/uefi-secure-boot-the-right-way/>


<a id="org2af02e5"></a>

## limine

-   formats for boot: FAT\*, ISO9660
    -   bloated bootloaders as a result (eg: GRUB2).
    -   bootloader is capable of reading its own files, configuration, and be able to load kernel/module files from disk
-   boot readable with BLAKE2B checksums - provides as much security as encrypting the kernel does.
-   The EFI executable gets then enrolled or otherwise verified by the Secure Boot loader through, eg., the
    **shim project**. - This prevents modifications being done to the config file (and in turn the checksums
    contained there) from going unnoticed.


<a id="org4782692"></a>

### links

<https://github.com/limine-bootloader/limine/blob/v4.x-branch/PHILOSOPHY.md>


<a id="orgef9904c"></a>

## grub

write boot code to:

-   MBR at disk
-   boot partition - this code can be started if the boot code in MBR is able to do chain loading

<https://www.gnu.org/software/grub/manual/grub/>


<a id="org4ea4b20"></a>

### notes

-   Esc or Shift - call for menu
-   e - edit item


<a id="orgb32e07b"></a>

### disable menu

GRUB<sub>RECORDFAIL</sub><sub>TIMEOUT</sub>=0
GRUB<sub>HIDDEN</sub><sub>TIMEOUT</sub>=0
GRUB<sub>HIDDEN</sub><sub>TIMEOUT</sub><sub>QUIET</sub>=true
GRUB<sub>TIMEOUT</sub>=10


<a id="orgf488172"></a>

## links

-   <https://github.com/LaszloGombos/awesome-initramfs>
-   secure boot <https://www.funtoo.org/Secure_Boot>


<a id="orgb0e1bb7"></a>

# linux<sub>kernel</sub>

sec recomandations   <https://kernsec.org/wiki/index.php/Kernel_Self_Protection_Project/Recommended_Settings>


<a id="org55ad915"></a>

## theory


<a id="org9761b2b"></a>

### initrams

initramfs (initial ram file system) - used to prepare Linux systems during boot before the init process
starts.

-   is a root filesystem that is embedded into the kernel and loaded at an early stage of the boot process
-   provides early userspace which can do things the kernel can't easily do by itself during the boot process
-   initramfs is optional
-   mounting important file systems (by loading the proper kernel modules and drivers) such as /usr or /var,
    preparing the /dev file structure, etc.
-   initramfs ask for the passphrase before it can mount the file systems

for

-   Mounting an encrypted, logical, or otherwise special root partition
-   Providing a minimalistic rescue shell (if something goes wrong)
-   Customize the boot process (e.g., print a welcome message)
-   Load modules necessary to boot (e.g., third party storage drivers)
-   Anything the kernel can't do that's usually handled in user space

By default, the kernel initializes hardware using built-in drivers, mounts the specified root partition, loads
the init system of the installed Linux distribution. The init system then loads additional modules and starts
services until it eventually presents a log in dialog.

cpio archive. This archive is then either embedded directly into the kernel image, or stored as a separate
file which can be loaded by the bootloader during the boot process.

REQUIRED ALWAYS:

-   CONFIG<sub>BLK</sub><sub>DEV</sub><sub>INITRD</sub>=y
-   General setup  &#x2014;>    [\*] Initial RAM filesystem and RAM disk (initramfs/initrd) support

/boot/grub/grub.conf:

-   initrd	/initramfs-5.15.11-gentoo.img

<https://wiki.gentoo.org/wiki/Custom_Initramfs>


<a id="org0ef1385"></a>

## usage <a id="org0d86fa6"></a>

**kernel installation**

1.  eselect kernel list
2.  eselect kernel set 1
3.  make clean
4.  make oldconfig - reads the existing .config file that was used for an old kernel and prompts the
    user for options in the current kernel source that are not found in the file.
5.  make olddefconfig (alternative) - keep old settings, new settings set to default
6.  make menuconfig / make nconfig
7.  make prepare && make modules<sub>prepare</sub> # Некоторые модули не могут быть установлены или подготовлены до того,
    как будет собрано ядро.
8.  make -j3 && make modules<sub>install</sub> && make install # generate /boot/vmlinuz-6.1.57-gentoo /boot/System.map-6.1.57-gentoo
9.  cp .config /.config<sub>tmp</sub>
10. [7.10](#orgac20815)
11. genkernel &#x2013;kernel-config=/.config<sub>tmp</sub> initramfs # if /usr or others located at separate partition or encrypted # or dracut
12. grub-mkconfig -o /boot/grub/grub.cfg
13. grub-install /dev/sda
14. After load: dmesg | grep -Ei "warn|error|crit|fatal"

**chroot and update**
mount -o loop tu.img /mnt/img
/a

**remove kernel**
rm /usr/src/linux-x.x
rm /lib/modules/x.x
rm /boot/vmlinuz-x.x
rm /boot/System.map-x.x
rm /boot/config-x.x
rm /boot/initramfs-genkernel-

**xen**
Device Drivers->Graphical support -> disable Nouveau
Device Drivers->X86 Platform Specific Device Drivers -> disable WMI
cp vmlinux
cp *usr/src/linux*.config
cp /usr/src/linux/Makeefile


<a id="orgc9bdcf8"></a>

## config for dracut <a id="org95735db"></a>

1.  emerge &#x2013;ask sys-apps/pciutils sys-kernel/gentoo-sources
2.  eselect kernel list
3.  eselect kernel set 1
4.  lspci -k > lspci<sub>installcd</sub>
5.  lsmod > lsmod<sub>installcd</sub>
6.  dmesg > dmesg<sub>installcd</sub>
7.  make menuconfig / make nconfig
    1.  processor type and features
        -   disable
            -   support for extended non-PC x86 platforms
            -   AMD optons
            -   CPU microcode loading support
        -   enable
            -   Processor family - Core 2/newer Xeon or Generic x86<sub>64</sub>
    2.  File systems
    3.  Device Drivers  &#x2014;>   Multiple devices driver support (RAID and LVM)  &#x2014;> <\*> Device mapper support
        -   enable
            -   Crypt target support
            -   Snapshot target
            -   Multipath target
                -   I/O Path Selector based on the number of in-flight I/Os
                -   I/O Path Selector based on the service time
    4.  Cryptographic API
        -   enable
            -   XTS support
            -   LZO compression algorithm
            -   Zstd compression algorithm
            -   User-space interface for hash algorithms
            -   User-space interface for symmetric key cipher algorithms
    5.  Generel
        -   enable
            -   Make compiler warnings as errors
    6.  Device Drivers  &#x2014;> Graphic support
        -   enable
            -   Frame buffer Devices &#x2014;>   <\*>    Support for frame buffer devices
                -   disable - all inside
            -   Intel 8xx/9xx/G3x/G4x/HD Graphics
            -   [\*]   Enable capturing GPU state following a hang
            -   [\*]     Compress GPU error state
            -   [\*]   Always enable userptr support
            -   Frame buffers Defices ->
                -   VESA VGA
                -   Simple framebuffer support
    7.  Network
        -   enable
            -   Device Drivers -> X86 Platform Specific Device Drivers - ThinkPad ACPI Laptop Ectras
            -   Device Drivers -> Thermal drivers -> Intel Thermal drivers
            -   Device Drivers -> Network -> leave only enable Ethernet and WLAN
                -   802.1Q VLAN
                -   LAN
                    -   Qualcomm Atheros AR8172 Fast Ethernet
                    -   jme:JMicron JMC2XX ethernet driver
            -   Broadcom 802.11b/g/n BCM43142 - CONFIG<sub>CFG80211</sub><sub>WEXT</sub>=y, package broadcom-sta
                -   Network support -> Wireless -> cfg80211 wireless extension compatibility
        -   ifconfig # should show connections
8.  make all modules as \* - if it is not device specific: check with  lsmod command

<https://wiki.gentoo.org/wiki/Handbook:AMD64/Installation/Kernel>


<a id="org924c350"></a>

## security config <a id="org0130c4a"></a>

-   General setup:
    -   Randomize slab freelist
    -   Page allocator randomization
-   General architecture-dependent options
    -   Randomize kernel stack offset on syscall entry
    -   GCC plugins -> Randomize layout of sensitive kernel structures
-   Enable loadable module - sign all
-   Security options
    -   Restrict uprivileged access tp the kernel syslog
    -   Harden memory copies between kernel and userspace
        -   Allow usercopy whitelist &#x2026; - must be disabled slab<sub>common.usercopy</sub><sub>fallback</sub>=N
    -   Harden common str/mem functions agains buffer overflows
    -   Kernel hardening options
-   Kernel hacking -> disable
    -   Kernel debugging
    -   Generic Kernel Debugging Instruments -> Debugfs default access - set - No access
    -   all debugging


<a id="orgdd8c240"></a>

## hardening

-   <https://kernsec.org/wiki/index.php/Kernel_Self_Protection_Project/Recommended_Settings>
-   <https://pmateti.github.io/Courses/4420/Lectures/Hardening/SecureKernel/>
-   Kernel Hacking
    -   [\*] Kernel debugging
    -   Debug Oops, Lockups and Hangs
        -   [\*] Panic on Oops CONFIG<sub>PANIC</sub><sub>ON</sub><sub>OOPS</sub>=y
            -   (-1) panic timeout CONFIG<sub>PANIC</sub><sub>TIMEOUT</sub>=-1
    -   Memory debugging
        -   Warn or W+X mappings at boot CONFIG<sub>DEBUG</sub><sub>WX</sub>
        -   Detect stack corrution on CONFIG<sub>SCHED</sub><sub>STACK</sub><sub>END</sub><sub>CHECK</sub>=y
        -   KFENCE: low- CONFIG<sub>KFENCE</sub>=y
    -   Debug kernel data structures - all
        -   Debug linked list CONFIG<sub>DEBUG</sub><sub>LIST</sub>=y
        -   CONFIG<sub>DEBUG</sub><sub>SG</sub>=y
        -   CONFIG<sub>BUG</sub><sub>ON</sub><sub>DATA</sub><sub>CORRUPTION</sub>=y
        -   CONFIG<sub>DEBUG</sub><sub>NOTIFIERS</sub>=y
-   Device drivers
    -   IOMMU Hardware Support
        -   IOMMU default domain type - strict
-   General setup
    -   [ ] Core Scheduling for SMT - better to DISABLE!
-   Filesystems
    -   Pseudo filesystems
        -   [ ] /proc/kcore support - DISABLE!!
-   Processor type and features
    -   [ ] kexec system call - DISABLE!!
-   Executable file formats
    -   [ ] Kernel suppoert for MISC binaries - DISABLE!!
-   General architecture-dependent options
    -   Gcc plugins
        -   Generate some entropy during boot and runtime
-   Memory managgement options (for x86<sub>64</sub>)
    -   (65536) Low address space to protect -  CONFIG<sub>DEFAULT</sub><sub>MMAP</sub><sub>MIN</sub><sub>ADDR</sub>=65536


<a id="orga9d59d1"></a>

## nconfig search

-   / - search
-   Up/Down array - next/preview search

make NCONFIG<sub>MODE</sub>=single<sub>menu</sub> nconfig - shows all sub-menus in one large tree.


<a id="orgd36fe25"></a>

## menuconfig search

-   / - search
-   / TAB TAB - help
-   regex supported


<a id="orgaf4813e"></a>

## add binary driver to kernel

CONFIG<sub>EXTRA</sub><sub>FIRMWARE</sub><sub>DIR</sub>="*lib/firmware"
CONFIG<sub>EXTRA</sub><sub>FIRMWARE</sub>="file name in /lib/firmware* separated by space"

1.  Device Drivers
2.  Generic Driver Options
3.  Firmware Loader


<a id="org44d78d5"></a>

## modules parameters

    emerge sys-fs/sysfsutils
    systool -am thinkpad_acpi # get options
    systool -v -m thinkpad_acpi # get current values

<https://wiki.archlinux.org/title/Kernel_module>


<a id="org572c0c6"></a>

## renaming vmlinuz and System.map <a id="orgac20815"></a>

    version=$(cat /usr/src/linux/include/config/kernel.release) # 6.1.0-gentoo
    # old2 to old3
    mv /boot/vmlinuz-${version}-old2 /boot/vmlinuz-${version}-old3
    mv /boot/System.map-${version}-old2 /boot/System.map-${version}-old3
    mv /boot/initramfs-${version}.img-old2 /boot/initramfs-${version}.img-old3
    
    # old to old2
    mv /boot/vmlinuz-${version}-old /boot/vmlinuz-${version}-old2
    mv /boot/System.map-${version}-old /boot/System.map-${version}-old2
    mv /boot/initramfs-${version}.img-old /boot/initramfs-${version}.img-old2
    
    # save to old
    mv /boot/vmlinuz-$version /boot/vmlinuz-${version}-old
    mv /boot/System.map-$version /boot/System.map-${version}-old
    mv /boot/initramfs-${version}.img /boot/initramfs-${version}.img-old
    
    # rename
    mv /boot/vmlinuz /boot/vmlinuz-$version
    mv /boot/System.map /boot/System.map-$version
    mv /boot/initramfs /boot/initramfs-$version


<a id="orgb35741d"></a>

## GNU Linux-libre


<a id="org7b5edef"></a>

## Linux Libre

-   <https://wiki.gentoo.org/wiki/Going_100%25_Libre_with_Gentoo>
-   <https://linux-libre.fsfla.org>


<a id="org67865d5"></a>

### kernel deblob script of GNU Linux-libre project

-   <https://linux-libre.fsfla.org/pub/linux-libre/releases/LATEST-6.6.N/deblob-6.6>
-   <https://linux-libre.fsfla.org/pub/linux-libre/releases/LATEST-6.6.N/deblob-6.6.sign>
-   <https://linux-libre.fsfla.org/pub/linux-libre/releases/LATEST-6.6.N/deblob-check>
-   <https://linux-libre.fsfla.org/pub/linux-libre/releases/LATEST-6.6.N/deblob-check.sign>
-   <https://wiki.gentoo.org/wiki/Kernel/Deblobbing>

mirror: <https://mirror.cyberbits.eu/linux-libre/>
<https://linux-libre.fsfla.org/pub/linux-libre/SIGNING-KEY>


<a id="org4a4d790"></a>

### librewolf

-   <https://librewolf.net/>
-   <https://codeberg.org/librewolf>
-   <https://librewolf.net/docs/faq/>

always based on the latest version of Firefox. does not have auto-update capabilities

-   wget <https://linux-libre.fsfla.org/pub/linux-libre/SIGNING-KEY>
-   gpg &#x2013;import SIGNING-KEY
-   gpg &#x2013;keyserver keys.gnupg.net &#x2013;recv-key BCB7CF877E7D47A7
-   gpg &#x2013;verify deblob-check.sign deblob-check


<a id="org557554a"></a>

## links

<https://kernel.org/>


<a id="orgd7d8f0f"></a>

# keyboard

-   <https://wiki.archlinux.org/title/Xmodmap>
-   <https://cs.gmu.edu/~sean/stuff/n800/keyboard/old.html>

-   xmodmap - only recommended for the simplest tasks - file ./xmodmap
-   setxkbmap -  X keyboard extension (XKB) - should be saved to ~/.profile (or ./xinitrc)
-   xev - find out key kode
-   dumpkeys/loadkeys - console and global


<a id="orgf1466db"></a>

## xmodmap

<https://www.in-ulm.de/~mascheck/X11/xmodmap.html>

-   xmodmap -pke - get current keys config
-   xmodmap ~/.Xmodmap - load from file
-   keysym - a,z,Mode<sub>switch</sub>, Shift
-   keycode - 0xfd,0x5f
-   modifier key types: Shift, Lock, Control, Mod1, Mod2, Mod3, Mod4, Mod5

Each keysym column in the table corresponds to a particular combination of modifier keys ( Only the
first four elements are platform-independent):

1.  Key
2.  Shift+Key
3.  Mode<sub>switch</sub>+Key
4.  Mode<sub>switch</sub>+Shift+Key
5.  ISO<sub>Level3</sub><sub>Shift</sub>+Key or <"Num<sub>Lock</sub>"-key>  or Ctrl
6.  ISO<sub>Level3</sub><sub>Shift</sub>+Shift+Key
7.  <"Num<sub>Lock</sub>"-"Mode<sub>switch</sub>"-key>

ISO<sub>Level3</sub><sub>Shift</sub> may be set with:

-   setxkbmap -option 'lv3:ralt<sub>alt</sub>'


<a id="org90e0ca4"></a>

### .xmodmap

-   ! - comment
-   keysym key<sub>symbol</sub> = keymapping - keysym z = z Z Greek<sub>omega</sub> Greek<sub>OMEGA</sub>
-   keycode key<sub>code</sub> = keymapping - keycode 0xfd = Page<sub>Down</sub>
-   clear modifier
-   add modifier = key<sub>symbol</sub> - assign key to modifier


<a id="org5bb8e91"></a>

### usage Firefox & IJKL

firefox
keycode  18 = 9 parenleft Prior parenleft
keycode  19 = 0 parenright Next parenright
keycode  17 = 8 asterisk 8 Up U20BD
keycode  20 = minus underscore Down underscore
keycode  65 = space NoSymbol Return
keycode 108 = Mode<sub>switch</sub>

ex:
keycode 66 = Mode<sub>switch</sub>
keysym j = j J Left
keysym l = l L Right
keysym i = i I Up
keysym k = k K Down
keysym h = h H Prior
keysym n = n N Next
keysym y = y Y Home
keysym m = m m End


<a id="org03db7c6"></a>

### Ctrl as a CapsLook

./xmodmap:

remove Lock = Caps<sub>Lock</sub>
keysym Caps<sub>Lock</sub> = Control<sub>L</sub>
add Control = Control<sub>L</sub>

or

setxkbmap -option ctrl:nocaps


<a id="orgaaddf73"></a>

## xkb

/usr/share/X11/xkb/symbols/ru = locale

-   setxkbmap -query - get current model and options
-   setxkbmap -option - reset
-   man 7 xkeyboard-config - get options
-   xev -event keyboard - to get keycodes and to check how your keymap works

sections:

-   xkb<sub>keycodes</sub>
-   xkb<sub>types</sub>

xkbcomp -xkb $DISPLAY xkbmap

test -f ~/.Xkeymap && xkbcomp ~/.Xkeymap $DISPLAY

levels:

-   Level 1 is unshifted
-   level 2 is the result of a ⇧ Shift modifier, a shift latch, a ⇫ Shift Lock, a Num Lock, or a ⇬ Caps Lock;
-   and level 3 is the result of a "level three modifier" of some kind.

setxkbmap -model pc101 -layout 'us,ru' -variant ',' -option 'grp:shift<sub>caps</sub><sub>switch</sub>'


<a id="orgc920b4d"></a>

### files to autostart

cp *etc/xdg/xfce4/xinitrc ~*.config/xfce4/xinitrc


<a id="orgbc7d67c"></a>

### LINKS

<https://wiki.archlinux.org/title/X_keyboard_extension>
<https://wiki.gentoo.org/wiki/Keyboard_layout_switching>
<https://askubuntu.com/questions/1006856/how-to-use-mode-switch-and-xmodmap-in-current-ubuntu-versions>
<https://michal.kosmulski.org/computing/articles/custom-keyboard-layouts-xkb.html>


<a id="org6e453a5"></a>

### TODO Ctrl+key

xkb<sub>types</sub> "complete" {
  type "CTRL" {
        modifiers= Control;
        map[Control]= Level2;
        level<sub>name</sub>[Level1]= "Base";
        level<sub>name</sub>[Level2]= "Ctrl";
    };
}
xkb<sub>symbols</sub> "pc+us+ru:2+inet(evdev)+group(shift<sub>caps</sub><sub>switch</sub>)" {
  key <AB07> {
        type[Group1]= "ALPHABETIC",
        type[Group2]= "ALPHABETIC",
        type[Group3]= "PC<sub>CONTROL</sub><sub>LEVEL2</sub>",
        symbols[Group1]= [               m,               M ],
        symbols[Group2]= [ Cyrillic<sub>softsign</sub>, Cyrillic<sub>SOFTSIGN</sub> ],
        symbols[Group3]= [ Return, Return ]
    };
}


<a id="org5ec6d4a"></a>

### Ctrl+Shift problem

<https://unix.stackexchange.com/questions/118228/how-to-bind-super-key-to-ctrlshift-using-xmodmap>

-   xkbcomp $DISPLAY ~/.Xkeymap
-   add to xkb<sub>symbols</sub>, your key = CAPS or LWIN

    key <your key> {
      repeat= no,
      type= "ONE_LEVEL",
      symbols[Group1]= [ Hyper_L ],
      actions[group1]=[ SetMods(modifiers=Shift+Control) ]
    };

-   add to ~/.xinitrc

    test -f ~/.Xkeymap && xkbcomp ~/.Xkeymap $DISPLAY


<a id="org9525179"></a>

### disable capslock

-   setxkbmap -option caps:none


<a id="org679d973"></a>

### Right Alt as Ctrl

setxkbmap -option ctrl:ralt<sub>rctrl</sub>


<a id="orgfd320a6"></a>

## keyboard theory

-   history <http://xahlee.info/kbd/keyboard_hardware_and_key_choices.html>

-   \\\*nix [LF] whereas on a windows operating system you have [CRLF]


<a id="org9791849"></a>

## Tab to right Alt

-   get keys: xmodmap -pke
-   map to right alt: xmodmap -e "keycode 108 = Tab ISO<sub>Left</sub><sub>Tab</sub> Tab ISO<sub>Left</sub><sub>Tab</sub>"
-   reselt setxkbmap -option


<a id="org39c1f13"></a>

## GTK Emacs

<https://wiki.archlinux.org/title/GTK>

xfconf-query -c xsettings -p /Gtk/KeyThemeName -s Emacs


<a id="org4a0a7cf"></a>

## TODO unicode characters and emoji


<a id="orgffd7770"></a>

## rebind

-   <https://man.openbsd.org/xkeyboard-config.7#Position_of_Compose_key>

-   <https://github.com/tbocek/dvorak>

-   <https://github.com/zw963/linux_key_rebinding>
-   <https://github.com/kui/rbindkeys>
-   xfumble, keyfake and rbindkeys

-   <https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/diyism-myboard/myboard.py>


<a id="org98aac96"></a>

### C++ <http://yashiromann.sakura.ne.jp/x11keymacs/index-en.html>

In order to run x11keymacs, you need the following previleges:

-   Read/Write privileges on /dev/uinput, /dev/input/event\*
    -   In case /dev/uinput does not exist, you first need to "modprobe uinput" to create this device file
-   X-Window server access privileges
    -   You need to give X server access privileges to the user that runs this tool, for example using
        xhost or xauth. It is also needed to provide enviroment variable "DISPLAY" correctly.


<a id="org31ef06b"></a>

### C <https://github.com/kawao/x-set-keys>

<https://stackoverflow.com/questions/13821332/why-is-it-better-to-use-glib-data-types-e-g-gint-instead-of-int>

gint - Glib data types - gint and gchar are not defined to be a certain size and so there is no
reason to use them.

import own

-   common
-   x-set-keys
-   config
    
    search keyboard device from /dev/input/event\* and use the first found.


<a id="orged7b2cd"></a>

### XCompose - cannot bind to Return

-   <https://man.archlinux.org/man/Compose.5>
-   <https://wiki.debian.org/XCompose>
-   <https://github.com/ibus/ibus/issues/1876>


<a id="orgfd66c88"></a>

### xkb ISO<sub>Level3</sub><sub>Shift</sub> - require unused key


<a id="org9a272ed"></a>

## pynput - cannot suppress pressed

pip3 install pynput &#x2013;user

1.  pynput.keyboard.\_<sub>init</sub>\_\_
2.  pynput.keyboard.<sub>xorg</sub> (listener)
    -   extension of:
        -   pynput.<sub>util.xorg</sub> (ListenerMixin)
        -   keyboard.<sub>base</sub> (Listener)
            -   pynput.<sub>util</sub>.\_<sub>init</sub>\_\_ (AbstractListener (threading.Thread))
3.  Xlib

.<sub>util</sub>.\_<sub>init</sub>\_<sub>.AbstractListener</sub>

-   .\_<sub>enter</sub>\_\_:
    -   start()
    -   wait()
-   run():
    -   \_run()
    -   \_thread = threading.current<sub>thread</sub>()

<span class="underline">xorg.Listener.\_<sub>init</sub>\_</span>

-   join()
    -

Usages:

1.  -   \_<sub>init</sub>\_\_
    -   \_<sub>enter</sub>\_\_
        1.  start()
            -   run()
                -   \_run()
        2.  wait
    -   .join() -
2.  non-blocking
    -   \_<sub>init</sub>\_\_
    -   start()
        -   run()
            -   \_run()


<a id="orgc8556b6"></a>

## kaymap with dumpkeys/loadkeys

1.  mkdir -p *usr/local/share/kbd/keymaps*
2.  dumpkeys -f > /usr/local/share/kbd/keymaps/personal.map

showkey &#x2013;scancodes
dumpkeys -l
<https://wiki.archlinux.org/title/Linux_console/Keyboard_configuration>

default kernel keymap: /usr/src/linux/drivers/char/defkeymap.map

man keymaps


<a id="org8a06452"></a>

### pressing Caps Lock key once or more sets the keyboard in CapsLock state and pressing either of the Shift keys releases it.

keycode  42 = Uncaps<sub>Shift</sub>
keycode  54 = Uncaps<sub>Shift</sub>
keycode  58 = Caps<sub>On</sub>


<a id="org814acef"></a>

## /usr/share/X11/xkb/symbols/pc

1.  sudo cp /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.bak
2.  rm -rf /var/lib/xkb/\*

<https://ictsolved.github.io/remap-key-in-linux/>


<a id="org4fab501"></a>

## mouse emulation

-   xfce4-settings-accessibility # GUI
-   xfconf-query -c accessibility -p /MouseKeys -s true # switch on
-   xfconf-query -c accessibility -p /MouseKeys -s false # switch off

conf:

-   delay: 50
-   repeat interval: 18
-   acceleration time: 230
-   max speed: 1910
-   acc profile: 0


<a id="org9801f12"></a>

# monitor


<a id="org29ce9ad"></a>

## brightness

monitor

-   x11-apps/xrandr
-   xrandr &#x2013;output DVI-I-1 &#x2013;brightness 0.4

backlight for notebook

-   *sys/class/backlight*????/brightness


<a id="orge5b935e"></a>

## colours

-   xrandr - get outputs
-   xrandr &#x2013;output LVDS1 &#x2013;gamma 1.0:1.0:1.0 # red,green,blue


<a id="org5eef94f"></a>

# software debuging

-   ldd /bin/app - Shared Library Dependencies, unsafe may execute app
    -   objdump -p /path/to/program | grep NEEDED - safer way
        -   readelf -d /bin/ls | grep 'NEEDED' -
    -   pldd <PID> - of runned process
    -   pmap <PID> - memory map of a process, can also show shared library dependencies of a running process.
    -   sudo awk '/\\.so/{print $6}' /proc/<pid of process>/maps | sort -u - runned process


<a id="org4b80f49"></a>

### network requests by Process

strace -f -e trace=network -s 10000 PROCESS ARGUMENTS

To monitor an existing process with a known PID:

strace -p $PID -f -e trace=network -s 10000

-   -f is for "follow new processes"
-   -e defines a filter
-   -s sets the limit of strings to more then 32
-   -p takes the process id to attach to

    port=`lsof -i | grep $process | cut -d' ' -f18 | cut -d: -f2 | cut -d'-' -f1`
    tcpdump -w ${port}.pcap port $port &


<a id="org8e49645"></a>

# processes communcation


<a id="orgc59a279"></a>

## Inter-process communication

-   file
-   signals <https://en.wikipedia.org/wiki/Signal_(IPC)>
-   POSIX mmap, message queues, semaphores,[4] and shared memory
-   Linux Transparent Inter Process Communication (TIPC) - protocol for  cluster-wide operation.


<a id="org9c2db08"></a>

### Unix Domain Sockets

all communication occurs within the kernel. Processes reference a domain socket as an inode, and multiple
 processes can communicate with one socket


<a id="orgc0ea6a5"></a>

### shared memory and message queues:

    ipcs -ap --human

-   -a - all - &#x2013;shmems (shared memory segments), &#x2013;queues, &#x2013;semaphores

1.  links

    <https://pubs.opengroup.org/onlinepubs/9699919799/functions/V2_chap02.html#tag_15_10>


<a id="org64ab97f"></a>

### pipelines

-   **anonymous pipes:** uni-directional channel disappears when the processes are completed:
    -   command1 | command2 | command3
-   **named pipes:** named by making it a file, remains after the processes are completed. messages passed to or
    from a pipe.
    -   mkfifo -m 0666 /tmp/namedPipe
    -   gzip -d < out.gz > /tmp/namedPipe


<a id="org3f9f3f9"></a>

### Message Queues: Message queues provide a way for processes to exchange messages in a way that is guaranteed to be delivered, even if the sending or receiving process is not currently running.


<a id="orga5df113"></a>

## D-Bus

IPC daemon

-   system bus
-   session bus - session separate even for same user.

bus name: org.freedesktop.NetworkManager

unique connection name - When a process sets up a connection to a bus, the bus assigns to the connection a
 special bus name called

-   :1.1553 (the characters after the colon have no particular meaning.

standard interfaces:

-   org.freedesktop.DBus.Peer: provides a way to test if a D-Bus connection is aliv
-   org.freedesktop.DBus.Introspectable: provides an introspection mechanism by which a client process can, at
    run-time, get a description (in XML format) of the interfaces, methods and signals that the object
    implements.
-   org.freedesktop.DBus.Properties: allows a D-Bus object to expose the underlying native object properties or
    attributes, or simulate them if it does not exist
-   org.freedesktop.DBus.ObjectManager: when a D-Bus service arranges its objects hierarchically, this interface
    provides a way to query an object about all sub-objects under its path, as well as their interfaces and
    properties, using a single method call


<a id="org9620177"></a>

## links

<https://en.wikipedia.org/wiki/Inter-process_communication>


<a id="org8330d2c"></a>

# install tarball - (from source, install sources)

-   /opt if it is a binary install
-   /usr/local if it's a from source install.

steps

-   tar xzf -C /usr/local/src program.tar.gz # source code
    -   tar xjf program.tar.bz2 -C /opt # binary
    -   &#x2013;directory == -C
    -   z - unzip
-   tar xzf <file>.tar.[bz2|gz] &#x2013;directory=/opt
-   cd *opt*
-   sudo chown -R $USER /opt/program
-   gedit ~/.local/share/applications/waterfox.desktop
-   ./configure or ./configure &#x2013;prefix=/usr/local

make

-   make
-   make install #It’ll probably be stored under /usr/local
-   export PATH=$PATH:/opt/local/bin:/usr/local/bin

cmake

-   mkdir build
-   cd build
-   cmake .. -DCMAKE<sub>BUILD</sub><sub>TYPE</sub>=Release -DCMAKE<sub>INSTALL</sub><sub>PREFIX</sub>=/usr/local/bin/folder
-   cmake &#x2013;build .

unisntall:

-   make uninstall
-   cmake: xargs rm < install<sub>manifest.txt</sub> # to remove


<a id="org459c872"></a>

# GPG - GNU Privacy Guard

-   <https://www.gnupg.org/gph/en/manual.html>
-   <https://riseup.net/en/security/message-security/openpgp/gpg-best-practices>


<a id="orgf329034"></a>

## install

chmod 0700 ~/.gnupg/


<a id="org84c2ebd"></a>

## about

GNU Privacy Guard (GnuPG system, GnuPG or GPG)

compliant with

-   RFC 4880
-   the IETF standards-track specification of OpenPGP.

interoperable with GnuPG


<a id="orgd8ccbad"></a>

## theory


<a id="orgd1b63dc"></a>

### Криптосистема с открытым ключом

разновидность асимметричного шифрования

-   **открытый ключ** - передаётся по открытому каналу и используется для проверки ЭП и для шифрования сообщения.
-   **закрытый ключ** - Для генерации ЭП и для расшифровки сообщения

Виды асимметричных шифров:

-   **RSA (Rivest-Shamir-Adleman)** - best suited for verification and encryption.
-   DSA (Digital Signature Algorithm) - best suited for signing in and decryption.
-   Elgamal (Шифросистема Эль-Гамаля) - semantically secure
-   Diffie-Hellman (Обмен ключами Диффи — Хелмана)
-   ECDSA (Elliptic Curve Digital Signature Algorithm) — алгоритм с открытым ключом для создания цифровой подписи.
-   ГОСТ Р 34.10-2012
-   Rabin
-   Luc
-   McEliece
-   Криптосистема Уильямса

In public key cryptography, a key is actually a pair: a public key, and a private key. You use the private key
to digitally sign files, and others use the public key to verify the signature. Or, others use the public key
to encrypt something, and you use the private key to decrypt it.


<a id="orgfc20d0e"></a>

### Цифровая подпись Digital signature

-   authentication - who sent
-   integrity - was not altered

steps:

-   hash of message
-   шифрование с закрытым ключом => подпись
-   сектификат(какой ключ) + подпись + Данные

расшифрование с открытым ключом и сверка хешей

асимметричные схемы
FDH (Full Domain Hash), вероятностная схема RSA-PSS (Probabilistic Signature Scheme), схемы стандарта PKCS#1 и другие схемы, основанные на алгоритме RSA


<a id="org551c91a"></a>

### keyservers

Идеально - делиться ключами из рук в руки

просто хранят ключи доступные по fingerprint

The major keyservers synchronize themselves, so it is fine to pick a keyserver close to you on the
Internet and then use it regularly for sending and receiving keys.

hkp:// or x-hkp:// - 11371 not port 80.

hkps:// (HKP over TLS)

-   pool.sks-keyservers.net	SKS Keyserver Pool: federated, no verification, keys cannot be deleted.
-   <https://keys.mailvelope.com/> Mailvelope Keyserver: central, verification of email IDs, keys can be deleted.
-   <https://keys.openpgp.org/>  central, verification of email IDs, keys can be deleted, no third-party
    signatures (i.e. no Web of Trust support).

Чтобы ключи не залеживались на почту приходит запрос об актуальности ключа


<a id="orgbfae0ab"></a>

### TODO signing keys


<a id="orgbe8bf0b"></a>

### subkeys

When generating an OpenPGP key with GnuPG, per default a primary key (pair), also called master-key, and a
sub-key (pair) are created. The primary key, also called master-key, contains one or more user-IDs (name,
email-address) and is used for for signing. The sub-key, signed by the primary key and thus confirmed to
belong to its user-IDs, is used for encryption/decryption.

Why?

-   for security: The primary key pair is quite important
-   primary key pair - on your main computer
-   You publish the subkeys on the normal keyservers, and everyone else will use them instead of the primary
    keys for encrypting messages or verifying your message signatures
-   You will need to use the primary keys only in exceptional circumstances, namely when you want to modify your
    own or someone else's key.

<https://wiki.debian.org/Subkeys>


<a id="org9521972"></a>

## therms

uid - USER-ID - string after: uid [ultimate]

**kaypares**

-   primary keypair and then zero or more additional subordinate keypairs
-   they are bundled and can often be considered simply as one keypair.

**revocation certificate** - published to notify others that the public key should no longer be used

-   created right after keypare creation
-   revoked public key can still be used to verify signatures made by you in the past

**key ring** - is a set of keys, public or private. (public keyring - public keys of others stored)

**fingerprint** or frp - SHA-1 hash of key and additional data

-   **key-id** or hash-key - portion of the SHA-1 fingerprint at the end of fingerprint. &#x2013;keyid-format=long/short
-   examples:
    -   fingerprint: 0D69 E11F 12BD BA07 7B37  26AB 4E1F 799A A4FF 2279
    -   long id:                                    4E1F 799A A4FF 2279
    -   short id:                                             A4FF 2279

two key pairs: (1, 3) and (2, 4):

1.  pub &#x2013; public primary key (master-key) - used for for signing
2.  sub &#x2013; public sub-key - signed by the primary key and thus confirmed to belong to its user-IDs -
    used for encryption/decryption.
3.  sec &#x2013; secret primary key
4.  ssb &#x2013; secret sub-key


<a id="orgbdcd233"></a>

## create key


<a id="orgedd9421"></a>

## list-keys

-   supported algorithms: gpg &#x2013;version
-   gpg &#x2013;list-keys: List all keys from the public keyrings, or just the keys given on the command line.
-   gpg &#x2013;list-secret-keys: List all keys from the secret keyrings or just the ones given on the command line
-   gpg &#x2013;list-public-keys
-   gpg &#x2013;list-sigs: Same as &#x2013;list-keys, but the signatures are listed too.
-   &#x2013;list-keys &#x2013;with-colons
-   &#x2013;keyid-format {none|short|0xshort|long|0xlong}
-   

full key: gpg &#x2013;armor &#x2013;export email@kernel.org | less

pub   dsa1024/17072058 2004-07-20 [SC] [expires: 2022-01-01]

-   public primary key
-   SC primary and E subordinate keyparis ? algoritm and key size
-   key-id SHORT - last part of fingerprint.
-   created date
-   usage flags:
    -   SC - signing and certification.
    -   E - used for encryption.
    -   0x01 	“C” 	Key Certification
    -   0x02 	“S” 	Sign Data
    -   0x04 	“E” 	Encrypt Communications
    -   0x08 	“E” 	Encrypt Storage
    -   0x10 	  	Split key
    -   0x20 	“A” 	Authentication
    -   0x80 	  	Held by more than one person
-   expires

sections:

-   pub - public, followed by fingerprint
-   sec - secret, followed by fingerprint
-   uid -
-   ssb - Secret subkey
-   sub - public subkey - (used for encryption)

When generating an OpenPGP key with GnuPG, per default a primary key (pair), also called master-key, and a
sub-key (pair) are created.

<https://davesteele.github.io/gpg/2014/09/20/anatomy-of-a-gpg-key/>


<a id="org0e5d884"></a>

## Correct way to replace a GPG key

The original idea was that people with keys would get together in person-to-person meet-ups called
**key signing parties** to sign each other's keys and build a **web of trust**.


<a id="org0d606a9"></a>

## USE CASES

-   <https://keys.openpgp.org/about/usage>
-   <https://www.howtogeek.com/427982/how-to-encrypt-and-decrypt-files-with-gpg-on-linux/>


<a id="orgf959192"></a>

### create keys

-   gpg &#x2013;gen-key - too stupid
-   gpg &#x2013;expert &#x2013;full-generate-key
    -   Curve 448 - is the best
-   gpg &#x2013;gen-revoke &#x2013;armor &#x2013;output=revocation<sub>certificate.asc</sub> user-id
    -   armor - ASCII output suitable for copy. default - binary format

(9) ECC (sign and encrypt) **default**

(5) NIST P-521

P-521 =  secp521r1ansip521r1

-   Elliptic Curve Digital Signature Algorithm
-   Hash Algorithm: SHA-512
    
    Curve 448 - highly secure against both current and potential future threats, including those posed by quantum
     computing.
-   This curve offers one of the highest levels of security among all ECC options listed.
-   It provides an equivalent security level to a 7680-bit RSA key, making it highly resistant to both classical
    and quantum attacks.

Curve 25519: Equivalent to a 3072-bit RSA key in terms of security.

Export:

-   gpg &#x2013;output public.key &#x2013;armor &#x2013;export user-id/fingerprint - generage ASCII version of a user's public key
    to file public.key (to exchange)

1.  upload

    -   <https://keys.openpgp.org/upload/submit>
        -   keyserver hkp://zkaan2xfbuxia2wpf7ofnkbz6r5zdbbvxbunvp5g2iebopbfc4iqmbad.onion
    -   <https://pgp.mit.edu/>
    -   <https://keyserver.ubuntu.com/pks/add>


<a id="orgcbca01a"></a>

### delete keys

gpg &#x2013;delete-key fingerprint


<a id="org8d6b716"></a>

### keyserver get key

Steps:

1.  gpg &#x2013;keyserver keyserver &#x2013;search-keys string<sub>to</sub><sub>match</sub>
    -   string<sub>to</sub><sub>match</sub> - by the owner’s name or email address
    -   gpg &#x2013;keyserver hkps://keys.openpgp.org
    -   gpg &#x2013;keyserver hkps://keyserver.ubuntu.com
2.  

Чтобы не указывать keyserver:

-   ~/.gnupg/gpg.conf: keyserver hkps://keys.openpgp.org

Правильыне Шаги:

1.  gpg &#x2013;keyserver hkps://keys.openpgp.org &#x2013;recv-key '<fingerprint>'
2.  You should verify with the individual owner the full key fingerprint of their key.
3.  check key by fingerpint:
    -   gpg &#x2013;fingerprint '<fingerprint>'

You must periodically refresh keys. You might do this every few months or when you receive a key
from a new contact.

-   gpg &#x2013;keyserver hkps://keys.openpgp.org &#x2013;refresh-keys

To locate the key of a user, by email address:

-   gpg &#x2013;auto-key-locate hkps://keys.openpgp.org &#x2013;locate-keys releng@gentoo.org

To refresh all your keys (e.g. new revocation certificates and subkeys):

-   gpg &#x2013;refresh-keys

-   gpg &#x2013;keyserver pool.sks-keyservers.net &#x2013;send-keys key-id - register your key with a
    public PGP key server, so that others can retrieve your key without having to contact you directly
-   gpg &#x2013;keyserver pool.sks-keyservers.net &#x2013;search-keys key-id
-   gpg &#x2013;keyserver pool.sks-keyservers.net &#x2013;recv-keys 0xBB572E0E2D182910
    -   ТЫ должен проверить fingerprint primary key из другого источника и потом выполнить trusted


<a id="org8ec1318"></a>

### upload your key

gpg &#x2013;export your<sub>address</sub>@example.net | curl -T - <https://keys.openpgp.org>
or
gpg &#x2013;export your<sub>address</sub>@example.net > my<sub>key.pub</sub>


<a id="org33e29e4"></a>

### trust level for key

gpg &#x2013;edit-key blake

-   > trust
-   > 3
-   > quit


<a id="orgd6a7c54"></a>

### import key

-   gpg &#x2013;import ~/mygpgkey<sub>pub.gpg</sub>
-   or: gpg &#x2013;allow-secret-key-import &#x2013;import ~/mygpgkey<sub>sec.gpg</sub>
-   check key manually!:
    -   gpg &#x2013;list-keys
    -   gpg &#x2013;armor &#x2013;export user-id/fingerpr/email


<a id="orgb9543ec"></a>

### verify .sign

gpg2 &#x2013;locate-keys torvalds@kernel.org gregkh@kernel.org

-   gpg &#x2013;verify [signature-file] [file]
-   gpg &#x2013;verify install-amd64-minimal-20201001T120249Z.iso.DIGESTS.asc install-amd64-minimal-20201001T120249Z.iso.DIGESTS

gpg: not a detached signature

-   To make the "WARNING" message go away you can indicate that you choose to trust that key using TOFU:
    -   gpg2 &#x2013;tofu-policy good 38DBBDC86092693E
    -   gpg2 &#x2013;trust-model tofu &#x2013;verify linux-4.6.6.tar.sign # &#x2013;trust-model tofu required for first time only


<a id="org384d9d9"></a>

### export public for share

Echo your public key to stdout.

-   gpg &#x2013;export &#x2013;armor nick@example.com

Write your public key to a file.

-   gpp &#x2013;export &#x2013;armor &#x2013;output nickexample.gpg.pub nick@example.com


<a id="org67e117b"></a>

### Backup and restore your GPG key pair

backup just your private key, which includes your public key too:

-   gpg &#x2013;export-secret-keys &#x2013;armor &#x2013;output nickexample.gpg.backup.asc nick@example.com

backup the GPG trust database

-   gpg &#x2013;export-ownertrust > /path/to/trustdb-backup.txt

**restore**

1.  gpg -import nickexample.gpg.backup.asc
2.  gpg &#x2013;edit-key name # Replace "name" with yours #  the restored GPG key will have an “unknown” trust level
3.  $ gpg> trust # Choose "ultimate" or other trust level
4.  $ gpg> save # Save the changes

**restore your GPG trust database**

1.  rm ~/.gnupg/trustdb.gpg
2.  gpg &#x2013;import-ownertrust < /path/to/trustdb-backup.txt


<a id="org0925a34"></a>

### sign keys (after importing)

If you don’t do this, you can still use it to encrypt and decrypt messages from and to that
person. But gpg will ask you every time whether you wish to proceed because the key is unsigned.

gpg &#x2013;sign-key mary-geek@protonmail.com


<a id="org19bd65b"></a>

### encripting file

Without public key of recipient

-   gpg &#x2013;armored &#x2013;symmetric &#x2013;cipher-algo AES256 ./file
-   or zip -re out.txt.zip out.txt

With public key of recipient

1.  wget <https://keys.openpgp.org/vks/v1/by-fingerprint/xxxxxxxxxxxxxxxx>
2.  gpg &#x2013; import xxxxxxxxxxxxxxxxxxxxxxxx
3.  **encrypt and sign**
    -   gpg &#x2013;encrypt &#x2013;sign &#x2013;armor &#x2013;recipient mary-geek@protonmail.com FILE.txt

Encrypt with own private key, decrypt with own public key: No meaning in that.

Encrypt with own public key, decrypt with own private key:

    gpg --encrypt --encrypt-to your_email@example.com message.txt
    gpg message.txt.gpg


<a id="orgb61b35c"></a>

### decrypt file

gpg &#x2013;decrypt coded.asc > plain.txt


<a id="org5c47fcc"></a>

### encrypt/decrypt with password (symmetric) (armored)

-   gpg &#x2013;armored -c &#x2013;cipher-algo AES256 ./file
    -   -c = &#x2013;symmetric
-   gpg &#x2013;decrypt ./file.gpg # binary
-   gpg &#x2013;decrypt ./file.asc # armored

Cypher: 3DES, CAST5, BLOWFISH, AES, AES192, AES256, TWOFISH, CAMELLIA128, CAMELLIA192, CAMELLIA256


<a id="org243175e"></a>

### generate password

gpg &#x2013;gen-random &#x2013;armor 1 14


<a id="org071ac70"></a>

### password storage in file

gpg2 -q &#x2013;for-your-eyes-only &#x2013;no-tty -d ~/.mailpass.gpg


<a id="org75be111"></a>

## trust model (Web of trust or Trust on first use)

default - Web of trust -  responsibility for validating public keys is delegated to people you trust

-   Trust on First Use (TOFU)

trust levels

-   **unknown** - Nothing is known about the owner's judgment in key signing. Keys on your public keyring
    that you do not own initially have this trust level.
-   **none** - The owner is known to improperly sign other keys.
-   **marginal** - The owner understands the implications of key signing and properly validates keys
    before signing them.
-   **full** - The owner has an excellent understanding of key signing, and his signature on a key would
    be as good as your own.
-   **ultimately**


<a id="org41e07ae"></a>

## GPG agent

cache passphrase entered and allow applications to use GPG concurrently


<a id="org2ea4b89"></a>

## как шифрвоать

Добрый день.

Пришли мне зафированный файл FILE.txt:

1.  wget <https://keys.openpgp.org/vks/v1/by-fingerprint/074C37CF05B861D4C4CC3AC20C5A9B0DA76B2719>
2.  gpg &#x2013;import 074C37CF05B861D4C4CC3AC20C5A9B0DA76B2719
3.  gpg &#x2013;encrypt &#x2013;armor &#x2013;recipient chepelev<sub>vs</sub>@bel-rusnarbank.ru FILE.txt

Зашифрованный файл:
FILE.txt.asc

1.  берет мой публичный ключ
2.  добавляет его в GnuPG
3.  шифрует им файл

gpg &#x2013;decrypt coded.asc > plain.txt


<a id="org3a0fd78"></a>

## TODO Emacs EasyPG Assistant

<https://www.gnu.org/software/emacs/manual/html_node/epa/index.html>


<a id="org7c88cbc"></a>

## links

<https://www.kernel.org/doc/html/latest/process/maintainer-pgp-guide.html>


<a id="org3160d5d"></a>

### extend validity of the main key

-   gpg &#x2013;edit-key 0x12345678
-   gpg> expire
-   gpg> save

You have to make a decision about extending validity of vs. replacing the subkey(s). Replacing them gives you limited forward security (limited to rather large time frames). If that is important to you then you should have (separate) subkeys for both encryption and signing (the default is one for encryption only).

<https://unix.stackexchange.com/questions/177291/how-to-renew-an-expired-keypair-with-gpg>


<a id="org90081ae"></a>

# The X Window System (X11 or X)

X.Org Foundation leads the X project (MIT License)

Competitior:

-   Wayland - modern replacement for X display server
-   Mir

Xorg is an open source implementation of the X Window System.

-   Screen is a physical monitor and hardware
    -   There can be multiple screens for each display or workstatio
-   Display - A set of screens for a single user with one keyboard and one pointer (usually a mouse)
-   root window - partially or completely covered by child windows
-   pixmaps - off-screen storage of graphics objects
-   drawables - Windows and pixmaps together


<a id="org1cfc412"></a>

## terms

-   **window manager:** on-screen windows and window decorations.
-   **desktop environment:** window manager + apps.


<a id="orgadf8b99"></a>

## lock screen

x11-misc/xautolock <https://packages.gentoo.org/packages/x11-misc/xautolock>

xautolock -time 1 -locker 'xflock4'

/etc/sudoers.d/user:

-   u ALL=(ALL) NOPASSWD:/usr/bin/killall telegram-desktop,/usr/bin/vlock -n,/usr/local/bin/usblock.sh

/usr/local/bin/usblock.sh:

-   \#!/bin/sh
-   echo 0 | tee /sys/bus/usb/devices/\*/authorized

Alt+F1 -> Settings -> Session and startup -> Application Autostart -> add

-   xautolock -time 10 -locker 'sudo vlock -n ; sudo /usr/local/bin/usblock.sh'


<a id="org20d6b27"></a>

## unused terminals

count childrens of processes:

    for line in $(ps aux | grep ' bash' | grep Ss | awk '{print $2}') ; do
        child_count=$(ps --no-headers --ppid=$line | grep -v emacsclient | wc -l)
        echo $line $child_count
    
        if [ $child_count -eq 0 ] ; then
    	# parent_pid=$(ps -o ppid= -p $line)
    	# ps -u -p $line
    	kill -9 $line
        fi
    done


<a id="org67b7d97"></a>

## amdgpu

<https://stackoverflow.com/questions/76350531/dual-gpu-setup-xorg-on-intel-integrated-gpu-nvidia-gpu-for-gaming>

/etc/X11/xorg.conf

<https://wiki.archlinux.org/title/AMDGPU>

<https://bbs.archlinux.org/viewtopic.php?id=185894>

<https://man.archlinux.org/man/amdgpu.4>

xrandr &#x2013;setprovideroffloadsink 'AMD Radeon HD 8500M Series @ pci:0000:01:00.0' Intel


<a id="org4e5bbd7"></a>

### vga<sub>switcheroo</sub>

<https://help.ubuntu.com/community/HybridGraphics>

-   discrete GPU - games
-   integrated GPU - in the CPU

show

    cat /sys/kernel/debug/vgaswitcheroo/switch

Turns on the GPU that is disconnected (not currently driving outputs), but does not switch outputs.

    sudo echo ON > /sys/kernel/debug/vgaswitcheroo/switch

Connects integrated graphics with outputs.

    sudo echo IGD > /sys/kernel/debug/vgaswitcheroo/switch

Connects discrete graphics with outputs.

    sudo echo DIS > /sys/kernel/debug/vgaswitcheroo/switch

Turns off the graphics card that is currently disconnected.

    sudo echo OFF > /sys/kernel/debug/vgaswitcheroo/switch

Queues a switch to integrated graphics to occur when the X server is next restarted.

    sudo echo DIGD > /sys/kernel/debug/vgaswitcheroo/switch

Queues a switch to discrete graphics to occur when the X server is next restarted.

    sudo echo DDIS > /sys/kernel/debug/vgaswitcheroo/switch


<a id="org00ad0c0"></a>

## xorg.conf.d

*etc/X11/xorg.conf.d* directory (recommended) or the legacy /etc/X11/xorg.conf file

-   read the files in numeric order. 10-evdev.conf will be read before 20-synaptics.conf, and so on.

X :2 -configure

<https://wiki.gentoo.org/wiki/Xorg.conf#Device>


<a id="org2494d04"></a>

## TODO tilling

<https://github.com/jaywilkas/xpytile>


<a id="orgb5689fa"></a>

# xfce4


<a id="orgeeb7672"></a>

## history

twm -> FVWM -> xfce


<a id="org099fe61"></a>

## Emacs - conflict

Settings -> Settings Editor -> xfce4-keyboard-shortcuts

keys:

-   C-M-d


<a id="org5231074"></a>

## xfce4-terminal


<a id="org41fafdb"></a>

### hotkeys

Ctrl+Shift+s - set title

CONFIGURE!!

    C-S-k - scroll one line up
    A-S-k - scroll page up
    A-S-n - scroll page down


<a id="orga97203a"></a>

### set title and execute command

current active:

    xdotool getactivewindow set_window --name $(echo "${PWD/#$HOME/\~}")

at start:

    v="command ;"
    xfce4-terminal --initial-title "my title" -e "bash -c \"${v}\""
    exit


<a id="orgde21871"></a>

## insert unicode

C-S-u	hex code

compose keys ? /usr/share/X11/locale/en<sub>US.UTF</sub>-8/Compose

-   Preferences → Keyboard → Layouts tab → Layout Options → Compose key position.
-   setxkbmap -option 'compose:menu'


<a id="org700bbc7"></a>

## bind keys to applications

-   can not create several aplications for Firefox - it keeps updating its own name

firefox:

    #!/usr/bin/env sh
    xdotool search "Mozilla Firefox"
    if [ $? == 0 ] ; then
       xdotool search "Mozilla Firefox" windowactivate
       exit
    fi
    firefox

terminal:

    #!/usr/bin/env sh
    
    n=$@
    xdotool search "term$n"
    
    if [ $? == 0 ] ; then
       xdotool search "term$n" windowactivate
       exit
    fi
    
    xfce4-terminal --initial-title term$n

\*\*


<a id="org053d11b"></a>

## accessibility - mouse emulation

-   **Acceleration delay:** 45
-   **Repeat interval:** 18
-   **Acceleration time:** 230
-   **Maximum speed:** 2000
-   **Acceleration profile:** 0


<a id="org247163c"></a>

# Wayland

Stacking/Tiling hybrid view management

<https://github.com/djpohly/dwl>


<a id="org90d2dd7"></a>

## terms

-   **Tiling:** none of the windows overlapping. (keyboard centeric)
-   **Stacking:** (aka floating) traditional desktop metaphor
-   **dynamic:** can dynamically switch between tiling or floating window layout.


<a id="orgcec720b"></a>

# cron

-   emerge &#x2013;ask sys-process/dcron

Cron checks:

-   *var/spool/cron* - undividual user cron files
-   *etc/cron.d* - system services and apps
-   /etc/anacrontab - configuration file for anacron
-   /etc/crontab - cron tasks not edited with crontab -e (old)
-   /var/spool/cron/crontabs/<user> - per user edited with crontab -e (right way)
-   cron task scripts: - place scripts to execute here
    -   *etc/cron.hourly*
    -   *etc/cron.daily*
    -   *etc/cron.weekly*
    -   *etc/cron.monthly*

Commands:

-   crontab -l
-   crontab -e
-   export VISUAL=nano - change editor
-   export EDITOR=nano - change editor

    apt install cron
    systemctl enable cron
    systemctl start cron
    crontab -e
    0 0 * * * systemctl restart tor


<a id="org4568ce8"></a>

## format

Wildcard, specifies every possible time interval

-   The comma (,): To specify a list of values
-   Asterisk (\*): To specify all possible values for a field
-   /	Specify a periodicity/frequency using a slash
-   Dash (-): To specify a range of values

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Symbol</th>
<th scope="col" class="org-left">Description</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">'*'</td>
<td class="org-left">Wildcard, specifies every possible time interval</td>
</tr>


<tr>
<td class="org-left">,</td>
<td class="org-left">List multiple values separated by a comma.</td>
</tr>


<tr>
<td class="org-left">'-'</td>
<td class="org-left">Specify a range between two numbers, separated by a hyphen</td>
</tr>


<tr>
<td class="org-left">'/'</td>
<td class="org-left">Specify a periodicity/frequency using a slash</td>
</tr>
</tbody>
</table>

Special:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">@reboot</td>
<td class="org-left">at startup</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">@yearly</td>
<td class="org-left">midnight of 1 January</td>
<td class="org-left">0 0 1 1 *</td>
</tr>


<tr>
<td class="org-left">@annually</td>
<td class="org-left">( == @yearly)</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">@monthly</td>
<td class="org-left">at midnight of the first day of the month</td>
<td class="org-left">0 0 1 * *</td>
</tr>


<tr>
<td class="org-left">@weekly</td>
<td class="org-left">midnight on Sunday morning</td>
<td class="org-left">0 0 * * 0</td>
</tr>


<tr>
<td class="org-left">@daily</td>
<td class="org-left">once a day at midnight</td>
<td class="org-left">0 0 * * *</td>
</tr>


<tr>
<td class="org-left">@midnight</td>
<td class="org-left">( == @daily)</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">@hourly</td>
<td class="org-left">once an hour at the beginning of the hour</td>
<td class="org-left">0 * * * *</td>
</tr>
</tbody>
</table>


<a id="orgd0826a3"></a>

## Examples:

30 4 echo "It is now 4:30 am."
0 22 echo "It is now 10 pm."
30 15 25 12 echo "It is 3:30pm on Christmas Day."
30 3 \* \* \* echo "Remind me that it's 3:30am every day."
0 \* \* \* \* echo "It is the start of a new hour."
0 6 1,15 \* \* echo "At 6am on the 1st and 15th of every month."
0 6 \* \* 2,3,5 echo "At 6am on Tuesday, Wednesday and Thursdays."
59 23 \* \* 1-5 echo "Just before midnight on weekdays."
0 \*/2 \* \* \* echo "Every two hours."
0 20 \* \* 4 echo "8pm on a Thursday."
0 20 \* \* Thu echo "8pm on a Thursday."
\*/15 9-17 \* \* 2-5 echo "Every 15 minutes from 9am-5pm on weekdays."
@yearly echo "Happy New Year!"


<a id="orgbcf6981"></a>

# vi/vim

<https://www.tutorialspoint.com/vim/vim_quick_guide.htm>

-   ~/<sub>vimrc</sub> or ~/.vimrc - config file
    
    set nu    Now Vim will show line numbers when file is opened. We’ll add more options to this file latter on.

copy:

1.  v - visual mode
2.  y/d - copy/cut
3.  p/P - paste


<a id="org4314068"></a>

## insert modes

Enter insert mode:

-   i/I	insert before cursor/begin of line
-   a/A 	Append text after cursor/end of line
-   o/O	Append new line below/above
-   s/(S or cc)	Remove char/whole line
-   C	remove all after cursor

-   r     replace one character
-   R	Enter Replace mode
-   J	remove \n at the end of line


<a id="org1378b43"></a>

## Navigation

-   jkl;
-   Ctrl+b scroll back
-   Ctrl+f scroll forward
-   0/$	Move cursor to the begining/end of current line
-   :n 	Jump to the nth line
-   :0 	Jump to the start of file
-   :$	Jump to the end of file
-   w/e	Move cursor to the beginning/end of the next word
-   b	Move cursor to the beginning of the previous word

:jumps

-   Ctrl + o Jump back to the previous position
-   Ctrl + i Jump to the next position


<a id="org56d37c5"></a>

## other

-   Esc	Enter command mode, esc insert mode
-   u	Undo changes
-   Ctrl + r	Redo changes
-   yy	Copy a line
-   p	Paste the content of the buffer
-   [[ or gg	Move to the beginning of a file
-   ]] or G	Move to the end of a file
-   :w	Save changes
-   :q!	Force quit Vim discarding all changes
-   dd	Delete line
-   /	Search, n- next N-previous

to line number:

-   vi +36 foo.c
-   :36

copy area:

1.  v	visual mode
2.  y	copy
3.  p	paste


<a id="orgdfcfa33"></a>

## plugins

~/.vim  - direcotry

The plugins kept in  ~/.vim/pack/\*/start folder loaded into Vim memory when it starts

-   Any directory under ~/.vim/pack is considered a package.
-   The plugins under start/ folder are loaded on startup, while the plugins under opt/ folder are loaded manually
-   :packadd pluginopt1 - load plugin from vendor/opt


<a id="org38f8604"></a>

## old

In normal mode
`============`

:23,30m200  &#x2013; Move a section of code to another line.

df, (reverse dF,)   &#x2013; Delete all characters till , on the current line.

I  &#x2013; Go to beginning of the line as insert mode.

$   &#x2013; In command mode, go to end of the line.

gg  &#x2013; Go to beginning of the file
G  &#x2013; Go to end of the file.

CTRL + o, CTRL + i  &#x2013; Jumps back and forward, very useful.

CTRL + h/j/k/l  &#x2013; Move the selection to different split windows and
MinibuferExplorer.

CTRL + F    &#x2013; Page down scroll.
CTRL + B    &#x2013; Page back scroll.

номера					 :set number       :set nonumber
номера курсора				:set ruler
подсветка результатов поиска  :set hlsearch
строка  :(0)    $

Ctrl-U   CTRL + B &#x2013; Page back scroll
Ctrl-D   CTRL + F &#x2013; Page down scroll.

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

---

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

---

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
modeline &#x2013; моды в самом файле
for python:

<http://habrahabr.ru/post/64224/>
tabstop (по умолчанию 8) — количество пробелов, которыми символ табуляции отображается в тексте. Оказывает влияние как на уже существующие табуляции, так и на новые. В случае изменения значения, «на лету» применяется к тексту.

softtabstop (0) — количество пробелов, которыми символ табуляции отображается при добавлении. Несмотря на то, что при нажатии на Tab вы получите ожидаемый результат (добавляется новый символ табуляции), фактически в отступе могут использоваться как табуляция так и пробелы. Например, при установленных tabstop равной 8 и softtabstop равной 4, троекратное нажатие Tab приведет к добавлению отступа шириной 12 пробелов, однако сформирован он будет из одного символа табуляции и 4 пробелов.

shiftwidth (8) — по умолчанию используется для регулирование ширины отступов в пробелах, добавляемых командами >> и <<. Если значение опции не равно tabstop, как и в случае с softtabstop, отступ может состоять как из символов табуляций так и из пробелов. При включении опции — smarttab, оказывает дополнительное влияние.

smarttab (выключена) — в случае включения этой опции, нажатие Tab в начале строки (если быть точнее, до первого непробельного символа в строке) приведет к добавлению отступа, ширина которого соответствует shiftwidth (независимо от значений в tabstop и softtabstop). Нажатие на Backspace удалит отступ, а не только один символ, что очень полезно при включенной expandtab. Напомню: опция оказывает влияние только на отступы в начале строки, в остальных местах используются значения из tabstop и softtabstop.

expandtab (выключена) — в режиме вставки заменяет символ табуляции на соответствующее количество пробелов. Так же влияет на отступы, добавляемые командами >> и <<.

autoindent (выключена) — копирует отступы с текущей строки при добавлении новой.

smartindent (выключена) — делает то же, что и autoindent плюс автоматически выставляет отступы в «нужных» местах. В частности, отступ ставится после строки, которая заканчивается символом {, перед строкой, которая заканчивается символом }, удаляется перед символом #, если он следует первым в строке и т.д. (подробнее help 'smartindent').

set list - показать конец строки

Syntastic is a Vim plugin that brings syntax checking to Vim.


<a id="orgb94bd1d"></a>

# nano

-   CTRL + 6 and ALT + 6 to copy
-   Ctrl+U	to paste


<a id="org41c1a49"></a>

# ffmpeg

**list devices**

-   ffmpeg -devices

**slicing video**

-   ffmpeg -i input.mp4 -ss 00:00:05 -c copy -to 00:00:07 sliced-output.mp4

**flac to mp3**

-   ffmpeg -i "path.flac" -ab 320k -id3v2<sub>version</sub> 3 -map<sub>metadata</sub> 0 a.mp3

**flac to mp3 part sliced**

-   ffmpeg -accurate<sub>seek</sub>  -ss 00:02:52 -i "/mnt/media/Tim Skold/2021 Skold - Dies Irae flac/03 The End is Near.flac" -t 00:00:12 -ab 320k -id3v2<sub>version</sub> 3 -map<sub>metadata</sub> 0  file.mp3

**clear metadata**

-   ffmpeg -i s.mp4 -map<sub>metadata</sub> -1 -c:v copy -c:a copy t.mp4

'-i', self.filename,      # input file
               '-y',                     # overwrite existing output file
               '-map', '0',              # copy everything all streams from input to output
               '-codec', 'copy',         # don't decode anything, just copy (speed!)
               '-loglevel', 'panic',     # Don't show log
               '-hide<sub>banner</sub>',           # hide the banner
               '-map<sub>metadata</sub>', '-1',    # remove supperficial metadata
               '-map<sub>chapters</sub>', '-1',    # remove chapters
               '-disposition', '0',      # Remove dispositions (check ffmpeg's manpage)
               '-fflags', '+bitexact',   # don't add any metadata
               '-flags:v', '+bitexact',  # don't add any metadata
               '-flags:a', '+bitexact',  # don't add any metadata

-i FILE -y -map 0 -codec copy  -hide<sub>banner</sub> -map<sub>metadata</sub> -1 -map<sub>chapters</sub> -1 -disposition 0 -fflags +bitexact -flags:v +bitexact -flags:a +bitexact FILE

**remove image from mp3**

-   ffmpeg -i Lilu45<sub>Kino3.mp3</sub> -map 0:a -c:a copy -map<sub>metadata</sub> -1 Lilu45<sub>Kino4.mp3</sub>

**get info**

-   ffmpeg -i file
-   ffprobe file

**to gif**

-   ffmpeg -ss 1900.0 -t 6.5 -i file.mkv -filter<sub>complex</sub> "[0:v] fps=12,scale=480:-1,split [a][b];[a] palettegen [p];[b][p] paletteuse" SmallerStickAround.gif
-   <https://engineering.giphy.com/how-to-make-gifs-with-ffmpeg/>

**record audio from a running application using**

-   ffmpeg -f alsa -channels 2 -sample<sub>rate</sub> 44100 -i loopout out.wav

**record webcam**

-   ffmpeg -f alsa -ac 2 -i default -itsoffset 00:00:00.5 -f video4linux2 -s 320x240 -r 25 -i /dev/video0 out.mpg
    -   ffmpeg -thread<sub>queue</sub><sub>size</sub> 9000 -f alsa -ac 2 -i default -itsoffset 00:00:00.5 -video<sub>size</sub> 800x600 -r 25 -i /dev/video0 out.mpg -y ; mpv out.mpg
-   ffmpeg -f v4l2  -framerate 30  -input<sub>format</sub> mjpeg -i /dev/video0 -f alsa -i hw:0,0 -c:a pcm<sub>s16le</sub> -c:v mjpeg -b:v 64000k output.avi -map 0:v -vf "format=yuv420p" -f xv display
    -   ffmpeg -thread<sub>queue</sub><sub>size</sub> 200 -framerate 23 -input<sub>format</sub> mjpeg -i /dev/video0 -f alsa -i mic -c:a pcm<sub>s16le</sub> -c:v libopenh264 -b:v 7000k -af "highpass=f=100, lowpass=f=3000" output.avi -map 0:v -vf "format=yuv420p" -f xv display -y ; mpv output.avi
    -   ffmpeg -thread<sub>queue</sub><sub>size</sub> 200 -framerate 23 -input<sub>format</sub> mjpeg -i /dev/video0 -f alsa -i mic -c:a pcm<sub>s16le</sub> -c:v libopenh264 -b:v 7000k -af "volume=20,highpass=f=200,lowpass=f=1000" output.avi -map 0:v -vf "format=yuv420p" -f xv display -y ; mpv output.avi
    -   ffmpeg -s 640x480 -thread<sub>queue</sub><sub>size</sub> 200 -framerate 24 -input<sub>format</sub> mjpeg -i /dev/video0 -f alsa -i mic -c:a pcm<sub>s16le</sub> -c:v libopenh264 -b:v 7000k -af "volume=20,anlmdn,highpass=f=100,lowpass=f=5000" output.avi -map 0:v -vf "format=yuv420p" -f xv display -y ; mpv output.avi
-   ffmpeg -f alsa -i mic -f v4l2 -s 640x480 -i /dev/video0 -c:a copy -c:v libopenh264 -crf 23 -preset ultrafast output.avi
-   ffmpeg -s 640x480 -thread<sub>queue</sub><sub>size</sub> 2000 -framerate 5 -input<sub>format</sub> mjpeg -i /dev/video0 -f alsa -i mic -c:a pcm<sub>s16le</sub> -c:v libopenh264 -b:v 5000k -af "volume=20,anlmdn,highpass=f=100,lowpass=f=5000" -preset ultrafast output.avi -map 0:v -vf "format=yuv420p" -f xv display -y ; mpv output.avi
-   with overlay of camera over display:
    -   ffmpeg -f x11grab -framerate 6 -video<sub>size</sub> 640x480 -i :0.0 -s 320x240 -thread<sub>queue</sub><sub>size</sub> 2000 -framerate 5 -input<sub>format</sub> mjpeg -i /dev/video0 -f alsa -i mic -c:a pcm<sub>s16le</sub> -c:v libopenh264 -b:v 5000k -af "volume=20,anlmdn,highpass=f=100,lowpass=f=5000" -preset ultrafast -filter<sub>complex</sub> "[0:v][1:v] overlay=W-w:H-h:format=yuv420" output.avi -map 1:v -vf "format=yuv420p" -f xv display -y ; mpv output.avi

**remove audio**

-   ffmpeg -i infile.mp4 -c copy -an out.mp4


<a id="org46e92f1"></a>

# camera

kernel:

-   CONFIG<sub>SHMEM</sub>

    USE=qt5 emerge --ask media-libs/libv4l

    qv4l2

test

    qvidcap

<https://wiki.gentoo.org/wiki/Webcam>


<a id="orged0a9b5"></a>

# screen recorder

-   media-video/simplescreenrecorder
-   recordmydesktop - CPU
-   <https://git.dec05eba.com/gpu-screen-recorder/>


<a id="org65a3c8b"></a>

# Nginx

alternative to Apache and lighttpd.

-   NGINX<sub>MODULES</sub><sub>HTTP</sub>
-   package.use: www-servers/nginx NGINX<sub>MODULES</sub><sub>HTTP</sub>: fastcgi

/var/www/localhost/htdocs/index.html

rc-service nginx start or /etc/init.d/nginx start

Verify bound addresses and ports:

-   netstat -tulpen | grep :80


<a id="org22a05ea"></a>

## install


<a id="org0e9ec03"></a>

## reverse proxy

You need rewrite URL in body of response. You can do in with sub module:

    location /admin/ {
        proxy_pass http://localhost:8080/;
        sub_filter "http://your_server/" "http://your_server/admin/";
        sub_filter_once off; # all strings
        sub_filter_last_modified off; # do not touch Last-Modified header
        # sub_filter_types text/html; # set by default
    }

May be useful:

-   proxy<sub>redirect</sub> / *admin*
-   nginx<sub>substitutions</sub><sub>filter</sub> - regex filter


<a id="org04ce8db"></a>

### ex

    
    server {
    listen      80;
    server_name example.com www.example.com;
    index       index.php;
    root        /var/www/example.com/public    # fallback for index.php
    location / {
    try_files $uri $uri/ /index.php?$query_string;
    }
    location /blog {
      proxy_pass http://blog.domain.com;proxy_http_version                 1.1;
      proxy_cache_bypass                 $http_upgrade;
    
      # Proxy headers
      proxy_set_header Upgrade           $http_upgrade;
      proxy_set_header Connection        "upgrade";
      proxy_set_header Host              $host; # or $http_host;
      proxy_set_header X-Real-IP         $remote_addr;
      proxy_set_header X-Forwarded-For   $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
      proxy_set_header X-Forwarded-Host  $host; # or $server_name;
      proxy_set_header X-Forwarded-Port  $server_port;
    
      # Proxy timeouts
      proxy_connect_timeout              60s;
      proxy_send_timeout                 60s;
      proxy_read_timeout                 60s;
    }


<a id="org1ef49cc"></a>

### links

-   <https://kinsta.com/blog/reverse-proxy/>
-   <http://www.xhaus.com/headers>
-   <https://nginx.org/en/docs/http/ngx_http_proxy_module.html?&_ga=1.74997266.187384914.1443061481#proxy_pass>
-   <https://nginx.org/en/docs/http/ngx_http_sub_module.html#sub_filter>


<a id="orgd7791ec"></a>

## config

<https://nginx.org/en/docs/>

/etc/nginx/nginx.conf (specified in /etc/init.d/nginx)


<a id="org8e8c3c9"></a>

### terms

-   directives - lines of config (into simple directives and block directives ({}).)
    -   directive consist of name and parameters (spaces - div), ends with (;)
-   context - directives in block directive. the main context - outside of any block


<a id="org9ace29a"></a>

### validate the configuration file

/usr/sbin/nginx -t


<a id="org203c963"></a>

### blocks

server - virtual server with input ports and ips

-   server<sub>name</sub>
-   listet (in server) - set address and port

http - provide context for http directives

location (in server, location) - set URI and block of directives for it. most common: root

root (in http,server,location) -  Sets the root directory for requests.


<a id="orga63ba3a"></a>

### variables

The ability to set variables at runtime and control logic flow based on them is part of the rewrite module and not a general feature of nginx.

-   set $variable value;
-   Context: 	server, location, if

how to set variables by hands:

    # variables: # global
    # set varname meaning ; # varname
    
    
    # variables: # repeat local
    # set varname meaning ; # varname
    $varname
    # A-S-% $varname meaning ; # varname

1.  ex

        if ($http_user_agent ~ MSIE) {
            rewrite ^(.*)$ /msie/$1 break;
        }
        
        if ($http_cookie ~* "id=([^;]+)(?:;|$)") {
            set $id $1;
        }
        
        if ($request_method = POST) {
            return 405;
        }
        
        if ($slow) {
            limit_rate 10k;
        }
        
        if ($invalid_referer) {
            return 403;
        }

2.  links

    -   <https://nginx.org/en/docs/http/ngx_http_rewrite_module.html#set>
    -   <http://nginx.org/en/docs/faq/variables_in_config.html>
    -   <https://dev.yorhel.nl/nginx-confgen/man>


<a id="orgb5ddbe5"></a>

### Most useful variables:

-   **$host:** 1) host name from the request line, 2) host name from the “Host” request header field 3) server name matching a request
-   **$http<sub>host</sub>:** Value of the “Host:” header in the request (same as all $http\_<headername> variables)
-   **$https:** “on” if connection operates in SSL mode, or an empty string otherwise
-   **$request<sub>method</sub>:** request method, usually “GET” or “POST”
-   **$request<sub>uri</sub>:** full original request URI (with arguments)
-   **$scheme:** request scheme, e.g. “http” or “https”
-   **$server<sub>name</sub>:** name of the server which accepted a request
-   **$server<sub>port</sub>:** port of the server which accepted a request


<a id="org5997acb"></a>

## logging

directives:

-   error<sub>log</sub> logs/error.log warn;
    1.  to a particular file, stderr, or syslog (default: logs/error.log)
        -   error<sub>log</sub>  syslog:server=unix:/var/log/nginx.sock debug;
    2.  minimal severity level of messages to log
-   access<sub>log</sub> /spool/logs/nginx-access.log upstream<sub>time</sub>;

Settings in the main context are always inherited by other configuration levels (http, server, location)

Error Log Severity Levels

-   emerg: Emergency messages when your system may be unstable.
-   alert: Alert messages of serious issues.
-   crit: Critical issues that need to be taken care of immediately.
-   error: An error has occured. Something went wrong while processing a page.
-   warn: A warning messages that you should look into it.
-   notice: A simple log notice that you can ignore.
-   info: Just an information messages that you might want to know.
-   debug: Debugging information used to pinpoint the location of error.

default error.log format:
log<sub>format</sub> combined '$remote<sub>addr</sub> - $remote<sub>user</sub> [$time<sub>local</sub>] '
                    '"$request" $status $body<sub>bytes</sub><sub>sent</sub> '
                    '"$http<sub>referer</sub>" "$http<sub>user</sub><sub>agent</sub>"';
<https://nginx.org/en/docs/http/ngx_http_log_module.html#log_format>
<https://docs.nginx.com/nginx/admin-guide/monitoring/logging/>


<a id="org949a487"></a>

## troubleshooting

1 peer closed connection in SSL handshake (104: Connection reset by peer) while SSL handshaking to upstream

-   proxy<sub>ssl</sub><sub>server</sub><sub>name</sub> on;


<a id="orgd5ae969"></a>

# Debian

-   **list installed packages:** dpkg-query -l, apt list &#x2013;installed
-   **list all packages:** apt search keyword or apt-cache search keyword
-   **list file of package:** dpkg-query -L packagename
-   **install:** apt-get -s install emacs
-   **apt-cache search package:** available package
-   apt-get clean

alias update="sudo apt-get udate && sudo apt-get upgrade && sudo apt-get dist-upgrade"

---

laoding:

1.  systemctl disable lightdm
2.  /etc/default/grub GRUB<sub>CMDLINE</sub><sub>LINUX</sub><sub>DEFAULT</sub> = "text"
3.  update-grub
4.  /etc/systemd/system/getty.target.wants/getty@tty1.service
    -   TTYVTDisallocate=no


<a id="orgaa12d0f"></a>

## apt

apt is newer

apt -y install &#x2026;

List packages by criteria	apt list

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">Update the package repository</td>
<td class="org-left">apt-get update</td>
<td class="org-left">apt update</td>
</tr>


<tr>
<td class="org-left">Upgrade packages</td>
<td class="org-left">apt-get upgrade</td>
<td class="org-left">apt upgrade</td>
</tr>


<tr>
<td class="org-left">Upgrade packages and remove unnecessary dependencies</td>
<td class="org-left">apt-get dist-upgrade</td>
<td class="org-left">apt full-upgrade</td>
</tr>


<tr>
<td class="org-left">Disable update for packages</td>
<td class="org-left">apt-mark hold &#x2026;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>


<a id="org0914b02"></a>

## tigervnc

under user

-   tigervncserver -localhost no


<a id="org75f9b65"></a>

## samba

для работы в Thunar: apt-get install smbclient gvfs-fuse gvfs-backend


<a id="org95553e3"></a>

## iptables

<https://wiki.debian.org/iptables>

iptables-save - show filtered, processed tables and export rules


<a id="org6e04590"></a>

## sound

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


<a id="orgf24d355"></a>

## proxy

-   


<a id="org57ed912"></a>

## ssh

-   apt-get install openssh-server
-   systemctl start ssh

WinSCP


<a id="org72c83a2"></a>

## dwarf-fortress

1.  apt install libncursesw5
2.  in ~/.config/dwarf-fortress/init.txt:

Display not found and PRINT<sub>MODE</sub> not set to TEXT, aborting.

-   nano .config/dwarf-fortress/init.txt
    -   [PRINT<sub>MODE</sub>:2D] to [PRINT-MODE:TEXT].

run:

    python3 /usr/games/dwarf-fortress


<a id="org7bf2f95"></a>

### TODO 50 installation

-   apt-install dwarf-fortress
-   wget <https://bay12games.com/dwarves/df_50_13_linux.tar.bz2>
-   sha512: 5617b5edf96c8b614af86cbd0f2aa001b3e8773b5c2fafa23b2e1e945e19021b9b3b6752ef8996d97d22d6abd41c52cb74ba50da823436e7b0b5bdd08add4b64
-   emacs readme.txt
-   ./run<sub>df</sub>


<a id="orgf2511aa"></a>

### troubleshooting

Didn't find any flavor of libncursesw, attempting libncurses (not working)

-   apt-install libncursesw5

error while loading shared libraries: libSDL2-2.0.so.0: cannot open shared object file: No such file or directory

-   apt install libsdl2-2.0-0
-   apt install libsdl2-dev

/dwarfort: error while loading shared libraries: libSDL2<sub>image</sub>-2.0.so.0: cannot open shared object file: No such file or directory

-   apt install libsdl2-image-2.0-0

I am trying to play Dwarf Fortress game with [PRINT<sub>MODE</sub>:TEXT] option over SSH and some characters on terminal
 not displaying or displaying as (?) question marks. How to fix that?

-   Solution: LANG=C
-   also this characters should be able to be displayed <http://www.orenwatson.be/cp437.htm>


<a id="org185e7c3"></a>

## make swap from image <a id="org5baa304"></a>

    swapon --show
    free -h
    fallocate -l 1G /swapfile
    chmod 600 /swapfile
    mkswap /swapfile
    swapon /swapfile
    cp /etc/fstab /etc/fstab.back
    echo '/swapfile none swap sw 0 0' | tee -a /etc/fstab

determines how often the swap space should be used 0 to 100. Higher value means the swap space will be used
 more frequently:

    cat /proc/sys/vm/swappiness
    echo 'vm.swappiness=10' | tee -a /etc/sysctl.conf

    SWAP=500MB
    fallocate -l $SWAP /swapfile
    chmod 600 /swapfile
    mkswap /swapfile
    swapon /swapfile
    cp /etc/fstab /etc/fstab.back
    echo '/swapfile none swap sw 0 0' | tee -a /etc/fstab
    cp /etc/sysctl.conf /etc/sysctl.conf.back
    echo 'vm.swappiness=10' | tee -a /etc/sysctl.conf
    
    swapon --show


<a id="orgd189ab5"></a>

## links

<https://debian-handbook.info/>


<a id="org855728b"></a>

# Ubuntu

**user**

-   useradd &#x2013;create-home &#x2013;shell=/bin/bash -ou 0 -g 0 user
-   sudo gpasswd -d u sudo
-   reboot

**audio**

-   apt-get install alsa pulseaudio
-   usermod -a -G audio u
-   groups - check current user groups
-   alsamixer - unmute m key. up arrow
-   amixer set Master 5%+
-   amixer set Master 5%-

**archiver**

-   apt-get install xarchiver

**nvidia**

-   tty not working:
    -   GRUB<sub>CMDLINE</sub><sub>LINUX</sub><sub>DEFAULT</sub>="apt-setup/multiverse=false ipv6.disable=1 console=tty1 noplymouth nomodeset vga=792"
    -   <https://en.wikipedia.org/wiki/VESA_BIOS_Extensions#Linux_video_mode_numbers>


<a id="org5296349"></a>

## network

-   GRUB<sub>CMDLINE</sub><sub>LINUX</sub><sub>DEFAULT</sub>="ipv6.disable=1"
-   /etc/netplan/50-cloud-init.yaml

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

**iptables**

-   iptables-save > *etc/iptables*&#x2026;

**DNS**

-   systemctl disable systemd-resolved.service
-   /etc/resolv.conf - nameserver 1.2.3.4
-   nslookup finds ip, but ping doesnt <https://askubuntu.com/questions/81797/nslookup-finds-ip-but-ping-doesnt>
    -   /etc/nsswitch.conf : hosts:          files dns


<a id="org3f2ab20"></a>

## security

**rootless Xorg**

-   after installation of nvidia proprietary drivers
-   /etc/X11/Xwrapper.config
-   needs<sub>root</sub><sub>rights</sub>=no
-   startx &#x2013; vt1

**/etc/fstab** proc    /proc    proc    defaults,hidepid=2     0     0


<a id="org5df64a6"></a>

## time

-   ntp not used
-   <https://help.ubuntu.com/lts/serverguide/NTP.html#timedate-info>
-   /etc/systemd/timesyncd.conf: NTP=0.arch.pool.ntp.org 1.arch.pool.ntp.org 2.arch.pool.ntp.org 3.arch.pool.ntp.org
-   systemctl restart systemd-timesyncd.service


<a id="orgdbd4db1"></a>

## thumbrd

alias thumb-disable="chmod u-rwx *home/u2*.cache/thumbnails"
alias thumb-enable="chmod u+rwx *home/u2*.cache/thumbnails"


<a id="orgbbf5dc4"></a>

## printer linux

HP LaserJet P3004/P3005 PCL6 Class Driver
192.168.2.230

steps:

-   \# apt-get install hplip
-   \# hp-setup -i 192.168.1.27


<a id="orga6cba69"></a>

## kerberos and Active Directory

-   \# apt-get install krb5-config krb5-user
-   \# dpkg-reconfigure krb5-config

/etc/krb5.conf:

-   default<sub>realm</sub> = INT.RUSNARBANK.RU
-   kdc = srv-dc-03.int.rusnarbank.ru
-   admin<sub>server</sub> = srv-dc-03.int.rusnarbank.ru

connect:

-   $ echo 'password' | kinit Chepelev<sub>VS</sub>@INT.RUSNARBANK.RU
-   $ klist    - проверить

**Thunderbird address book**

-   Name:Rusnarbank
-   Hostname: srv-dc-03.int.rusnarbank.ru
-   Base DN: DC=int,DC=rusnarbank,DC=ru
-   port: 389
-   Advanced Login methid:kerberos
-   Advanced search file: empty!


<a id="orgaf8a3bb"></a>

## windows share

-   sudo apt install cifs-utils


<a id="orgb159d62"></a>

## VSCODE

-   wget -q <https://packages.microsoft.com/keys/microsoft.asc> -O- | sudo apt-key add -
-   sudo add-apt-repository "deb [arch=amd64] <https://packages.microsoft.com/repos/vscode> stable main"
-   sudo apt install code
-   $ code
-   во вкладке расширений - @builtin php
-   отключить PHP Language Features - стандартные возможности убоги
-   установить например: PHP Intelephense,


<a id="org90ecd41"></a>

# Astra Linux - Debian derivative

-   apt, .deb - packages
-   десктопная, мобильная и серверная
-   ядро Linux с усиленной самозащитой (hardened) с интеграцией наработок проекта KSPP (Kernel Self Protection Project).

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">"Special Edition"</th>
<th scope="col" class="org-left">"Common Edition"</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">средствами защиты информации (СЗИ)</td>
<td class="org-left">репозиторий в The Linux Foundation</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>

features:

-   Очистка оперативной и внешней памяти и гарантированное удаление файлов. при их освобождении, используя
    маскирующие последовательности.
-   Вывод на печать документов без маркировки субъектами доступа, работающими в мандатном контексте с грифом
    выше «несекретно», невозможен.
-   parlogd - Регистрация событий
-   Xorg - Fly - Механизмы защиты информации - Mandatory access control, MAC - изоляция приложений
-   Контроль целостности - функция хеширования в соответствии с ГОСТ Р 34.11-94.1.

repository: основной репозиторий (репозиторий установочного диска, main), базовый репозиторий (base) и
 расширенный репозиторий (extended).


<a id="orgc499404"></a>

## Special Edition

Режимы защищенности:

-   «Базовый» («Орел», несертифицированная версия)
-   «Усиленный» («Воронеж»)
    -   мандатного контроля целостности
    -   замкнутая программная среда
    -   подсистема безопасности PARSEC - разработана на основе верифицированной формальной модели безопасности управления доступом и информационными потоками (МРОСЛ ДП-модели).
-   «Максимальный» («Смоленск»).
    -   мандатное управление доступом для локальной и серверной инфраструктуры.


<a id="org1ef8db6"></a>

## мандатным контролем целостности (ГОСТ Р 59453.1-2021)

распределение информации или компонент в системе по заданным уровням целостности, исходя из которых
 назначаются права доступа на изменение объекта.

PARSEC обеспечивает защиту высокоцелостных компонент от несанкционированной записи из низкоцелостных компонент

пользователь root в Astra Linux Special Edition работает на минимальном уровне целостности 0.


<a id="org0126d2c"></a>

## замкнутая программная среда

ограничить запуск исполняемых файлов и загрузку исполняемых библиотек только теми, которые подписаны ЭЦП на
 доверительном ключе, что обеспечивает защиту от загрузки файла или библиотеки без корректной ЭЦП.


<a id="orgc6d4276"></a>

## Мандатное управление доступом

принцип управления доступом, суть которого заключается в распределении информации по заданным уровням
 (конфиденциальности) и выполнении трех основных условий.

-   чтение данных доступно пользователю или процессу, который обладает уровнем конфиденциальности таким же, как

у этих данных, или выше.

-   запись данных доступна процессу, обладающему таким же или меньшим уровнем конфиденциальности по сравнению с данными.
-   действия процессов не приводят к утечке данных с высокого уровня конфиденциальности на низкий.

Контроль за соблюдением правил мандатного контроля целостности и мандатного управления доступом реализуется
 посредством монитора обращений PARSEC.


<a id="orgfeb21b8"></a>

## Технологии разработки безопасного ПО и формальная модель управления доступом

основа подсистемы безопасности PARSEC — МРОСЛ ДП-модель, описанная на языке формального метода Event-B.

-   Rodin IDE with ProB plugin
-   Frama-C code analyzis
-   Secure Software Development Lifecycle (SSDL) - practice


<a id="orgcbcd85d"></a>

## other

-   РЕД ОС - базировавшийся на CentOS 6, POSIX, LSB
-   ALT Linux -  являются отдельной ветвью развития Linux


<a id="org7c66e5b"></a>

# REDHAT/AlmaLinux

RPM Package Manager - Under the hood, YUM depends on RPM (Red Hat Package Manager) .rpm

DNF (Dandified YUM) - next-generation version of the Yellowdog Updater, Modified (yum)

-   rpm -ql package # get installed files of installed packages
-   yum install ?.rpm
-   yum list installed | grep # check if installed package
-   yum search package # search in all available packages
-   yum repolist # attached repositories
-   dnf group list # package groups
-   dnf group info Xfce # info on group
-   dnf group list &#x2013;installed # installed groups
-   dnf group install Xfce or dnf install @Xfce

repos

-   dnf repolist
-   dnf config-manager &#x2013;disable cuda-rhel9-x86<sub>64</sub> # disable repository

files:

-   /etc/yum.conf
-   *etc/yum* # configs
-   *etc/yum.repos.d* # repos info

pycharm installation:

-   dnf install snapd
-   systemctl start snapd
-   ln -s /var/lib/snapd/snap /snap
-   sudo snap install pycharm-community &#x2013;classic


<a id="orgd3e277e"></a>

## cudnn

nvidia-installer &#x2013;uninstall

repository cuda-rhel9-x86<sub>64</sub>

-   <https://developer.nvidia.com/cuda-11-8-0-download-archive>
-   dnf install libcudnn8-devel
-   dnf install cuda-cudart-12-2

<https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html#verify>


<a id="org9c1a6db"></a>

## tigervnc server

-   dnf install tigervnc-server-minimal
-   cp /lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@:1.service
-   add 5901/tcp to firewall
-   echo ':1=myuser' >> /etc/tigervnc/vncserver.users
-   $ echo 'session=xfce' > ~/.vnc/config

<https://www.ibm.com/support/pages/how-configure-vnc-server-red-hat-enterprise-linux-8>


<a id="orgc99d282"></a>

## container toolkit

-   distribution=rhel9.2 && curl -s -L <https://nvidia.github.io/libnvidia-container/$distribution/libnvidia-container.repo> | sudo tee /etc/yum.repos.d/nvidia-container-toolkit.repo
-   dnf install nvidia-container-toolkit.repo
-   dnf install nvidia-container-toolkit-base-1.12.0-1
-   dnf install libnvidia-container1-1.12.0-1
-   dnf install nvidia-container-toolkit-1.12.0-1
-   dnf install nvidia-container-runtime-3.12.0
-   containerd config default | tee /etc/containerd/config.toml


<a id="org59e255a"></a>

## nftables

The service reads rules from /etc/sysconfig/nftables.conf.

    nft list ruleset > /etc/sysconfig/nftables.conf


<a id="org6c0c34a"></a>

# termux

Java, GPLv3 only

-   pkg upgrade
-   pkg install man
-   pkg install iproute2
-   pkg install termux-api


<a id="orgfb1548e"></a>

## how it works

Programs are executed natively.

application that launches the command line program by using system call execve(2) and redirecting standard
 input, output and error streams onto the display.

All provided packages are cross-compiled with Android NDK and only have compatibility patches to get them working on Android

Termux is single-user -  username may look like u0<sub>a231</sub> and cannot be changed as it is derived from the user id by Bionic libc.

All our packages (except root-only ones) are patched to drop any multiuser, setuid/setgid and other similar
 functionality. We also changed default ports for server packages: ftpd, httpd and sshd have their default
 ports set to 8021, 8080 and 8022 respectively.

You have free read-write access to all application components including $PREFIX. Be careful since it is very
 easy to break things by accidentally deleting or overwriting files in $PREFIX.

If Android OS reports support only of 32-bit ABIs, Termux will perform a 32-bit installation only.


<a id="orgce3252b"></a>

## terms

-   prefix - /data/data/com.termux/files/usr - as /
-   home - /data/data/com.termux/files/home - as /home/user


<a id="org48ce4b8"></a>

## ps

Termux can list only its own processes. You can see more only under rooted shell or ADB.

-   some processes, result can't be terminated with pkill <NAME> or killall <NAME> but only with kill <PID>.


<a id="org03112f4"></a>

## ways to transfer files

ssh


<a id="orgd63d1c6"></a>

## metasploit

-   apt install curl
-   curl -LO <https://raw.githubusercontent.com/Hax4us/Metasploit_termux/master/metasploit.sh>
-   chmod 777 metasploit.sh
-   ./metasploit.sh


<a id="orgb190910"></a>

## termux-

-   termux-am - Android Oreo-compatible am command reimplementation.
-   termux-am-socket
-   termux-backup
-   termux-change-repo
-   termux-fix-shebang
-   termux-info
-   termux-open
-   termux-open-uri
-   termux-reload-settings
-   termux-reset
-   termux-restore
-   termux-setup-package-manager
-   termux-setup-storage
-   termux-wake-lock
-   termux-wake-unlock


<a id="org2478a83"></a>

## links

-   <https://github.com/termux/termux-app>
-   <https://termux.github.io/>
-   <https://wiki.termux.com/wiki/Main_Page>
-   <https://wiki.termux.com/wiki/Internal_and_external_storage>


<a id="orge5b1f9c"></a>

# TODO Haskell


<a id="orgb8ee297"></a>

## comparision

haskell

-   **composability** - liberal use of many tiny functions, or UNIX philosophy
-   **fusion** little functions may be pipelined with dot . (fused)

lisp pros

-   **monolithism:** procedure tends ti accept many options which configure its behaviou
-   parameter is added to existing function. Composition is a bit wordier and rarely used.


<a id="org564986a"></a>

# AWK

-   <https://www.gnu.org/software/gawk/manual/gawk.pdf>
-   <https://github.com/freznicek/awesome-awk>
-   <https://www.gnu.org/software/gawk/manual/gawk.html>


<a id="org7c08d24"></a>

## terms

-   field - column separated by white space
-   record - line of input


<a id="orgb3f2335"></a>

## structure

-   BEGIN {commands} - initialization of variables
-   *pattern* {commands} *pattern* {commands} &#x2026; - on every line
-   END {commands} -


<a id="org1c5ccad"></a>

## Built-in variables

-   field variables: $1, $2, $3, and so on ($0 represents the entire record)
-   NR: Number of Records. Keeps a current count of the number of input records read so far from all data
    files. It starts at zero, but is never automatically reset to zero.[14]
-   FNR: File Number of Records. Keeps a current count of the number of input records read so far in the current
    file. This variable is automatically reset to zero each time a new file is started.[14]
-   NF: Number of Fields. Contains the number of fields in the current input record. The last field in the input
    record can be designated by $NF, the 2nd-to-last field by $(NF-1), the 3rd-to-last field by $(NF-2), etc.
-   FILENAME: Contains the name of the current input-file.
-   FS: Field Separator. Contains the "field separator" used to divide fields in the input record. The default,
    "white space", allows any sequence of space and tab characters. FS can be reassigned with another character
    or character sequence to change the field separator.
-   RS: Record Separator. Stores the current "record separator" character. Since, by default, an input line is
    the input record, the default record separator character is a "newline".
-   OFS: Output Field Separator. Stores the "output field separator", which separates the fields when Awk prints
    them. The default is a "space" character.
-   ORS: Output Record Separator. Stores the "output record separator", which separates the output records when
    Awk prints them. The default is a "newline" character.
-   OFMT: Output Format. Stores the format for numeric output. The default format is "%.6g".


<a id="orgaa97102"></a>

## loops

-   for (initialization; condition; increment/decrement) action
-   while (condition) action
-   


<a id="org94b97f5"></a>

## commands

print

-   print $1, $3 - Displays the first and third fields of the current record, separated by a predefined string
    called the output field separator (OFS)


<a id="org01e0265"></a>

# network


<a id="orgce22a86"></a>

## theory

network segment - layer 1. connected devices

**devices**

-   router - network layer (layer 3). uses destination IP address. connect different IP networks
-   bridge -  data link layer (layer 2).  multiport bridge function serves as the basis for network switches.
    -   switch - data link layer (layer 2) of the OSI model. receive and forward data to the destination
        device. uses hardware addresses (MAC addresses).
        -   Multilayer switch - OSI layer 2 like an ordinary network switch and provides extra functions on higher OSI layer
-   hub (repeater hubs) - physical layer (layer 1) of the OSI model - connecting multiple Ethernet devices
    together and making them act as a single network segment, signal introduced at the input of any port appears
    at the output of every port except the original incoming.  learns the identities of connected devices and
    then only forwards data to the port connected to the device to which it is addressed


<a id="org9d4da29"></a>

### ip output

1.  enp5s1: <BROADCAST,MULTICAST,UP,LOWER<sub>UP</sub>> mtu 1500 qdisc pfifo<sub>fast</sub> state UP group default qlen 1000
    -   device
    -   physical layer or Device flags <https://man7.org/linux/man-pages/man7/netdevice.7.html>
    -   mtu -  maximum transmission unit  - maximum packet size
    -   qdisc - queuing mechanism. There are different queuing techniques called disciplines. noqueue discipline
        means “send instantly, don’t queue.”
    -   state
        -   DOWN (the network interface is not operational)
        -   UNKNOWN (the network interface is operational but nothing is connected)
        -   UP (the network is operational and there is a connection).
    -   group default - Interfaces can be grouped logically
    -   qlen 1000 - maximum length of the transmission queue.
    -   mode
2.  link/ether 5a:ec:ea:71:df:7a brd ff:ff:ff:ff:ff:ff
    -   link/loopback -
    -   link/ether - media access control (MAC) address of the interface.
        -   permaddr -  permanent hardware address.
3.  inet 10.77.61.30/24 scope global tap0
    -   Classless Inter-Domain Routing notation
    -   scope host -  IP address scope -  IP address is only valid inside the computer (the “host”)
4.  \_ valid<sub>lft</sub> forever preferred<sub>lft</sub> forever
    -   valid<sub>lft</sub> - (DHCP), this is the length of time the IP address is considered valid
    -   preferred<sub>lft</sub> - DHCP, this is the amount of time the IP address can be used with no restrictions. This
        should never be larger than the valid<sub>lft</sub> value.
5.  inet6 fe80::ac92:e9ff:fe17:a939/64 scope link
6.  \_ valid<sub>lft</sub> forever preferred<sub>lft</sub> forever

statistic

-   ip -s a
-   cat /proc/net/dev

1.  links

    -   /usr/include/linux/if.h
    -   <https://www.computerhope.com/unix/ip.htm>
    -   <https://www.howtogeek.com/657911/how-to-use-the-ip-command-on-linux/>


<a id="org56f9687"></a>

### ip route

-   ip route - new
-   route / netstat -r - old

routing table - keep settings

Netmask <https://www.ietf.org/rfc/rfc1878.txt>

-   192.168.0.1/32 = 255.255.255.255: just the address 192.168.0.1
-   /24 = 255.255.255.0
-   192.168.0.1/0 = 0.0.0.0: all 4.3 billion addresses from 0.0.0.0 to 255.255.255.255

1.  route:

    -   **Destination:** The destination network or destination host.
    -   **Gateway:** address to send
    -   **Genmask:** 255.255.255.255 for a host destination and 0.0.0.0 for the default route. (Destination + Genmask)
    -   **Flags:** Possible flags include
    -   U (route is up)
    -   H (target is a host)
    -   G (use gateway)
    -   R (reinstate route for dynamic routing)
    -   D (dynamically installed by daemon or redirect)
    -   M (modified from routing daemon or redirect)
    -   A (installed by addrconf)
    -   C (cache entry)
    -   ! (reject route)
    -   **Metric:** The distance to the target (usually counted in hops). It is not used by recent kernels, but may be
        needed by routing daemons. e lower number represents the better route

2.  ip route

    -   10.77.61.0      0.0.0.0         255.255.255.0   U     0      0        0 tap0
    -   10.77.61.0/24 dev tap0 proto kernel scope link src 10.77.61.30
    -   destination mask - via (gateway) - dev (destination) - proto - scope - src (source ip) - metric
    -   scope link: The scope is link, which means the scope is limited to the network to which this computer is
        directly connected.
    -   proto kernel: The route created by the kernel during auto-configuration.


<a id="orgfdb5c71"></a>

### ip neigh

Address Resolution Protocol (ARP)


<a id="org60ee51e"></a>

### TODO ip maddress


<a id="org0fa4299"></a>

## iproute2 - controlling TCP / IP - new one

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">net-tools - legacy</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">note</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">ifconfig</td>
<td class="org-left">ip addr, ip link</td>
<td class="org-left">Address and link configuration</td>
</tr>


<tr>
<td class="org-left">route</td>
<td class="org-left">ip route</td>
<td class="org-left">Routing tables</td>
</tr>


<tr>
<td class="org-left">arp</td>
<td class="org-left">ip neigh</td>
<td class="org-left">Neighbors</td>
</tr>


<tr>
<td class="org-left">iptunnel</td>
<td class="org-left">ip tunnel</td>
<td class="org-left">Tunnels</td>
</tr>


<tr>
<td class="org-left">nameif, ifrename</td>
<td class="org-left">ip link set name</td>
<td class="org-left">Rename network interfaces</td>
</tr>


<tr>
<td class="org-left">ipmaddr</td>
<td class="org-left">ip maddr</td>
<td class="org-left">Multicast</td>
</tr>


<tr>
<td class="org-left">netstat</td>
<td class="org-left">ss, ip route</td>
<td class="org-left">Show various networking statistics</td>
</tr>


<tr>
<td class="org-left">brctl</td>
<td class="org-left">bridge</td>
<td class="org-left">Handle bridge addresses and devices</td>
</tr>
</tbody>
</table>


<a id="orgaa8af90"></a>

### ip route

route -n - show numerical addresses instead of trying to determine symbolic host names.

-   Assign an IP Address to a Specific Interface:  ip addr add 192.168.50.5 dev eth1
-   add static route: ip route add 10.10.20.0/24 via 192.168.50.100 dev eth0
    -   persistent /etc/sysconfig/network-scripts/route-eth0:
        -   10.10.20.0/24 via 192.168.50.100 dev eth0
    -   ubuntu persistent:
        -   /etc/network/interfaces:
            -   up ip route add 10.10.20.0/24 via 192.168.50.100 dev eth0
-   remove route: ip route del 10.10.20.0/24
-   Add Default Gateway: ip route add default via 192.168.50.100


<a id="org86c5547"></a>

### ss

local  | remote addr

incoming connections - when source port are listening. (But It is possible to reuse listening port)

-   ss state established - filter by state
-   ss '( sport = :443 or dport = :443 )' - filter by port
-   ss dst 127.0.0.1 - filter by remote ip
-   ss -plat list all listening
-   netstat -tpe - monitor programs that are making connections to remote hosts
    -   -t TCP
    -   -p - display PID
    -   -e - display extra information


<a id="org9da0611"></a>

### USE CASES

-   ip link set up eth1 - Activate or Deactivate a Network Interface
-   ip addr add 10.0.0.1/24 broadcast 10.0.0.255 dev eth1 - Assign IPv4 address(es) to a Network Interface
-   ip -6 addr add 2002:0db5:0:f102::1/64 dev eth1
-   ip addr del 10.0.0.1/24 dev eth1 - Remove an IPv4 address from a Network Interface
-   ip route show - routing table
-   ss -l - Socket Statistics
-   ip neigh - ARP
-   ip link set name - Rename network interfaces
-   ip maddr - Multicast
-   ip -s, ss, ip route 	Show various networking statistics


<a id="orgb655b59"></a>

### all commands

-   arpd

-   bridge Handle bridge addresses and devices

-   ctstat

-   dcb

-   devlink

-   ip - main

-   lnstat

-   nstat

-   rdma

-   routef

-   routel

-   rtacct

-   rtmon

-   rtstat

-   ss - another utility to investigate sockets

-   tc - show / manipulate traffic control settinsg

-   tipc - a TIPC configuration and management tool

-   ip tunnel - tunnel configuration


<a id="orgfd6ba97"></a>

## net-tools - based on /proc - too old

-   arp is used to manipulate the kernel's ARP cache, usually to add or delete an entry, or to dump the entire cache.
-   dnsdomainname reports the system's DNS domain name.
-   domainname reports or sets the system's NIS/YP domain name.
-   hostname reports or sets the name of the current host system.
-   ifconfig is the main utility for configuring network interfaces.
-   nameif names network interfaces based on MAC addresses.
-   netstat is used to report network connections, routing tables, and interface statistics..
-   nisdomainname does the same as domainname.
-   plipconfig is used to fine tune the PLIP device parameters, to improve its performance.
-   rarp is used to manipulate the kernel's RARP table.
-   route is used to manipulate the IP routing table.
-   slattach attaches a network interface to a serial line. This allows you to use normal terminal lines for point-to-point links to other computers.
-   ypdomainname does the same as domainname.


<a id="org60200a6"></a>

### arp

arp -an

-   ip neigh


<a id="orgc65cfbb"></a>

### ifconfig


<a id="org29dd6b7"></a>

### route

-   netstat -rn
-   ip route show


<a id="org1048b5f"></a>

### netstat

netstat -l - socket statistic

-   ip -s, ss, ip route 	Show various networking statistics


<a id="orgbda8164"></a>

### iptunnel


<a id="orgffeadc1"></a>

### brctl

-   bridge


<a id="orga983b9c"></a>

### ifstat


<a id="org56d9121"></a>

## lsof

LiSts all Open Files

-   lsof -iTCP -sTCP:LISTEN -P -n
    -   -P подавляет, для сетевых файлов, преобразование номеров портов в имена портов.
    -   -i позволяет вывести сведения о файлах, интернет-адреса которых соответствуют заданному адресу.
-   lsof -u cindy | wc -l - список файлов, открытых конкретным пользователем.
-   lsof -u<sup>cindy</sup> | wc -l -  количество файлов на компьютере, которые открыты всеми пользователями за исключением cindy
-   -c сведения о файлах, которые держат открытыми процессы, выполняющие команды, имена которых начинаются с заданных символов.
-   lsof -cpython | head -15 -  первые 15 файлов, открытых всеми процессами Python, выполняющимися на компьютере.
-   lsof +d /usr/bin | head -4 - какие папки и файлы открыты в некоей директории
-   lsof -p вывести все файлы, открытые процессом с указанным при вызове команды PID.
-   Опция -t подавляет вывод всей информации за исключением ID процессов.
-   lsof -l dir - сведения обо всех процессах, имеющих открытые дескрипторы файлов в директории


<a id="orgd7b2394"></a>

## dig

<https://whois.urih.com/record/11.123.86.62/>

DNS lookups and displays the answers

-   net-dns/bind-tools
-   apt install dnsutils

examples:

-   dig howtogeek.com - get DNS information
-   dig -x 1.1.1.1  - reverse DNS requiest or Reverse IP Lookup (ping -a 1.1.1.1)
    -   dig ptr 148.188.51.209.in-addr.arpa - same
-   dig -x 59.59.59.59 + short
-   type of DNS record
-   dig howtogeek.com +shor
-   dig howtogeek.com +nocomments
-   dig redhat.com MX  +noall +answer
-   dig redhat.com  +noall +answer - only important

dig [@server] [name] [type]

-   @8.8.8.8 - dns server
-   name - dns or IP
-   type of DNS record
    -   A Record: Links the domain to an IP version 4 address.
    -   MX Record: Mail exchange records direct emails sent to domains to the correct mail server.
    -   NS Record: Name server records delegate a domain (or subdomain) to a set of DNS servers.
    -   TXT Record: Text records store text-based information regarding the domain. Typically, they might be used to suppress spoofed or forged email.
    -   SOA Record: Start of authority records can hold a lot of information about the domain. Here, you can find the primary name server, the responsible party, a timestamp for changes, the frequency of zone refreshes, and a series of time limits for retries and abandons.
    -   TTL: Time to live is a setting for each DNS record that specifies how long a DNS precursor server is allowed to cache each DNS query. When that time expires, the data must be refreshed for subsequent requests.
    -   ANY: This tells dig to return every type of DNS record it can.

    dig +qr arteus.cy ANY


<a id="org4aad9b7"></a>

## nslookup

DNS lookups and displays the answers

-   -port=[port-number]	Specify the port for queries. The default port number is 53.
-   -type=any 	View all available records. - Not all actualy
-   -type=txt	View Text Records
-   -type=ns	View Domain's NS Records
-   -type=mx	Mail Exchange server data.
-   -type=soa	Start of Authority (SOA) records provide authoritative information about the domain and the
    server, such as the email address of the administrator, serial number, refresh interval, query expiration
    time, etc.
-   nslookup -type=ptr [reverse-ip-address].in-addr.arpa
-   nslookup  <IP address> - reverse lookup

Internationalized domain name -

-   IDNA ToASCII algorithm
-   ToASCII and ToUnicode.
    -   not applied to the domain name as a whole, but rather to individual labels - to each part separately


<a id="org5efc9ed"></a>

## host

host 8.8.8.8 - reverse dns lookup


<a id="org9cb0ffc"></a>

## traceroute


<a id="org5f4e1b0"></a>

## whois

-   net-misc/whois improved Whois Client GPL-2
-   net-misc/jwhois Advanced Internet Whois client capable of recursive queries  GPL-3


<a id="orge3e63db"></a>

## iptables

-   iptables -F &#x2013;flush chain - delete all rules
-   iptables -P &#x2013;policy chain target - target must be ACCEPT or DROP - default policy for chain
-   iptables -A &#x2013;append chain rule


<a id="orga9ec150"></a>

### tables and chains

-   filter:
    -   INPUT
    -   FORWARD
    -   OUTPUT
-   nat:
    -   PREROUTING
    -   OUTPUT
    -   POSTROUTING
-   mangle - specialized packet alteration
    -   PREROUTING - incoming packets before routing
    -   OUTPUT
    -   INPUT
    -   FORWARD
    -   POSTROUTING - about to go out
-   raw: - to set a mark on packets that they should not be handled by the connection tracking system
    ip<sub>conntrack</sub>
    -   PREROUTING
    -   OUTPUT


<a id="org4c2eb5e"></a>

### Target Values

-   ACCEPT – Firewall will accept the packet.
-   DROP – Firewall will drop the packet.
-   QUEUE – Firewall will pass the packet to the userspace.
-   RETURN – Firewall will stop executing the next set of rules in the current chain for this packet. The
    control will be returned to the calling chain.


<a id="orga4e8117"></a>

### gentoo net-firewall/iptables:

-   rc-service iptables save
-   rc-service iptables start
-   rc-update add iptables default


<a id="orge3e95f2"></a>

### log bad ppl

iptables -N bad<sub>people</sub>  # create chain
iptables &#x2026;rules&#x2026; -j bad<sub>people</sub>


<a id="orgd607369"></a>

### simple

/etc/network/if-pre-up.d/iptables

    #!/bin/sh
    /sbin/iptables-restore < /etc/iptables.up.rules

iptables-save > /etc/iptables.up.rules

1.  ex1

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

2.  ex arch

        iptables -P FORWARD DROP
        iptables -P OUTPUT ACCEPT
        iptables -P INPUT DROP
        iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
        iptables -A INPUT -i lo -j ACCEPT
        # ICMPv6 Neighbor Discovery packets remain untracked - keep it in mind
        iptables -A INPUT -m conntrack --ctstate INVALID -j DROP
        # allow echo
        iptables -A INPUT -p icmp --icmp-type 8 -m conntrack --ctstate NEW -j ACCEPT
        
        # open ports
        iptables -A TCP -p tcp --dport 22 -j ACCEPT
        
        
        # reject TCP RESET packets and UDP streams with ICMP port unreachable messages if the ports are not opened.
        # it allows the sender to quickly close the connection and clean up.
        iptables -A INPUT -p udp -j REJECT --reject-with icmp-port-unreachable
        iptables -A INPUT -p tcp -j REJECT --reject-with tcp-reset
        # reject all remaining incoming traffic with icmp protocol unreachable messages. This imitates Linux's default behavior.
        iptables -A INPUT -j REJECT --reject-with icmp-proto-unreachable


<a id="org04d41d7"></a>

## nftables


<a id="org3cf772a"></a>

### print rules

-   nft list tables ip
-   nft list table inet filter
-   nft list ruleset
-   nft flush ruleset # remove


<a id="org0029938"></a>

### table

nft (add | delete | flush) table [<family>] <name>

-   family: ip, arp, ip6, bridge, inet, netdev.


<a id="orga0cd5d6"></a>

### chain

nft (add | create) chain [<family>] <table> <name> [ { type <type> hook <hook> [device <device>] priority <priority> \\; [policy <policy> \\;] } ]

type:

-   filter: Supported by arp, bridge, ip, ip6 and inet table families.
-   route: Mark packets (like mangle for the output hook, for other hooks use the type filter instead),
    supported by ip and ip6.
-   nat: In order to perform Network Address Translation, supported by ip and ip6.

hook -  refers to an specific stage of the packet while it's being processed through the kernel.

-   The hooks for ip, ip6 and inet families are: prerouting, input, forward, output, postrouting.
-   The hooks for arp family are: input, output.
-   The bridge family handles ethernet packets traversing bridge devices.
-   The hook for netdev is: ingress.

priority - number used to order the chains or to set them between some Netfilter operations.

-   NF<sub>IP</sub><sub>PRI</sub><sub>FILTER</sub> (0)
-   

policy  - accept (default) and drop.


<a id="org67a7076"></a>

### rule

nft add rule [<family>] <table> <chain> <matches> <statements>


<a id="org8ff2135"></a>

### gentoo net-firewall/nftables:

-   rc-service nftables save
-   rc-service nftables start
-   rc-update add nftables default


<a id="org8b784b3"></a>

### /etc/nftables-local skeleton nftables config file

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


<a id="orge24266d"></a>

### Masquerading and source NAT (SNAT)

to **change the source IP address** - Use one of these NAT types of packets:

-   **Masquerading** automatically uses the IP address of the outgoing interface. Therefore, use masquerading if the
    outgoing interface uses a dynamic IP address.
-   **SNAT** - faster, Use SNAT if the outgoing interface uses a fixed IP address.

to **route incoming traffic to a different host**

-   Destination NAT (DNAT) - use DNAT to access local WEB server from internet.
-   Redirect - special case of DNAT that redirects packets to the local machine depending on the chain hook


<a id="orgac3c04e"></a>

### use cases

**filter by user** - block user from access internet - by uid or name

-   nft add rule inet filter output meta skuid 1004 drop
-   chain output {meta skuid t drop}
-   chain output {meta skuid t ip daddr { 127.0.0.1 } accept }


<a id="orgc3c7ef9"></a>

### TODO socks

iptables -t nat -A OUTPUT -p tcp -m owner ! &#x2013;uid-owner proxy -j REDIRECT &#x2013;to-ports 4545
iptables -t nat -I OUTPUT -p tcp -m owner &#x2013;uid-owner root -j RETURN

table ip nat {
	chain prerouting {
		type nat hook prerouting priority 0; policy accept;
	}

	chain postrouting {
		type nat hook postrouting priority 100; policy accept;
		oifname "wan0" masquerade
	}
}


<a id="orgf05ce14"></a>

### links

-   <https://wiki.gentoo.org/wiki/Nftables/Examples>
-   <https://www.nftables.org/>
-   firewall <https://stosb.com/blog/explaining-my-configs-nftables/>
-   home router ex <https://wiki.nftables.org/wiki-nftables/index.php/Simple_ruleset_for_a_home_router>
-   doc <https://wiki.nftables.org/wiki-nftables/index.php/Main_Page>
-   <https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/security_guide/sec-configuring_nat_using_nftables>


<a id="orgba5d467"></a>

## arptables

net-firewall/aptables

arptables -A INPUT &#x2013;source-mac d8:d7:21:22:5a:f4 -j ACCEPT

arptables -P INPUT ACCEPT


<a id="org354e446"></a>

### links

<https://linux-audit.com/filtering-arp-traffic-with-linux-arptables/>


<a id="orga2b995e"></a>

## net-dns/bind-tools

-   <https://www.isc.org/bind/>
-   <https://gitlab.isc.org/isc-projects/bind9/-/blob/main/doc/dnssec-guide/getting-started.rst>


<a id="orgc74f2f8"></a>

## TODO nmap - network exploration


<a id="orgb0b30bf"></a>

## tcpdump

**HTTP request and response**

    tcpdump -A -s 0 'tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'
    tcpdump -X -s 0 'tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'


<a id="orgc0e5031"></a>

## OpenVPN


<a id="org4aaa865"></a>

### OpenVPN over Tor

-   add socks-proxy 127.0.0.1 9150
-   after connection tor will be router through VPN, that is why: You also need to tell the routing to reach
    your Tor entry node outside of the VPN:
    -   sudo route add -net E.E.E.E netmask 255.255.255.255 gw G.G.G.G
        -   E.E.E.E is your Tor entry node (either a bridge or a guard node) and G.G.G.G is your default gateway.

1.  realization

    1.  *usr/local/bin*
    
            #!/bin/sh
            cp "/home/ff/Downloads/file.ovpn" /etc/openvpn/openvpn.conf
            echo >> /etc/openvpn/openvpn.conf
            echo "auth-user-pass /etc/openvpn/auth_vpnfile" >> /etc/openvpn/openvpn.conf
            echo "socks-proxy 127.0.0.1 9050" >> /etc/openvpn/openvpn.conf
            echo "up /etc/openvpn/openvpn-up.sh" >> /etc/openvpn/openvpn.conf
    
    2.  /etc/openvpn/openvpn-up.sh
    
            #!/usr/bin/env bash
            
            interface=wlan0
            
            if [ "$script_type" == "up" ]; then
                torbridges=$(cat /etc/tor/torrc | grep ^bridge | cut -d ' ' -f 3 | cut -d ':' -f 1)
                defaultroute=$(ip route | grep default | cut -d ' ' -f 3)
                echo "$torbridges" | while read line
                do
            	ip route add $line via $defaultroute dev $interface
                done
            elif [ "$script_type" == "down" ]; then
                torbridges=$(cat /etc/tor/torrc | grep ^bridge | cut -d ' ' -f 3 | cut -d ':' -f 1)
                defaultroute=$(ip route | grep default | cut -d ' ' -f 3)
                while read line
                do
            	ip route del $line via $defaultroute dev $interface
                done < $torbridges
            fi

2.  links

    -   <https://kiljan.org/2017/11/15/routing-traffic-through-openvpn-using-a-local-socks-proxy/>
    -   <https://www.oilandfish.com/posts/tor-openvpn.html>


<a id="org478bd35"></a>

## TAP/TUN devices

kernel virtual network devices

-   can't be used together
-   TUN - network layer device operates in layer 3 carrying IP packets. Used with routing.
-   TAP - link layer device and operates in layer 2 carrying Ethernet frames.
-   


<a id="orgdd791c8"></a>

## get my ip


<a id="orgb5d9127"></a>

### wget

-   wget &#x2013;quiet &#x2013;output-document=- <https://ip.oxylabs.io>


<a id="orga21a051"></a>

## speed, bandwith, latency

max speed

-   ethtool enp0s3
-   dmesg | grep enp0s3
-   mii-tool -v enp0s3
-   cat /sys/classes/net/eth0/speed # 1000 = 1000 Mb/s

bandwith usage

-   ifstat -r && ifstat -s
-   nmon

latency:

-   nmap -sn host
-   map  -sn -P 443 -d3 ya.ru
-   ping


<a id="orgbfce1ac"></a>

## USECASES allow opening ports for user not root

-   Port numbers 1024 to 49151 are called the **registered/user ports**.
-   Port numbers 49152 to 65535 are called the **dynamic/private ports**

-   per executable:

    setcap 'cap_net_bind_service=+ep' /path/to/program

1.  Use authbind: sudo apt-get install authbind &#x2026;

    by creating a
        configuration file in /etc/authbind/byport/:
    
        sudo touch /etc/authbind/byport/80
        sudo chown youruser /etc/authbind/byport/80
        sudo chmod 755 /etc/authbind/byport/80

<https://stackoverflow.com/questions/413807/is-there-a-way-for-non-root-processes-to-bind-to-privileged-ports-on-linux>


<a id="org1c9c746"></a>

## test network with wireshark

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

activate ip<sub>forward</sub> and establish a NAT rule to forward the traffic coming in from the namespace you created (you have to adjust the network interface and SNAT ip address):

echo 1 > /proc/sys/net/ipv4/ip<sub>forward</sub>
iptables -t nat -A POSTROUTING -s 192.168.163.0/24 -o <your internet interface, e.g. eth0> -j SNAT &#x2013;to-source <your ip address>

(You can also use the MASQUERADE rule if you prefer)

finally, you can run the process you want to analyze in the new namespace, and wireshark too:

ip netns exec test thebinarytotest
ip netns exec test wireshark


<a id="org131f254"></a>

# security

proactive security

-   Linux Kernel Runtime Guard <https://github.com/lkrg-org/lkrg>
-   Users' Security Handbook <https://datatracker.ietf.org/doc/html/rfc2504>
-   RFC 2196 - Site Security Handbook


<a id="orgb9adce6"></a>

## simple sandbox

-   useradd &#x2013;home=/home/ff &#x2013;create-home &#x2013;shell /bin/false &#x2013;user-group ff &#x2013;groups input,users,video,audio
    -   -u $UID -g $GUID
-   xhost si:localuser:ff2 ; cd /home/ff2 ; sudo -u ff2 firejail &#x2013;profile=/etc/firejail/firefox.profile firefox -P -no-remote normal $@
-   userdel -r ff # remove user

remove password and lock:

-   passwd -ld ff


<a id="org654f9b2"></a>

## Linux Access Permissions


<a id="orgb3c103e"></a>

### mandatory access control (MAC)

-   AppArmor
-   SELinux


<a id="orgda90b33"></a>

### access-control list (ACL)

man acl

specifies the list of subjects that have access to a particular object(resource) along with their access right. the list
 of users and the operations that they can perform on that object.

Each object(resource) has a security attribute that identifies its access control list.

cons:

-   search overhead and results in poor efficiency as the entire access control list needs to be searched when
    access is made to an object.
-   requires more data storage space as data is stored object-wise and the same subject can have multiple access
    to multiple objects thereby consuming more storage space.
-   do not protect agains confused deputy problem <hacking>

fstab have mount option **acl** and **noacl**

    getfacl /usr/bin/ping
    stat


<a id="org6c87f99"></a>

### capabilities

man capabilities

Capabilities are implemented on Linux using extended attributes (xattr(7)) in the security namespace.

Capability systems protect against the confused deputy problem, whereas access-control list–based systems do
 not.

Capabilities are a per-thread attribute.

Support for associating capability sets with an executable file using setcap(8). capability sets are stored in
 an extended attribute (see setxattr(2) and xattr(7)) named security.capability.

P'(permitted) = (P(inheritable) & F(inheritable)) |
		(F(permitted) & cap<sub>bset</sub>)

P'(effective) = F(effective) ? P'(permitted) : 0

P'(inheritable) = P(inheritable)    [i.e., unchanged]

Where P is the old capability set, P' is the capability set after execv and F is the file capability set.
<https://book.hacktricks.xyz/linux-hardening/privilege-escalation/linux-capabilities>

1.  Capability Sets:

    Inherited (CapInh)
    
    -   Purpose: Determines the capabilities passed down from the parent process.
    -   Functionality: When a new process is created, it inherits the capabilities from its parent in this set. Useful for maintaining certain privileges across process spawns.
    -   Restrictions: A process cannot gain capabilities that its parent did not possess.
    
    Effective (CapEff):
    
    -   Purpose: Represents the actual capabilities a process is utilizing at any moment.
    -   Functionality: It's the set of capabilities checked by the kernel to grant permission for various operations. For files, this set can be a flag indicating if the file's permitted capabilities are to be considered effective.
    -   Significance: The effective set is crucial for immediate privilege checks, acting as the active set of capabilities a process can use.
    
    Permitted (CapPrm):
    
    -   Purpose: Defines the maximum set of capabilities a process can possess.
    -   Functionality: A process can elevate a capability from the permitted set to its effective set, giving it the
        ability to use that capability. It can also drop capabilities from its permitted set.
    -   Boundary: It acts as an upper limit for the capabilities a process can have, ensuring a process doesn't
        exceed its predefined privilege scope.
    
    Bounding (CapBnd):
    
    -   Purpose: Puts a ceiling on the capabilities a process can ever acquire during its lifecycle.
    -   Functionality: Even if a process has a certain capability in its inheritable or permitted set, it cannot acquire that capability unless it's also in the bounding set.
    -   Use-case: This set is particularly useful for restricting a process's privilege escalation potential, adding an extra layer of security.
    
    Ambient (CapAmb):
    
    -   Purpose: Allows certain capabilities to be maintained across an execve system call, which typically would result in a full reset of the process's capabilities.
    -   Functionality: Ensures that non-SUID programs that don't have associated file capabilities can retain certain privileges.
    -   Restrictions: Capabilities in this set are subject to the constraints of the inheritable and permitted sets, ensuring they don't exceed the process's allowed privileges.

2.  commands

    -   setcap - set file capabilities
    -   getcap /bin/ping
    
        attr -lq /usr/bin/ping
        cat /proc/self/status | grep Cap
    
    execute command with dropped capabilities
    
        capsh --drop=cap_net_raw --print -- -c "tcpdump"
    
    The +ep means you’re adding the capability (“-” would remove it) as Effective and Permitted.
    
        setcap cap_net_raw+ep /sbin/ping
    
    To identify programs in a system or folder with capabilities:
    
        getcap -r /usr/bin/ 2>/dev/null

3.  User Capabilities

    /etc/security/capability.conf
    
        # Simple
        cap_sys_ptrace               developer
        cap_net_raw                  user1
        
        # Multiple capablities
        cap_net_admin,cap_net_raw    jrnetadmin
        # Identical, but with numeric values
        12,13                        jrnetadmin
        
        # Combining names and numerics
        cap_sys_admin,22,25          jrsysadmin


<a id="org9ec4605"></a>

### standart Unix discretionary access control (DAC) permissions

restricting access to objects based on the identity of subjects and/or groups to which they belong.

1.  - user-owner, group, others

    -   ls -l
    -   stat -c "%a %n" \*
    
    Only root can change ownership!
    
    Dicrectory and subdirectory:
    
    -   if r-x for directory and rwx for subdirectory, = r-x subdirectory
    
    -rw-r&#x2013;r&#x2013;
      first:
      [-] - file
      [d] - directory
      [l] - symbolic link to file or directory
    
    chmod - who:
    
    -   u - user, cat change permissions
    -   g - group (name and ID)
    -   o - others (All users)
    -   a - ugo
    
    chmod 0777 - what:
    
    -   r - file- read, direcotry - ls
    -   w - directory - 1 for user - create delete modify files and directories (how: rename only) even if they are not yours
    -   x - file - execute, directory - cd and read files by direct name
    -   s - (4/2) setuid/guid (UID/GID) user or group Id on execution (chmod g+s - setgid) (chmod u+s - setuid) and x is set
    -   S -  If the setuid or setgid bit is set but the corresponding executable bit is not set.
    -   t - (1) sticky bit  or restricted deletion
    
    X - already has at least 1 execution permission for u or g or a. Useful for -R on directories. a+rX

2.  setuid/setgid for file - any user execute with user(uid) or group(gid) privileges.

    -   (rwsrwsrwt = s-suid,s-guid,t-sticky bit)
    
    SUID and SGID for file - this means that the file will be executed with the same permissions as the owner of the
    executable file.
    
    -   chmod u+s file<sub>name</sub>
    -   -rwSrw-rw- - S - means there is an error that you should look into. not even the owner is allowed to execute
        the file
    -   The setuid permission set on a directory is ignored on most UNIX and Linux systems
    
    setuid for directory: is ignored on most UNIX and Linux systems.  FreeBSD can be configured to interpret
     setuid in a manner similar to setgid
    
    setgid for directory:
    
    1.  new files and subdirectories inherit group ID and ignore group ID who created (owner ID not affected)
        (exception - moved files and subdirs.)
    2.  subdirectories inherit setgid bit.
    3.  apply for new files.
    4.  exising and moved files/directories are not affected
    
    sticky bit: for directories:
    
    -   chmod +t my<sub>dir</sub>
    -   fiels in - may only be unlinked, deleted or renamed by owner or direcotry owner(Linux)
    -   files in - only owner or directory's can rename or delete the file. (OpenBSD)
    -   default - any user with write and x permissions for directory cat rename or delete.
    -   used for /tmp
    -   for files:
        -   when accessed will not be cached by the kernel (OpenBSD)
        -   used for swap files(OpenBSD)
        -   used by the automounters to indicate that file was not mounted yet
        -   the Linux kernel ignores the sticky bit on files.
    
    "rwS-&#x2013;&#x2014;" - means that SUID was set but file not allowed to be executed (SUID is not usable).

3.  traditional UNIX categories of processes:

    -   pivileged UID=0
    -   unprovoleged UID!=0
        -   permussuib checks(on process credentials)
            -   UID
            -   GID - primary or login group ($ id command)
            -   supplementary group list - user may be member of 0 or more secondary groups /etc/groups ($id -nG)


<a id="org5406ca4"></a>

### acl vs capability list

<https://www.geeksforgeeks.org/difference-between-access-control-list-and-capability-list/>

-   ACL - access matrix column-wise - per resource
-   capabilities - row-wise - per subject

Capability systems protect against the confused deputy problem, whereas access-control list–based systems do
 not.


<a id="org6750e3d"></a>

## PAM

Pluggable Authentication Modules (PAM)

a suite of libraries that

-   allow system administrators to configure various methods for authenticating users.
-   for centralized control for all applications that uses PAM for authentification
-   


<a id="orga394bf2"></a>

## s/key

-   one-time password system
-   систему генерирования одноразовых паролей на основе стандартов MD4 и MD5
-   relies on the difficulty of reversing cryptographic hash functions
-   Клиент начинает обмен S/Key, отправляя серверу пакет инициализации, а сервер в ответ отправляет порядковый
    номер и случайное число, так называемое «зерно» (seed). После этого клиент генерирует одноразовый пароль в
    ходе операции, состоящей из трех этапов: подготовительного этапа, этапа генерирования и функции выхода. На
    этапе генерирования клиент многократно использует хеш-функцию и получает 64-разрядную итоговую величину.
-   RFC 1760
-   vulnerable to a man in the middle attack if used by itself
-   vulnerable to certain race conditions


<a id="org382e8e3"></a>

## su

Users group "wheel" can su - to become root


<a id="org78309dd"></a>

## /etc/passwd

root:x:0:0:root:/root:/usr/bin/zsh

-   root - Username
-   x - x here denotes password is encrypted
-   0 - UID
-   0 - GID user's group ID
-   root - Ifno of the user(GECOS)
-   /root - User home directory
-   /usr/bin/zsh - Login shell


<a id="org833990d"></a>

## /etc/shadow

mark:$6$.n.:17736:0:99999:7:::

-   Username
-   $6$.n. - Encrypted Password
    -   \* - blank password L - used for service accounts
    -   ! - blank password L - user accounts
    -   $1$ – MD5
    -   $2a$ – Blowfish
    -   $2y$ – Eksblowfish
    -   $5$ – SHA-256
    -   $6$ – SHA-512
-   17736 - Last password change epoch date
-   0 - Minimum password age - the number of days that must pass before the user password can be changed
-   99999 - Maximum password age
-   Warning period
-   Inactivity period - the number of days before the password expires during which the user is warned that the
    password must be changed
-   Inactivity period - The number of days after the user password expires before the user account is disabled
-   Expiration date. The date when the account was disabled. It is represented as an epoch date.
-   reserved


<a id="org74ce7e2"></a>

## TODO logcheck

-   emerge &#x2013;ask app-admin/logcheck
-   useradd &#x2013;home=/home/logcheck &#x2013;create-home &#x2013;shell /bin/false &#x2013;user-group logcheck
-   /etc/logcheck/logcheck.conf:
    -   SENDMAILTO="root"


<a id="org7847888"></a>

## firejail


<a id="orgb8218fd"></a>

### xephyr

We try to prevent keyloging: xinput list | grep -Po 'id=\K\d+(?=.\*slave\s*keyboard)' | xargs -P0 -n1 xinput test

-   USE=xephyr emerge  x11-base/xorg-server
-   emerge &#x2013;ask  x11-wm/openbox

firejail &#x2013;noprofile &#x2013;x11=xephyr  openbox &#x2013;startup /usr/bin/xfce4-terminal

-   &#x2013;net=eth0:

USE=xcsecurity emerge  x11-base/xorg-server

-   supported directly in firejail (via the &#x2013;x11=xorg option)

or just:

1.  troubleshooting

        RTNETLINK answers: Operation not supported
        Error: failed to run /usr/lib64/firejail/fnet, exiting...
        Error ioctl: interface.c:100 net_if_up: No such device
        Error: failed to run /run/firejail/lib/fnet, exiting...
        Error: proc 11727 cannot sync with peer: unexpected EOF
    
    reason: CONFIG<sub>IPVLAN</sub> not enabled in kernel config


<a id="orgbf7c194"></a>

### hardening line

-   &#x2013;machine-id - regenerate /etc/machine-id
-   &#x2013;blacklist=/sys - block access to PC serial number cat /sys/devices/virtual/dmi/id/\*
-   &#x2013;blacklist=/proc/cpuinfo
-   &#x2013;novideo - if you dont need video
-   &#x2013;dbus-user=none - disable access and fix error: DBUS user socket was not found
-   - &#x2013;dbus-system=none
-   &#x2013;private-lib &#x2013;private-bin - amd64 ony - complicated
-   &#x2013;caps.drop=all - This option is recommended for running GUI programs or any other program that doesn't require root privileges
-   &#x2013;nonewprivs

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

    # --blacklist=/sys  - may be replaced with:
         --blacklist=/sys/block \
         --blacklist=/sys/dev \
         --blacklist=/sys/firmware \
         --blacklist=/sys/fs \
         --blacklist=/sys/kernel \
         --blacklist=/sys/module \
         --blacklist=/sys/power \


<a id="org3587760"></a>

### config hardening

/et/firejail/firejail.config:

-   bind no
-   disable-mnt yes
-   file-transfer no
-   force-nonewprivs yes
-   join no
-   name-change no
-   private-bin-no-local yes
-   seccomp-filter-add !chroot,kcmp,mincore
-   seccomp-error-action kill
-   whitelist-disable-topdir /etc,/usr/etc


<a id="org96dffcb"></a>

### errors

DBUS user socket was not found

-   &#x2013;dbus-user=none - disable dbus session access completely

Error: cannot access profile file: firefox.local

-   you disabled access to /home/user
-   cd /home/user ; firejail command

dont forget to:

-   chmod o-rx /home/user


<a id="org4d69caa"></a>

### per app

1.  firefox:

    1.  firefox-common.profile: comment nogroups
    2.  harden confing - uncomment: private-bin and private-etc lines
    
    firefox problems:
    
    -   does not start
        -   firefox.profile: comment ignore dbus-user none
    -   W [pulseaudio] core-util.c: Uh, personality() failed: Operation not permitted
        -   firefox-common.profile: comment nogroups
    -   firefox.profile: comment
        -   whitelist /usr/\*
        -   include whitelist-usr-share-common.inc
    -   firefox.profile: uncomment
        -   private-bin basename &#x2026;
    -   for hardware acceleration require /sys
    -   no sound error
        -   firefire-common.profile: comment
            -   nogroups
    -   /usr/lib64/firefox/firefox: error while loading shared libraries: libstdc++.so.6: cannot open shared object
        file: No such file or directory
        -   firefox.profile: comment private-etc firefox

2.  telegram-dekstop:

    -   no notification sound:
        -   telegram.profile:
            -   comment line: private-bin bash, sh,telegram,Telegram

3.  wine

    -   require
        -   /usr/bin/id
        -   *sys*
        -   ln -s /usr/lib/dri/r600<sub>dri.so</sub> /usr/lib/dri/radeon<sub>dri.so</sub>
    -   firefox.profile: comment
        -   nogroups
    -   firefox.profile: uncomment
        -   net none
    -   firefox.profile: add
        -   noblocklist /usr/lib/dri
        -   noblocklist ${HOME}
        -   whitelist ${HOME}

4.  rtorrent

    -   comment # netfilter
    -   add whitelist

5.  mpv:

    -   comment # nogroups - for audio
    -   whitelist


<a id="org409702a"></a>

## apparmor

-   **ps auxZ | grep -v '<sup>unconfined</sup>' :** ограниченные программы -v - invert
-   **aa-complain /full/path/to/program:** отключить apparmor и смотреть syslog
-   **aa-enforce /full/path/to/program:** включить обратно после удаления ненужных ограничений
-   **apparmor<sub>parser</sub> -r /etc/apparmor.d/profile:** перезагрузить один профиль
-   **aa-status:** .
-   **aa-genprof app && app:** create profile for app
-   **aa-logprof:** for existing profiles - allow/deny acces to certain tasks
-   **Inherit:** create rule in paret and executable inherit it from parent
-   **Child:** create sub-profile with separete rules


<a id="org64fc727"></a>

## nfs

-   client /etc/fstab
-   server /etc/exports

options

-   file systems on a separate partition of a harddisk, we can ensure that malicious users can not simply fill up
    the entire harddisk by writing large files onto it.
-   /home nfs-client(secure) - Prevent normal users on an NFS client from mounting an NFS file system (on server)
-   /home nfs-client(ro)
-   nfs-clients - use numeric IP addresses or fully qualified domain names, instead of aliases.
-   /home nfs-client(root<sub>squash</sub>) - while mounting using the command mount, the user ID ?root? on the NFS client
    will be replaced by the user ID ?nobody? on the NFS server.
-   nfs-server:/home /mnt/nfs nfs ro,nosuid,noexec 0 0 - Disable suid (superuser ID) on an NFS file system (on client)
-   ssh encryption of traffic: ssh -f -c blowfish -L 7777:nfs-server:2049 -l tony nfs-server /bin/sleep 86400
    -   On the NFS client computer, bind a SSH port with NFS port 2049.
    -   -c blowfish means SSH will use the algorithm blowfish to perform encryption.
    -   -L 7777:nfs-server:2049 means binding the SSH client at port 7777 (or any other port that you want) to
        communicate with the NFS server at address nfs-server on port 2049.
    -   -l tony nfs-server means in the process of login on the authentication server at address nfs-server
        (specify either the IP address or domain name of the authentication server), use the user login name tony
        to authenticate on the server.
    -   /bin/sleep 86400 means to prevent spawning a shell on the client computer for 1 day (86,400 seconds). You
        can specify any larger number.

fstab exampe

-   *home /mnt/nfs* nfs tcp,rsize=8192,wsize=8192,intr,rw,bg,nosuid,port=7777,mountport=8888,noauto

show NFS shares only if you are using rpcbind.

    showmount --exports dnsmy.local


<a id="org5371962"></a>

### iptables

RPC Portmapper (on port 111), NFS (on port 2049), and Mountd (on port 2219)
\#iptables -A INPUT -i eth0 -s 10.226.43.0/24 -dport 111 -j ACCEPT
\#iptables -A INPUT -i eth0 -s 10.226.43.0/24 -dport 2049 -j ACCEPT
\#iptables -A INPUT -i eth0 -s 10.226.43.0/24 -dport 2219 -j ACCEPT

Deny something else.
\#iptables -A INPUT -i eth0 -s 0/0 -dport 111 -j DROP
\#iptables -A INPUT -i eth0 -s 0/0 -dport 2049 -j DROP
\#iptables -A INPUT -i eth0 -s 0/0 -dport 2219 -j DROP
\#iptables -A INPUT -i eth0 -s 0/0 -j DROP

TCP wrapper to filter access to your portmapper by adding the line:

-   /etc/hosts.allow -  portmapper: 10.226.43.0/24
-   /etc/hosts.deny  - portmapper:ALL


<a id="org7b82833"></a>

## USB

vectors:

1.  HID devices
2.  Faked network adapters - are no real danger
3.  firmware flashing over the USB connection


<a id="orgf12b70e"></a>

### protection

-   alias usb-block="echo 0 | tee /sys/bus/usb/devices/\*/authorized"
-   alias usb-unblock="echo 1 | tee /sys/bus/usb/devices/\*/authorized"
-   alias block="echo 0 | tee /sys/bus/usb/devices/\*/authorized ; vlock -a"

<https://wiki.gentoo.org/wiki/Allow_only_known_usb_devices>


<a id="org0bf4326"></a>

## telegram <a id="org0006a7d"></a>

-   see <emacsh>
-   see <shell>


<a id="org13ccd9f"></a>

### procs & cons

Pros

-   End-to-end (E2E) encryption
-   Encryption algorithms: MTProto, a custom protocol
-   Open source apps and Telegram Database Library
-   Self-destructing messages
-   Users can be logged in on multiple devices simultaneously
-   Supports Two-Step Verification
-   GDPR compliant

Cons

-   Registration requires a phone number
-   E2E encryption only for Secret Chats
-   Servers are not open source
-   Logs IP Address and other user data (use a good VPN service)
-   May be sharing data with government agencies


<a id="org846959c"></a>

### harden

-   Phone Number → Who can see my phone number — Nobody.
-   Data and Storage → Auto Download Media → Toggle off
-   Phone Number → Who can find me by my number — My Contacts.
-   Last Seen & Online → Who can see my timestamp — Nobody.
-   Profile photo → Who can see my profile photo — My Contacts.
-   Calls → Who can call me — My Contacts (or Nobody, if you prefer).
-   Calls→ Peer-to-peer — My contacts (or Nobody, if you prefer not to share your IP address with chat partners).
-   Forwarded Messages → Who can add a link to my account when forwarding my messages — My Contacts.
-   Groups & Channels → Who can add me — My Contacts.

Disable P2P calls for everyone - IP address of the user’s call object will appear on the Telegram control log


<a id="org26b3882"></a>

### telegram api

create bot <https://core.telegram.org/bots>
get group id <https://stackoverflow.com/questions/32423837/telegram-bot-how-to-get-a-group-chat-id>

get group id:

-   <https://api.telegram.org/botXXX:YYYY/getUpdates>

send message:

-   curl -X POST "<https://api.telegram.org/botXXX:YYYY/sendMessage>" -d "chat<sub>id</sub>=-zzzzzzzzzz&text=my sample text"


<a id="org46b8e8e"></a>

## Check system by intrusion

-   logs
-   recent started processed:
    -   ps -ef &#x2013;sort=start<sub>time</sub>
    -   ps -aux &#x2013;sort=start<sub>time</sub>
    -   cd /proc; ls -td &#x2013;full-time &#x2013;time-style=+%s [0123456789]\*;


<a id="orga35367c"></a>

## namespaces - isolated instance of the global resource

For:

-   Changes to the global resource are visible to other processes that are members of the name‐ space, but are
    invisible to other processes.
-   Containers

man 7 namespaces

-   /proc/<pid>/ns/\*


<a id="org102f817"></a>

### types

-   Cgroup    CLONE<sub>NEWCGROUP</sub> cgroup<sub>namespaces</sub>(7)  Cgroup root directory
-   IPC       CLONE<sub>NEWIPC</sub>    ipc<sub>namespaces</sub>(7)     System  V  IPC, POSIX message queues. Inter process communication
-   Network   CLONE<sub>NEWNET</sub>    network<sub>namespaces</sub>(7) Network  devices,  stacks, ports, etc.
-   Mount CLONE<sub>NEWNS</sub> mount<sub>namespaces</sub>(7) Mount points. When new namespaces are created the current mounts are
    copied to a new namespace.
-   PID       CLONE<sub>NEWPID</sub>    pid<sub>namespaces</sub>(7)     Process IDs
-   Time      CLONE<sub>NEWTIME</sub>   time<sub>namespaces</sub>(7)    Boot and monotonic clocks
-   User      CLONE<sub>NEWUSER</sub>   user<sub>namespaces</sub>(7)    User and group IDs
-   UTS CLONE<sub>NEWUTS</sub> uts<sub>namespaces</sub>(7) Hostname and NIS domain name. This allows a system to have different host
    and domain names for various processes. UTS: unix timesharing system


<a id="org914b065"></a>

## Selinux (Security-Enhanced Linux)

Linux kernel module


<a id="org5753ada"></a>

## Disable executables, pip

1.  noexec on /home
2.  no pip and npm: chmod -x /usr/lib/python-exec/\*/pip\* ;  mv $(python -c 'import pip; import os; print(os.path.dirname(pip.\_<sub>file</sub>\_\_))'){,\_}
3.  block python: setfacl -m group:users:r /usr/bin/python\*
4.  no internet access


<a id="org84efc4a"></a>

## Hardening testers

<https://github.com/CISOfy/lynis>


<a id="org893dfb1"></a>

## Log analyzers

-   Graylog
-   Fluentd
-   LOGalyze
-   logwatch

Simple log analyzer based on regex:

    #! /bin/sh
    # All regex characters should be escaped!
    filters=( "wpa_supplicant is already stopped"
            )
    files=( /var/log/*.log
            )
    output=""
    if [ "$1" = "-" ]; then
        echo "Script was called with '-' argument"
        output+=$(cat | grep -Ei "warn|error|crit|fatal")
    else
        for file in "${files[@]}" ; do
            output+=$(tail -n 2000 "$file" | grep -Ei "warn|error|crit|fatal" | sed "s#^#\n${file}: #")
        done
    fi
    
    filt=$(for s in "${filters[@]}" ; do echo "$s" ; done  | grep . | tr '\n' '|' )
    filt=${filt:0:${#filt}-1}
    echo -E "$output" | grep . | rev | sort -k 1,3 | rev | grep -vE "$filt"


<a id="org2ac4dea"></a>

## Antivirus, online system monitoring

<https://github.com/lkrg-org/lkrg> - runtime integrity checking of the Linux kernel and detection of security
 vulnerability exploits against the kernel.

-   Gentoo: app-antivirus/lkrg


<a id="orgc6db598"></a>

## links

<https://medium.com/@pipermerriam/my-guide-to-solid-digital-security-fb76cb19c536#.hmz8imwe6>


<a id="org97d3a48"></a>

# wifi

-   wifi phy *sys/bus/usb/driver/mt7601u/\*/ieee80211*
-   wifi dev *sys/bus/usb/driver/mt7601u/\*/net*


<a id="orga10f3c6"></a>

## theory

electromagnetic radiation (EMR) - radio waves, microwaves, infrared, (visible) light, ultraviolet, X-rays, and
gamma rays

IEEE 802.11  wireless local area network (WLAN)

The most basic BSS consists of one AP and one STA.

Cellular network or mobile network - require sim card and modem, GMS-2G, UMTS-3g, LTE-4G, 5G


<a id="org3ce6bc7"></a>

### terms:

-   WLAN - Wireless LAN
-   WIFI - Wireless Fidelity - trademark
-   Fidelity - compatibility between wireless equipme
-   WiFI Alliance - non-profit organization wifi.org
-   RSSI - Received Signal Strength Indicator (usually 0-60 or 0-255)  - isn't standardized
-   dBm - decibels relative to a milliwatt - (-30 is a higher signal than -80)
-   access point (AP)
-   STAs - stations - all devices
-   Supplicant - [ˈsʌplɪkənt] Проситель at point-to-point LAN/WLAN segment that seeks to be authenticated by an
    authenticator. used in IEEE 802.1X standard
-   SSID - service set ID - WLAN needs a unique name. WLAN can have several AP - zero to 32 octets (32 bytes)
    long
    -   32 bytes
    -   wildcard SSID - null SSID - hidden SSID - used, in enterprise and mesh networks to steer a client to a
        particular (e.g. less utilized) access point.
    -   can be used by multiple APs in WLAN
-   BSSID - basic service set identifier - subset of SSID - included in all wireless packets. = AP MAC address
-   ESSID - extended basic service set - consists of all of the BSSs in the network - identifies the same
    network as the SSID does. The term SSID is used most often.
-   MBSS - mesh basic service set
-   MLME - Media Access Control (MAC) Sublayer Management Entity.
-   SME - Station Management Entity, often prepended with AP (Access Point)
-   Hotspot 2.0 - free access point, 2.0 is an approach to automatically connect and roam
-   tethering - private hotstop with smartphone
-   Beacon -  management frames in IEEE 802.11 based WLANs
    -   beacon interval - the frequency of the beacon is broadcast by router. transmitted by the access point (AP)
-   often 'packet' is taken to be the layer above 'frame' (i.e. level 3 of the OSI model).
-   frame -  (layer 2) IEEE 802.11 packets is encapsulated within the data field of the packet
-   Wireless Intrusion Prevention System (WIPS) - classifying known wireless devices, cataloguing their unique
    signal patterns
-   HT20 - channel bandwidth is 20 MHz. main channel sends Beacon packets and data packets, and the auxiliary
    channel sends other packets.
-   HT40 -  channel bandwidth is 40 MHz
    -   +/- - Two neighboring 20 MHz channels are bundled to form a 40 MHz channel. If the center frequency of the
        main 20 MHz channel is higher than that of the auxiliary channel, 40MHz-plus is displayed; otherwise,
        40MHz-minus is displayed.


<a id="org5131bb4"></a>

### frequency

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


<a id="orgb3b42e6"></a>

### channels 2.4 GHz (802.11b/g/n/ax)

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />

<col  class="org-right" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-right">Channel</th>
<th scope="col" class="org-right">F0 (MHz)</th>
<th scope="col" class="org-left">Frequency range (MHz)</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-right">1</td>
<td class="org-right">2412</td>
<td class="org-left">2401–2423</td>
</tr>


<tr>
<td class="org-right">2</td>
<td class="org-right">2417</td>
<td class="org-left">2406–2428</td>
</tr>


<tr>
<td class="org-right">3</td>
<td class="org-right">2422</td>
<td class="org-left">2411–2433</td>
</tr>


<tr>
<td class="org-right">4</td>
<td class="org-right">2427</td>
<td class="org-left">2416–2438</td>
</tr>


<tr>
<td class="org-right">5</td>
<td class="org-right">2432</td>
<td class="org-left">2421–2443</td>
</tr>


<tr>
<td class="org-right">6</td>
<td class="org-right">2437</td>
<td class="org-left">2426–2448</td>
</tr>


<tr>
<td class="org-right">7</td>
<td class="org-right">2442</td>
<td class="org-left">2431–2453</td>
</tr>


<tr>
<td class="org-right">8</td>
<td class="org-right">2447</td>
<td class="org-left">2436–2458</td>
</tr>


<tr>
<td class="org-right">9</td>
<td class="org-right">2452</td>
<td class="org-left">2441–2463</td>
</tr>


<tr>
<td class="org-right">10</td>
<td class="org-right">2457</td>
<td class="org-left">2446–2468</td>
</tr>


<tr>
<td class="org-right">11</td>
<td class="org-right">2462</td>
<td class="org-left">2451–2473</td>
</tr>


<tr>
<td class="org-right">12</td>
<td class="org-right">2467</td>
<td class="org-left">2456–2478</td>
</tr>


<tr>
<td class="org-right">13</td>
<td class="org-right">2472</td>
<td class="org-left">2461–2483</td>
</tr>
</tbody>
</table>


<a id="orgdf265c2"></a>

### health

The World Health Organization has classified radio frequency electromagnetic radiation as Group 2B – possibly
carcinogenic.


<a id="orgd905d48"></a>

### modes

-   AccessPoint (AP) infrastructure mode
-   Station infrastructure mode
-   Monitor mode
-   Ad-Hoc (IBSS) mode
-   Wireless Distribution System (WDS)
-   Mesh - Ячеистая топология


<a id="org189f6e7"></a>

### distance

free space loss:

-   FSPL (dB) = 20log10(d) + 20log10(f) + K
-   d = distance
-   f = frequency
-   K= constant that depends on the units used for d and f
-   If d is measured in kilometers, f in MHz, the formula is:
-   FSPL (dB) = 20log10(d)+ 20log10(f) + 32.44

Distance (km) = 10(Free Space Path Loss – 32.44 – 20log10(f))/20

<https://stackoverflow.com/questions/11217674/how-to-calculate-distance-from-wifi-router-using-signal-strength>

1.  java

    private const val DISTANCE<sub>MHZ</sub><sub>M</sub> = 27.55
    
    fun calculateDistance(frequency: Int, level: Int): Double =
            10.0.pow((DISTANCE<sub>MHZ</sub><sub>M</sub> - 20 \* log10(frequency.toDouble()) + abs(level)) / 20.0)


<a id="orgc6c190b"></a>

### security

-   Wired Equivalent Privacy (WEP) - security algorithm ( 802.11 Wired Equivalent Privacy (WEP) security
    mechanism defined in the original standard IEEE 802.11-1997)
-   Wi-Fi Protected Access (WPA) (802.11e then 802.11i)
    -   implements the Temporal Key Integrity Protocol (TKIP) - per-packet key - message integrity check stronger
        than a CRC
-   802.11i standard (i.e. WPA2) - WEP-40 and WEP-104  deprecated (802.11i, later incorporated into 802.11-2007)
    -   AES-based encryption mode (Pre-Shared Key)
    -   EAP-TLS optional authentication method .
    -   PSK - Pre-Shared Key
    -   CCMP protocol - Counter Mode CBC-MAC Protocol - message integrity check stronger
-   WPA3

Wi-Fi Protected Setup (WPS) - without password

-   PIN method
-   Push button method - typically 2 minutes or less -  router will scan for devices
-   Near-field communication method
-   USB method (deprecated)

WPA-Personal (WPA-PSK mode) - encrypts the network traffic by deriving its 128-bit encryption key from a
256-bit shared key.

-   string of 64 hexadecimal digits or 8 to 63 printable ASCII characters.
-   pre-shared key (PSK) -

WPA-Enterprise (WPA-802.1X mode) (sometimes just WPA as opposed to WPA-PSK)

-   requires a RADIUS authentication server (FreeRADIUS)
-   Extensible Authentication Protocol (EAP) are used for authentication

Wi-Fi Protected Setup (WPS)

-   creates a major security hole via WPS PIN recovery.

CCMP -
<https://en.wikipedia.org/wiki/IEEE_802.11>

1.  EAP extensions

    -   EAP-TLS (previously tested)
    -   EAP-TTLS/MSCHAPv2 (April 2005[27])
    -   PEAPv0/EAP-MSCHAPv2 (April 2005)
    -   PEAPv1/EAP-GTC (April 2005)
    -   PEAP-TLS
    -   EAP-SIM (April 2005)
    -   EAP-AKA (April 2009[28])
    -   EAP-FAST (April 2009)

2.  Security issues

    -   Weak password - Pre-shared key WPA and WPA2
        -   WPA passphrase hashes are seeded from the SSID name and its length
    -   Lack of forward secrecy
        -   Forward secrecy - feature of specific key agreement protocols - session keys will not be compromised even
            if long-term secrets used in the session key exchange are compromised


<a id="orgb39479c"></a>

### wifi Generations

-   Wi‑Fi 7 	802.11be 	40000 	TBA 	2.4/5/6
-   Wi‑Fi 6E 	802.11ax 	600 to 9608 	2020 	2.4/5/6
-   Wi‑Fi 6 	2019 	2.4/5
-   Wi‑Fi 5 	802.11ac 	433 to 6933 	2014 	2.4/5	обратн совместимост с n
-   Wi‑Fi 4 	802.11n 	72 to 600 	2008 	2.4/5	обратно совместим с b / g / a?
-   (Wi-Fi 3\*) 	802.11g 	6 to 54 	2003 	2.4	обратно совместимой с b
-   (Wi-Fi 2\*) 	802.11a 	6 to 54 	1999 	5	Не совместим с сетями b или g.
-   (Wi-Fi 1\*) 	802.11b 	1 to 11 	1999 	2.4	Совместим с g сетями.
-   (Wi-Fi 0\*) 	802.11 	1 to 2 	1997 	2.4


<a id="orgc21f639"></a>

### MIMO Multiple Input Multiple Output

802.11n


<a id="org59943ed"></a>

### frames layer 2

1.  consist of

    Each frame consists of a
    
    -   MAC header
    -   payload
    -   frame check sequence (FCS).
    -   Management frames (opetional)
    
    MAC header:
    
    -   Frame Control − 2 bytes, 11 subfields.
        -   Protocol version − 2 bits 00.
        -   Type − 2 bits
        -   Subtype − 4 bits – Request to Send (RTS) or a Clear to Send (CTS) For a regular data frame, the value is
            set to 0000.
        -   To DS − 1 bit indicating whether the frame is going to the access point (AC)
        -   From DS − 1 bit subfield indicating whether the frame is coming from the AC.
        -   More Fragments − 1 bit - 1 indicates that more fragments would follow.
        -   Retry − 1 bit -  1 specifies a retransmission of a previous frame.
        -   Power Management − 1 bit - 1 =  the sender is adopting power-save mode.
        -   More Data − 1 bit - 1 = sender has further data frames for the receiver.
        -   Protected Frame − 1 bit - 1 = encrypted frame.
        -   Order − 1 bit, informs the receiver that to the higher layers the frames should be in an ordered sequence.
    -   Duration −  2-byte - the time period for which the frame and its acknowledgement occupy the channel.
    -   Address 1:  6-byte - Destination address MAC
    -   Address 2:  6-byte - Source address MAC
    -   Address 3:  6-byte - BSS Id
    -   Sequence − 0 or 2-byte - first 4 bits provides identification to the fragment and the rest 12 bits contain the
        sequence number that increments with each transmission.
    -   Address 4: - 0 or 6-byte only present in between access points in an Extended Service Set or between intermediate nodes in a mesh network.
    -   QoS control 0 or 2 bytes -
    -   Data − variable sized
    -   Frame Check Sequence (FCS) − 4-byte field -  error detection information.

2.  Types and SubTypes

    -   Probe Request/Response
    -   Beacon frame - send by AP
    -   RTS <= ready to send
    -   CTS => Clear to send
    -   Data <= MAC level transmission is not acked
    -   ACK => Acknowledgement

3.  links

    <https://en.wikipedia.org/wiki/802.11_Frame_Types>


<a id="org49e855d"></a>

### WPA/WPA2

-   PMK - (Pairwise Master Key)
-   PTK or GTK (Pairwise Transit Key) PTK = f(ANonce, SNonce, PMK, A<sub>MAC</sub>, S<sub>MAC</sub>)
-   ANONCE- is a random number that the AP has made. Authenticator
-   SNONCE- is a random number that the client has made. supplicant
-   MIC- Message Integrity Code

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">encryption</th>
<th scope="col" class="org-left">encryption algorithm</th>
<th scope="col" class="org-left">IV size</th>
<th scope="col" class="org-left">encryption key</th>
<th scope="col" class="org-left">Integrity mechanism</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">WEP</td>
<td class="org-left">RC4</td>
<td class="org-left">24-bits</td>
<td class="org-left">40/104-bits</td>
<td class="org-left">CRC-32</td>
</tr>


<tr>
<td class="org-left">WPA</td>
<td class="org-left">RC4,TKIP</td>
<td class="org-left">48-bits</td>
<td class="org-left">128-bits</td>
<td class="org-left">Michael Alg and CRC-32</td>
</tr>


<tr>
<td class="org-left">WPA2</td>
<td class="org-left">AES, CCMP</td>
<td class="org-left">48-bits</td>
<td class="org-left">128-bits</td>
<td class="org-left">CBC-MAC</td>
</tr>
</tbody>
</table>

EAP-based 4-way handshake

1.  <= ANonce
2.  => SNONCE + MIC
3.  <= GTK + MIC
4.  => Ack


<a id="org704708f"></a>

## Mediatek mt7601u

-   <https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/mediatek>
-   <https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/net/wireless/mediatek/mt7601u>

b/g/n

/lib/firmware/mt7601u.bin


<a id="org6e8db50"></a>

## linix kernel support

Firmware license tags: redistribution allowed, **closed source**!

-   <https://en.wikipedia.org/wiki/Comparison_of_open-source_wireless_drivers>
-   <https://wireless.wiki.kernel.org/en/users/drivers>
-   <https://deviwiki.com/wiki/Main_Page>


<a id="orga590e02"></a>

## install

1.  to keep simple names: touch /etc/udev/rules.d/80-net-name-slot.rules
2.  net-wireless/iwd or net-wireless/wpa<sub>supplicant</sub> -  allows users to connect to WPA enabled access points
3.  enable regulatory domain in kernel
4.  - rfkill unblock all
    -   ifconfig -a
    -   ifconfig -v wan0 up


<a id="org8efe91c"></a>

## iw

low level device config, WEP, scan

-   iw phy [phy1 info]
-   iw dev
-   iw dev wlan0 info
-   iw phy1 reg get
-   iw dev wlan0 scan -u passive | less
-   


<a id="orge0df541"></a>

### monitor mode

-   new<sub>mac</sub>=(date +%N |md5sum|sed 's/^$..$$..$$..$$..$$..$.\*$/02:\\1:\\2:\\3:\\4:\\5/') # generate MAC address random MAC address
-   iw phy phy0 interface add mon0 type monitor addr $new<sub>mac</sub>
-   iw dev wlan0 del (optional)
-   ifconfig mon0 up # default channel 1 frequency 2412 MHz
-   iw dev mon0 set freq 2437


<a id="orgdce14e0"></a>

## iwd

-   debug: /usr/libexec/iwd -d
-   iwd keeps the configuration file at /var/lib/iwd as a .psk file with your access point name.


<a id="orgaf6cd18"></a>

### dependencies

-   kernel access ell -
-   


<a id="orge540afa"></a>

### iwctl

-   iwctl device list
-   iwctl station wlan0 show - station mode infp
-   iwctl known-networks list - history of connections
-   scan:
    -   station wlp2s0b1 scan - not required
    -   station wlp2s0b1 get-networks
-   iwctl &#x2013;passphrase '' station  wlp2s0b1 connect TestWPA2


<a id="orge2c70b2"></a>

### bash<sub>alias</sub>

alias wificonn="echo detected WLAN: $(ip a | grep -o -m1 'wlan.') ; rc-service iwd start ; sleep 1 ; iwctl &#x2013;passphrase='60s%.!<sub>Col</sub>' station $(ip a | grep -o -m1 'wlan.') connect TP-Link<sub>ACC3</sub> "
alias wifiget="rc-service iwd start ; sleep 1 ; iwctl station $(ip a | grep -o -m1 'wlan.') get-networks"
alias wifiup="rfkill unblock 0 && ip link set wlan0 up"


<a id="orgdc0c0d2"></a>

### WiFi provisioning

-   Blynk.Inject - mobile app UI - get password for  your home or office WiFi


<a id="orgec426e4"></a>

### MAC Address Randomization

/etc/iwd/main.conf:

-   [General]
-   AddressRandomization=network


<a id="org2027ea1"></a>

### scripts

alias wificonn="echo detected WLAN: $(ip a | grep -o -m1 'wlan.') ; rc-service iwd start ; sleep 1 ; iwctl &#x2013;passphrase='60s%.!<sub>Col</sub>' station $(ip a | grep -o -m1 'wlan.') connect TP-Link<sub>ACC3</sub> "
alias wifiget="rc-service iwd start ; sleep 1 ; iwctl station $(ip a | grep -o -m1 'wlan.') get-networks"
alias wifiup="rfkill unblock 0 && ip link set wlan0 up"


<a id="org26c81b8"></a>

### links

-   <https://wiki.archlinux.org/title/Iwd>
-   <https://wiki.gentoo.org/wiki/Iwd>
-   iwd doc <https://iwd.wiki.kernel.org/>
-   git <https://git.kernel.org/pub/scm/network/wireless/iwd.git>


<a id="org964478d"></a>

## wpa<sub>supplicant</sub>

WPA/WPA2/Enterprise connections, device control

1.  emerge &#x2013;ask net-wireless/wpa<sub>supplicant</sub>
2.  bzless /usr/share/doc/${P}/wpa<sub>supplicant.conf.bz2</sub> > /etc/wpa<sub>supplicant</sub>/wpa<sub>supplicant.conf</sub>
3.  chmod o-rwx /etc/wpa<sub>supplicant</sub>/wpa<sub>supplicant.conf</sub>


<a id="orgff4332f"></a>

### config

-   ctrl<sub>interface</sub>=DIR=/run/wpa<sub>supplicant</sub> GROUP=wheel
-   update<sub>config</sub>=1
-   bgscan="simple:120:-75:600" - scab trashold
-   mac<sub>addr</sub>=1 - rendom MAC per EES connection


<a id="org110ff28"></a>

### status

-   address - MAC address
-   UUID - for WPS - generated based on local MAC address


<a id="orgcceb95e"></a>

### scan and scan<sub>results</sub>

-   frequency - MHZ
-   signal level - dBm
-   flags -  security options


<a id="org9689a86"></a>

### wpa<sub>cli</sub>

>add<sub>network</sub>
>set<sub>network</sub> 0 ssid "myssid"
>set<sub>network</sub> 0 psk "password"
>enable 0

>add<sub>network</sub>
>set<sub>network</sub> 0 ssid "myssid"
>set<sub>network</sub> 0 key<sub>mgmt</sub> SAE
>set<sub>network</sub> 0 sae<sub>password</sub> "password"
>enable 0

set<sub>network</sub> ieee80211w 2


<a id="org048f76a"></a>

## wireless-tools

-   iwconfig
-   iwevenqt
-   iwgetid
-   iwlist
    -   scanning
    -   frequency/channel - Center frequencies
    -   encryption/keys
-   iwpriv
-   iwspy


<a id="orgf51d852"></a>

## cat /proc/net/wireless


<a id="org00a8efe"></a>

## errors

direct firmware load failed error -2

-   if you built driver into kernel (not as a module) the firmware will not load because at the time kernel
    loads the root filesystem is not mounted yet.
-   include firmware in kernel binary:
    -   Device Drivers  &#x2014;>  Generic Driver Options  &#x2014;>  Firmware loader &#x2014;>
        -   -\*- Firmware loading facility
        -   () Build named firmware blobs into the kernel binary
        -   (/lib/firmware) Firmware blobs root directory

DORMANT - power saving mode

-   disable pwer saving
-   


<a id="org759d621"></a>

## regulatory domain

governments assert the right to regulate usage of radio spectrum within their respective territories

-   ne-wireless/crda
    -   Central Regulatory Domain Agent (CRDA) - can be triggered to update the kernel wireless core's definition of
        the regulatory permissions for a specific country.
-   ne-wireless/wireless-regdb -  regulatory database used by CRDA
-   use ISO 3166-1 alpha-2 country codes <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2>

loads the database via udev rule

TODO /etc/default/crda

regilatory database

-   binary file format - to have the data available quickly and as compact as possible, authorship and integrity
-   embedding the signature into the binary file
-   signature is checked against a list of public keys built into the regulatory daemon binary

Kernel:

-   Please set CONFIG<sub>CFG80211</sub>=m or add regulatory.db and regulatory.db.p7s to CONFIG<sub>EXTRA</sub><sub>FIRMWARE</sub>.
    -   CONFIG<sub>EXTRA</sub><sub>FIRMWARE</sub>="regulatory.db regulatory.db.p7s"
    -   CONFIG<sub>EXTRA</sub><sub>FORMWARE</sub><sub>D</sub>="/lib/firmare"


<a id="orgb70a144"></a>

### links

<https://wireless.wiki.kernel.org/en/developers/Regulatory>
<https://wiki.archlinux.org/title/Network_configuration/Wireless#Respecting_the_regulatory_domain>
<https://www.kernel.org/doc/html/latest/networking/regulatory.html>


<a id="org15273bd"></a>

## testing

-   tree /sys/class/net
-   ip addr
-   ifconfig -a
    -   ifconfig -v wlan0 up # activate
-   dmesg | grep -i -E 'xx:xx.x|wlan|iwl|80211'
-   udevadm monitor &#x2013;environment kernel


<a id="org7739b81"></a>

## links

-   linux kernel doc <https://wireless.wiki.kernel.org/en/users/documentation>
-   <https://docs.google.com/viewer?url=https%3A%2F%2Fwifigid.ru%2Fwp-content%2Fuploads%2F2018%2F11%2Fwifi-3.pdf&hl=ru&embedded=true>


<a id="orgf3355d4"></a>

## hardware

-   <https://en.wikipedia.org/wiki/Comparison_of_open-source_wireless_drivers>
-   <https://openwrt.org>
-   <https://github.com/ZerBea/hcxdumptool>


<a id="org11c2e88"></a>

### standards

-   IEEE 802.11 - base standard 1997
    -   802 Overview and Archirecture
    -   802.2 Logical Link Control
    -   802.1 Bridging, Management
    -   802.10 Security
    -   IEEE 802.3 Etherenet
    -   802.16 WiMAX
    -   802.17 Resilient Packet Ring (RPR)
    -   802.11\* apply to all WiFi devices
    -   Standards with upper case letters are base standards, e.g. IEEE 802.1AB-2009
-   first version 1997 IEEE 802.11 -
    -   MAC layer and 3 physical
    -   2.4 GHz
    -   1-2Mbps
    -   no longer used


<a id="org3c179e8"></a>

### physical

1.  ready to send (RTS) (dest and message duration) ->
2.  Clear to send (CTS) <-
3.  Data ->
4.  ACK <-(MAC-level retransmission if not acked)

Frame Format


<a id="orge23eecd"></a>

## wifi sec recomendations

-   избегайте банковских операций во время подключения к публичным сетям
-   никогда не авторизуйтесь в сети, если для подтверждения у вас просят номер телефона, электронную почту или
    же социальную сеть. В таком случае, этими данными могут воспользоваться злоумышленники
-   отключите опцию общего доступа к вашим файлам
-   не используйте обнаружение вашего девайся другими пользователями сети
-   также нежелательна опция автоматического подключения к открытой сети
-   не регистрируйтесь на сайтах во время подключения к общедоступным сетям Wi-Fi
-   избегайте сетей в которых соединение периодически прерывается
-   при подключении к общей сети - желательно использовать VPN-сервесы


<a id="org6c3b2c2"></a>

## RTL8812AU/21AU

-   <https://github.com/aircrack-ng/rtl8812au>
-   <https://www.justsomestuff.co.uk/wiki/doku.php/linux/add_driver>
-   book linux device drivers <https://lwn.net/Kernel/LDD3/>
-   <https://stackoverflow.com/questions/8549992/kernel-how-to-add-a-new-source-file-for-kernel-build>

I copied  aircrack-ng/rtl8812au to kernel folder: drivers/net/wireless/realtek/rtlwifi/
I add line to drivers/net/wireless/realtek/rtlwifi/Makefile:  obj-$(CONFIG<sub>88XXAU</sub>)		+= rtl8812au/
I add lines to drivers/net/wireless/realtek/rtlwifi/Kconfig:
config 88XXAU
	tristate "Realtek RTL8812AU USB Wireless Network Adapter"
	depends on USB
	select RTLWIFI
	select RTLWIFI<sub>USB</sub>
	help
	This is the driver for Realtek RTL8812AU USB
I replaced line in file rtl8812au/Makefile : export CONFIG<sub>88XXAU</sub> = m
with: export CONFIG<sub>88XXAU</sub> = y


<a id="orgad1d0c1"></a>

# bluetooth

2.4 GHz - 1-3Mbps

-   net-wireless/blueman
-   net-wireless/bluez
    
    bluetoothctl
    
    -   scan on
    
    pairing - connection without user intervention (for example, as soon as in range)


<a id="orgbca7fa5"></a>

## pygatt vs pybluez

-   The PyGatt library is based on PyBluez,


<a id="org58d6885"></a>

## terms

Bluetooth RSSI (Received Signal Strength Indicator) - measured in decibels (dBm). The more negative the RSSI
 value, the further away the Bluetooth device.


<a id="org1a5794d"></a>

## BT-400 not required

-   guide <https://gist.github.com/ssledz/69b7f7b0438e653c08c155e244fdf7d8>
-   curl 'https://dlcdnets.asus.com/pub/ASUS/wireless/USB-BT400/DR<sub>USB</sub><sub>BT400</sub><sub>1201710</sub><sub>Windows.zip</sub>' -o bt400-driver.zip
-   id to  hex name <https://aur.archlinux.org/cgit/aur.git/tree/filelist.txt?h=bcm20702a1-firmware>


<a id="orgd14b1f9"></a>

## D-Bus

inter-process communication mechanism

-   non-transactional. It is stateful and connection-based
-   dbus daemon - runs an actual **bus**
    -   bus address will typically be the filename of a Unix-domain socket such as "*tmp*.hiddensocket

dev-util/d-feet


<a id="orgd57a6fc"></a>

## bash alias

alias blueup="rc-service bluetooth up ; sleep 1; bluetoothctl power on && bluetoothctl scan on"
alias bluedown="bluetoothctl power off"


<a id="orge75222f"></a>

## RTL8761B

/usr/lib/firmware/rtl<sub>bt</sub>/rtl8761b<sub>fw.bin</sub> OR /lib/firmware/rtl<sub>bt</sub>/rtl8761b<sub>fw.bin</sub>
/usr/lib/firmware/rtl<sub>bt</sub>/rtl8761b<sub>config.bin</sub> OR /lib/firmware/rtl<sub>bt</sub>/rtl8761b<sub>config.bin</sub>
<https://linuxreviews.org/Realtek_RTL8761B>
<https://aur.archlinux.org/packages/rtl8761usb>

<https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=rtl8761usb>


<a id="orgd7d9107"></a>

## bluetoothctl

-   help			help
-   current device	list
-   status		show
-   scan			scan
-   disable/enamble	power off/on
-   connected devices	devices

to find devices:

1.  activate scan - scan on
2.  devices - to get name
3.  look back to find out RSSI


<a id="org355b154"></a>

## bluealsa-aplay

bluealsa -p a2dp-sink -p a2dp-source &#x2013;xapl-resp-name=iPhone &#x2013;a2dp-volume

BlueALSA volume persistent state storage:

-   <https://github.com/TheWeirdDev/Bluetooth_Headset_Battery_Level>
-   <https://github.com/arkq/bluez-alsa/blob/master/doc/bluealsa.8.rst>


<a id="org8fa7f9a"></a>

### /etc/dbus-1/system.d/bluealsa.conf

add lines:

-   <allow send<sub>destination</sub>="org.bluealsa.sink" />
-   <allow send<sub>destination</sub>="org.bluealsa.source" />

    <!-- This configuration file specifies the required security policies
         for BlueALSA core daemon to work. -->
    
    <!DOCTYPE busconfig PUBLIC "-//freedesktop//DTD D-BUS Bus Configuration 1.0//EN"
     "http://www.freedesktop.org/standards/dbus/1.0/busconfig.dtd">
    <busconfig>
    
      <!-- ../system.conf have denied everything, so we just punch some holes -->
    
      <policy user="root">
        <allow own_prefix="org.bluealsa"/>
        <allow send_destination="org.bluealsa"/>
        <allow send_destination="org.bluealsa.sink" />
        <allow send_destination="org.bluealsa.source" />
      </policy>
    
      <policy group="audio">
        <allow send_destination="org.bluealsa"/>
        <allow send_destination="org.bluealsa.sink" />
        <allow send_destination="org.bluealsa.source" />
      </policy>
    
    </busconfig>


<a id="org9fccf3f"></a>

### asoundrc

    pcm.!default {
             type plug
             slave.pcm {
                     type bluealsa
                     device "xx:xxx:xxx:xx..."
                     profile "a2dp"
                     delay 1000
             }
             hint {
                     show on
                     description "BT Headset"
             }
       }
    
       ctl.!default {
               type bluealsa
               device "xx:xxx:xxx:xx...." - NOT REQUIRED!
       }


<a id="org38a3672"></a>

### asoundrc2

    pcm.bluetooth {
        type bluealsa
        device "64:6B:B1:3A:B6:37"
        profile "a2dp"
        hint {
                  show on
                  description "BT Headset"
          }
    }
    
    pcm.!default {
        type plug
        slave.pcm "bluetooth"
    }


<a id="orgbd10474"></a>

## links

<https://elinux.org/images/3/32/Doing_Bluetooth_Low_Energy_on_Linux.pdf>


<a id="orgbb7d6ff"></a>

# image


<a id="org5e7d981"></a>

## rotate

to right

    convert image.jpg -rotate 90 image.jpg

to left (keep size)

    convert image.jpg -distort SRT -90 image.jpg


<a id="orgc04bd3a"></a>

## reduse size

    for f in /home/u/Desktop/* ; do convert $f -resize 1000x1000 -quality 90% /home/u/Desktop/conv/$(basename $f) ; done

enhance size:

    f="/home/u/Desktop/conf2/a.jpg" ; convert /home/u/Desktop/conf/$(basename "$f") -resize 2000x2000 -quality 93% "$f"

**change resolution and keep aspect ration**

    convert a.jpg -geometry 300x300 a2.jpg


<a id="orgf8bccba"></a>

## hidden data

**get hidden data**

-   feh &#x2013;draw-exif
-   exiv2 / exifgrep
-   exiftool -auU -g1 image

**clear hidden data**

-   exiftool -all= image

    for f in /home/u/Desktop/conf2/* ; do exiftool -all= $f ; done


<a id="orge84eb8d"></a>

## images slideshow

-   feh -D 2 /dir


<a id="orgfb49928"></a>

## TODO one image inside of onether

<https://stackoverflow.com/questions/38476804/insert-one-image-into-another-using-convert>


<a id="org04bfe24"></a>

## merge several to one

montage -mode concatenate -tile 1x v[1-9].jpg out.jpg


<a id="org0d39508"></a>

# imageMagic


<a id="org9945ed0"></a>

## troubles

convert: attempt to perform an operation not allowed by the security policy \`PDF' @ error/constitute.c/IsCoderAuthorized/449.

-   /etc/ImageMagick-7/policy.xml: <policy domain="coder" rights="read | write" pattern="PDF" />
-   security vulnerability that caused distributions to implement the policy: can allow an attacker to execute
    arbitrary commands with arbitrary arguments. in Ghostscript

sh: line 1: gs: command not found \n convert: FailedToExecuteCommand \`'gs'

-   


<a id="orga3412ab"></a>

# Firefox

startup:

-   emerge x11-apps/xhost app-admin/sudo
-   /etc/sudoers.d/ff
    -   user ALL=(ff) NOPASSWD: ALL
-   xhost si:localuser:ff ; sudo -u ff firefox -width 1366 -height 768 $@

-   privacy.resistFingerprinting to true - fix screen resolution 1000 × 900 with errors possible, replace user-agent

browser.cache.disk.enable - to false ?


<a id="org145bc41"></a>

## keys

Alt, e, n, Alt+Shift+e, Alt+Shift+e - proxy settings, arrow to choose


<a id="org4c8f7c9"></a>

## fingerprints

articles:

-   article <https://pixelprivacy.com/resources/browser-fingerprinting/>
-   1 <https://habr.com/ru/company/selectel/blog/521550/>
-   2 <https://habr.com/ru/company/selectel/blog/523462/>
-   entropy <https://habr.com/ru/post/357238/>
-   <https://webkay.robinlinus.com/>

recommended Firefox Plugins <https://amiunique.org/privacy-tools>

<https://browserleaks.com/>

-   <https://whoer.net/en>


<a id="org3f50903"></a>

### <https://coveryourtracks.eff.org/>

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
<https://coveryourtracks.eff.org>


<a id="org35ab167"></a>

### <http://uniquemachine.org/> with source code

Browser fingerprint
707b6f3c0e81118309c95b165772ddbc

Computer fingerprint (Developing, not finished)
1c1d5d28a5423225bd29d898d1c5c551


<a id="org7036c1c"></a>

### <https://browserleaks.com/fonts>

286,568 tested

✔ 2e8d42d63e7a992891473b0e92b935c7
Report	60 fonts and 15 unique metrics found

Fingerprint	✔ f11f4549


<a id="orga63ef41"></a>

## screen

Никогда не развертывать на весь экран

-   stats <https://www.w3schools.com/browsers/browsers_display.asp>
    -   most common 1366x768
-   get current <https://whatismyresolution.com/>

firefox -width 1366 -height 768 ( do not work with resistFingerprinting)
add-on Window Resizer by antwhere.com <https://addons.mozilla.org/en-US/firefox/addon/window-resizer-antwhere/>

-   870 - 666 = 102 = 768 + 102 = 1366x870


<a id="orgf83cbd8"></a>

## disable GPU fingerprint(hardware acceleration)

to true:
gfx.direct2d.disabled
layers.acceleration.disabled


<a id="org7af6785"></a>

## fonts

Font Fingerprint Defender by ilGur <https://addons.mozilla.org/en-US/firefox/addon/font-fingerprint-defender/>

or

browser.display.use<sub>document</sub><sub>fonts</sub>  - 0


<a id="org8060009"></a>

## TLS

-   check <https://browserleaks.com/ssl>
-   config <https://wiki.gentoo.org/wiki/Firefox>

security.tls.version.min - 3


<a id="org8eacd13"></a>

## User-Agent

Good Plugin: User Agent by SandVPN

Random User-Agent by Paramtamtam

require privacy.resistFingerprinting to be disabled

Plugins:

-   User-Agent Switcher (GPLv3) <https://gitlab.com/ntninja/user-agent-switcher>
-   MIT <http://www.whatuseragent.com/> - github.com -  alert(window.navigator.userAgent) - not hide

**check User-Agent inside of JavaScript**

-   alert(window.navigator.userAgent)


<a id="org4d6ceb9"></a>

### testers


<a id="org49d5a3f"></a>

## user agent ( net required)

-   about:config  general.useragent.override

popular:

-   <https://beamtic.com/user-agents/?browser=FireFox>
-   <https://whatmyuseragent.com/browser/firefox/ff>
-   Mozilla/5.0 (Linux x86<sub>64</sub>; rv:79.0) Gecko/20100101 Firefox/79.0
-   Mozilla/5.0 (Linux x86<sub>64</sub>; rv:79.0) Gecko/20100101 Firefox/79.0
-   Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0


<a id="org59bbce3"></a>

## User-Agent checkers

-   <https://amiunique.org/stats>
-   <https://amiunique.org/fingerprint>
-   <https://webbrowsertools.com/useragent/>
-   <https://www.whatismyip.com/user-agent/>
-   <https://tools.iplocation.net/http-browser-header>


<a id="org580890a"></a>

## disable webgl

to true

-   webgl.disabled
-   privacy.firstparty.isolate

to false

-   geo.enabled

FOR VPN:
media.peerconnection.enabled


<a id="org2a6d46d"></a>

## plugins

Disable JavaScript <https://github.com/dpacassi/disable-javascript>
Font Fingerprint Defender <https://addons.mozilla.org/en-US/firefox/addon/window-resizer-antwhere/>
WindowResizer
CanvasBlocker by Korbinian Kapsner github.com/kkapsner

all in in:

-   CanvasBlocker
-   User-Agent Switcher (with 3 persons on image)
-   

3

-   disable-javascript <https://addons.mozilla.org/en-US/firefox/addon/disable-javascript/>
-   User-agent switcher
-   canvas blocker <https://addons.mozilla.org/en-US/firefox/addon/canvasblocker/>


<a id="org7499881"></a>

## disable javaScript

javascript.enabled


<a id="org6722696"></a>

## profile

about:profiles

firefox -width 1366 -height 768 -P -no-remote second


<a id="org99ee21d"></a>

## GNU JS Trap

<https://www.gnu.org/philosophy/javascript-trap.html>


<a id="orgba9e3f6"></a>

## xpi extensions

<https://wiki.mozilla.org/Add-ons/Extension_Signing#Unbranded_Builds>

Extension must be

1.  zipped:
    -   zip -r -FS a.zip mouseless-plugin-master/\* &#x2013;exclude '**.git**'
    -   7z a a.xpi librejs-7.20.2/\* -r
2.  zip must be signed with api or web-ext sign to xpi format

xpinstall.signatures.required false - but not working


<a id="org999f23c"></a>

## check xpi extension

diff -Z mouseless-plugin-master/ mouseless<sub>jk</sub>-0.12.2-an+fx-linux/


<a id="orgff08e57"></a>

## Mouse and links

<https://github.com/mortie/mouseless-plugin>
with krita images extracted <https://github.com/aaact-aatia/mouseless-plugin>
<https://addons.mozilla.org/en-US/firefox/addon/mouseless-plugin/>

not working

-   alt
-   meta
-   go forward
-   page up,page down , fast ones


<a id="orgf698d20"></a>

## Mouse and links complex

<https://github.com/brookhong/Surfingkeys>
<https://addons.mozilla.org/en-US/firefox/addon/surfingkeys_ff/>


<a id="org8578aa8"></a>

## Gentoo specific

USE="-gmp-autoupdate" has disabled the following plugins from updating or installing into new profiles:

-   gmp-gmpopenh264
-   gmp-widevinecdm


<a id="org2ada53e"></a>

### Normandy

-   service which allow Mozilla to push changes for default settings or even install new add-ons remotely
-   app.normandy.enable=false
    -   disabled in gentoo


<a id="orgf1688e4"></a>

## Tor compatibility

network.proxy.socks<sub>remote</sub><sub>dns</sub>    true
network.dns.disablePrefetch       true
network.dns.disableIPv6           true
media.peerconnection.enabled    false


<a id="orgf10b8e6"></a>

## user.js - Firefox configuration hardening

-   <https://github.com/pyllyukko/user.js/>
-   <https://github.com/arkenfox/user.js/>
    -   app.update.enabled false
    -   extensions.update.enabled false
    -   security.OCSP.enabled 1 - for normal 0 - for tor
    -   dom.security.https<sub>only</sub><sub>mode</sub> - true for normal, false for tor
    -   plugins.update.notifyUser false
    -   dom.event.contextmenu.enabled - uncomment
    -   places.history.enabled - true for normal false for tor
    -   may request something
        -   browser.safebrowsing.enabled - false
        -   browser.safebrowsing.phishing.enabled - false
        -   browser.safebrowsing.malware.enabled - false
    -   keyword.enabled true
    -   image.webp.enabled false - by hands now


<a id="orgbe68d92"></a>

### own config from two sources

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


<a id="orgf611d6a"></a>

## certificates

By default your browser trusts 100's of Certificate Authorities (CAs)

Settings -> Privacy & Security -> Certificates

**allow self signed**:

-   network.stricttransportsecurity.preloadlist to False


<a id="orgd9a4195"></a>

## images loading

permissions.default.image

-   1 &#x2013; Always load the images
-   2 &#x2013; Never load the images
-   3 &#x2013; Don't load third images


<a id="org94adb68"></a>

## Debugging remote Firefox instances and headless

-   /path/to/firefox &#x2013;start-debugger-server 6000 -headless
-   /path/to/firefox &#x2013;start-debugger-server ws:6000 -headless
-   about:debugging
-   <https://github.com/mozilla/node-firefox>
-   <https://github.com/saucelabs/foxdriver>

<https://pythonbasics.org/selenium-firefox-headless/>


<a id="orgff39074"></a>

## proxy switcher

-   <https://addons.mozilla.org/en-US/firefox/addon/switcher_proxy/>
-   <https://github.com/vheidari/switcher>


<a id="org86f07ec"></a>

## troubleshooting

Cross-Origin Request Blocked: The Same Origin Policy disallows reading the remote resource at <https://play.google.com/log?format=json&hasfast=true&authuser=0>. (Reason: CORS header ‘Access-Control-Allow-Origin’ missing). Status code: 503.

-   about:config
    -   security.fileuri.strict<sub>origin</sub><sub>policy</sub>

no microphone - alsa - type asym - pcm.capture

-   <https://wiki.gentoo.org/wiki/ALSA#Soundcard_only_available_for_one_application>
-   <https://forums.gentoo.org/viewtopic-t-1112016-start-0.html>


<a id="orgc1b6368"></a>

## microphone

<https://mymictest.com/headphone-mic-test>
<https://www.onlinemictest.com/tuners/pitch-detector/>


<a id="org7ab3cf3"></a>

## cache

browser.cache.check<sub>doc</sub><sub>frequency</sub>

-   **0:** Check for a new version of a page once per session (a session starts when the first application window
    opens and ends when the last application window closes).
-   **1:** Check for a new version every time a page is loaded.
-   **2:** Never check for a new version - always load the page from cache.
-   **3:** Check for a new version when the page is out of date. (Default)
    
    browser.cache.disk.enable or browser.cache.memory.enable must be set to true for this preference to work as
    mentioned above.


<a id="orgc7aebcb"></a>

# Stumpmw - window manager

tiling window manager -  entirely in Common Lisp. License: GNU GPL v2.0

highly customizable while relying entirely on the keyboard for input.

-   Allows rebinding of keys to other commands.
-   Shell scripting. ??
-   Virtual desktops.
-   Write commands.
-   Emacs keybindings


<a id="org38f545c"></a>

## links

-   <https://stumpwm.github.io/>
-   <https://github.com/stumpwm/stumpwm>
-   doc <https://stumpwm.github.io/documentation.html>


<a id="org4c93dde"></a>

# Nyxt

<https://nyxt.atlas.engineer/>


<a id="org3435188"></a>

# suckless tools

<https://suckless.org/>

-   **Dwm** window manager   <https://en.wikipedia.org/wiki/Dwm>
    -   configuration in C
-   **surf** is a simple web browser based on WebKit2/GTK+
-   \*


<a id="orgbce3671"></a>

# rtorrent

-   <https://github.com/rakshasa/rtorrent>
-   <https://github.com/rakshasa/rtorrent/wiki>


<a id="org92a74be"></a>

## install from sources

may be need [24.9](#org5baa304)

    apt install --no-install-recommends -y sudo autoconf automake g++ make libtool libtorrent-dev libcurl4-openssl-dev libncurses-dev cmake tmux wget
    cd /usr/local/src/
    wget https://github.com/rakshasa/rtorrent/releases/download/v0.9.8/rtorrent-0.9.8.tar.gz
    tar xpf rtorrent-0.9.8.tar.gz
    cd rtorrent-0.9.8
    ldconfig
    autoconf
    make clear
    ./autogen.sh
    ./configure
    make
    make install
    useradd --home=/home/rtorrent --create-home --shell /bin/bash --user-group rtorrent
    touch /home/rtorrent/.rtorrent.rc
    chown rtorrent:rtorrent /home/rtorrent/.rtorrent.rc
    mkdir /home/rtorrent/downloads
    chown rtorrent:rtorrent /home/rtorrent/downloads
    mkdir /home/rtorrent/session
    chown rtorrent:rtorrent /home/rtorrent/session
    echo 'alias rt="sudo -u rtorrent bash -c tmux"' >> /root/.bashrc


<a id="org951a330"></a>

## keys

Throttling

-   a/s/d 	Increase the upload throttle by 1/5/50 KB.
-   z/x/c 	Decrease the upload throttle by 1/5/50 KB.
-   A/S/D 	Increase the download throttle by 1/5/50 KB.
-   Z/X/C 	Decrease the download throttle by 1/5/50 KB.

main

-   ^q 	quit
-   ^s 	Start download. Runs hash first unless already done.
-   ^d 	Stop an active download, or remove a stopped download.
-   ^k 	Stop and close the files of an active download.
-   backspace 	Add torrent using an URL or file path. Use tab to view directory content and do auto-complete. Also, wildcards can be used. For example: ~/torrent/\*
-   return Same as backspace, except the torrent remains inactive. (Use ^s to activate)
-   l 	View log. Exit by pressing the space-bar.
-   +/- 	Change priority of torrent.
-   ^r 	Initiate hash check of torrent. Without starting to download/upload.
-   alt+shift+r - filter
-   shift+L - toggle view layout

keys

-   1 	Show all downloads
-   2 	Show all downloads, ordered by name
-   3 	Show started downloads
-   4 	Show stopped downloads
-   5 	Show complete downloads
-   6 	Show incomplete downloads
-   7 	Show hashing downloads
-   8 	Show seeding downloads
-   9 	Show leeching downloads
-   0 	Show active downloads

-   \* 	Change the priority of all files
-   / 	Collapse directories. While collapsed, press right to expand the selected directory.
-   space 	Change the file priority; applies recursively when done on a directory


<a id="org1028ccc"></a>

## screen

[Throttle 500/600 KB]

-   500/600 - upload/download

[D 15/0]

-   Current number of download slots in use/the maximum (the maximum is shown as 0 if unlimited).

[H 1/32]

-   Current number of active HTTP requests (for tracker announces and downloads of .torrent files)/the maximum.

[U 3/14]

-   Current number of upload slots in use/the maximum, which depends on the global upload rate limit.

[S 6/40/768]

-   The three numbers represent handshakes/open sockets/max open sockets.

[F 4/128]

-   The two numbers represent open files/max open files. The library dynamically closes the least used files as needed.


<a id="orge50b5a6"></a>

## lags probles

lags because of http dns request - they are single-threaded


<a id="orgc276e78"></a>

## To turn off DHT connection tracking on Linux,

iptables -t raw -I PREROUTING -p udp &#x2013;dport 6881 -j CT &#x2013;notrack
iptables -t raw -I OUTPUT -p udp &#x2013;sport 6881 -j CT &#x2013;notrack

in gernel:

-   Network options -> Network packet filtering framework -> IP: Netfiltering configuration -> [\*] raw table support


<a id="org9c31b08"></a>

## config

\#+name *home/rtorrent*.rtorrent.rc

    # https://github.com/prog-it/rtorrent-rutorrent-setup-guide/blob/master/.rtorrent.rc
    # rtorrent will not start without IPv6 support in your kernel
    # bind=0.0.0.0
    
    
    # Global upload and download rate in KiB. "0" for unlimited.
    #throttle.global_down.max_rate.set_kb = 0
    throttle.global_up.max_rate.set_kb = 1575
    # throttle.max_uploads.set = 8
    
    # Default directory to save the downloaded torrents.
    directory.default.set = /home/rtorrent/downloads
    
    # Default session directory. When restarting rtorrent, the torrents from this directory will be restarted.
    session.path.set = /home/rtorrent/session
    
    # system.daemon.set = true
    
    pieces.hash.on_completion.set = yes
    
    # network
    # network.port_range.set = 49333-49333
    network.port_range.set = 6381-6389
    protocol.encryption.set = allow_incoming,try_outgoing,enable_retry
    # dht:
    dht.mode.set = auto
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
    log.open_file = "rtorrent", /home/rtorrent/rtorrent.log
    log.open_file = "tracker", /home/rtorrent/tracker.log
    
    log.add_output = "info", "rtorrent"
    log.add_output = "critical", "rtorrent"
    log.add_output = "error", "rtorrent"
    log.add_output = "warn", "rtorrent"
    log.add_output = "notice", "rtorrent"
    log.add_output = "debug", "rtorrent"
    
    log.add_output = "dht_debug", "tracker"
    log.add_output = "tracker_debug", "tracker"
    
    # -- throttle
    throttle.max_uploads.set = 3
    throttle.max_uploads.global.set = 7
    
    throttle.min_peers.normal.set = 3
    throttle.max_peers.normal.set = 8
    
    throttle.min_peers.seed.set = 3
    throttle.max_peers.seed.set = 8
    trackers.numwant.set = 18
    
    network.http.max_open.set = 3
    network.max_open_files.set = 120
    network.max_open_sockets.set = 126
    
    pieces.memory.max.set = 800M
    network.xmlrpc.size_limit.set = 4M
    encoding.add = utf8
    # system.umask.set = 0027
    
    trackers.use_udp.set = yes
    network.http.dns_cache_timeout.set = 125
    
    # Save all the sessions in every 6 hours instead of the default 20 minutes.
    schedule2 = session_save, 1200, 21600, ((session.save))


<a id="orga419c37"></a>

## service systemd

/etc/systemd/system/rtorrent.service

    cat <<EOF > /etc/systemd/system/rtorrent.service
    [Unit]
    Description=My daemon
    
    [Service]
    Type=forking
    User=rtorrent
    Group=rtorrent
    
    ExecStartPre=-/bin/rm -f /home/rtorrent/session/rtorrent.lock
    ExecStart=/usr/bin/tmux new-session -d rtorrent /usr/local/bin/rtorrent -n -o import=/home/rtorrent/.rtorrent.rc
    
    ExecStop=/usr/bin/killall -w -s INT /usr/local/bin/rtorrent
    Restart=on-failure
    RestartSec=15
    # After=network.target
    
    [Install]
    WantedBy=multi-user.target
    EOF
    systemctl daemon-reload
    systemctl start rtorrent


<a id="org0cb132b"></a>

## aliases

    echo 'alias rtstatus="systemctl status rtorrent"' >> .bashrc
    echo 'alias rtstart="systemctl start rtorrent"' >> .bashrc
    echo 'alias rtstop="systemctl stop rtorrent"' >> .bashrc
    echo 'alias rtnew="sudo -u rtorrent /usr/local/bin/rtorrent -n -o import=/home/rtorrent/.rtorrent.rc"' >> .bashrc
    apt install sudo
    echo 'alias rt="sudo -u rtorrent bash -c tmux"' >> .bashrc
    source .bashrc


<a id="orgb71b93a"></a>

# email


<a id="org58b9c9b"></a>

## theory

mail is sent from mail host to mail host using SMTP.  Every mail host runs a **mail transfer agent (MTA)**.

-   sending: MUA will pipe outgoing mail to the /usr/lib/sendmail application. It will take care of your mail
    and pass it on to the next mail host.
-   receiving: **mail delivery agent (MDA)** keeps files. When your computer is that mail host, this file is called
    a spool, and sometimes located in the directory *var/spool/mail*. All your MUA has to do is read mail from
    the spool, then.

When your computer is not always connected to the internet, you must get the mail from the remote mail host
 using a protocol such as POP3 or IMAP.


<a id="org2946f88"></a>

### soft:

MTA:

-   Exim
-   sendmail
-   postfix

MDA:

-   procmail


<a id="org4085b5a"></a>

## protocols

-   IMAP - to retrieve email messages from a mail server over a TCP/IP connection. IMAP is defined by
    RFC 9051. Leaving email content on the server.
    -   143 – this is the default port which does not provide any encryption
    -   993 - IMAP over SSL/TLS (IMAPS)
-   POP3 -  POP3 (Post Office Protocol) - older than IMAP, delete message from server after download.
    
    -   Port 110 is the default POP3 port and it is not encrypted.
    -   Port 995 – SSL/TLS port, also known as POP3S
    -   Modern POP3 clients allow you to keep a copy of your messages on the server if you explicitly select this
    
    option.
-   SMTP - Simple Mail Transfer Protocol (SMTP)
    
    -   25 - send messages in plain text, although if the mail server supports it, it can be encrypted with
    
    TLS. Therefore, many Internet service providers block it, as it represents a security risk.
    
    -   Port 2525 is an alternative to the SMTP port 25 and can be encrypted over TLS.
    -   587 – This is the port IANA registered as the secure SMTP port, and it requires an explicit TLS
    
    connection. However, if the email server does not support TLS, the message will be sent in plain text.
    
    -   Port 465 – SSL/TLS port, also known as SMTPS


<a id="org7afa7c0"></a>

## isync <a id="orgf1c4b0b"></a>

-   support Maildir and IMAP4 mailboxes
-   New messages, message deletions and flag changes can be propagated both ways.


<a id="org6d40320"></a>

### cur, new, tmp

-   tmp - This subdirectory stores email messages that are in the process of being delivered. It may also store
    other kinds of temporary files.
-   new - This subdirectory stores messages that have been delivered but have not yet been seen by any mail
    application, such as webmail or Outlook.
-   cur - This subdirectory stores messages that have already been viewed by mail applications, like webmail or
    Outlook.


<a id="orgf3f7334"></a>

### usage:

make any folders that were specified as Maildirs

    mkdir -p ~/.mail/gmail

to retrieve the mail:

    mbsync gmail or mbsync -a


<a id="orgba078be"></a>

### links

<https://wiki.archlinux.org/title/Isync>


<a id="orgccd3d32"></a>

## notmuch

Thread-based e-mail indexer, supporting quick search and tagging

You must tag your folders by hands with "notmuch tag". (maildir.synchronize<sub>flags</sub> do only base tagging.)
  <https://github.com/notmuch/notmuch-wiki/blob/master/initial_tagging.mdwn>

sync with isyc:

    mbsync -aV && notmuch new && notmuch tag --input=filename

+saved &#x2013; folder:SAVED
+sent &#x2013; folder:Sent
+spam &#x2013; folder:Spam
+bks &#x2013; folder:bks
+book &#x2013; folder:book
+pol &#x2013; folder:pol


<a id="orgdde16ab"></a>

### tags

-   "new" - messages that are new to it, so you'll want to clean that up.
-   tag:unread - unread messages;
-   


<a id="orgc9d1c09"></a>

### queries

search for all messages without the "unread" tag and remove the "new" tag

    notmuch tag -new not tag:unread

notmuch tag &#x2013;input=filename

    # Manage sent, spam, and trash folders
    -unread -new folder:Trash
    -unread -new folder:Spam
    -unread -new folder:Sent
    
    # Note mail sent specifically to me (excluding bug mail)
    +to-me to:kevin at sonney.com and tag:new and not tag:to-me
    
    # And note all mail sent from me
    +sent from:kevin at sonney.com and tag:new and not tag:sent
    
    # Remove the new tag from messages
    -new tag:new


<a id="org18ba350"></a>

### links

-   <https://notmuch.readthedocs.io/en/latest/man1/notmuch-config.html>
-   <https://github.com/notmuch/notmuch-wiki>
-   <https://github.com/notmuch/notmuch-wiki>


<a id="org1e42c59"></a>

## neomutt

installation steps see <emacsh>


<a id="org7761d30"></a>

### keys

-   M - logs


<a id="orgab525bd"></a>

### examples

<https://github.com/neomutt/samples/tree/main/config>


<a id="org8212d1c"></a>

### mutt and neomutt - clients

GPL-2.0-or-later

mutt - 1995

-   Original author(s)	Michael Elkins
-   Developer(s)	Kevin McCarthy <https://github.com/kevin8t8> <https://www.8t8.us/> <https://www.8t8.us/blog/>
    -   vim user, study Chinese

neomutt - It’s a fork of Mutt with added features. Mar 7, 2016 - First NeoMutt release.

-   Rich Russon (@flatcap) - vim user

1.  links

    -   <https://gitlab.com/muttmua/mutt>
        -   <http://www.mutt.org/>
        -   mirror <https://github.com/muttmua/mutt>
    -   <https://github.com/neomutt/neomutt>
        -   <https://neomutt.org/2022/06/13/news>
    -   From Mutt to Neomutt <https://www.guckes.net/neomutt/>
    
    gentoo
    
    -   <https://packages.gentoo.org/packages/mail-client/neomutt>


<a id="org18ff41b"></a>

### links

<https://neomutt.org/guide/configuration.html>


<a id="org7243a99"></a>

## emailutils

-   /var/spool/mail or /var/mail
-   net-mail/mailutils

forward email destined for the root user to another email (say a postfix mail account)

-   All you need to do is create a file named ".forward" in the "*root*" directory and on the first line enter
    the email address you want to forward to.


<a id="orgebd15c7"></a>

## DKIM

It is a email header generated at sending email server. private/public key pair. sign each message as it is
 sent. When a message is sent, we create a hash from the content of the message headers and then use your
 private key to sign the hash.  the public key is added to the DNS records for your domain to broadcast it to
 the world to help verify your messages.

    dig +short _spf.mail.yahoo.com TXT

Receiving Mail Server:

-   extract dkim-signature from email header
-   validate message using public key from DKIM DNS entry to answer: **Was message unchanged?**

contains encrypted hash value of email body and headers

-   DKIM domain -  nslookup -q=TXT brisbane.<sub>domainkey.example.net</sub>
    -   \_domainkey - is fixed

DKIM record together with DMARC (and even SPF) you can also protect your domain against malicious emails sent
on behalf of your domains

DKIM Selectors - specified in the DKIM-Signature header and indicates where the public key portion of the DKIM
 keypair exists in DNS. “s=”

-   Domains can have multiple public DKIM keys, and the selector value makes sure recipient servers are using
    the correct public key.


<a id="org37660f1"></a>

### how it looks like:

    DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=20130519032151pm; d=postmarkapp.com;
    h=From:Date:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:To:Message-ID;
    i=support@postmarkapp.com; bh=vYFvy46eesUDGJ45hyBTH30JfN4=;
    b=iHeFQ+7rCiSQs3DPjR2eUSZSv4i/Kp+sipURfVH7BGf+SxcwOkX7X8R1RVObMQsFcbIxnrq7Ba2QCf0YZlL9iqJf32V+baDI8IykuDztuoNUF2Kk0pawZkbSPNHYRtLxV2CTOtc+x4eIeSeYptaiu7g7GupekLZ2DE1ODHhuP4I=

each part of the header means:

-   DKIM-Signature: The header registered for DKIM-signed messages.
-   v=1; The version of DKIM being used by the sending server.
-   a=rsa-sha1; The algorithm used to generate the hash for the private/public key. There are two officially supported signature algorithms for this hash, rsa-sha1 and rsa-sha256.
-   c=relaxed/relaxed; Sets the canonicalization posture for the sending domain. This regulates whitespace and text wrapping changes in a message. There are two canonicalized postures: 'simple' doesn’t allow any changes, and 'relaxed' allows common changes to whitespace and header line-wrapping. Canonicalization in the header and body can be managed individually and uses a header/body format.
-   s=20130519032151pm; Used as a DKIM selector for the public DKIM key for verification. Domains can have multiple public DKIM keys, and the selector value makes sure recipient servers are using the correct public key.
-   d=postmarkapp.com; The email domain that signed the message. It’s important that your DKIM signature use your domain name here because this bolsters your domain’s reputation with ISPs as you send valid email, regardless of the Email Service Provider you use.
-   From:Date:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:To:Message-ID; The headers included with the message when it was cryptographically signed.
-   i=support@postmarkapp.com; The identity of the signer and is usually provided as an email address.
-   bh=vYFvy46eesUDGJ45hyBTH30JfN4=; The value of a body hash generated before the message headers are signed.
-   b=iHeFQ+7rCiSQs3DPjR2eUSZSv4i/Kp+sipURfVH7BGf+SxcwOkX7X8R1RVObMQsFcbIxnrq7Ba2QCf0YZlL9iqJf32V+baDI8IykuDztuoNUF2Kk0pawZkbSPNHYRtLxV2CTOtc+x4eIeSeYptaiu7g7GupekLZ2DE1ODHhuP4I=The cryptographic signature of all the preceding information from the DKIM-Signature field. This entry is treated as an empty string during the verification process.


<a id="org4962cfd"></a>

### DKIM Key Rotation

DKIM key rotation is the process of updating your DKIM keys.

it’s a security measure that helps prevent attackers from impersonating your domain and sending spam or
 phishing emails.

Why is this important? Well, if somebody were able to get access to your private key, they could actually use
 it to send fraudulent emails that appear to be from you! To prevent this kind of malicious activity, it’s
 best practice to rotate your keys every few months.

bad actors may eventually intercept and decode one of them, since each message uses the same cryptographic
 hash algorithm. Once they’ve got your public key, they can start signing their phishing emails with it
 without you even knowing! That’s why periodic DKIM key rotation is crucial to the security of your domain.


<a id="orge5d6c83"></a>

### links

<https://postmarkapp.com/guides/dkim/how-does-dkim-work>


<a id="org02fed6c"></a>

# Midnight Commander

-   app-misc/mc
-   panel - frame of direcotry list
-   dependson slang text display library (it's like ncurses, but different)

unique features:

-   hexdump with unicode support
-   sftp, ftp support


<a id="org533c6eb"></a>

## options

size options
Options -> Panel options &#x2026; -> Use SI size units
[New Left Panel]
user<sub>format</sub>=half type name mark size:4 space mtime

Options -> Panel options &#x2026; -> Lynx-like motion - lift to parrent, right go in directory


<a id="org765cc9a"></a>

## keys

navigation

-   C-up/C-down - up down
-   page-up/page-down - C/A-v
-   C - page-up/page-down 	down/up by directory

-   Tab		switch frame
-   Alt-1 	help
-   F4		open in default editor (env EDITOR) or Emacs Dired (env PAGER)
-   Enter		open in system (mime type) editor
-   F9 		top menu
    -   F9 l g	file listing
-   Alt + . 	hiddent files

-   Ctrl+Space	size of directory
-   Alt/Ctrl + s	Quick search
-   Alt + ?	Opens search dialog
-   Alt + U/Y	move to the next/\previous directory in the history
-   Alt+Shift+h	history
-   Alt + i	Sync panels

-   Shift + F3	raw preview
-   Alt + t	loop panel list mode
-   Ctrl + u 	swap panels
-   Alt + o 	load directory to other panel

select files

-   Indert/C-t	tag file
-   +/-*\**\\ - select/unselect/inverse<sub>selected</sub>/unselect

console

-   Alt + Tab		autocompletion in console
-   Ctrl + o		switch to console and back
-   Ctrl/Alt + Enter	copy file name to console
-   Cltr + Shift + Enter		Copy full path to console
-   C - H			show console history

advanced

-   Alt+e		change charset of panel
-   Alt + ,	top bottom for long file names


<a id="org79d59e2"></a>

## links

<https://klimer.eu/2015/05/01/use-midnight-commander-like-a-pro/>


<a id="org63c3e66"></a>

# Thunar - file manager

-   Shortcuts: cat ~/.config/Thunar/accels.scm

-   Shift + Tab - to side panel, Tab - to main list
-   Alt + up	to parrent
-   C + 1/2/3	thumbnails, list, small lists
-   Ctrl+Shift+N	new folder

-   C + t		new tab
-   C + Page<sub>up</sub>/Page<sub>down</sub> - scroll tabs
-   Alt + 1/2/3	go to tab 1, to tab 2
-   C + w 	close tab


<a id="orgb8cabdc"></a>

# LibreOffice vs Microsoft

keys

-   Ctrl+M - clear formatting


<a id="org3e202d0"></a>

## LibreOffice (Microsoft)

-   Writer (Word)
-   Calc (Excel)
-   Impress (PowerPoint)
-   Draw (Visio)
-   Math
-   Base (Access)


<a id="org778b36c"></a>

# Gimp

-   Alt+Return - Image->Image Properties


<a id="orgba73a80"></a>

# coreboot

System Firmware: An Essential Guide to Open Source and Embedded Solutions

-   ubuntu install <https://www.coreboot.org/Lesson1>
-   common usage <https://www.coreboot.org/Build_HOWTO>

<https://www.instructables.com/Lenovo-T420-Coreboot-WRaspberry-Pi/>
<https://review.coreboot.org/plugins/gitiles/coreboot/+/refs/heads/master>
<https://doc.coreboot.org/tutorial/part1.html>


<a id="org1349706"></a>

## usage

-   git clone &#x2013;depth 1 <https://review.coreboot.org/coreboot.git>

Download the required submodules:

-   git submodule update &#x2013;depth 1 &#x2013;init &#x2013;checkout &#x2013;recursive
-   or git clone &#x2013;recursive <https://review.coreboot.org/coreboot>

mkdir -p ~/work/coreboot/3rdparty/blobs/mainboard/lenovo/t420

cd util/ifdtool
make

print a partition table, and extract some blobs.

-   ifdtool -x flash.bin
-   mv flashregion<sub>3</sub><sub>gbe.bin</sub> gbe.bin
-   mv flashregion<sub>2</sub><sub>intel</sub><sub>me.bin</sub> me.bin
-   mv flashregion<sub>0</sub><sub>flashdescriptor.bin</sub> descriptor.bin
-   mv gbe.bin me.bin  descriptor.bin coreboot/3rdparty/blobs/mainboard/lenovo/t420/

core:

-   make distclean
-   make nconfig
-   make crossgcc-i386 CPUS=${nproc}
-   make iasl
-   make
-   build/coreboot.rom and .config

flash only bios:

-   $./util/ifdtool/ifdtool -f t420.layout t420.bin
-   flashrom -p linux<sub>spi</sub>:dev=/dev/spidev0.0,spispeed=22000 -l t420.layout -i bios &#x2013;noverify -w coreboot.rom

configuration in nvramcui

-   secondary payloads -> nvramcui
-   general setup -> option backend to use -> use CMOD for cinfiguration values


<a id="org77b1e0a"></a>

## requirements

-   make - already have
-   gcc - already have
-   iasl - sys-power/iasl
-   pkg-config -  dev-util/pkgconf - already have
-   libssl-dev (openssl) - dev-libs/openssl - already have
-   dev-lang/gnat-gpl

optional

-   sys-libs/ncurses
-   flex and bison


<a id="orgc18575c"></a>

## SPI Flash

You need to connect CS# (Pin 1 for the W25Q32BV, goes to CS0# on the Raspberry Pi), SO (Pin 2, MISO
on RaspberryPi), GND (Pin 4), SI (Pin5, MOSI on Raspberry Pi), SCLK (Pin 6) and Vcc (Pin 8, 3.3V on
RaspberryPi, connect before RaspberryPi is powered on!)

My S430 has two of them. The bigger one (8MByte) contains the flash descriptor table and the Intel
ME firmware. The smaller one (4MByte) is for the BIOS.


<a id="org48960bb"></a>

### general GPIO

<https://www.egr.msu.edu/classes/ece480/capstone/fall09/group03/AN_balachandran.pdf>
General Purpose Input/output (GPIO) is an interface available on most modern
microcontrollers (MCU) to provide an ease of access to the devices internal properties.

-   The pins are usually arranged into groups of 8 pins where signals can be sent or received to and

from other devices.

-   Each GPIO should be able to define either an input mode or an output mode for individual pins on the chip.


<a id="org22d9645"></a>

## debug console

<https://www.coreboot.org/Network_console>
<http://pcengines.github.io/apu2-documentation/generating_coreboot_support_logs/>

network console

-   \# openvpn &#x2013;mktun &#x2013;dev tap0
-   \# ip addr add 10.0.1.27/24 dev tap0
    (00:13:d4:76:a2:ac) Destination MAC address of remote system (NEW)     │
    │     (10.0.1.27) Destination IP of logging system (NEW)                     │
    │     (10.0.1.253) IP address of coreboot system (NEW)


<a id="org95d707e"></a>

## Coreinfo libpayload

-   coreinfo is a small payload which can display system information such as PCI info, or an NVRAM dump.
-   libpayload used as a basis for coreboot payloads.

<https://www.coreboot.org/Coreinfo>
<https://www.coreboot.org/Libpayload>


<a id="orgbbecb39"></a>

## <https://www.instructables.com/Lenovo-T420-Coreboot-WRaspberry-Pi/>

-   Ponoma 5250 Test Clip - For connecting to the bios chip.
-   Female to Female Breadboard Jumper Cables - Also known as Dupont wires.
-   Raspberry Pi(3 or 4) - running the latest version or Raspberry Pi OS
-   flashrom - on R PI
-   coreboot

-   It is a good idea to update the Embedded Controller to the latest version. The easiest way to do this is
    install the latest version of the factory bios. Coreboot is unable to touch the EC. You will be unable to
    update it after flashing unless you revert to the factory bios.


<a id="orgb37eee3"></a>

# qemu

app-emulation/qemu

-   nvramcui payload will allow setting this and other options


<a id="org6601ba1"></a>

## theory

-   used in conjunction with acceleration in the form of a Type-I hypervisor such as KVM (Kernel-based Virtual
    Machine) or Xen.
    -   Type 1 hypervisor has direct access to the hardware resources.
-   KVM as the accelerator of choice due to its GPL licensing and availability
-   KVM resides in Linux kernel and there is a little configuration for it

SoftMMU is an overloaded term in QEMU. In terms of features the SoftMMU is the mechanism by which the TCG
allows the emulation of virtual memory.


<a id="org48afa9a"></a>

## modes

-   "system emulation" - rovides a virtual model of an entire machine (CPU, memory and emulated devices) to run
    a guest OS.  In this mode the CPU may be fully emulated, or it may work with a hypervisor such as KVM, Xen,
    Hax or Hypervisor.Framework to allow the guest to run directly on the host CPU.
    -   A softmmu target is the standard qemu use-case of emulating an entire system (like VirtualBox or VMWare,
        but with optional support for emulating CPU hardware along with peripherals)
-   “user mode emulation”, where QEMU can launch processes compiled for one CPU on another CPU. In this mode the

CPU is always emulated. CPU is always emulated.

-   user targets execute user-mode code only; the (somewhat shockingly ambitious) purpose of these targets is
    to "magically" allow importing user-space linux ELF binaries from a different architecture into the native
    system (that is, they are like multilib, without the awkward need for a software stack or CPU capable of
    running it).


<a id="orge3f0545"></a>

## usage

-   qemu-system-x86<sub>64</sub> is the binary or command for Qemu which is used to create 64-bit x86 VMs.

Set RAM or Memory Size For Qemu VM:

-   qemu-system-x86<sub>64</sub> -m 256

qemu-system-x86<sub>64</sub> -cdrom iso<sub>image</sub> -cpu host -enable-kvm -m 256 -smp cores=2 -m 256 -name poftut.com
-nographic file=fedoraraw.qcow2,if=virtio,format=qcow2

-   -smp option which will enable multiple CPU cores with the core=2
-   -m 256 - w56 MiB
-   -name - VM name will be displayed in the Window header of the Qemu
-   -nographic - if you need console only
-   file=fedoraraw.qcow2,if=virtio - "if" is used to provide the driver or interface type for the disk.
    -   virtio - Virtio was chosen to be the main platform for IO virtualization in KVM
-   -enable-kvm - starts QEMU in KVM mode
-   -cpu host is to emulate the host processor. There is a list of supported architectures available –
    qemu-system-x86<sub>64</sub> -cpu ?

qemu-system-x86<sub>64</sub> -drive if=pflash,format=raw,readonly,file=build/coreboot.rom -drive file=~/example.img -serial stdio -m 1G

exit:

-   Ctrl-A X
-   ALT-2 instead of CTRL-ALT-2, then type quit


<a id="org732a29d"></a>

## boot

iso
qemu-system-x86<sub>64</sub> -drive format=raw,media=cdrom,readonly,file=debian-8.2.0-amd64-DVD-1.iso

img
qemu-system-x86<sub>64</sub> -drive format=raw,file=x86-64.img


<a id="orgbeefd77"></a>

## Graphic card

text mode:

-   -curses - ALT-2 instead of CTRL-ALT-2, then type quit
-   -nographic

graphic -vga type:

-   std


<a id="org81d7a22"></a>

## create image

qemu-img create -f qcow2 example.img 100M

-   -f qcow2 - recommended since it is dynamically allocated
-   100M size of image

get info:

-   qemu-img info example.img

resize

-   qemu-img resize ubuntu.qcow2 +5GB

chech for errors

-   qemu-img check ubuntu.qcow2


<a id="org8929c0d"></a>

### file formats

-   **qcow2:** The recommended file format. It is fast, dynamically allocated, and has decent support in
    QEMU. However it does have a minor speed loss compared to raw, but this is unnoticeable in normal use.
-   **qcow:** This is an older version of the qcow2 file format. The main difference between the qcow2 and qcow file
    formats is that qcow2 supports multiple snapshots through a newer, flexible model for storing snapshots. It
    is recommended to use qcow2 instead.
-   **raw:** As the name suggests - it is a "raw" file format, which means it will allocate all the space to the disk
    immediately, e.g. if you formatted a file named raw with 2G as the size, it would take up 2 gigabytes of
    space on the disk. This is the fastest option, and is recommended if you have a lot of disk space to spare.
-   **vdi:** A file format which is also compatible with VirtualBox 1.1. Recommended only if you are going to be
    switching through VirtualBox and QEMU frequently.
    -   static - If set, the image will be created with metadata preallocation.
-   **vmdk:** A file format which is compatible with VMWare 3 and 4. Recommended only if you are going to be
    switching through VMWare and QEMU frequently. It supports the following arguments:
-   **compat6:** Create a VMDK 6 image, instead of the default VMDK 4.
-   **hwversion:** Specify the vmdk virtual hardware version. If set, the Compat6 flag cannot be enabled.
-   **vpc:** A file format which is compatible with Windows Virtual PC. Recommended only if you are going to be
    switching through Windows Virtual PC and QEMU frequently.
-   **vhdx:** A Hyper-V compatible image format. Not recommended unless you're going to switch between Hyper-V and
    QEMU frequently.
-   **parallels:** A Parallels compatible image format. Not recommended unless you're going to switch between
    Parallels and QEMU frequently.
-   **file:** Not a file with any format - just a plain raw file.
-   **cow:** Ancient, depreciated QEMU file format that is not present in newer versions. Like qcow2 and qcow, it is
    a dynamically allocated file format. This cannot be used in Win32. Not recommended.

Read only file formats

-   bochs - Bochs image file
-   cloop - Linux Compressed Loop image, useful only to reuse directly compressed CD-ROM images present for
    example in the Knoppix CD-ROMs.
-   dmg - Apple disk image


<a id="orgddcf63c"></a>

## OTHER


<a id="org0df9c03"></a>

### remote disk image with ssh

qemu-system-x86<sub>64</sub> -drive file=ssh://ismail@baydan.com/disk.img


<a id="orgc64bef7"></a>

# systemd

/lib/systemd/system - path of units

"-" in front of the path means "ignore errors"


<a id="orgc103baf"></a>

## terms

-   **Units** - are the objects that systemd knows how to manage
-   **section** - denoted by [ and ]


<a id="org96f3ec3"></a>

## types of units

-   .service: A service unit describes how to manage a service or application on the server. This will include
    how to start or stop the service, under which circumstances it should be automatically started, and the
    dependency and ordering information for related software.
-   .socket: A socket unit file describes a network or IPC socket, or a FIFO buffer that systemd uses for
    socket-based activation. These always have an associated .service file that will be started when activity is
    seen on the socket that this unit defines.
-   .device: A unit that describes a device that has been designated as needing systemd management by udev or
    the sysfs filesystem. Not all devices will have .device files. Some scenarios where .device units may be
    necessary are for ordering, mounting, and accessing the devices.
-   .mount: This unit defines a mountpoint on the system to be managed by systemd. These are named after the
    mount path, with slashes changed to dashes. Entries within /etc/fstab can have units created automatically.
-   .automount: An .automount unit configures a mountpoint that will be automatically mounted. These must be named after the mount point they refer to and must have a matching .mount unit to define the specifics of the mount.
-   .swap: This unit describes swap space on the system. The name of these units must reflect the device or file
    path of the space.
-   .target: A target unit is used to provide synchronization points for other units when booting up or changing
    states. They also can be used to bring the system to a new state. Other units specify their relation to
    targets to become tied to the target’s operations.
-   .path: This unit defines a path that can be used for path-based activation. By default, a .service unit of
    the same base name will be started when the path reaches the specified state. This uses inotify to monitor
    the path for changes.
-   .timer: A .timer unit defines a timer that will be managed by systemd, similar to a cron job for delayed or
    scheduled activation. A matching unit will be started when the timer is reached.
-   .snapshot: A .snapshot unit is created automatically by the systemctl snapshot command. It allows you to
    reconstruct the current state of the system after making changes. Snapshots do not survive across sessions
    and are used to roll back temporary states.
-   .slice: A .slice unit is associated with Linux Control Group nodes, allowing resources to be restricted or
    assigned to any processes associated with the slice. The name reflects its hierarchical position within the
    cgroup tree. Units are placed in certain slices by default depending on their type.
-   .scope: Scope units are created automatically by systemd from information received from its bus
    interfaces. These are used to manage sets of system processes that are created externally.


<a id="orgbdac88b"></a>

## create .service

unit

    /etc/systemd/system/my.service

    [Unit]
    Description=My daemon
    
    [Service]
    ExecStart=/usr/bin/mydaemon
    Restart=on-failure
    
    [Install]
    WantedBy=multi-user.target


<a id="orgbd6d66b"></a>

## Unit files

-   X- prefix to the section name - non-standard sections to be parsed by applications other than systemd
-   section order does not matter
-   1, yes, on, and true for affirmative and 0, no off, and false for the opposite answer

    [Section]
    Directive1=value
    Directive2=value


<a id="org60e9672"></a>

## sections - common

[Unit] - first section

-   for
    -   defining metadata for the unit
    -   configuring the relationship of the unit to other units
-   Description=
-   Documentation=: This directive provides a location for a list of URIs for documentation.
-   Requires=: This directive lists any units upon which this unit essentially depends
-   Wants=: This directive is similar to Requires=, but less strict.
-   BindsTo=: This directive is similar to Requires=, but also causes the current unit to stop when the associated unit terminates.
-   Before=: The units listed in this directive will not be started until the current unit is marked as started
    if they are activated at the same time.
-   After=: The units listed in this directive will be started before starting the current unit.
-   Conflicts=: This can be used to list units that cannot be run at the same time as the current unit
-   Condition&#x2026;=: There are a number of directives that start with Condition which allow the administrator to
    test certain conditions prior to starting the unit
-   Assert&#x2026;=: Similar to the directives that start with **Condition**, these directives check for different
    aspects of the running environment to decide whether the unit should activate

[Install] - last section (optional) - define the behavior or a unit if it is enabled or disabled

-   WantedBy= The difference is that this directive is included in the ancillary unit allowing the primary unit listed to remain relatively clean.
-   RequiredBy=: This directive is very similar to the WantedBy= directive, but instead specifies a required dependency that will cause the activation to fail if not met
-   Alias=: This directive allows the unit to be enabled under another name as well.
-   Also=: This directive allows units to be enabled or disabled as a set.
-   DefaultInstance=: For template units (covered later) which can produce unit instances with unpredictable
    names, this can be used as a fallback value for the name if an appropriate name is not provided.


<a id="orgf500ef3"></a>

## setions - unit specific

[Service]

Type=

-   **simple:** The main process of the service is specified in the start line. This is the default if the Type=
    and Busname= directives are not set, but the ExecStart= is set. Any communication should be handled outside
    of the unit through a second unit of the appropriate type (like through a .socket unit if this unit must
    communicate using sockets).
-   **forking:** This service type is used when the service forks a child process, exiting the parent process
    almost immediately. This tells systemd that the process is still running even though the parent exited.
-   **oneshot:** This type indicates that the process will be short-lived and that systemd should wait for the
    process to exit before continuing on with other units. This is the default Type= and ExecStart= are not
    set. It is used for one-off tasks.
-   **dbus:** This indicates that unit will take a name on the D-Bus bus. When this happens, systemd will continue
    to process the next unit.
-   **notify:** This indicates that the service will issue a notification when it has finished starting up. The
    systemd process will wait for this to happen before proceeding to other units.
-   **idle:** This indicates that the service will not be run until all jobs are dispatched.

type specific dericitves:

-   RemainAfterExit=: This directive is commonly used with the oneshot type. It indicates that the service should be considered active even after the process exits.
-   PIDFile=: If the service type is marked as “forking”, this directive is used to set the path of the file that should contain the process ID number of the main child that should be monitored.
-   BusName=: This directive should be set to the D-Bus bus name that the service will attempt to acquire when using the “dbus” service type.
-   NotifyAccess=: This specifies access to the socket that should be used to listen for notifications when the “notify” service type is selected This can be “none”, “main”, or "all. The default, “none”, ignores all status messages. The “main” option will listen to messages from the main process and the “all” option will cause all members of the service’s control group to be processed.

User=, Group= and SupplementaryGroups= -

ExecStart=: This specifies the full path and the arguments of the command to be executed to start the
 process. This may only be specified once (except for “oneshot” services). If the path to the command is
 preceded by a dash “-” character, non-zero exit statuses will be accepted without marking the unit activation
 as failed.

executable prefixes:

-   @ second specified token will be passed as "argv[0]" to the executed process (instead of the actual filename), followed by the further arguments specified
-   - non-zero exit code is recorded, but has no further effect and is considered equivalent to success
-   : environment variable substitution is not applied.
-   + the process is executed with full privileges. User=, Group=, CapabilityBoundingSet=, PrivateDevices=, PrivateTmp= not applied
-   ! Similar to the "+" but &#x2026;
-   !!  similar to "!" only has an effect on systems lacking support for ambient process capabilities.

other

-   ExecStartPre=: This can be used to provide additional commands that should be executed before the main process is started. This can be used multiple times. Again, commands must specify a full path and they can be preceded by “-” to indicate that the failure of the command will be tolerated.
-   ExecStartPost=: This has the same exact qualities as ExecStartPre= except that it specifies commands that will be run after the main process is started.
-   ExecReload=: This optional directive indicates the command necessary to reload the configuration of the service if available.
-   ExecStop=: This indicates the command needed to stop the service. If this is not given, the process will be killed immediately when the service is stopped.
-   ExecStopPost=: This can be used to specify commands to execute following the stop command.
-   RestartSec=: If automatically restarting the service is enabled, this specifies the amount of time to wait before attempting to restart the service.
-   Restart=: This indicates the circumstances under which systemd will attempt to automatically restart the service. This can be set to values like “always”, “on-success”, “on-failure”, “on-abnormal”, “on-abort”, or “on-watchdog”. These will trigger a restart according to the way that the service was stopped.
-   TimeoutSec=: This configures the amount of time that systemd will wait when stopping or stopping the service before marking it as failed or forcefully killing it. You can set separate timeouts with TimeoutStartSec= and TimeoutStopSec= as well.

[Socket]

[Automount]

[Swap]

[Path]

[Timer]

[Slice]


<a id="org44d6930"></a>

## tamplate and instance unit names

A template unit file:

    example@.service

Instance of template:

    example@instance1.service


<a id="orge28d23f"></a>

## systemctl command

main component - init system

-   device management
-   login management
-   network connection management
-   event logging

systemctl daemon-reload - reload configs


<a id="org1f6f41e"></a>

### own service

/etc/systemd/system/my.service

    [Unit]
    Description=My daemon
    
    [Service]
    Type=simple
    ExecStart=/usr/bin/ssh -NT -o ServerAliveInterval=60 -o ExitOnForwardFailure=ye\
    s -L 0.0.0.0:80:linux.org:80 -i /root/.ssh/id_rsa -p 8080 root@localhost
    Restart=on-failure
    
    [Install]
    WantedBy=multi-user.target


<a id="org4bf412c"></a>

### VIEWING-SYSTEMD-INFORMATION

-   systemctl list-dependencies ==> Show a unit’s dependencies
-   systemctl list-sockets ==> List sockets and what activates
-   systemctl list-jobs ==> View active systemd jobs
-   systemctl list-unit-files ==> See unit files and their states
-   systemctl list-units ==> Show if units are loaded/active
-   systemctl get – default ==> List default target (like run level)
-   ls /etc/systemd/system/\*.wants/SERVICE<sub>NAME.service</sub> ==> TO-LIST-WHAT-LEVELS-THIS-SERVICE-IS-CONFIGURED-ON-OR-OFF


<a id="orge2b36fb"></a>

### WORKING WITH SERVICES

-   systemctl stop service ===> Stop a running service
-   systemctl start service ===> Start a service
-   systemctl restart service ===> Restart a running service
-   systemctl reload service ===> Reload all config files in service
-   systemctl status service ===>See if service is running/enabled
-   systemctl enable service ===> Enable a service to start on boot
-   systemctl disable service ===> Disable service–won’t start at boot
-   systemctl show service ===> Show properties of a service (or other unit)
-   systemctl -H host status network ===> Run any systemctl command remotely
-   systemctl condrestart SERVICE<sub>NAME</sub> ==> RESTARTS-IF-THE-SERVICE-IS-ALREADY-RUNNING.
-   systemctl is-enabled SERVICE<sub>NAME</sub> ==> CHECK-IF-THE-SERVICEIS-CONFIGURED-TO-START-OR-NOT-IN-THE-CURRENT-ENVIRONMENT.
-   systemctl daemon-reload ==> USED-WHEN-YOU-CREATE-A-NEW-SERVICE-FILE-OR-MODIFY-ANY-CONFIGURATION.
-   systemctl isolate multi-user.target (OR systemctl isolate runlevel3.target OR telinit 3) ==> CHANGING-RUNLEVELS ==> Change to multi-user run level.
-   ln -sf /lib/systemd/system/multi-user.target /etc/systemd/system/default.target ==> SET-TO-USE-MULTI-USER-RUNLEVEL-ON-THE-NEXT-REBOOT.


<a id="org97f3334"></a>

### run levels

-   runlevel0.target, poweroff.target ==> HALT-THE-SYSTEM
-   runlevel1.target, rescue.target ==> SINGLE-USER-MODE
-   User-defined/Site-specific runlevels. By default, identical to 3. ==> Sysvinit: 2, 4
-   Multi-user, non-graphical. Users can usually login via multiple consoles or via the network. ==> 3
-   runlevel5.target, graphical.target ==> Multi-user, graphical. Usually has all the services of runlevel 3 plus a graphical login.MULTI-USER,GRAPHICAL.
-   runlevel6.target, reboot.target ==> reboot
-   emergency.target ==>emergency-shell


<a id="org3899012"></a>

### Changing-System-States

-   systemctl reboot ===> Reboot the system (reboot.target)
-   systemctl poweroff ===> Power off the system (poweroff.target)
-   systemctl emergency ===> Put in emergency mode (emergency.target)
-   systemctl default ===> Back to default target (multi-user.target)


<a id="org78022fb"></a>

### Viewing-log-messages

-   journalctl ===> Show all collected log messages
-   journalctl -u network.service ===> See network service messages
-   journalctl -f ===> Follow messages as they appear
-   journalctl -k ===> Show only kernel messages


<a id="org8f90ad2"></a>

### SYSVINIT

-   service SERVICE<sub>NAME</sub> start
-   service SERVICE<sub>NAME</sub> stop
-   service SERVICE<sub>NAME</sub> restart
-   service SERVICE<sub>NAME</sub> reload
-   service SERVICE<sub>NAME</sub> condrestart # restart if service already running
-   service SERVICE<sub>NAME</sub> status
-   chkconfig SERVICE<sub>NAME</sub> on # TURN-THE-SERVICE-SERVICE-ON-FOR-START-AT-NEXT-BOOT-OR-OTHER-TRIGGER.
-   chkconfig SERVICE<sub>NAME</sub> off # TURN-THE-SERVICE-SERVICE-OFF-FOR-THE-NEXT-REBOOT-OR-OTHER-TRIGGERS.


<a id="orgff033ba"></a>

## usage

**systemct status/start/stop**

Enable a service to start on boot: **systemctl enable/disable service**

log: **journalctl -u rtorrent**


<a id="org65d83dc"></a>

## links

-   <https://www.digitalocean.com/community/tutorials/understanding-systemd-units-and-unit-files>
-   <https://www.freedesktop.org/software/systemd/man/systemd.service.html>


<a id="org9f64087"></a>

# LibreOffice


<a id="org38b2542"></a>

## Formula field

Excel Formulas Introduction Formula Basics

-   =: Equal sign, starts a formula
-   Cell References: A1, $A$1, A$1, $A1 (relative, absolute, mixed)
-   Operators: +, -, \*, /, ^, & (arithmetic, concatenation)
-   Functions: Built-in formulas, e.g., SUM, AVERAGE, IF

Arithmetic Operators

-   +: Addition
-   -: Subtraction
-   \*: Multiplication
-   /: Division
-   ^: Exponentiation
-   %: Percentage

Comparison Operators

-   =: Equal to
-   <>: Not equal to
-   >: Greater than
-   <: Less than
-   >=: Greater than or equal to
-   <=: Less than or equal to

Logical Operators

-   AND: Logical and
-   OR: Logical or -
-   NOT: Logical not - =NOT(A1 = B1) Returns NOT(1 = 2) which is TRUE
-   XOR

Functions

-   SUM: Sum of values  =SUM(1, 2, 3, 4, 5) -> 15
-   AVERAGE: Average of values
-   COUNT: Count of values
-   IF: Conditional statement =IF(A1>10, "Greater than 10", "Less than or equal to 10") -> Greater than 10
    -   =IF(A1>10, "Greater than 10", "Less than or equal to 10") - Returns "Greater than 10" if the value in
        cell A1 is greater than 10, otherwise returns "Less than or equal to 10".
-   VLOOKUP: Vertical lookup
    -   =VLOOKUP(A2, B:C, 2, FALSE) - Looks up the value in cell A2 in the first column of the range B:C and
        returns the corresponding value in the second column.
    -   Input: =VLOOKUP(A2, B:C, 2, FALSE)
    -   Input value in A2: John
    -   Input range B:C: | Name | Age |
    -   | John | 25 |
    -   | Jane | 30 |
    -   Output: 25
-   INDEX/MATCH: Flexible lookup
-   MAX/MIN: Maximum/minimum value
    -   =MAX(D1:D10) - Returns the maximum value in cells D1 through D10. =MIN(D1:D10) - Returns the minimum
        value in cells D1 through D10.
-   DATEDIF: Date difference
    -   =DATEDIF(A1, B1, "D") - Returns the number of days between the dates in cells A1 and B1.

Text Functions

-   CONCATENATE: Join text strings
    -   CONCATENATE: =CONCATENATE(A1, " ", B1) - Joins the text in cells A1 and B1 with a space in between.
-   LOWER/UPPER: Convert text case
    -   LOWER/UPPER: =LOWER(A1) - Converts the text in cell A1 to lowercase. =UPPER(A1) - Converts the text in
        cell A1 to uppercase.
-   PROPER: Capitalize first letter. : =PROPER(A1)
-   TRIM: Remove spaces
-   REPLACE: Replace text
    -   =REPLACE(A1, "old text", "new text") - Replaces the text "old text" with "new text" in the text in cell A1.

Date and Time Functions

-   TODAY: Current date.  =TODAY()
-   NOW: Current date and time =NOW()
-   DATEDIF: Date difference =DATEDIF(A1, B1, "M")
-   HOUR/MINUTE/SECOND: Extract time components =HOUR(A1)

Lookup and Reference Functions

-   VLOOKUP: Vertical lookup
-   MATCH: Returns the relative position of a value in a range.
    -   Syntax: MATCH(lookup<sub>value</sub>, lookup<sub>array</sub>, [match<sub>type</sub>])
        -   [match<sub>type</sub>]: Optional. 0 for exact match, 1 for approximate match.
    -   Example: =MATCH("John", A:A, 0) returns the relative position of "John" in column A. = 1
-   INDEX: Returns a value from a range based on a row and column number.
    -   INDEX(range, row<sub>num</sub>, [column<sub>num</sub>])
    -   Example: =INDEX(B:B, 2) returns the value in the 2nd row of column B.
-   INDEX/MATCH: Flexible lookup
    -   Example: =INDEX(B:B, MATCH("John", A:A, 0)) returns the value in column B corresponding to "John" in
        column A.
    -   Input: =INDEX(C:C, MATCH(A2, B:B, 0))
    -   Input value in A2: John
    -   Input range B:B: | Name |
        -   | John |
        -   | Jane |
    -   Input range C:C: | Age |
        -   | 25 |
        -   | 30 |
    -   Output: 25

-   HLOOKUP: Horizontal lookup
-   LOOKUP: Simple lookup

Error Handling

-   \#N/A: Not available
-   \#VALUE: Invalid value
-   \#REF: Invalid reference
-   \#NAME?: Unknown name
-   \#NUM: Invalid number
-   \#DIV/0: Division by zero

Data types

-   =ISNUMBER(A1) Checks if a cell is a number. This will return TRUE
-   =ISTEXT(D1) Checks if a cell is a text. This will return TRUE
-   =ISLOGICAL(A1) Checks if a cell is a boolean. This will return FALSE

Formula Tips

-   Use absolute references: $A$1 instead of A1
-   Use named ranges: Define names for ranges
-   Use functions: Instead of manual calculations
-   Test formulas: Verify results before using
-   Document formulas: Use comments and notes


<a id="orgc2879ec"></a>

## Cell Reference

Notation

-   "A", "B", or "C" - Column Letter
-   "1", "2", or "3" - Row Number
-   "Sheet1" or "Sheet2" - Worksheet Name
-   "Book1.xlsx" or "Book2.xlsx" - Workbook Name
-   (:) - Range Operator
-   ($) - indicates an absolute reference.

Types:

-   Relative Reference: =A1 (refers to cell A1 in the same worksheet)
-   Absolute Reference: =$A$1 (refers to cell A1 in the same worksheet, always) - works like fixer for copying.
    -   absolute references: When referring to a specific cell or range, use absolute references to ensure that
        the reference doesn't change when the formula is copied.
-   Mixed Reference: =A$1 (refers to cell A1 in the same worksheet, with relative column and absolute row)
-   3D Reference: =Sheet2A1 (refers to cell A1 in the worksheet named "Sheet2")
-   Range Reference: =A1:B2 (refers to the range of cells from A1 to B2 in the same worksheet)


<a id="org22534af"></a>

## troubleshooting

Band encoding of text or How to change encoding?

-   close and open file again, you will prompt to choose encoding


<a id="orge562878"></a>

# mercurial

-   hg log -
-   hg summary - git status
-   hg up branchname - git checkout branchname


<a id="orgbcb476a"></a>

# wineHQ

-   видит всю систему, нужно устанавливать отдельным пользователем и убрать диск с /
-   Garbage - not supported!
-   WINEARCH=win32 winecfg
-   WINEARCH=win64 winecfg
-   WINEPREFIX=~/.wine/prefix # где будет папка конфигурацией и C: диск

-   wine explorer
-   apt-get install winbind # winbindd - Name Service Switch daemon for resolving names from NT servers # part of the samba(7)

addons:

-   wine-gecko for applications that depend on Internet Explorer
-   wine-mono - .NET
    -   open-source and cross-platform implementation

config:

-   winecfg
-   regedit is Wine's registry editing
-   wine control - Wine's implementation of the Windows Control Panel,


<a id="org9c68087"></a>

## create index

Create a new Wine prefix (for most applications, it's better to set its own prefix):

    $ env WINEPREFIX=$HOME/winedotnet wineboot --init


<a id="org1c99f47"></a>

## env variables

-   WINEPREFIX=~/.wine - default, contains a tree which your Windows programs will see as C: (the C-drive).
-   WINEARCH


<a id="orgb0ffbb3"></a>

## mono

-   <https://github.com/madewokherd/wine-mono/releases>
-   doc <https://wiki.winehq.org/Mono>
-   mono version in wine sources <https://github.com/wine-mirror/wine/blob/master/dlls/appwiz.cpl/Makefile.in>

C:\windows\mono\mono-2.0<dotnet<sub>version</sub>><Binaries&dlls>"

${prefix}/share/wine/mono/wine-mono-5.0.0


<a id="orgcdaf261"></a>

### versions

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />

<col  class="org-right" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-right">Wine Version</th>
<th scope="col" class="org-right">Wine Mono Version</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-right">8.9</td>
<td class="org-right">8.0.0</td>
</tr>


<tr>
<td class="org-right">7.20</td>
<td class="org-right">7.4.0</td>
</tr>


<tr>
<td class="org-right">7.10</td>
<td class="org-right">7.3.0</td>
</tr>


<tr>
<td class="org-right">7.6</td>
<td class="org-right">7.2.0</td>
</tr>


<tr>
<td class="org-right">7.2</td>
<td class="org-right">7.1.1</td>
</tr>


<tr>
<td class="org-right">6.22</td>
<td class="org-right">7.0.0</td>
</tr>


<tr>
<td class="org-right">6.18</td>
<td class="org-right">6.4.0</td>
</tr>


<tr>
<td class="org-right">6.14</td>
<td class="org-right">6.3.0</td>
</tr>


<tr>
<td class="org-right">6.10</td>
<td class="org-right">6.2.0</td>
</tr>


<tr>
<td class="org-right">6.6</td>
<td class="org-right">6.1.1</td>
</tr>


<tr>
<td class="org-right">6.2</td>
<td class="org-right">6.0.0</td>
</tr>


<tr>
<td class="org-right">5.19</td>
<td class="org-right">5.1.1</td>
</tr>


<tr>
<td class="org-right">5.11</td>
<td class="org-right">5.1.0</td>
</tr>


<tr>
<td class="org-right">5.7</td>
<td class="org-right">5.0.0</td>
</tr>


<tr>
<td class="org-right">4.20</td>
<td class="org-right">4.9.4</td>
</tr>


<tr>
<td class="org-right">4.17</td>
<td class="org-right">4.9.3</td>
</tr>


<tr>
<td class="org-right">4.14</td>
<td class="org-right">4.9.2</td>
</tr>


<tr>
<td class="org-right">4.11</td>
<td class="org-right">4.9.0</td>
</tr>


<tr>
<td class="org-right">4.7</td>
<td class="org-right">4.8.3</td>
</tr>


<tr>
<td class="org-right">4.6</td>
<td class="org-right">4.8.1</td>
</tr>


<tr>
<td class="org-right">4.3</td>
<td class="org-right">4.8.0</td>
</tr>


<tr>
<td class="org-right">4.0-rc6</td>
<td class="org-right">4.7.5</td>
</tr>


<tr>
<td class="org-right">3.13</td>
<td class="org-right">4.7.3</td>
</tr>


<tr>
<td class="org-right">2.14</td>
<td class="org-right">4.7.1</td>
</tr>


<tr>
<td class="org-right">2.4</td>
<td class="org-right">4.7.0</td>
</tr>


<tr>
<td class="org-right">2.0-rc1</td>
<td class="org-right">4.6.4</td>
</tr>


<tr>
<td class="org-right">1.9.12</td>
<td class="org-right">4.6.3</td>
</tr>


<tr>
<td class="org-right">1.9.8</td>
<td class="org-right">4.6.2</td>
</tr>


<tr>
<td class="org-right">1.9.5</td>
<td class="org-right">4.6.0</td>
</tr>


<tr>
<td class="org-right">1.7.37</td>
<td class="org-right">4.5.6</td>
</tr>


<tr>
<td class="org-right">1.7.32</td>
<td class="org-right">4.5.4</td>
</tr>


<tr>
<td class="org-right">1.7.7</td>
<td class="org-right">4.5.2</td>
</tr>


<tr>
<td class="org-right">1.5.16</td>
<td class="org-right">0.0.8</td>
</tr>


<tr>
<td class="org-right">1.5.5</td>
<td class="org-right">0.0.4</td>
</tr>
</tbody>
</table>


<a id="orgf53ed0a"></a>

## components

-   wine uninstaller - Add/Remove Programs control panel applet (appwiz.cpl)


<a id="org4de8247"></a>

## links

-   all commands <https://wiki.winehq.org/List_of_Commands>


<a id="org1fb30c8"></a>

# paranoia


<a id="org44ecc56"></a>

## backdoors

It has been pointed out time and time again that there is absolutely no practical difference what-so-ever
between intentional vulnerabilities in computer hardware and unintentional vulnerabilities. The only people
with the capacity to do either en masse have the capacity to hire hundreds of scientists and engineers for
entire departments of the sciences. As long as your box is not actively transmitting data without your
permission (it isn't), proper non-attribution techniques will protect you.


<a id="org0ee164f"></a>

### BIOS/UEFI

-   proprietary - close source
-   by default - may be updated inside OS


<a id="org40711c1"></a>

### save bios


<a id="org5581106"></a>

### CPU microcode

for

-   for CPU bugs
-   Microcode has become more important with the Spectre vulnerability. Intel CPUs need new “microcode” from
    Intel to properly defend against Spectre attacks.

facts

-   Microcode updates do not persist across reboot

Intel Microcode Update Points

-   BIOS/UEFI
-   Early OS Microcode Update
-   Runtime Microcode Update

packages

-   Ubuntu
    -   intel-microcode
    -   amd64-microcode
-   Gentoo
    -   sys-kernel/linux-firmware
    -   sys-firmware/intel-microcode.
-   Fedora, Arch microcode updates are installed by default.

less /proc/cpuinfo

-   **microarchitecture**:
    -   cpu family
    -   model
    -   stepping
-   microcode - microcode revision number

kernel
Processor type and features &#x2014;>
   [\*] CPU microcode loading support
   [\*]   Intel microcode loading support
   [\*]   AMD microcode loading support


<a id="orga879472"></a>

## TLS

-   корневые сертификаты SSL, одобренные Роскомнадзором
-   все мировые центры сертификации – это, как правило, частные компании: GlobalSign, DigiCert и др.
-   крупнейшие компании — такие как Яндекс, Mail.ru Group, Сбербанк и даже Telegram — обязаны будут в
    принудительном порядке внедрить в свои продукты средства шифрования, одобренные Роскомнадзором
-   браузеры пользователей будут в принудительном порядке «заражать» отечественными сертификатами, которые
    позволят ФСБ и иным спецслужбам просматривать любой трафик пользователя.


<a id="org64d2055"></a>

## hide data in image

-   echo text >> image.jpg
-   split -b 464334 image.jpg

progs

-   last bits of image rgb  <https://github.com/computationalcore/cryptosteganography>
-   <https://steghide.sourceforge.net/>


<a id="org9eec2f4"></a>

# Matrix

<https://wiki.installgentoo.com/wiki/Matrix.org>


<a id="orgf9a941f"></a>

## TODO theory


<a id="org4494cd1"></a>

## clients

-   element-desktop <https://packages.gentoo.org/packages/www-apps/element>
-   weechat IRC Command-line client <https://packages.gentoo.org/packages/net-irc/weechat>
    -   + Python script <https://github.com/poljar/weechat-matrix>
        -   matrix-nio - A Python Matrix client library,
    -   + Rust plugin <https://github.com/poljar/weechat-matrix-rs>
-   fractal - GNOME client, suitable for desktop and mobile. Rust
-   nheko -  mainstream chat app.
-   quaternion - Qt5 and C++ cross-platform desktop Matrix client.
-   spectral - glossy client for Matrix, written in QtQuick Controls 2 and C++ <https://gitlab.com/b0/spectral>


<a id="orgb619b34"></a>

# Irssi


<a id="org453d66a"></a>

## IRC protocol

6697, SSL (TLS)


<a id="org499b1de"></a>

## irc basic commands - IRC commands cheat sheet

-   /list - list channels - slow
-   /join #libera  -  Enter the channel #libera.
-   /leave #libera - leave channel
-   /part [#libera] [message] - Exit the channel #libera. with message
-   /nick nickname - Changes your nickname to the one you specify.
-   /notice nickname message - Sends a private message to nickname without opening a query window for either you or them.
-   /me action - Use this for emotes. It will appear something like \* Nickname action.
-   /quit [message] - Disconnects you from the network. The optional message will be shown to every channel you are in.
-   /ignore nickname - May stop you seeing the user talk. Useful if they are being a pest.
-   /unignore nickname - May allow you to see the user again if you change your mind.
-   /ignores - May list the current ignores you have set.

advanced

-   /msg alis list <pattern> [options]. - alis is a network service to search for channels server-side.
-   /who nick and /whois nick - find out about nick
-   /say - say to current channel
-   /NAMES #example - get nicks in current channel

Private message

-   /query nickname [message] - Open a conversation window with user “nickname”, and optionally include a message.
-   /msg nickname message -  Sends a private message to user “nickname” without opening a new conversation window.

actions:
/describe <nick|channel> <message> - Sends an action to the specified nickname or channel.
/me message - Sends an action message to the current channel or query window.


<a id="org0a11228"></a>

## IRC colours

-   Ctrl+[ - for italic
-   Ctrl+v - for invert
-   Ctrl+c4 - for color

-   <https://raw.githubusercontent.com/irssi/irssi/master/docs/formats.txt>
-   <https://www.mirc.com/colors.html>


<a id="org743a9fb"></a>

## terms

-   network
-   


<a id="org2fb3e60"></a>

## ui

![img](https://irssi.org/_images/default_irssi_ui_light.svg)

-   root status bar -
    -   topic - channel additional info
-   window status bar:
    -   window number - /<number> (e.g. /2)
    -   area showing chat and status messages
-   window status bar:
    -   clock
    -   your nick
    -   user mode on the server (+Ziw)
    -   window number [3:
    -   network tag :librechat/
    -   channel name /##chat(+
    -   channel mode ##chat-overflow
    -   activity indicator: show numbers of window with new text/messages [Act:3]
-   active window indicator - shows where any text you enter will be sent to


<a id="orgcad227e"></a>

## keys

To show current bindings:

    /bind

to reset:

    /bind -reset

    /bind ^L backward_character
    /bind ^F forward_character
    /bind meta-v scroll_backward
    /bind meta-^V scroll_forward
    /bind meta-^E next_window
    /bind meta-^A previous_window
    /bind ^K backward_history
    /bind ^N forward_history
    /bind meta-^K /scrollback goto -2
    /bind meta-^N /scrollback goto +2


<a id="org21cbc86"></a>

### windows

-   Ctrl+n/p	change between windows
-   Alt+1/2	change between windows
-   Alt-↑/↓/←/→	change window in direction
-   Alt-a	active<sub>window</sub> - Go to next window with the highest activity


<a id="orgec528f1"></a>

### in window

-   Ctrl-X	next<sub>window</sub><sub>item</sub> - Go to the next channel/query. In empty windows change to the next server
-   Ctrl+x	which network to send commands (in the status window.)
-   Ctrl-L	refresh<sub>screen</sub> - Redraw screen
-   Page Up, Alt-p	scroll<sub>backward</sub>
-   Page Down, Alt-n	scroll<sub>forward</sub>


<a id="org078a521"></a>

### Navigating while typing

-   ↵, Ctrl-M, Ctrl-J - return
-   ⌫, Ctrl-?, Ctrl-H - backspace

-   ↑/↓ - backward<sub>history</sub>/forward<sub>history</sub>
-   Ctrl-↑/↓ - backward<sub>global</sub><sub>history</sub>/forward<sub>global</sub><sub>history</sub>


<a id="org602d1ac"></a>

### rebindin

-   /bind ^Z command window last
-   /bind end command /sb end
-   /bind home command /sb home
-   /bind meta-[ active<sub>window</sub>
-   /alias w /window goto


<a id="orge48be5c"></a>

### links

-   <https://irssi.org/documentation/help/bind_-list/>
-   <https://joost.vunderink.net/blog/2011/12/02/irssi-tricks-navigating-around/>


<a id="org921af7e"></a>

## commands

<CMDCHAR>[<CMDCHAR>][^]<DATA>

-   If <CMDCHAR> is repeated two times, alias expansion is disabled
-   If ^ is present, command output is disabled.
-   If <DATA> begins with a space, command lookup is inhibited and the data is sent to the active window item
    (useful to send a line that begins with <CMDCHAR>).

<DATA> - send to currently active window item (including space + CMDCHAR)

<CMDCHAR><Space><CMDCHAR>rest of the text&#x2026; - send "/rest of the text&#x2026;"

commands

-   /quit
-   /set nick whatyouwant
-   /network
-   /connect liberachat
-   /join #irssi
-   /window hidelevel +joins +parts +quits
-   /window hidelevel -joins -parts -quits
-   /network add hackint
-   /server add -tls -network hackint irc.hackint.org 6697
-   /connect hackint
-   /help commandname
-   /t (short for /topic) to read the full topic

automation

-   /SERVER LIST
-   /SERVER MODIFY -auto irc.libera.chat
-   /CHANNEL ADD -auto #channelname NetworkName
-   /ADDALLCHANS
-   /NETWORK ADD -sasl<sub>username</sub> yourname -sasl<sub>password</sub> yourpassword -sasl<sub>mechanism</sub> PLAIN liberachat
-   /NETWORK MODIFY -autosendcmd "<sup>msg</sup> NickServ identify YOURPASSWORD YOURNICK;wait -OFTC 2000" OFTC


<a id="org55cbe78"></a>

## 1

/connect <server>

/join #<channel>

/nick <nickname>

/msg <nickname>

/wc

ALT+<number>, eg. ALT+1, ALT+2

/names

/topic <description>

/ignore #foo,#bar JOINS PARTS QUITS NICKS   # Quieten only channels \`#foo\`, \`#bar\`
/ignore \* JOINS PARTS QUITS NICKS           # Quieten all channels

/save

/exit


<a id="org0efe947"></a>

## 2

1.  To switch between open channels / windows
    
    \`Alt\` + \`N\` where \`N\` is the number corresponding to the open window

2.  To ignore joins / quits / nicks changes on a specific channel.
    
    \`/ignore -channels #chan1,#chan2,#chan3 \* JOINS PARTS QUITS NICKS\`

3.  Auto Connect to a Server on startup
    
    \`/SERVER ADD -auto -network IRCnet irc.freenode.net 6667\`

4.  Auto Join to Specificed channels
    
    \`/CHANNEL ADD -auto #doothings IRCnet\`

5.  To Keep logging all these conversations
    
    \`/SET AUTOLOG ON\`

6.  To set Nicks and Real Name etc.
    
    \`/SET\` -> This should show all existing configured parameters.
    
    To change these just say
    
    \`/SET param-name value\` like \`/SET nick nism-pi\`

7.  To auto-identify on connecting with NickServ
    
    \`/network add -autosendcmd "/msg nickserv identify <password> ;wait 2000" IRCnet\`

8.  \`/SAVE\` to save the entire configuration.


<a id="org24a57b4"></a>

## librechat

-   <https://github.com/shabble/irssi-docs/wiki/liberachat>
-   <https://github.com/shabble/irssi-docs/wiki/liberachat_certfp>
-   cert generation <https://libera.chat/guides/certfp>
-   nick registration <https://libera.chat/guides/registration>

steps:

    openssl req -x509 -new -newkey ed25519 -sha256 -days 1096 -nodes -out libera.pem -keyout libera.pem
    mkdir ~/.irssi/certs
    mv libera.pem ~/.irssi/certs
    # get fingerprint:
    openssl x509 -in .irssi/certs/libera.pem -noout -fingerprint -sha512 | awk -F= '{gsub(":",""); print tolower ($2)}'

    /server add -tls_cert ~/.irssi/certs/libera.pem -network LiberaChat irc.libera.chat 6697
    /connect LiberaChat
    /whois or /whois YourOwnNick - should output YourOwnNick has client certificate fingerprint 959c0bdfa9877d3466c5848f55264f72f132c657b002b79fda65dbe36c67f4bb3d2a3e2e9925cb5896a53c76169c5bb71b7853bd90192068dc77f4b20159a1d8
    /nick YourNick
    /msg NickServ REGISTER YourPassword youremail@example.com
    /msg NickServ CERT ADD
    /disconnect LiberaChat

switch the authentication to certificates:

    /network add -sasl_password '' -sasl_mechanism EXTERNAL LiberaChat
    /connect LiberaChat
    /msg NickServ regain

SASL with the EXTERNAL mechanism. ? <https://libera.chat/guides/sasl>


<a id="org7d6e996"></a>

## automation

    /SERVER MODIFY -auto irc.libera.chat
    /CHANNEL ADD -auto #channelname NetworkName

    /NETWORK ADD -sasl_username Anoncheg -sasl_password '' -sasl_mechanism EXTERNAL liberachat
    /CHANNEL ADD -auto #channelname NetworkName
    /NETWORK MODIFY -autosendcmd "^nick Anoncheg" liberachat
    /CHANNEL ADD -auto #emacs liberachat

show autojoin

    /channel list

    /ignore -channels #gentoo * JOINS PARTS QUITS NICKS
    /ignore -channels #emacs * JOINS PARTS QUITS NICKS
    /ignore * JOINS PARTS QUITS NICKS
    /ignore - show list
    /unignore <id>


<a id="orgdbe7a1a"></a>

### my

    /CHANNEL ADD -auto #emacs liberachat
    /CHANNEL ADD -auto #gentoo-chat liberachat
    /CHANNEL ADD -auto #irssi liberachat
    /NETWORK MODIFY -autosendcmd "^ignore -channels #gentoo * JOINS PARTS QUITS NICKS" liberachat
    /CHANNEL ADD -auto #machinelearning liberachat
    /CHANNEL ADD -auto #notmuch liberachat
    /CHANNEL ADD -auto #gentoo-hardened liberachat
    /CHANNEL ADD -auto #cooking liberachat
    /NETWORK MODIFY -autosendcmd "ignore -channels #emacs,#gentoo,#gentoo-chat,#gentoo-hardened,#irssi,##cooking,#notmuch,##machinelearning-general * JOINS PARTS QUITS NICKS ; msg NickServ regain anonch" liberachat
    /save


<a id="org1e20966"></a>

## socks

proxychains irssi


<a id="org3b8c8ac"></a>

## proxy (HTTP)

To load the proxy module, type:

-   /load proxy

-   

<https://github.com/irssi/irssi/blob/master/docs/proxy.txt>

\*\*


<a id="org74a8922"></a>

## script: python module

<https://github.com/irssi-import/irssi-python>

common installation steps:

-   make & install
-   /load matrix


<a id="orgefee1bd"></a>

## script: (Perl)

-   <https://irssi.org/documentation/scripting/>
-   <https://codeberg.org/irssi/irssi/src/branch/master/docs/perl.txt>
-   <https://codeberg.org/irssi/irssi/src/branch/master/docs/signals.txt>
-   <https://github.com/shabble/irssi-docs/wiki>
-   <https://juerd.nl/site.plp/irssi>
-   <https://juerd.nl/site.plp/irssiscripttut>
-   <https://scripts.irssi.org/>

event based:  signals(events) and commands(user).

-   *SCRIPT LOAD command or /RUN alias. /SCRIPT UNLOAD from ~*.irssi/scripts/ or *usr/local/lib/irssi/scripts*
-   Irssi:: namespace.
-   subs - hook events
-   Irssi::signal<sub>add</sub> or Irssi::command<sub>bind</sub> (event sub)
-   Everything you print is printed into Irssi's scrollbuffer, and automatically line terminated.
-   Irssi::signal<sub>stop</sub>(); - inside sub to stop
-   add: settings<sub>add</sub><sub>str</sub>, settings<sub>add</sub><sub>int</sub> or settings<sub>add</sub><sub>bool</sub>
-   get: settings<sub>get</sub><sub>str</sub>, settings<sub>get</sub><sub>int</sub> or settings<sub>get</sub><sub>bool</sub>
-   You can also use signal<sub>add</sub><sub>last</sub>() if you wish to let the Irssi's internal functions be run before yours.


<a id="org275fdf1"></a>

### command available in script:

Server::send<sub>message</sub>(target, msg, target<sub>type</sub>)
  Sends a message to nick/channel. target<sub>type</sub> 0 = channel, 1 = nick

Channel::nicks()
  Return a list of all nicks in channel.
Channel::nick<sub>find</sub>('anon')


<a id="org68db520"></a>

### ex

    use strict;
    use vars qw($VERSION %IRSSI);
    
    use Irssi;
    $VERSION = '1.00';
    %IRSSI = (
        authors     => 'A. U. Thor',
        contact     => 'author@far.away',
        name        => 'My First Script',
        description => 'This script allows ' .
                       'you to print Hello ' .
                       'World using a command.',
        license     => 'Public Domain',
    );
    # -------- add event handler
    # --- command
    sub testing {
        my ($data, $server, $witem) = @_; # arguments
        return unless $witem;
        # $witem (window item) may be undef.
    
        $witem->print('It works!');
        $witem->print('Example', MSGLEVEL_PUBLIC);
    }
    
    Irssi::command_bind test => \&testing;
    Irssi::command_bind hello => sub {
        print 'Hello, world!'; # CLIENTCRAP messagelevel is used
    };
    # --- signal
    sub event_privmsg {
        # $data = "nick/#channel :text"
        my ($server, $data, $nick, $address) = @_;
        my ($target, $text) = split(/ :/, $data, 2);
    
        Irssi::signal_stop() if ($text =~ /free.*porn/ || $nick =~ /idiot/);
      }
    
    Irssi::signal_add("event privmsg", "event_privmsg")


<a id="org0523d3d"></a>

## links

-   <https://wiki.gentoo.org/wiki/Irssi>
-   <https://irssi.org/>
-   <https://codeberg.org/ticho/irssi-matrix/>


<a id="org77f17ac"></a>

# mpv

-   F8 	show playlist
-   >/<	playlist
-   0/9	volume control


<a id="orgf88f298"></a>

# TigerVNC

alwaysshared - Determine whether multiple users can be connected at the same time

-   vncconfig
-   vncpasswd − change the VNC password
-   vncsession - start a VNC server
-   vncviewer
-   x0vncserver
-   Xvnc

steps:

    mkdir .vnc
    vncpasswd .vnc/passwd
    x0vncserver -PasswordFile ~/.vnc/passwd -localhost

useful options:

-   -localhost
-   -SecurityTypes none
-   -Password password
-   -AlwaysShared - between clients?
-   -NeverShared=on - ?
-   -AcceptKeyEvents=off
-   -AcceptPointerEvents=off
-   -AcceptSetDesktopSize=off
-   -FrameRate=24
-   -CompareFB=0 # pixel compression 0 (off), 1 (always) or 2 (auto)
-   -UseSHM=off # Shared Memory
-   -ZlibLevel=3 #0-9

View only access:

    x0vncserver -SecurityTypes none -NeverShared=on -AcceptKeyEvents=off -AcceptPointerEvents=off -AcceptSetDesktopSize=off -FrameRate=20 -UseSHM=off -ZlibLevel=3

links

-   <https://wiki.gentoo.org/wiki/TigerVNC>
-   <https://wiki.archlinux.org/title/TigerVNC>
-   <https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/system_administrators_guide/ch-tigervnc>


<a id="org11dad91"></a>

# cloud

open source consoles - OpenShift


<a id="org2555d52"></a>

# openssl

-   openssl s<sub>client</sub> -showcerts -connect pecl.php.net:443 просмотр сертификатов при соединении схостом
-   openssl s<sub>client</sub> -tls1 -debug -msg -state -showcerts -connect php.net:443 - более подробный вывод
-   openssl ciphers|tr ':' '\n'|grep GOST
-   openssl engine
-   openssl s<sub>client</sub> -connect pecl.php.net:443 -CAfile RCA.crt - указать свой сертификат
-   curl &#x2013;trace - <https://gost.cryptopro.ru/>

inspecting expiration date:

    openssl x509 -in libera.pem -noout -enddate

inspecting the fingerprint:

    openssl x509 -in libera.pem -noout -fingerprint -sha512 | awk -F= '{gsub(":",""); print tolower ($2)}'


<a id="orge005c70"></a>

# decentralized Darknet

Deep web - parts of the World Wide Web whose contents are not indexed by standard web search-engines

Anonymity trilemma: strong anonymity, low bandwidth overhead, low latency overhead (delay between when the
 message is sent and received)

Zooko's triangle (names of participants in a network protocol:):

-   Human-meaningful: Meaningful and memorable (low-entropy) names are provided to the users.
-   Secure: The amount of damage a malicious entity can inflict on the system should be as low as possible.
-   Decentralized: Names correctly resolve to their respective entities without the use of a central authority
    or service.
-   secure under Byzantine assumptions


<a id="org8cc18e8"></a>

## TOR


<a id="org9ebbb7b"></a>

### offical and not official resources

-   TOR Node List <https://www.dan.me.uk/tornodes>
-   ExoneraTor — про­вер­ка IP на исполь­зование в качес­тве нод Tor; <https://metrics.torproject.org/exonerator.html>
-   Onionite — информа­ция о нодах; <https://github.com/lukechilds/onionite>
-   Collector Tor — архив IP и пор­тов узлов. <https://collector.torproject.org/archive/relay-descriptors/microdescs/>
-   <https://torwhois.com>

1.  search engines

    -   <https://onionengine.com>
    -   <https://www.torry.io>
    -   <https://onionlandsearchengine.net>
    -   <https://torsearch.com>
    -   <https://github.com/megadose/OnionSearch>
    
    <https://telegra.ph/Haker---De-onion-Kak-lovyat-administratorov-sajtov-v-Tor-08-08>

2.  wikis

    • The Hidden Wiki; <https://thehiddenwiki.org>
    • IACA DarkWeb; <https://iaca-darkweb-tools.com>
    • DarkWeb Links; <https://darkweb-links.co/dark-web-links/>
    • The DarkWeb Links. <https://www.thedarkweblinks.com>

3.  money

    Ви­зуали­зато­ры зачас­тую плат­ные, но есть и нес­коль­ко бес­плат­ных:
    
    -   <https://www.breadcrumbs.app>
    -   <https://oxt.me>
    -   <https://blockpath.com>
    
    Ча­ще все­го дар­квеб исполь­зуют для тор­говли зап­рещен­ными товара­ми и услу­гами. Выручен­ные день­ги потом нуж­но как‑то выводить, и здесь тор­говцы зап­рещен­ным изоб­рета­ют самые изощ­ренные схе­мы. Обыч­но — с исполь­зовани­ем крип­товалю­ты. Имен­но на эта­пе вывода денег чаще все­го и попада­ются вла­дель­цы мар­кет­плей­сов.
    
    Пред­ставь: кли­ент покупа­ет крип­ту, покупа­ет на нее что‑то в дар­кне­те, крип­товалю­та хра­нит­ся на депози­те мар­кет­плей­са, затем боль­шая часть перехо­дит про­дав­цу, а даль­ше он пыта­ется ее обме­нять на фиат­ную валюту.
    
    По­луча­ется, что мож­но уста­новить, каким обменни­ком поль­зует­ся про­давец, если знать адрес его крип­товалют­ного кошель­ка. Для это­го дос­таточ­но визу­али­зиро­вать его активность с помощью спе­циаль­ной прог­раммы. На кошель­ке обменни­ка, конеч­но же, будет огромное чис­ло тран­закций и немалая сум­ма денег.
    
    Час­то при отмы­ве денег при­меня­ются крип­товалют­ные мик­серы. Они поз­воля­ют скры­вать крип­товалют­ные акти­вы, рас­пре­деляя их по мно­жес­тву дру­гих кошель­ков, и затем сно­ва перево­дят в один. Это усложня­ет отсле­жива­ние тран­закций, но не дела­ет их пол­ностью ано­ним­ными.
    
    Ес­ли визу­али­зиро­вать тран­закции кошель­ка, который исполь­зовал мик­сер, мож­но заметить сле­дующие осо­бен­ности:
    
    • мно­жес­тво вхо­дов и выходов в одной тран­закции, вклю­чая
      адре­са, не свя­зан­ные с исходным кошель­ком;
    • пе­реме­шива­ние средств меж­ду раз­ными адре­сами и кошель­ками;
    • свя­зи с дру­гими тран­закци­ями — цепоч­ки и клас­теры
      тран­закций, свя­зан­ные с бит­коин‑мик­сером;
    • не­одно­род­ность сумм тран­закций;
    • не­обыч­ные вре­мен­ные интерва­лы меж­ду тран­закци­ями.
    
    Най­ти нас­тоящий адрес покупа­теля тяжело, но впол­не реаль­но. Одна­ко ПО для ана­лиза тран­закций мик­серов в откры­том дос­тупе пока что нет. Поэто­му при­ходит­ся прос­то идти по цепоч­ке тран­закций, пока не най­дешь что‑то похожее на кошелек, при­над­лежащий челове­ку.
    
    Как ты понял, отмыв денег и их отсле­жива­ние — это отдель­ная боль­шая тема. Но знать о ней нуж­но, хотя бы на базовом уров­не. Сущес­тву­ет огромное количес­тво схем легали­зации средств, получен­ных прес­тупным путем, — от соз­дания офшорных орга­низа­ций до покуп­ки раз­ного иму­щес­тва. Все это, мы, конеч­но, здесь раз­бирать не будем.

4.  sites

    • DuckDuckGo; <https://duckduckgogg42xjoc72x3sjasowoarfbgcmvfimaftt6twagswzczad.onion/>
    • Not Evil; <http://notevilmtxf25uw7tskqxj6njlpebyrmlrerfv5hc4tuq7c7hilbyiqd.onion/>
    • Ahmia; <http://juhanurmihxlp77nkq76byazcldy2hlmovfu2epvl5ankdibsot4csyd.onion/>
    • Haystak; <http://haystak5njsmn2hqkewecpaxetahtwhsbsa64jom2k22z5afxhnpxfid.onion/>
    • Torch; <http://torchdeedp3i2jigzjdmfpn5ttjhthh5wbmda2rr3jvqjg5p77c54dqd.onion/>
    • Demon. <http://srcdemonm74icqjvejew6fprssuolyoc2usjdwflevbdpqoetw4x3ead.onion/>


<a id="orgcec1dbe"></a>

### site security audit

Onionscan (аудит onion-сай­та);
 • Onion Nmap (Nmap для onion-сай­та);
 • OWASP ZAP (ска­нер);
 • Nikto (ска­нер);
 • WPScan (ска­нер);
 • Burp Suite (ска­нер);
 • Wapiti (ска­нер);
 • спи­сок уяз­вимос­тей на Mitre.org. <https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=tor>


<a id="org33a1454"></a>

### types of relays or nodes

-   non-exit relays
    -   Guard -  first relay in the chain of 3 relays building a Tor circuit -  must be stable and fast (at least 2MByte/s) otherwise it will remain a middle relay.
    -   middle relay - acts as the second hop between Guard and exit relays
-   bridge - static IP better - not relay - node - IP not listed in public TOR derectory
    -   Pluggable transports, a special kind of bridge, address this by adding an additional layer of obfuscation.


<a id="orgcbb444e"></a>

### torrc

1.  tor node and dirctionary - gentoo

    -   default:
        -   User tor
        -   PIDFile /run/tor/tor.pid
        -   \# Log notice syslog
        -   DataDirectory /var/lib/tor/data
    -   RunAsDaemon 1
    -   ExitRelay 0
    -   BridgeRelay 0
    -   ORPort 0.0.0.0:xxx
    -   DirPort 0.0.0.0:xxx
    -   Nickname
    -   RelayBandwidthRate 2 MBytes
    -   RelayBandwidthBurst 3 MBytes
    -   ContactInfo xxx <xxx@xxx.xxx>
    -   Sandbox 1
    -   Log notice file /var/log/tor<sub>notices.log</sub>
    -   Log warn file /var/log/tor<sub>warn.log</sub>
    -   Log debug file /var/log/tor<sub>debug.log</sub>

2.  tor bridge - gentoo

    1.  echo "net-vpn/tor caps lzma scrypt seccomp server tor-hardening verify-sig zstd" > /etc/portage/package.use/tor
    2.  emerge &#x2013;ask tor net-proxy/obfs4proxy
    3.  config:
        -   RunAsDaemon 1
        -   SOCKSPort localhost:9050
        -   BridgeRelay 1
        -   ExitRelay 0
        -   ORPort 0.0.0.0:xxx
        -   Sandbox 0 # not compatible with obfs4
        -   ClientTransportPlugin obfs4 exec /usr/bin/obfs4proxy
        -   ClientTransportPlugin obfs3 exec /usr/bin/obfs4proxy

3.  tor bridge client

    1.  echo "net-vpn/tor caps lzma scrypt seccomp server tor-hardening verify-sig zstd" > /etc/portage/package.use/tor
    2.  emerge &#x2013;ask tor net-proxy/obfs4proxy
    3.  get brideges: <https://bridges.torproject.org/>
    4.  config:
        -   UseBridges 1
        -   ClientTransportPlugin obfs4 exec /usr/bin/obfs4proxy
        -   ClientTransportPlugin obfs3 exec /usr/bin/obfs4proxy
        -   Sandbox 0 # not compatible with obfs4
        -   ShutdownWaitLength 5 seconds
        -   bridge obfs4 xxx.xxx.xxx.xxx:xxxx xxxxxxxxx cert=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx iat-mode=0

4.  ControlPort

    -   tor &#x2013;hash-password password
    -   /etc/tor/torrc:- HashedControlPassword hashed<sub>password</sub>
    -   (echo authenticate '"password"'; echo signal newnym; echo quit) | nc localhost 9051


<a id="org9d9dc61"></a>

### firefox config

network.proxy.socks<sub>remote</sub><sub>dns</sub>    true
network.dns.disablePrefetch       true
network.dns.disableIPv6           true
javascript.enabled false

and all fingerprints disabled

-   media.peerconnection.enabled    false


<a id="orgfe5b581"></a>

### route tor through tor

NON<sub>TOR</sub>="192.168.1.0/24 192.168.0.0/24"
		TOR<sub>UID</sub>=$( id -ur debian-tor )
		TRANS<sub>PORT</sub>="9040"
		iptables -F
		iptables -t nat -F
		iptables -t nat -A OUTPUT -m owner &#x2013;uid-owner $TOR<sub>UID</sub> -j RETURN
		iptables -t nat -A OUTPUT -p udp &#x2013;dport 53 -j REDIRECT &#x2013;to-ports 5353
		for NET in $NON<sub>TOR</sub> 127.0.0.0/9 127.128.0.0/10; do
			iptables -t nat -A OUTPUT -d $NET -j RETURN
		done

iptables -t nat -A OUTPUT -p tcp &#x2013;syn -j REDIRECT &#x2013;to-ports $TRANS<sub>PORT</sub>
iptables -A OUTPUT -m state &#x2013;state ESTABLISHED,RELATED -j ACCEPT

for NET in $NON<sub>TOR</sub> 127.0.0.0/8; do
	iptables -A OUTPUT -d $NET -j ACCEPT
done
iptables -A OUTPUT -m owner &#x2013;uid-owner $TOR<sub>UID</sub> -j ACCEPT
iptables -A OUTPUT -j REJECT


<a id="org60b3f2a"></a>

### theory

consist of

-   onion routers

Tor relies on a network of volunteer-operated relays and a set of central directory authorities.

cons:

-   Tor’s circuit moderation is bandwidth-weighted, you are much more likely to use high-bandwidth nodes than low-bandwidth ones, meaning that a large percentage of Tor’s 7000+ nodes are underutilised due to having insufficient bandwidth.


<a id="org05039bc"></a>

### dangers

>tor is safe - sure, but it won't last for long if more than 50% of nodes are run by feds, and
remember feds which are controlled by zionists have a lot of money, a lot to rent out entire aws
region domain to host tor nodes and catch you red handed


<a id="org796dc73"></a>

### Tor vulnerabilities

**A** access to phisical network and exit-node.
or middle nodes and exit-node
if ISP has exit-node.
correlate attack
Protection
VPN to TOR + generation of non-Tor traffic.
**B** Bittorrent send UDP without TOR.
Block all UDP packets. TOR only provides a TCP connections.


<a id="org51adaca"></a>

### Verification

<https://cdimage.debian.org/cdimage/weekly-builds/amd64/iso-cd/debian-testing-amd64-xfce-CD-1.iso>
gpg &#x2013;keyserver pool.sks-keyservers.net &#x2013;recv-keys 0x4E2C6E8793298290

gpg &#x2013;fingerprint 0x4E2C6E8793298290

You should see:

pub   4096R/93298290 2014-12-15
      Key fingerprint = EF6E 286D DA85 EA2A 4BA7  DE68 4E2C 6E87 9329 8290
uid                  Tor Browser Developers (signing key)
sub   4096R/F65C2036 2014-12-15
sub   4096R/D40814E0 2014-12-15
sub   4096R/C3C07136 2016-08-24

gpg &#x2013;verify tor-browser-linux64-8.0.1<sub>en</sub>-US.tar.xz.asc

The output should say "Good signature":

gpg: Signature made Tue 24 Jan 2015 09:29:09 AM CET using RSA key ID D40814E0
gpg: Good signature from "Tor Browser Developers (signing key) "
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: EF6E 286D DA85 EA2A 4BA7  DE68 4E2C 6E87 9329 8290

Currently valid subkey fingerprints are:

1107 75B5 D101 FB36 BC6C  911B EB77 4491 D9FF 06E2


<a id="orgf0f04ed"></a>

### search engines

<http://darkzzx4avcsuofgfez5zq75cqc4mprjvfqywo45dfcaxrwqg6qrlfid.onion/>
LeafWiki also seems to be trustworthy by the amount of hentai search queries in it's Comics category:
<http://lljcwddkoyjq3xxtchl7a4i3ig6wqrg7nfxuzbzj4k4tbnb6pnzq7kid.onion/index.php/Main_Page>
If it lists nanochan, it's probably legit. (This is how you found us on some other link list, right?)

Search engines you asked for, use on your own risk:
Ahmia - <http://juhanurmihxlp77nkq76byazcldy2hlmovfu2epvl5ankdibsot4csyd.onion/>
Phobos - <http://phobosxilamwcg75xt22id7aywkzol6q6rfl2flipcqoc4e4ahima5id.onion/>
Abiko - <http://abikoifawyrftqivkhfxiwdjcdzybumpqrbowtudtwhrhpnykfonyzid.onion/>
TORCH - <http://torchdeedp3i2jigzjdmfpn5ttjhthh5wbmda2rr3jvqjg5p77c54dqd.onion>
(you can immediately see it's redeeming quality by abundance of colorful banners offering you all sorts of nice things)
Another (?) Torch - <http://xmh57jrknzkhv6y3ls3ubitzfqnkrwxhopf5aygthi7d6rplyvk3noyd.onion/cgi-bin/omega/omega>
Haystak - <http://haystak5njsmn2hqkewecpaxetahtwhsbsa64jom2k22z5afxhnpxfid.onion/>
Onionland - <http://3bbad7fauom4d6sgppalyqddsqbf5u5p56b5k5uk2zxsy3d6ey2jobad.onion/>


<a id="orgbfa579e"></a>

### proxies

1.  torsocks

emerge &#x2013;ask net-proxy/torsocks

-   $ torsocks application
-   DNS handled
-   rejects any traffic other than TCP
-   WRNING It uses the LD<sub>PRELOAD</sub> mechanism (man ld.so.8) which means that if the application is not using the
    libc or for instance uses raw syscalls, torsocks will be useless and the traffic will not go through Tor.

-   curl &#x2013;socks5-hostname 127.0.0.1:9050 onion

redirect ALL non-tor outgoing trafic to a Tor transparent proxy:

-   iptables -t nat -A OUTPUT -p TCP -m owner ! &#x2013;uid-owner tor -j DNAT &#x2013;to-destination 127.0.0.1:9040


<a id="orgdfb3f9d"></a>

### fstab logging to tmpfs

-   tmpfs  /var/logtor  tmpfs uid=43,rw,nosuid,noatime,nodev,noexec,size=20M,mode=1705 0 0
-   Log notice file /var/logtor/tor<sub>notices.log</sub>


<a id="orga74792a"></a>

### Debian update tor from official repository

    CODENAME=$(lsb_release -cs)
    cat <<EOF > /etc/apt/sources.list.d/tor.list
       deb     [signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org $CODENAME main
       deb-src [signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org $CODENAME main
    EOF
    wget -qO- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --dearmor | sudo tee /usr/share/keyrings/tor-archive-keyring.gpg >/dev/null
    sudo apt update && sudo apt install tor deb.torproject.org-keyring -y


<a id="org6eb026a"></a>

### popular

<https://duckduckgogg42xjoc72x3sjasowoarfbgcmvfimaftt6twagswzczad.onion/>


<a id="org8b16dea"></a>

### own hidden service

1.  torrc

    running a Tor Onion Service does not result in your IP address being publicly listed anywhere, nor does your
     service relay other Tor traffic.
    
    1.  apache or nginx at localhost:80
    2.  torrc:
        -   HiddenServiceDir *var/lib/tor/my<sub>website</sub>*
        -   HiddenServicePort 80 127.0.0.1:80
        -   or:
        -   HiddenServiceDir *var/lib/tor/my-website*
        -   HiddenServicePort 80 unix:/var/run/tor-my-website.sock
    3.  mkdir <HiddenServiceDir>
    4.  chmod go-a <HiddenServiceDir>

2.  nginx

        server {
                listen unix:/var/run/tor-my-website.sock;
                server_name <your-onion-address>.onion;
                access_log /var/log/nginx/my-website.log;
                index index.html;
                root /path/to/htdocs;
        }

3.  reverse proxy with HTTPS

    <https://tinyproxy.github.io/>
    
    -   dont allow HTTPS for reverse
    
    apache option ProxyPassReverse
    
    nginx
    
    -   <https://www.digitalocean.com/community/tutorials/how-to-configure-nginx-with-ssl-as-a-reverse-proxy-for-jenkins>
    -   security <https://www.cyberciti.biz/tips/linux-unix-bsd-nginx-webserver-security.html>
    
    net-proxy/mitmproxy
    
    <https://packages.gentoo.org/packages/net-proxy/mitmproxy>

4.  generate address

    var/lib/tor/hidden<sub>service</sub>/ -
    
    -   hostname — your onion address, share it with your friends.
    -   private<sub>key</sub> — your private key, don’t share it with anyone.
    
    <https://medium.com/@yashschandra/practical-things-how-to-generate-pseudorandom-onion-addresses-41153a1a753a>

5.  links

    <https://community.torproject.org/onion-services/setup/>


<a id="org07c9b32"></a>

### email over tor

<https://github.com/ehloonion/onionmx>
<https://community.torproject.org/onion-services/talk/>


<a id="org8a60602"></a>

### countries

Russia military aliance: Armenia, Belarus, Kazakhstan, Kyrgyzstan, Russia, and Tajikistan.

-   Russia - {ru}
-   Armenia - {am}
-   Belarus - {by}
-   Kazakhstan - {kz}
-   Kyrgyzstan - {kg}
-   Tajikistan - {tj}

The Five Eyes – which groups Britain, the United States, Canada, Australia and New Zealand

-   United States - {us} and {um}
-   Canada - {ca}
-   United Kingdom - {gb} and {uk}
-   Australia - {au}
-   New Zealand - {nz}

torrc - Country codes are case-insensitive, {??} - country can’t be identified

-   ExcludeNodes - nodes to avoid when building a circuit
-   ExcludeExitNodes -
-   NodeFamily - never use any two of them in the same circuit - can be used multiple times
-   PathsNeededToBuildCircuits - [0.25 and 0.95], default 0.6 too low = less anonymous, too high = prevent bootstrapping
-   GeoIPExcludeUnknown 0/1
-   StrictNodes 0/1 - Tor will treat solely the **ExcludeNodes** option as a requirement to follow for all the
    circuits you generate, even if doing so will break functionality for you.

links

-   <https://en.wikipedia.org/wiki/ISO_3166-1>


<a id="org57d1731"></a>

### snowflake

    UseBridges 1
    ClientTransportPlugin snowflake exec /opt/snowflake/client/client
    Bridge snowflake 192.0.2.3:80 2B280B23E1107BB62ABFC40DDCC8824814F80A72 fingerprint=2B280B23E1107BB62ABFC40DDCC8824814F80A72 url=https://snowflake-broker.azureedge.net/ front=ajax.aspnetcdn.com ice=stun:stun.voip.blackberry.com:3478,stun:stun.altar.com.pl:3478,stun:stun.antisip.com:3478,stun:stun.bluesip.net:3478,stun:stun.dus.net:3478,stun:stun.epygi.com:3478,stun:stun.sonetel.com:3478,stun:stun.sonetel.net:3478,stun:stun.stunprotocol.org:3478,stun:stun.uls.co.za:3478,stun:stun.voipgate.com:3478,stun:stun.voys.nl:3478

Or

    UseBridges 1
    ClientTransportPlugin snowflake exec /usr/local/bin/snowflake-client -log /var/log/tor/snowflake.log -url https://snowflake-broker.torproject.net.global.prod.fastly.net/ -front foursquare.com -ice stun:stun.l.google.com:19302,stun:stun.antisip.com:3478,stun:stun.bluesip.net:3478,stun:stun.dus.net:3478,stun:stun.epygi.com:3478,stun:stun.sonetel.com:3478,stun:stun.uls.co.za:3478,stun:stun.voipgate.com:3478,stun:stun.voys.nl:3478 -log /var/log/tor/snowflake-client.log
    Bridge snowflake 192.0.2.3:80 2B280B23E1107BB62ABFC40DDCC8824814F80A72
    Bridge snowflake 192.0.2.4:80 8838024498816A039FCBBAB14E6F40A0843051FA


<a id="orgbfe86f6"></a>

### obfs4 - lyrebird - Pluggable Transport

Philipp Winter's ScrambleSuit - Python - <https://github.com/NullHypothesis/scramblesuit>

-   Protection against active probing attacks by requiring a shared secret between the client and the
    server. This secret is communicated out-of-band via Tor's BridgeDB.
-   Rudimentary defence against traffic analysis attacks by altering flow features.
-   payload is computationally indistinguishable from randomness

Lyrebird - Go - GPLv3 - <https://gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/lyrebird>

-   The handshake always does a full key exchange (no such thing as a Session Ticket Handshake).
-   The link layer encryption uses NaCl secret boxes (Poly1305/XSalsa20).

    VERSION_NUMBER=1.19.10
    wget https://golang.org/dl/go$VERSION_NUMBER.linux-amd64.tar.gz
    sudo tar -C /usr/local -xzf go$VERSION_NUMBER.linux-amd64.tar.gz
    echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
    echo "export GOPATH=~/.go" >> ~/.profile
    source ~/.profile
    go version
    
    wget https://gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/lyrebird/-/archive/lyrebird-0.1.0/lyrebird-lyrebird-0.1.0.tar.gz
    apt install golang
    
    
    tar xpf  lyrebird-lyrebird-0.1.0.tar.gz --xattrs-include=' *.*' --numeric-owner
    go version
    cd lyrebird-lyrebird-0.1.0
    go list -m -u all
    go build ./cmd/lyrebird
    cp lyrebird /usr/local/bin/


<a id="org1c84a62"></a>

### webtunnel - mimic encrypted web traffic (HTTPS)

-   <https://blog.torproject.org/introducing-webtunnel-evading-censorship-by-hiding-in-plain-sight/>
-   <https://metrics.torproject.org/rs.html#search/transport:webtunnel?fields=transports>

src

-   <https://gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/webtunnel>
-   ?? <https://github.com/my-devices/sdk/tree/main/WebTunnel>
-   guide install and configure <https://community.torproject.org/fa/relay/setup/webtunnel/source/>

steps:

1.  sudo apt install golang
2.  git clone <https://gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/webtunnel>

3.  cd webtunnel/main/server
4.  go build
5.  sudo cp server /usr/local/bin/webtunnel-server
6.  sudo cp client /usr/local/bin/webtunnel-client

Obfs4 vs Webtunnel

-   Obfs4 traffic, being neither a match for any known allowed protocol nor a text protocol, would be rejected. In
    contrast, WebTunnel traffic resembling HTTPS traffic, a permitted protocol, will pass.

1.  client config

        UseBridges 1
        ClientTransportPlugin webtunnel exec /usr/bin/webtunnel-client
        Bridge webtunnel <IP>:<PORT> <FINGERPRINT> url=<URL> ver=0.0.1

2.  server config

        BridgeRelay 1
        ORPort 127.0.0.1:auto
        AssumeReachable 1
        ServerTransportPlugin webtunnel exec /usr/local/bin/webtunnel
        ServerTransportListenAddr webtunnel 127.0.0.1:15000
        ServerTransportOptions webtunnel url=https://yourdomain/path
        ExtORPort auto
        اطلاعات مخاطب <address@email.com>
        Nickname WebTunnelTest
        SocksPort 0
    
        sudo -u debian-tor tor -f /etc/tor/torrc # to check config
        systemctl enable --now tor.service


<a id="org8596790"></a>

### webrtc proxies

<https://github.com/jsmouret/grpc-over-webrtc>
<https://github.com/duality-solutions/web-bridge>
<https://github.com/rtctunnel/rtctunnel>
<https://github.com/keroserene/snowflake>
<https://github.com/decentraland/webrtc-broker>
<https://github.com/ailabstw/webrtc-socket-proxy>
<https://github.com/muka/peerjs-go>

<https://github.com/libp2p/go-libp2p-http>


<a id="orgec007c8"></a>

### webrtc-socket-proxy - working

<https://github.com/centrifugal/centrifugom>
<https://github.com/ailabstw/webrtc-socket-proxy>

install on remote:

    wget https://go.dev/dl/go1.22.1.linux-amd64.tar.gz
    export PATH=$PATH:/usr/local/go/bin
    go version # print
    git clone --depth=1 https://github.com/rtctunnel/rtctunnel
    cd rtctunnel/
    go build
    ./rtctunnel init
    ./rtctunnel info


<a id="orgb593fbd"></a>

### Snowflake - Pluggable Transport using WebRTC

-   <https://gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/snowflake/-/wikis/Technical%20Overview>
-   <https://github.com/keroserene/snowflake>
-   <https://snowflake.torproject.org/>
-   <https://community.torproject.org/relay/setup/snowflake/standalone/>
-   <https://gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/snowflake>
-   <https://gpo.zugaina.org/net-proxy/snowflake>
-   count per country <https://snowflake-broker.torproject.net/metrics>
-   install guide <https://gitlab.torproject.org/tpo/anti-censorship/team/-/wikis/Survival-Guides/Snowflake-Broker-Installation-Guide>
-   wiki <https://gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/snowflake/-/wikis/home>
-   run from sources ClientTransportPlugin snowflake exec *usr/bin/or-wherever-it-gets-installed/snowflake-client -url &#x2026;.etchttps://community.torproject.org/relay/setup/snowflake/standalone/source*
-   <https://en.wikipedia.org/wiki/Domain_fronting>
-   technical overview <https://gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/snowflake/-/wikis/Technical%20Overview>
-   intergration with tor browser <https://gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/snowflake/-/wikis/home#IntegrationwithTorBrowser>
-   broker installation <https://gitlab.torproject.org/tpo/anti-censorship/team/-/wikis/Survival-Guides/Snowflake-Broker-Installation-Guide>
-   WebRTC fingerprintability


<a id="orgeaf2ea1"></a>

### theory

-   snowflake client -
-   snowflake proxy - WebRTC proxy.It conveys data between snowflake clients and some destination — for Tor,
    this would be a Tor Relay
    -   Communication to the Broker is over HTTPS / Domain Fronting.
    -   WebRTC serves as the transport crossing the filter boundary
    -   communication from the proxy to the destination is currently via **websocket**. - server

In Snowflake, the client connects to the proxy using WebRTC, and the proxy connects to the server (this
 program) using WebSocket.


<a id="org4b37ebe"></a>

### get bridges by email

I send "get bridges" to bridges@torproject.org.

-   get transport [TYPE]   Request a Pluggable Transport by TYPE.
-   get help               Displays this message.
-   get key                Get a copy of BridgeDB's public GnuPG key.
-   get ipv6               Request IPv6 bridges.


<a id="org25c051d"></a>

### links

-   <https://github.com/torproject/tor/blob/main/src/config/torrc.sample.in>
-   The Internet censorship bibliography. <https://censorbib.nymity.ch/>


<a id="org68e2e85"></a>

### installation Debian

-   apt install golang
-   apt install git
-   git clone &#x2013;depth=1 <https://git.torproject.org/pluggable-transports/snowflake.git>
-   git clone &#x2013;depth=1 <https://github.com/keroserene/snowflake.git>
-   cd snowflake/proxy
-   go build


<a id="org909df53"></a>

### install gentoo

-   <https://gitweb.gentoo.org/repo/proj/guru.git>
-   <https://gitweb.gentoo.org/repo/proj/guru.git/tree/net-proxy/snowflake>
-   eselect repository enable guru


<a id="org682d481"></a>

### client configuration examples

    ClientTransportPlugin snowflake exec /usr/bin/or-wherever-it-gets-installed/snowflake-client -url ....etc
    
    
    On newer versions, after installing tor, install the snowflake-client
    - sudo apt install snowflake-client
    
    
    UseBridges 1, ClientTransportPlugin snowflake exec /usr/bin/snowflake-client, as well as Bridge snowflake 0.0.3.0:1 2B280B23E1107BB62ABFC40DDCC8824814F80A72 to torrc.
    sudo service tor restart
    
    
    
    UseBridges 1
    
    ClientTransportPlugin snowflake exec /opt/snowflake/client/client
    
    Bridge snowflake 192.0.2.3:1 url=https://snowflake-broker.torproject.net.global.prod.fastly.net/ front=cdn.sstatic.net ice=stun:stun.voip.blackberry.com:3478,stun:stun.altar.com.pl:3478,stun:stun.antisip.com:3478,stun:stun.bluesip.net:3478,stun:stun.dus.net:3478,stun:stun.epygi.com:3478,stun:stun.sonetel.com:3478,stun:stun.sonetel.net:3478,stun:stun.stunprotocol.org:3478,stun:stun.uls.co.za:3478,stun:stun.voipgate.com:3478,stun:stun.voys.nl:3478
    
    
    
    UseBridges 1
    
    ClientTransportPlugin snowflake exec /usr/local/bin/snowflake-client -log /var/log/tor/snowflake.log -url https://snowflake-broker.torproject.net.global.prod.fastly.net/ -front foursquare.com -ice stun:stun.l.google.com:19302,stun:stun.antisip.com:3478,stun:stun.bluesip.net:3478,stun:stun.dus.net:3478,stun:stun.epygi.com:3478,stun:stun.sonetel.com:3478,stun:stun.uls.co.za:3478,stun:stun.voipgate.com:3478,stun:stun.voys.nl:3478 -log /var/log/tor/snowflake-client.log
    
    Bridge snowflake 192.0.2.3:80 2B280B23E1107BB62ABFC40DDCC8824814F80A72
    Bridge snowflake 192.0.2.4:80 8838024498816A039FCBBAB14E6F40A0843051FA


<a id="org01aa019"></a>

### ssh hidden service configuration example

    apt install cron
    systemctl enable cron
    systemctl start cron
    crontab -e
    0 0 * * * systemctl restart tor
    systemctl restart cron

    RunAsDaemon 1
    
    ShutdownWaitLength 5 seconds
    
    HiddenServiceDir /var/lib/tor/hidden_service2/
    HiddenServicePort 443 127.0.0.1:22
    
    Nickname none
    
    RelayBandwidthRate 1100 KB  # Throttle traffic to 100KB/s (800Kbps)
    RelayBandwidthBurst 5200 KB # But allow bursts up to 200KB/s (1600Kbps)
    
    ContactInfo Random no@none.com
    
    Log notice file /var/log/tor/tor_notices.log
    Log warn file /var/log/tor/tor_warn.log
    # Log debug file /var/log/tor_debug.log
    
    DNSPort localhost:53
    
    UseBridges 1
    
    ClientTransportPlugin snowflake exec /usr/local/bin/client -log /var/log/tor/snowflake.log \
    -url https://snowflake-broker.torproject.net.global.prod.fastly.net/ \
    -front cdn.sstatic.net \
    -ice stun:stun.voip.blackberry.com:3478,stun:stun.altar.com.pl:3478,stun:stun.antisip.com:3478,stun:stun.bluesip.net:3478,stun:stun\
    .dus.net:3478,stun:stun.epygi.com:3478,stun:stun.sonetel.com:3478,stun:stun.sonetel.net:3478,stun:stun.stunprotocol.org:3478,stun:s\
    tun.uls.co.za:3478,stun:stun.voipgate.com:3478,stun:stun.voys.nl:3478
    
    Bridge snowflake 192.0.2.3:80 2B280B23E1107BB62ABFC40DDCC8824814F80A72 fingerprint=2B280B23E1107BB62ABFC40DDCC8824814F80A72 url=https://snowflake-broker.azureedge.net/ front=ajax.aspnetcdn.com ice=stun:stun.voip.blackberry.com:3478,stun:stun.altar.com.pl:3478,stun:stun.antisip.com:3478,stun:stun.bluesip.net:3478,stun:stun.dus.net:3478,stun:stun.epygi.com:3478,stun:stun.sonetel.com:3478,stun:stun.sonetel.net:3478,stun:stun.stunprotocol.org:3478,stun:stun.uls.co.za:3478,stun:stun.voipgate.com:3478,stun:stun.voys.nl:3478


<a id="org69fd206"></a>

### bad sites

мега или кракен.


<a id="org2846972"></a>

## tunnel techniques

-   <https://packages.gentoo.org/packages/net-misc/stunnel>

debian server:

-   apt install stunnel
-   openssl req -new -x509 -days 99999 -nodes -out stunnel.pem -keyout stunnel.pem
-   mv stunnel.pem *etc/stunnel*
-   cp /usr/share/doc/stunnel4/examples/stunnel.conf-sample /etc/stunnel/stunnel.conf
-   mkdir /var/run/stunnel4
-   chown stunnel4:stunnel4 /var/run/stunnel4
-   stunnel # to test

    apt install stunnel # stunnel4
    openssl req -new -x509 -days 99999 -nodes -out stunnel.pem -keyout stunnel.pem # Enter
    cp /usr/share/doc/stunnel4/examples/stunnel.conf-sample /etc/stunnel/stunnel.conf
    mkdir -p /etc/tmpfiles.d # already exist
    echo "d /var/run/stunnel4 0755 stunnel4 stunnel4 -" > /etc/tmpfiles.d/stunnel4.conf
    # chown stunnel4:stunnel4 /var/run/stunnel4 # required?

client:

-   emerge &#x2013;ask stunnel
-   stunnel # to test
-   sudo -u ssh ssh -D 1082 -C -i *home/ssh*.ssh/id<sub>rsa</sub> -o 'VerifyHostKeyDNS no' -o 'CheckHostIP no' -p 2443 root@127.0.0.1


<a id="org4998246"></a>

### server config

    setuid = stunnel4
    setgid = stunnel4
    foreground = no
    ; output = /tmp/stunnel.log
    options = SINGLE_ECDH_USE
    options = SINGLE_DH_USE
    client=no
    cert = /etc/stunnel/stunnel.pem
    sslVersion = TLSv1.3
    options = NO_SSLv2
    options = NO_SSLv3
    pid = /var/run/stunnel4/stunnel.pid
    socket = l:TCP_NODELAY=1
    socket = r:TCP_NODELAY=1
    [sshd]
    accept = 0.0.0.0:62010 # 21212
    connect = 127.0.0.1:22
    TIMEOUTclose = 0


<a id="org6c7627b"></a>

### client config

    setuid = stunnel
    setgid = stunnel
    pid = /run/stunnel/stunnel.pid
    socket = l:TCP_NODELAY=1
    socket = r:TCP_NODELAY=1
    client = yes
    
    output	= /tmp/stunnel.log
    cert 	= /etc/stunnel/stunnel.pem
    key	= /etc/stunnel/stunnel.pem
    pid 	= /var/run/stunnel/stunnel.pid
    sslVersion = TLSv1.3
    options = NO_SSLv2
    options = NO_SSLv3
    
    [ssh]
    accept=127.0.0.1:2443
    connect=217.196.104.210:21212


<a id="orga05aee9"></a>

### systemd

    systemclt restart stunnel
    systemclt status stunnel
    systemclt enable stunnel

/etc/systemd/system/stunnel.service

    [Unit]
    Description=SSL tunnel for network daemons
    Documentation=man:stunnel https://www.stunnel.org/docs.html
    DefaultDependencies=no
    After=network.target
    After=syslog.target
    
    [Install]
    WantedBy=multi-user.target
    Alias=stunnel.target
    
    [Service]
    Type=forking
    EnvironmentFile=-/etc/sysconfig/stunnel.conf
    ExecStart=/usr/bin/stunnel /etc/stunnel/stunnel.conf
    #LimitNOFILE=infinity            <-- uncomment to increase maximum number of client connections


<a id="orgcba1af1"></a>

### block echo

emacs /etc/sysctl.conf

    cat <<'EOF' > /etc/sysctl.conf
    net.ipv4.icmp_echo_ignore_all=1
    net.ipv4.conf.all.accept_redirects = 0
    net.ipv6.conf.all.accept_redirects = 0
    net.ipv4.conf.all.accept_source_route = 0
    net.ipv6.conf.all.accept_source_route = 0
    EOF
    sysctl -f /etc/sysctl.conf


<a id="orga4b34b9"></a>

### nftables

    nft -f /etc/nftables.conf

    #!/usr/sbin/nft -f
    
    # Flush the ruleset
    flush ruleset
    
    # Define the table and chain
    table inet filter {
        chain input {
            type filter hook input priority 0;
    
            iif lo accept;
            iif != lo ip daddr 127.0.0.1/8 counter drop comment ""
            iif != lo ip6 daddr ::1/8 counter drop comment ""
    
            # Drop invalid packets
            ct state invalid drop
    
            # Accept established and related connections
            ct state established,related accept
    
            # Allow incoming connections to TCP port 666
            tcp dport 6010 accept
            tcp dport 22 iif lo accept
    
            ip saddr 127.0.0.1 ip daddr 127.0.0.1 accept
            ip6 saddr ::1 ip6 daddr ::1 accept
    
            # Drop all other incoming traffic
            drop
        }
    
        chain forward {
            type filter hook forward priority 0;
            drop
        }
    
        chain output {
            type filter hook output priority 0;
            accept
        }
    }

    cat <<'EOF' > /etc/systemd/system/nftables.service
    [Unit]
    Description=nftables firewall
    Before=network.target
    
    [Service]
    RemainAfterExit=yes
    StandardInput=null
    ProtectSystem=full
    ProtectHome=true
    ExecStart=/sbin/nft -f /etc/sysconfig/nftables.conf
    ExecReload=/sbin/nft 'flush ruleset; include "/etc/sysconfig/nftables.conf";'
    ExecStop=/sbin/nft flush ruleset
    Restart=always
    
    [Install]
    WantedBy=multi-user.target
    EOF
    systemctl daemon-reload
    systemctl restart nftables
    systemctl status nftables
    systemctl enable nftables


<a id="orga67e6b1"></a>

### links

-   <https://gist.github.com/bwann/82ed679e94972666808d97587d276677>
-   <https://charlesreid1.com/wiki/Stunnel/SSH>
-   stunnel performance with different configurations <https://www.stunnel.org/perf.html>


<a id="org4404d4f"></a>

## TODO i2p

-   i2p doesn't store other people stuff on your hdd


<a id="org228ba4e"></a>

## TODO freenet

-   store other people stuff on your hdd


<a id="org078115e"></a>

## TODO zeronet

-   store other people stuff on your hdd


<a id="org906db03"></a>

## TODO lokinet

-   lokinet.org
-   uses the Oxen Service Node network


<a id="orged5b74a"></a>

### install binary

install debian <https://docs.oxen.io/oxen-docs/products-built-on-oxen/lokinet/guides/installing-on-linux-cli>

<https://github.com/oxen-io/oxen-docs-gitbook/blob/master/products-built-on-oxen/lokinet/guides/installing-on-linux-cli.md>


<a id="org540841b"></a>

### links

-   <https://privsec.dev/posts/qubes/using-lokinet-on-qubes-os/>
-   <https://lokinet.org/>
-   <https://github.com/loki-project/loki-network>
-   <http://pijdty5otm38tdex6kkh51dkbkegf31dqgryryz3s3tys8wdegxo.loki/>
-   <http://s5swbfcf4joom9tzf8w7ss5fptywwpnnfop3pxcf5ebjnz8ioksy.loki/>


<a id="org0006593"></a>

## TODO <https://yggdrasil-network.github.io/>


<a id="orgf60f7b3"></a>

## TODO ipfs

-   store other people stuff on your hdd


<a id="org3354490"></a>

## <https://urbit.org/>

Urbit OS and Urbit ID - MIT licensed

-   Urbit OS - a program, software stack: a VM, programming language and kernel designed to run software for an
    individual.
-   Urbit ID is an identity and authentication system specifically designed to work with Urbit OS. When you boot
    or log in to Urbit OS, you use your Urbit ID. Name (like ~ravmel-ropdyl) that’s a username, network address
    and crypto wallet all in one.  built on the Ethereum blockchain ("Azimuth"),


<a id="org469153e"></a>

### terms

-   urbit -  Urbit OS node - private to you and entirely under your control


<a id="orgab4b56f"></a>

## Rus <https://github.com/number571/go-peer>


<a id="org0f78444"></a>

## decentralazied storage

1.  know

    -   Git
    -   BitTorrent
    -   Direct Connect
    -   eDonkey
    -   Gnutella
    -   Bitcoin
    -   Perfect Dark
    -   Freenet
    -   Soulseek
    -   GNUnet
    -   <https://en.wikipedia.org/wiki/List_of_P2P_protocols>

2.  problems:

    -   security
    -   tracking
    -   flood attack
    -   14-18% of all executable programs available for download contained malware
    -   47% of all zero-day malware uses BitTorrent
    -   file search

3.  Interplanetary File System (IPFS)

    -   users - hold a portion of the overall data
    -   if Alice and Bob publish a block of data with the same hash, the peers downloading the content from Alice
        will exchange data with the ones downloading it from Bob
    -   IPFS aims to replace WEB using gateways which are accessible with HTTP.
    -   content-based routing instead of address-based
    -   cannot restrict except of encryption
    -   publish to share
    -   Data is stored in chunks of 256 KB, called IPFS objects.
    -   Garbage collection will periodically remove cached IPFS objects. If you want to permanently store a file you
        can pin it to your node.
    -   

4.  DHT search

    -   BTDigg - in TOR or <https://btdig.com> btdigggink2pdqzqrik3blmqemsbntpzwxottujilcdjfz56jumzfsyd.onion
    -   <https://thepiratebay.org>
    -   Bitmagnet - self-hosted BitTorrent indexer, DHT crawler, content classifier, and torrent search engine
    -   Jackett or Prowlarr

5.  torrents

    -   <https://anidex.info/>
    -   <https://thepiratebay.org>
    -   rutracker.org
    -   <https://www.limetorrents.lol/browse-torrents/Games-Mac/>


<a id="orgad730de"></a>

## links

theory <https://defanor.uberspace.net/notes/distributed-systems.xhtml>


<a id="orgb7d3da0"></a>

# search engines


<a id="org6b8d78a"></a>

## review

startpage.com

-   no javascript not supported
-   bad no image search without javascript

<https://gibiru.com/>

-   javascript required
-   no clear links

qmamu.com

-   javascript required
-   no clear links

<https://www.searchencrypt.com/>

-   javascript required
-   no clear links

<https://www.onesearch.com/>

-   blocked

<https://boardreader.com/>

-   tor blocked


<a id="org8376d31"></a>

## duckduckgo

-   ip
-   dns records xakep.ru
-   is xakep.ru down # ping
-   @xakepru # info about tweeter
-   validate zobnin@gmail.com # validate email
-   shorten <https://xakep.ru/2017/02/23/bitlocker-hacking/> # get short link
-   expand <https://is.gd/8TIGsL>
-   qr <https://is.gd/8TIGsL> # qr-code
-   password 10 # generate password
-   random passphrase
-   base64 encode <текст>
-   md5 <текст>
-   sha <текст>
-   hash <хеш> # detect algorithn
-   python pyhub # search module in PyPI
-   jquery .ajaxsuccess # info about method of jQuery
-   regex *(?x: (w+) s (w+) )* hacker magazine # check regex
-   compute Integral Of X<sup>2</sup> Dx Solve X+2>3x # math
-   python syntax highlighter # open editor
-   site:linux.org.ru
-   android security report f:.pdf # search for specific file type
-   intitle:"iphone 8" # search only in page titles
-   intitle:"iphone 8" -android # not search
-   (apple)AND((macos)OR("os x"))
-   

html:

-   color codes
-   css colors
-   html chars
-   html dollar # get character
-   file .txt # info about file extension
-   chmod 755 # decode
-   uppercase xakep.ru
-   lowercase XAKEP.RU
-   calendar
-   countdown 10m
-   stopwatch
-   figlet xakep.ru # create ASCII banner
-   bang
    -   !so Java InterruptedException # search in Stack Overflow (!twitter), на eBay (!ebay), YouTube (!yt),
        Facebook (!facebook) and 9000 more
    -   Translation google:
        -   !gt-chinese
    -   languages: !java !python !html !js !php
    -   Gentoo: !emerge !fgentoo !gbugs !gentoopkg !gpackages !gpackages !gpo !gw !gwiki !installgentoo !pfl
        -   !gentoo !gentoowiki
    -   !man
    -   !be - blockchain block explorer
    -

<https://duckduckgo.com/bang_lite.html>


<a id="org4042734"></a>

# unicode

X11:

-   Ctrl+Shift+u followed by the Unicode hexadecimal number

emacs: C-x 8 RET

codes

-   wavehand U+1F44B
-   whitespace U+2000-2003,2007,3000
-   <https://en.wikipedia.org/wiki/Whitespace_character>


<a id="org1c0e53b"></a>

# questions

best place for passwords in linux


<a id="orge7ecc2c"></a>

# web crawler

<https://github.com/jarun/googler/blob/main/googler>
<https://packages.gentoo.org/packages/dev-python/beautifulsoup4>

<https://www.geeksforgeeks.org/python-automate-google-search-using-selenium/>

WebDriver driver = new FirefoxDriver();

driver.manage().window().maximize();
driver.manage().deleteAllCookies();
driver.manage().timeouts().pageLoadTimeout(40, TimeUnit.SECONDS);
driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
driver.get("<https://www.google.com/>");


<a id="org0d6b5ce"></a>

# obfs4 standalone

required: USE=ncat net-analyzer/nmap


<a id="orgc219e0d"></a>

## Server:

    export TOR_BROWSER_TOR_DATA_DIR=obfsproxy
    export TOR_PT_CLIENT_TRANSPORTS=obfs4
    export TOR_PT_EXIT_ON_STDIN_CLOSE=1
    export TOR_PT_MANAGED_TRANSPORT_VER=1
    export TOR_PT_STATE_LOCATION=obfsproxy
    export TOR_PT_SERVER_BINDADDR=obfs4-0.0.0.0:12345
    export TOR_PT_ORPORT=127.0.0.1:4433
    
    env \
    TOR_PT_MANAGED_TRANSPORT_VER="1" \
    TOR_PT_STATE_LOCATION="obfs4proxy" \
    TOR_PT_SERVER_TRANSPORTS="obfs4" \
    TOR_PT_SERVER_BINDADDR="obfs4-0.0.0.0:8888" \
    TOR_PT_ORPORT="127.0.0.1:9067" \
    obfs4proxy -enableLogging -logLevel DEBUG

to watch serverlogs :

    watch tail obfsproxy/obfs4proxy.log

cert:

    cat /var/lib/tor/pt_state/obfs4_bridgeline.txt


<a id="org9cdfb18"></a>

## Client:

    export TOR_PT_CLIENT_TRANSPORTS=obfs4
    # <proxy_type>://[<user_name>[:<password>][@]<ip>:<port>
    export TOR_PT_PROXY=socks5://127.0.0.1:45357
    
    env \
    TOR_PT_MANAGED_TRANSPORT_VER="1" \
    TOR_PT_STATE_LOCATION="obfsproxy" \
    TOR_PT_CLIENT_TRANSPORTS="obfs4" \
    obfs4proxy -enableLogging -logLevel DEBUG
    
    # to test: (server ip, port from client, cert from server, and TOR_PT_SERVER_BINDADDR
    ncat --proxy "127.0.0.1:41143" --proxy-type "socks5" --proxy-auth "cert=W4/bagv6rixxspKRWDnsHb8OrGCTcOc0jOd+YWzdzqkvaSRaNlJDy931roPfopP0bIvgZQ;iat-mode=:0" 127.0.0.1 8888
    
    # to use:
    : ssh -o 'ProxyCommand ncat --proxy "127.0.0.1:41143" --proxy-type "socks5" --proxy-auth "cert=W4/bagv6rixxspKRWDnsHb8OrGCTcOc0jOd+YWzdzqkvaSRaNlJDy931roPfopP0bIvgZQ;iat-mode=:0" %h %p' -p 8888 user@127.0.0.1
    
    ssh -vv \
    -o 'ProxyCommand ncat \
     --proxy "45.87.247.254:8080" \
     --proxy-type "socks5" \
     --proxy-auth "cert=2Wu/eUx7n6SCoyTz7TkjgGx55uY+VXa7SL4DR25+plkT23jG9fG/2P0Ii9H1caBTeOveWw;iat-mode=:0" %h %p' \
    -p 9067 root@127.0.0.1

/usr/bin/obfs4proxy -enableLogging true -logLevelStr INFO


<a id="orgacea82c"></a>

## systemd service for server

/etc/systemd/system/obfsmy.service

    [Unit]
    Description=obfs4proxy Server
    
    [Service]
    EnvironmentFile=/var/lib/tor/pt_state/obfs4/obfs4.config
    ExecStart=/usr/bin/obfs4proxy -enableLogging true -logLevelStr INFO
    
    [Install]
    WantedBy=multi-user.target

/var/lib/tor/pt<sub>state</sub>/obfs4/obfs4.config

    TOR_PT_MANAGED_TRANSPORT_VER="1"
    TOR_PT_STATE_LOCATION="/var/lib/tor/pt_state/"
    TOR_PT_SERVER_TRANSPORTS="obfs4"
    TOR_PT_SERVER_BINDADDR="obfs4-0.0.0.0:443"
    TOR_PT_ORPORT="127.0.0.1:9067"

cert:

    cat /var/lib/tor/pt_state/obfs4_bridgeline.txt

log:

    watch tail  /var/lib/tor/pt_state/obfs4proxy.log

to test:

    ncat -vv --proxy "45.87.247.254:8080" --proxy-type "socks5" --proxy-auth "cert=2Wu/eUx7n6SCoyTz7TkjgGx55uY+VXa7SL4DR25+plkT23jG9fG/2P0Ii9H1caBTeOveWw;iat-mode=:0"  google.com 80


<a id="org4644f01"></a>

## full

    #!/usr/bin/env bash
    set -u # Report Non-Existent Variables
    set -e # It terminates the execution when the error occurs. (does not work with piped commands. use Set -eo pipefail)
    set -o pipefail # exit execution if one of the commands in the pipe fails.
    # set -x # write to standard error a trace for each  command
    # set -n # do not execute only check syntax
    
    # ------------- installation of lyrebird ----------
    VERSION_NUMBER=1.19.10
    wget https://golang.org/dl/go${VERSION_NUMBER}.linux-amd64.tar.gz
    sudo tar -C /usr/local -xzf go${VERSION_NUMBER}.linux-amd64.tar.gz
    echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
    echo "export GOPATH=~/.go" >> ~/.profile
    source ~/.profile
    go version
    
    LYREBIRD_VERSION=0.1.0
    wget https://gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/lyrebird/-/archive/lyrebird-${LYREBIRD_VERSION}/lyrebird-lyrebird-${LYREBIRD_VERSION}.tar.gz
    apt install golang
    
    
    tar xpf  lyrebird-lyrebird-${LYREBIRD_VERSION}.tar.gz --xattrs-include=' *.*' --numeric-owner
    go version
    cd lyrebird-lyrebird-${LYREBIRD_VERSION}
    go list -m -u all
    go build ./cmd/lyrebird
    cp lyrebird /usr/local/bin/
    cd ..
    rm -rf lyrebird-lyrebird-${LYREBIRD_VERSION}
    rm -rf lyrebird-lyrebird-${LYREBIRD_VERSION}.tar.gz
    rm -f go${VERSION_NUMBER}.linux-amd64.tar.gz
    # ------------------- obfs4 server --------------
    sudo adduser \
      --system \
      --home "/var/lib/obfs4proxy-ssh/" \
      --shell "/usr/sbin/nologin" \
      --group \
      --gecos "obfs4proxy for ssh" \
      obfs4-ssh
    
    cat <<'EOF' > /etc/systemd/system/obfsmy.service
    [Unit]
    Description=obfs4proxy Server
    
    [Service]
    User=obfs4-ssh
    EnvironmentFile=/var/lib/obfs4proxy-ssh/obfs4.config
    ExecStart=/usr/local/bin/lyrebird -enableLogging true -logLevelStr INFO
    
    [Install]
    WantedBy=multi-user.target
    EOF
    
    cat <<'EOF' > /var/lib/obfs4proxy-ssh/obfs4.config
    TOR_PT_MANAGED_TRANSPORT_VER="1"
    TOR_PT_STATE_LOCATION="/var/lib/obfs4proxy-ssh/"
    TOR_PT_SERVER_TRANSPORTS="obfs4"
    TOR_PT_SERVER_BINDADDR="obfs4-0.0.0.0:8080"
    TOR_PT_ORPORT="127.0.0.1:22"
    EOF
    
    systemctl daemon-reload
    systemctl restart obfsmy
    cat /var/lib/obfs4proxy-ssh/obfs4_bridgeline.txt


<a id="orga05daf9"></a>

## full client

    obfs4client() {
        # background process attached to file discriptor 3
        exec 3< <( env \
            TOR_PT_MANAGED_TRANSPORT_VER="1" \
            TOR_PT_STATE_LOCATION="obfsproxy" \
            TOR_PT_CLIENT_TRANSPORTS="obfs4" \
            lyrebird -enableLogging -logLevel DEBUG )
        # read first 3 lines from file descriptor 3
        hostport=$(head -n3 <&3 | grep -o "127.0.0.1:[[:digit:]]*")
        # certificate from remote obfs4 server
        cert='LEyKNDLvbQlLwAahcayJQBFkYzPEd6tWdMUBTuEDqaHjxXWPf5/2v63BKkQVEDMp4Wy2aA'
        # attach to remote server obfs4 through local obfs4 client proxy
        # sudo -u ssh killall ssh
        v="ssh -vv -o 'ProxyCommand ncat --proxy ${hostport} --proxy-type socks5 --proxy-auth \\\"cert=${cert};iat-mode=:0\\\" %h %p' -p 8080 root@10.2.1.3 ;"
        xfce4-terminal --initial-title "remote" -e "bash -c \"${v}\""
        sleep 2
        exit
    }


<a id="org337a0b1"></a>

## links

-   <https://www.sparklabs.com/support/kb/article/setting-up-an-obfuscation-server-with-obfsproxy-and-viscosity/>
-   <https://hamy.io/post/000d/how-to-hide-obfuscate-any-traffic-using-obfs4/>
-   <https://hamy.io/post/000e/how-to-hide-obfuscate-ssh-traffic-using-obfs4/>
-   <https://github.com/torproject/torspec/blob/main/pt-spec.txt>


<a id="orgd2b1494"></a>

# VPS configuration

client:

-   TOR SSH see <shell>

    #-*- eval: (outline-minor-mode 1) -*-
    # -- CONFIG --
    # ---- SWAP
    SWAP=1500MB
    # ---- TOR SSH
    
    # -- SWAP --
    fallocate -l $SWAP /swapfile
    chmod 600 /swapfile
    mkswap /swapfile
    swapon /swapfile
    cp /etc/fstab /etc/fstab.back
    echo '/swapfile none swap sw 0 0' | tee -a /etc/fstab
    cp /etc/sysctl.conf /etc/sysctl.conf.back
    echo 'vm.swappiness=10' | tee -a /etc/sysctl.conf
    sysctl -p /etc/sysctl.conf
    
    swapon --show
    # -- TOR SSH --
    # -- APT config --
    # disable recommended
    apt-config dump | grep -we Recommends -e Suggests | sed s/1/0/ | sudo tee /etc/apt/apt.conf.d/999norecommend


<a id="org7aa9c80"></a>

# markdown

to html:

    dev-python/markdown-it-py


<a id="org59269a1"></a>

# TODO mount<sub>cifs</sub>

How to Mount Windows Share on Linux


<a id="org539f2da"></a>

# suites of utils

Core Utilities

-   GNU Core Utilities (coreutils) - A collection of basic file, shell, and text manipulation utilities[2]. GNU
    Project.  GPL-3.0-or-later

System Administration and File System Utilities

-   util-linux - for Linux systems, including tools for managing block devices, filesystems, and system
    administration tasks. Linux Kernel Organization. Own licensing terms. advanced tools for system
    administration and resource management.
-   sysstat - collecting and reporting system statistics: sar, sadf, mpstat, iostat, and pidstat.

Lightweight and Embedded System Utilities

-   BusyBox - A single binary that combines many common UNIX utilities, designed for embedded and small systems[2][3].

File and Directory Navigation

-   GNU Find Utilities (findutils) -  find, locate, updatedb, and xargs for searching and manipulating files[2].

Text Processing and Shell Utilities

-   GNU Shell Utilities (shellutils) - basename, chroot, date, dirname, echo, and others for shell-related tasks[2].
-   GNU Text Utilities (textutils) - cat, cksum, comm, csplit, and others for text manipulation[2].

Network and System Information Utilities

-   procps - free, kill, ps, top, uptime, and others for managing processes and system information[2].
-   iproute2 - managing network interfaces, routing, and traffic control: ip, ss, nstat, and lnstat.
-   net-tools (old) -  ifconfig, netstat, route, and arp.
-   NetworkManager - managing network connections. It includes tools like nmcli and nmtui
-   tcpdump

Desktop and User Interface Utilities

-   Widget Toolkits -  libraries like GTK, Qt, and Enlightenment Foundation Libraries (EFL) for building graphical user interfaces

Init Systems: SysVinit, systemd, OpenRC


<a id="org3e11c87"></a>

## util-linux

1.  blkid: Displays information about block devices (e.g., hard drives,
    SSDs, USB drives). Example: blkid -c /dev/null (display all block
    devices)
2.  chrt: Changes the scheduling priority of a
    process. Example: chrt -p 19 1234 (set the priority of process 1234
    to 19)
3.  dmesg: Displays kernel messages (e.g., boot messages,
    error messages). Example: dmesg | grep -i error (display all error
    messages)
4.  fdisk: Manipulates disk partitions (e.g., creates,
    deletes, lists partitions). Example: fdisk -l /dev/sda (display
    partition table of /dev/sda)
5.  findmnt: Displays information about
    mounted filesystems. Example: findmnt -t ext4 (display all ext4
    filesystems)
6.  fstrim: Trims (discards) unused blocks on a
    filesystem. Example: fstrim -v / (trim unused blocks on the root
    filesystem)
7.  getopt: Parses command-line options. Example: getopt
    -o "hf:" -n "myprogram" &#x2013; "$@" (parse options for
    myprogram)
8.  hexdump: Displays a file in hexadecimal
    format. Example: hexdump -C /bin/ls (display the contents of
    /bin/ls in hexadecimal)
9.  ionice: Sets the I/O scheduling priority of a process. Example:
    ionice -c 3 -p 1234 (set the I/O priority of process 1234 to 3)
10. lsblk: Displays information about block
    devices (e.g., hard drives, SSDs, USB drives). Example: lsblk -d -o
    NAME,FSTYPE,SIZE,MOUNTPOINT (display block devices with their
    filesystem type, size, and mountpoint)
11. lsusb: Displays
    information about USB devices. Example: lsusb -t (display USB
    devices in a tree-like format)
12. mountpoint: Checks if a directory is a mountpoint. Example:
    mountpoint /mnt (check if /mnt is a mountpoint)
13. nsenter: Enters a namespace (e.g., mounts,
    network, PID). Example: nsenter -t 1234 -m (enter the mount
    namespace of process 1234)
14. partx: Displays information about disk partitions. Example: partx
    -s /dev/sda (display partition sizes of /dev/sda)
15. readprofile: Displays kernel profiling information. Example:
    readprofile -v (display kernel profiling information in a verbose
    format)
16. renice: Changes the nice value of a process. Example: renice -n 10
    -p 1234 (set the nice value of process 1234 to 10)
17. setterm: Sets terminal attributes (e.g.,
    baud rate, parity). Example: setterm -baud 9600 (set the baud rate
    to 9600)
18. swapon:/swapoff: Disables swap space. Example: swapoff -a
    (disable all swap space)
19. taskset: Sets the CPU affinity of a process. Example: taskset -c
    0-3 1234 (set the CPU affinity of process 1234 to CPUs 0-3) These
    are just a few examples of the many useful commands in util-linux.


<a id="org15549bd"></a>

# translate-shell

/etc/hosts:

    172.217.13.106	translate.googleapis.com


<a id="org5713802"></a>

# linkedin create post

-   developer.linkedin.com
-   create company page
-   creat app

secret r2kwzb1UAm9gMv12
client id 78e41n602hoa3r
<https://www.linkedin.com/developers/apps/verification/7115293d-2b5a-46f9-845f-dc8eaa88e646>

GET <https://api.linkedin.com/v2/userinfo>
Authorization: Bearer <access token>


<a id="orgd13f35b"></a>

# whatsapp

-   <https://web.whatsapp.com/>
-   <https://whatsapp.com/android/current/whatsapp.apk>


<a id="orge61c4ce"></a>

## whatsie - C++ client

<https://github.com/keshavbhatt/whatsie>

    emerge --ask net-im/whatsie-4.16.3

Unwanted connections:

-   raw.githubusercontent.com
-   dashboard.snapcraft.io


<a id="orgda09fb0"></a>

# Affiliate marketing


<a id="org32f3f5f"></a>

## terms:

-   **affiliate marketing:** by spreading the responsibilities of product marketing and creation across parties.
    by paying affiliate sites to promote their products.
-   **Seller and product creators or brand:** a solo entrepreneur or large enterprise, is a vendor, merchant, product
    creator or retailer with a product to market.
-   **affiliate marketers or The affiliate or advertiser  or a publisher:** convince consumers them to purchase the product.
-   The consumer
-   product marketing

