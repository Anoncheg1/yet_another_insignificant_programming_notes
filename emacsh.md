
# Table of Contents

1.  [terms ](#org5aaaf6c)
2.  [Emacs source code](#orgd4c13a1)
    1.  [elisp and common lisp](#orgf4ee150)
3.  [PROS](#org9c33c26)
4.  [CONS](#org8c84eb2)
5.  [encoding](#org942b40f)
6.  [keys](#org7e14ffc)
    1.  [help](#org9e51cda)
    2.  [basic](#org9d141e8)
    3.  [indentation](#org848cac2)
    4.  [Copy paste etc](#org41ea7e7)
    5.  [Navigate](#org803af15)
        1.  [buffers:](#org1cd659d)
    6.  [Marks](#orgdbe0cfe)
    7.  [macros](#org75ec851)
    8.  [auto-fill](#orgdffbe63)
7.  [key binding](#org9138ed0)
    1.  [colemak](#org4d7ee90)
    2.  [Keyboard Translations](#org751df04)
    3.  [Keymaps](#org4a4b0a7)
    4.  [function keys](#orgadf3d5c)
    5.  [chords](#org89890f2)
    6.  [hydra](#org4976207)
8.  [file variables](#org8aeb47c)
    1.  [fill column](#org59b1721)
9.  [global variables](#orgd0acff0)
10. [package install](#org8b78510)
    1.  [melpa add](#org2d7dbf0)
    2.  [Why use-package?](#org491a0cd)
    3.  [autoinstall](#orgd56c160)
    4.  [upgrade](#orgabaf6df)
11. [cool features](#org7bc1890)
    1.  [M-x artistic mode (draw mode)](#org3024cde)
    2.  [Registers](#org5873733)
12. [buffers](#orgcb09298)
    1.  [iflipb github](#org462cbf2)
    2.  [buffer-flip Melpa](#org48e429c)
    3.  [buffer-expose ELPA](#orge105e5e)
13. [windows](#orgc1bc252)
14. [modes](#orgd2a15c1)
    1.  [major modes](#orgc0ba70e)
    2.  [hooks](#org6947e48)
        1.  [eval-after-load vs. mode hook vs require](#org085656a)
        2.  [ex](#orgb568f09)
        3.  [hooks emacs](#org60585ce)
15. [history](#org00ab833)
16. [Easy Customization Interface](#org4181ca6)
17. [Theme](#org86c3c7e)
18. [fill column](#org93fe5a2)
19. [wrap lines](#org0cb6a60)
20. [Dvorak](#orgbcb2bc0)
21. [fonts](#orgf16a693)
22. [games](#orgb4fdd7a)
23. [backup](#orgc0df32d)
24. [diff and ediff](#orgd8996e5)
25. [Programming](#orgf4ad4fb)
    1.  [emacs-lisp-mode](#orgd758da3)
    2.  [IDE Theory](#org9757057)
    3.  [Project management](#org2d511ae)
        1.  [projectile](#orge6a3829)
    4.  [common keys](#org0108b5b)
        1.  [copy in terminal](#org069082a)
        2.  [Looking Up Identifiers (xref)](#org87d31c6)
    5.  [Perl](#org156640d)
    6.  [company-mode](#org5e48712)
    7.  [Python](#org2475d1d)
        1.  [jedi -  static analysis tool for Python](#org477b66d)
        2.  [lsp-pyright vs pyright - type checking](#org3497f57)
        3.  [eglot](#orgeb59b56)
        4.  [company-jedi](#orgcb1bd0f)
        5.  [elpy MELPA](#org45f54fd)
        6.  [flymake - erros checking](#org3cddb55)
        7.  [flycheck - errors checking](#org8926825)
    8.  [C/C++](#orgd7a4f37)
    9.  [php mod](#org8f397fa)
    10. [Ctags or tagging system](#orgf793682)
        1.  [GNU Global](#org8196f7c)
        2.  [GNU etags, ctags - generate tag file for Emacs, vi](#org94efe18)
        3.  [emacs Xref](#org8423fcc)
        4.  [rtags](#org4abd2ca)
        5.  [just search for string alternative](#org06d278d)
        6.  [Effeciency:](#org309ebbe)
    11. [Flymake and Flycheck](#org1aadf8d)
    12. [autocompletion](#org9055ff0)
        1.  [semantinc](#org5a5b383)
    13. [gdm](#org41c57fe)
    14. [autoformat](#org0c052d2)
26. [spell checking](#org6afafa0)
    1.  [links](#orgc1c521d)
27. [Math xah-math-input](#orgec05b12)
28. [Terminal](#orgd0e2481)
29. [dired](#orgfc9ab05)
    1.  [Copy files dired](#orgedf9e9b)
    2.  [usecase](#orgc5c1a15)
30. [Org mode ](#org7f3345c)
    1.  [navigate keys](#orge3cef24)
    2.  [attachments](#org0bfee9b)
    3.  [special symbols (TAB)](#orgb145182)
    4.  [headers](#org2e4bf1a)
        1.  [TAGS](#org3e1b72a)
        2.  [](#orgd886fa4)
    5.  [lists](#org35d4074)
    6.  [Checkboxes](#org4117235)
    7.  [Properties](#org423417d)
    8.  [Time Stamp](#org3889a38)
    9.  [Tables](#org4da2dce)
    10. [links [ [ link][description]]](#orgfcf1234)
    11. [links images, inline images](#org134478d)
    12. [Inline source code babel ](#org1c48b9b)
        1.  [commands](#org17fd33c)
        2.  [template](#org7a04ac9)
        3.  [python](#org59af827)
        4.  [output result](#orga7a6042)
    13. [LaTeX](#orgb8a53c1)
    14. [archiving](#org8433ad8)
    15. [inline images](#org47f0c34)
    16. [Tables and Spreadsheets](#orgd3a0dd3)
    17. [indent-mode](#org422e0a8)
    18. [templates for source code](#orgf9623e4)
    19. [graphiz](#orgc390531)
    20. [Capture C-c c and templates, notes](#org2496baf)
    21. [columnar view](#org8d201e9)
        1.  [keys](#org6ce7019)
        2.  [org-columns-default-format](#orgfb30f0d)
        3.  [format](#orgfe8b76f)
        4.  [properties](#org22bd344)
        5.  [links](#org517362e)
        6.  [effort template](#orgec99f3b)
    22. [priorities](#org49425d7)
        1.  [custom priorities:](#org809c283)
    23. [sort](#orgcf7e75e)
    24. [TAGS and TODO](#orgc87246d)
31. [Org agenda](#org8ee6c2c)
    1.  [keys](#orgf645422)
        1.  [keys in org mode for TODO:](#org832be51)
        2.  [in agenda:](#org1af06f9)
    2.  [time format](#orgcd48ebe)
    3.  [parser perl](#orgc02d57d)
    4.  [parser python](#org66a0162)
    5.  [config](#orgcbc3f4a)
    6.  [russian holidays](#org1801123)
    7.  [links](#orgb3ad290)
32. [appt - reminder for diary](#orgd7af07d)
    1.  [appt reminder](#orgfe22135)
    2.  [appt default config](#org3bd5b25)
    3.  [my reminder:](#orgf3d6616)
        1.  [reminder](#org5b6ae93)
    4.  [config reminder server-clients](#org49004be)
33. [calendar mode and diary](#orgb0a2a02)
    1.  [calendar keys](#orgc42d3f9)
    2.  [diary](#orgde73c2a)
        1.  [file](#org6b6b3b3)
34. [ob-http - REST client](#orgf0461de)
    1.  [options](#orgba4e6bf)
    2.  [examples](#orgd96382c)
        1.  [http source block](#org24c4b74)
        2.  [json source block](#org6710f34)
        3.  [form submit](#org6c5f516)
        4.  [varibale](#orgb3a27f7)
        5.  [properties](#org4fb76f2)
    3.  [require](#orga8c0dfd)
35. [Magit](#org2083c2e)
    1.  [conflict resolution:](#org88bafa4)
36. [cua-mode](#org876f90a)
37. [DoomEmacs](#org038c70c)
38. [Spacemacs](#org367b657)
39. [Rust Emacs](#org1db4610)
40. [4coder](#org54840d6)
41. [neovim](#orgdc86350)
42. [VSCode](#org8aeb6ae)
43. [.emacs](#orgdc3a4df)
44. [info](#orgf53a9db)
45. [AutoEncryption](#org5812dea)
46. [auto-composition-mode](#org5171d85)
47. [USECASES](#org370bebc)
    1.  [how to add column or form table?](#org4201f51)
    2.  [scroll two buffers two files together](#orgb096923)
    3.  [line numbers at left](#orgb67cc5f)
    4.  [two files change windows split vertically and horizontally](#orgfb85029)
48. [emacsclient](#org1757f42)
49. [Very Large Files](#org97f11a6)
50. [VoiceEmacs](#orgfc3cde5)
51. [QUESTIONS:](#org47bd9e3)

;-**- mode: Org; fill-column:120; org-src-fontify-natively:t; buffer-read-only: t;-**- or emacs -f view-mode

<https://github.com/emacs-tw/awesome-emacs>

example init

-   <https://github.com/steelkiwi/emacs.d>
-   <https://github.com/alexott/emacs-configs>
-   Org Magit Ivy Evil vterm Eshell Dired lsp-mode-ivy typescript <https://github.com/daviwil/emacs-from-scratch/blob/master/init.el>
-   org and shit <https://susamn.medium.com/ultimate-emacs-setup-with-documentation-in-org-mode-8ed32e2b3487>
-   Org Magit <https://github.com/org-roam/org-roam>
-   full <https://emacs.readthedocs.io/en/latest/general.html>
-   org notes with mobile orgzly <http://www.howardism.org/Technical/Emacs/getting-more-boxes-done.html>
-   agenda <https://github.com/opsnull/emacs>

TODO <https://steelkiwi.com/blog/emacs-configuration-working-python/>
TODO videos <https://www.youtube.com/user/emacsrocks/videos>
TODO <https://sites.google.com/site/steveyegge2/effective-emacs>


<a id="org5aaaf6c"></a>

# terms <a id="org0dc94e4"></a>

-   yeld - paste from kill ring.
    -   kill ring - is a list of blocks of text that were previously killed
-   active region - when set-mark-command is called, the region becomes active. And any other command typically set the
    region status to inactive after it is called.
    -   mark - set-mark-command
    -   region - The last marked position to the current cursor position.


<a id="orgd4c13a1"></a>

# Emacs source code

Emacs writen in lisp but lisp is writen in C

Code base is large:

-   Emacs is meant to be computing environment
-   Was created in time when there was no such concept as a package managers - a lot of staff was added to a core to make
    it useful in the box, but this days emacs would use packages if will be rewrited
-   a lot of staff here that doesn't need to be here.
-   too many feature to maintain with stability

forks: Lucid/XEmacs, Guile Emacs, Aquamacs, Mac port, Remacs.


<a id="orgf4ee150"></a>

## elisp and common lisp

-   there is emulation for common lisp in emacs
-   it is too hard to maintain universal interpretator for scripting it is better to enhance elisp and add support for
    other languages


<a id="org9c33c26"></a>

# PROS

-   **introspectable:** You can always find out 'what code runs when I press this button?'.
-   **incremental programming environment:** There's no edit-compile-run cycle. There isn't even an edit-run cycle. You can
    execute snippets of code and gradually turn them into a finished project. There's no distinction between your editor
    and your interpreter.
-   **mutable environment:** You can set variables, tweak functions with advice, or redefine entire functions. Nothing is
    off-limits.
-   **provides functionality without applications:** Rather than separate applications, functionality is all integrated into
    your Emacs instance.
-   **infinite clipboard:**

-   **undoing to any historical state:**

-   **reverse variable search:** you can find variables with a given value.
-   **structural editing:**

-   **documentation culture:** Emacs includes a usage manual, a lisp programming manual, pervasive docstrings and even an
    interactive tutorial.
-   **broad ecosystem:** In “Emacs is my “favourite Emacs package”” Protesilaos Stavrou talks about the importance of Emacs, the platform. The
    whole becomes greater than the sum of its parts.

    graphical UI was added, lexical scope was implemented, rudimentary networking and concurrency primitives were
    introduced, and more.


<a id="org8c84eb2"></a>

# CONS

-   M-f M-b - you are going to reach next world not the end of the current
-   M-v C-v - worst alternative to Page up Page down
-   M-</> - worst alternative to Home, End
-   C-u and C-k - not logic with C-h and C-d
-   C-w and M-d - not logic with C-h and C-d

Emacs:

-   do not save edit history
-   slow major releases - every 1-2 years
-   too much emphasise on FSF licensing - barrier to contribute - no rights for you
-   project cannot be part of Emacs until all who contributed to project will done copyrigt assiment to FSF
-   C is not popular. not many contributors
-   it is very easy for packages to interfere with one another, depend on functionality from other packages that get
    deprecated, changed in incompatible ways, or removed. There's currently no way for a package to depend on a specific
    version of another package, or for multiple versions of a single package to be loaded at the same time, for example.
-   Emacs packages can be valuable in isolation, combined, they amplify the platform that made them possible

Freedom has a price. — Richard Stallman(RMS) in “Re: New maintainer” (2015):

-   I think freedom is more important than technical progress. Proprietary software offers plenty of technical “progress”,
    but since I won’t surrender my freedom to use it, as far as I’m concerned it is no progress at all.
-   If I had valued technical advances over freedom in 1984, instead of developing GNU Emacs and GCC and GDB I would have
    gone to work for AT&T and improved its nonfree software. What a big head start I could have got!

Do you want a computing machine that respects your privacy, or a modern, powerful one?


<a id="org942b40f"></a>

# encoding

-   M-x revert-buffer-with-coding-system
-   M-x set-buffer-file-coding-system (or C-x C-m f)
-   M-x recode-region
-   '**'  - coding: utf-8 -**-
-   best way to convert - just copy text from emacs to new created emacs window

or

-   iconv -f ISO-8859-1 -t UTF-8 input.file -o out.file
-   iconv -l


<a id="org7e14ffc"></a>

# keys

C-A-?	autocompletion


<a id="org9e51cda"></a>

## help

C-h = F1
C-h ?	i manuals a shutcommands r tutorial
C-h l	история
c-h f   lisp function (keyboard-translate ?\C-o  ?\C-h)
C-h b	keys bindings
C-h e   message buffer
C-h F   help for command: org-mode


<a id="org9d141e8"></a>

## basic

M-x or Esc x - eval-defun - evaluate lisp funcion

C-x is prefix key for general commands, and C-c is prefix key of current major mode's commands.

C-x C-=(-) enter zoom mode -out =in

M-x recover-file <RET> foo.c <RET>
C-h t tutorial for Emacs
C-h r read Emacs manual

Modes

-   M+x text-mode auto-fill-mode enriched-mode org-mode
-   C+x C+q read only/switch mode

C-\\	сменить раскладку input-method - default-input-method: russian-computer; -\*-

-   M-x set-input-method
-   F1 C-\\  describe current input method

C-x RET r	сменить windows-1251

C-g or C-] or q		Cancel

C+u	repeat

deletion:

-   C+d delete char
-   C+k del to the end of the line
-   C+h backspace not working (keyboard-translate ?\C-h ?\C-?)

C-o (open-line) - dont move cursor
C-j (newline-and-indent)
C-m (newline)

-   as

C-x n d     Narrow the buffer to the contents of the current function (narrow-to-defun). This will narrow to the function as identified to the current function, even if it is nested in an object or another function. The logic to narrow the function is the same as the beginning-of-defun and end-of-defun commands – see Motion, and the mark-defun command – see above.
C-x n w    Undo any narrowing by widening the buffer again by making the rest of the buffer available (widen).

C-s C-i		search and highlight for Tabs
C-s space	search for highlight for spaces


<a id="org848cac2"></a>

## indentation

-   C-M-o	Split the current line at point
-   M-^	Merge the previous and the current line

-   M-i	Indent whitespace at point
-   C-M-\\    Indent all the lines in the region
-   C-x TAB  used to change the indentation of all lines that begin in the region
-   indent-sexp (C-M-q)
-   lisp-indent-line (tab key)

    <http://community.schemewiki.org/?emacs-indentation>
    <https://dougie.io/emacs/indentation/>


<a id="org41ea7e7"></a>

## Copy paste etc

-   C+space start of selecton
-   C+q cance
-   C+x C+x swap mark
-   C+x h 	mark all
-   M-h Mark the current function (c-mark-function). Puts the mark at the end and of the function and the point at the
    beginning. Useful if you want to kill the region with C-w or M-w, or indent the region with C-M-\\ or C-x TAB (See
    Indentation.).
-   S-M-f	select and go by word forward - special for Emacs

-   C+w  copy
-   M+w cut
-   C+y   paste (yank)
-   M+y  scrooll paste
-   C+/  undo and redo

-   File
-   C+x C+f open file
-   C+x C+s save
-   C+x s save all buffers

-   EDE Emcas Development Environment
-   M+x global-ede-mode
-   new project1)visit file in folder 2)M+x ede-new
-   target - файл в который строим может состоять из нескольких файлов
    -   C-c . t создать С-с . a add file C-c . c compile target C-c . C compile all targets

-   ETC.:
-   C+d	delete character


<a id="org803af15"></a>

## Navigate

-   C+f b n p	cursor nav
-   C+a		beg of line
-   C+e		end
-   M+m		to the indentation the begining of text
-   M-a		Move back to the beginning of the sentence (backward-sentence).
-   M-e 		Move forward to the end of the sentence (forward-sentence).
-   M+Shift+{}	backward-paragraph forward-paragraph

-   C+v M+v	PageDown, PageUp
-   C+l		scrool
-   M+m		to the indentation
-   C+s		search	C+r
-   M-x replace-string	search and replace
-   M-%			advanced search and replace
-   M+g+g			go to line
-   C+Home or M+Shift+<	start of the page
-   C+End or M+Shift+>	end of the page

-   Scroll Lock - fixate cursor


<a id="org1cd659d"></a>

### buffers:

-   C+x C+b list buffers
-   C+x+k kill
-   C+x+array(left or right) - next or preview buffer in list


<a id="orgdbe0cfe"></a>

## Marks

-   A-S-m		set mark


<a id="org75ec851"></a>

## macros

C-x (	start definition
C-x )	end definition
C-x e	Execute
C-u 20 C-x e


<a id="orgdffbe63"></a>

## auto-fill

M-x auto-fill-mode
M-q    refill paragraph
С-u C-x f set column to cursor

C+x f         set fill column (margin)


<a id="org9138ed0"></a>

# key binding

<http://ergoemacs.org/emacs/emacs_useful_user_keybinding.html>

C-h k	check binding for key
C-h b	all binding
C-h l   recent keystrokes


<a id="org4d7ee90"></a>

## TODO colemak

<https://github.com/jmorag/.emacs.d/blob/master/colemak/colemak-mode.el>


<a id="org751df04"></a>

## Keyboard Translations

<https://ftp.gnu.org/old-gnu/Manuals/emacs-20.7/html_node/emacs_457.html>
<https://www.gnu.org/software/emacs/manual/html_node/elisp/General-Escape-Syntax.html>
<https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_node/elisp_693.html>
<https://www.gnu.org/software/emacs/manual/html_node/elisp/Classifying-Events.html>
   Emacs contains numerous keymaps that apply in different situations, but there is only one set of keyboard
   translations, and it applies to every character that Emacs reads from the terminal. Keyboard translations take place
   at the lowest level of input processing; the keys that are looked up in keymaps contain the characters that result
   from keyboard translation.
(keyboard-translate ?\C-h ?\C-?)

(keyboard-translate ?\C-b ?c) - character


<a id="org4a4b0a7"></a>

## Keymaps

<https://ftp.gnu.org/old-gnu/Manuals/emacs-20.7/html_node/emacs_446.html#SEC453>


<a id="orgadf3d5c"></a>

## function keys

<https://www.gnu.org/software/emacs/manual/html_node/elisp/Function-Keys.html>

-   ‘A-’ The alt modifier.
-   ‘C-’ The control modifier.
-   ‘H-’ The hyper modifier.
-   ‘M-’ The meta modifier.
-   ‘S-’ The shift modifier.
-   ‘s-’ The super modifier.


<a id="org89890f2"></a>

## chords

-   order doesn’t matter: ab is the same chord as ba
-   two keys pressed simultaneously, or a single key quickly pressed twice


<a id="org4976207"></a>

## hydra

-   define modes like in vi with keys


<a id="org8aeb47c"></a>

# file variables

<https://www.gnu.org/software/emacs/manual/html_node/emacs/Specifying-File-Variables.html>
**File varibles**
-**- coding: utf-8; mode: modename; var: value; &#x2026; -**-
;; -**- mode: Lisp; fill-column: 75; -**-
M-x add-file-local-varible-prop-line	предлагает доступные переменные


<a id="org59b1721"></a>

## fill column

C-? v fill-column - help and get current
C-x f - set-fill-column


<a id="orgd0acff0"></a>

# global variables

-   F1 v  describe global variable
-   M-x set-variable
-


<a id="org8b78510"></a>

# package install

-   <http://elpa.gnu.org/>
-   <https://melpa.org/>
-   ELPA - default -  included in GnuEmacs
-   MELPA - additional
-   (load "package.el") - just load
-   require (provide 'foo) - load foo.el and require (provide 'foo) in file

M-x list-packages - ELPA

after install:

-   add (package-initialize) to ~/.emacs
-   (require 'package-name)   - to fully load the package
-   it's also recommended that you add (package-initialize) somewhere in your ~/.emacs file - to set up the load-paths and
    autoloads for installed packages.
-   (with-eval-after-load "package-name" &#x2026;) or (eval-after-load 'package-name &#x2026;) to run code after a package is
    loaded

to remove: M-x paclage-delete

-   after remove, to remove dependencies: M-x package-autoremove

;; only run this if rtags is installed
(when (require 'rtags nil :noerror)
;; something here
)


<a id="org2d7dbf0"></a>

## melpa add

<https://melpa.org/#/getting-started>

to ensure that Emacs has fetched the MELPA package list before you can install packages with M-x package-install or similar.

-   M-x package-refresh-contents or M-x package-list-packages

Updating Packages:

1.  package-list-packages
2.  type U (mark Upgradable packages)
3.  x (eXecute the installs and deletions).

    (require 'package)
    (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
    ;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
    ;; and `package-pinned-packages`. Most users will not need or want to do this.
    ;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
    (package-initialize)

OR

    ;; MELPA
    (setq url-proxy-services
       '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
         ("http" . "srv-proxy:8080")
         ("https" . "srv-proxy:8080")))

    (require 'package)
    (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
    (package-initialize)


<a id="org491a0cd"></a>

## Why use-package?

-   have to explicitly call (require 'package-name) in your init.el before you could do any configuration.
-   any configuration of the package may need to be wrapped in a (with-eval-after-load 'package-name &#x2026;) block, to avoid
    running into undefined variables and functions before your package is fully loaded - to run code after a package is
    loaded,


<a id="orgd56c160"></a>

## autoinstall

    (package-initialize)
    ;; list the packages you want
    (defvar package-list)
    (setq package-list '(async auctex auto-complete autopair clang-format cmake-ide
    			   cmake-mode company company-irony
    			   company-irony-c-headers dash epl flycheck
    			   flycheck-irony flycheck-pyflakes
    			   google-c-style helm helm-core helm-ctest
    			   helm-flycheck helm-flyspell helm-ls-git helm-ls-hg
    			   hungry-delete irony
    			   let-alist levenshtein magit markdown-mode pkg-info
    			   popup rtags seq solarized-theme vlf web-mode
    			   window-numbering writegood-mode yasnippet))
    ;; fetch the list of packages available
    (unless package-archive-contents
      (package-refresh-contents))
    ;; install the missing packages
    (dolist (package package-list)
      (unless (package-installed-p package)
        (package-install package)))


<a id="orgabaf6df"></a>

## upgrade

-   M-x package-list
-   U
-   x
-   M-x package-autoremove


<a id="org7bc1890"></a>

# cool features


<a id="org3024cde"></a>

## M-x artistic mode (draw mode)

-   <https://www.lysator.liu.se/~tab/artist/>
-   <http://dinasis.com/oliver/Learning_GNU_Emacs/gnu3-CHP-7-SECT-6.html>


<a id="org5873733"></a>

## Registers

Each register has a name that consists of a single character

-   C-x r s ? - copy-to-register
-   C-x r i ? - insert-register

-   C-x r SPC ? - point-to-register
-   C-x r j ? - jump-to-register

Bookmarks - persistent registers with long names

-   C-x r l  List all bookmarks (list-bookmarks).
-   C-x r m RET

    Set the bookmark for the visited file, at point.

C-x r m bookmark RET

    Set the bookmark named bookmark at point (bookmark-set).
C-x r M bookmark RET

    Like C-x r m, but don’t overwrite an existing bookmark.
C-x r b bookmark RET
    Jump to the bookmark named bookmark (bookmark-jump).


<a id="orgcb09298"></a>

# buffers

C-x	C-LEFT goes to previous buffer
C-x	C-RIGHT goes to next buffer
C-x k	kills a buffer
C-x 4 0	kills a buffer and its window
C-x b	switches to another buffer, or opens a new buffer
C-x	left/right - cycle buffers

cycling:

-   it is impossible to track key release event


<a id="org462cbf2"></a>

## iflipb github

<https://github.com/jrosdahl/iflipb>


<a id="org48e429c"></a>

## buffer-flip Melpa


<a id="orge105e5e"></a>

## buffer-expose ELPA


<a id="orgc1bc252"></a>

# windows

-   window - part of window
-   frame - sepparate window
-   C-x o	Switch to other window 	other-window
-   C-x 0	Delete selected window 	delete-window
-   C-x 1	Delete all windows other than the selected one 	delete-other-windows
-   C-x 2	Split selected window horizontally 	split-window-below
-   C-x 3	Split selected window vertically 	split-window-right
-   C-x 4 C-f open a file in the other window
-   C-x 4 0	kills a buffer and its window
-   C-x ^	Make selected window taller 	enlarge-window
-   Unbound 	Make selected window smaller 	shrink-window
-   C-x }	Make selected window wider 	enlarge-window-horizontally
-   C-x {	Make selected window narrower 	shrink-window-horizontally
-   C-x -	Shrink selected window to fit its buffer 	shrink-window-if-larger-than-buffer
-   C-M-v	Scroll the other window forward 	scroll-other-window
-   C-M-S-v	Scroll the other window backward 	scroll-other-window-down

-   C+x C+c quiet emacs
-   Esc Esc Esc - close other windows

consis of:

-   mode line  \*\* mean was changed (editing mode)
-   echo area

M+x make-frame delete-frame


<a id="orgd2a15c1"></a>

# modes

-   C-h m will reveal major mode and all minor modes that are active.
-   C-h v major-mode RET
-   M-: major-mode RET

to disable global mode:
M-x customize-option mouse-wheel-mode ; set to nil


<a id="orgc0ba70e"></a>

## major modes

-   Every major mode is associated with a major mode command, whose name should end in ‘-mode’
-   unlike minor modes there is no way to “turn off” a major mode, instead the buffer must be switched to a different one

types:

-   buffer-local, and can be turned on (enabled) in certain buffers and off (disabled) in others.
-   global: while enabled, they affect everything you do in the Emacs session, in all buffers. Most minor modes are
    disabled by default, but a few are enabled by default.

modes:

-   **fundamental-mode:** has no mode-specific definitions or variable settings.
-


<a id="org6947e48"></a>

## hooks

-   is a Lisp variable which holds a list of functions
-   You can set a hook variable with setq like any other Lisp variable, but the recommended way to add a function with
    add-hook
-   two types:  normal hooks
    -   Every variable whose name ends in ‘-hook’ is a normal hook.
    -   abnormal hooks -  names end in ‘-functions’, instead of ‘-hook’
-   Major mode hooks also apply to other major modes derived from the original mode
-   M-x eval-last-sexp RET - to test


<a id="org085656a"></a>

### eval-after-load vs. mode hook vs require

eval-after-load code:

-   will be executed only once, so it is typically used to perform one-time setup such as setting default global values
    and behaviour. An example might be setting up a default keymap for a particular mode.
-   there's no notion of the "current buffer".
-   code will always be executed before any functions in the related library are called.

Mode hooks

-   execute once for every buffer in which the mode is enabled
-   run later than eval-after-load code; this lets them take actions based upon such information as whether other modes
    are enabled in the current buffer.

(require 'foo)

-   load the file only if it hasn’t been loaded already. Expect (provide 'foo) in file


<a id="orgb568f09"></a>

### ex

-   function (add-hook 'text-mode-hook 'auto-fill-mode)
-   lambda (add-hook 'latex-mode-hook (lambda () (auto-fill-mode -1))) ;; disable mods

    (add-hook 'python-mode-hook
    	(lambda ()
    	  (setq python-indent-offset 2)))


<a id="org60585ce"></a>

### hooks emacs

-   kill-emacs-hook runs just before exiting Emacs
-   text-mode-hook -  Text mode and other modes based on Text mode


<a id="org00ab833"></a>

# history

M-x view-lossage - keys (F1 l)


<a id="org4181ca6"></a>

# Easy Customization Interface

-   interactive system for altering Emacs settings
-   Customize can also interactively change settings for all installed packages
-   All of those values are stored together in a single variable called custom-set-variables
-   M-x customize RET, or
-   M-x customize-group RET <group name> RET - jump you directly into the customization settings for a particular area,
    which is usually the name of a package itself


<a id="org86c3c7e"></a>

# Theme

global:

-   F10 -> 'options' -> 'customize emacs' -> 'custom-themes'.


<a id="org93fe5a2"></a>

# fill column

<https://www.gnu.org/software/emacs/manual/html_node/emacs/Fill-Commands.html>
<https://www.gnu.org/software/emacs/manual/html_node/emacs/Displaying-Boundaries.html>

C-x f    Set the fill column

minor modes:

-   M-x display-fill-column-indicator-mode locally
-   M-x global-display-fill-column-indicator-mode globally


<a id="org0cb6a60"></a>

# wrap lines

-   Hard-Wrap Lines - M-x fill-paragraph or M-q
    -   AutoFillMode - automatic M-q - insert a line ending after the last word that occurs before the value of option
        ‘fill-column’ (a column number).
    -   RefillMode - it hits M-q automatically after changes to the buffer that might normally trigger auto-filling
-   Soft-Wrap - visual-line-mode - wraps lines at fill-column
-

-


<a id="orgbcb2bc0"></a>

# Dvorak

C-x RET C-\\ english-dvorak RET


<a id="orgf16a693"></a>

# fonts

-   at character : Ctrl+u Ctrl+x =
-   chinese: fonts-noto-cjk

<https://gist.github.com/coldnew/7398845>
<https://gist.github.com/nukr/420fe13645900a1840ac>


<a id="orgb4fdd7a"></a>

# games

-   5x5 - fill in all the squares
-   animate - make text dance
-   blackbox - find objects by firing beams into a black box
-   bubbles - remove as many bubbles as possible in as few moves as possible.
-   DecipherMode - help for cracking a simple alphabetic substitution cipher
-   DissociatedPress – fun with gibberish
-   EmacsDoctor - psychological help from a Rogerian analyst, for when it’s all getting too much for you
-   dunnet - text-mode dungeon adventure game
-   gomoku - five-in-a-row against the computer
-   hanoi - computer solving the towers of hanoi game
-   igo - Play Go / Weichi / Baduk or read a game in SGF.
-   landmark - neural net robot that learns landmarks; in Emacs 24 it is invoked with landmark; in previous version it is
    invoked with lm <http://www.gnu.org/software/emacs/news/NEWS.24.2>
-   life - John Conway’s game of life
-   meese - stop impressionable young minds of America from seeing the etc/sex.6 man page
-   MorseCode - convert text to and from morse code
-   mpuz - multiplication puzzle (hidden digits)
-   pong - two-player computerized ping-pong
-   snake - guide a snake around the screen, eat to grow
-   solitaire - balls on an 8x8 cross shaped grid
-   spook - Generates words to get government’s attention
-   studlify-region - convert text to stUdlY caps
-   TetrisMode - arrange falling blocks (see also: <https://github.com/skeeto/autotetris-mode>)
-   yow - random Zippy quote
-   ZoneMode - crazy screen effects when idle


<a id="orgc0df32d"></a>

# backup

~backup<sub>file</sub> - previeous
\#file# - autosave every 300 characters or 30 seconds of idleness.

Created file~ only the first time the file is saved from a buffer

-   diff-backup - see difference with file~

M-x recover-file <RET> foo.c <RET>
yes <RET>
C-x C-s

M-x recover-session - to recover if crash


<a id="orgd8996e5"></a>

# diff and ediff

M-x diff/ ediff

-   diff -default -u

ediff

-   n/p - next/previous hunk
-   a - apply version A's hunk
-   b - apply version B's hunk
-   r - revert, undo the applying of the A/B hunk.
-   q - quit ediff session
-   ! - update diff

submenus:

-   Compare
-   Merge
-   Apply Patch.

`a` b=


<a id="orgf4ad4fb"></a>

# Programming


<a id="orgd758da3"></a>

## emacs-lisp-mode

-   C-M-x		eval-defun - at any postion
-   C-x C-e	eval-last-sexp - only after line

-   M-x eval-region
-   M-x eval-buffer

-   F1 e	message buffer
-   F1 f	describe function
-   F1 v  describe global variable
-   C-M-v/C-M-S-v		scroll another window


<a id="org9757057"></a>

## IDE Theory

-   highlight syntax
-   find includes
-   find where used


<a id="org2d511ae"></a>

## Project management

<https://www.emacswiki.org/emacs/CategoryProject>

M-x speedbar - fast navigate between files


<a id="orge6a3829"></a>

### projectile

-   <https://github.com/bbatsov/projectile>
    -   <https://docs.projectile.mx/projectile/index.html>

Commands

-   ? p p - list of known Projects
-   ? p m	projectile-commander - ? for help
-   ? p k		Kills all project buffers.
-   ? p D		Opens the root of the project in dired
-   s-p 4 D	Opens the root of the project in dired in another window.
-   s-p 5 D	Opens the root of the project in dired in another frame.
-   s-p x t	Start or visit an ansi-term for the project.
-   s-p C-h(f1)	Keys
-   Grep in project: C-c p g s

1.  install

    M-x package-install [RET] projectile [RET]

    (require 'projectile)
    (with-eval-after-load 'projectile
      (projectile-mode +1)
      ;; Recommended keymap prefix on Windows/Linux
      (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
    )


<a id="org0108b5b"></a>

## common keys

-   C-j		new line and indent
-   C-M-q indent C-M-\\ indent region or all
-   C-i		switch indenation for line

-   M-x		speedbar
-   M-/		expand previous word
-   C-M-a|e		begining|end of function
-   M-x		delete-trailing-whitespace
-   M-x		whitespace-newline-mode

-   M-;		add comment or un/comment region
-   M-j		continue comment at new line
-   C-x C-;		un/comment line
-   M-s h .	highlight all occurance

Navigating over balanced expressions

-   C-M-n     forward-list  Move forward over a parenthetical group
-   C-M-p     backward-list  Move backward over a parenthetical group
-   C-M-f     forward-sexp Move up
-   C-M-b     backward-sexp  Move down
-   C-M-k     kill-sexp  Kill balanced expression forward
-   C-M-SPC   mark-sexp  select balanced expression forward

indentation кол-во пробелов:
tab-width (default 8)

-   F1 e	messages
-   C-x d	dired
-   C-x C-e	debugging

C-x TAB		indentation mode with arrows.

M-x toggle-truncate-lines	Disable lines wrap


<a id="org069082a"></a>

### copy in terminal

Ctrl+W: Cut the word before the cursor
Ctrl+K: Cut after the cursor
Ctrl+U: Cut before the cursor


<a id="org87d31c6"></a>

### Looking Up Identifiers (xref)

-   M-.		go to definition
-   C-x 4 . RET	Find definitions of identifier, but display it in another window
-   C-x 5 . RET	Find definition of identifier, and display it in a new frame
-   M-,		Go back to where you previously invoked M-. and friends
-   C-M-. pattern Find all identifiers whose name matches pattern


<a id="org156640d"></a>

## Perl

M+x cperl-mode
help C-h f cperl-mode


<a id="org5e48712"></a>

## TODO company-mode

<https://www.monolune.com/configuring-company-mode-in-emacs/>
<https://readingworldmagazine.com/emacs/2020-07-27-emacs-company-mode/>
<https://readingworldmagazine.com/emacs/2021-09-01-emacs-company-continued-first-thing-to-do-when-developing-with-emacs/>

-   company
-   company-jedi  - company-mode completion back-end for Python JED

-   emacs completion framework It comes with several back-ends: Elisp, Clang, Semantic, Ispell, CMake, BBDB,

Yasnippet, Dabbrev, Etags, Gtags, Files, Keywords

-   Not Python


<a id="org2475d1d"></a>

## Python

-   <https://www.emacswiki.org/emacs/PythonProgrammingInEmacs>
-   TODO: <https://realpython.com/emacs-the-best-python-editor/>

pip jedi - Python JEDI lib - autocompletion, static analysis and refactoring library for Python

plugins

-   elpy - big
-   jedi - big
-   Eglot

completion

-   CompanyMode  - become more popular
-   AutoComplete

Code generation

-   yasnippet

Code checker

-   Flycheck and FlyMake can be used to wrap checkers such as pep8, pyflakes (flake8 includes both), pylint and
    pychecker. Both support multiple checkers per buffer.
-   autopep8 - formats Python code to conform to the PEP 8 style guide using the pep8 tool.
-   black

Viewing generated documentation

-   pydoc
    -   helm-pydoc
-   elpy


<a id="org477b66d"></a>

### jedi -  static analysis tool for Python

-   refactoring, code search and finding references
-   (Jedi.el, company-mode, elpy, anaconda-mode, ycmd)

1.  jedi-core details

    -   Not support v 18
    -   jedi-core configuration without jedi:install-server:
    -   info - jedi:show-setup-info

    dependencies:

    -   python-environment-0.0.2 - virtualenv API for Emacs Lisp
        -   deferred-0.3.1 - Simple asynchronous functions for emacs lisp
    -   epc-0.1.0

    jediepcserver.py - located in .emacs.d/elpa/jedi-core-0.2.8/jediepcserver.py

    jedi install server:

    -   "pip" "install" "&#x2013;upgrade" ,(convert-standard-filename jedi:source-dir)
    -   python-environment-default-root-name is used
    -   jedi:environment-root

    steps:

    -   pip download jedi
    -   pip hash &#x2013;algorithm sha512 ./jedi-0.17.1.tar.gz
    -   requirements.txt
        -   jedi==0.17.1 &#x2013;hash=sha512:b86297b2fbb212695469b34288836e3346a33c5c6b83337dbe4ceaaeb2b4185dcb6c888336e24f6da3fe22a39c803af5c34ae5a4ed1d177fde1c1d7fc143bf09
        -   parso==0.7.1 &#x2013;hash=sha512:19c30d07a8982323ffbeba3fa36c8f504f49991c54df595e47defca1b1ba94ab3f5203485e6459012adfd440cc648dd8cfd44c571f02db7ed8e49f372eb3df3a
        -   epc==0.0.5 &#x2013;hash=sha512:e2b75850e39bb0f3c16f5b84f55dec675a8fe2b61ff5fd55704ef677317d698865a99fc495247cd753a2c8329729f45bc7f81f42dd4c6d27b31810c0aac831e2
        -   sexpdata==0.0.3 &#x2013;hash=sha512:419fa731fb0b953c404a71f1b5f88777546405618913b1d2e4abab7a876d285d43cd035addffb9d221571214e00151e908e8ef6b99295dacee8ca3f4c8ba942e
    -   pip install &#x2013;no-cache-dir &#x2013;no-binary=:all: &#x2013;require-hashes &#x2013;user -r requirements.txt

2.  emacs-jedi

    -   <https://github.com/tkf/emacs-jedi>
    -   <http://tkf.github.io/emacs-jedi/latest/>

    completion framework for jedi

    requirements:

    -   virtualenv
    -   setuptools
    -   pip install virtualenv &#x2013;user
    -   M-x package-install RET jedi
    -

    (with-eval-after-load 'jedi-core
      ;;standard-jedi-settings
      (setq jedi:environment-virtualenv (list (expand-file-name "~/.emacs.d/.python-environments/")))
      ;; (setq jedi:environment-root "jedi")  ; or any other name you like
      (add-hook 'python-mode-hook 'jedi:setup)
      (setq jedi:complete-on-dot t)
      (setq jedi:use-shortcuts t)
    )

    1.  M-x jedi:install-server in Emacs

    1.  keys

        <C-tab> jedi:complete

        Complete code at point.

        C-c ? jedi:show-doc

        Show the documentation of the object at point.

        C-c . jedi:goto-definition

        Goto the definition of the object at point.

        See jedi:goto-definition-config for how this function works when universal prefix arguments (C-u) are given. If numeric prefix argument(s) (e.g., M-0) are given, goto point of the INDEX-th result. Note that you cannot mix universal and numeric prefixes. It is Emacs’s limitation. If you mix both kinds of prefix, you get numeric prefix.

        When used as a lisp function, popup a buffer when OTHER-WINDOW is non-nil. DEFTYPE must be either assignment (default) or definition. When USE-CACHE is non-nil, use the locations of the last invocation of this command. If INDEX is specified, goto INDEX-th result.

        C-c , jedi:goto-definition-pop-marker

        Goto the last point where jedi:goto-definition was called.

        variable (jedi:use-shortcuts nil)

        If non-nil, enable the following shortcuts:
        M-. jedi:goto-definition
        M-, jedi:goto-definition-pop-marker

3.  company-jedi

    -   <https://github.com/emacsorphanage/company-jedi>

    completion back-end of **company** autocompletion framework for JEDI

    -   M-n/M-p - next/previous candinate
    -   Tab - Insert the common part of all the candidates
    -   C-c ? - show doc (jedi)
    -   M-x company-ispell - english words candidated
    -   F1 - show doc after menu opens

        (add-hook 'python-mode-hook 'jedi:setup)
        (add-hook 'python-mode-hook 'company-mode)

        (with-eval-after-load 'jedi-core
          (setq jedi:environment-virtualenv (list (expand-file-name "/home/u/.local/lib/python3.10/site-packages")))

          (setq jedi:complete-on-dot t)
          (setq jedi:use-shortcuts t)
          ;; my
          (setq jedi:get-in-function-call-timeout 0
            jedi:get-in-function-call-delay   0
            jedi:goto-definition-config    '((nil definition nil))
            )
          (add-to-list 'company-backends 'company-jedi)
          )

    old:

        (with-eval-after-load "company-jedi"
          ;; use-package company-jedi             ;;; company-mode completion back-end for Python JEDI

          ;;standard-jedi-settings
          (add-hook 'python-mode-hook 'jedi:setup)
          (setq jedi:complete-on-dot t)
          (setq jedi:use-shortcuts t)
          ;;company-jedi-settings
          (setq jedi:environment-virtualenv (list (expand-file-name "~/.emacs.d/.python-environments/")))
          (defun my/python-mode-hook ()
            (add-to-list 'company-backends 'company-jedi))
          (add-hook 'python-mode-hook 'my/python-mode-hook)

          ;; backend-settings
          (setq elpy-rpc-backend "jedi")

          )

4.  anaconda-mode

    -   support jedi 18
    -   required:

        -   service<sub>factory</sub>
        -   jedi

        optional requirements: company-anaconda


<a id="org3497f57"></a>

### TODO lsp-pyright vs pyright - type checking


<a id="orgeb59b56"></a>

### eglot

<https://github.com/joaotavora/eglot>

for go to definition jedi package required


<a id="orgcb1bd0f"></a>

### company-jedi

requirements:
pip install sexpdata-0.0.3.tar.gz
pip install epc-0.0.5.tar.gz
pip install virtualenv-15.1.0.tar.gz

M-x jedi:install-server

jedi required 0.17.2

C-c ?  - get documentatio for object


<a id="org45f54fd"></a>

### elpy MELPA

-   doc <https://elpy.readthedocs.io/en/latest/>

install elpy for MELPA

-   pip3 install flake8 &#x2013;user
-   .bashrc: export PATH=$PATH:~/.local/bin
-   M-x elpy-doc - configure doc for C-c C-d

-   C-c C-p - start python window
-   C-c C-c - in text - run all bufer in started python window
-   C-c C-r - in text - run region

1.  setup example

    (defun my/python-mode-hook ()
      (add-to-list 'company-backends 'company-jedi))

    (add-hook 'python-mode-hook 'my/python-mode-hook)
    (company-jedi 1)

    (setq elpy-rpc-backend "jedi")
    (add-hook 'python-mode-hook 'jedi:setup)

    (global-set-key "\C-x\C-j" 'jedi:goto-definition)
    (global-set-key "\C-x\C-k" 'jedi:goto-definition-pop-marker)

2.  TODO artile

    1.  install elpy for MELPA
    2.  install:
        -   dev-python/jedi - wesome autocompletion, static analysis and refactoring library for Python
        -   dev-python/black - Python code formatter
        -   dev-python/autopep8 -  automatically formats Python code to conform to the PEP 8 style guide
        -   dev-python/yapf - ?
        -   dev-python/flake8 - syntax checker
        -   dev-python/rope - ?
    3.  M-x elpy-config
    4.  M-x pyvenv-activate ( not shure)
    5.  M-x elpy-rpc-reinstall-virtualenv ( not shure)
    6.  (setq elpy-rpc-virtualenv-path 'current) (not shure)
    7.  Enable:
        -   file variables: # ; -**- mode: Python; eval: (elpy-enable); fill-column: 100; -**-
        -   or .emacs

    1.  keys:

        -   C-C C-d - get doc
        -   M-Tab - autocompletion
        -   C-c C-v - elpy-check syntax (automatic at save)
        -   M-; - comment
        -   C-c C-c - send all to python shell
        -   C-RET - send current line
        -   C-c C-r - rename varibale
        -   C-c <		python-indent-shift-left
        -   C-c >		python-indent-shift-right

    2.  ERROR line too long

        <https://emacs.stackexchange.com/questions/23925/how-to-customize-the-line-character-length-in-elpy>

        create: setup.cfg

            [flake8]
            max-line-length = 160

    1.  in org

        -   <https://orgmode.org/worg/org-contrib/babel/languages/ob-doc-python.html>
        -   <https://kotfic.github.io/org-mode-export-of-matplotlib-images-etc.html>

        **ipython:**

            (org-babel-do-load-languages
             'org-babel-load-languages
             '((python . t)))

            (setq org-babel-python-command "ipython3 --no-banner --classic --no-confirm-exit")

        **or with shell:**

            (org-babel-do-load-languages
             'org-babel-load-languages
             '((python . t)))

            (setq shell-command-switch "-ic")

        **execute without ask**

            ;; all python code be safe
            (defun my-org-confirm-babel-evaluate (lang body)
              (not (string= lang "python")))
            (setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)


<a id="org3cddb55"></a>

### flymake - erros checking

-   require python-pyflakes
-   emerge &#x2013;ask dev/python-pyflakes
    (add-hook 'python-mode-hook
    (lambda ()
      (flymake-mode)
      ))

i am not shure if it is required:

-   package: flymake-python-pyflakes
-   .emacs
    -   (require 'flymake-python-pyflakes)
    -   (add-hook 'python-mode-hook 'flymake-python-pyflakes-load)


<a id="org8926825"></a>

### flycheck - errors checking

native supprot for: python-flake8 or python-pylint, and falls back to python-pycompile if neither of those is available

-   emerge &#x2013;ask dev-python/flake8

    (add-hook 'python-mode-hook
      (lambda ()
        (flycheck-mode)
        ))

(defun my/python-mode-hook ()
  (local-set-key (kbd "<M-left>") 'python-indent-shift-left )
  (local-set-key (kbd "<M-right>") 'python-indent-shift-right )
  ;; (display-line-numbers-mode)
  ;; indentation
  (setq python-indent-offset 4)
  ;; errors checking
  (flycheck-mode)
)

1.  links

    <https://www.flycheck.org/en/latest/languages.html#python>


<a id="orgd7a4f37"></a>

## C/C++

-   <https://nilsdeppe.com/posts/emacs-c++-ide2>
-   <https://www.youtube.com/watch?v=5FQwQ0QWBTU>
-   rtags irony flycheck <https://martinsosic.com/development/emacs/2017/12/09/emacs-cpp-ide.html>
-   GGTAGS CDET SEMANTIC EDE <http://tuhdo.github.io/c-ide.html>
-   cwarn - build in


<a id="org8f397fa"></a>

## php mod

C-M-<HOME>     Move point to the beginning of the current function (beginning-of-defun).
C-M-<END>    Move point to the end of the current function (end-of-defun).

C-M-\\    Properly indent each line of region (indent-region).
C-c C-q    Properly indent each line of current top-level function or top-level class (c-indent-defun).

M-;    Insert comment at point (comment-dwim). If comment already exist, indent comment (comment-indent).
M-j    Insert a newline in a comment on the next line with the comment starting at the same column as the current line (c-indent-new-comment-line).
C-c C-c    Comment out the current region (comment-region). If region is already commented, the region is uncommented.
C-u M-;    Kill the comment on the current line (comment-kill called by comment-set-column or comment-dwim).
C-u n M-;    Kill the next n comments (comment-dwim).

convert the tabs to spaces:

1.  C-x h
2.  M-x untabify RET

M-? find usages (xref-find-references)


<a id="orgf793682"></a>

## Ctags or tagging system

<https://www.gnu.org/software/emacs/manual/html_node/emacs/Create-Tags-Table.html>
<https://www.emacswiki.org/emacs/BuildTags>
<https://en.wikipedia.org/wiki/Ctags>
<http://blog.binchen.org/posts/how-to-manage-and-use-tags-file-of-third-party-libraries-in-emacs.html>
<https://smanist.github.io/2018/01/17/Emacs-for-Python-Cpp/>
comparision <https://github.com/oracle/opengrok/wiki/Comparison-with-Similar-Tools>

people usually use ctags to do two things

-   Code navigation
-   Auto-complete/IntelliSense


<a id="org8196f7c"></a>

### GNU Global

<https://developpaper.com/use-gnu-global-to-read-code-in-emacs/>
ggtags <https://github.com/leoliu/ggtags>

Emacs frontends to GNU Global:

-   It is similar to older tagging software such as ctags and etags, but differs in its independence from any specific
    text editor.
-   alternative with better functionality for C, C++, Yacc, Java, PHP4 and assembly language.
-   ggtags
-   helm-gtags
-   gtags-mode (global build in)

create tags:

-   M-x ggtags-create-tags RET
-   $ gtags
-   $ gtags -c    create compact database

find

-   global -T -x string - T search in libs. x - verbose

1.  Libraries:

    <https://emacs.stackexchange.com/questions/13254/find-external-definition-with-gtags-or-ggtags>

    -   If you want to locate symbols that are not defined in the source tree, then you can specify library directories
        with GTAGSLIBPATH environment variable.
    -   You should execute gtags(1) at each directory in the GTAGSLIBPATH. If ‘GTAGS’ is not found there, global ignores such
        directories.
        -   $ global strlen # strlen() is not found
        -   $ (cd /usr/src/lib; gtags) # library source
        -   $ (cd /usr/src/sys; gtags) # kernel source
        -   $ export GTAGSLIBPATH=/usr/src/lib:/usr/src/sys
        -   $ global strlen ../../../usr/src/lib/libc/string/strlen.c # found in library $ global access ../../../usr/src/sys/kern/vfs<sub>syscalls.c</sub> # found in kernel

    or

    -   $ ln -s /usr/src/lib .
    -   $ ln -s /usr/src/sys .
    -   $ gtags

    locate library

    -   $ gcc -v &#x2013;print-file-name=libc.a
    -   By default libraries are installed in /usr/lib and header files will be in /usr/include
    -   Usually extension of the library file is .so(dynamic) .a(static) and corresponding header file will be .h
    -   $ echo "#include <bogus.h>" > t.c; gcc -v t.c; rm t.c
    -   echo "#include <bogus.h>" | gcc -v -x c -


<a id="org94efe18"></a>

### GNU etags, ctags - generate tag file for Emacs, vi

-   part of GNU Emacs
-   create tag table (defaults: TAGS for etags, tags for ctags)
-   The etags  format understood by emacs(1);
-   the ctags  format understood by vi(1).

-   create a tags **table file**
    -   M-x compole RET etags \*.el RET
    -   find . -name "\*.[chCH]" -print | etags -
-   Emacs has at any time at most one selected tags table
    -   - M-x visit-tags-table RET / RET
    -   (setq tags-table-list '("~/.emacs.d" "/usr/local/lib/emacs/src"))
    -   Do not set both tags-file-name and tags-table-list.

to enable table:

-   M-x visit-tags-table RET / RET

simple approach:

-   (require 'etags-select)
-   (require 'etags-table)
-   (global-set-key "\M-." 'etags-select-find-tag)


<a id="org8423fcc"></a>

### emacs Xref

Starting with Emacs 25, the default key bindings for tag navigation were mostly given to Xref, but the tags commands
they were previously bound to are still available.

-   Xref abstracts over multiple identifier-searching backends (one of them being the **tags backend**)

1.  Xref Keys

    -   \`M-.’ (‘xref-find-definitions’)
    -   \`C-x 4 .’ (‘xref-find-definitions-other-window’) – select the buffer containing a tag’s definition in another window,
        and move point there.
    -   \`M-,’ (‘xref-pop-marker-stack’) – jump back
    -   \`C-M-.’ (‘xref-find-apropos’) – find all meaningful symbols that match a regexp or word list
    -   \`M-?’ (‘xref-find-references’) – find all references to the identifier at point

2.  Tags Keys

    -   \`M-.’ (‘find-tag’) – find a tag, that is, use the Tags file to look up a definition. If there are multiple tags in the project with the same name, use \`C-u M-.’ to go to the next match.
    -   ‘M-x find-tag-other-window’ – selects the buffer containing the tag’s definition in another window, and move point there.
    -   ‘M-\*’ (‘pop-tag-mark’) – jump back
    -   ‘M-x tags-search’ – regexp-search through the source files indexed by a tags file (a bit like ‘grep’)
    -   ‘M-x tags-query-replace’ – query-replace through the source files indexed by a tags file
    -   \`M-,’ (‘tags-loop-continue’) – resume ‘tags-search’ or ‘tags-query-replace’ starting at point in a source file
    -   ‘M-x tags-apropos’ – list all tags in a tags file that match a regexp
    -   ‘M-x list-tags’ – list all tags defined in a source file


<a id="org4abd2ca"></a>

### rtags

based on LLVM/Clang

executables

-   rdm - server application, and monitors all your indexed files for changes, and reindexes
    -   rp - used by rdm, when a source file or one of its dependencies is modified
    -   rc -  needs specific information about how your sources are compiled to be able to properly index them
    -   ~/.rdmrc -  to start rdm with specific options


<a id="org06d278d"></a>

### just search for string alternative

<http://xahlee.info/emacs/emacs/emacs_grep_find.html>
<http://xahlee.info/comp/ctags_etags_gtags.html>


<a id="org309ebbe"></a>

### Effeciency:

-   <http://blog.binchen.org/posts/how-to-use-ctags-in-emacs-effectively-3.html>


<a id="org1aadf8d"></a>

## Flymake and Flycheck

-   Flymake is replacement for the older Flymake
-   Flymake is build-in

Flycheck uses backend check program <https://www.flycheck.org/en/latest/languages.html#flycheck-languages>


<a id="org9055ff0"></a>

## autocompletion


<a id="org5a5b383"></a>

### semantinc

-   integrated with etags
-   build in

right mouse button

supported tools are GNU Global, GNU Idutils, CScope, and Grep (the fallback method). For best results, use GNU Global.

 (semantic-add-system-include "/usr/include/boost" 'c++-mode)
(semantic-add-system-include "~/linux/kernel")
(semantic-add-system-include "~/linux/include")


<a id="org41c57fe"></a>

## TODO gdm

<https://tuhdo.github.io/c-ide.html>
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t

;; Non-nil means display source file containing the main routine at startup
gdb-show-main t
)

M-x gdb

run gdb (like this):gdb -i=mi source<sub>file</sub>

To use gdb-many-windows, you must always supply the -i=mi argument to gdb, otherwise gdb-many-windows won't work.


<a id="org0c052d2"></a>

## autoformat

-   M-q fill-paragraph

You can control such indentation using options lisp-indent-offset and lisp-body-indent, option lisp-indent-function, or symbol property lisp-indent-function. One possible value for option lisp-indent-function is the value of common-lisp-indent-function.
<http://www.gnu.org/software/emacs/manual/html_node/emacs/Lisp-Indent.html>
<http://www.gnu.org/software/emacs/manual/html_node/emacs/Program-Indent.html>


<a id="org6afafa0"></a>

# spell checking

-   emerge app-text/aspell
-   C-M-i   Complete the word before point based on the spelling dictionary (ispell-complete-word).
-   M-x ispell-change-dictionary RET dict RET

    (add-to-list 'ispell-skip-region-alist '(":\\(PROPERTIES\\|LOGBOOK\\):" . ":END:"))
    (add-to-list 'ispell-skip-region-alist '("#\\+BEGIN_SRC" . "#\\+END_SRC"))
    (require 'flyspell)
    (add-hook 'text-mode-hook 'flyspell-mode)
    (add-hook 'org-mode-hook 'flyspell-mode)
    (define-key flyspell-mode-map (kbd "C-.") 'helm-flyspell-correct)
    (setq-default ispell-program-name "aspell")


<a id="orgc1c521d"></a>

## links

-   <https://emacs.readthedocs.io/en/latest/writing_in_emacs.html>
-   <https://www.gnu.org/software/emacs/manual/html_node/emacs/Spelling.html>


<a id="orgec05b12"></a>

# Math xah-math-input

<http://xahlee.info/emacs/emacs/xmsi-math-symbols-input.html>

install:

-   copy <https://github.com/DiamondBond/xah-math-input> to "~/.emacs.d/contrib/lisp/"
-   .emacs: (add-to-list 'load-path "~/.emacs.d/contrib/lisp/")

-   <http://ergoemacs.org/emacs/xmsi-math-symbols-input.html>
-   ;-**- mode: Org; mode: xah-math-input; fill-column: 100;-**-

Type “inf”, then press 【Shift+Space】 \`xah-math-input-change-to-symbol', then it becomes “∞”.

For the complete up-to-date list:
**Alt+x  xah-math-input-list-math-symbols**

inf		∞
empty,es ∅
+-		±
forall	∀
exist	∃
isin		∈
notin	∉
ni		∋
sum		∑
int		∫
cap		∩
union,cup ∪
sim		∼
asymp	≈
equiv	≡
ne		≠
nsub	⊄
sube	⊆
supe	⊇
sub		⊂
sup		⊃
D		Δ
O		Ω
q		θ
nabla	∇
part		∂
rt		√
rp		∘
cp		⊕
ct		⊗

Ancient Greek:

-   a - α; b-β; g-γ; d-δ; e-ε; z-ζ; h-η; q-θ; i-ι; k-κ; l-λ; m-μ; n-ν; x-ξ; p-π; r-ρ; s-σ; t-τ; v-υ; f-φ; c-χ; y-ψ; o-ω
-   A-Α; B-Β; G-Γ; D-Δ; E-Ε; Z-Ζ; H-Η; Q-Θ; I-Ι; K-Κ; L-Λ; M-Μ; N-Ν; X-Ξ; P-Π; R-Ρ; S-Σ; T-Τ; V-Υ; F-Φ; C-Χ; Y-Ψ; O-Ω;

and <https://github.com/xahlee/xah-math-input/blob/master/xah-math-input.el>

install from MELPA: Alt+x list-packages


<a id="orgd0e2481"></a>

# Terminal

emacs -g '80x24' &#x2013;eval '(term "/bin/bash")'

M-x term

-   C-c C-k char mode
-   C-c C-j line mode
    -   C-c char = C-x char

-   C-c C-c = C-c (term-interrupt-subjob)
-   C-c C-q - page at a time feature
    -   q - exit - Not working
-   S-insert - yank in char mode


<a id="orgfc9ab05"></a>

# dired

C-x C-f or M-x dired
Mark:

-   m	mark
-   u/U	unmark/Unmark all marked
-   \*	Mark all executable file
-   @	Mark all symbolic links
-   /	Mark with \`\*' all files which are actually directories

-   d	mark for deletion
-   x	Delete the files that are flagged for deletion.

-   % d regexp RET - mark with regex by name

Navigation:

-   f/o/C-o	visit/visit in other window/dont switch
-   v	viw file - read only
-   a	visit and kill current buffer
-   ^	dired-up-directory
-   >	next directory
-   <	preview directory

Commands:

-   c	compress to (TODO)
-   shift+c	copy file
-   shift+r	rename/move
-   shuft+d	delete
-   +		dired-create-directory
-   shift+z	Compress/decompress the file by gzip
-   !		shell command on file
-   g	Update the entire contents of the Dired buffer
-   l	Update the specified files

not defined: r

-   RET		dired-find-file
-   SPC		moves the cursor down one item.
-   (		dired-hide-details-mode

BKSP moves the cursor up one item.

g rereads the directory.
RET opens the item in the current window.
o (small O) opens the item in the other window.

Use C-h m or M-x describe-mode to get some help.


<a id="orgedf9e9b"></a>

## Copy files dired

Mark the files with m or unmark with u.
Press R.
Enter the destination directory.
Press RET.

1.  in .emacs: (setq dired-dwim-target t)
2.  M+x dired - set target
3.  split windows
4.  C-x C-v - set source
5.  shift+c - copy


<a id="orgc5c1a15"></a>

## usecase

I use dired in a "two pane" style (two windows with dired buffers and (setq dired-dwim-target t)) in a separate frame on
it's own workspace. I use arrow-keys for navigation (see key-bindings below) this way dired buffers accumulate quickly,
I use helm to switch between them. Never felt the need for something like bookmarks.

I also use:

dired-async.el

trashed

dired-subtree

dired-du

dired-filter

dired-rifle

Here is the dired related part of my .emacs

(defun always-t-p (args)
  "always returns true"
  (interactive "P")
  t
  )
(setq dired-isearch-filenames 'dwim
      dired-listing-switches "-alhv &#x2013;time-style=+%F &#x2013;group-directories-first"
      dired-no-confirm t ;don't list marked files when performing action, still asks for confirmation
      dired-deletion-confirmer 'always-t-p ;don't ask for confirmation
      trashed-action-confirmer 'always-t-p
      dired-clean-confirm-killing-deleted-buffers nil ;kill dired-buffer when corresponding dir is deleted
      delete-by-moving-to-trash t ;use systems trash
      dired-recursive-deletes 'always ;delete dirs even if non-empty
      dired-dwim-target t ;copy/move to other side
      dired-filter-revert 'always
      wdired-allow-to-change-permissions t
      dired-du-size-format t
      )

(add-hook 'dired-mode-hook (setq display-line-numbers 'relative)))

;; some function-definitions and keybindings for dired
(defun dired-toggle-details-and-du-mode ()
  (interactive)
  """toggles dired-du-mode together with dired-hide-details-mode"""
  (if dired-hide-details-mode
      (progn (dired-hide-details-mode 0)
	     (dired-du-mode 1))
    (progn (dired-hide-details-mode 1)
	   (dired-du-mode -1))))
(define-key dired-mode-map (kbd ".") 'dired-hide-dotfiles-mode)
(define-key dired-mode-map (kbd "r") 'dired-rifle)
(define-key dired-mode-map (kbd "b") 'dired-subtree-toggle)
(define-key dired-mode-map (kbd "i") 'dired-subtree-toggle)
(define-key dired-mode-map (kbd ";") 'dired-subtree-down)
(define-key dired-mode-map (kbd "'") 'dired-subtree-up)
(define-key dired-mode-map (kbd "\\"") 'dired-subtree-narrow)
(define-key dired-mode-map (kbd "f") 'dired-filter-mode)
(define-key dired-mode-map (kbd "z") 'dired-du-mode)
(define-key dired-mode-map (kbd ",") 'trashed)
(define-key dired-mode-map (kbd "l") 'dired)
(define-key dired-mode-map (kbd "\\\\") dired-filter-mark-map)
(define-key dired-mode-map (kbd "]") 'dired-rsync)
(define-key dired-mode-map (kbd "<tab>") 'other-window)
(define-key dired-mode-map (kbd "<right>") 'dired-find-alternate-file)
(define-key dired-mode-map (kbd "<left>") 'dired-up-directory)
(define-key dired-mode-map (kbd ")") 'dired-toggle-details-and-du-mode)
(define-key trashed-mode-map (kbd "<tab>") 'other-window)


<a id="org7f3345c"></a>

# Org mode <a id="org910fa3e"></a>

-   <https://medium.com/@tasshin/implementing-a-second-brain-in-emacs-and-org-mode-ef0e44fb7ca5>
-   Organize Your Life In Plain Text! <http://doc.norang.ca/org-mode.html>
-   beauty <https://github.com/jonnay/org-beautify-theme>
-   tutorials <https://orgmode.org/worg/org-tutorials/>
-   agenta magit python web-devel dockerfile-mode <https://edom.github.io/emacs.html#org-mode-autocompletion-using-pcomplete>
-   config <https://orgmode.org/worg/org-configs/org-customization-guide.html>

    #+STARTUP: overview

overview         top-level headlines only
content          all headlines
showall          no folding of any entries
showeverything   show even drawer contents

**Any trouble:** M-x toggle-debug-on-error


<a id="orge3cef24"></a>

## navigate keys

-   C-c C-n/p	next prev heading
-   C-c C-f/b	next prev same level heading
-   C-c C-u	Backward to higher level heading.
-   C-c C-j	jump/goto
-   M-{		org-backward-element
-   M-}		org-forward-element


<a id="org0bfee9b"></a>

## TODO attachments

C-c C-a


<a id="orgb145182"></a>

## special symbols (TAB)

C-q TAB		insert TAB
C-u 4 C-q	insert 4 TABs

-   **asd**
-   `asd`
-   `asd`
-   *asd*
-   <span class="underline">asd</span>
-   <del>df</del>


<a id="org2e4bf1a"></a>

## headers

:VISIBILITY: all

-   property, may be: folded, children, content, and all
    '(org-startup-folded t)

-   TAB S-TAB	hide show
-   C-c Tab	hide current header
-   C-c C-npfbu	navigate by headers

M-S-Left/Right   PROMOTE SUBTREE

C-RET	   inser HEADER after all text
C-c \*		   text to header
M-RET		   new list item
M-S-RET	   TODO
S-righ, left or C-c C-t        TODO, DONE
M(-S)-right lieft up down		move and indentation

C-x n s/w редактировать только один уровень

C-c /   C-c C-c.	sparse tree


<a id="org3e1b72a"></a>

### TAGS

header tags: \* header :as:asd:
subheadings willl accumulate all tags.
file tags: #+FILETAGS: :Peter:Boss:Secret:
C-c C-q (C-c C-c)	   insert
C-c \\ search


<a id="orgd886fa4"></a>

### TODO

S-LEFT/RIGHT - cycle
S-UP/DOWN - change item priority


<a id="org35d4074"></a>

## lists

ordered lists: 1.1)
unordired    -,+,\*
description list

-   **asd:** asd
-   [ ] sss

M-RET		insert new
S-left,right	cycle bullets -,+,\*,1 (C-c -)
M-left,right	Increase the indentation of an item
M-S-RIGHT	Increase the indentation of an item with children
C-C		Toggle check box

C-c ^		sort

C-c - Convert lines to lists

C-x r N and C-u C-x r N - emacs list


<a id="org4117235"></a>

## Checkboxes

-   M-S-RET	create at list - cursor at the end of the end of the list item
-   C-c C-c	togle
-   C-c C-x C-r	toggle-radio-button - switch others ff

    [/]		add parts
    [%]		add percents

ex:

-   [-] percet <code>[1/2]</code> <code>[50%]</code>
    -   [X] 1
    -   [ ] 2


<a id="org423417d"></a>

## Properties

C-c C-x p Set a property.
C-c C-c d Remove

see headers.


<a id="org3889a38"></a>

## Time Stamp

-   C-c .	ins. for agenda
-   C-c !	ins. inactive
-   S-left/right	by one day
-   M-S-LEFT / M-S-RIGHT move selection 1 month backward/forward
-   < / > scroll calendar by 1 month
-   C-v / M-v scroll calendar by 3 months
-   M-S-UP / M-S-DOWN scroll calendar by 1 year
-   S-up/down	change at cursor


<a id="org4da2dce"></a>

## Tables

<http://orgmode.org/manual/Built_002din-table-editor.html>

C-c |      create table 5x2
C-c        autoaligh all table

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">asd</td>
<td class="org-left">asd</td>
</tr>
</tbody>
</table>

M-a/e            move back forward at cells
M-arrays       move line or row in table
Tab - autocomplition


<a id="orgfcf1234"></a>

## links [ [ link][description]]

-   C-c C-l		edit link
-   C-c C-x C-v	show hide image inline
-   C-c C-o		open link
-   C-u C-u C-c C-o	open not in emacs

-   M-x org-toggle-link-display

[[ ./a.img      - inline image ends with \\]\\]

**Local links** :

1.  [[Target		local link to header <a id="orgbc3b66b"></a>
2.  [[My Target         local link to just string #+NAME: My Target

example [Mylink to TragetEx](#orgbc3b66b)

(setq org-file-apps
   '(("\\\\.docx\\\\'" . default)
     ("\\\\.mm\\\\'" . default)
     ("\\\\.x?html?\\\\'" . default)
     ("\\\\.pdf\\\\'" . default)
     ("\\\\.png\\\\'" . default)
     ("\\\\.jpg\\\\'" . default)
     ("\\\\.jpeg\\\\'" . default)
     (auto-mode . emacs)))


<a id="org134478d"></a>

## links images, inline images

STARTUP(org-startup-with-inline-images) - inlineimages or noinlineimages

-   C-c C-x C-v (org-toggle-inline-images)

example:

[[path to image]

configuration:

-   (setq org-startup-with-inline-images "inlineimages")
-   (setq org-mode-actual-width)
    -   t - When non-nil, use the actual width of images when inlining them
    -   300 - When set to a number, use imagemagick (when available) to set the
        image’s width to this value.
    -   '(300 200) - use  #+ATTR.\* keyword if it matches a width  specification like #+ATTR<sub>HTML</sub>: :width 300px or this number
    -   nil - use #+ATTR.\* or dont resize

M-x

-   org-redisplay-inline-images
-   org-display-inline-images
-   org-toggle-inline-images
-   org-remove-inline-images


<a id="org1c48b9b"></a>

## Inline source code babel <a id="org7deed26"></a>


<a id="org17fd33c"></a>

### commands

-   C-c '		Edit the source code
-   C-c C-v d		create
-   C-c C-c 		execute
-   C-c C-v e		execute
-   org-src-fontify-block  code highlighting

templates:

-   <s Tab		create
-   after #+		autocompletion


<a id="org7a04ac9"></a>

### template

Название языка строчными!

1.

    Some example from a text file.

1.

    Some example from a text file.

1.

    data p_datum type datum. "15.01.2018
    data p_molga type MOLGA value '33'.
    p_datum = sy-datum.


<a id="org59af827"></a>

### python

    return "aasd"

    aasd

    print("aasd")

    aasd


<a id="orga7a6042"></a>

### output result

<https://orgmode.org/manual/Results-of-Evaluation.html>

-   :results output raw - do nothing with output

1.  example output json

        curl -X GET "http://anonchek.ru/get?id=a43219ce4a4a490d9cd34beb718cb09f" -H  "accept: application/json"


<a id="orgb8a53c1"></a>

## LaTeX

<https://orgmode.org/org.html#LaTeX-header-and-sectioning>
<https://en.wikibooks.org/wiki/LaTeX/Internationalization>
для русского:

статья:

статья:
[10pt,a4paper,twocolumn]{article}
широко:

очень широко:

\begin{equation}
x=\sqrt{b}
\end{equation}

\[ a=+\sqrt{2} \] or \[ a=-\sqrt{2} \]


<a id="org8433ad8"></a>

## archiving

C-c C-x C-a	archive subtree.


<a id="org47f0c34"></a>

## inline images

(setq org-startup-with-inline-images t)
or:

[[![img](org-level-hist.png)]


<a id="orgd3a0dd3"></a>

## Tables and Spreadsheets

-   C-c ?	learn about field
-   |-		start pattern
-   :=vmean($2..$3)	calculate the mean for fields from the second ($2) to the third ($3) field in this row
-   C-c C-c	calc table
-   \#+TBLFM line contains all the formulas for the table above, and you should be careful while editing it manually.
-   C-u C-c \* (or C-c C-c if you're on the #+TBLFM) 	 reapplying all formulas
-   C-c =	editing column formulas
-   C-u C-c = 	field formulas
-   C-c '	edit formulas more interactively in a dedicated buffer
-   S-arrows	swap columns
-   C-c { 	Turn the formulas debugger on

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-right">n</th>
<th scope="col" class="org-left">n<sup>2</sup></th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-right">1</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">2</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>


<a id="org422e0a8"></a>

## indent-mode

-   M-x org-indent-mode
-   (setq org-startup-indented t)

use  '(org-hide-leading-stars t) inside


<a id="orgf9623e4"></a>

## templates for source code

-   (require 'org-tempo) for <s TAB is old system
-   C-c C-, s and it will wrap your selection inside #+begin<sub>src</sub> and #+end<sub>src</sub>.

(require 'org-tempo)

(add-to-list 'org-structure-template-alist '("sh" . "src shell"))
(add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
(add-to-list 'org-structure-template-alist '("py" . "src python"))


<a id="orgc390531"></a>

## TODO graphiz

Diagrams <https://orgmode.org/worg/org-tutorials/org-dot-diagrams.html>
mind map 3yo <https://github.com/the-ted/org-mind-map>


<a id="org2496baf"></a>

## TODO Capture C-c c and templates, notes


<a id="org8d201e9"></a>

## columnar view


<a id="org6ce7019"></a>

### keys

-   C-c C-x C-c 	(org-columns)
-   r/g		redo
-   C-c C-c or q	quit
-   LEFT, RIGHT, UP, DOWN     Move through the column view from field to field.
-   S-left/right		cycle throught possible values
-   M-left/right		move columns left/right
-   e		edit-value
-   v		show-value
-   a		edit-allowed - possible values
-   C-c C-c (org-columns-toggle-or-columns-quit)    When there is a checkbox at point, toggle it.

-   </>		columns-widen
-   S-M-RIGHT	org-columns-new


<a id="orgfb30f0d"></a>

### org-columns-default-format

"%25ITEM %TODO %3PRIORITY %TAGS"
or
\#+COLUMNS %25ITEM %TODO %3PRIORITY %TAGS


<a id="orgfe8b76f"></a>

### format

%[WIDTH]PROPERTY[(TITLE)][{SUMMARY-TYPE}]


<a id="org22bd344"></a>

### properties

-   ITEM         The content of the headline.
-   TODO         The TODO keyword of the entry.
-   TAGS         The tags defined directly in the headline.
-   ALLTAGS      All tags, including inherited ones.
-   PRIORITY     The priority of the entry, a string with a single letter.
-   DEADLINE     The deadline time string, without the angular brackets.
-   SCHEDULED    The scheduling time stamp, without the angular brackets.


<a id="org517362e"></a>

### links

-   <https://orgmode.org/worg/org-tutorials/org-column-view-tutorial.html>
-   <https://orgmode.org/worg/org-tutorials/org-column-screencast.html>


<a id="orgec99f3b"></a>

### effort template

    #+PROPERTY: Effort_ALL 0 0:10 0:30 1:00 2:00 3:00 4:00 5:00 6:00 7:00
    #+COLUMNS: %40ITEM(Task) %17Effort(Estimated Effort){:} %CLOCKSUM


<a id="org49425d7"></a>

## priorities


<a id="org809c283"></a>

### custom priorities:

    (setq
      org-lowest-priority  1
      org-highest-priority 10
      org-default-priority 5
      )


<a id="orgcf7e75e"></a>

## sort


<a id="orgc87246d"></a>

## TAGS and TODO

-   !	add timestemp without asking
-   @	ask whether to add timestamp or not
-   /!	when switching back from it add timestamp to TODO word staying before
-   computer @phone - at most one of them  should be selected

keys

-   C-c C-q (org-set-tags-command)
-   C-c C-c (org-set-tags-command)

Colours for TODO:

    (setq org-todo-keyword-faces
      '(("TODO" . org-warning)
         ("STARTED" . "red")
         ("WAITING" . "yellow")
         ;; ("CANCELED" . (:foreground "cyan" :weight bold))
         ("CANCELED" . "cyan")
         ))

<https://orgmode.org/manual/Tracking-TODO-state-changes.html>


<a id="org8ee6c2c"></a>

# Org agenda

provides a convenient way of tracking your projects and managing your calendar.

terms:

-   Agenda Dispatcher - view selector


<a id="orgf645422"></a>

## keys


<a id="org832be51"></a>

### keys in org mode for TODO:

-   C-c '[' or ']'	add/remove file to agenda list in .emacs  '(org-agenda-files '("~/tasks.org"))
-   shift -> or C-c C-t - change status TODO DONE
-   C-c .	insert timestamp
-   C-c >	go to calendar
-   C-c C-d deadline - is supposed to be finished on that date.
-   C-c C-s schedule - you are planning to start working on that task on the given date.
    -   +n or +1	add days
    -   +mon/mon	at next monday
    -   +1w		+7 days
    -   n		day
    -   2022-05-22
    -   05-22
-   C-c /		sparse tree - filter
-   M-x org-agenda
-   M-x org-sort-entries - ????????
-   M-x org-cyle-agenda-files - open files
-   C-c C-x C-s (org-archive-subtree)
-   C-c C-t	togle TODO (S-arrow)
-   C-c C-x e	(org-set-effort) (e in agenda)
-   C-c C-x C-e	(org-clock-modify-effort-estimate)


<a id="org1af06f9"></a>

### in agenda:

-   f/b/j		navigation
-   D		toggle diary
-   d/w/l		day/week/log view
-   i		insert diary
-   SPC/TAB/RET	go to todo line in agenda file
-   t		Change the TODO state of the item everywhere
-   C-k		kill entry
-   $		archive to ~/<original<sub>file</sub>><sub>archive</sub>
-   c		calendar
-   r/g		recreate
-   o		Delete other windows.

-   notes ~/.notes


<a id="orgcd48ebe"></a>

## time format

-   date: <YYYY-MM-DD DAY>
-   timestamp: <YYYY-MM-DD DAY HH:MM>
    -   2022-08-02 Tue 12:05
-   time range: <YYYY-MM-DD DAY HH:MM-HH:MM>
-   <span class="timestamp-wrapper"><span class="timestamp">&lt;2005-10-01 Sat +1w&gt; </span></span> - every Wednesday
-   <span class="timestamp-wrapper"><span class="timestamp">&lt;2005-10-01 Sat +1m -3d&gt; </span></span> -  repeater and a special warning period
-   ​ <span class="timestamp-wrapper"><span class="timestamp">&lt;%%(diary-float t 4 2)&gt; </span></span> Diary-style sexp entries
-   <span class="timestamp-wrapper"><span class="timestamp">&lt;2004-08-23 Mon&gt;&#x2013;&lt;2004-08-26 Thu&gt; </span></span> - Time/Date range
-   <span class="timestamp-wrapper"><span class="timestamp">[2004-08-23 Mon] </span></span> - inactive timestamp
-   DEADLINE: <span class="timestamp-wrapper"><span class="timestamp">&lt;2008-02-10 Sun ++1w&gt; </span></span> - Marking this DONE shifts the date by at least one week, but also by as many weeks as
    it takes to get this date into the future.
-   DEADLINE: <span class="timestamp-wrapper"><span class="timestamp">&lt;2005-11-01 Tue .+1m&gt; </span></span> - Marking this DONE will shift the date to one month after today.


<a id="orgc02d57d"></a>

## parser perl

    $cmd = "emacs -batch -l ~/.emacs -eval '(org-batch-agenda \"a\"  org-agenda-span (quote day) org-agenda-include-diary t diary-file \"/home/u/.emacs.d/diary\")'
    2>/dev/null";

    # run it and capture the output
    $agenda = qx{$cmd 2>/dev/null};

    # loop over all lines
    foreach $line (split(/\n/,$agenda)) {
        # get the individual values
        ($category,$head,$type,$todo,$tags,$date,$time,$extra,
         $priority_l,$priority_n) = split(/,/,$line);
        # process and print
        print "[ ] $category,$head,$type,$todo,$tags,$date,$time,$extra,
         $priority_l,$priority_n \n";
    }


<a id="org66a0162"></a>

## parser python

    import os
    cmd="emacs -batch -l ~/.emacs -eval '(org-batch-agenda \"a\"  org-agenda-span (quote day) org-agenda-include-diary t diary-file \"/home/u/.emacs.d/diary\")' 2>/dev/null"
    cmd = cmd.split(' ')
    # run it and capture the output
    import subprocess
    child = subprocess.Popen(['cat', 'task.org'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)

    agenda = os.system(cmd + " 2>/dev/null")


    # loop over all lines
    foreach $line (split(/\n/,$agenda)) {
        # get the individual values
        ($category,$head,$type,$todo,$tags,$date,$time,$extra,
         $priority_l,$priority_n) = split(/,/,$line);
        # process and print
        print "[ ] $category,$head,$type,$todo,$tags,$date,$time,$extra,
         $priority_l,$priority_n \n";
    }


    with open('university_records.csv', 'r') as csv_file:
        reader = csv.reader(csv_file)

        for row in reader:
            print(row)


<a id="orgcbc3f4a"></a>

## config

    (global-set-key (kbd "C-c a") 'org-agenda)
    (global-set-key "\C-ca" 'org-agenda)
    ;; open agenda every time at start
    (org-agenda nil "a")
    ;; Use a one day agenda view (rather than a seven day view).
    (setq org-agenda-ndays 1)
    ;;(setq diary-mail-addr "geekard@qq.com")
    ;; Times of Sunrise and Sunset
    ;; https://www.latlong.net/
    (setq calendar-latitude 50.596722)
    (setq calendar-longitude 36.587780)
    (setq calendar-location-name "Belgorod")
    (setq calendar-time-zone -360)
    (setq calendar-standard-time-zone-name "CST")
    (setq calendar-daylight-time-zone-name "CDT")


    (setq mark-diary-entries-in-calendar t)
    (setq org-agenda-include-diary t)
    ;; disable holidays
    (diary-show-holidays-flag nil)
    (setq christian-holidays nil
          hebrew-holidays nil
          islamic-holidays nil
          solar-holidays nil
          bahai-holidays nil)
    (add-hook 'today-visible-calendar-hook 'calendar-mark-today)
    (autoload 'chinese-year "cal-china" "Chinese year data" t) -?????
    # Monday is the first day of the week
    (setq calendar-week-start-day 1)


<a id="org1801123"></a>

## TODO russian holidays

<https://github.com/grafov/russian-holidays>


<a id="orgb3ad290"></a>

## links

-   <https://orgmode.org/guide/Agenda-Commands.html>
-   <https://orgmode.org/worg/org-configs/org-customization-guide.html>
-   <http://www.emacslife.com/baby-steps-org.html>
-   <http://pragmaticemacs.com/emacs/org-mode-basics-vii-a-todo-list-with-schedules-and-deadlines/>
-   <http://www.cachestocaches.com/2016/9/my-workflow-org-agenda/>
-   <https://www.gnu.org/software/emacs/manual/html_node/emacs/Holiday-Customizing.html>
-   <https://orgmode.org/worg/org-faq.html>
-   <https://alphaalgorithms.github.io/2019/05/18/date-and-time-in-emacs/>

export

-   iCalendar export <https://orgmode.org/manual/Exporting-Agenda-Views.html>
-   perl <https://orgmode.org/manual/Extracting-Agenda-Information.html>


<a id="orgd7af07d"></a>

# appt - reminder for diary


<a id="orgfe22135"></a>

## appt reminder

-   M-x appt-activate
-   M-x appt-add 		add reminder without diary and todo files
-   appt-check - internal func which checks diary and decide show message or not


<a id="org3bd5b25"></a>

## appt default config

-   start time = appt-message-warning-time or "warntime" in diary
-   interval = appt-display-interval

    ;; -- time
    ;; appt-display-message interval - minutes
    (setq appt-display-interval 3)
    ;; before an appointment that the warning begins - minutes
    ;; can be overriden in diary with "wanrntime 30" - minutes
    (setq appt-message-warning-time 12)
    ;; display window appointment text after time record duration - seconds
    (setq appt-display-duration 10
    ;; enable audio
    (setq appt-audible nil)
    ;; emacs print diary , I guess controlled by appt-display-interval
    (setq appt-display-diary t)
    ;; echo, nil
    (setq appt-display-format 'window)


<a id="orgf3d6616"></a>

## my reminder:

    ;; ---- my X notification system---
    ;; notify-send in by first emacs process
    (setq appt-disp-window-function
      (lambda (min-to-app timenow msg)
        ;; get emacs pids as "123 123 123"
        (set 'v (shell-command-to-string "pidof emacs"))

        ;; largest of "1 2 3" as number
        (setq val (car ;; get ferst element of a list
    		(last
    		  (sort (mapcar  'string-to-number (split-string v)) #'>))
    		)
          )
        ;; do if emacs-pid == val, 5000=5sec
        (if (eq (emacs-pid) val)
          (shell-command (format "notify-send --expire-time 15000 -i emacs '%s'" msg)
    	) )
        ) )

    ;; update diary from for appt with timeout
    (defun oo () (appt-check t))
    (run-with-timer 120 120 'oo)
    ;; --<< my X notification system


<a id="org5b6ae93"></a>

### reminder

sudo -u u DISPLAY=:0 notify-send &#x2013;expire-time 3000 -i emacs "hay"

    emacs -batch -l ~/.emacs -eval '(org-batch-agenda "a" org-agenda-include-diary t diary-file "/home/u/.emacs.d/diary")'

2>/dev/null

appt:

-   (setq appt-disp-window-function  (function psachin/appt-display))

<https://orgmode.org/manual/Extracting-Agenda-Information.html>

appt-disp-window-function <https://psachin.gitlab.io/emacs_diary_desktop_notification.html>


<a id="org49004be"></a>

## config reminder server-clients

    ;; notification
    (setq appt-disp-window-function
          (lambda (min-to-app timenow msg)(
    					shell-command (format "notify-send --expire-time 5000 -i emacs '%s'" msg)
    						      )
    	)
    )
    ;; activate notification
    (appt-activate t)


<a id="orgb0a2a02"></a>

# calendar mode and diary

-   M-x calendar


<a id="orgc42d3f9"></a>

## calendar keys

navigation

-   C-a/e - begin/end of week
-   C-b/f - day
-   C-n/p - next/previous week
-   .	today
-   g d	go to date
-   o	go to month

mark

-   m/u	mark/unmark

diary .emacs.d/diary

-   s	show all entries
-   i d	insert entry
-   i b   insert block
-   i c	insert cycle
-   i m/w/y	insert monthly/weekly/yearly
-   D	other diary file

other

-   M-=		calendar-count-days-region
-   M-x appt-activate	reminder


<a id="orgde73c2a"></a>

## diary


<a id="org6b6b3b3"></a>

### file

record:

-   2011/06/01 12:00 Do something ## warntime 30
-   02/23/89 note for day
-   \t12:00 message
-   \tpart<sub>of</sub><sub>message</sub>
-   \tpart<sub>of</sub><sub>message</sub>

here:

-   2011/06/01 - day record
-   12:00 - start of time record
-   \## - meanth nothing
-   warntime 30 - warn before 30 minutes when using appt
    -   warntime - regex expression in appt-warning-time-regexp in appt
-   big day - note for day, not passed anywhere

other record ex.:

-   12/22/2015  Twentieth wedding anniversary!
-   10/22       Ruth's birthday.
-   \* 21, \*:    Payday
-   Tuesday&#x2013;weekly meeting with grad students at 10am
    -   Supowit, Shen, Bitner, and Kapoor to attend.
-   1/13/89     Friday the thirteenth!! - month/day/year
-   thu 4pm     squash game with Lloyd.
-   mar 16      Dad's birthday
-   April 15, 2016 Income tax due.
-   \* 15        time cards due.
-   Thursday 11:45am Lunch meeting.


<a id="orgf0461de"></a>

# ob-http - REST client

-   ob-http <https://github.com/zweifisch/ob-http>
    -   <https://www.youtube.com/watch?v=tGgat6XJ2tk>
-   restclient (not installing from MELP) <https://github.com/pashky/restclient.el>
-   see [30.12](#org7deed26)


<a id="orgba4e6bf"></a>

## options

option		curl		example

-   :proxy -x	:proxy 	localhost:8118
-   :noproxy	&#x2013;noproxy \*	N/A
-   :cookie-jar	&#x2013;cookie-jar	:cookie-jar username
-   :cookie	&#x2013;cookie	:cookie username
-   :max-time	&#x2013;max-time	default is 10
-   :user		&#x2013;user		:user admin:passwd
-   :pretty	N/A		:pretty use Content-Type, to overwrite :pretty json
-   :select	N/A		:select path path will be passed to jq for json or pup for html or xmlstarlet for xml
-   :get-header	N/A		:get-header X-Subject-Token
-   :curl		N/A		:curl &#x2013;insecure &#x2013;compressed additional arguments for curl
-   :resolve	&#x2013;resolve	:resolve example.com:80:127.0.0.1,example.com:443:127.0.0.1


<a id="orgd96382c"></a>

## examples


<a id="org24c4b74"></a>

### http source block

    GET https://api.github.com/repos/zweifisch/ob-http/languages
    Accept: application/vnd.github.moondragon+json


<a id="org6710f34"></a>

### json source block

    #+BEGIN_SRC http :pretty
    POST http://httpbin.org/post
    Content-Type: application/json

    {
      "key": "value"
    }

\#+end<sub>src</sub>


<a id="org6c5f516"></a>

### form submit

    PATCH http://httpbin.org/patch

    key=value&foo=value


<a id="orgb3a27f7"></a>

### varibale

    POST http://httpbin.org/post
    Content-Type: application/json

    {
        "auth": {
            "name": "${name}",
            "password": "${password}"
        }
    }


<a id="org4fb76f2"></a>

### properties

    POST /post
    Content-Type: application/json
    X-Auth-Token: ${token}


<a id="orga8c0dfd"></a>

## require

    (org-babel-do-load-languages
     'org-babel-load-languages
     '((emacs-lisp . t)
       (http . t)))


<a id="org2083c2e"></a>

# Magit

Magit really is “Git at the speed of thought”

-   <https://www.youtube.com/watch?v=INTu30BHZGk>

-   C-x g - main screen
-   ? - keys help
-   q - change buffer


<a id="org88bafa4"></a>

## conflict resolution:

1.  select file listed in the "Unstaged changes" and/or "Staged changes" sections. They are prefixed with the word
    "unmerged", which in this context essentially is a synonym for "unresolved".
2.  smerge-mode -
    -   C-c ^ C-h - for keys
    -   C-c ^ m - choose head
    -   C-c ^ o - keep the version that follows "|||||||"
    -   C-c ^ n to move to the next conflicting area in the same file.

To resolve conflicts in a file using Ediff press e while point is on such a file in the status buffer.


<a id="org876f90a"></a>

# cua-mode

-   C-x, C-c, C-v, and C-z - copy, undo
-   C-x C-c still work

-   activates Delete-Selection mode (to disable cua-delete-selection to nil):
    -   when there is active region (see [1](#org0dc94e4)) - any key will erase region
-   CUA mode provides enhanced rectangle support
    -   C-RET to start a rectangle (shadow C-c RET		org-ctrl-c-ret)
-   it adds ability to save to copy and yank to registers.
    -   C-1 C-c copies the region into register 1
    -   C-2 C-v yanks the contents of register 2
-   C-S-SPC global mark feature - all text inserted at the global mark

If you really need to perform a command which starts with one of
the prefix keys even when the region is active, you have three
options:

-   press the prefix key twice very quickly (within 0.2 seconds),
-   press the prefix key and the following key within 0.2 seconds, or
-   use the SHIFT key with the prefix key, i.e. C-S-x or C-S-c.


<a id="org038c70c"></a>

# TODO DoomEmacs

<https://github.com/hlissner/doom-emacs>


<a id="org367b657"></a>

# TODO Spacemacs

extension of a popular text editor called Emacs

-   These projects bring approachability and integration to Emacs, and are in my view, along with LSP, Magit, and Org, the

biggest reasons drawing people to Emacs nowadays.

-   It is however clear from looking at their issue trackers just how difficult it is to provide this cohesive experience
    by combining parts from the ecosystem.


<a id="org1db4610"></a>

# Rust Emacs

-   **Remacs:** DEAD <https://github.com/remacs/remacs>
-   Emacs-ng A new approach to Emacs - Including TypeScript, Threading, Async I/O, and WebRender.
    <https://github.com/emacs-ng/emacs-ng>


<a id="org54840d6"></a>

# 4coder

-   loosely based on Emacs

Data oriented programming


<a id="orgdc86350"></a>

# neovim

<https://www.murilopereira.com/the-values-of-emacs-the-neovim-revolution-and-the-vscode-gorilla/>
Apache License   Version 2.0

-   testing, CI, agressive refactoring, reduce contributor friction
-   decouple code from UI, make possible to embed vim core into browsers or IDE
-   embedding a Lua runtime  and providing concurrency primitives for plugins
-   bringing C code to modern standarts, libuv for IO code, automatic formatting
-   create scriptable terminal emulator
-   non-mailing list driven development, automation builds, public roadmap, recurrent funding, frequent stable, automated
    releases
-   Separate UI with API

ideas:

-   approachability -
-   editing efficiency
-   keyboard centrism - focus on keyboard interactions
-   Progressivenes - a measure of eagerness to make progress and leaverage modern technology
-   text centrism - text as universal interface
-   Velocity - short and focused release cycles, aligned personpower, leveraging the community effectively


<a id="org8aeb6ae"></a>

# VSCode

-   Approachability - mainly
-   Integration - Cohesive core and concerted third-party functionality
-   Maintainability
-   Progressiveness
-   Velocity

cons

-   It is somewhat extensible and very configurable
-   It can be mostly driven from a keyboard
-   It has a great extension language, TypeScript (which is in my opinion superior to Emacs Lisp in terms of maintainability for non-trivial projects)
-   It even has a libre variant

    It also shines in areas where Emacs doesn’t: if you’re a programmer working on typical contemporary projects, mostly
    just wanting to get stuff done, things usually… just work. You install VSCode, open a source code file, get asked to
    install the extension for that particular language, and that’s it.


<a id="orgdc3a4df"></a>

# .emacs

**file in window title**

-   file<sub>name</sub>, mode, path (setq-default frame-title-format '("%b [%m] %f"))

**window width**

-   (setq initial-frame-alist '( (width . 125)))

**backups dir**

-   (setq backup-directory-alist '(("." . "~/.MyEmacsBackups")))

**fill column**

-   (setq-default fill-column 110)

**default mode**

-   (setq-default major-mode (quote org-mode))

**org-mode**

-   (setq-default org-src-fontify-natively t)

**russian with Ctrl+\\**

-   (setq-default default-input-method "russian-computer")

**math-symbols input activate**

-   (global-xah-math-input-mode 1)

**dired** fast copy

-   (setq dired-dwim-target t)


<a id="orgf53a9db"></a>

# info

S-h - commands

Backspace or ] - back and up level
space or [ - forward and down

b - top of buffer
1-9 - pick node in menu

n - next
p - previews
u - up level
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

q - quit


<a id="org5812dea"></a>

# TODO AutoEncryption

edit encrypted files from inside Emacs

<https://www.emacswiki.org/emacs/AutoEncryption>


<a id="org5171d85"></a>

# TODO auto-composition-mode

<https://github.com/emacs-mirror/emacs/blob/master/lisp/composite.el>


<a id="org370bebc"></a>

# USECASES


<a id="org4201f51"></a>

## how to add column or form table?

-   rectangles:
    1.  select lines 'C-x space'
    2.  copy lines C/M-w
    3.  M-x yank-rectangle or ‘C-x r y’
-   <https://www.gnu.org/software/emacs/manual/html_node/emacs/Text-Based-Tables.html>

Kill a rectangle: kill-rectangle ‘C-x r k’
Yank the last killed rectangle: yank-rectangle ‘C-x r y’
Toggle Rectangle Mark mode C-x SPC


<a id="orgb096923"></a>

## scroll two buffers two files together

M-x scroll-all-mode


<a id="orgb67cc5f"></a>

## line numbers at left

-   (setq linum-format " %d ")
-   (global-linum-mode t)


<a id="orgfb85029"></a>

## two files change windows split vertically and horizontally

    (defun window-split-toggle ()
      "Toggle between horizontal and vertical split with two windows."
      (interactive)
      (if (> (length (window-list)) 2)
          (error "Can't toggle with more than 2 windows!")
        (let ((func (if (window-full-height-p)
                        #'split-window-vertically
                      #'split-window-horizontally)))
          (delete-other-windows)
          (funcall func)
          (save-selected-window
            (other-window 1)
            (switch-to-buffer (other-buffer))))))


<a id="org1757f42"></a>

# emacsclient

-   emacs &#x2013;daemon &
-   emacsclient -c -a "emacs"


<a id="org97f11a6"></a>

# Very Large Files

-   combination of cat, tail, grep, sed, awk, etc.
-   vim - LargFile plugin
-   emacs - GNU ELPA VLF package <https://github.com/m00natic/vlfi>
    -   M-x vlf
-   JOE Text Editor

for logs:

-   tail -F
-   emacs M-x auto-revert-tail-mode
-   large-file-warning-threshold - emacs warning when open big file


<a id="orgfc3cde5"></a>

# VoiceEmacs

<https://github.com/jcaw>


<a id="org47bd9e3"></a>

# QUESTIONS:

-   what is Auto-Composition minor mode?


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> asd
