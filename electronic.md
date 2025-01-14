
# Table of Contents

1.  [SD card](#orgd421bec)
2.  [battery](#org934ac00)
    1.  [theory](#orge03cb65)
    2.  [Lithium ion or LiON](#orgfa00113)
        1.  [usage for laptop](#orgce98a5f)
3.  [terms](#orgdc5c3d8)
4.  [circuit](#orgcd5211d)
5.  [Printed circuit board or PBC](#org97844bf)
6.  [Integrated circuit or chip or ICs](#org8084c2e)
    1.  [Pinout - cross-reference between the contacts, or pins and their functions](#orgd75f93f)
    2.  [packages](#orgaf6ee9c)
    3.  [Dual in-line package](#orgc9bc6d7)
    4.  [In-system programming (ISP)](#orga58fb45)
    5.  [Microcontroller MCU for microcontroller unit](#orge3a44f7)
7.  [FLASH](#orgbe91097)
8.  [Hard Drives](#org05618d0)
    1.  [CMR vs. SMR](#org154f608)
9.  [Coulomb's law](#org1f6281e)
10. [Capacitor](#orge3195de)
11. [induction motor or asynchronous motor - AC electric motor](#orgc151717)
12. [Ponoma 5250 Test Clip - For connecting to the bios chip.](#orgb422f56)
    1.  [Статическое электричество](#org91e5742)
    2.  [описание](#orgbcccfff)
    3.  [spec](#org3a34a54)
13. [bios chip Macronix MX25L6406EM2I-12G](#orgaaf71e0)
14. [bios chip Winbond 25Q64CVSIG](#org2b29544)
    1.  [spec](#orgb2f3ed2)
15. [bios chip  Winbond flash chip "W25Q32.V"](#org577a7b4)
16. [flashrom](#org0a6a222)
17. [датчики магнитного поля](#org71bcf8f)
18. [Raspberry PI](#org7a068ab)
    1.  [install](#orge52b80f)
        1.  [headless setup](#org032a444)
    2.  [Raspberry Pi OS](#org45dacd0)
        1.  [raspberry commands](#org3a5d7cc)
        2.  [Useful Utilities](#orgc77d3d0)
        3.  [apt](#orgb367911)
    3.  [USECASES](#orgf142073)
        1.  [enable ssh](#org0848dea)
        2.  [increase swap](#org9065dd8)
        3.  [as a wireless access point](#org2342763)
    4.  [GPIO and the 40-pin Header](#org3710669)
        1.  [links](#org318ed90)
        2.  [safe](#org546c533)
    5.  [links](#orgaeec9de)
19. [Wifi USB](#orgdd589a2)
    1.  [rtl8822bu - AC1300 USB](#org709daec)
        1.  [info](#org60531a1)
20. [Banana Pi](#org4886f76)
21. [GPGPU (General-Purpose computing on Graphics Processing Unit).](#orgc8cd50b)
22. [radio RTL-SDR](#org1c90e5e)

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


<a id="orgd421bec"></a>

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


<a id="org934ac00"></a>

# battery


<a id="orge03cb65"></a>

## theory

types

-   Литий-ионный  lithium-ion or Li-ion -  reversible intercalation of Li+ ions
-   Гелевый
-   Щелочный
-   Свинцово-кислотный

Принцип работы литий-ионного аккумулятора

В литий-ионных аккумуляторах графит и оксид лития наносятся в виде покрытия на медную и алюминиевую фольгу. Способность
 атомов отдавать свои электроны характеризуется электрохимическим потенциалом. В литий-ионных аккумуляторах используется
 металл с наибольшим электрохимическим потенциалом — литий. Литий — химически активный металл, он вступает в реакцию
 даже с водой и воздухом. Но активен только чистый литий, а вот его оксид, напротив, очень стабилен.

Разряженный аккумулятор подключается к источнику питания. Положительный полюс начнет притягивать электроны, вытаскивая
 их из оксида лития. Поскольку электроны не могут проникать через электролит, то они движутся по внешней цепи через
 источник питания и в конце концов достигают графита. этот же самый момент положительные ионы лития притягиваются
 отрицательным полюсом, проходя сквозь электролит и также попадают в графит, размещаясь между его слоями (**интеркаляция**).
 Когда все ионы лития достигнут графита и будут захвачены его слоями, батарея будет полностью заряжена. В пространствах
 кристаллической решётки графита запасается большое количество ионов лития. При этом сохраняются компактные
 геометрические размеры благодаря слоистой и пористой структуре графита.

intercalation is the reversible inclusion or insertion of a molecule (or ion) into layered materials with layered structures.

Main components of of batteries:

-   lithium and lithium cation Li+ (5-7% of the total cost),
-   Cobalt, Nickel (20-25% of the total cost of manufacturing a lithium-ion battery),
-   Graphite, Manganese.

What are the key components of a lithium-ion battery?

-   The key components include the anode (typically graphite), cathode (often containing lithium and other metals like
    cobalt, nickel, or manganese), electrolyte (a lithium salt in a solvent), and separator (to prevent short circuits).

Factors affect the performance and lifespan of a lithium-ion battery:

1.  temperature 30-40%
2.  charge/discharge rates 20-30%
3.  depth of discharge 20-30%
4.  cycling frequency 10-20%

links

-   <https://en.wikipedia.org/wiki/Intercalation_(chemistry)>
-   <https://www.britannica.com/science/lithium-chemical-element>
-   <https://en.wikipedia.org/wiki/Lithium>
-   <https://en.wikipedia.org/wiki/Lithium-ion_battery>


<a id="orgfa00113"></a>

## Lithium ion or LiON


<a id="orgce98a5f"></a>

### usage for laptop

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


<a id="orgdc5c3d8"></a>

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


<a id="orgcd5211d"></a>

# circuit

-   open/short circuits - electric circuit in which current does not flow or does flow


<a id="org97844bf"></a>

# Printed circuit board or PBC

-   sandwich structure of conductive and insulating layers

for

-   to affix electronic components
-   to provide reliable electrical connections (and also reliable open circuits) between the component's terminals


<a id="org8084c2e"></a>

# Integrated circuit or chip or ICs

-   smaller, faster, and less expensive than those constructed of discrete electronic components
-   metal–oxide–silicon (MOS)
-   die - small block of semiconducting material on which a given functional circuit is fabricated -  wafer is cut (diced)
    into many pieces, each containing one copy of the circuit. Each of these pieces is called a die.
-   most dies are packaged in various forms.


<a id="orgd75f93f"></a>

## Pinout - cross-reference between the contacts, or pins and their functions

-   Цоколёвка («распино́вка»), или разво́дка вы́водов
-   basing diagram
-   на схеме сторона помечается кружочком или выемкой
-   обычно берется сторона где надписи и поворачивается по часовой на 45

нумерация

-   1 4
-   2 5
-   3 6


<a id="orgaf6ee9c"></a>

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


<a id="orgc9bc6d7"></a>

## Dual in-line package

-   DIPn, where n is the total number of pins
-   plastic or ceramic packages
-   secured to a PCB by inserting the pins through holes in the board and soldering them in place
-   can be mounted either by through-hole soldering or in sockets or  point-to-point wiring ("dead bug style")

zero insertion force (ZIF) mechanism - type of socket


<a id="orga58fb45"></a>

## In-system programming (ISP)

-   or also called in-circuit serial programming (ICSP)
-   no standard
-   Typically, chips supporting ISP have internal circuitry to generate any necessary programming voltage from the
    system's normal supply voltage, and communicate with the programmer via a serial protocol.


<a id="orge3a44f7"></a>

## Microcontroller MCU for microcontroller unit

-   small computer on a single integrated circuit (IC) chip
-   contains one or more CPUs (processor cores) along with memory and programmable input/output peripherals
-   designed for embedded applications
-   microcontroller is similar to, but less sophisticated than, a system on a chip (SoC). An SoC may include a
    microcontroller as one of its components


<a id="orgbe91097"></a>

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


<a id="org05618d0"></a>

# Hard Drives


<a id="org154f608"></a>

## CMR vs. SMR

-   SMR drive costs less
-   Conventional Magnetic Recording (CMR) drives write data on a hard disk in tracks that do not overlap
-   Shingled Magnetic Recording (SMR) allows tracks to overlap, which results in higher data densities, but slower read
    and write times compared to CMR drives.
-   CMR drives is faster.


<a id="org1f6281e"></a>

# Coulomb's law

Закон Кулона

-   Сила взаимодействия двух точечных зарядов в вакууме направлена вдоль прямой, соединяющей эти заряды, пропорциональна
    их величинам и обратно пропорциональна квадрату расстояния между ними. Она является силой притяжения, если знаки
    зарядов разные, и силой отталкивания, если эти знаки одинаковы.


<a id="orge3195de"></a>

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


<a id="orgc151717"></a>

# TODO induction motor or asynchronous motor - AC electric motor

Variable-frequency drive - systems to control AC motor speed and torque by varying motor input frequency and voltage.


<a id="orgb422f56"></a>

# Ponoma 5250 Test Clip - For connecting to the bios chip.

-   для соединения с surface mounted SOIC & SOJ chips body width from .150 to 350 wide
-   8 pins .260 width
-   


<a id="org91e5742"></a>

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


<a id="orgbcccfff"></a>

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


<a id="org3a34a54"></a>

## spec

<https://www.digikey.com/en/products/detail/pomona-electronics/5250/745102>
<https://eu.mouser.com/datasheet/2/159/d5250-54_5437_1_01_1-1513245.pdf>


<a id="orgaaf71e0"></a>

# bios chip Macronix MX25L6406EM2I-12G

-   <https://www.macronix.com/Lists/Datasheet/Attachments/7370/MX25L6406E,%203V,%2064Mb,%20v1.9.pdf>

Package / Case - 8-SOIC
Supplier Device Package - 8-SOP

-   


<a id="org2b29544"></a>

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


<a id="orgb2f3ed2"></a>

## spec

<http://www.chipset-ic.com/datasheet/25Q64CVSIG-Flash-8M.pdf>
<https://www.datasheetq.com/datasheet-download/840460/1/Winbond/25Q64FVSIG>


<a id="org577a7b4"></a>

# bios chip  Winbond flash chip "W25Q32.V"

-   4096 kB


<a id="org0a6a222"></a>

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


<a id="org71bcf8f"></a>

# датчики магнитного поля

-   Геркон
-   Датчик Холла

-   Униполярный – когда сила магнитного поля достигает определенной величины датчик срабатывает. Такие датчики откликаются только на один полюс. Если к датчику поднести магнит другим полюсом, то датчик на него не реагирует. Когда сила магнитного поля снижается датчик возвращается в исходное положение.
-   Биполярный – в этом случае имеет значение полярность магнитного поля. Один полюс включает датчик, другой полюс выключает.
-   Омниполярный датчик Холла – реагирует на любой магнитный полюс. Т.е. любой полюс может включать и выключать датчик. Это может быть, как южный, так и северный полюс.

На два вывода датчика подается питание, которое может быть, как однополярным, так и двуполярным. Третий вывод сигнальный.


<a id="org7a068ab"></a>

# Raspberry PI

Raspberry Pi 3 Model B Rev 1.2

4× Cortex-A53 1.2 GHz

ARMv8-A 	Quad Core 1.2GHz Broadcom BCM2837 64bit CPU 	1G@LPDDR2

arm7a - 32 mode

BCM2835 Revision	: a02082


<a id="orge52b80f"></a>

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


<a id="org032a444"></a>

### headless setup


<a id="org45dacd0"></a>

## Raspberry Pi OS

-   is a free operating system based on Debian, optimised for the Raspberry Pi hardwar
-   default login and password:
    -   pi:raspberry


<a id="org3a5d7cc"></a>

### raspberry commands

-   rpi-update -  update your Raspberry Pi OS kernel and VideoCore firmware to the latest pre-release versions.
-   pinout - GPIO refference
-   sudo raspi-config - configuration tool - This may result in automated edits to /boot/config.txt and various standard
    Linux configuration files.
-   raspinfo - full info


<a id="orgc77d3d0"></a>

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


<a id="orgb367911"></a>

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


<a id="orgf142073"></a>

## USECASES

reconnect HDMI

-   uncomment these two lines to /boot/config.txt
    -   hdmi<sub>force</sub><sub>hotplug</sub>=1


<a id="org0848dea"></a>

### enable ssh

1.  sudo raspi-config
2.  Interfacing Options -> P2 SSH -> YES
3.  sudo systemctl enable ssh
4.  ssh pi@[raspberrypi<sub>ip</sub><sub>address</sub>]


<a id="org9065dd8"></a>

### increase swap

-   sudo dphys-swapfile swapoff
-   sudo nano /etc/dphys-swapfile
    -   CONF<sub>SWAPSIZE</sub>=100
-   sudo dphys-swapfile setup - delete the original swap file and recreate it to fit the newly defined size.
-   sudo dphys-swapfile swapon
-   reboot


<a id="org2342763"></a>

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


<a id="org3710669"></a>

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


<a id="org318ed90"></a>

### links

-   <https://ph0en1x.net/106-rpi-gpio-installation-working-with-inputs-outputs-interrupts.html>
-   interactive pinout diagram. <https://pinout.xyz/>#


<a id="org546c533"></a>

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


<a id="orgaeec9de"></a>

## links

doc  <https://www.raspberrypi.com/documentation/computers/getting-started.html>


<a id="orgdd589a2"></a>

# Wifi USB


<a id="org709daec"></a>

## rtl8822bu - AC1300 USB

-   <https://github.com/cilynx/rtl88x2bu>
-   7ya <https://github.com/FomalhautWeisszwerg/rtl8822bu>
-   2ya <https://data.gpo.zugaina.org/menelkir/net-wireless/rtl8822bu/>
    -   4ya <https://github.com/EntropicEffect/rtl8822bu.git>

modern all modes <https://github.com/morrownr/88x2bu-20210702>

-   License  Realtek Corporation.


<a id="org60531a1"></a>

### info

-   Main chip: RTL8822BU
-   Bluetooth description: Bluetooth version V5.0
-   Interface type: USB3.0
-   Transmission distance: 10 meters
-   RF power: 10dBm (max)
-   Antenna Gain: 5dBi
-   Transmission speed: 3M/S

-   Supported operating system: WIN7/WIN8/10/11 operating system
-   Supported standards and protocols: IEEE 802.11n, IEEE 802.11g, IEEE 802.11b, IEEE 802.11a, IEEE 802.11ac
-   Transmission speed: 2.4GHz 400Mbps 5.8GHz 867Mbps

2

-   Bluetooth version V5.0
-   Interface type: USB3.0
-   Transmission distance: 10 meters
-   Antenna Gain: 5dBi

3

-   Wireless protocol: IEEE 802.11ac / a / b / g / n
-   Free-driven applicable system (OS): Windows Vista / XP / 7/8/10/11 "
-   Network Mode (Frequency): Dual Band 2.4GHz + 5.8GHz
-   Network speed support (WiFi Speed ): 2.4GHz - 400MPBS 5.8GHz - 867MPBS
-   Chipset: RTL8812BU
-   1300Mbps USB 3.0 WiFi Bluetooth 5.0 Adapter 2in1 Dongle
-   Product Specifications
-   Main chip: RTL8822BU
-   Bluetooth description: Bluetooth version V5.0
-   Interface type: USB3.0
-   Transmission distance: 10 meters
-   RF power: 10dBm (max)
-   Antenna Gain: 5dBi
-   Transmission speed: 3M/S
-   Supported operating system: WIN7/WIN8/10/11 operating system


<a id="org4886f76"></a>

# Banana Pi

-   <https://aliexpress.ru/store/302756>
-   wiki.banana-pi.org


<a id="orgc8cd50b"></a>

# GPGPU (General-Purpose computing on Graphics Processing Unit).

-   обработка плотнозаполненных матриц для нейросетевых алгоритмов.
-   поддерживается работа с разреженными матрицами.
-   ориентируются на высокопроизводительные вычисления (HPC) и задачи искусственного интеллекта, но могут использоваться и
    для решения собственно задач обработки графики.

GPGPU H100 (Hopper, 2022 год) снабжен командами поддержки алгоритмов динамического программирования, используемых в
 комбинаторных задачах, решаемых методом перебора.

Преимущества серверных процессоров AMD EPYC Rome и Milan архитектур Zen 2 и Zen 3 соответственно (а скоро ожидается и
 Zen 4) над Intel Xeon широко известны,

AMD Instinct MI100 ('Arcturus') на базе архитектуры CDNA (Compute Digital Network Architecture)

Nvidia GPGPU H100 на технологии 4 нм с архитектурой Hopper ситуация может измениться.

Формат команд как в практических процессорах, так и RISC–V соответствует концепции «load/store»,

Выполняемые во всем мире разработки процессоров-ускорителей можно разделить на три группы:

-   GPGPU (где сегодня лидируют Nvidia и AMD)
-   специализированные процессоры в виде FPGA или специализированных СБИС от крупных производителей, например, Xilinx,
    Intel, IBM, Google, Amazon и др.;
-   процессоры-ускорители, изобретаемые небольшими стартапами
-   изделия, создаваемые в проектах силовых ведомств

Intel PIUMA (программа DARPA HIVE), представляющего собой универсальный решатель для задач искусственного интеллекта,
 эффективно работающий с большими графовыми структурами данных, но на три порядка энергоэффективнее всех существующих
 GPGPU.

<https://www.osp.ru/os/2022/02/13056179>


<a id="org1c90e5e"></a>

# radio RTL-SDR

a computer based radio scanner for receiving live radio signals

-   ~$30 USB dongle
-   can receive freqquences 500 kHz up to 1.75 GHz
-   cannot transmit.

can:

-   as a spectrum analyzer
-   Receiving NOAA weather satellite images..
-   Triangulating the source of a signal.
-   Searching for RF noise sources.
-   Listening to the ISS (International Space Station).
-   Receiving images from Geostationary weather satellites.
-   Decoding aircraft ACARS short messages.
-   Tracking aircraft positions like a radar with ADSB decoding.

