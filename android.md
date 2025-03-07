
# Table of Contents

1.  [remote control](#orge6332a6)
2.  [launcher](#org19241d6)
3.  [Virtual Linux](#org67992d9)
    1.  [Termux - a terminal emulator](#org787978f)
4.  [keyboard](#org0d32eda)
5.  [tools](#org15d6960)
6.  [IDEs](#orgbfc7af2)
7.  [Tensorflow Lite](#org908313f)
    1.  [requirements](#org503f4c2)

;-**- mode: Org; fill-column: 110;-**-

Gentoo <https://wiki.gentoo.org/wiki/Android>

Since Android 5.0 (API 21) - each Android app runs in its own process and with its own instance of the Android
Runtime (ART) — an app runtime environment used by Android OS. ART performs the translation of the app’s
bytecode into native instructions that are later executed by the device’s runtime environment.


<a id="orge6332a6"></a>

# remote control

Scrcpy

-   <https://github.com/Genymobile/scrcpy>
-   Apache-2.0 license -
-   <https://packages.gentoo.org/packages/app-mobilephone/scrcpy>
-   require adb
-   adb can connect to a device over TCP/IP
    -   scrcpy &#x2013;tcpip=192.168.1.1       # default port is 5555
    -   scrcpy &#x2013;tcpip=192.168.1.1:5555
    -   scrcpy &#x2013;tcpipIt - will automatically find the device IP address, enable TCP/IP mode, then connect to the
        device before starting.
-   scrcpy &#x2013;no-power-on - Silently

Features:

-   Android device as a webcam (V4L2) (Linux-only)
-   copy-paste in both directions
-   mirroring with Android device screen off

android RAT


<a id="org19241d6"></a>

# launcher

GPLv3+ <https://github.com/Neamar/KISS>


<a id="org67992d9"></a>

# Virtual Linux


<a id="org787978f"></a>

## Termux - a terminal emulator

-   fdroid
-   GPLv3
-   <https://github.com/termux/termux-app>
-   <https://github.com/termux/termux-packages>
-   difference from linux:
    -   Termux does not follow Filesystem Hierarchy Standard
    -   all programs must be patched and recompiled to meet requirements of the Termux environment
    -   Termux is single-user

install:

-   apt update && apt upgrade
-   pkg install git wget curl php openssl

videos
<https://noobhacktube.com/>

Kali Linux inside of Termux <https://github.com/noob-hackers/kalimux>


<a id="org0d32eda"></a>

# keyboard

-   unexpected keyboard


<a id="org15d6960"></a>

# tools

We use only native mobile development tools
(Java, Kotlin, Objective-C, Swift)


<a id="orgbfc7af2"></a>

# IDEs

-   Android Studio:  IDE + Android SDK + Android Emulator. <https://en.wikipedia.org/wiki/Android_Studio>
    
    -   Binaries: Freeware,[3] Source code:[4][5] Apache License (However, it ships with some SDK updates that are
    
    under a non-free License through its AUR packager. Making it propietary.)
    
    -   SDK Platform Tools - part of Android SDK <https://developer.android.com/tools/releases/platform-tools>
        -   primarily: adb and fastboot
    -   Android cmdline-tools <https://developer.android.com/studio#command-tools>
        -   Alternative (opensource): Unoffical CMake-based build system for tools: adb or fastboot&#x2026; (no  sdkamanager )<https://packages.gentoo.org/packages/dev-util/android-tools>
            -   source: <https://github.com/nmeum/android-tools/>
-   The Android NDK: toolset that lets you implement parts of your app in native code, using languages such as C and C++
    
    sdkamanager used to install "platform SDK"


<a id="org908313f"></a>

# Tensorflow Lite

The TensorFlow Lite Converter is designed to analyze model structure and apply optimizations in order to make
 it compatible with the directly supported operators

convert TensorFlow model to TensorFlow Lite format.

-   supports a limited number of TensorFlow operations used in common inference models,
-   converter tool allows you to include additional operators - BUT can limit your ability use standard runtime
    deployment options, such as Google Play services.
-   Most TensorFlow Lite operations target both floating-point (float32) and quantized (uint8, int8) inference


<a id="org503f4c2"></a>

## requirements

iOS: TensorFlow Lite offers native iOS libraries written in Swift and Objective-C.

Android:

-   Android Studio 4.2 or higher
-   Android SDK version 21 or higher

