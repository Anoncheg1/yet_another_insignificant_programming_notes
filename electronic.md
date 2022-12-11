
# Table of Contents

1.  [SD card](#org8480d3a)
2.  [battery](#orgeb46523)
3.  [terms](#org1b2a1ea)
4.  [circuit](#org4f74d5e)
5.  [Printed circuit board or PBC](#orgcbfed86)
6.  [Integrated circuit or chip or ICs](#org217e704)
    1.  [Pinout - cross-reference between the contacts, or pins and their functions](#org6313016)
    2.  [packages](#orgc7d052b)
    3.  [Dual in-line package](#org837a126)
    4.  [In-system programming (ISP)](#orga50d5c2)
    5.  [Microcontroller MCU for microcontroller unit](#orga90a37a)
7.  [FLASH](#org6bf65cf)
8.  [Coulomb's law](#org965ca46)
9.  [Capacitor](#org3e1f857)
10. [induction motor or asynchronous motor - AC electric motor](#org2ca565d)
11. [Ponoma 5250 Test Clip - For connecting to the bios chip.](#orgbb9f29b)
    1.  [Статическое электричество](#org4a888c7)
    2.  [описание](#orgcd2ed9f)
    3.  [spec](#org8d838ca)
12. [bios chip Macronix MX25L6406EM2I-12G](#org4361cb0)
13. [bios chip Winbond 25Q64CVSIG](#org1398a82)
    1.  [spec](#org2c8c5ee)
14. [bios chip  Winbond flash chip "W25Q32.V"](#orgdefc484)
15. [flashrom](#org666428a)
16. [датчики магнитного поля](#org7a908cc)
17. [Raspberry PI](#orgcaca27c)
    1.  [install](#org2a1b922)
        1.  [headless setup](#orge9043d7)
    2.  [Raspberry Pi OS](#orge3e38ce)
        1.  [raspberry commands](#orgfd392f8)
        2.  [Useful Utilities](#org3644c29)
        3.  [apt](#orgb2b32f5)
    3.  [USECASES](#org5bb4abc)
        1.  [enable ssh](#orga482fb4)
        2.  [increase swap](#org618e093)
        3.  [as a wireless access point](#org53720f8)
    4.  [GPIO and the 40-pin Header](#org234c3ce)
        1.  [links](#orgdd11856)
        2.  [safe](#org578487a)
    5.  [links](#org6a8847b)
18. [Banana Pi](#org0f262e8)

;-**- mode: Org; fill-column: 120;-**-

<https://dip8.ru>
vitalij@gmx.com
ckn3xp25q8TWUfOlhoOHL
Заказ №144988 от 31.01.2022, 2 товара на сумму 2 846.28 руб.
<https://tmelectronics.ru>

AC power (active power) or Instantaneous power or real power or just power

-   P, watt(W) (joules per second)
-   amount of energy transferred or converted per unit time
-   P(t) = I(t)\*V(t)

Voltage

Printed circuit board(PCB) -


<a id="org8480d3a"></a>

# SD card

<https://www.kingston.com/unitedstates/en/solutions/personal-storage/memory-card-speed-classes>

higher - lower

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-right" />

<col  class="org-right" />

<col  class="org-right" />

<col  class="org-right" />

<col  class="org-right" />

<col  class="org-right" />

<col  class="org-right" />
</colgroup>
<tbody>
<tr>
<td class="org-left">Speed Class</td>
<td class="org-right">10</td>
<td class="org-right">10</td>
<td class="org-right">10</td>
<td class="org-right">10</td>
<td class="org-right">6</td>
<td class="org-right">4</td>
<td class="org-right">2</td>
</tr>


<tr>
<td class="org-left">UHC CLass</td>
<td class="org-right">3</td>
<td class="org-right">1</td>
<td class="org-right">3</td>
<td class="org-right">1</td>
<td class="org-right">&#xa0;</td>
<td class="org-right">&#xa0;</td>
<td class="org-right">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Video Speed Class</td>
<td class="org-right">V90</td>
<td class="org-right">v60</td>
<td class="org-right">V30</td>
<td class="org-right">V10</td>
<td class="org-right">V6</td>
<td class="org-right">&#xa0;</td>
<td class="org-right">&#xa0;</td>
</tr>
</tbody>
</table>


<a id="orgeb46523"></a>

# battery

Lithium ion or LiON

Memory effect

-   plugged onto the charger long after it has been fully charged
-   undercharging
-   charging before the battery is fully drained

Shallow cycling

-   without allowing it to reach full charge status

Cycle life - Laptop batteries have a finite lifespan

-

Keep Your Laptop Cool

-   Lithium-ion batteries perform best when their temperature is between 15 °C and 35 °C
-   When their temperature gets too low, their capacity is reduced
-   When their temperature gets too high, a thermal failure may occur.

Charge Between 30% and 80%

-   ithium-ion batteries shouldn’t be charged above 80% and discharged below 30% of their maximum capacity to increase their lifespan.
-   manually limit battery charging using TLP:
    -   su -c 'echo 80 > /sys/class/power<sub>supply</sub>/BAT0/charge<sub>stop</sub><sub>threshold</sub>'

bad!!!!

-   Take your laptop with your every day to school or work and use it until there’s no juice left.
-   Take the fully discharged laptop home and use it for the rest of the day while it’s connected to a charger.
-   Leave the laptop charging over night so that it’s charged to 100% next morning.

battery has deteriorated so far (capacity). -  compare the energy-full and energy-full-design


<a id="org1b2a1ea"></a>

# terms

Alternating current (AC) - переменный ток
Direct current (DC) - постоянный ток

-   insulating [ˈɪnsjʊleɪtɪŋ] - изоляционный
-   insulator [ˈɪnsjʊleɪtə] or dielectric [daɪɪˈlektrɪk] - изолятор или диэлектрик (используется для подчёркивания
    способности материала к накоплению энергии посредством поляризации - polarisability.)
-   conductive [kənˈdʌktɪv] - проводящий
-   conductor [kənˈdʌktə] - проводник
-   soldering - пайка, спаивание
-   integrated circuit [ˈɪntɪgreɪtɪd ˈsɜːkɪt] or chip or microchip  - интегральная схема, микросхема
-   Surface-mount technology (SMT) -
-   Capacitor [kəˈpæsɪtə] - Конденсатор
-   breadboard[ˈbredbɔːd] - Макетная плата
-   terminal [ˈtɜːmɪnl] - клемма, соединение
-   supply voltage
-   current [ˈkʌrənt] - ток flow from the negative to the positive polarity of the voltage
-   load [ləʊd] - нагрузка типа лампочки bulb
-   to secure to a PCB - прикреплять, запаивать
-   soldering - пайка solderless - беспаячный
-   pin is to refer to electrical contacts of, specifically, the male gender
-   Pinout - cross-reference between the contacts, or pins and their functions. no gender or female


<a id="org4f74d5e"></a>

# circuit

-   open/short circuits - electric circuit in which current does not flow or does flow


<a id="orgcbfed86"></a>

# Printed circuit board or PBC

-   sandwich structure of conductive and insulating layers

for

-   to affix electronic components
-   to provide reliable electrical connections (and also reliable open circuits) between the component's terminals


<a id="org217e704"></a>

# Integrated circuit or chip or ICs

-   smaller, faster, and less expensive than those constructed of discrete electronic components
-   metal–oxide–silicon (MOS)
-   die - small block of semiconducting material on which a given functional circuit is fabricated -  wafer is cut (diced)
    into many pieces, each containing one copy of the circuit. Each of these pieces is called a die.
-   most dies are packaged in various forms.


<a id="org6313016"></a>

## Pinout - cross-reference between the contacts, or pins and their functions

-   Цоколёвка («распино́вка»), или разво́дка вы́водов
-   basing diagram
-   на схеме сторона помечается кружочком или выемкой
-   обычно берется сторона где надписи и поворачивается по часовой на 45

нумерация

-   1 4
-   2 5
-   3 6


<a id="orgc7d052b"></a>

## packages

-   Integrated circuits are put into protective **packages** <https://en.wikipedia.org/wiki/List_of_integrated_circuit_packaging_types>
    -   Through-hole packages - uses holes drilled through the PCB for mounting the components.
        -   dual in-line package (DIP or DIL) - rectangular housing and two parallel rows of electrical connecting pins
        -   Transistor, diode, small-pin-count IC packages
    -   Surface mount -Chip on board is a packaging technique that directly connects a die to a PCB, without an interposer
        or lead frame.  surface-mount technology (SMT)
    -   Chip carrier - rectangular package with contacts on all four edges.
        -   plastic leaded chip carrier (PLCC)
    -   Pin grid arrays
    -   Flat packages
        -   Small outline packages
            -   small-outline integrated circuit (SOIC)

Tube package - A tube is a rigid extruded plastic package designed to fit the profile of the part and protect the
leads. Tubes ship with the exact number of parts ordered and a rubber plug or plastic peg in each end to prevent the
parts from sliding out. Tubes are packaged according to the ESD (ElectroStatic Discharge) and MSL (Moisture Sensitivity
Level) protection requirements determined by the manufacturer.


<a id="org837a126"></a>

## Dual in-line package

-   DIPn, where n is the total number of pins
-   plastic or ceramic packages
-   secured to a PCB by inserting the pins through holes in the board and soldering them in place
-   can be mounted either by through-hole soldering or in sockets or  point-to-point wiring ("dead bug style")

zero insertion force (ZIF) mechanism - type of socket


<a id="orga50d5c2"></a>

## In-system programming (ISP)

-   or also called in-circuit serial programming (ICSP)
-   no standard
-   Typically, chips supporting ISP have internal circuitry to generate any necessary programming voltage from the
    system's normal supply voltage, and communicate with the programmer via a serial protocol.


<a id="orga90a37a"></a>

## Microcontroller MCU for microcontroller unit

-   small computer on a single integrated circuit (IC) chip
-   contains one or more CPUs (processor cores) along with memory and programmable input/output peripherals
-   designed for embedded applications
-   microcontroller is similar to, but less sophisticated than, a system on a chip (SoC). An SoC may include a
    microcontroller as one of its components


<a id="org6bf65cf"></a>

# FLASH

Non-Volatile and volatile
types of flash memory

-   NOR flash
-   NAND flash
-   The connections of the individual memory cells are different Флеш-память различается методом соединения ячеек в масси
-   They differ at the circuit level depending on whether the state of the bit line or word lines is pulled high or
    low. In NAND flash, the relationship between the bit line and the word lines resembles a NAND gate; in NOR flash, it
    resembles a NOR gate.
-   The interface provided for reading and writing the memory is different; NOR allows random access, while NAND allows
    only page access.
-   Main application 	NAND - File storage 	NOR - Code execution


<a id="org965ca46"></a>

# Coulomb's law

Закон Кулона

-   Сила взаимодействия двух точечных зарядов в вакууме направлена вдоль прямой, соединяющей эти заряды, пропорциональна
    их величинам и обратно пропорциональна квадрату расстояния между ними. Она является силой притяжения, если знаки
    зарядов разные, и силой отталкивания, если эти знаки одинаковы.


<a id="org3e1f857"></a>

# Capacitor

From Coulomb's law a charge on one conductor will exert a force on the charge carriers within the other conductor,
attracting opposite polarity charge and repelling like polarity charges, thus an opposite polarity charge will be
induced on the surface of the other conductor. The conductors thus hold equal and opposite charges on their facing
surfaces,[22] and the dielectric develops an electric field.

applications

-   Capacitors are commonly used in electronic devices to maintain power supply while batteries are being changed. (This
    prevents loss of information in volatile memory.)
-   Reservoir capacitors are used in power supplies where they smooth the output of a full or half wave rectifier. They
    can also be used in charge pump circuits as the energy storage element in the generation of higher voltages than the
    input voltage.
-   Power factor correction
-   Suppression and coupling
-   Signal coupling - pass AC but block DC signals


<a id="org2ca565d"></a>

# TODO induction motor or asynchronous motor - AC electric motor

Variable-frequency drive - systems to control AC motor speed and torque by varying motor input frequency and voltage.


<a id="orgbb9f29b"></a>

# Ponoma 5250 Test Clip - For connecting to the bios chip.

-   для соединения с surface mounted SOIC & SOJ chips body width from .150 to 350 wide
-   8 pins .260 width
-


<a id="org4a888c7"></a>

## Статическое электричество

Перед тем как приступать к работе с чувствительной электроникой (микросхемы, микроконтроллеры, КМОП-компоненты и т.д.)
нужно убрать такой паразитный и не несущий пользы заряд. Для этого достаточно коснуться руками какого-то массивного
металлического предмета.

антистатические браслеты - на запястье одной из рук а отвод накопившегося в теле паразитного заряда выполняется через
подключенный к ней проводник, соединенный с помощью зажима "крокодильчика" с заземлением.

Важно заметить что соединение "человек-заземление" - не прямое! В разрыве соединения "пластина-заземление" должен
присутствовать резистор с сопротивлением в несколько мегаОм. Он необходим для уменьшения силы тока уходящего заряда, а
также для безопасности при работе с электронными устройствами, питающимися от потребительской сети переменного
напряжения.


<a id="orgcd2ed9f"></a>

## описание

Измерительный клипс SOICO8
Производитель	POMONA
Модель 5250

-   Совместим с 8-контактными корпусами SMD (150 мил и 200 мил)
-   Идеально подходит для программирования в системе, например, с помощью программатора REVELPROG-IS.
-   совместим с системами в оболочках SO-8 (150 и 200 мил),
-   совместим со всеми программаторами (позолоченные разъемы, растр 2,54 мм), например, с REVELPROG-IS,
-   возможность зажима зажима на распаянной памяти (хотя и не рекомендуется - можно легко повредить контакты памяти и /
    или пластину зажима).


<a id="org8d838ca"></a>

## spec

<https://www.digikey.com/en/products/detail/pomona-electronics/5250/745102>
<https://eu.mouser.com/datasheet/2/159/d5250-54_5437_1_01_1-1513245.pdf>


<a id="org4361cb0"></a>

# bios chip Macronix MX25L6406EM2I-12G

-   <https://www.macronix.com/Lists/Datasheet/Attachments/7370/MX25L6406E,%203V,%2064Mb,%20v1.9.pdf>

Package / Case - 8-SOIC
Supplier Device Package - 8-SOP

-


<a id="org1398a82"></a>

# bios chip Winbond 25Q64CVSIG

<https://github.com/nenadstoisavljevic/t420-coreboot-guide>
<https://www.instructables.com/Lenovo-T420-Coreboot-WRaspberry-Pi/>
<https://tomvanveen.eu/flashing-bios-chip-raspberry-pi/>
<https://nm-projects.de/2017/08/flashing-coreboot-on-the-t430-with-a-raspberry-pi/>

coreboot config t440 , cannot boot <https://blog.0xcb.dev/lenovo-t440p-coreboot/>
t420 config <https://www.reddit.com/r/coreboot/comments/fzuzch/t420_coreboot_installation_guide_0_guaranteed/>

-   SOP8
-   3V 64M-BIT / 8M-byte
-   W25Q64CV
-   SERIAL FLASH MEMORY WITH DUAL AND QUAD SPI
-   Standard SPI: CLK, /CS, DI, DO, /WP, /Hold

– Dual SPI: CLK, /CS, IO0, IO1, /WP, /Hold
– Quad SPI: CLK, /CS, IO0, IO1, IO2, IO3

1 cs - 24
2 MISO - 21
3 -
4 GND - 25 or  39
5 MOSI - 19
6 CLK - 23
7 -
8 VCC - 17

-   test: flashrom -p linux<sub>spi</sub>:dev=/dev/spidev0.0,spispeed=2000
-   flashrom -p linux<sub>spi</sub>:dev=/dev/spidev0.0,spispeed=1500 -c "W25Q64.V" -r factory1.rom
-   flashrom -p linux<sub>spi</sub>:dev=/dev/spidev0.0,spispeed=2000 -c "W25Q64.V" -r factory2.rom
-   flashrom -p linux<sub>spi</sub>:dev=/dev/spidev0.0,spispeed=2500 -c "W25Q64.V" -r factory3.rom


<a id="org2c8c5ee"></a>

## spec

<http://www.chipset-ic.com/datasheet/25Q64CVSIG-Flash-8M.pdf>
<https://www.datasheetq.com/datasheet-download/840460/1/Winbond/25Q64FVSIG>


<a id="orgdefc484"></a>

# bios chip  Winbond flash chip "W25Q32.V"

-   4096 kB


<a id="org666428a"></a>

# flashrom

sys-apps/flashrom

read flash at PC:

-

What can I do about /dev/mem errors?

-   disable CONFIG<sub>IO</sub><sub>STRICT</sub><sub>DEVMEM</sub>
-   CONFIG<sub>IO</sub><sub>STRICT</sub><sub>DEVMEM</sub>

FLASH:

-   Lower spispeeds will provide you with better reads. However,
-   you can increase \`spispeed=128\` to a higher value such as
-   512 for faster reads. An spispeed of 128 takes roughly
-   10 min per read.

<https://www.flashrom.org/RaspberryPi>

raspberry bi - enable SPI

-   <https://www.takaitra.com/spi-device-raspberry-pi/>
-   <https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#spi-software>


<a id="org7a908cc"></a>

# датчики магнитного поля

-   Геркон
-   Датчик Холла

-   Униполярный – когда сила магнитного поля достигает определенной величины датчик срабатывает. Такие датчики откликаются только на один полюс. Если к датчику поднести магнит другим полюсом, то датчик на него не реагирует. Когда сила магнитного поля снижается датчик возвращается в исходное положение.
-   Биполярный – в этом случае имеет значение полярность магнитного поля. Один полюс включает датчик, другой полюс выключает.
-   Омниполярный датчик Холла – реагирует на любой магнитный полюс. Т.е. любой полюс может включать и выключать датчик. Это может быть, как южный, так и северный полюс.

На два вывода датчика подается питание, которое может быть, как однополярным, так и двуполярным. Третий вывод сигнальный.


<a id="orgcaca27c"></a>

# Raspberry PI

Raspberry Pi 3 Model B Rev 1.2

4× Cortex-A53 1.2 GHz

ARMv8-A 	Quad Core 1.2GHz Broadcom BCM2837 64bit CPU 	1G@LPDDR2

arm7a - 32 mode

BCM2835 Revision	: a02082


<a id="org2a1b922"></a>

## install

1.  download OS <https://www.raspberrypi.com/software/operating-systems/>
2.  check sum
3.  insert usb, lsblk -p
4.  write to SD Card:
    -   sudo dd if=2021-10-30-raspios-bullseye-armhf.img of=/dev/sdX bs=4M conv=fsync
    -   unzip -p 2021-10-30-raspios-bullseye-armhf.zip | sudo dd of=/dev/sdX bs=4M conv=fsync status=progress
    -   Please note that block size set to 4M will work most of the time. If not, try 1M, although this will take
        considerably longer.
5.  sync


<a id="orge9043d7"></a>

### headless setup


<a id="orge3e38ce"></a>

## Raspberry Pi OS

-   is a free operating system based on Debian, optimised for the Raspberry Pi hardwar
-   default login and password:
    -   pi:raspberry


<a id="orgfd392f8"></a>

### raspberry commands

-   rpi-update -  update your Raspberry Pi OS kernel and VideoCore firmware to the latest pre-release versions.
-   pinout - GPIO refference
-   sudo raspi-config - configuration tool - This may result in automated edits to /boot/config.txt and various standard
    Linux configuration files.
-   raspinfo - full info


<a id="org3644c29"></a>

### Useful Utilities

-   tvservice - HDMI video and audio.
    -   -p, &#x2013;preferred Power on the HDMI output with preferred settings.
    -   -o, &#x2013;off Powers off the display output.
    -   -e, &#x2013;explicit="Group Mode Drive" Power on the HDMI with the specified settings Group can be one of CEA, DMT,
        CEA<sub>3D</sub><sub>SBS</sub>, CEA<sub>3D</sub><sub>TB</sub>, CEA<sub>3D</sub><sub>FP</sub>, CEA<sub>3D</sub><sub>FS</sub>. Mode is one of the modes returned from the -m, &#x2013;modes option. Drive
        can be one of HDMI, DVI.
    -   -t, &#x2013;ntsc Use 59.94Hz (NTSC frequency) rather than 60Hz for HDMI mode.
    -   -c, &#x2013;sdtvon="Mode Aspect [P]" Power on the SDTV (composite output) with the specified mode, PAL or NTSC, and the
        specified aspect, 4:3, 14:9, 16:9. The optional P parameter can be used to specify progressive mode.
    -   -m, &#x2013;modes=Group where Group is CEA or DMT. Shows a list of display modes available in the specified group.
    -   -M, &#x2013;monitor Monitors for any HDMI events, for example unplugging or attaching.
    -   -s, &#x2013;status Shows the current settings for the display mode, including mode, resolution, and frequency.
    -   -a, &#x2013;audio Shows the current settings for the audio mode, including channels, sample rate and sample size.
    -   -d, &#x2013;dumpid=filename Save the current EDID to the specified filename. You can then use edidparser <filename> to
        display the data in a human readable form.
    -   -n, &#x2013;name Extracts the display name from the EDID data and shows it.
    -   -l, &#x2013;list Lists all attached displays and their display ID.
    -   -v, &#x2013;device=display Specifies the ID of the device to use; see the output of &#x2013;list for available IDs.
-   vcgencmd -  used to output information from the VideoCore GPU
-   Thonny - Python 3 development environment in REPL (Read-Evaluate-Print-Loop),


<a id="orgb2b32f5"></a>

### apt

-   update:
    -   sudo apt update
    -   sudo apt full-upgrade
-   Searching for Software:
    -   apt-cache search locomotive
-   Installing a Package
    -   sudo apt install tree
-   uninstall
    -   sudo apt remove tree or sudo apt purge tree


<a id="org5bb4abc"></a>

## USECASES

reconnect HDMI

-   uncomment these two lines to /boot/config.txt
    -   hdmi<sub>force</sub><sub>hotplug</sub>=1


<a id="orga482fb4"></a>

### enable ssh

1.  sudo raspi-config
2.  Interfacing Options -> P2 SSH -> YES
3.  sudo systemctl enable ssh
4.  ssh pi@[raspberrypi<sub>ip</sub><sub>address</sub>]


<a id="org618e093"></a>

### increase swap

-   sudo dphys-swapfile swapoff
-   sudo nano /etc/dphys-swapfile
    -   CONF<sub>SWAPSIZE</sub>=100
-   sudo dphys-swapfile setup - delete the original swap file and recreate it to fit the newly defined size.
-   sudo dphys-swapfile swapon
-   reboot


<a id="org53720f8"></a>

### as a wireless access point

-   Install hostapd and dnsmasq
-   nano /etc/dhcpcd.conf # Configure a static IP for the wlan0 interface
    -   interface wlan0
    -   static ip<sub>address</sub>=192.168.0.10/24
    -   denyinterfaces eth0
    -   denyinterfaces wlan0
-   Configure the DHCP server (dnsmasq)
    -   sudo nano /etc/dnsmasq.conf
        -   interface=wlan0
        -   dhcp-range=192.168.0.11,192.168.0.30,255.255.255.0,24h
-   Configure the access point host software (hostapd)
    -   sudo nano /etc/hostapd/hostapd.conf
        -   interface=wlan0
        -   bridge=br0
        -   hw<sub>mode</sub>=g
        -   channel=7
        -   wmm<sub>enabled</sub>=0
        -   macaddr<sub>acl</sub>=0
        -   auth<sub>algs</sub>=1
        -   ignore<sub>broadcast</sub><sub>ssid</sub>=0
        -   wpa=2
        -   wpa<sub>key</sub><sub>mgmt</sub>=WPA-PSK
        -   wpa<sub>pairwise</sub>=TKIP
        -   rsn<sub>pairwise</sub>=CCMP
        -   ssid=NETWORK
        -   wpa<sub>passphrase</sub>=PASSWORD
    -   sudo nano /etc/default/hostapd
        -   DAEMON<sub>CONF</sub>="/etc/hostapd/hostapd.conf"
-   Set up traffic forwarding
    -   sudo nano /etc/sysctl.conf
        -   uncomment net.ipv4.ip<sub>forward</sub>=1
-   Add a new iptables rule
    -   sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
    -   sudo sh -c "iptables-save > /etc/iptables.ipv4.nat"
    -   /etc/rc.local
        -   iptables-restore < /etc/iptables.ipv4.nat
-   Enable internet connection -  to build a bridge that will pass all traffic between the wlan0 and eth0 interfaces.
    -   sudo apt-get install bridge-utils
    -   sudo brctl addbr br0
    -   sudo brctl addif br0 eth0
    -   sudo nano /etc/network/interfaces
        -   auto br0
        -   iface br0 inet manual
        -   bridge<sub>ports</sub> eth0 wlan0


<a id="org234c3ce"></a>

## GPIO and the 40-pin Header

-   pull-up and pull-down resistors ???
-   3V3 ??

-   GPIO (general-purpose input/output)
-   Any of the GPIO pins can be designated (in software) as an input or output pin and used for a wide range of purposes.
-   Two 5V pins and two 3V3 pins are present on the board, as well as a number of ground pins (0V), which are
    unconfigurable. The remaining pins are all general purpose 3V3 pins, meaning outputs are set to 3V3 and inputs are
    3V3-tolerant.
-   input and outputs can be set to high (3V3) or low (0V).
-   Pins GPIO2 and GPIO3 have fixed pull-up resistors, but for other pins this can be configured in software.
-   In order to use the GPIO ports your user must be a member of the gpio group. pi is already in
-   <https://gpiozero.readthedocs.io/> - Python lib for GPIO

GPIO pins functions:

-   I or O
-   PWM (pulse-width modulation)
-   SPI
-   I2C
-   Serial

commands

-   pinout
-   raspi-gpio


<a id="orgdd11856"></a>

### links

-   <https://ph0en1x.net/106-rpi-gpio-installation-working-with-inputs-outputs-interrupts.html>
-   interactive pinout diagram. <https://pinout.xyz/>#


<a id="org578487a"></a>

### safe

<https://ph0en1x.net/86-raspberry-pi-znakomstvo-s-gpio-perekluchatel-i-svetodiod.html>
важно помнить что:

-   Внутренние буферы и ключи, которые подключены к пинам GPIO, НЕ защищены от перегрузки по напряжению и току;
-   Пины питания с выходным напряжением +3.3В можно нагружать током не более 50мА;
-   Пины с выходным напряжением 5В стараемся грузить током не более чем на 500мА (для Model A) и не более чем на 300мА (для Model B) - почему так, расскажу ниже.

-   Перед работой стоит убрать с себя статический заряд, а еще лучше использовать антистатический браслет;
-   Пайку электроники желательно выполнять с отключенным разъемом GPIO (чтобы не было прямого контакта "жало паяльника - пин");
-   Не перегружать пины питания +5В (макс. ток 300-500мА) и +3.3В (50мА), не закорачивать их напрямую с другими пинами;
-   Исключить протекание тока величиной более 8-15мА через пины GPIO;
-   Исключить попадание напряжения выше +3.3В на пины GPIO;
-   Подключать напрямую не более 3х светодиодов (по 2-15мА каждый) к Raspberry Pi;
-   Перед подачей питания на схему и малинку внимательно проверить правильность всех подключений.


<a id="org6a8847b"></a>

## links

doc  <https://www.raspberrypi.com/documentation/computers/getting-started.html>


<a id="org0f262e8"></a>

# Banana Pi

-   <https://aliexpress.ru/store/302756>
-   wiki.banana-pi.org
