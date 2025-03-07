
# Table of Contents

1.  [tty - teletype or terminal](#orgd50ecc8)
    1.  [keys](#orga88707c)
        1.  [Caret notation](#org5c27eb5)
        2.  [my collected](#orgf972bd6)
        3.  [special Bash keys](#org3411f18)
        4.  [History:](#org70ea912)
        5.  [Process control:](#org7dead9b)
        6.  [Moving the cursor:](#orge2edecc)
        7.  [Editing:](#orgcf6b6f5)
    2.  [how it works](#org7f90ba7)
    3.  [terminal related commands:](#orgadf6ac5)
    4.  [escape codes](#org362d367)
    5.  [POSIX terminal interface](#orge2bd379)
    6.  [pseudo-teletypes (PTS)](#orge530990)
    7.  [history links](#orgead1777)
    8.  [tty scroll](#orgc054a4d)
        1.  [screen](#org52935c7)
    9.  [clipboard](#orgbad1253)
    10. [keymaps, dvorak](#org54c58d9)
    11. [ASCII](#org1f02538)
2.  [shell](#org02fc111)
    1.  [variables](#orgb93c14a)
    2.  [Enveronmental Variables](#org4048a45)
    3.  [Wildcard](#orga3d9fc0)
        1.  [Standard Wildcards (globbing patterns)](#org065d736)
        2.  [advanced](#org3ca399c)
        3.  [classes](#org9d35ca4)
        4.  [links](#orge8a530b)
    4.  [{} Curly Braces](#org084c895)
    5.  [{} Brace Expansion](#org2edb9c1)
    6.  [Extended globs](#orge2e96cf)
    7.  [stdin(0), stdout(1), and stderr(2), pipes](#orgc48d3a0)
        1.  [pipeline](#org7891d80)
        2.  [redirection](#org8a8a35a)
        3.  [close file descriptors/streams](#org9bef3ad)
        4.  ["2>&1 >file" vs "> file 2>&1"](#org2744106)
        5.  [stderr to pipe](#org41e894a)
        6.  [redirect stdout to file and to stdout](#org6383c1a)
        7.  [named pipe](#org2a2a5b3)
        8.  [not all output?](#orgef9fd3d)
    8.  [String processing](#org834440c)
        1.  [multiline string - HereDoc](#org0401ded)
        2.  [sort](#orgc75c4c1)
        3.  [cut - get column](#org352ed8a)
        4.  [sed](#orgefe3625)
        5.  [grep](#org2ada2d3)
        6.  [python](#org2eb778e)
        7.  [perl](#org50cf8ed)
        8.  [awk](#org2ee4f8e)
        9.  [uniq](#org16419d0)
        10. [strip remove leading and trailing white spaces](#org37bf706)
        11. [tail](#org463c0cb)
    9.  [Process Control](#orgcf24fdc)
    10. [Programming](#org57056b7)
        1.  [shebang](#org19e6def)
        2.  [pros and cons](#orgccd9fcb)
        3.  [Hello World.sh, scriptinga](#orga95f077)
        4.  [arguments](#org2b13ba6)
        5.  [array](#org7a371c7)
        6.  [comparision Posix](#orgbfd2339)
        7.  [numbers comparision](#orgec5c342)
        8.  [strings comparision](#org1916341)
        9.  [if](#org80e3509)
        10. [loop](#org3521c92)
        11. [file comparision](#org14fff60)
        12. [functions](#org2e608e8)
        13. [debug ](#org5837e65)
        14. [exit status](#orge6fb08a)
        15. [generate random](#org42d5208)
        16. [documentation](#orgfe7c096)
        17. [best practices](#orgd818314)
        18. [export](#orga2cd112)
        19. [null command](#orgc2dee5d)
        20. [multiline comment](#orgaa2f177)
        21. [read](#org6e7e3a9)
        22. [Templates](#orgb472853)
        23. [links](#orgfe3c4c8)
    11. [set builtin ](#orgf03a13e)
        1.  [usage](#orgc095649)
        2.  [traps](#org01fa78e)
    12. [ls](#org8e8ad96)
        1.  [get direcotories](#org08718e2)
        2.  [Linux File Timestamps](#org1e0f023)
    13. [pushd/popd and dirs](#orgf0a017f)
    14. [sh script](#org3106779)
    15. [source & ./ & exec](#org8466713)
    16. [ariphmetic](#org3abcd71)
    17. [execute command](#org981ae4b)
    18. [xargs](#org3d8ac25)
    19. [history save with time](#org2561804)
    20. [id -u user](#orgf5b5010)
    21. [diff](#orgf6c7338)
    22. [date](#orgccf64b5)
    23. [ps ](#org3eb7704)
        1.  [Column	Description](#org8a49566)
        2.  [stat code with description](#org10892a1)
    24. [top ](#orgcf4d424)
        1.  [view description](#org03fa665)
    25. [pgrep](#org80551b7)
    26. [vmstat](#org15e20c1)
    27. [pmap](#org8dbfbaf)
    28. [find](#org0275051)
        1.  [find [options] [starting-point&#x2026;] [ex‐pression]](#org412c509)
        2.  [links](#orged040b8)
    29. [dd](#orgc519baf)
        1.  [usecases](#orgd562d1e)
        2.  [bs](#org2638002)
        3.  [cteate disk](#org66a6f33)
    30. [access control to files](#orgc811cdf)
    31. [for external storages](#org9e9842a)
    32. [filesystem block size](#orgff8fe02)
    33. [tar](#orga2d586f)
    34. [compression](#org72a5646)
        1.  [tar.7z](#orgc04725e)
        2.  [zip](#org28fbac8)
        3.  [links](#org18c4777)
    35. [curl](#org91f1c2f)
        1.  [SOCKS5 proxy](#orgd709ee8)
        2.  [mimic browser request:](#org0786293)
        3.  [POST GET](#org0482a02)
        4.  [POST paramters](#org4a98394)
        5.  [FTP](#org34fdb5b)
    36. [du - file space usage](#orgbb75798)
    37. [man, info, help](#org649b2d4)
        1.  [history](#orgcc11b0f)
        2.  [man](#orgb3b90b6)
        3.  [info ](#org6ff5448)
    38. [less](#org73b9c34)
    39. [date](#org6edc141)
    40. [tee](#org66ef7a6)
        1.  [freeze problem](#org2238786)
    41. [time](#org9292bde)
    42. [lsfd](#orge17e740)
    43. [fuser](#orga647c6e)
    44. [administration commands](#org92f203d)
        1.  [memory](#org4bf0051)
    45. [USECASES](#orgfd0a3a9)
    46. [USECASE: save output of command to cash](#org515af67)
    47. [USECASE: case - set environment varibles per directory after cd command](#orgf207491)
    48. [USECASE: find N last modified files in current directory and subdirs](#org60f1092)
    49. [links](#org8b096d2)
3.  [Bash new features](#org01fd8eb)
    1.  [links](#org4342e43)
4.  [tmux](#orgdff4391)
    1.  [status](#orgf990c5e)
    2.  [terms](#org4a69c6c)
    3.  [keys](#orgdfaa4db)
    4.  [commands](#org8036fcd)
    5.  [xorg start and terminal unused](#orgfbade50)
    6.  [xorg system clipboard - How to copy to clipboard?](#org73d7697)
    7.  [kill deattached sessions](#org8723310)
    8.  [option](#org65d45b1)
    9.  [rebind keys](#orgf41fc04)
5.  [SSH](#org225cae3)
    1.  [config files](#orgf3a3877)
    2.  [permissions](#org6a85925)
    3.  [authentication types](#org2e616c6)
    4.  [usage](#org5c2b864)
    5.  [commands](#org1fbaa88)
    6.  [1) ssh server - password](#org8e1d3cb)
    7.  [2) ssh server - generate key - public key and private key](#org86118c0)
    8.  [3) sftp server](#orgac7af4e)
    9.  [4) X11 Forwarding](#org18c9f70)
    10. [5) sshfs - client](#orge28348d)
    11. [Internet over socks](#orgafce305)
    12. [DNS over socks](#org3c34395)
    13. [ssh-agent](#org60a09ee)
    14. [agent forwarding problem](#org5e1ed8c)
    15. [ssh-copy-id](#org1696731)
    16. [inside of ssh](#org7ac8c2a)
    17. [old](#org2b0340c)
    18. [githib ~/.ssh/config](#orgf5da974)
    19. [key type](#org9ba9da2)
    20. [security](#org9b82e4b)
    21. [Port Forwarding/Tunneling](#org68db1fe)
        1.  [Local](#orgcc6e0b0)
        2.  [Remote](#orge146229)
        3.  [Dynamic](#org745171c)
        4.  [examples](#org9afadc8)
    22. [Reverse SSH Tunnel](#orgd8fb5c5)
    23. [USE CASES](#org39640e3)
    24. [rsync](#orgc56f3c6)
        1.  [troubleshooting](#org220b844)
    25. [user with limited permissions](#org669247b)
    26. [links](#orgacbf0ce)
    27. [ssh over socks5](#org5efe08d)
    28. [problems](#org2581748)
    29. [ssh as a tor hidden service ](#org4d9fa08)
    30. [ssh systemd service](#orgc14aabf)
    31. [rsync over ssh](#orga069aa4)
    32. [timeouts](#org395813f)
6.  [Text User Interface (TUI)](#org214215c)
7.  [jq - JSON parser](#org5724100)
    1.  [output format](#org7a7fa1f)
    2.  [access](#org5351403)
    3.  [merge](#org85c1efd)
    4.  [building](#org981113a)
8.  [fish](#org3409da9)
9.  [print JSON](#orge99d761)

;-**- mode: Org; fill-column: 110;-**-


<a id="orgd50ecc8"></a>

# tty - teletype or terminal


<a id="orga88707c"></a>

## keys

-   <https://ss64.com/bash/syntax-keyboard.html>
-   $ info readline
-   <https://git.savannah.gnu.org/cgit/readline.git/tree/doc/rluserman.info>
-   man termios

It's basically a device (implemented in software nowadays)


<a id="org5c27eb5"></a>

### Caret notation

-   caret (^)

Often a control character can be typed on a keyboard by holding down the Ctrl and typing the character shown
 after the caret.

Caret notation dont support Shift key. ^K - key should be uppercase


<a id="orgf972bd6"></a>

### my collected

    Ctrl+-		undo
    
    Ctrl+[		Escape
    Ctrl+I		Tab
    Ctrl+M		Enter
    
    Autocompletion:
    Alt+/		autocompletion for path
    Alt-*		list all completion for command/path
    
    Ctrl+J		Newline
    Ctrl+v		tells the terminal to not interpret the following character, so Ctrl+v Ctrl-I will display a tab character,
    similarly Ctrl+v ENTER will display the escape sequence for the Enter key: ^M
    
    Ctrl + C	SIGINT, Break command
    Ctrl + Z	in background, commands: jobs, fg, bg
    Ctrl + D	SIGTSTP, logout
    Ctrl + \	SIGQUIT
    
    Ctrl + XX	toggle cursor from current position to begining and back
    Alt+U/L	to UPPER/LOWER case word
    Alt+C		upper first letter of word
    
    Ctrl/Alt + D: 	Delete one char/to end of word starting at the cursor
    
    Ctrl + u/k	erase line to begining/end of line
    Ctrl + w	cut word before cursor
    Alt + k	cut word before cursor
    Alt + b		cut word after cursor
    Ctrl+y		yank
    
    Alt + c	capitalize word after cursor
    
    
    Ctrl+S 	Stops all output on-screen (XOFF).
    Ctrl+Q 	Turns all output stopped on-screen back on (XON). Also, closes an application window.
    
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
    
    M-O	in console activates when some key is pressed and holded for some time

-   <https://ss64.com/bash/syntax-keyboard.html>
-   <https://catern.com/posts/terminal_quirks.html>


<a id="org3411f18"></a>

### special Bash keys

<https://git.savannah.gnu.org/cgit/bash.git/tree/bashline.c?id=3ba697465bc74fab513a26dea700cc82e9f4724e#n957>
<https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html>
C-x ~ - bash<sub>possible</sub><sub>username</sub><sub>completions</sub>
C-x @ - bash<sub>complete</sub><sub>hostname</sub>
C-x C-$ - bash<sub>complete</sub><sub>variable</sub>
C-x C-! - bash<sub>complete</sub><sub>command</sub>
C-x / - bash<sub>complete</sub><sub>filename</sub>
C-x C-e - Bash attempts to invoke $FCEDIT, $EDITOR, and emacs as the editor, in that order.
C-x C-v - Bash version
C-x C-r - re-reads this init file, thus incorporating any changes that you might have made to it.

Alt+number - repeat next key

C-\_ or C-x C-u  Undo the last editing command. You can undo all the way back to an empty line.


<a id="org70ea912"></a>

### History:

      Ctrl + r   Recall the last command including the specified character(s).
                 searches the command history as you type. Ctrl + Shift + r - reverse reverse-i-search
                 Equivalent to : vim ~/.bash_history.
      Ctrl + n/p  Next/Previous command in history (i.e. walk back through the command history).
    
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


<a id="org7dead9b"></a>

### Process control:

    
    Ctrl + C   Interrupt/Kill whatever you are running (SIGINT).
    Ctrl + l   Clear the screen.
    Ctrl + s   Stop output to the screen (for long running verbose commands).
               Then use PgUp/PgDn for navigation.
    Ctrl + q   Allow output to the screen (if previously stopped using command above).
    Ctrl + D   Send an EOF marker, unless disabled by an option, this will close the current shell (EXIT).
    Ctrl + Z   Send the signal SIGTSTP to the current task, which suspends it.
               To return to it later enter fg 'process name' (foreground).


<a id="orge2edecc"></a>

### Moving the cursor:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">Ctrl + a</td>
<td class="org-left">Go to the beginning of the line (Home)</td>
</tr>


<tr>
<td class="org-left">Ctrl + e</td>
<td class="org-left">Go to the End of the line (End)</td>
</tr>


<tr>
<td class="org-left">Ctrl + p</td>
<td class="org-left">Previous command (Up arrow)</td>
</tr>


<tr>
<td class="org-left">Ctrl + n</td>
<td class="org-left">Next command (Down arrow)</td>
</tr>


<tr>
<td class="org-left">Alt + b</td>
<td class="org-left">Back (left) one word</td>
</tr>


<tr>
<td class="org-left">Alt + f</td>
<td class="org-left">Forward (right) one word</td>
</tr>


<tr>
<td class="org-left">Ctrl + f</td>
<td class="org-left">Forward one character</td>
</tr>


<tr>
<td class="org-left">Ctrl + b</td>
<td class="org-left">Backward one character</td>
</tr>


<tr>
<td class="org-left">Ctrl + xx</td>
<td class="org-left">Toggle between the start of line and current cursor position</td>
</tr>
</tbody>
</table>


<a id="orgcf6b6f5"></a>

### Editing:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">Ctrl + L</td>
<td class="org-left">Clear the Screen, similar to the clear command</td>
</tr>


<tr>
<td class="org-left">Alt + Del</td>
<td class="org-left">Delete the Word before the cursor.</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Alt + d</td>
<td class="org-left">Delete the Word after the cursor.</td>
</tr>


<tr>
<td class="org-left">Ctrl + d</td>
<td class="org-left">Delete character under the cursor</td>
</tr>


<tr>
<td class="org-left">Ctrl + h</td>
<td class="org-left">Delete character before the cursor (Backspace)</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Ctrl + w</td>
<td class="org-left">Cut the Word before the cursor to the clipboard.</td>
</tr>


<tr>
<td class="org-left">Ctrl + k/u</td>
<td class="org-left">Cut the Line after/before the cursor to the clipboard.</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Alt + t</td>
<td class="org-left">Swap current word with previous</td>
</tr>


<tr>
<td class="org-left">Ctrl + t</td>
<td class="org-left">Swap the last two characters before the cursor (typo).</td>
</tr>


<tr>
<td class="org-left">Esc  + t</td>
<td class="org-left">Swap the last two words before the cursor.</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">ctrl + y</td>
<td class="org-left">Paste the last thing to be cut (yank)</td>
</tr>


<tr>
<td class="org-left">Alt + u</td>
<td class="org-left">UPPER capitalize every character from the cursor to the end of the current word.</td>
</tr>


<tr>
<td class="org-left">Alt + l</td>
<td class="org-left">Lower the case of every character from the cursor to the end of the current word.</td>
</tr>


<tr>
<td class="org-left">Alt + c</td>
<td class="org-left">Capitalize the character under the cursor and move to the end of the word.</td>
</tr>


<tr>
<td class="org-left">Alt + r</td>
<td class="org-left">Cancel the changes and put back the line as it was in the history (revert).</td>
</tr>


<tr>
<td class="org-left">ctrl + _</td>
<td class="org-left">Undo</td>
</tr>
</tbody>
</table>


<a id="org7f90ba7"></a>

## how it works

<https://unix.stackexchange.com/questions/4126/what-is-the-exact-difference-between-a-terminal-a-shell-a-tty-and-a-con>
<https://dev.to/napicella/linux-terminals-tty-pty-and-shell-192e>
<https://www.oreilly.com/library/view/linux-device-drivers/0596005903/ch18.html>
<https://en.wikipedia.org/wiki/POSIX_terminal_interface>
<https://habr.com/ru/post/460257/>
<https://medium.com/securitythread/linux-terminal-subsystem-d000475c8dd>
www.embeddedlinux.org.cn/essentiallinuxdevicedrivers/final/ch06lev1sec4.html

tty - teletypewriter <https://en.wikipedia.org/wiki/Teleprinter>

-   terminal - became a computer program in the kernel which would send characters directly to the TTY
    driver, read from it and print to the screen.
    -   is a character-oriented device, comprising streams of characters received from and sent to the
        device,  dev/tty - device which implements a number of additional commands (ioctls) beyond read and write.
    -   consist of:
        -   character device interface ( open, read, write, close …)
        -   Line discipline
        -   driver - keyboard IO, display
    -   may be: kernel program or pseudo terminal or serial device (old)
    -   communicate with the terminal through terminal character device file
-   terminal emulator - the kernel program emulate the physical terminal device. it listens for events
    coming from the keyboard and sends it down to the driver
-   pseudo-terminal (pty) - provided by terminal emulators - it's not a kernel program but one that
    runs in the user land.
-   System console - interface more
    1.  physical device consisting of a keyboard and a screen
    2.  text entry and display device for system administration messages
-   Virtual console/virtual terminal - Ctrl+Alt+F1234
    -   On each virtual terminal, a getty process is run, which in turn runs /bin/login to authenticate a user.
    -   supported at the Linux kernel level
    -   are emulated text terminals, using the keyboard and monitor of a personal computer or workstation
-   terminal monitor program spawns (sets TERM env - Specifies the terminal type.)
    -   may be:
        -   getty TERM=linux
        -   SSH server ( to the same terminal type as the SSH client)
        -   software terminal emulator, using a pseudoterminal ( sets the TERM environment variable to
            specify the type of terminal that it is emulating)
            -   GNU Screen program sets *screen* as the terminal type.
-   shell - user space app
-   escape code - . Certain sequences of bytes, most starting with an ASCII escape character and a
    bracket character, are embedded into text to control cursor location, color, font styling, and
    other options on video text terminals and terminal emulators.
    -   man console<sub>codes</sub> - Linux console escape and control sequences

Terminal emulator(get keys and draw gui) -> PTY master -> tty driver(with line discipline) -> pty slave -> bash

По умолчанию TTY устройство работает в каноничном режиме с включенным эхо (echoing). Эхо — это
отображение введенных вами символов на экране.

GNU Readline - library that provides in-line editing and history capabilities - supports both Emacs and vi
 editing modes

terminfo - used by TERM enveronmental variable. which strings to send for clear screen, move cursor, etc.

-   database: /usr/share/terminfo/\*/\* - /etc/terminfo/\*/\*
-   default = /etc/terminfo/l/linux

agetty - opens a tty port


<a id="orgadf6ac5"></a>

## terminal related commands:

-   who
-   w
-   last
-   tty
-   ps
-   stty - change terminal settings, prints baud rate, line discipline, and deviations from stty  sane
    -   stty -a  - get all
    -   stty icanon -echo - disable echo
    -   stty raw echo
    -   stty <control-character> <string>
    -   stty erase 0
-   reset - reset terminal after cat binary file
-   infocmp  - compare or print out terminfo descriptions


<a id="org362d367"></a>

## escape codes

The escape codes received from the terminal signify things such as function key, arrow key, and
other special keystrokes (home key, end key, help key, PgUp key, PgDn key, insert key, delete key,
and so forth)


<a id="orge2bd379"></a>

## TODO POSIX terminal interface


<a id="orge530990"></a>

## pseudo-teletypes (PTS)

The multiplexor is the master, and the PTS are the slaves. The multiplexor is addressed by the
kernel through the device file located at /dev/ptmx.


<a id="orgead1777"></a>

## history links

<https://www.computernetworkingnotes.com/linux-tutorials/linux-virtual-console-and-terminal-explained.html>
<https://www.howtogeek.com/428174/what-is-a-tty-on-linux-and-how-to-use-the-tty-command/>


<a id="orgc054a4d"></a>

## tty scroll

-   tmux


<a id="org52935c7"></a>

### screen

Ctrl-A, Esc - now Page Up, Page down
Esc - exit

without:

-   Ctrl+z - background
-   $ fg - front

Scroll:
Ctrl-A, Esc - now Page Up, Page down

-   screen - start
-   Ctrl+a+c create new
-   Ctrl+a+" list

-   Ctrl+a+d deattach
-   Ctrl+a+b next window
-   Ctrl+a   to last used
-   Ctrl+a+0 switch to 0 screen
-   Shift+a - Set title for window.

Copy/paste

-   Ctrl-A, Esc
-   Enter, Enter
-   Ctrl-A, ] - paste


<a id="orgbad1253"></a>

## clipboard

1.  emerge x11-misc/xsel
    -   bind '"\C-p": "\C-e\C-u xsel <<"EOF"\n\C-y\nEOF\n\C-y"'
2.  emerge x11-misc/xclip
    -   cat a | xclip -sel clip

1.  configure

    tmux show-options -g | grep status


<a id="org54c58d9"></a>

## keymaps, dvorak

ubuntu: apt install console-keymaps

-   loadkeys /usr/share/keymaps/i386/dvorak/dvorak.kmap.gz


<a id="org1f02538"></a>

## ASCII

    0 ^@ 	\0 	Null
    1 ^A 		Start of Heading
    2 ^B 		Start of Text
    3 ^C 		End of Text
    4 ^D 		End of Transmission
    5 ^E 		Enquiry
    6 ^F 		Acknowledgement
    7 ^G 	\a 	Bell
    8 ^H 	\b 	Backspace[e][f]
    9 ^I 	\t 	Horizontal Tab[g]
    10 ^J	\n 	Line Feed
    11 ^K 	\v 	Vertical Tab
    12 ^L	\f 	Form Feed
    13 ^M	\r 	Carriage Return[h]
    14 ^N		Shift Out
    15 ^O		Shift In
    16 ^P 		Data Link Escape
    17 ^Q		Device Control 1 (often XON)
    18 ^R		Device Control 2
    19 ^S		Device Control 3 (often XOFF)
    20 ^T		Device Control 4
    21 ^U 		Negative Acknowledgement
    22 ^V 		Synchronous Idle
    23 ^W 		End of Transmission Block
    24 ^X 		Cancel
    25 ^Y 		End of Medium
    26 ^Z 		Substitute
    27 ^[ 	\e[i] 	Escape[j]
    28 ^\ 		File Separator
    29 ^] 		Group Separator
    30 ^^ 		Record Separator
    31 ^_ 		Unit Separator
    
    32 space
    33 !	Exclamation mark
    34 "	Double quotes (or speech marks)
    35 #	Number sign
    36 $	Dollar
    37 %	Per cent sign
    38 &	Ampersand
    39 '	Single quote
    40 (	Open parenthesis (or open bracket)
    41 )	Close parenthesis (or close bracket)
    42 *	Asterisk
    43 +	Plus
    44 ,	Comma
    45 -	Hyphen-minus
    46 .	Period, dot or full stop
    47 /	Slash or divide
    48 0
    49 1
    50 2
    51 3
    52 4
    53 5
    54 6
    55 7
    56 8
    57 9
    58 :	Colon
    59 ;	Semicolon
    60 <	Less than (or open angled bracket)
    61 =	Equals
    62 >	Greater than (or close angled bracket)
    63 ?	Question mark
    64 @, `, @	At sign
    65 A
    66 B
    67 C
    68 D
    69 E
    70 F
    71 G
    72 H
    73 I
    74 J
    75 K
    76 L
    77 M
    78 N
    79 O
    80 P
    81 Q
    82 R
    83 S
    84 T
    85 U
    86 V
    87 W
    88 X
    89 Y
    90 Z
    91 [	Opening bracket
    92 \, ~, \	Backslash
    93 ]	Closing bracket
    94 ↑, ^	Caret - circumflex
    95 ←, _	Underscore
    96 @, `	Grave accent
    97 a
    98 b
    99 c
    100 d
    101 e
    102 f
    103 g
    104 h
    105 i
    106 j
    107 k
    108 l
    109 m
    110 n
    111 o
    112 p
    113 q
    114 r
    115 s
    116 t
    117 u
    118 v
    119 w
    120 x
    121 y
    122 z
    123 {	Opening brace
    124 ACK, ¬, |	Vertical bar
    125 }	Closing brace
    126 ESC, |, ~	Equivalency sign - tilde
    127 DEL	Delete

sessions:

-   tmux new-session -d top
-   tmux ; C-b ( - switch to background session with top
-   C-b ) ; C-d - deattach from background session


<a id="org02fc111"></a>

# shell

You may indent or not indent however you like


<a id="orgb93c14a"></a>

## variables

${ varname } is general syntax for $variable

-   $\_ At shell startup, set to the pathname used to invoke the shell or shell script being executed
-   $1 - first parameter
-   $#: How many command line parameters were passed to the script.
-   $?: The exit status of the last process to run.
-   $$: The Process ID (PID) of the current script.
-   $\* is a single string that consists of all of the positional parameters, separated by the first character in the environment variable IFS
-   $@: All the command line parameters passed to the script. Cat be set: $set &#x2013; 1 2 3
-   $USER: The username of the user executing the script.
-   $HOSTNAME: The hostname of the computer running the script.
-   $SECONDS: The number of seconds the script has been running for.
-   $RANDOM: Returns a random number.
-   $LINENO: Returns the current line number of the script.
-   IFS (internal field separator), which is a space, TAB, and NEWLINE by default.
-   env | less # environment variables

my=Dave
my="Dave Green"
file<sub>count</sub>=$(ls $folder<sub>to</sub><sub>count</sub> | wc -l) # miltiline

export mt<sub>var</sub> # to save variables to outside of the script

multiline variable (heredoc):

    method1="This is line no.1\nThis is line no.3\nThis is line no.3"
    echo -e $method1
    
    
    read -r -d '' MULTI_LINE_VAR << EOM
    Print line 1.
    Print line 2.
    Print line 3
    EOM


<a id="org4048a45"></a>

## Enveronmental Variables

-   ( set -o posix ; set ) | less
-   env
-   printenv - same as env


<a id="orga3d9fc0"></a>

## Wildcard


<a id="org065d736"></a>

### Standard Wildcards (globbing patterns)

globbing for pathnames

used by nearly any command

-   man 7 glob
-   ^$ - begin and end
-   . - any single character
-   \\ - escaping
-   [] - character in range


<a id="org3ca399c"></a>

### advanced

move all except one:

-   shopt -s extglob
-   mv !(fileOne) ~/path/newFolder

    ls hello.???

    ls [a-p0-5]*.* # dot means dot

[!&#x2026;] or [^&#x2026;] which matches any character except the ones in the set.

brace expansion {}

-   it actually generates all the permutations of the pattern you specify and then performs wildcard expansion on the results.
-   echo d{a,e,i,u,o}g => dag deg dig dug dog
-   echo d{a..z}g =>  dag dbg dcg ddg deg dfg dgg dhg dig djg dkg dlg dmg dng dog dpg dqg drg dsg dtg dug dvg dwg dxg dyg dzg
-   echo {cat,dog} => cat dog
-   echo {cat,d\*} => cat dawg dg dig dog doug dug
-   echo {j{p,pe}g,png} => jpg jpeg png
-   echo .{mp{3..4},m4{a,b,p,v}} => .mp3 .mp4 .m4a .m4b .m4p .m4v


<a id="org9d35ca4"></a>

### classes

-   [:alpha:] 	It is used to match with any uppercase and lowercase letter and equivalent to [a-zA-Z].
-   [:digit:] 	It is used to match with any digits and is equivalent to [0-9].
-   [:alnum:] 	It is used to match any alphabet and digit. It is equivalent to [a-zA-Z].
-   [:upper:] 	It is used to match with uppercase latter only and equivalent to [A-Z]
-   [:lower:] 	It is used to match with uppercase latter only and equivalent to [a-z]
-   [:blank:] 	It is used to match with space and tab.
-   [:print:] 	It is used to match with printable characters.
-   [:cntrl:] 	It is used to match with non-printable characters.
-   [:space:] 	It is used to match with while-space.
-   [:xdigit:] 	It is used to match with hexadecimal digits.
-   [:ascii:] 	It is used to match with ASCII characters.
-   [:word:] 	It is used to alphanumeric characters including underscore(\_).


<a id="orge8a530b"></a>

### links

-   linux wildcard <https://tldp.org/LDP/GNU-Linux-Tools-Summary/html/x11655.htm>


<a id="org084c895"></a>

## {} Curly Braces

    a="asdasdvvv22"
    echo ${a//vvv}

    

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
    p=abc && echo ${p^^} # uppercase
    ABC
    p=ABC && echo ${p~} # change case of first letter
    aBC
    p=ABC && echo ${p~} # change case - lowercase or uppercase
    abc
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
    ${PARAMETER//PATTERN} #same
    
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

Split string:

    var=/home/bash/bash_hackers.txt
    echo ${var%_*}
    echo ${var##*_}


<a id="org2edb9c1"></a>

## {} Brace Expansion

-   ls \*{txt,log} list all files ending with txt or log in the current directory
-   cp ~/projects/adders/verilog/{half<sub>,full</sub>\_}adder.v . copy half<sub>adder.v</sub> and full<sub>adder.v</sub> to current directory
-   mv story.txt{,.bkp} rename story.txt as story.txt.bkp
-   cp story.txt{,.bkp} to create bkp file as well retain original
-   mv story.txt{.bkp,} rename story.txt.bkp as story.txt
-   mv story{,<sub>old</sub>}.txt rename story.txt as story<sub>old.txt</sub>
-   touch file{1..4}.txt same as touch file1.txt file2.txt file3.txt file4.txt
-   touch file<sub>x..z</sub>.txt same as touch file<sub>x.txt</sub> file<sub>y.txt</sub> file<sub>z.txt</sub>
-   rm file{1..4}.txt same as rm file1.txt file2.txt file3.txt file4.txt
-   echo story.txt{,.bkp} displays the expanded version 'story.txt story.txt.bkp' , useful to dry run before executing actual command


<a id="orge2e96cf"></a>

## Extended globs

-   ?(pattern-list) Matches zero or one occurrence of the given patterns
-   \*(pattern-list) Matches zero or more occurrences of the given patterns
-   +(pattern-list) Matches one or more occurrences of the given patterns
-   @(pattern-list) Matches one of the given patterns
-   !(pattern-list) Matches anything except one of the given patterns

sheck if enabled:

    $ shopt extglob
    extglob            on

ex.

    $ ls !(*.txt)
    main.c  math.h  power.log


<a id="orgc48d3a0"></a>

## stdin(0), stdout(1), and stderr(2), pipes

standard streams == file descriptors

Commands has:

-   0 <- terminal
-   1 -> terminal
-   2 -> terminal


<a id="org7891d80"></a>

### pipeline

-   '|&' equal to '2>&1 |' std out+err to std input
-   | - pipe stdout only
-   command >(command1) >(command2g) - pipe to two and more processes
-   command 2> >(command) >c - pipe
-   (command1 ; command2 ; command3) | command4


<a id="org8a8a35a"></a>

### redirection

-   redirect stdout to a file	ls > a.txt
-   redirect stderr to a file	2> a.txt
-   redirect stdout to a stderr	ls 1>&2 >&2
-   redirect stderr to a stdout	ls 2>&1
-   redirect stderr and stdout to a file	ls &> /dev/null
-   redirect stderr and stdout to stdout &>&1
-   redirect stderr and stdout to stderr &>&2

>&2 means copy file descriptor 2 to 1 both will refer to the 2

more:

-   command 3> file # open new file descriptor
-   command < file # standard input from file

-   tee a b c - redirection to multiple files (>a >b >c - not working)


<a id="org9bef3ad"></a>

### close file descriptors/streams

-   >&- 2>&- 3>&- # close 1,2,3
-   <&- # close 0


<a id="org2744106"></a>

### "2>&1 >file" vs "> file 2>&1"

2>& - do nothing becouse 0,1,2 -> points to terminal

command >file 2>&1 (or just &>)

-   stdout = file
-   stderr = file

command 2>&1 >file   - redirects only stdout to file

-   stderr is redirected to stdout
    -   stderr = stdout<sub>target</sub>
-   stdout = file


<a id="org41e894a"></a>

### stderr to pipe

command 2>&1 >/dev/null | grep 'something'

1.  First copy stderr to stdout - all stderr
2.  redirect stdout to /dev/null
3.  pipe stdout


<a id="org6383c1a"></a>

### redirect stdout to file and to stdout

    command | tee >(tee) > file


<a id="org2a2a5b3"></a>

### named pipe

the FIFO file must be opened on both ends

-   mkfifo pipe0 # create file
-   mkfifo -m 644 pipe0
-   echo "input message" > pipe0
-   cat pipe0


<a id="orgef9fd3d"></a>

### not all output?

script -c 'python -i <<< "print \\"test\\""'


<a id="org834440c"></a>

## String processing

get length

    ${#my_string}

-   echo '$(echo "upg")' = > $(echo "upg")
-   echo "$(echo "upg")" = > upg
    -   The special parameters \* and @ have special meaning when in double quotes in special cases
-   a="as\nasd $BASH $(echo wtf)(new line)"
-   a='as\nasd $BASH $(echo wtf)(new line)'
    -   echo $a => as\nasd $BASH $(echo wtf)
    -   echo "$a" => as\nasd $BASH $(echo wtf)(new line)
    -   echo -e $a => as(new line)asd $BASH $(echo wtf)
    -   echo -e "$a" => as(new line)asd $BASH $(echo wtf)(new line)
    -   printf '%q\n' "$a" => $'as\\\nasd $BASH $(echo wtf)\n'

general

-   cat
-   sed
-   grep
-   awk - excellent slicer and more
-   perl/python

special

-   sort
-   head/tail
-   cut
-   xargs - convert several lines to one line
-   uniq
-   cmp/diff
-   tr		replace characters
-   nl		number lines of files
-   paste	merge lines of files
-   rev		reverse lines characterwise
-   fold		wrap each input line to fit in specified width (-s break at spaces, -w 80)
-   shuf		get random lines
-   for item in list; do command $item done
-   expand and unexpand: convert between tabs and spaces
-   cut 		print part of each line of file separated by TAB or delimiter
-   paste and join: read two files into one
-   fmt, pr, fold, column, nl : text formatting


<a id="org0401ded"></a>

### multiline string - HereDoc

short for "Here Document," is a type of redirection

    [n]<<[-]word
           here-document
    delimiter

END, EOT, and EOF are common for world

If any part of word is quoted:

-   the delimiter is the result of quote removal on word
-   the lines in the here-document are not expanded, otherwise lines are subjected to parameter expansion,
    command substitution, and arithmetic expansion, the character sequence \newline is ignored, and ‘\\’ must be
    used to quote the characters ‘\\’, ‘$’, and ‘\`’.

‘<<-’ - all leading tab characters are stripped from input lines and the line containing delimiter.

quoting:

    cat << EOF
    $(echo Hello)
    EOF
    
    cat << 'EOF'
    $(echo Hello)
    EOF
    
    cat << "EOF"
    $(echo Hello)
    EOF
    
    cat << \EOF
    $(echo Hello)
    EOF

    Hello
    $(echo Hello)
    $(echo Hello)
    $(echo Hello)

declare variable:

    a=$(cat <<EOF
    s
    s
    EOF
    )
    echo -e "$a"

    s
    s

as=$(echo -e "s\ns")

echo $a  # s s
echo "$a"  # s\ns

cat - внешняя программа которой нет в bash

    set +e
    read -rd '' EMACS_EVAL <<EOF
    (progn
     (org-babel-tangle-file "./index.org"))
    EOF
    set -e

piping:

    cat << 'EOF' | base64 -d
    SGVsbG8KV29ybGQK
    EOF

    Hello
    World

Write to a file. The way to create script at remote server.

    cat <<EOF > print.sh
    #!/bin/bash
    echo \$PWD
    echo $PWD
    EOF

function - stores the information provided by the HereDoc into variables.

    readLines(){
            read greeting
            read name
    }
    
    readLines << EOF
    Hello
    $USER
    EOF
    
    echo $greeting
    echo $name

    Hello
    u

executing multiple commands on a remote machine:

    ssh username@host << EOF
    echo hello! # this commands will be executed on remote machine
    echo do your work!
    EOF
    
    sftp username@host << EOF
    put test.sh # run multiple SFTP commands automatically
    EOF

1.  links

    -   <https://www.gnu.org/software/bash/manual/html_node/Redirections.html#Here-Documents>
    -   <https://phoenixnap.com/kb/bash-heredoc>


<a id="orgc75c4c1"></a>

### sort

sort by column:

    sort -t, -nk3 user.csv

-   -t, - defines your delimiter as ,. (default delimeter - tab ? )
-   -n - gives you numerical sort. Added since you added it in your attempt. If your user field is text only
    then you dont need it.
-   -k3 - defines the field (key). user is the third field.

sort -k 2,2 -k 1,1 Hogwarts # sort by second and by first column

1.  -s, &#x2013;stable stabilize sort by disabling last-resort comparison

        a=$(cat <<EOF
        1   4
        1   2
        1   3
        1   1
        3   3
        2   1
        2   2
        EOF
        )
        echo "$a" | sort -nk1 -s
        echo
        echo "$a" | sort -nk1
    
        1   4
        1   2
        1   3
        1   1
        2   1
        2   2
        3   3
        
        1   1
        1   2
        1   3
        1   4
        2   1
        2   2
        3   3


<a id="org352ed8a"></a>

### cut - get column

cut -d "delimiter" -f (field number) file.txt

-   &#x2013;complement
-   &#x2013;output-delimiter=”delimiter”

cut -c [(k)-(n)/(k),(n)/(n)] filename

-   k denotes the starting position of the character
-   n denotes the ending position of the character in each line
-   if k and n are separated by “-” otherwise they are only the position of character in each line from the file
    taken as an input.

    ps -aux | tr -s ' ' | cut -d ' ' -f 2


<a id="orgefe3625"></a>

### sed

Default only change the first occurrence of the word on a line.

get line:

    echo -e "as\nasd" | sed -n '2p' => asd

split file by first occured character and number lines:

    sed -z -e 's/\//\\:\\:\n\//' -e 's/*/\\:\\:\n\*/' | sed -e '0,/^[^\/*]/ s/^[^\/*]/\\:\\:\n/' | nl


<a id="org2ada2d3"></a>

### grep

-   filter lines by pattern -
-   case insensitive grep -i "FILe"

-   -o only matching
-   -v invert match or NOT
-   -i case insensitive
-   -A num Print num lines of trailing context after each match. See also the -B and -C options.
-   -B num Print num lines of leading context before each match. See also the -A and -C options.
-   -C[num] Print num lines of leading and trailing context surrounding each match. The default is 2 and is
    equivalent to -A 2 -B 2. Note: no whitespace may be given between the option and its argument.
-   -m N - stop reading file after N matching lines

OR

-   dmesg | grep -i -E 'xx:xx.x|wlan|iwl|80211'
-   dmesg | grep -i -e 'xx:xx.x' -e wlan -e iwl -e 80211
-   grep -Ev "(127|192)"

first match

-   ip a | grep -o -m 1 wlan.

search in files:

-   grep -Rin patern
    -   n - line number, R - recursive

extract http links

-   cat a.html | grep -o 'href=\\"*.media[^\\"]\*/dl*[0-9]\*[^\\"]\*' | grep -o "/.\*" | sed 's#^#<http://site.onion>#' | xatrs torsocks wget &#x2013;user-agent="Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)"


<a id="org2eb778e"></a>

### python

split paragraphs:

-   cat aa | python -c "import sys; print(sys.stdin.read().split('123'))"
    -   ['asasd\n\n\n asdasd\n\n','asd\nas']


<a id="org50cf8ed"></a>

### perl

split paragraphs:

-   

bad try:

-   echo "aavbb" | perl -e '@a=<>; print( (split(*v*, join "", @a))[0] )' => "aa"


<a id="org2ee4f8e"></a>

### awk

-   echo -e "a\navbb" | awk -v RS='v' 'NR==1' - get a\na
-   ps ux | awk '{if($8=="Z") print}' - get column 8 if == "Z"
-   ps | awk '{print $2}' - get column 2


<a id="org16419d0"></a>

### uniq

MUST BE USED AFTER **sort**

-   -s n - skip n first characters
-   -w n - sort by n first characters
-   &#x2013;group - separate duplicates
-   -c - count unique


<a id="org37bf706"></a>

### strip remove leading and trailing white spaces

    vv="  asd  "
    v=$(echo $vv)
    echo $v


<a id="org463c0cb"></a>

### tail

skip first line of output:

    route -n | tail -n +2

search sentence or word in files with extension:

    grep -r -i --include=\*.txt 'searchterm' ./

-   -r: recursively
-   -i: ignore-case
-   &#x2013;include: all \*.txt: text files (escape with \\ just in case you have a directory with asterisks in the filenames)
-   'searchterm': What to search
-   ./: Start at current directory.

add prefix to every string

    echo -e "a23d\nasdasd" | sed 's/^/worker: /'


<a id="orgcf24fdc"></a>

## Process Control

-   top [2.24](#orgfad864d)
-   ps [2.23](#org40f33f8)
-   kill/killall/pkill
-   free
-   pgrep
-   fg - background child processes
-   jobs
    -   -l list
    -   -p process numbers

background

-   nohup command & - even after exiting the shell - ignore HUP (hangup) signal and therefore does not stop when the user logs out.
-   timeout 15 command &
-   ( sleep 1000 & ) - deattached from bash

Which process block file/folder?

-   ls -l /proc/\*/fd/\* | grep ~/Downloads
-   lsof/lsfd -l ~/Downloads
-   

-   fuser Downloads

$! - get pid of last started background child proces

run two processes in parallel in background :

    (python3 lsp-bridge/lsp_bridge.py & ) ; nohup python3 .local/bin/pylsp -v --tcp &


<a id="org57056b7"></a>

## Programming


<a id="org19e6def"></a>

### shebang

    #!/usr/bin/env bash
    #!/usr/bin/env sh

On most but not all systems, I recommend using:

    #!/bin/bash
    #!/bin/sh


<a id="orgccd9fcb"></a>

### pros and cons

pros:

-   Simple, easily understood
-   Quick to write
-   Doesn't take up much disk space
-   Reasonable chance of working on multiple operating systems without modification, if you know what you're doing

cons:

-   Slow execution (typically)
-   No sane or robust access to floating point math, complex data structures, database query results, etc. (depending on language)
-   Shebang line must be edited for each target system


<a id="orga95f077"></a>

### Hello World.sh, scriptinga

    #!/bin/sh
    #or
    #!/usr/bin/env bash
    set -u # Report Non-Existent Variables
    set -e # It terminates the execution when the error occurs. (does not work with piped commands. use Set -eo pipefail)
    set -o pipefail # exit execution if one of the commands in the pipe fails.
    # set -x # write to standard error a trace for each  command
    # set -n # do not execute only check syntax
    
    declare -r -i PORT_NUMBER=8080 # integer, read only
    declare -a my_array=( apple orange ) # indexed array
    
    # Processes a file.
    # $1 - the name of the input file
    # $2 - the name of the output file
    main(){
        local -r input_file="$1";  shift
        local -r output_file="$1"; shift
    }
    
    main "${@}"


<a id="org2b13ba6"></a>

### arguments

-   $@ - all
-   $0 - script name
-   $1-&#x2026;  - argumensts

easy to swap in future:

    main(){
        local -r input_file="$1";  shift
        local -r output_file="$1"; shift
    }

1.  check if executes with source or with exec

        if [ -n "$(echo $0 | grep a.sh)" ] ; then
            echo exec
        else
            echo source
        fi


<a id="org7a371c7"></a>

### array

-   array=(item1 item2 item3)
-   echo ${array[\*]} # echo item1 item2 item3
-   set &#x2013; item1 item2 item3
-   echo "$3" # Arrays indices start from 1
-   set &#x2013; "$@" 4 # add item
-   shift 2 # Remove first 2 items
-   for item in "$@"; do echo "$item"; done # loop
-   “${99}” - “$98” is not working

Associative Arrays / Hash Maps

-   hm="$(hm<sub>create</sub>)"
-   hm<sub>put</sub> "$hm" mykey myvalue
-   hm<sub>get</sub> "$hm" mykey
-   

length:

-   echo ${#array[@]}

Splice an Array:

-   ${arrayname[@]:start:end}

from start point to end:

-   v=${#a[@]}
-   echo ${a[@]:1:$v}


<a id="orgbfd2339"></a>

### comparision Posix

1.  ! EXPRESSION 	The EXPRESSION is false.
2.  -n STRING	 	The length of STRING is greater than zero.
3.  -z STRING 		The lengh of STRING is zero (ie it is empty).
4.  STRING1 = STRING2 	STRING1 is equal to STRING2
5.  STRING1 != STRING2 	STRING1 is not equal to STRING2
6.  INTEGER1 -eq INTEGER2 	INTEGER1 is numerically equal to INTEGER2
7.  INTEGER1 -gt INTEGER2 	INTEGER1 is numerically greater than INTEGER2
8.  INTEGER1 -lt INTEGER2 	INTEGER1 is numerically less than INTEGER2
9.  -d FILE 		FILE exists and is a directory.
10. -e FILE 		FILE exists.
11. -r FILE 		FILE exists and the read permission is granted.
12. -s FILE 		FILE exists and it's size is greater than zero (ie. it is not empty).
13. -w FILE 		FILE exists and the write permission is granted.
14. -x FILE 		FILE exists and the execute permission is granted.

Boolean Operations

-   && - is and
-   || - is or

-a means AND and -o means OR


<a id="orgec5c342"></a>

### numbers comparision

must be checked agains tested not empty values

-   = and != is safe for empty values
    "$n" = 1 - must be in ""

-   num1 -eq num2                  check if 1st  number is equal to 2nd number
-   num1 -ge num2                  checks if 1st  number  is greater than or equal to 2nd number
-   num1 -gt num2                  checks if 1st  number is greater than 2nd number
-   num1 -le num2                   checks if 1st number is less than or equal to 2nd number
-   num1 -lt num2                   checks if 1st  number  is less than 2nd number
-   num1 -ne num2                  checks if 1st  number  is not equal to 2nd number


<a id="org1916341"></a>

### strings comparision

variables must be in ""

-   var1 = var2     checks if var1 is the same as string var2
-   var1 != var2    checks if var1 is not the same as var2
-   var1 < var2     checks if var1 is less than var2
-   var1 > var2     checks if var1 is greater than var2
-   -n var1             checks if var1 has a length greater than zero
-   -z var1             checks if var1 has a length of zero

Substring:

    if [[ $full_string =~ "$substring" ]]; then
        echo "Found '$substr' in $full_string"
    else
        echo "'$substr' not found in $full_string"
    fi
    
    if echo "$full_string" | grep -q "$substring"; then
      echo "Found '$substring' in $full_string"
    else
      echo "'$substring' not found in $full_string"
    fi


<a id="org80e3509"></a>

### if

-   [] is just a reference to the command **test**
-   (( )) - ariphmetic

statements:

-   **if** [ $c == 5 ]
-   **then** echo ok
-   **elif** [ <some test> ]
-   **then** something
-   **else** something
-   **fi**

    if [ "5" == 6 ] ;then echo ok;else echo bad;fi

    test $c = 5;echo $?

    ERROR: if[ or [$c or 5] or 5 ];

1.  double square brackets

    -   Single [] are posix shell compliant condition tests. Portable.
    -   Double [[]] are an extension to the standard [] and are supported by bash and other shells (e.g. zsh, ksh)
        For example: || instead of -o and regex matching with =~
    -   [ is POSIX
    -   [[ is a Bash extension inspired from Korn shell
    
    Use [] whenever you want your script to be portable across shells. Use [[]] if you want conditional
    expressions not supported by [] and don't need to be portable.


<a id="org3521c92"></a>

### loop

-   while - while COMMAND; do done
-   until - same as while and inverse
-   for - for v in VARIABLE; do ? done ; if no "in VARIABLE" - in "$@" is assumed
-   select word in words - same as echo words | while IFS=" " read word; do

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
    
    # while read line;
    # do
    #     echo $line
    # done < $lines
    
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
    
    for j in `seq 0 24`; do echo we ; done
    
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
          *) echo "ERROR: Invalid selection"
          ;;
       esac
    done
    
    # loop files in current directory
    for filename in *; do echo "put ${filename}"; done
    
    # command for every line of file - can not use variables
    xargs -rd'\n' -I@ -a p2.txt echo @

    for myvar in "the first" "the second" "and the third" ; do
    	echo "This is ${myvar}"
    done

    for (( i = 1 ; i <= 3 ; i++ )) ; do
    	echo "i is ${i}"
    done


<a id="org14fff60"></a>

### file comparision

-   -d file                        checks if the file exists and is it’s a directory
-   -e file                        checks if the file exists on system
-   -w file                       checks if the file exists on system and if it is writable
-   -r file                        checks if the file exists on system and it is readable
-   -s file                        checks if the file exists on system and it is not empty
-   -f file                         checks if the file exists on system and it is a file
-   -O file                       checks if the file exists on system and if it’s is owned by the current user
-   -G file                        checks if the file exists and the default group is the same as the current user
-   -x file                         checks if the file exists on system and is executable
-   file A -nt file B         checks if file A is newer than file B
-   file A -ot file B          checks if file A is older than file B


<a id="org2e608e8"></a>

### functions

-   function must precede call.
-   exit - stop script
-   return - stop function

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


<a id="org5837e65"></a>

### debug <a id="org0479e5a"></a>

Display commands and their arguments as they are executed.

-   bash -x script-name
-   set -x - for bash

Display shell input lines as they are read.

-   set -v - for bash

export \_DEBUG=on #  intelligent DEBUG function

there is two way for debug: trap command and PROMPT<sub>COMMAND</sub>="echo Bye"

1.  links

    -   <https://www.cyberciti.biz/tips/debugging-shell-script.html>
    -   <https://habr.com/ru/articles/666982/>


<a id="orge6fb08a"></a>

### exit status

-   $?
-   exit 5

exit codes:

-   0           success
-   1-255       failure (in general)
-   1 : Miscellaneous errors, such as “divide by zero” and other impermissible operations.
-   2 : Missing keyword or command, or permission problem.
-   126         the requested command (file) can't be executed (but was found)
-   127         command (file) not found
-   128         according to ABS it's used to report an invalid argument to the exit uiltin, but I wasn't able to verify that in the source code of Bash (see code 255)
-   128 +        N the shell was terminated by the signal N (also used like this by various other programs), invalid argument to exit.
-   255          wrong argument to the exit builtin (see code 128)


<a id="org42d5208"></a>

### generate random

2 byte unsigned decimal integers,

    $ od -vAn -N2 -tu2 < /dev/urandom
    24352

1 byte signed decimal integer,

    $ od -vAn -N1 -td1 < /dev/urandom
    -78

4 byte unsigned decimal integers,

    $ od -vAn -N4 -tu4 < /dev/urandom
    3394619386

seconds since epoch

    date +%s%N | cut -b10-19

RANDOM env variable

    echo $RANDOM % 1000 + 1 | bc

shasum

    head -100 /dev/urandom | sha1sum | cut -d ' ' -f 1


<a id="orgfe7c096"></a>

### documentation

    # Processes a file.
    # $1 - the name of the input file
    # $2 - the name of the output file
    process_file(){
    }


<a id="orgd818314"></a>

### best practices

1.  safer scripts, see [2.11](#org138ba12):
    -   set -euxo pipefail
2.  Instead of, use:
    -   cd "${foo}"; &#x2026; ; cd ..
    -   ( cd "${foo}" &#x2026; )
    -   pushd "${foo}"; &#x2026; ; popd
3.  variables:
    -   preffer local
    -   global make readonle declare -r
    -   always refer as "${var}"
4.  Prepend a command with \\ to override alias/builtin lookup. E.g.:
    -   t() { ls ;}
    -   alias  t="ls .."
    -   t # refer to alias
    -   \t # refer to function
5.  For various reasons, printf is preferable to echo
    -   error() {  printf "${red}!!! %s${reset}\\\n" "${\*}" 1>&2 ;   }
6.  Name heredoc tags with what they’re part of, like:

    cat <<HELPMSG
      usage $0 [OPTION]... [ARGUMENT]...
    HELPMSG
    # Single-quote heredocs leading tag to prevent interpolation of text between them.
    cat <<'MSG'
      [...]
    MSG
    
    # 7)
    # this won't work:
      sudo printf "..." > /root/some_file
    
    # this will:
      printf "..." | sudo tee /root/some_file > /dev/null
    
    
    8) if
    # Don't do this
      if [ "$#" -ge "1" ] && [ "$1" = '-h' ] || [ "$1" = '--help' ] || [ "$1" = "-?" ]; then
        usage
        exit 0
      fi
    
    # Do this
      help_wanted() {
        [ "$#" -ge "1" ] && [ "$1" = '-h' ] || [ "$1" = '--help' ] || [ "$1" = "-?" ]
      }
    
      if help_wanted "$@"; then
        usage
        exit 0
      fi

1.  Check whether the script is running in the correct folder
    -   Allow the script to run in any folder
    -   Allow the script to run in any folder and locate input and output based on the environment
    -   Require the script to be run from a certain folder and test if folder is good.

2.  write log:

    echo "[${now}] Logfile for $scriptName:  $logFile" 2>&1 | tee $logFile

1.  Create documentation with -h and &#x2013;help
2.  Clean up function

    finish() {
      result=$?
      # Your cleanup code here
      exit ${result}
    }
    trap finish EXIT ERR # secuted on EXIT or ERR

grep pattern file | awk ‘{print $1}’

awk ‘/pattern/{print $1}’

1.  links

    -   <https://www.javacodegeeks.com/2013/10/shell-scripting-best-practices.html>
    -   <https://bertvv.github.io/cheat-sheets/Bash.html>
    -   <http://redsymbol.net/articles/bash-exit-traps/>


<a id="orga2cd112"></a>

### export

    export FLASK_RUN_HOST=localhost FLASK_RUN_PORT=8080 ; flask --app main run --no-debug

new bash session will have exports.

-   -n NAME - disable export
-   -f - export function
-   -p - same as env but in order of history of exports.


<a id="orgc2dee5d"></a>

### null command

    

creates the effect of block comments in Bash scripts.


<a id="orgaa2f177"></a>

### multiline comment

    : << 'END'
    This is a comment
    END

    $100


<a id="org6e7e3a9"></a>

### read

Read a line from the standard input.

-   -d delim	continue until the first character of DELIM is read, by default '\n'
-   -r 		If this option is given, backslash does not act as an escape character. The backslash is considered to be
    part of the line.

    read -ei asd: aaa ; echo $aaa
    >> asd:22345r
    >> asd:22345r

    read -d '' <<EOF ... EOF

Collect all input until EOF, exit code = 1

    read -d '' AAA
    # echo $AAA
    mypy -c "$AAA"


<a id="orgb472853"></a>

### Templates

in function check that argument was passed

    if [ -z "$1" ] ; then echo brute_loop no \$1 ; return 1 ; fi


<a id="orgfe3c4c8"></a>

### links

<https://devmanual.gentoo.org/tools-reference/bash/index.html>


<a id="orgf03a13e"></a>

## set builtin <a id="org138ba12"></a>

see [2.10.13](#org0479e5a)

    help set

Using + rather than - causes these flags to be turned off.

The current set of flags:

    echo $- # himBHs

-   &#x2013;  Assign any remaining arguments to the positional parameters.
-   -   Assign any remaining arguments to the positional parameters.
-   -e  Exit immediately if a command exits with a non-zero status.
-   -u  Treat unset variables as an error when substituting.
-   -f  Disable file name generation (globbing). disables filename expansion also known as globbing.
-   -o pipefail exit execution if one of the commands in the pipe fails.
-   -v  Print shell input lines as they are read.
-   -x  Print commands and their arguments as they are executed.
-   -C  If set, disallow existing regular files to be overwritten by redirection of output
-   -T  If set, the DEBUG and RETURN traps are inherited by shell functions.

set -e may result in some difficult to debug issues during loops because a failed command will <span class="underline">only exit the subshell created by the pipe</span>


<a id="orgc095649"></a>

### usage

Prevent unexpected errors, make shell safer:

    set -euxo pipefail

    # "unofficial" bash strict mode
    # See: http://redsymbol.net/articles/unofficial-bash-strict-mode
    set -o errexit  # Exit when simple command fails               'set -e'
    set -o errtrace # Exit on error inside any functions or subshells.
    set -o nounset  # Trigger error when expanding unset variables 'set -u'
    set -o pipefail # Do not hide errors within pipes              'set -o pipefail'
    set -o xtrace   # Display expanded command and arguments       'set -x'
    IFS=$'\n\t'     # Split words on \n\t rather than spaces


<a id="org01fa78e"></a>

### traps

Defines and activates handlers to be run when the shell receives signals
    or other conditions.

    trap --help

-   -l	print a list of signal names and their corresponding numbers
-   -p	display the trap commands associated with each SIGNAL<sub>SPEC</sub>

Besides traps(handlers) for signals, bash have 4 special traps:

-   EXIT to run on exit from the shell.
-   RETURN to run each time a function or a sources script finishes.
-   ERR to run each time command failure would cause the shell to exit if set -e is used.
-   DEBUG to execute before every command.

    trap "echo $BASH_COMMAND" DEBUG

add variable trace attribete to see when it used:

    declare -t VARIABLE=value
    trap "echo VARIABLE is being used here." DEBUG

    set -E # If set, the ERR trap is inherited by shell functions.
    set -o pipefail # exit execution if one of the commands in the pipe fails.
    set -u # Report Non-Existent Variables
    trap 'echo $? $LINENO :${BASH_LINENO[@]} "$BASH_COMMAND" ::${FUNCNAME[@]}' ERR

1.  links

    -   <https://selivan.github.io/2022/05/21/bash-debug.html>
    -   <https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_12_02.html>


<a id="org8e8ad96"></a>

## ls

directory -  flat file that maps an name to inode on the filesystem.

-   ls -al -tr - sort by time, reversal (latest at the bottom) (desc)
-   ls \* - directories and their files/folders - deep 1
-   ls -d \*/ - only directories
-   ls -d .\* - dot files
-   ls -d /home/user/{**,.**} - directories and all files, include hidden with full path
-   ls -F appends symbols to filenames \*/=>@|
    -   @ means symbolic link (or that the file has extended attributes).
    -   \* means executable.
    -   = means socket.
    -   | means named pipe.
    -   > means door.
    -   / means directory.

output in columns with classify

    l='ls -F --color' ; paste -d: <($l | grep '/$') <($l | grep '*$') <($l | grep '@$') <($l | grep -v '[/@*]$') | tac| column -t -s ":" -N FOLDERS,EXECUTABLES,LINKS,OTHER


<a id="org08718e2"></a>

### get direcotories

-   ls -d \*/
-   ls -l | grep ^d
-   find . -maxdepth 1 -type d
-   echo \*/
-   tree -d -L 1


<a id="org1e0f023"></a>

### Linux File Timestamps

-   mtime - modified time - write file's conetents
-   ctime - change time - tracks metadata changes such as ownership and permissions. It includes renaming a file.
-   atime - (access time) anyone accessed the file

ls - default mtime

-   u - atime
-   c - ctime


<a id="orgf0a017f"></a>

## pushd/popd and dirs

-   dirs -v - to print stack
-   dirs - cd history without pushd/popd.
    -   dirs +0 - current directory
    -   dirs +1 - last directory
    -   ~1 = dirs +1
    -   ~-0 dirs -0 - first directory in history

<https://www.howtogeek.com/659146/how-to-use-pushd-and-popd-on-linux/>


<a id="org3106779"></a>

## sh script

    #!/usr/bin/env bash
    set -euxo pipefail
    
    help_wanted() {
        [ "$#" -ge "1" ] && [ "$1" = '-h' ] || [ "$1" = '--help' ] || [ "$1" = "-?" ]
    }
    
    if help_wanted "$@"; then
        usage
        exit 0
    fi


<a id="org8466713"></a>

## source & ./ & exec

in bash . and source equal
in POSIX:

-   ./script creates a new shell and executes each command in the script within the new shell. When
    the end of the script file is encountered, the new shell exits. Any changes in the new shell
    caused by the script are lost when the shell exits. (no screen formations)
-   **source** execute a shell script within the context of the current shell. Since execution takes place
    within the context of the current shell, any changes in the shell are retained following the
    completion of the shell. (like by yourself)
-   . script - in the current shell without forking a sub shell (equal to **source**)
-   exec ./script - exit shell after finish

The exec command will execute a command in place of the current shell, that is, it terminates the
current shell and starts a new process in its place.

exec was often used to execute the last command of a shell script. This would kill the shell
slightly earlier; otherwise, the shell would wait until the last command was finished. This practice
saves a process and some memory.

try exec ls. you will be logged out from your login shell.


<a id="org3abcd71"></a>

## ariphmetic

let m=(4 \* 1024)
echo $((2\*2))
((m-=3)) # m=m-3
((m++)

the let command is not specified by POSIX®. The portable alternative is:
[ "$(( <EXPRESSION> ))" -ne 0 ]

echo $((2#010)) - binary to decimal

expr

-   is command should be preffered
-   cannot assign directly to bash variables but instead returns a result on stdout
-   takes each operator it recognizes as a separate word and then concatenates them into a single expression that's evaluated according to it's own rules (which differ from shell arithmetic).


<a id="org981ae4b"></a>

## execute command

$() or \`\`

. file == source file - execute commands in file in current shell. no need x right
./file - execute file - need x right

$( ) has the side-effect of removing trailing newlines from the results.


<a id="org3d8ac25"></a>

## xargs

-   -0, &#x2013;null - Input items are terminated by a null character instead of by whitespace - file or directory
    names containing spaces or newlines are correctly handled
-   


-   transfer input to one line usable as arguments (default echo)
-   xargs -n 2 # execute command for every two argument, ex diff

ex

-   find /path -name '\*.foo' | xargs -P 24 -I '{}' /cpu/bound/process '{}' -o '{}'.out
    -   -P n - Run up to max-procs processes at a time
-   cat lines | xargs | tr ' ' ',' => line1,line2,line3,line4


<a id="org2561804"></a>

## history save with time

with timestamp
echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.bash<sub>profile</sub>


<a id="orgf5b5010"></a>

## id -u user

get user id


<a id="orgf6c7338"></a>

## diff

<https://www.math.utah.edu/docs/info/diff_3.html>

-   default
-   “Copied” context with -c
-   “Unified” context with -u Instead of displaying the two files separately, it merges them together.

diff one two

Default context - no longer widely used (used by git)

-   \`8a12,15' (lar) - after line 8 of one append lines 12-15 of two.
-   '5,7c8,10' (fct) - change lines 5&#x2013;7 of one to read as lines 8&#x2013;10 of two
-   \`5,7d3' (rdl) - delete lines 5&#x2013;7 of one (which at 3 in two)
-   < - in one
-   > - in two

“Copied” context - has context lines without pre-symbols

-   '!' - changing like
-   '+' - line of two file (nothin in one)
-   '-' - line of one file (nothin in two)

“Unified” context - more compact because it omits redundant context lines. GNU patch can apply this format.

-   **\*** from-file from-file-modification-time
-   &#x2014; to-file to-file-modification time
-   @@ from-file-range to-file-range @@
-   '+' line of two file
-   '-' line of one file

Differences Side by Side diff -y :

-   \`|'    The corresponding lines differ, and they are either both complete or both incomplete.
-   \`<'    The files differ and only the first file contains the line.
-   \`>'    The files differ and only the second file contains the line.
-   \`('    Only the first file contains the line, but the difference is ignored.
-   \`)'    Only the second file contains the line, but the difference is ignored.
-   \`\\'    The corresponding lines differ, and only the first line is incomplete.
-   \`/'    The corresponding lines differ, and only the second line is incomplete.


<a id="orgccf64b5"></a>

## date

-   date +%c &#x2013;date "2022-06-20" => Mon Jun 20 00:00:00 2022
-   date +%F &#x2013;date='@2147483647' => 2038-01-19
-   date &#x2013;date '06/02/2016 09:01:39' +"%s" => 1464872499
-   date +%s => 1656480511


<a id="org3eb7704"></a>

## ps <a id="org40f33f8"></a>

<https://www.computernetworkingnotes.com/linux-tutorials/ps-aux-command-and-ps-command-explained.html>

a:- This option prints the running processes from all users.
u:- This option shows user or owner column in output.
x:- This option prints the processes those have not been executed from the terminal.

ps –eo pid,user,%cpu,cmd –-sort=-%cpu | head –n 4
ps –A &#x2013;forest

notes:

-   CPU usage is expressed as the percentage of time spent running during the entire lifetime of a process.
-   The SIZE and RSS fields don't count some parts of a process including the page tables, kernel stack, struct thread<sub>info</sub>, and struct task<sub>struct</sub>.
-   SIZE is the virtual size of the process (code+data+stack).
-   Processes marked <defunct> are dead processes (so-called "zombies") that remain because their parent has not destroyed them properly.
-   If the length of the username is greater than the length of the display column, the username will be truncated.

PID of the bash script you can use variable $$


<a id="org8a49566"></a>

### Column	Description

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


<a id="org10892a1"></a>

### stat code with description

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
l	is multi-threaded (using CLONE<sub>THREAD</sub>, like NPTL pthreads do)

-   is in the foreground process group


<a id="orgcf4d424"></a>

## top <a id="orgfad864d"></a>

include **uptime** command

    top -d 0.5 # faster
    cat /proc/loadavg

sort:

-   ps -o RES
-   ps -o +%MEM
-   f - Field manager
    -   s -  current sort field,
    -   q - quit

control:

-   ? - help
-   parent-child - V key
-   kill: press k and enter PID
-   bold/colur - b/z
-   renice - r
-   </> - sort by column

memory:

-   %MEM: The percentage of the system’s physical memory in use by this process
-   VIRT: Virtual memory size
-   RES: Resident set size: the total physical memory in use by this process

sort by VIRT memory

    for i in {1..10};do date; top -b -o +VIRT | head -n 17|tail -11;sleep 5;done


<a id="org03fa665"></a>

### view description

first row:

-   current time (22 :14:26)
-   uptime of the machine (up 155 day, 16:33)
-   users sessions logged in (2 users)
-   average load: 1, 5, 15 - exponentially-damped moving sums of a five second average

second row:

-   Total Processes running (866 total)
-   Running Processes (8 running)
-   Sleeping Processes (856 sleeping)
-   Stopped Processes (0 stopped)

CPU line: sum up all the percentages the total will be 100% of the cpu

-   us, user    : time running un-niced user processes in percentage(18.6%us)
-   sy, system  : time running kernel processes
-   ni, nice    : time running niced user processes
-   id, idle    : time spent in the kernel idle handler
-   wa, IO-wait : time waiting for I/O completion
-   hi : time spent servicing hardware interrupts
-   si : time spent servicing software interrupts
-   st : time stolen from this vm by the hypervisor

processes

-   PID – ID of the process(819328)
-   USER – The user that is the owner of the process (root)
-   PR – priority of the process (20)
-   NI – The “NICE” value of the process (0)
-   VIRT – virtual memory used by the process (3423m)
-   RES – physical memory used from the process (3.3g)
-   SHR – shared memory of the process (1788)
-   S – indicates the status of the process: S=sleep R=running Z=zombie (S)
-   %CPU – This is the percentage of CPU used by this process (65.9)
-   %MEM – This is the percentage of RAM used by the process (5.2)
-   TIME+ –This is the total time of activity of this process (1363:48)
-   COMMAND – And this is the name of the process (exim)


<a id="org80551b7"></a>

## pgrep

get all processed by name and kill them

    pgrep python | xargs kill -s 9


<a id="org15e20c1"></a>

## vmstat

<https://www.howtogeek.com/425232/how-to-securely-delete-files-on-linux/>

Since last reboot

vmstat 2 -d -S M

-   2 sec recreate
-   

-   -a - active and inactive memory
-   -f -  shows the number of tasks that have been launched
-   -d - disk
-   -D - summary statistics for your disk activity
-   -p sda1


<a id="org8dbfbaf"></a>

## pmap

report memory map of a process

    pmap -x $(pidof bash | cut -d ' ' -f 1) | head -n-2 | tail -n+3 | grep -v deleted | sort -k2 -n | awk '{sum+=$2} END {print sum/1024 " MiB"}'


<a id="org0275051"></a>

## find

find files by name and execute command:

-   find . -type f -name "\*.txt" -exec ls -l {} +
-   find . -type f -name "\*.txt" | xargs ls -l
-   find . -type f -name "\*.txt" -exec mv {} {}.old \\;

multiple file extensions:

-   find . -type f $ -name "*.sh" -o -name "*.txt" $

find directory:

-   find . -type d -iname So\* -ls
    -   -ls - print in ls -al format


<a id="org412c509"></a>

### find [options] [starting-point&#x2026;] [ex‐pression]

expressions:

-   TESTS:
    -   -amin n File was last accessed less than, more than or exactly n minutes ago.
    -   -empty File is empty and is either a regular file or a directory.
    -   -executable Matches  files  which  are  executable
    -   -group gname File belongs to group gname (numeric group ID allowed).
    -   -iname pattern  Like -name, but the match is case insensitive.
    -   -name pattern  Base of file name
    -   -links n  has less than, more than or exactly n hard links.
    -   -nouser No user corresponds to file's numeric user ID.
    -   -perm -a+r,u+w
    -   -readable  Matches  files  which  are  readable  by the current user.
    -   -size 2M
    -   -type c
        -   b      block (buffered) special
        -   c      character (unbuffered) special
        -   d      directory
        -   p      named pipe (FIFO)
        -   f      regular file
        -   l      symbolic link;
        -   s      socket
        -   D      door (Solaris)
    -   -user uname File is owned by user uname (numeric user ID allowed).
-   ACTION
    -   -delete
    -   exec command ;
    -   -print full file name
    -   -quit exit

when {} used - at the end must be:

-   + - result: ls -l file1 file2 file3
-   \\; -  {} may be used more than once in the same exec statement, result: ls -l file1, ls -l file2


<a id="orged040b8"></a>

### links

<https://www.howtogeek.com/425408/how-to-use-all-linuxs-search-commands/>


<a id="orgc519baf"></a>

## dd


<a id="orgd562d1e"></a>

### usecases

create:
dd if=/dev/zero of=test.img bs=1 count 0 seek=10G

resize +2G:
e2fsck -f test.img
resize2fs test.img 12G
e2fsck -f test.img

&#x2014;
Iso Disk write:
cdrecord dev=0,0,0 -eject -dao debian-testing-amd64-xfce-CD-1.iso

dd if=/a.iso of=/dev/sdc bs=8192k

dd if=tails.img of=/dev/sda bs=16M oflag=direct status=progress

dd if=gentoo.iso of=/dev/sda bs=4M oflag=direct status=progress

dd bs=16M if=/dev/sda3 | ssh root@serverB "dd bs=16M of=/dev/sda3"


<a id="org2638002"></a>

### bs

read and write up to BYTES bytes at a time (default: 512); overrides ibs and obs

1.  block size theory

    Block devices and block sizes
    
    -   For example hard disks, cdrom drives and floppies are block devices, but not the keyboard.
    -   file system needs to split up a partition into blocks to store files and file parts (another block size)
    -   Most hard drives shipped with 512 byte sector/block sizes.
    
    Logical and Physical Sector Size
    
    -   Advanced Format, same as 4K sector technology, uses the storage surface media more efficiently by combining
    
    data that would have been stored in eight 512-byte sectors into one single sector that is 4096 bytes (4 KiB)
    in length.
    
    -   any data transfers between the disk and the computer still use the common 512-byte block size.
    -   the disk is addressable in 512-byte blocks, but performance will be better if the OS arranges the disk
        operations to take into account the 4096-byte internal block size.
    
    filesystem block size:
    
    -   tune2fs -l /dev/sdb2
    -   file -s /dev/sda1
    -   stat -fc %s .
    -   blockdev &#x2013;getbsz /dev/sda # change when mounted
    
    Kernel block size
    
    -   All linux blocks are currently 1024 bytes.
    
    <https://www.baeldung.com/linux/dd-optimal-blocksize>


<a id="org66a6f33"></a>

### cteate disk

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


<a id="orgc811cdf"></a>

## access control to files

-   lsattr
-   chattr
-   chmod
-   chown
-   stat


<a id="org9e9842a"></a>

## for external storages

-   lsblk -p - list block devices, find connected USB Flash
-   parted - partition table
    -   parted -l  - list partitions on all disks
-   fdisk - partition table
    -   fdisk -l
-   dd
    -   status=progress - useful to see what's happening
-   sync - Synchronize cached writes to persistent storagem, when u write to USB


<a id="orgff8fe02"></a>

## filesystem block size

-   tune2fs -l /dev/sdb2
-   file -s /dev/sda1
-   stat -fc %s .
-   blockdev &#x2013;getbsz /dev/sda # change when mounted


<a id="orga2d586f"></a>

## tar

tar.gz:

-   crate: tar -czf a.tar.gz /
-   extract: tar xpzf  &#x2013;xattrs-include=' **.**' &#x2013;numeric-owner a.tar.gz
    -   -p, &#x2013;preserve-permissions (default for supe ruser)
-   inspect: tar ztf/tf m.tar.gz/m.tar
-   create from files: tar &#x2013;totals -cvf a.tar file1 file2 file3

common archives and commands to extract

-   .tar 	-xvf
-   .tar.gz	-xvzf
-   .tar.bz2	-xvjf
-   .tar.xz	-xJf
-   .tar.lzma	-xlf
-   .tar.lzo	-xlOf
-   .tar.zst	-xIf


<a id="org72a5646"></a>

## compression

TOP for texts:

-   7z - LZMA compression algorithm
-   xz
-   bzip2 - BWT
-   rar
-   gzip - LZ77
-   zip

TOP for mixed:

-   rar
-   7z
-   zip
-   bzip2
-   gzip

my for texts 518MB :

-   time tar.xz - real	1m49.582s, user	1m50.062s - 44M
-   time tar.7z - real	0m55.497s, user	1m43.210s - 44M
-   time tar.bz2 - real	0m33.160s, user	0m31.348s - 48M
-   time tar.gz - real	0m10.430s, user	0m8.876s - 59M

texts < 14370 chars:

    cat file  | gzip -f - |base64 | base64 -d | gzip -d -

for text > 14370 chars:

    cat file  | bzip2 |base64 | base64 -d | bzip2 -d


<a id="orgc04725e"></a>

### tar.7z

compress:

    tar cf - <source folder> | 7z a -si <Destination archive>.tar.7z

decompress

    7z x -so yourfile.tar.7z | tar xf - -C target_dir


<a id="org28fbac8"></a>

### zip

create:

-   zip a f	# creat a.zip with f file
-   zip -r a f	# creat a.zip with with f folder and all it's files
-   

inspect archive: unzip -l a.zip

extract:

-   unzip test<sub>archive.zip</sub> -d ./Music

1.  zip chunks/multi-part/split

    to chunks:
    
    -   zip -r -s <size in megabytes>M <new<sub>file</sub>>.zip <folder>/\*
    
    to single archive (myfiles.z01, myfiles.z02, myfiles.z03):
    
    -   zip -F myfiles.zip &#x2013;out single-archive.zip
    
    decompress:
    
    -   All parts must be concatenated together in order, and then \`\`zip -F'' (for zip 2.x) or \`\`zip -FF'' (for zip
        3.x) must be performed on the concatenated archive in order to \`\`fix'' it
    -   unzip -l - list archive files


<a id="org18c4777"></a>

### links

-   <https://www.mattmahoney.net/dc/text.html>
-   <https://www.mattmahoney.net/dc/10gb.html>


<a id="org91f1c2f"></a>

## curl

-   proxy support
-   user authentication
-   ftp upload
-   SSL connections
-   cookies
-   file transfer resume and more


<a id="orgd709ee8"></a>

### SOCKS5 proxy

-   curl -x socks5h://localhost:8080 api.ipify.org


<a id="org0786293"></a>

### mimic browser request:

-   curl &#x2013;http0.9 -vvv -H "Accept: application/xml" -A "Mozilla" <http://a.ru>


<a id="org0482a02"></a>

### POST GET

POST file:

-   curl -X POST -F file1=@/art.jpg <http://site.com/api/upload>
-   curl -i -X POST host:port/post-file  -H "Content-Type: text/xml" &#x2013;data-binary "@path/to/file"
-   

GET

-   curl -X GET "<http://anonchek.ru/get?id=a43219ce4a4a490d9cd34beb718cb09f>" -H  "accept: application/json"
-   curl -Gv 'https://geocode-maps.yandex.ru/1.x/?apikey=ba47e54a-61a5-49af-9c84-558d92b35a33&format=json' &#x2013;data-urlencode 'geocode=Тверская 6'

you cannot really use the -d/&#x2013;data option if this is not a POST request. But this is still possible if you
 use the -G option.

-   curl -X DELETE -G 'http://localhost:5000/locations' -d 'id=3'
-   


<a id="org4a98394"></a>

### POST paramters

&#x2013;url-query

-   &#x2013;url-query name=val
-   &#x2013;url-query "+name=%20foo"
-   &#x2013;url-query @fileonly
-   &#x2013;url-query name@file
-   &#x2013;url-query =encodethis

-d

-   -d "name=curl" -d "tool=cmdline"
-   -d @filename

&#x2013;data-urlencode - as -d buth with urlencode

-   &#x2013;data-urlencode name=val
-   &#x2013;data-urlencode =encodethis
-   -data-urlencode name@file
-   &#x2013;data-urlencode @fileonly

&#x2013;data-raw - without the special interpretation of the @ character

&#x2013;data-binary @filename

&#x2013;data-ascii alias to -d

-I,  &#x2013;head

-F or &#x2013;form

-T, &#x2013;upload-file


<a id="org34fdb5b"></a>

### FTP

upload folder

    find mydir -type f -exec curl -u xxx:psw --ftp-create-dirs -T {} ftp://192.168.1.158/public/demon_test/{} \;

upload file

    curl -g -k -T "Armored Core 4 [BLES00039].iso" ftp://192.168.1.101/dev_hdd0/GAMES/


<a id="orgbb75798"></a>

## du - file space usage

du -h -x -s &#x2013; \* | sort -r -h | head -20 - biggest files


<a id="org649b2d4"></a>

## man, info, help


<a id="orgcc11b0f"></a>

### history

Man pages - UNIX traditional way of distributing documentation about programs.

GNU advocates against the use of man pages at all and contends that complex software systems should have
 complete and comprehensive documentation rather than just a set of short man pages.

help is a built-in command in the bash shell (and that shell only) that documents some of the builtin commands
 and keywords of that shell


<a id="orgb3b90b6"></a>

### man

1.  terms

    convention to the layout of man pages (sections of page): Name, Synopsis, Configuration, Description, Options, &#x2026; etc.
    
    page - name of program or function.
    
    pages located in **sections** 1-9. (groups of pages) see: $ man man
    
    -   man man.7 or man 7 man or man 'man(7)'

2.  arguments

    -   -a	display all pages, wihtout will exit after displaying the most suitable manual page it finds.
    -   -aw	print list of exisitng pages
    -   &#x2013;wildcard gl\* - to use wildcard in term
    -   &#x2013;regex gl.\*
    -   -k search -s 3	 list of all man pages which relate to 'search' in section 3
    -   man -P 'less -p ^EXAMPLES' man	to get EXAMPLES section for man comman
    -   man tcpdump | less -Ip examples

3.  keys

    -   h		help
    -   / and ?	search forward/backward
        -   n/N	search forward, backward
    -   Ctrl + k/n	up/down
    -   u / d	Scroll up/down by half a page
    -   b / space	Scroll up/down by a page
    -   highlighting on and off, press Esc+U.


<a id="org6ff5448"></a>

### info <a id="orgecc28eb"></a>

1.  info command line arguments

    -   **-a:** get list of all manuals for term
    -   **-k:** look up string in all indices of all manuals
    -   **-d:** 
    
    -   **-O:** command line options for command

2.  terms:

    -   node - page

3.  keys:

    navigation
    
    -   d		directory node - internal mode
    -   n/p or <code>[/]</code> next/previous node
    -   u		up node (level)
    -   l/r		go back/forward - return from reference
    -   t		top node
    
    help
    
    -   h 		help
    -   H		Basic info command keys
    -   q		quit
    
    -   C-n/p	next/previous line
    -   //?		search
        -   }/{ or C-x n/p	next/previous
        -   R			toggle regex search
    -   M-/		tree search in current node tree, Global search!
    -   TAB/S-TAB	next/previous reference
    -   C-x C-b	list of visiter references with locations of files
    -   t/T		default - major nodes and detail or full one tree.
    -   C-x 1	Delete all other windows.
    -   x		Delete current window.
    
    Backspace or ] - back and up level
    space or [ - forward and down
    
    b - top of buffer
    1-9 - pick node in menu
    
    < - top page
    > - bottom page
    
    l - go back at history
    r - go forward at history
    
    i - search for topoc and go to the index
    
    Cross reference - link to another topic
    Follow cross reference - just RET or f name<sub>of</sub><sub>reference</sub>
    f? - get list of references
    Tab - scroll references at page (very useful)
    l - go back
    
    d - directory

4.  search sequence

    -   d	directory node
    -   m	Pick a menu item specified by name with completion
    -   i	Search for a specified string in the index
    
    M-x apropos


<a id="org73b9c34"></a>

## less

man tcpdump | less -Ip examples

-   I - IGNORE-CASE
-   p - pattern


<a id="org6edc141"></a>

## date

set time:

-   date +%Y%m%d -s "20220429"
-   date -s "19:35"

epoch to time:

-   date -d @1234567890


<a id="org66ef7a6"></a>

## tee

append line to file and to STDOUT

    echo "as" | tee -a /etc/fstab


<a id="org2238786"></a>

### freeze problem

tee inside the process substitution will not exit until it gets an eof on its stdin or some error happens.


<a id="org9292bde"></a>

## time

-   real - time from start to finish of the call.
-   user - amount of CPU time spent in user-mode code (outside the kernel) within the process. This is only actual CPU

time used in executing the process.

-   Sys - is the amount of CPU time spent in the kernel within the process.

other explanation.

-   Real time is wall clock time. (what we could measure with a stopwatch)
-   User time is the amount of time spend in user-mode within the process
-   Sys is the CPU time spend in the kernel within the process.

Wall time, or the amount of time that passes between you starting the process and the process ending.

(Wall time) - (CPU time) = (time the CPU spent doing other things)

cases

-   real < user: The process is CPU bound and takes advantage of parallel execution on multiple cores/CPUs.
-   real ≈ user: The process is CPU bound and takes no advantage of parallel exeuction.
-   real > user: The process is I/O bound. Execution on multiple cores would be of little to no advantage.


<a id="orge17e740"></a>

## lsfd

files opende by processes of user:
lsfd -Q 'USER == "larry"'


<a id="orga647c6e"></a>

## fuser

find process on port:

    fuser -nv tcp 80


<a id="org92f203d"></a>

## administration commands

-   мониторинга процессов (ps, top, htop, atop, lsof)
-   проверок производительности системы (nmon, iostat, sar, vmstat)
-   утилитами диагностики сетевых подключений (ping, traceroute, mtr, nmap, netstat, tcpdupm, dig, scp),
-   файрволов Linux (ufw/firewalld, iptables/nftables)


<a id="org4bf0051"></a>

### memory

-   dmesg | grep Memory:  - RAM memory available in kilobytes.
-   cat /proc/meminfo, free
    -   free - idle memory
    -   buff/cache - memory used for cache but available.
-   vmstat -w - first report produced gives averages since the last reboot, additional for delay period.
-   vmstat -wa - active/inactive

Context switching

-   Context switching can be due to multitasking, Interrupt handling , user & kernel mode switching. The
    interrupt rate will naturally go high, if there is higher network traffic, or higher disk traffic. Also it is
    dependent on the application which every now and then invoking system calls.
-   If the cores/CPU's are not sufficient to handle load of threads created by application will also result in context switching.


<a id="orgfd0a3a9"></a>

## USECASES

-   print column:
    -   ps | awk '{print $2}'
    -   ps | tr -s ' ' | cut -d ' ' -f 3
-   find duplicated files:
    -   find ./ -type f -exec md5sum '{}' ';' > dupl
    -   cat dupl  | sort | uniq &#x2013;all-repeated=separate -w 15 | grep '\\.\\/' | uniq -w 15 | cut -c 35- | xargs rm
-   copy files from stdinput | xargs -I{} cp -u {} /destination/path
-   rename multiple files: find . -depth -name "\*.html" -exec sh -c 'f="{}"; mv &#x2013; "$f" "${f%.html}.php"' \\;

-   sync directories:  # rsync -aqxP /var/\* /mnt/newvar
-   вывод в файл и stdout: cmd | tee file
-   list directories: ls -d \*/
-   read file line by line:  while read -r line;do echo "$line";done < file
-   message window: xmessage -timeout 50 "MESSAGE HERE!!!"
-   execute for every file: find . -name "\*.jpg" -maxdepth 1 -type f -exec ~/firef \\{\\} \\; -exec sleep 1 \\; -exec pkill firefox \\;
    -   find . -name "\*.mpg" -maxdepth 1 -type f   -exec sh -c "firefox {} & sleep 10 ; pkill firefox ;" \\;
    -   for f in \*.txt; do echo "$f"; done
-   zip
    -   for f in ./\* ; do zip -r "${f:2}".zip "${f:2}" ; done # all folders
    -   for f in ./\* ; do zip -r "${f:2}".zip "$f" ; done # all files

**time elapsed**

    SECONDS=0 ;  while true ; sleep 1 ; do echo -ne "\r" $SECONDS ; done

**get parent process**

-   ps -o ppid= -p 21509
-   pstree -s -p 21509

**filename filepath**

-   basename $fspec # get filename
-   dirname $fspec # get filedir

**split and rejoin big file**

-   split -d -b 1M file file<sub>prefix</sub>\_
    -   -b 1M put SIZE bytes per output file
    -   -d use numeric suffixes starting at 0, not alphabetic
-   cat file<sub>prefix</sub><sub>\*</sub> > file

**logs from several host to one file**

-   node:

    script -c 'python param.py' |& sed -u "s/^/${who}: /" |& perl -ne 'use IO::Handle ; printf "%s %s",  scalar time(), $_ ; STDOUT->autoflush(1) ;' |& tee -a ${who}.log

-   server:

    watch "cat chief_0.log worker_0.log worker_1.log | sort -ns -k1 | tail"

add string to every line in pipeline:

-   <command> | sed 's/^/<string>/'
-   <command> | awk '{print "<string>" $0}'
-   <command> | while read line; do echo "<string>$line"; done
-   echo "asd\n asd2 \n ddvv" | sed 's/$/ file/'

**overwrite output**

    echo -en "aaaa\r" ; sleep 1 ; echo -ne "bbb\033[0K\r" ; sleep 1; echo "[INFO] Processing file: log.txt"

<a id="orga0daa4d"></a>

-   cat messages.org | grep -o "@[^$ ]\*" | grep -v '>' | sort | uniq -c | sort -r

**find line and remove this line and next one**

    sed '/pattern/,+1d' file.txt > temp_file.txt && mv temp_file.txt file.txt

**replace substring in files**

    for f in ./*.el ; do
        cat $f | sed 's/2023/2024/g' > /tmp/t
        mv /tmp/t $f
    done

**split long lines**, broke line with limit

    echo 'asdasd' | fold -s -w 80

**filter lines by dinstance**

-   sed -r '/<sup>(.{9,})</sup>$/d' inputfile.txt


<a id="org515af67"></a>

## USECASE: save output of command to cash

    CACHE_TIME=3600 # 1 hour
    
    CACHE_DIR=/tmp/cache_exec
    
    function cache_exec() {
    
      local cmd="$*"
      local cache_file="$CACHE_DIR/"$(echo "$cmd" | sha1sum | cut -f 1 -d ' ')
    
      mkdir -p $CACHE_DIR # create if not exist
    
      if [ -f "$cache_file" ] && [ $(($(date +%s) - $(stat -c "%Y" "$cache_file"))) -lt $CACHE_TIME ]; then
        cat "$cache_file"
      else
        local output=$("$@")
        echo "$output" > "$cache_file"
        echo "$output"
      fi
    }
    # cache_exec uname -a


<a id="orgf207491"></a>

## USECASE: case - set environment varibles per directory after cd command

    set_env() {
      # Check the current directory and set environment variables accordingly
      case "$PWD" in
        /etc/*)
          export AETCEA="vvasd"
          ;;
        /home/*)
          export HALOM="12345"
          ;;
        *)
          # Do nothing if the directory does not match any of the above cases
          ;;
      esac
    }
    
    # Modify the cd command to call the set_env function
    cd() { builtin cd "$@" ; set_env ; }

Do not unset them.


<a id="org60f1092"></a>

## USECASE: find N last modified files in current directory and subdirs

    find . -type f -printf '%T@ %p\n' | sort -n | tail -4 | cut -f2- -d" "

where -4 - to get last 4 modified


<a id="org8b096d2"></a>

## links

-   <https://learnbyexample.gitbooks.io/linux-command-line/content/Shell.html>
-   Shell & Utilities <https://pubs.opengroup.org/onlinepubs/9699919799/utilities/contents.html>
-   <https://github.com/dylanaraps/pure-bash-bible>

extract IP:PORT from file:

-   grep -E -o "([0-9]{1,3}[\\.]){3}[0-9]{1,3}:[0-9]{1,5}" p.txt


<a id="org01fd8eb"></a>

# Bash new features

bash &#x2013;posix or set -o posix - to execute in POSIX mode

Syntax

-   **case:** ;;& ;& etc
-   for ((i=0; i<3; i++)); do ; printf '%s\n' "$i" ; done
-   **extended glob :** +( ) @( ) !( ) \*( )
-   **select:** construction to create menu with input from user.
-   **file slurp:** $(< file), in shell: $(cat file)

Expansions

-   {a,b,c} or {1..10}
-   <( ) and >( ) process substitutions. instead of foo <(bar), write mkfifo /tmp/foo<sub>fifo</sub>; bar > /tmp/foo<sub>fifo</sub> & foo /tmp/foo<sub>fifo</sub>

Parameter Expansions

-   ${name:n:l} - $(expr "x$name" : "x.\\{0,$n\\}$.\{0,$l\}$")
-   ${name/foo/bar} &#x2013; you can use $(printf '%s\n' "$name" | sed 's/foo/bar/')
-   ${!name}
-   \#, ##, %, and %% - operators when used together with the @ or \* parameters

Arrays, in shell: IFS and set -f

Conditionals

-   [[ - use [ and use double quotes around the expansions [ "$var" = "" ]
-   [ foo = \*glov ]] - use case or expr or grep
-   == - use = instead - only = is defined by POSIX
-   compare lexicographically. < >  - not POSIX
-   compare modification times [ file1 -nt/-ot file2 ]] - [ "$(find 'file1' -prune -newer 'file2')" ] or [ "file1" -nt "file2" ]
-   same hardlink [ file1 -ef file2 ]]  - [ "file1" -ef "file2" ]
-   (( )) (without the $) acts like a command on its own

Arithmetic

-   ++ &#x2013;
-   , - comma as command separator
-   \*\*
-   let or ((&#x2026;)) - use [ "$((&#x2026;))" -ne 0 ]


<a id="org4342e43"></a>

## links

-   <http://mywiki.wooledge.org/Bashism>
-   <https://www.gnu.org/software/bash/manual/html_node/Bash-POSIX-Mode.html>


<a id="orgdff4391"></a>

# tmux

emerge &#x2013;ask app-misc/tmux


<a id="orgf990c5e"></a>

## status

[10] 0: bash\*

-   10 - session number
-   bash - window name, default is dynamic from current command name


<a id="org4a69c6c"></a>

## terms

-   **server:** Servers are terminated when the last remaining running session is closed.
-   **session:** default session with number 0. When we start a new instance of tmux, new session is created
    inside the running server.
-   **window:** 

-   **pane:** splits of window, pseudoterminals. Window always have at least one pane.

target-session (-t)

-   


<a id="orgdfaa4db"></a>

## keys

Ctrl-b is the begining of commands:

-   ?	help
-   [	now Page Up, Page down
-   CTRL+SPACE to start copying
-   ALT+w or CTRL+w to copy into Tmux buffer.
-   ]	to paste

quit:

-   x	kill the current panel and quit if one left in window
-   &	kill window and quit
-   d	disconnect from panel

toggle between:

-   (/)	toggle between sessions
-   s	list sessions, x - kill session, C-p/n - up/down
-   w	list sessions and windows
-   %	create a horizontal pane
-   "	create a vertical pane
-   o	toggle between panes - current surround with green lines
-   array toggle between panes
-   L

rename:

-   $	session
-   ,	window

-   <https://danielmiessler.com/study/tmux/>


<a id="org8036fcd"></a>

## commands

-   tmux ls - list tmux sessions
-   tmux attach -t 0 - attach to session
-   tmux


<a id="orgfbade50"></a>

## xorg start and terminal unused

To start terminal with tmux:

    xfce4-terminal -e tmux

To kill unused terminal windows with idling single bash:

    alias cl="ps aux | grep '\-bash' | grep Ss+ |  tr -s ' ' | cut -f 2 -d ' ' | xargs kill -s 9"

to kill deattached tmux sessions, add to ~/.bashrc,

    test -n "$DISPLAY" && tmux list-sessions | grep -v attached | cut -d: -f1 |  xargs -r -n1 tmux kill-session -t &>/dev/null

to set nema of new window:

    xdotool getactivewindow set_window --name $(echo "${PWD/#$HOME/\~}")


<a id="org73d7697"></a>

## xorg system clipboard - How to copy to clipboard?

Soltuion:
create file ~/tmux.conf and add this line:

    set -s copy-command "xclip -sel clip -i"

this app should be installed:

    emerge x11-misc/xclip


<a id="org8723310"></a>

## kill deattached sessions

    tmux list-sessions | grep -v attached | cut -d: -f1 |  xargs -r -n1 tmux kill-session -t &>/dev/null


<a id="org65d45b1"></a>

## option

global options:

    tmux show-options -g

For window options:

    tmux show-options -w

For server options:

    tmux show-options -s


<a id="orgf41fc04"></a>

## rebind keys

tmux list-keys | less

    bind-key -T copy-mode C-k    send-keys -X cursor-up
    bind-key -T copy-mode C-l    send-keys -X cursor-left


<a id="org225cae3"></a>

# SSH

Secure SHell - port 22.

-   Mozilla recommendations <https://infosec.mozilla.org/guidelines/openssh>


<a id="orgf3a3877"></a>

## config files

-   /etc/ssh/sshd<sub>config</sub> - server conf
    -   /etc/conf.d/sshd
    -   *etc/ssh/known<sub>hosts</sub> and ~*.ssh/known<sub>hosts</sub> - list of public keys for all the hosts to which the user has
        connected with ssh. for verifying the identity of client's systems. protecting against impersonation or
        man-in-the-middle attacks.
    -   ~/.ssh/authorized<sub>keys</sub> - mandatory, not added automatically
-   /etc/ssh/ssh<sub>config</sub> - client conf
    -   ~/.ssh/config


<a id="org6a85925"></a>

## permissions

-   0600 ~/.ssh/authorized<sub>keys</sub> # rw
-   0600 ~/.ssh/known<sub>hosts</sub>
-   0644 ~/.ssh/config # rw-r-r
-   0600 ~/.ssh/id<sub>rsa</sub> # rw
-   0644 ~/.ssh/id<sub>rsa.pub</sub> # rw-r-r
-   0700 or 755 /ssh
-   644 /etc/ssh<sub>config</sub>
-   600 /etc/ss<sub>config</sub>


<a id="org2e616c6"></a>

## authentication types

1.  password
    -   PasswordAuthentication yes
2.  public key
3.  Host-based - public key + ip white list
    -   EnableSSHKeySign yes
    -   HostbasedAuthentication yes
    -   IgnoreRhosts no
4.  keyboard-interactive - server sends prompts to the Client who should provide the correct response.
    -   KbdInteractiveAuthentication yes
    -   ChallengeResponseAuthentication yes
5.  challenge-response - A specific backend system sends the challenges to the client’s PC and verifies the response.
    -   ChallengeResponseAuthentication yes
    -   KbdInteractiveAuthentication yes
6.  GSSAPI - Kerberos authentication
    -   GssapiAuthentication
    -   GssapiKeyExchange


<a id="org5c2b864"></a>

## usage

-   /usr/sbin/sshd -t # validate its configuration
-   ssh-add -l # list keys
-   copy files
    -   from remote to local
        -   rsync username@ip<sub>address</sub>:/home/username/filename .
        -   scp filename username@ip<sub>address</sub>:/home/username .
        -   rsync -r source<sub>folder</sub>/ dest<sub>folder</sub>/ # recurse copy contents of the source folder into dest<sub>folder</sub>
        -   rsync -vP username@host:/path/to/file . # download large file with progress
    -   from local to the remote
        -   rsync username@ip<sub>address</sub>:/home/username/filename .
        -   scp filename username@ip<sub>address</sub>:/home/username
            -
-   ssh -t command # execute command right after login


<a id="org1fbaa88"></a>

## commands

-   scp - secure file copy
-   sftp - secure file transfer
-   ssh-add - add private key identities to the authentication agent
-   ssh-agent - authentication agent
-   ssh-copy-id - use locally available keys to authorize logins on a remote machine
-   ssh-keygen - authentication key utility
-   ssh-keyscan - gather SSH public keys from servers
-   sshd - OpenSSH daemon


<a id="org8e1d3cb"></a>

## 1) ssh server - password

-   net-misc/openssh
-   Config server:
    -   PasswordAuthentication yes
    -   PermitRootLogin yes
    -   PubkeyAuthentication yes # allow migrate to pubkey (not required)
    -   ListenAddress 0.0.0.0 # and add rc<sub>need</sub>="net.enp" to /etc/conf.d/sshd (not required)
-   sshd -t

client: ssh user@127.16.0.1


<a id="org86118c0"></a>

## 2) ssh server - generate key - public key and private key

Just don’t use ECDSA/DSA!

1.  create and copy key at client
    -   ssh-keygen -t ecdsa -a 256 -b 521 (-f ~/.ssh/id<sub>ed25519</sub> -C "username@hostname") (best security)
    -   ssh-keygen -t ed25519 -a 256 -b 521 (-f ~/.ssh/id<sub>ed25519</sub> -C "username@hostname")
    -   ssh-keygen -b 4096 -t rsa -f ~/.ssh/mykey<sub>rsa</sub>
        -   add **-q -N ""** for empty passphrase
    -   ssh-copy-id -i ~/.ssh/id<sub>rsa.pub</sub> 172.16.0.1
    -   ssh user@172.16.0.1 # try loggin
    -   eval \`ssh-agent\`
    -   ssh-add *home/user*.ssh/id<sub>rsa</sub>
    -   ssh user@172.16.0.1 # try loggin
2.  server - change config of sshd
    -   PermitRootLogin no # if not needed
    -   PasswordAuthentication no
    -   HostbasedAuthentication no
    -   KbdInteractiveAuthentication no # keyboard-interactive
    -   \# UsePAM yes # should be commented
    -   AllowUsers user1 user2 # restrict access for this users only
    -   sshd -t

1.  client - samplify ~/.ssh/config
    -   Host ssh-ex
        -   HostName 104.236.90.57
        -   User fideloper
        -   IdentitiesOnly yes # where ssh-agent offers many different identities. (optional)
        -   IdentityFile ~/.ssh/id<sub>sshex</sub>
        -   PreferredAuthentications publickey # (optional)

    drwx------  2 root root  4096 Mar 26 12:47 .ssh
    -rw------- .ssh/authorized_keys

ECDSA

-   secp256r1 (256-bit curve): Equivalent to a 3072-bit RSA key.
-   secp384r1 (384-bit curve): Equivalent to a 7680-bit RSA key.
-   secp521r1 (521-bit curve): Equivalent to a 15360-bit RSA key.
-   More resistant to quantum computer attacks compared to traditional RSA.

Elliptic Curve Cryptography (ECC)
 384-bit ECC key provides similar security as a 7680-bit RSA key.

Ed25519 : Equal to a RSA with ~3000-bit keys

-   excellent security with a fixed key size of 256 bits.
-   It is highly secure and resistant to side-channel attacks.


<a id="orgac7af4e"></a>

## 3) sftp server

1.  uncomment /etc/ssh/sshd<sub>config</sub>: Subsystem sftp /usr&#x2026;
2.  for autocompletion at client: echo "net-misc/openssh libedit" >> /etc/portage/package.use/openssh


<a id="org18c9f70"></a>

## 4) X11 Forwarding

to start a graphical applications installed on a remote Linux system and forward that application windows
(screen) to the local system

1.  /etc/sshd<sub>config</sub>
    -   ForwardX11=yes
2.  ssh -Y host

ssh -X - is not working:

-   Warning: untrusted X11 forwarding setup failed: xauth key data not generated
-   xset: ubable to open display ""


<a id="orge28348d"></a>

## 5) sshfs - client

-   File systems  &#x2014;>  [\*] FUSE (Filesystem in Userspace) support
-   emerge &#x2013;ask net-fs/sshfs
-   umount: fusermount -u /path/to/local/sshfs/mount

Options for access:

-   -o allow<sub>other</sub>
    -   replace allow<sub>other</sub> with allow<sub>root</sub>, for root).
-   -o umask=M
    -   set file permissions (octal)
-   -o uid=N
    -   set file owner
-   -o gid=N
    -   set file group

It is recommended to run SSHFS as regular user (not as root).

There is your options:

1.  run as root
    -   only root can access folder
    -   with allow<sub>other</sub> - you must hide folder as subfolder and set permissions on parent folder
        -   chmod o-rwx /mnt
        -   chown root:users /mnt
        -   mkdir /mnt/share
        -   sshfs -o allow<sub>others</sub> -o uid=1000 -o gid=100 target:/mnt/share /mnt/share
2.  run as user
    -   only user can access folder
    -   root and user can access folder but user can allow access to anyone
        -   with /etc/fuse.conf uncomment: user<sub>allow</sub><sub>other</sub>
        -   sudo -u user sshfs -o allow<sub>root</sub> -o uid=1000 -o gid=100 target:/mnt/share /mnt/share

/etc/fstab:

-   as root (allow<sub>other</sub>):
    -   sshfs#SERVER<sub>USER</sub>@remotehost:/SOURCEDIR *home/USER/Music fuse user,<sub>netdev,idmap</sub>=user,transform<sub>symlinks,identityfile</sub>=/home/USER*.ssh/id<sub>rsa,allow</sub><sub>other,default</sub><sub>permissions,uid</sub>=1000,gid=1000 0 0
    -   user@host:/remote/path *local/path  fuse.sshfs noauto,x-systemd.automount,<sub>netdev,users,idmap</sub>=user,IdentityFile=/home/user*.ssh/id<sub>rsa,allow</sub><sub>other,reconnect</sub> 0 0
        -   noauto tells it not to mount at boot
        -   x-systemd.automount does the on-demand magic
        -   \_netdev tells it that it is a network device, not a block device (without it "No such device" errors might happen)
-   as user:
    -   user@host:/remote/path *local/path  fuse.sshfs noauto,x-systemd.automount,<sub>netdev,user,idmap</sub>=user,follow<sub>symlinks,identityfile</sub>=/home/user*.ssh/id<sub>rsa,allow</sub><sub>other,default</sub><sub>permissions,uid</sub>=USER<sub>ID</sub><sub>N,gid</sub>=USER<sub>GID</sub><sub>N</sub> 0 0

up:

-   sshfs -o allow<sub>other</sub> -o uid=1000 -o gid=100 target:/mnt/share /mnt/share

down:

-   chmod -R g+rwx /mnt/share/\* # allow at target to write
-   fusermount -u /mnt/share # umount


<a id="orgafce305"></a>

## TODO Internet over socks

Viriant 1 - tun - man ssh

-   <https://www.copahost.com/blog/openvpn-in-ubuntu-tun-tap/>
-   \# cat /dev/net/tun
    -   cat: /dev/net/tun: File descriptor in bad state
    -   If the output shows “File descriptor in bad state”, then it means it is working correctly.

Variant 2 - proxychains

-   ssh -fNTD 127.0.0.1:<local port> username@sshserver
    -   -f go backgroound
    -   -N Do not execute a remote command.  This is useful for just for warding ports.
    -   -T Disable pseudo-terminal allocation.
-   edit /etc/proxychains.conf :
    -   socks5 127.0.0.1 <localport>
    -   proxy<sub>dns</sub>
-   proxychains <program name>

Variant 2 - tsocks


<a id="org3c34395"></a>

## DNS over socks

-   net-proxy/dnsproxy
-   <https://github.com/awaw/dnsproxy>
-   test dnsproxy: dig @127.0.0.1 -p 53000 google.com (dnsutils)

problems: resolv.conf require 53 UDP port

1.  you need to root to redirect to 53 port
2.  UDP is not forwarded with SSH directly

solution:

-   sudo -u ssh ssh -L 6667:0.0.0.0:6667 -C -o ProxyCommand='nc -X 5 -x 127.0.0.1:1082 %h %p' -p 9067 root@remove<sub>ssh</sub>
-   remote:
    -   mkfifo /tmp/fifo
    -   nc -l -p 6667 < /tmp/fifo | nc -u localhost 53000 > /tmp/fifo
-   local:
    -   socat udp-listen:53,reuseaddr,fork TCP:127.0.0.1:6667 &
    -   (other) # mkfifo /tmp/fifo ; sudo nc -l -u -p 53 < /tmp/fifo | nc localhost 6667 > /tmp/fifo

-   server:
    
    -   ssh -L 6667:0.0.0:6667 root@remove<sub>ssh</sub> (sudo -u ssh ssh -L 6667:0.0.0.0:6667 -C -o ProxyCommand='nc -X 5
    
    -x 127.0.0.1:1082 %h %p' -p 22 root@remove<sub>ssh</sub>)
    
    -   socat tcp4-listen:6667,reuseaddr,fork UDP:127.0.0.1:53000
-   local:
    -   socat udp-listen:53,reuseaddr,fork TCP:127.0.0.1:6667 &
    -   (bad)# mkfifo /tmp/fifo ; sudo nc -l -u -p 53 < /tmp/fifo | nc localhost 6667 > /tmp/fifo
    -   /etc/resolv.conf: nameserver 127.0.0.1
    -   prevent dhcpd overweite /etc/resolv.conf: chattr +i /etc/resolv.conf

/tmp/fifo

<https://superuser.com/questions/53103/udp-traffic-through-ssh-tunnel>


<a id="org60a09ee"></a>

## ssh-agent

-   key manager for SSH. It holds your keys and certificates in memory, unencrypted, and ready for use by ssh
-   runs in the background on your system

**do not type password all the time**

-   eval $(ssh-agent) or eval \`ssh-agent\` # to start agent
-   ssh-agent -k # to kill agent
-   ssh-add -l # list private keys currently accessible to the agent ~/.ssh/id<sub>rsa</sub>
-   ssh-add key
-   ssh-add -D - del -l list

ssh-add without any parameters - it will scan your home directory for some standard keys and add them to your
agent

ssh-agent -k # kill daemon


<a id="org5e1ed8c"></a>

## agent forwarding problem

security risk: anyone with root access on the remote host can discreetly access your local SSH agent through
the socket. They can use your keys to impersonate you on other machines on the network.

How to reduce your risk when agent forwarding:

-   ssh -A turns on agent forwarding for a single session.
-   ssh-add -x locks the agent with a password, and ssh-add -X unlocks it
-   alternative SSH agent that prompts you when it’s being used.
-   ProxyJump directive: ssh -J bastion.example.com cloud.computer.internal # to connect to
    cloud.computer.internal via your bastion.example.com
    1.  your SSH client uses keys from your agent to connect to bastion.example.com.
    2.  Once connected, SSHD on the bastion connects to cloud.computer.internal and hands that connection off to
        your local SSH client.
    3.  Your local SSH client runs through the handshake again, this time with cloud.computer.internal.
-   Older versions of SSH and SSHD (prior to 7.2, released in 2016) don’t support ProxyJump:
    -   ssh -o ProxyCommand="ssh bastion.example.com nc %h %p" cloud.computer.internal

<https://smallstep.com/blog/ssh-agent-explained/>


<a id="org1696731"></a>

## ssh-copy-id

ssh-copy-id user@hostname.example.com -p <port-number>

copies the public key of your default identity (use -i identity<sub>file</sub> for other identities) to the remote host.


<a id="org7ac8c2a"></a>

## inside of ssh

-   The client presents a public key to the server.
-   The server generates and sends a brief, random message, asking the client to sign it using the private key.
-   The client asks the SSH agent to sign the message and forwards the result back to the server.
-   The server checks the signature using the client’s public key.
-   The server now has proof that the client is in possession of their private key.
-   Later in the handshake process, a set of new, ephemeral and symmetric keys are generated and used to encrypt
    the SSH session traffic. These keys may not even last the entire session; a “rekey” event happens at regular
    intervals.


<a id="org2b0340c"></a>

## old

В начале - настраиваем сервар на аутентификация по ключу

1.  на клиенте (без пароля): ssh-keygen -o -b 4096 -t rsa -f ~/.ssh/mykey<sub>rsa</sub>
2.  на сервере по рутом /etc/ssh/sshd<sub>config</sub>:
    -   PermitRootLogin yes
    -   PubkeyAuthentication no
    -   PasswordAuthentication yes

На клиенте - копируем публичный ключ на сервер в authorized<sub>keys</sub>:

-   ip = 10.0.0.1 - сервера
-   scp user@$ip:"~/.ssh/mykey<sub>rsa.pub</sub>" ~/.ssh/authorized<sub>keys</sub>

потом на сервере :

-   PubkeyAuthentication yes
-   AuthorizedKeysFile      .ssh/authorized<sub>keys</sub>
-   PasswordAuthentication no
-   UsePAM no - Also verify UsePAM yes is not in the configuration file; it overrides the public key
    authentication mechanism. Alternatively PasswordAuthentication or ChallengeResponseAuthentication
    directives can be disabled

X: конектится по ssh сразу под тем пользователем под которым хочешь запустить X-приложение

-   /etc/ssh/sshd<sub>config</sub>
    -   X11Forwarding yes
    -   X11DisplayOffset 10

wine msiexec /i E82.40<sub>CheckPointVPN.msi</sub>

**SOCKS 5 прокси**
ssh -D 8888 user@33.224.56.34

**restict one command with argument**

1.  command="./nuke $SSH<sub>ORIGINAL</sub><sub>COMMAND</sub>",no-port-forwarding,no-x11-forwarding,no-agent-forwarding KEY<sub>TYPE</sub> KEY COMMENT
2.  ./nuke:
    -   set -euf -o pipefail
    -   echo "$@"

**copy public key to remote machine**

-   ssh-copy-id -i ~/.ssh/id<sub>rsa.pub</sub> 192.168.0.1


<a id="orgf5da974"></a>

## githib ~/.ssh/config

IdentityFile - replace for "ssh -i"

    # alias:
    Host github.com
        HostName github.com
        Port 22
        User git_username
        IdentityFile ~/.ssh/rsa_id
        PreferredAuthentications publickey


<a id="org9ba9da2"></a>

## key type

-   RSA - difficulty of factoring large numbers
-   DSA - no longer recommended.
-   ECDSA - weak - elliptic curves. Only three key sizes are supported: 256, 384, and 521 (sic!) bits.
-   ed25519 (EdDS) - new
    
    <https://stribika.github.io/2015/01/04/secure-secure-shell.html>


<a id="org9b82e4b"></a>

## security

-   Protocol 2                                  	                #Protocol 1 is fundamentally broken
-   StrictModes yes                                                 #Protects from misconfiguration

Diffie-Hellman key exchange

-   use 2048-bit or larger primes

RFC4419: The use of multiple moduli inhibits a determined attacker from precalculating moduli exchange values,
and discourages dedication of resources for analysis of any particular modulus.

generate new non elliptic-curve primes do this:

-   ssh-keygen -G moduli-2048.candidates -b 2048
-   ssh-keygen -T moduli-2048 -f moduli-2048.candidates
-   cp moduli-2048 /etc/ssh/moduli

soft

-   sshguard
-   fail2ban

-   Logjam Attack <https://weakdh.org/>

Stronger sshd<sub>config</sub>:

-   ClientAliveInterval 60 # seconds


<a id="org68db1fe"></a>

## Port Forwarding/Tunneling

<https://www.techrepublic.com/article/how-to-use-local-and-remote-ssh-port-forwarding/>

-N - Do not execute a remote command.  This is useful for just forwarding ports.
-f - background


<a id="orgcc6e0b0"></a>

### Local

local port to conecting ssh mashine

-g      Allows remote hosts to connect to local forwarded ports.

cons:

-   TLS certificate validation fails
-   When the website you are accessing redirects you to another URL, the connection fails because port
    forwarding is only valid for exactly this web server. This situation might be a problem when using single
    sign-on (SSO), for instance.

1.  ex

    ssh -L 8080:localhost:80 root@host.com
    
    localhost:8080 forwarded to remote address host.com:80.
    
    Enables you to access another server from your local computer
    
    -   port numbers that are less than 1024 or greater than 49151 are reserved for the system
    
        ssh -L 8080:www.slashdot.org:80 localhost
    
    You will be prompted to enter your user password for the client machine.  You are connecting, via SSH, back to
    your client machine, but creating the necessary SSH tunnel to the destination. After that, open up a browser
    and point it to <http://localhost:8080>. Your browser should automatically redirect you to Slashdot.
    
        ssh -L 9090:example.com:80 admin@server.com
    
    localhost port 9090 will be connected to example.com:80
    
        ssh -L 9090:localhost:3306 admin@server.com
    
    localhost 3306 will be opened as localhost 9090 for access admin@server.com
    
        ssh -L 0.0.0.0:80:site.com:80 -p 9983 root@localhost
    
    create mirror of site.com


<a id="orge146229"></a>

### Remote

require: GatewayPorts yes in sshd<sub>config</sub>

    ssh -R 9090:example.com:80 admin@server.com

server.com 9090 will be forwardet to example.com 80 which is accessed on local network only of server.com

    ssh -R 5900:localhost:5900 USERNAME@192.168.1.192

192.168.1.192 5900 will be forwarded to localhost 5900 with encryption

    ssh -R 6066:localhost:22 USERNAME@192.168.1.192

192.168.1.192 6066 will be forwarded to localhost 22 with encryption


<a id="org745171c"></a>

### Dynamic

ssh will act as SOCKS4/5 proxy (Port 1080 is the IANA registered port for SOCKS)

    ssh -D 1080 bastion.securecorp.io

localhost 1080 is now SOCKS proxy to bastion.securecorp.io which is work as SOCKS proxy


<a id="org9afadc8"></a>

### examples

vps double socks

-   ssh -D 1080 local<sub>user</sub>@localhost # create socks proxy on localhost
-   ssh -R 1080:localhost:1080 root@vps.com # allow access local 1080 port
-   ssh -L 1080:localhost:1080 -p 49382 root@cps.com # crate local 1080 which will be forwarded to remote 1080
-   


<a id="orgd8fb5c5"></a>

## Reverse SSH Tunnel

Require: GatewayPorts yes in sshd<sub>config</sub> ???

target:

-   ssh -fN -R 7010:localhost:23 username@yourMachine
-   yourMachine:7010 will be forwarded to target:22

<https://jfrog.com/connect/post/reverse-ssh-tunneling-from-start-to-end/>
<https://www.marksanborn.net/howto/bypass-firewall-and-nat-with-reverse-ssh-tunnel/>


<a id="org39640e3"></a>

## USE CASES

compare private and public

-   diff <( ssh-keygen -y -e -f "id<sub>rsa</sub>" ) <( ssh-keygen -y -e -f "id<sub>rsa.pub</sub>" )

login to directory

    ssh root@host -t "cd /directory_wanted ; bash --login"

get sha256 of a keys

    ssh-keygen -l -E sha256 -f .ssh/id_rsa


<a id="orgc56f3c6"></a>

## rsync

allow to resume downloading. Require: have rsync installed on both sides.


<a id="org220b844"></a>

### troubleshooting

No space left on device (28)

    --inplace


<a id="org669247b"></a>

## user with limited permissions

1.  /etc/ssh/sshd<sub>config</sub>

    Match Group sftp_users
    X11Forwarding no
    AllowTcpForwarding no
    ChrootDirectory /ubuntu # user folder
    ForceCommand internal-sftp

1.  /etc/passwd:
    -   ubuntu:x:1001:1001::/ubuntu:
2.  folder
    -   mkdir /ubuntu
    -   chown root.root *ubuntu*


<a id="orgacbf0ce"></a>

## links

-   Памятка пользователям ssh <https://habr.com/en/post/122445/>
-   <https://en.wikibooks.org/wiki/OpenSSH/Cookbook/Public_Key_Authentication>
-   <https://help.ubuntu.com/community/SSH/OpenSSH/Configuring>
-   config example <https://stosb.com/blog/explaining-my-configs-sshd_config/>


<a id="org5efe08d"></a>

## ssh over socks5

-   required: net-analyzer/openbsd-netcat
-   ssh -o ProxyCommand='nc -X 5 -x 127.0.0.1:1081 %h %p' root@host


<a id="org2581748"></a>

## problems

Connection closed by UNKNOWN port 65535

-   error in ProxyCommand


<a id="org4d9fa08"></a>

## ssh as a tor hidden service <a id="orgd4c6d22"></a>

-   apt update
-   apt install tor
-   server /etc/tor/torrc:

    ShutdownWaitLength 1 seconds
    # ExcludeNodes {ru}, {cn}, {by}, {kz}, {sy}, {am}, {in} # paranoid
    GeoIPExcludeUnknown 1 # paranoid
    Sandbox 0 # not compatible with obfs4
    Log notice file /var/log/tor/tor_notices.log
    SocksPort 0
    ExitRelay 0
    BridgeRelay 0
    HiddenServiceDir /var/lib/tor/ssh
    HiddenServicePort 22 127.0.0.1:22

Steps:

1.  Client:

    openssl genpkey -algorithm x25519 -out key.private.pem
    cat key.private.pem | grep -v " PRIVATE KEY" | base64 -d | tail --bytes=32 | base32 | sed 's/=//g' > private.key
    openssl pkey -in key.private.pem -pubout | grep -v " PUBLIC KEY" | base64 -d | tail --bytes=32 | base32 | sed 's/=//g' > public.key
    echo KEY_PUB=$(cat public.key)

1.  Server:
2.  <HiddenServiceDir>/authorized<sub>clients</sub>/<user>.auth
    -   descriptor:x25519:<public.key>
3.  mkdir /var/lib/tor/ssh
4.  chmod go-a *var/lib*
    tor/ssh

5.  Client:
6.  torrc: ClientOnionAuthDir /var/lib/tor/userauth
7.  create file: <ClientOnionAuthDir>/<user>.auth<sub>private</sub>
    -   <56-char-onion-addr-without-.onion-part>:descriptor:x25519:<private.key>

    KEY_USER=ta
    ONION=xfe4swdndyhauaxj5di5ewnce2egr7qonn475vvopywonpe76jara2id.onion
    PRIVATE=
    cat <<EOF > userauth.sh
    #!/bin/bash
    echo "${ONION:0:56}:descriptor:x25519:$PRIVATE" > /var/lib/tor/userauth/$KEY_USER.auth_private
    EOF

    SSH_TOR_PORT=88
    SSH_PORT=49382
    KEY_USER=ta
    KEY_PUB=P66JHL7W3R32O2DJBSGNVNR66JKJAS4KDG5Q4Q4EQM7CVH3X3IGQ
    apt update
    apt install tor
    cat <<EOF > /etc/tor/torrc
    RunAsDaemon 1
    ShutdownWaitLength 1 seconds
    GeoIPExcludeUnknown 0
    Sandbox 0 # not compatible with obfs4
    Log notice file /var/log/tor/tor_notices.log
    SocksPort 0
    ExitRelay 0
    BridgeRelay 0
    HiddenServiceDir /var/lib/tor/ssh
    HiddenServicePort $SSH_TOR_PORT 127.0.0.1:$SSH_PORT
    EOF
    mkdir -p /var/lib/tor/ssh/authorized_clients
    chmod -R 700 /var/lib/tor/ssh
    chown -R debian-tor:debian-tor /var/lib/tor/ssh
    echo "descriptor:x25519:$KEY_PUB" > /var/lib/tor/ssh/authorized_clients/$KEY_USER.auth
    systemctl restart tor
    sleep 7
    cat /var/lib/tor/ssh/hostname

<https://www.maths.tcd.ie/~fionn/misc/ssh_hidden_service/>


<a id="orgc14aabf"></a>

## ssh systemd service

    [Unit]
    Description=Setup a secure tunnel to %I
    After=network.target
    
    [Service]
    Environment="LOCAL_ADDR=localhost"
    EnvironmentFile=/etc/default/secure-tunnel@%i
    ExecStart=/usr/bin/ssh -NT -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -L ${LOCAL_ADDR}:${LOCAL_PORT}:localhost:${REMOTE_PORT} ${TARGET}
    
    # Restart every >2 seconds to avoid StartLimitInterval failure
    RestartSec=5
    Restart=always
    
    [Install]
    WantedBy=multi-user.target


<a id="orga069aa4"></a>

## rsync over ssh

Copy from remote to local

-   rsync required on remote host:

    rsync -avzhP -e "ssh -p 6767" root@41.80.200.1:/home/rtorrent/downloads/Guns* /home/ssh/downloads/


<a id="org395813f"></a>

## timeouts

Client side:

-   ServerAliveInterval 0 : Sets a timeout interval in seconds after which if no data has been received from
    the server, ssh will send a message through the encrypted channel to request a response from the server. For
    example, set a timeout to 15 seconds.
-   ServerAliveCountMax 3 : Sets the number of server alive messages which may be sent without ssh command
    receiving any messages back from the server. If this threshold is reached while server alive messages are
    being sent, ssh will disconnect from the server, terminating the session. The server alive messages are sent
    through the encrypted channel and therefore will not be spoofable.

Timeout value = ClientAliveInterval \* ClientAliveCountMax

Server side:

-   ClientAliveInterval 0: Sets a timeout interval in seconds (30) after which if no data has been received from
    the client, sshd will send a message through the encrypted channel to request a response from the
    client. The default is 0, indicating that these messages will not be sent to the client. This option applies
    to protocol version 2 only. Send by encrypted channel.
-   ClientAliveCountMax 3: Sets the number of client alive messages (5) which may be sent without sshd receiving any messages back from the client. If this threshold is reached while client alive messages are being sent, sshd will disconnect the client, terminating the session.
-   TCPKeepAlive: “yes/no” send keepalive messages (default yes). Send by unencrypted channel.

    -o 'ServerAliveInterval 5' -o 'ServerAliveCountMax 10' -o 'TCPKeepAlive no'


<a id="org214215c"></a>

# Text User Interface (TUI)

dialog

-   &#x2013;clear - clear the screen
-   

    dialog --clear --checklist "Favorite programming languages:" \
    10 30 7 1 \
    Python on 2 Java off 3 Bash off 4 Perl off 5 Ruby off


<a id="org5724100"></a>

# jq - JSON parser

-   <https://jqlang.github.io/jq/manual/>
-   <https://orgmode.org/worg/org-contrib/babel/languages/ob-doc-shell.html>


<a id="org7a7fa1f"></a>

## output format

By default, jq pretty-prints JSON output.

-   &#x2013;raw-output / -r	raw JSON or string without quotes
-   &#x2013;raw-output0	new lines replace with NUL
-   &#x2013;compact-output / -c:
-   &#x2013;color-output / -C and &#x2013;monochrome-output / -M:
-   &#x2013;indent n
-   &#x2013;tab - use tab instead of spaces


<a id="org5351403"></a>

## access

-   .[]			get element
-   ".[] | .name" 	access field
-   " | .name"		map for every
-   "map(.name)"		map for every
-   "| keys"		function: get the keys of an object
-   "| length"		function: get length
-   map(has("name"))	check key exist and return true or false
-   min/max
-   unique
-   jq '.[] | select(.color=="yellow")' - by condition
-   .[] | select(.name|test("<sup>o</sup>.")) - by regex match

omit one of the indexes:

    echo '[1,2,3,4,5,6,7,8,9,10]' | jq '.[:6]' | jq '.[-2:]' # [ 5, 6 ]

    echo '{"fruit1":{"name":"apple"},"fruit2":{"name":"orange"}}' | jq '.[] | select(.name|test("^o."))'

    echo '{"fruit":{"name":"apple","color":"green","price":1.20}}' | jq -r 'map(has("name"))'

    [
      true
    ]

    {
      "result": {
        "alternatives": [
          {
            "message": {
              "role": "assistant",
              "text": "Согласно документации"
            },
            "status": "ALTERNATIVE_STATUS_FINAL"
          }
        ],
        "usage": {
          "inputTextTokens": "29",
          "completionTokens": "77",
          "totalTokens": "106"
        },
        "modelVersion": "18.01.2024"
      }
    }

    cat | jq "map(.alternatives)"


<a id="org85c1efd"></a>

## merge

cat Pipfile.lock | jq '.default | (keys | .[]) + (.[].version)'


<a id="org981113a"></a>

## building

-   &#x2014;null-input / -n
-   

    BUCKET_NAME=testbucket
    OBJECT_NAME=testworkflow-2.0.1.jar
    TARGET_LOCATION=/opt/test/testworkflow-2.0.1.jar
    
    jq -n \
       --arg bn "$BUCKET_NAME" \
       --arg on "$OBJECT_NAME" \
       --arg tl "$TARGET_LOCATION" \
       '{bucketname: $bn, objectname: $on, targetlocation: $tl}'


<a id="org3409da9"></a>

# fish

-   do not use indentation to define code blocks like Python.
-   fish<sub>indent</sub> -


<a id="orge99d761"></a>

# print JSON

    BUCKET_NAME=testbucket
    OBJECT_NAME=testworkflow-2.0.1.jar
    TARGET_LOCATION=/opt/test/testworkflow-2.0.1.jar
    
    JSON_FMT='{"bucketname":"%s","objectname":"%s","targetlocation":"%s"}\n'
    printf "$JSON_FMT" "$BUCKET_NAME" "$OBJECT_NAME" "$TARGET_LOCATION"

