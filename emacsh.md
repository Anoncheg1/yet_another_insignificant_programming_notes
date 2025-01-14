
# Table of Contents

1.  [events](#orgdd77a18)
2.  [command line usage](#org139a621)
3.  [communities and wikies](#orgee66b24)
4.  [ELPA](#org89bc0bd)
5.  [MELPA create package](#org0984c47)
6.  [theory](#orgecf170e)
    1.  [history](#org676576f)
7.  [terms ](#org1f792c9)
8.  [Emacs source code](#org7cb9a22)
    1.  [elisp and common lisp](#org0cc2d9a)
9.  [Debuging](#org7f68ee5)
    1.  [terms](#orgb29d9dd)
    2.  [Elisp mode:](#org013db1a)
    3.  [The Lisp Debugger ( The built-in Emacs Lisp debugger)](#orgaeb997b)
        1.  [enable](#orgc52920a)
        2.  [debug init file](#orgb03bc12)
        3.  [keys in debugger](#org856f197)
    4.  [Edebug](#orgb7ebd58)
        1.  [commands](#org36ee807)
    5.  [links](#orge4e4059)
10. [Info](#org3cf0f6b)
    1.  [keys](#orgefc21c3)
    2.  [extra Info files](#org401e23a)
11. [PROS](#org866bb5d)
12. [CONS](#orgb5dd724)
13. [encoding](#org9db19b9)
14. [keys](#org0cf56d6)
    1.  [help](#org54e4a1e)
    2.  [basic](#orgabb244e)
    3.  [Copy paste etc](#org27cd16c)
    4.  [Navigate](#org590bbdc)
        1.  [buffers:](#org4aa800a)
        2.  [parentheses](#org1138b92)
    5.  [prefixes C-x, C-c, Esc](#orgfcaafb9)
    6.  [Marks](#org1d12e1c)
    7.  [macros](#orgdcc8d64)
    8.  [auto-fill](#orgb2fd8fe)
15. [key binding](#orgdc3a8fc)
    1.  [colemak](#org82cd774)
    2.  [Keyboard Translations](#org7cc2a79)
    3.  [Keymaps](#org995aeab)
        1.  [basic](#org39fe6ab)
        2.  [exploration](#orgae9e68f)
        3.  [kbd macros](#org13e57d6)
        4.  [Remapping Commands](#org55321b3)
        5.  [Keymap Lookup Order](#org433fc9a)
        6.  [creating keymap and deactivate it](#org9c9f6c8)
        7.  [use-package](#orge0ae355)
        8.  [links](#org236621a)
    4.  [function keys](#org9374e93)
    5.  [reserved](#org68e3876)
    6.  [chords](#org98ba967)
    7.  [hydra](#org11104db)
    8.  [forward-word, backward-word, backward-kill-word, kill-word](#orge5fde8c)
    9.  [rebind C-i C-m C-[](#org763dcfb)
    10. [rebinding](#org6872201)
16. [indentation ](#org098238b)
    1.  [TAB key bound to #'indent-for-tab-command - try to indent then complete](#org640a8a6)
    2.  [variable: tab-always-indent - **indent.el** main](#org89308c0)
    3.  [variable: tab-first-completion](#org44c24ff)
    4.  [#'indent-line-function may be:](#orge700484)
    5.  [#'indent-region-line-by-line](#orge97e2e4)
    6.  [How to indent if cursor at middle of the line?](#org9999fc6)
    7.  [How to firstly complete and then indent?](#org48edb64)
    8.  [How to insert space if nothing working?](#orgbfa92ca)
    9.  [How to prevent (completion-at-point) after indentation.](#org5a6da52)
    10. [Python-mode](#org142475d)
    11. [Python-ts-mode](#org742b9a3)
    12. [org-cycle](#orgd1c1d84)
    13. [my universal approach (sucks)](#org2f772f0)
    14. [Guide: Steps to customize indentation.](#orgaba5ab4)
        1.  [Template for major mode](#org054b614)
        2.  [Template for minor mode](#org17c0d64)
        3.  [check that indentation was made](#org1aec788)
    15. [indentation (old, obsolate)](#org9ad6f74)
17. [file variables -\*-](#org93394f2)
    1.  [fill column](#orgc4b8555)
18. [folder variables - .dir-locals.el](#orgf10a6d2)
19. [global variables](#org38c00a1)
20. [package install](#org39a0cf3)
    1.  [remove](#org338048b)
    2.  [update](#org278218b)
    3.  [melpa add](#org2a7ef10)
    4.  [load path](#orgb0e6115)
    5.  [(load "package.el")](#orgf83b0c3)
    6.  [(require 'foo)](#org6706890)
    7.  [(package-initialize)](#orgd3f7d86)
    8.  [Why use-package?](#orga8992c8)
    9.  [autoinstall](#org457acd6)
    10. [upgrade](#org6253ef5)
    11. [install from Git](#orgef4aecf)
    12. [contribute](#org54d99ab)
21. [cool features](#orgc35060e)
    1.  [Registers](#orgf1f2ea9)
    2.  [Curly quotation marks "" vs “” and ‘’ vs ''](#org88c6dfb)
22. [buffers](#orgee7c53a)
    1.  [iflipb github](#org97f4649)
    2.  [buffer-flip Melpa](#org4ec130a)
    3.  [buffer-expose ELPA](#orgedf3fa8)
23. [windows](#orgdb97845)
    1.  [alternative windows switching](#org205d95d)
    2.  [saving windows layout](#org396c7bb)
    3.  [mode line](#org92befe2)
24. [tabbar.el and tab-line-mode](#org2235384)
    1.  [tab-line-mode](#orgd1a5d0a)
25. [modes](#org38a4e28)
    1.  [major modes](#orgf0ed1a7)
    2.  [minor modes](#orge88b5be)
26. [completion](#org629bb28)
    1.  [links](#org911af7b)
27. [code extension](#org12b8015)
    1.  [hooks](#orgcc3b321)
        1.  [eval-after-load vs. mode hook vs require vs after-init-hook](#org4aa901b)
        2.  [ex](#orge73d2d0)
        3.  [hooks emacs](#org97258cd)
    2.  [advices](#org5292981)
        1.  [place](#orgebe9761)
        2.  [old magic](#org3295a36)
        3.  [ex](#orgf9ee909)
        4.  [links](#orgd02a0cf)
    3.  [defun redefine](#orgae1116d)
28. [isearch](#org7da79db)
    1.  [keys](#org4af0263)
    2.  [isearch.el - execution path for isearch-forward](#org9008e83)
    3.  [search-exit-option edit](#orgbf388b8)
    4.  [template for search:](#org7192bc4)
29. [history](#org5d0b022)
30. [Easy Customization Interface](#org9d00481)
    1.  [Theme](#org230da66)
    2.  [custom-set-variables per mode](#org5fc43b1)
31. [wrap lines](#orga0cf38b)
    1.  [fill-paragraph](#org895a85f)
    2.  [org-fill-paragraph](#orgbe2a3ab)
    3.  [fill column](#orga069900)
32. [Dvorak](#org27d7e7e)
33. [fonts](#orge162686)
34. [games](#org2e9e591)
35. [backup](#orge6e2e64)
    1.  [vc-backup](#org6e9dc96)
    2.  [autosave](#org77dc086)
        1.  [links](#org4c26cdc)
    3.  [links](#orgab2733f)
36. [diff and ediff](#org13ae2ef)
37. [Narrowing](#org3fb92e2)
    1.  [pages](#orgf477c57)
    2.  [Cursor Position Information](#org6fa0cd9)
38. [Programming](#orgcd36502)
    1.  [emacs-lisp-mode](#org5ce076a)
    2.  [IDE Theory](#orge2f8647)
    3.  [Project management - project.el (dired + bookmarks can replace this)](#orgc0719fb)
        1.  [project.el](#orgf247f53)
        2.  [EDE - built-in](#org4d460bd)
        3.  [projectile](#org4ed4a62)
        4.  [VC - built-in](#orgef50336)
    4.  [common keys](#org7225900)
        1.  [balanced expressions (NavigatingParentheses)](#org00e0fc2)
        2.  [copy in terminal](#org315678a)
        3.  [Looking Up Identifiers (xref)](#org7a9eb20)
    5.  [Perl](#orgca29bd6)
    6.  [company-mode](#org96cd743)
    7.  [Python](#org900146b)
        1.  [jedi - static analysis tool for Python](#orgc374f0c)
        2.  [lsp-pyright vs pyright - type checking](#orgbadd4e2)
        3.  [elpy+pyright+eglot](#orgfd2e088)
        4.  [Eglot](#org66bd4a4)
        5.  [ElDoc - Programming Language Documentation Lookup](#org536f036)
        6.  [company-jedi](#orgde08691)
        7.  [elpy MELPA](#org21fa8e0)
        8.  [flymake - erros checking](#org9c8ba4b)
        9.  [flycheck - errors checking](#org6b1b4ae)
        10. [treesit tree-sitter](#org05d1af5)
        11. [LSP based configuration - theory](#org7885c05)
        12. [LSP - bridge, lsp-bridge](#org96832a0)
        13. [Debugger - M-x pdb](#org0fb7409)
    8.  [C/C++](#orgc213ab9)
        1.  [indentation](#org616ce42)
    9.  [TypeScript](#org86396a7)
    10. [php mod](#org170a34d)
    11. [Ctags or tagging system](#org60652d2)
        1.  [GNU Global](#orgbac6871)
        2.  [GNU etags, ctags - generate tag file for Emacs, vi](#org6897556)
        3.  [emacs Xref ](#orgf07e89e)
        4.  [rtags](#orga0d887f)
        5.  [just search for string alternative](#orgb996ce1)
        6.  [Effeciency:](#orgd949235)
        7.  [links](#org6e5f5c9)
    12. [Flymake vs Flycheck](#org005ced3)
    13. [semantic](#org8f1130b)
    14. [gdm](#org4ba8172)
    15. [autoformat](#org6de0b6d)
    16. [SQL mode](#org8c26e85)
    17. [SQL in org:](#orgae6011e)
        1.  [sqlite](#orgca52102)
        2.  [PGmacs - posgresql interface](#org9e33c37)
        3.  [links](#org78afc77)
    18. [yaml](#orgace1aae)
    19. [minimap packages](#org8f1ba17)
    20. [ELisp mode](#orgbf808e7)
        1.  [navigation: list and sexp](#org0a03815)
        2.  [links](#org8648a5d)
    21. [links](#org7c3d9f8)
39. [completion](#org6dfbbf8)
40. [spell checking](#orgc207ad9)
    1.  [aspell](#orgc4d4131)
    2.  [flyspell (not used)](#orgb00c37e)
    3.  [hunspell](#org98b739c)
    4.  [guess-language](#org641c14c)
    5.  [links](#org45cd136)
41. [Math symbols](#org6e145e7)
    1.  [xah-math-input](#org7a4073c)
    2.  [company-math](#org0e85c60)
42. [Terminal, shell](#org235719c)
43. [Dired](#orga80e416)
    1.  [basic](#orgf557fa2)
    2.  [Copy files dired](#org96dc67c)
    3.  [over ssh - TRAMP](#orgd91d815)
        1.  [issue: close remote file after modification without connection](#orgb05f71d)
        2.  [if connection lost, how to save file?](#org26f0d4f)
        3.  [links](#org3f4101c)
    4.  [usecase](#orgf8be4e6)
    5.  [images](#org3e4bb45)
    6.  [major addons](#org9558f17)
    7.  [How to open several files in Dired:](#org617241c)
    8.  [mark files (dired-x)](#org68b00ee)
    9.  [Virtual Dired](#org5a1876f)
    10. [how to open several frequently files at once?](#org0b378ae)
    11. [links](#org0f13fbd)
44. [Org mode ](#org32f15c8)
    1.  [navigate keys](#org73dcb63)
    2.  [keys](#orgb0b7ee6)
    3.  [attachments](#org02e0db4)
    4.  [special symbols (TAB)](#org8a18511)
    5.  [headers](#orgeceee4a)
        1.  [TAGS](#org4dcf70f)
        2.  [TODO](#org22fd78d)
    6.  [lists](#org4ea0251)
    7.  [Checkboxes](#org49b655c)
    8.  [Properties](#org1467c0c)
    9.  [Time Stamp](#orgfe175b8)
    10. [Tables](#orgfc1ac8a)
    11. [org links [ [ link][description]]](#org04a8833)
        1.  [Applications for opening \`file:path' items in a document:](#org59c2773)
        2.  [links](#orge1f594c)
    12. [links images, inline images](#orgfce4ef6)
    13. [source code babel block inline ](#org93e5a89)
        1.  [theory](#org94daf2a)
        2.  [header arguments](#org33b2d1b)
        3.  [commands](#orgdfd5dd6)
        4.  [template](#orgbe99309)
        5.  [python](#org7e3f50e)
        6.  [output result](#orgcd59165)
        7.  [python sessions](#org20acb52)
        8.  [python images](#org6e212a1)
        9.  [python pandas tables](#org3f74a73)
        10. [python Eglot local](#org329e1b2)
        11. [python Eglot remote](#orgb5d4475)
        12. [shell sorce code blocks](#org499265e)
        13. [graphiz - graphs](#org7aabfd3)
        14. [templates for source code (org-tempo)](#org3452367)
        15. [calling blocks](#orgd9b10a7)
        16. [evaluatlion](#orgff5af78)
        17. [babel library](#orgad34ca2)
        18. [org-babel-eval (command query)](#org474608c)
        19. [indentation ](#orgdaf0869)
        20. [exception characters - escaping](#orgc607097)
        21. [Tramp integration](#org45da55f)
        22. [links](#orga5c24c6)
    14. [example block](#org1889267)
    15. [completions](#org58e3724)
        1.  [M-TAB completion](#org1e9def2)
        2.  [disable org-tempo](#org5c9c48f)
    16. [LaTeX](#org781ce2e)
    17. [archiving](#org0d77f64)
    18. [inline images](#orgc423e48)
    19. [Tables and Spreadsheets](#org1a63472)
    20. [Tables as spreadsheets](#org4143f39)
        1.  [calc source block](#orga2fe824)
    21. [indent-mode](#org279061e)
    22. [graphiz](#org871b6e2)
    23. [Capture C-c c and templates, notes](#org9822918)
    24. [columnar view](#org1cfbc19)
        1.  [keys](#org4af0bb9)
        2.  [org-columns-default-format](#org2bd15c3)
        3.  [format](#orga8dd696)
        4.  [properties](#org5f8de58)
        5.  [links](#orgc31757c)
        6.  [effort template](#org5c74c75)
        7.  [org-clock-report or clocktable](#orgaa14ea3)
    25. [priorities](#org2f3ddc7)
        1.  [custom priorities:](#org0b4a088)
    26. [sort](#org6802c38)
    27. [TAGS](#org5fca839)
    28. [.TODO](#orga920ea0)
    29. [export](#org1382e2a)
    30. [export to markdown](#org75b1921)
    31. [tangling](#org39895a2)
    32. [presentations](#orga7428c4)
        1.  [Beamer - export to PDF](#orgfbb2cda)
        2.  [links](#orgea91f82)
    33. [resume](#org23d0400)
        1.  [spider CV](#org9f02bb2)
        2.  [academic CV](#orgb4fc25b)
        3.  [with photo at top](#org7123efc)
        4.  [best AltaCV template](#org4832f7e)
    34. [publishing](#org721f173)
45. [Outline mode](#org7a1c7d2)
46. [Org agenda](#org53019be)
    1.  [keys](#org1b3b81b)
        1.  [keys in org mode for TODO:](#orgf3250b7)
        2.  [in agenda:](#orga9d5672)
    2.  [time format](#orgabe1633)
    3.  [date, timestamp and timer](#orgff11bc9)
    4.  [parser perl](#orgca909f1)
    5.  [parser python](#org6a94fd5)
    6.  [config](#org0b82cb3)
    7.  [example](#orgdd807ef)
    8.  [links](#org1d74632)
47. [org-roam and denote - note taking](#orgf9284d7)
48. [holidays](#orgc3b9675)
    1.  [integration with calendar.el](#org72d761d)
    2.  [russian holidays](#org805c295)
    3.  [easter](#org46c876a)
49. [icalendar export/import](#org4732731)
50. [appt - reminder for diary](#orgd5d2bae)
    1.  [appt reminder](#org6797760)
    2.  [appt default config](#org5c45d90)
    3.  [my reminder:](#org8acb245)
        1.  [reminder](#orga2f4a0e)
    4.  [config reminder server-clients](#org11256de)
51. [calendar mode and diary](#orga0c540d)
    1.  [calendar keys](#org54c8fb3)
    2.  [working](#org53cf436)
    3.  [diary](#orgdbc1792)
        1.  [file](#org90842ec)
52. [hidepw-mode - minor mode](#org2913a51)
    1.  [how it works](#orge1cfaba)
    2.  [my modification for compatibility with org-mode:](#org8b4bec0)
53. [ob-http - REST client](#org74c6e76)
    1.  [options](#org476e4d1)
    2.  [examples](#org4b88f79)
        1.  [get ip](#orgb72346c)
        2.  [http source block](#orgba25d63)
        3.  [json source block](#orgaba7045)
        4.  [form submit](#orge27cb75)
        5.  [varibale](#orgf69b848)
        6.  [properties](#org7ee770d)
    3.  [require](#orgd389e5e)
54. [Version Control](#orgd152556)
    1.  [VC](#orgeabf4eb)
        1.  [terms](#orgb73e521)
        2.  [keys](#orgf5fff45)
        3.  [vc-annotate](#orgc9ba591)
        4.  [vc-dir](#org1fd5a7a)
        5.  [usage - change branch + pull](#orgfceb27b)
        6.  [usage - push changes](#org1cc54c7)
    2.  [Magit](#orgd43bd61)
        1.  [conflict resolution:](#org0a4ae2f)
        2.  [links](#orgcec498f)
55. [cua-mode](#orge556323)
56. [Bookmarks mode](#orgbe5ea3e)
57. [recentf mode - recent visited files](#orgcf75087)
58. [grip-mode](#orgfc78c0e)
    1.  [reqs](#orgbd0d946)
59. [image-mode](#orgdd998c7)
60. [markdown-mode](#orgec6ff08)
61. [artistic mode (draw mode)](#orgd981011)
    1.  [base](#orgb54887f)
    2.  [draw shapes](#orgec45aee)
    3.  [todo](#org7cb4cdc)
    4.  [other drawing modes](#org26283ad)
    5.  [links](#org1622ccd)
62. [editorconfig](#org827a457)
63. [templating and expanding](#org471d5d1)
    1.  [Tempo](#orgc425e25)
    2.  [skeleton and abbrev ](#org9ae48d6)
        1.  [abbrev-mode](#org930078b)
        2.  [key binded skeleton example](#orgafd38b1)
        3.  [abbrev skeletons](#orgddf091e)
        4.  [org-tempo replacement](#org902e30d)
        5.  [company](#org45c8e4d)
        6.  [links](#orgd02a4b7)
    3.  [HippieExpand hippie-exp.el](#orgdddfdb2)
64. [CSV](#orga1981d3)
65. [Spreadsheeds - emacsmirror/dismal](#orgcaee8e3)
66. [preconfigured Emacs distributions](#orgefebf94)
    1.  [DoomEmacs](#org0382f93)
    2.  [Spacemacs](#org1ce71b9)
    3.  [lambda https://github.com/Lambda-Emacs/lambda-emacs](#org26ae57e)
    4.  [other](#orgd684104)
67. [Rust Emacs](#org2ef8ad6)
68. [4coder](#org37907a0)
69. [neovim](#org11060be)
70. [VSCode](#orga21fcb7)
71. [.emacs](#orge198e72)
72. [email](#orge65bcb8)
    1.  [links and overview](#orgb56bb48)
    2.  [isync + notmuch + emacs steps ](#orge262620)
    3.  [notmuch](#org18fe273)
        1.  [keys:](#org7d88e32)
        2.  [block :](#org6f83276)
        3.  [delete](#org39fe67b)
        4.  [headers](#org58a732e)
        5.  [parts](#org9158dd9)
        6.  [recreate](#org73b69a7)
        7.  [external viewer](#org591aecd)
        8.  [message display execution path](#org0f753ab)
        9.  [config exampls](#orgc6810c0)
        10. [troubleshooting](#org550ee59)
        11. [basic installation Emacs](#orgb890c5e)
        12. [links](#org7e65b23)
    4.  [email composer](#org4e57569)
    5.  [org-mode integration](#orga5ea77a)
    6.  [send email actually](#orgba8bfee)
        1.  [built-in: smtpmail-send-it](#org494539a)
        2.  [smtpmail-multi](#org4078395)
        3.  [troubleshooting](#org15f6562)
        4.  [links](#orgf33a064)
    7.  [WanderLust](#orgf358e20)
73. [command history](#orgab19e76)
74. [font locking](#orgf2b4a1a)
75. [auto-composition-mode](#org40f6cae)
76. [Chinese](#org8e3a9c1)
77. [quail - input method](#org48bdef2)
    1.  [debug-on-entry set-input-method](#org5b2fb8f)
    2.  [create own](#org063ca66)
78. [USECASES](#orge42d97a)
    1.  [how to add column or form table?](#org9333c4b)
    2.  [scroll two buffers two files together](#org0c08f77)
    3.  [line numbers at left](#org425fe38)
    4.  [two files change windows split vertically and horizontally](#orgc528970)
    5.  [how to edit several lines](#orgfc92cdf)
    6.  [how to filter lines - positive](#org9e5c0ae)
    7.  [how to filter lines - negative](#orgeaf7710)
79. [emacsclient](#orgf5891e0)
80. [Very Large Files](#org75ebd5b)
    1.  [vlf vs so-long](#org23368c7)
81. [Telega ](#org6ab8a67)
    1.  [terms](#orga97696d)
    2.  [keys](#org1ae8bca)
    3.  [source code](#orgd5fa046)
    4.  [installation steps](#org2114c00)
    5.  [requirement: TDLib](#org2d4b0b8)
    6.  [requirement: telega-server](#org9612b79)
    7.  [emacs configuration](#org141f3ae)
    8.  [troubleshooting](#org97d235b)
    9.  [Architecuture](#orgeecf7b7)
    10. [start](#org34b01fe)
    11. [real communication](#org32760ed)
        1.  [message video](#org4eb38e2)
        2.  [message text](#org3cdb6b5)
        3.  [user info](#org0d43885)
        4.  [chat](#org3cb308a)
    12. [Notification](#orge00fec4)
        1.  [telega&#x2013;on-updateNewMessage](#orgb60de93)
        2.  [content](#org77cda5d)
    13. [member<sub>count</sub>](#org7d7cd2e)
    14. [Usecases:](#org421ee0f)
82. [Twitter](#org7765b3c)
83. [Other modes](#orgc3bc9a6)
    1.  [Youtube packages](#org62389a0)
        1.  [yeetube](#org907146d)
    2.  [VoiceEmacs](#org540eb42)
    3.  [ChatGPT, Google Bard](#org4d9fc0a)
    4.  [EAF - browser, player, terminal](#orgfc1c947)
    5.  [hardwarde monitoring](#org5e8eeee)
    6.  [hunting bugs in .init](#orgd973059)
    7.  [host Emacs in cloud and access in browser](#org2f4016e)
    8.  [ERC - IRC client](#orgfc098d7)
    9.  [Kubel - kubernetes control](#org3a10d10)
    10. [EasyPG Assistant - autoencryption](#orgdede436)
        1.  [how it works](#orge6361b4)
        2.  [configuration of pinentry (password) to different tty](#orge82c7ba)
        3.  [commands](#org11021bd)
        4.  [Caching Passphrases](#org20a1795)
        5.  [Troubleshooting](#org6486bbd)
        6.  [links](#orgd3e57c8)
    11. [OSM - openstreetmaps](#org587155f)
84. [proxy](#org4927abc)
    1.  [url/url.el](#org8488da2)
        1.  [config socks proxy](#org3914945)
        2.  [path url-retrieve-synchronously](#org4f82cc2)
    2.  [old tryes](#orgb192253)
85. [QUESTIONS:](#org3354ef4)
86. [emacs keyboard layouts](#org188db77)
87. [good modes for UI enhancement](#org80696de)
88. [keyboard problems:](#orge1fd3c0)
89. [log keys, log commands, commands logging, key log](#org8413c84)
90. [bugs](#orgb8d5fdd)
91. [blogging](#org97ff79e)
    1.  [engines - SSGs Static Site Generators](#orgbb8a77c)
    2.  [emacs tangling](#org7fbe4cf)
    3.  [emacs export subtree](#org0c74c53)
        1.  [solution](#orgb391994)
    4.  [emacs tools](#org22c2bf1)
92. [money counting](#org719500a)
93. [Troubleshooting](#org627436c)
94. [Code suggestion - GitLab](#orgb0828a1)
95. [Browsers](#orge4b8d33)
96. [create emacs distribution](#org2ebd5fd)
97. [How to send a patch](#org45122c5)
    1.  [Sending the bug report via e-mail](#orged68d12)
        1.  [severity levels are:](#org9d31223)
        2.  [tags](#orgdb4a369)
        3.  [ex](#org240c476)
    2.  [suggest steps](#org5163edb)
    3.  [links](#orge05d94c)
98. [elpher - gopher and gemini client](#orgb1420d2)
99. [people](#org80ea31a)

;-**- mode: Org; fill-column:120; org-src-fontify-natively:t; buffer-read-only: t;-**- or emacs -f view-mode

For beginers: <https://systemcrafters.net/emacs-from-scratch/>

emacs news: <https://emacsredux.com/>

<https://github.com/emacs-tw/awesome-emacs>

programin book in Org <https://github.com/chansey97/SICP-Sage> <https://github.com/ilmotta/sicp-org>

example init

-   erc <https://dataswamp.org/~incal/emacs-init/>
-   <https://github.com/steelkiwi/emacs.d>
-   <https://github.com/alexott/emacs-configs>
-   Org Magit Ivy Evil vterm Eshell Dired lsp-mode-ivy typescript <https://github.com/daviwil/emacs-from-scratch/blob/master/init.el>
-   org and shit <https://susamn.medium.com/ultimate-emacs-setup-with-documentation-in-org-mode-8ed32e2b3487>
-   full <https://emacs.readthedocs.io/en/latest/general.html>
-   org notes with mobile orgzly <http://www.howardism.org/Technical/Emacs/getting-more-boxes-done.html>
-   agenda <https://github.com/opsnull/emacs>
-   good girl <https://github.com/sachac>
-   her blog <https://sachachua.com/blog/>
-   My ten most used features <https://www.youtube.com/watch?v=cSWXXJKqZ-A>
-   org config <https://www.omarpolo.com/dots/emacs.html>
-   Clojure Lisp Rust JS Email Company Magit <https://github.com/vedang/emacs-up>
-   Evil user, multilanguage programmer <https://github.com/erickgnavar>
-   sci-hub.se fan, dired, exmw, transmission, elfeed, tex, Latex <https://git.pixie.town/pinoaffe/emacs-config/src/branch/master/init.org>
-   grym - discriminitive AI, some graph based

keys <https://www.math.uh.edu/~bgb/Links/emacs_keys.html>

TODO <https://steelkiwi.com/blog/emacs-configuration-working-python/>
TODO videos <https://www.youtube.com/user/emacsrocks/videos>
TODO <https://sites.google.com/site/steveyegge2/effective-emacs>


<a id="orgdd77a18"></a>

# events

<https://emacsconf.org/>


<a id="org139a621"></a>

# command line usage

No need to use emacs as alternative editor -a “emacs” , you can just use an empty string, in this case it runs emacs daemon if needed


<a id="orgee66b24"></a>

# communities and wikies

<https://emacs-china.org/>

-   Emacswiki.org: founded in 2003. has a more comprehensive, albeit sometimes outdated, collection of content.
-   Wikemacs.org: launched in 2013, with a focus on ease of use, readability, and maintainability.


<a id="org89bc0bd"></a>

# TODO ELPA

<https://elpa.nongnu.org>


<a id="org0984c47"></a>

# MELPA create package

Code preparation:

-   M-x checkdoc
-   M-x byte-compile-file

Create pull request <git>

-   create for of <https://github.com/melpa/melpa>
-   git fetch upstream  # update fork
-   &#x2026;


<a id="orgecf170e"></a>

# theory


<a id="org676576f"></a>

## history

-   <https://tilde.town/~ramin_hal9001/articles/emacs-fulfills-the-unix-philosophy.html>
-   <https://amodernist.com/texts/emacs-unix.html>

-   1980s XEmacs the first variant that actually had a separate mapped window for the editor.
    
    -   Some compiler weenies wanted to make an IDE, so they took Emacs and bolted some shit on to make it into an IDE
    -   Then they tried to upstream a bunch of cool features like X support and RMS was like "whoa, there, slow your roll,
    
    chief"

gosling code was removed from emacs by 16.x and rewritten


<a id="org1f792c9"></a>

# terms <a id="org3d81994"></a>

-   emacs - a free/libre text editor and elisp interpretor.
-   yeld - paste from kill ring.
    -   kill ring - is a list of blocks of text that were previously killed
-   active region - when set-mark-command is called, the region becomes active. And any other command typically set the
    region status to inactive after it is called.
    -   mark - set-mark-command
    -   region - The last marked position to the current cursor position.
-   prefix argument - ‘C-u’ to set the prefix argument value to use.(universal-argument) command. may be: nil - no
    argument, integer, character ("-"). It is a first argument to function with (interactive
    "P"). <https://www.gnu.org/software/emacs/manual/html_node/elisp/Prefix-Command-Arguments.html>


<a id="org7cb9a22"></a>

# Emacs source code

Emacs writen in lisp but lisp is writen in C

Code base is large:

-   Emacs is meant to be computing environment
-   Was created in time when there was no such concept as a package managers - a lot of staff was added to a core to make
    it useful in the box, but this days emacs would use packages if will be rewrited
-   a lot of staff here that doesn't need to be here.
-   too many feature to maintain with stability

forks: Lucid/XEmacs, Guile Emacs, Aquamacs, Mac port, Remacs.


<a id="org0cc2d9a"></a>

## elisp and common lisp

-   there is emulation for common lisp in emacs
-   it is too hard to maintain universal interpretator for scripting it is better to enhance elisp and add support for
    other languages


<a id="org7f68ee5"></a>

# Debuging

steps:

-   (global-set-key (kbd "C-h C-f") 'find-function)
-   C-u C-M-x	set breakpoint at function entry
-   C-M-x
-   c


<a id="orgb29d9dd"></a>

## terms

-   instrumenting - inserts additional code into it, to invoke Edebug at the proper places.


<a id="org013db1a"></a>

## Elisp mode:

cursor at the end of expression:

-   C-x C-e	eval-last-sexp	Evaluate the expression to the left of cursor.
-   C-M-x	eval-defun	Evaluate top level expression to left and to right of cursor
-   C-u C-x C-e	eval and insert result to buffer
-   C-u C-M-x	Instrument and execute current func

other eval

-   M-: (eval-expression) type expression in ()

To remove instrumentation from a definition, simply re-evaluate its definition in a way that does not
 instrument. (‘M-:’) or edebug-remove-instrumentation


<a id="orgaeb997b"></a>

## The Lisp Debugger ( The built-in Emacs Lisp debugger)


<a id="orgc52920a"></a>

### enable

-   M-x **toggle-debug-on-error**
-   M-x **debug-on-entry** RET triangle-bugged RET
    -   M-x cancel-debug-on-entry RET triangle-bugged RET
-   M-x **debug-on-variable-change** RET myvar RET
    -   M-x cancel-debug-on-variable-change RET myvar RET
-   M-x set-variable RET debug-on-quit RET t RET - whenever you type C-g (keyboard-quit). useful for debugging infinite loops.
-   **debug-on-message** variable - very useful. ex: (setq debug-on-message "File is missing")

Explicit debuging: place (debug) at place where it required and eval C-M-x.


<a id="orgb03bc12"></a>

### debug init file

emacs &#x2013;debug-init - Enable Emacs Lisp debugger during the processing of the user init file ~/.emacs.

1.  Try emacs &#x2013;debug-init
2.  Comment 2/3 of your init file and try to start, then comment 1/3 of
    your init file and try to start, etc. You can use Emacs itself
    without loading configuration to comment lines: `emacs -q .emacs`.
    Select region and do `M-x comment-line`
3.  There is a package for debugin init file, but I never used it <https://github.com/emacs-straight/bug-hunter>

Good article about bug hunting: <https://whatacold.io/blog/2022-07-17-emacs-elisp-debug/>

Init file profiler <https://github.com/jschaf/esup>


<a id="org856f197"></a>

### keys in debugger

frame - commands sequence in backtrace

**Backtrace** buffer - part of The Lisp Debugger

-   q	Terminate the program being debugged; return to top-level Emacs command execution.
-   c	Exit the debugger and continue execution.
-   d	step
-   b/u	set/unset breakpoint at frame, next time it will stop here
-   j	enter edebug and temporarely disable all debug-on-entry in way to this frame

other:

-   l	list debug-on-entry points
-   v	show local variables
-   +/-	toggle view
-   RET	"push-button" go to definition
-   SPC	scroll
-   "."	expand


<a id="orgb7ebd58"></a>

## Edebug

source-level debugger - displays the source of the code you are debugging, with an arrow at the left

-   can not see variables, but can evaluate any expression (print val)

Instrumenting:

-   C-u C-M-x (‘eval-defun’ with a prefix argument) point into the definition of a function


<a id="org36ee807"></a>

### commands

-   "i/o"	(M-x edebug-step-in) to step in
-   "b"		(M-x edebug-set-breakpoint) to set the break point (press "u" key unset break point. I don't use this though)
-   "g"		(M-x edebug-go-mode) continue until next breakpoint
-   "h"		(M-x edebug-goto-here) to proceed until at the current line
-   space	step
-   w		Move point back to the current stop point
-   e		eval
-   C-x C-e	eval expression outside


<a id="orge4e4059"></a>

## links

-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Debugging.html#Debugging>
-   <https://www.gnu.org/software/emacs/manual/html_node/eintr/Debugging.html>
-   <https://caiorss.github.io/Emacs-Elisp-Programming/Elisp_Programming.html>


<a id="org3cf0f6b"></a>

# Info

-   F1 i	open
-   M-: (info "(elisp) Writing to Files")

see <shell>


<a id="orgefc21c3"></a>

## keys

i	Search for a topic in this manual’s Index and go to index entry.
c	Get current Info path


<a id="org401e23a"></a>

## extra Info files

1.  wget <https://ftp.gnu.org/gnu/emacs/elisp-manual-21-2.8.tar.gz>
2.  tar xpf elisp-manual-21-2.8.tar.gz
3.  cd elisp-manual-21-2.8
4.  ./configure
5.  make elisp
6.  make install (as root or change prefix)
7.  ~/.emacs: (add-to-list 'Info-directory-list "/usr/local/info")

or

    bzip -d /usr/share/info/emacs-28/elisp.info.bz2


<a id="org866bb5d"></a>

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


<a id="orgb5dd724"></a>

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


<a id="org9db19b9"></a>

# encoding

-   M-x revert-buffer-with-coding-system
-   M-x set-buffer-file-coding-system (or C-x C-m f)
-   M-x recode-region
-   '**'  - coding: utf-8 -**-
-   best way to convert - just copy text from emacs to new created emacs window

or

-   iconv -f ISO-8859-1 -t UTF-8 input.file -o out.file
-   iconv -l

Вот такое удаление плохих символов иногда помогает:

    cat file | sed 's/\r//g' > /tmp/file


<a id="org0cf56d6"></a>

# keys

C-A-?	autocompletion


<a id="org54e4a1e"></a>

## help

C-h = F1
C-h ?	i manuals a shutcommands r tutorial
C-h l	история
c-h f   lisp function (keyboard-translate ?\C-o  ?\C-h)
C-h b	keys bindings
C-h e   message buffer
C-h F   help for command: org-mode
C-h i   info page

M-x shortdoc-display-group

C-h v system-configuration-features - features supported by this Emacs build.


<a id="orgabb244e"></a>

## basic

M-x or Esc x - eval-defun - evaluate lisp funcion

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

C-g or C-q or C-] or q	Cancel (exit from command line, close other  window, Esc, )

C+u	repeat
C-x z	repeat last command by typing z z z z

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


<a id="org27cd16c"></a>

## Copy paste etc

-   C+SPC	start of selecton
-   C+q		cancel, close other window
-   C+x C+x	swap mark
-   C+x h 	mark all
-   M-h		Mark the current function (c-mark-function). Puts the mark at the end and of the function and the point at the
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


<a id="org590bbdc"></a>

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
-   C-x C-@	return back after search ( pop-to-mark-command)
-   M-x replace-string	search and replace
-   M-%			advanced search and replace
-   M+g+g			go to line
-   C+Home or M+Shift+<	start of the page
-   C+End or M+Shift+>	end of the page

-   Scroll Lock - fixate cursor


<a id="org4aa800a"></a>

### buffers:

-   C+x C+b list buffers
-   C+x+k kill
-   C+x+array(left or right) - next or preview buffer in list


<a id="org1138b92"></a>

### parentheses

-   C-M-f	(forward-sexp)
-   C-M-b	(backward-sexp)
-   C-M-d	down-list
-   C-M-n	forward-list
-   C-M-u	backward-up-list


<a id="orgfcaafb9"></a>

## prefixes C-x, C-c, Esc

-   C-x is prefix key for general commands
-   C-c is prefix key of current major mode's commands.
-   Esc  (global-set-key (kbd "\e\el") 'goto-line)

<https://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Binding-Conventions.html>


<a id="org1d12e1c"></a>

## Marks

-   A-S-m		set mark


<a id="orgdcc8d64"></a>

## macros

-   C-x (	start definition
-   C-x )	end definition
-   C-x e	Execute
-   C-u 20 C-x e	20 times
-   C-x C-k n RET my M-x insert-kbd-macro RET my	Insert in the buffer a keyboard macro’s definition, as Lisp code.


<a id="orgb2fd8fe"></a>

## auto-fill

M-x auto-fill-mode
M-q    refill paragraph
С-u C-x f set column to cursor

C+x f         set fill column (margin)


<a id="orgdc3a8fc"></a>

# key binding

<http://ergoemacs.org/emacs/emacs_useful_user_keybinding.html>

C-h k	check binding for key
C-h b	all binding
C-h l   recent keystrokes

You cannot invoke a non-interactive function through a key binding — it must be a command.

Command is interactive functions. command has an (interactive &#x2026;) form at the top of its function body.


<a id="org82cd774"></a>

## TODO colemak

<https://github.com/jmorag/.emacs.d/blob/master/colemak/colemak-mode.el>


<a id="org7cc2a79"></a>

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

**Why not work with M key?**

-   keyboard-translate works with char tables, hence the characterp error. Modified keys are not necessarily valid as characters.
-   (elisp) Char-Tables tells us: "A char-table is much like a vector, except that it is indexed by character codes. Any
    valid character code, without modifiers, can be used as an index in a char-table."
-   The control modifier is a bit special, as typical control characters are still plain ASCII values, and hence valid for
    characterp.


<a id="org995aeab"></a>

## Keymaps


<a id="org39fe6ab"></a>

### basic

keymap is an internal data structure used by Emacs to store keys and their associated actions

M-x describe-keymap

-   **keyboard-translate** - swap keys
-   **global-set-key** - equal to (define-key (current-global-map) key command)
-   **local-set-key** - equal to (define-key (current-local-map) key command)

{- **define-key** - that is how

-   (define-key key-translation-map (kbd "C-l") (kbd "C-b"))

-   (global-unset-key KEY)
-   (local-unset-key KEY)

Most third-party packages don’t care about the key bindings they occupy. So keep that in mind.

Keys reserved for you:

-   prefixed with **C-c**
-   F-keys from F5 and onwards
-   **hyper** and **super** H- (e.g., H-q) and s- for super. Note that s is super and S is shift.
-   Windows key and the Application Context key
-   C-M-

<https://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Binding-Conventions.html>


<a id="orgae9e68f"></a>

### exploration

-   M-x describe-keymap
-   C-h b


<a id="org13e57d6"></a>

### kbd macros

Ways to representing keys in Emacs: as a string, or as a vector. kbd use string.

<> required for: That includes F-keys, arrow keys and home row keys, like so: <home>, <f8> and <down>

    (kbd "<home>")    ;; OK
    (kbd "tab")       ;; Wrong, but valid -- missing < and >
    (kbd "<tab>")     ;; OK
    (kbd "C-c p")     ;; OK

kbd used to bind actions to keys

saving and executing macros - "kmacro":

    M-x name-last-kbd-macro
    M-x insert-kbd-macro
    M-: (call-interactively (kmacro "C-n - C-n C-a C-a"))
    M-x kmacro-edit-macro

kmacro syntax is equal to kbd. kmacro is used to execute keys by command


<a id="org55321b3"></a>

### Remapping Commands

    (define-key (current-global-map) [remap kill-line] 'my-homemade-kill-line)


<a id="org433fc9a"></a>

### Keymap Lookup Order

First, Emacs checks if there’s a minor mode key binding. Secondly, local keys set. And finally global keys are checked.

1.  **overriding-terminal-local-map** for terminal-specific key binds.
2.  **overriding-local-map** for keys that should override all other local keymaps. Be VERY careful if you use this!
3.  **Keymap char property at point** for keymaps that are local to the character point is at. Common use cases include
    in-buffer fields, like the ones you find in M-x customize.
4.  **emulation-mode-map-alists** for advanced multi-mode keymap management
5.  **minor-mode-overriding-map-alist** for overriding the keymaps used by minor modes in major modes.
6.  **minor-mode-map-alist** is exactly like the overriding version above, but the preferred means of specifying the
    keymaps for minor modes.
7.  **Keymap text property at point** is like the one above for char properties but this is for text properties only.
8.  **current-local-map** for keymaps defined in the buffers’ current local map
9.  **current-global-map** is the last place Emacs looks. It hosts keys that are global.


<a id="org9c9f6c8"></a>

### creating keymap and deactivate it

make-keymap is more efficient than a sparse keymap when it holds lots of bindings; for just a few, the sparse keymap is
 better.

use-local-map - override all Major Mode Bindings

Here is two approaches: remap keymap and activate own minor mode. Major mode is not possible to deactivate.
Steps for remap keymap:

1.  Define a keymap.
2.  set-keymap-parent my-map oldmap # to add old keys to new
3.  use-local-map my-map # activate new
4.  use-local-map old # get old back

Steps for activate own minor mode:

1.  define minor mode with keymap
2.  activate it and deactivate it

1.  remap global keymap <a id="org3613755"></a>

        (defun myaa () (interactive)
                                          (set 'oldmap (current-local-map))
                                          ;; (suppress-keymap (current-local-map))
        
                                          (set-keymap-parent my-map oldmap)
                                          (use-local-map my-map)
        
                                          (print oldmap)
                                          (call-interactively 'org-goto)
                                          (use-local-map oldmap)
                                          )
                                   (define-key org-mode-map (kbd "C-c C-j") 'myaa)

2.  minor mode with keymap

        (defun myaa () (interactive)
                                          (fix-org-goto-mode)
                                          (call-interactively 'org-goto)
                                          (fix-org-goto-mode -1)
                                          )
                                   (define-minor-mode fix-org-goto-mode
                                     "Allow to exit from search with arrows."
                                     :lighter " fix-goto"
                                     :keymap (let ((map (make-sparse-keymap)))
                                               (define-key map (kbd "C-f") 'org-goto-ret)
                                               (define-key map (kbd "C-l") 'org-goto-ret)
                                               (define-key map (kbd "C-n") 'org-goto-ret)
                                               (define-key map (kbd "C-k") 'org-goto-ret)
                                               map))
                                   (define-key org-mode-map (kbd "C-c C-j") 'myaa)

3.  links

    -   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Keymaps.html>
    -   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Controlling-Active-Maps.html>
    -   <http://xahlee.info/emacs/emacs/elisp_create_major_mode_keymap.html>
    -   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Active-Keymaps.html>


<a id="orge0ae355"></a>

### use-package

unless you tell it otherwise, use-package defaults to global key bindings.

    ;; global key map
    (use-package winner
      :config
      (winner-mode 1)
      :bind (("M-[" . winner-undo)
             ("M-]" . winner-redo)))
    
    ;; specify key map
    (use-package eshell
                 :bind (("C-c e" . eshell)
                        :map eshell-mode-map
                        ("M-m" . eshell-bol)))
    
    (use-package package-name-here
      :bind (("kbd-here" . command-here)
             :map some-map
             ("kbd-here" . another-command-here)
             :map yet-another-map
             ("kbd-here" . some-command-here)))


<a id="org236621a"></a>

### links

-   <https://ftp.gnu.org/old-gnu/Manuals/emacs-20.7/html_node/emacs_446.html#SEC453>
-   <https://www.masteringemacs.org/article/mastering-key-bindings-emacs>


<a id="org9374e93"></a>

## function keys

<https://www.gnu.org/software/emacs/manual/html_node/elisp/Function-Keys.html>

-   ‘A-’ The alt modifier.
-   ‘C-’ The control modifier.
-   ‘H-’ The hyper modifier.
-   ‘M-’ The meta modifier.
-   ‘S-’ The shift modifier.
-   ‘s-’ The super modifier.


<a id="org68e3876"></a>

## reserved

-   C-c followed by a control character or a digit are reserved for major modes.
-   C-c followed by {, }, <, >, : or ; are also reserved for major modes.
-   C-c followed by any other ASCII punctuation or symbol character are allocated for minor modes.
-   C-c and a letter (either upper or lower case; ASCII or non-ASCII) are reserved for users;
-   F5 - F9 without modifier keys are also reserved for users to define.


<a id="org98ba967"></a>

## chords

-   order doesn’t matter: ab is the same chord as ba
-   two keys pressed simultaneously, or a single key quickly pressed twice


<a id="org11104db"></a>

## hydra

-   define modes like in vi with keys

for window size and zoom

    (defhydra hydra-windowsize (global-map "C-x")
        ("{" shrink-window-horizontally)
        ("}" enlarge-window-horizontally))
    
    (defhydra hydra-zoom (global-map "<f2>")
          "zoom"
          ("g" text-scale-increase "in")
       ("l" text-scale-decrease "out"))


<a id="orge5fde8c"></a>

## forward-word, backward-word, backward-kill-word, kill-word

F1 s - syntax table

treat '. / . // aw' as a different Word and a./fg.s will be single word also

    (modify-syntax-entry ?. "w")
    (modify-syntax-entry ?/ "w")


<a id="org763dcfb"></a>

## rebind C-i C-m C-[

    (define-key input-decode-map [?\C-i] (kbd "<C-i>"))
    (define-key input-decode-map [?\C-m] (kbd "<C-m>"))
    (define-key input-decode-map [?\C-\[] (kbd "<C-[>"))


<a id="org6872201"></a>

## rebinding

    (keymap-set vertico-map "<remap> <exit-minibuffer>" 'my-other-kill-line)

    (defvar-keymap vertico-map
      :doc "Vertico minibuffer keymap derived from `minibuffer-local-map'."
      :parent minibuffer-local-map
      "<remap> <beginning-of-buffer>" #'vertico-first
      "<remap> <minibuffer-beginning-of-buffer>" #'vertico-first
    )


<a id="org098238b"></a>

# indentation <a id="org737f1ca"></a>

By default and history TAB character used for indentation

-   most modes have set (setq-local indent-tabs-mode nil), which means spaces used instead of TABs
-   to set tab lengh use: `(setq tab-width 4)`

Major modes use mode specific variables that refer to tab-width

    (defvaralias 'c-basic-offset 'tab-width)
    (defvaralias 'cperl-indent-level 'tab-width)

Emacs uses #'indent-for-tab-command function to control completion/indentation/space insertion for TAB key.


<a id="org640a8a6"></a>

## TAB key bound to #'indent-for-tab-command - try to indent then complete

<a id="org8d15ec1"></a>

1.  calls #'indent-region if region
2.  calls insert-tab if tab-always-indent is none and cursor not at the begining of line.
3.  calls #'indent-line-function
    -   if fails calls: indent&#x2013;default-inside-comment - if 'noindent was returned
    -   if fails calls: (default-value 'indent-line-function) - if 'noindent was returned and nil from #'indent&#x2013;default-inside-comment
4.  calls (completion-at-point) - always called. Regulated by “tab-first-completion” variable

other facts

-   use variable “tab-always-indent”
-   \#'indent-line-function calls 'indent-relative
-   \#'indent-region calls #'indent-region-function which calls #'indent-region-line-by-line which calls #'indent-according-to-mode
    -   \#'indent-according-to-mode calls #'indent-line-function calls 'indent-relative

C-u M-x indent-for-tab-command - indents the entire balanced expression (this may be automated if cursor at the begining)

completion-at-point

-   uses variable #'completion-at-point-functions - bound for mode specific function.

indent-for-tab-command - TAB key. Have three probles:

1.  strict sequence of calls: indent-region, insert-tab, indent-line, completion-at-point.
2.  Impossible to hook completion-at-point

indent-for-tab-command - TAB key. Have two big probles: 1)
                strict sequence of calls: indent-region, insert-tab,
                indent-line, completion-at-point. 2) Impossible to hook and
                check success of completion-at-point.


<a id="org89308c0"></a>

## variable: tab-always-indent - **indent.el** main

tab-always-indent

-   t - indents the current line
-   nil - insert TAB/space if not at left margin
    -   uses “indent-tabs-mode” variable to control TAB/Space - in indent-for-tab-command
-   complete - tries to indent the current line, and if the line was already indented, then try (completion-at-point)


<a id="org44c24ff"></a>

## variable: tab-first-completion

-   nil (default) - complete
-   eol - Only complete at the end of a line
-   word - complete unless the next character has word syntax (according to \`syntax-after')
-   word-or-paren - Unless at a word or parenthesis
-   word-or-paren-or-punct - Unless at a word, parenthesis, or punctuation.


<a id="orge700484"></a>

## #'indent-line-function may be:

-   \#'indent-relative
-   \#'indent-relative-first-indent-point
-   \#'indent-to-left-margin - Fundamental Mode, Text Mode, etc.

\#'indent-line-function should return #'noindent if no success


<a id="orge97e2e4"></a>

## #'indent-region-line-by-line

indent lines separately, good for Elisp, C, C++ modes, bad for Python.

To indent all lines as first you should write some function, that indent first line and than call ~(indent-rigidly

1.  there is two types of region indentation line by line and all at once(point) end chars-to-indent)~


<a id="org9999fc6"></a>

## How to indent if cursor at middle of the line?

In #'indent-line-function check position and do indentation.


<a id="org48edb64"></a>

## How to firstly complete and then indent?

We should check result of (completion-at-point), variants:

1.  copy code for call of (completion-at-point) from #'indent-for-tab-command to our #'indent-line-function and set
    tab-always-indent != 'complete to prevent second call of completion.
2.  rebind TAB key or add advice before indent-for-tab-command.


<a id="orgbfa92ca"></a>

## How to insert space if nothing working?

You should code all chain in your indent-line-function.


<a id="org5a6da52"></a>

## How to prevent (completion-at-point) after indentation.

Set tab-always-indent to t


<a id="org142475d"></a>

## Python-mode

“indent-line-function” bound to #'python-indent-line-function

Eglot executed at #'completion-at-point


<a id="org742b9a3"></a>

## Python-ts-mode

TAB bound to py-indent-or-complete

-   calls if at the middle or begining - #'py-indent-line
-   calls if at the end - (completion-at-point).
-   calls for region #'py-indent-region - uses variables “py-tab-shifts-region-p” and “py-tab-indents-region-p”

Insted of indent-for-tab-command with “complete” that first tries to indent, py first try to complete.


<a id="orgd1c1d84"></a>

## org-cycle

see [44.13.19](#orgac86344)


<a id="org2f772f0"></a>

## my universal approach (sucks)

cases:

-   at begining of line or before line - main case
-   middle of line - main case - detect context and complete
-   end of line - same to middle of line
-   region
    -   one line
    -   multi lines

    (defun my/tabkey-region-multi()
      )
    (defun my/tabkey-region-single()
      )
    (defun my/tabkey-beg-line()
      )
    (defun my/tabkey-mid-line()
      )
    (defun my/tabkey-end-line()
      )
    
    (defun my/indent-or-complete1 (arg)
      "TAB key
    Why? Insted of indent-for-tab-command with “complete” that first
    tries to indent, py first try to complete.
    
    cases:
    - at begining of line or before line - main case
    - middle of line - main case
    - end of line
    - region
      - one line
      - multi lines."
      (interactive "*")
      (cond
       ;; - region case
       ((use-region-p)
        (if  (= (line-number-at-pos (region-beginning)) (line-number-at-pos (region-end)))
            (indent--funcall-widened (my/tabkey-region-single)
          ;; else - multiline
          (my/tabkey-region-multi)
          ))
       ;; - single line postion
       ((> (current-column) (current-indentation)) ; middle-end
        (if (looking-at "[ \t]*$")
            ;; end
            (my/tabkey-end-line)
          ;; else: middle
          (my/tabkey-mid-line)))
       (t ; begining of the line
        (my/tabkey-beg-line)
        )))


<a id="orgaba5ab4"></a>

## Guide: Steps to customize indentation.

remember how TAB works: indentation then completion.

-   to modify indentation: rebind indent-line-function
-   to modify completion: do it at to the end of your replacement for indent-line-function

Steps

1.  rebind #'indent-line-function by (setq-local indent-line-function #'my/indent) in hook for mode.
2.  ensure that function return 'noindent label if it fails to continue chain of calls. see [16.1](#org8d15ec1)
3.  There is two types of region indentation “line by line” and “all as first” (for this you should write own function
    and set it to indent-region-function variable.
4.  configure completion at the end of your #'my/indent
5.  decide what (completion-at-point) should do, set tab-first-completion variable
6.  Answer is “line by line” for #'indent-region is enough? If not, setq-local indent-region-function.


<a id="org054b614"></a>

### Template for major mode

    (defun my/indent ()
      "return 'noindent if it fails."
      (if condition
          (when (not (eq do-something success))
            'noindent)
          ;; else - fallback to default-indentation
          'noindent))
    
    (defun my/some-mode-hook ()
      (setq-local indent-line-function my/indent))


<a id="org17c0d64"></a>

### Template for minor mode

If you modify TAB for minor mode you probably want to just add behavior and don't modify major mode TAB key behavior.

To do so you should save indent-line-function to local variable. Here is  template:

    (defvar my/indent-line-function-original)
    
    (defun my/minor-tab ()
      "Replacement for 'indent-line-function"
      (if condition
          (your-minor-mode-indentation)
        ;; else - fallback
        (indent--funcall-widened my/indent-line-function-original)))
    
    (defun my/some-mode-hook ()
      (if some-mode
          (progn
            ;; save
            (setq-local my/indent-line-function-original indent-line-function)
            ;; replace
            (setq-local indent-line-function #'my/outline-tab))
        ;; else - restore
        (setq-local indent-line-function my/indent-line-function-original)))
    
    (add-hook 'some-minor-mode-hook 'my/some-mode-hook)


<a id="org1aec788"></a>

### check that indentation was made

    (let ((old-indent (current-indentation)))
          (lisp-indent-line) ; or (python-indent-line-function) or (indent-relative)
          (if (zerop (- (current-indentation) old-indent))
              'noindent
            ))


<a id="org9ad6f74"></a>

## indentation (old, obsolate)

-   C-M-o	Split the current line at point
-   M-^	Merge the previous and the current line

-   M-i	Indent whitespace at point
-   C-M-\\    Indent all the lines in the region
-   C-x TAB  used to change the indentation of all lines that begin in the region
-   indent-sexp (C-M-q)
-   lisp-indent-line (tab key)
    
    <http://community.schemewiki.org/?emacs-indentation>
    <https://dougie.io/emacs/indentation/>


<a id="org93394f2"></a>

# file variables -\*-

<https://www.gnu.org/software/emacs/manual/html_node/emacs/Specifying-File-Variables.html>
**File varibles**
-**- coding: utf-8; mode: modename; var: value; &#x2026; -**-
;; -**- mode: Lisp; fill-column: 75; eval: (print "hello"); -**-
M-x add-file-local-varible-prop-line	предлагает доступные переменные


<a id="orgc4b8555"></a>

## fill column

C-? v fill-column - help and get current
C-x f - set-fill-column


<a id="orgf10a6d2"></a>

# folder variables - .dir-locals.el

-   .dir-locals.el
-   .dir-locals-2.el

Emacs searches for .dir-locals.el starting in the directory of the visited file, and moving up the directory tree

M-x copy-file-locals-to-dir-locals copies the file-local variables in the current file into .dir-locals.el.

<https://www.gnu.org/software/emacs/manual/html_node/emacs/Directory-Variables.html>

    
    ((nil . ((indent-tabs-mode . t)
             (fill-column . 80)
             (mode . auto-fill))) ;; for any file in the directory tree
     (c-mode . ((c-file-style . "BSD")
                (subdirs . nil))) ;; for any C source file
     (eval . (add-to-list 'company-backends
                          '(company-jedi company-files)))
     ("src/imported"
      . ((nil . ((change-log-default-name
                  . "ChangeLog.local")))))) ;; C mode settings are only to be applied in the current directory, not in any subdirectories.


<a id="org38c00a1"></a>

# global variables

-   F1 v  describe global variable
-   M-x set-variable
-   


<a id="org39a0cf3"></a>

# package install

-   ELPA - default -  included in GnuEmacs <http://elpa.gnu.org/>
-   MELPA - additional <https://melpa.org/>
-   NonGNU already part of the default set of package archives in Emacs 28.  <https://elpa.nongnu.org/>

M-x list-packages - ELPA

after install:

-   add (package-initialize) to ~/.emacs
-   (require 'package-name)   - to fully load the package, useful to show that following code require this package.
-   it's also recommended that you add (package-initialize) somewhere in your ~/.emacs file - to set up the load-paths and
    autoloads for installed packages.
-   (with-eval-after-load "package-name" &#x2026;) or (eval-after-load 'package-name &#x2026;) to run code after a package is
    loaded. This is useful if package at load path and you want execute code only if package was loaded this allow to use
    configuration when where package was not installed.

to remove: M-x paclage-delete

-   after remove, to remove dependencies: M-x package-autoremove

;; only run this if rtags is installed
(when (require 'rtags nil :noerror)
;; something here
)


<a id="org338048b"></a>

## remove

-   M-x package-menu-mark-obsolete-for-deletion
-   M-x package-menu-execute


<a id="org278218b"></a>

## update

M-x package-list-packages

to mark all upgradable and update all:

1.  U	package-menu-mark-upgrades
2.  x	package-menu-execute

to filter all upgradable and update individual:

1.  / u	package-menu-filter-upgradable
2.  manually install and remove obsolate


<a id="org2a7ef10"></a>

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


<a id="orgb0e6115"></a>

## load path

The default behavior is to load the first file found. This command prefers .elc files over .el files because compiled
 files load and run faster.

-   load-prefer-newer to a non-nil value, loads whichever version of the file is newest
-   load-path. list of directories (strings). These directories are searched, in the specified order
-   (require 'my-shining-package)   ;; Loads my-shining-package.elc unconditionally.
-   (autoload 'my-func "my-shining-package")  ;; Will load my-shining-package.elc when my-func is invoked.


<a id="orgf83b0c3"></a>

## (load "package.el")

Evaluate a complete file. you can leave out the extension and it will automatically load the "elc" or "el" file as
 appropriate.  It also looks into the **load-path** directories.

Note that you have to add the lisp subdirectory to the **load-path**, not the top-level of the repository, and that elements
 of load-path should not end with a slash, while those of Info-directory-list should.

-   (add-to-list 'load-path "~/.emacs.d/site-lisp/dash")

Example:

-   (load "foo") (if "foo.el" is in the current directory or in the load-path").


<a id="org6706890"></a>

## (require 'foo)

load foo.el and require (provide 'foo) in file.

require is similar to load, except it prevents the file from being loaded more than once


<a id="orgd3f7d86"></a>

## (package-initialize)

initializes Emacs’ internal record of which packages are installed, and then calls **package-activate-all**.

(package-activate-all) This function makes the packages available to the current session. The user option
 **package-load-list** specifies which packages to make available; by default, all installed packages are made available.


<a id="orga8992c8"></a>

## Why use-package?

-   have to explicitly call (require 'package-name) in your init.el before you could do any configuration.
-   any configuration of the package may need to be wrapped in a (with-eval-after-load 'package-name &#x2026;) block, to avoid
    running into undefined variables and functions before your package is fully loaded - to run code after a package is
    loaded,


<a id="org457acd6"></a>

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


<a id="org6253ef5"></a>

## upgrade

-   M-x package-list
-   U
-   x
-   M-x package-autoremove


<a id="orgef4aecf"></a>

## install from Git

1.  .emacs: (add-to-list 'load-path "~/.emacs.d/contrib/lisp/")
2.  git clone <https://github.com/magit/magit.git> ~/.emacs.d/contrib/lisp/magit
3.  .emacs: (require 'magit) or (package-initialize)


<a id="org54d99ab"></a>

## contribute

<https://www.emacswiki.org/emacs/GitForEmacsDevs>


<a id="orgc35060e"></a>

# cool features


<a id="orgf1f2ea9"></a>

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


<a id="org88c6dfb"></a>

## Curly quotation marks "" vs “” and ‘’ vs ''

    (setopt electric-quote-context-sensitive t)
    (setopt electric-quote-replace-double t)
    (add-hook 'org-mode-hook 'electric-quote-local-mode)


<a id="orgee7c53a"></a>

# buffers

C-x	C-LEFT goes to previous buffer
C-x	C-RIGHT goes to next buffer
C-x k	kills a buffer
C-x 4 0	kills a buffer and its window
C-x b	switches to another buffer, or opens a new buffer
C-x	left/right - cycle buffers

cycling:

-   it is impossible to track key release event


<a id="org97f4649"></a>

## iflipb github

<https://github.com/jrosdahl/iflipb>


<a id="org4ec130a"></a>

## buffer-flip Melpa


<a id="orgedf3fa8"></a>

## buffer-expose ELPA


<a id="orgdb97845"></a>

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


<a id="org205d95d"></a>

## alternative windows switching

<https://emacs.stackexchange.com/questions/3458/how-to-switch-between-windows-quickly>

-   arrays - up, down, left, righ: (windmove-default-keybindings 'none)
-   <https://www.emacswiki.org/emacs/NumberedWindows>
    -   (global-set-key (kbd "s-1") (lambda() (interactive) (window-number-select 1)))


<a id="org396c7bb"></a>

## saving windows layout

from yugaego@fosstodon.org

    `M-x window-configuration-to-register` bound to `C-x r w` allows to store a window configuration of the current frame.
    Imaging working on a project, with specific buffers opened in carefully placed windows. Then you need to switch to
     another layout... Just hit `C-x r w` <enter-a-character>. And then go on changing the layout. After finishing, hit `C-x
     r j` <enter-that-character> and see the stored windows configuration (layout) reproduced. Bingo!

winner-mode

-   I.e., \`M-x winner-undo\` (\`C-c <left>) reopens previously closed windows.


<a id="org92befe2"></a>

## mode line

U:@&#x2014; - saved

U:@\*\*- - modified

    cs:ch-fr  buf      pos line   (major minor)

-   cs string and the colon character after it describe the character set and newline convention used for the current buffer.
    
    -   '-', that indicates no special character set handling (with the possible exception of end-of-line conventions,
    
    described in the next paragraph).
    
    -   '=' means no conversion whatsoever, and is usually used for files containing non-textual data
    -   ‘1’ represents ISO Latin-1.
    -   two additional characters that describe the coding systems for keyboard input and terminal output.
-   ':' - end-of-line convention.
    -   ‘\\’ or ‘(DOS)’ - MS-DOS convention uses a carriage return character followed by a linefeed character;
    -   (‘/’) or ‘(Mac)’ - older Macintosh systems, uses a carriage return character instead of a newline
    -   ‘(Unix)’ - On some systems
    -   '@' - This indication is typical for frames of an Emacs process running as a daemon
-   ch
    
    -   ‘&#x2013;’ - if the buffer displayed in the window has the same contents as the corresponding file on the disk; i.e., if
    
    the buffer is unmodified
    
    -   ‘\*\*’ - the buffer is modified
    -   ‘%\*’ - the buffer is modified for a read-only buffer
    -   ‘%%’ - the buffer is not modified for a read-only buffer
-   ‘-’ -
    -   ‘@’ if default-directory for the current buffer is on a remote machine, ‘@’ is displayed instead.
-   fr - It appears only on text terminals. The initial frame’s name is ‘F1’. gives the selected frame name
-   buf - is the name of the buffer displayed in the window.
-   pos - tells you whether there is additional text above the top of the window, or below the bottom
-   line - is the character ‘L’ followed by the line number at point.
-   major - is the name of the major mode used in the buffer.
-   minor - a list of some of the enabled minor modes
    -   ‘Def’-  means that a keyboard macro is currently being defined
    -   ‘Narrow’ means that the buffer being displayed has editing restricted to only a portion of its text


<a id="org2235384"></a>

# tabbar.el and tab-line-mode

<https://github.com/ajrosen/tab-bar-buffers>

tab-bar showed in each frame


<a id="orgd1a5d0a"></a>

## tab-line-mode

showed in each window

    (setq tab-line-close-button-show nil)
    (tab-line-tab-name-truncated-max 15)

(defvar tab-line-tabs-buffer-list-function #'tab-line-tabs-buffer-list


<a id="org38a4e28"></a>

# modes

-   C-h m will reveal major mode and all minor modes that are active.
-   C-h v major-mode RET
-   M-: major-mode RET

to disable global mode:
M-x customize-option mouse-wheel-mode ; set to nil

(call-interactively mode) - will switch off mode if mode is on


<a id="orgf0ed1a7"></a>

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


<a id="orge88b5be"></a>

## minor modes

see [15.3.6.1](#org3613755)


<a id="org629bb28"></a>

# completion

by default:

-   TAB completion-at-point
-   C-M-i  complete-symbol


<a id="org911af7b"></a>

## links

-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Completion-in-Buffers.html>
-   <https://oremacs.com/2017/10/04/completion-at-point/>
-   <https://github.com/oantolin/live-completions>

icomplete


<a id="org12b8015"></a>

# code extension


<a id="orgcc3b321"></a>

## hooks

(add-hook), (setq)

-   is a Lisp variable which holds a list of functions
-   You can set a hook variable with setq like any other Lisp variable, but the recommended way to add a function with
    add-hook
-   two types:  normal hooks
    -   Every variable whose name ends in ‘-hook’ is a normal hook.
    -   abnormal hooks -  names end in ‘-functions’, instead of ‘-hook’
-   Major mode hooks also apply to other major modes derived from the original mode
-   M-x eval-last-sexp RET - to test

C-u C-h a run-hook
C-h i g (elisp)Running Hooks

Listing all the Mode Hooks: M-x apropos-variable RET -mode-hook$ RET


<a id="org4aa901b"></a>

### eval-after-load vs. mode hook vs require vs after-init-hook

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

after-init-hook

after-init-hook

-   the so-to-say brute-force approach to setting up customizations for packages.


<a id="orge73d2d0"></a>

### ex

-   function (add-hook 'text-mode-hook 'auto-fill-mode)
-   lambda (add-hook 'latex-mode-hook (lambda () (auto-fill-mode -1))) ;; disable mods

    (add-hook 'python-mode-hook
              (lambda ()
                (setq python-indent-offset 2)))
    
    ;; another example
    (defun mp-add-python-keys ()
      (local-set-key (kbd "C-c q") 'shell))
    
    (add-hook 'python-mode-hook #'mp-add-python-keys)


<a id="org97258cd"></a>

### hooks emacs

-   kill-emacs-hook runs just before exiting Emacs
-   text-mode-hook -  Text mode and other modes based on Text mode


<a id="org5292981"></a>

## advices

lets you add to the existing definition of a function,

-   defadvice - old
-   advice-add/advice-remove

    add-function where place function &optional props
    remove-function place function


<a id="orgebe9761"></a>

### place

-   :before - Both functions receive the same arguments
-   :after
-   :override - replace original
-   :around - Call function instead of the old function. (lambda (&rest r) (apply function oldfun r))
-   :before-while - Call function before the old function and don’t call the old function if function returns nil
-   :before-until
-   :after-while
-   :after-until - Call function after the old function and only if the old function returned nil.
-   :filter-args - Call function first and use the result (which should be a list) as the new arguments to pass to the old function.
-   :filter-return - Call the old function first and pass the result to function.


<a id="org3295a36"></a>

### old magic

    ; Suppress "Beginning of buffer" and "End of buffer" messages
    (defadvice previous-line (around silencer activate)
      (condition-case nil
        ad-do-it
        ((beginning-of-buffer))))
    
    (defadvice next-line (around silencer activate)
      (condition-case nil
        ad-do-it
        ((end-of-buffer))))


<a id="orgf9ee909"></a>

### ex

    ;; 1
    (defun my-double (x)
      (* x 2))
    (defun my-increase (x)
      (+ x 1))
    (advice-add 'my-double :filter-return #'my-increase)
    
    ;; 2
    (defun my-tracing-function (proc string)
      (message "Proc %S received %S" proc string))
    
    (add-function :before (process-filter proc) #'my-tracing-function)
    
    ;; 3
    (defun his-tracing-function (orig-fun &rest args)
      (message "display-buffer called with args %S" args)
      (let ((res (apply orig-fun args)))
        (message "display-buffer returned %S" res)
        res))
    
    (advice-add 'display-buffer :around #'his-tracing-function)
    
    ;; 4 replace
    (advice-add 'artist-no-rb-set-point2 :override #'(lambda (x y) (setq inhibit-message t)) )


<a id="orgd02a0cf"></a>

### links

-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Advising-Functions.html>
-   <https://www.emacswiki.org/emacs/Advice>
-   <https://www.emacswiki.org/emacs/AdvisingFunctions>


<a id="orgae1116d"></a>

## TODO defun redefine


<a id="org7da79db"></a>

# isearch

allow delete character in minibuffer:

    (define-key isearch-mode-map "\C-h" 'isearch-delete-char) ;; delete character during search C-s

allow to edit search (code is not perfect):

    (setq search-exit-option 'edit)


<a id="org4af0263"></a>

## keys

Enter at empty line execute "Nonincremental search"

-   M-c	Toggle search case-sensitivity.
-   C-w	appends more words from text to the search string.
-   M-r	Toggle between regular-expression searching and literal-string searching.
-   M-e	 Pause to edit the search string. Searching is disabled until you explicitly resume it with ‘C-j’ (or ‘C-s’ or
    ‘C-r’). reset search.


<a id="org9008e83"></a>

## isearch.el - execution path for isearch-forward

-   isearch-mode forward &optional regexp op-fun recursive-edit regexp-function
    -   forward = t
    -   regexp = nil
    -   op-fun = nil


<a id="orgbf388b8"></a>

## search-exit-option edit

    (setq search-exit-option 'edit)

when you type new key isearch hook it with 'pre-command-hook = isearch-pre-command-hook

-   isearch-edit-string
-   with-isearch-suspended
-   save variables like 'isearch-string'
-   (isearch-done t t) - terminate isearching until editing is done
-   (isearch-mode &#x2026;) -  Always resume isearching by restarting it
-   (setq isearch-string isearch-new-string) - Copy new local values to isearch globals
-   (isearch-post-command-hook) -> isearch-search-and-update


<a id="org7192bc4"></a>

## template for search:

    ;; - - - replace org-goto (header search) with native C-M-s
    (defun my/org-header-search ()
      (if isearch-regexp
          (progn
            (setq isearch-case-fold-search 1)   ; make searches case insensitive
            (setq case-fold-search 1)   ; make searches case insensitive
            (isearch-push-state)
            (setq string "^*.*")
            (isearch-process-search-string
             string (mapconcat 'isearch-text-char-description string ""))
            )
        )
      )
    ;; (isearch-forward-regexp)
    (add-hook 'isearch-mode-hook 'my/org-header-search)


<a id="org5d0b022"></a>

# history

M-x view-lossage - keys (F1 l)

-   26.1 - concurrency.


<a id="org9d00481"></a>

# Easy Customization Interface

-   interactive system for altering Emacs settings
-   Customize can also interactively change settings for all installed packages
-   All of those values are stored together in a single variable called custom-set-variables
-   M-x customize RET, or
-   M-x customize-group RET <group name> RET - jump you directly into the customization settings for a particular area,
    which is usually the name of a package itself


<a id="org230da66"></a>

## Theme

global:

-   F10 -> 'options' -> 'customize emacs' -> 'custom-themes'.


<a id="org5fc43b1"></a>

## custom-set-variables per mode

    (deftheme my-notmuch-theme
        " fix display help-echo link at cursor over link
       (custom-set-variables '(help-at-pt-display-when-idle t nil (help-at-pt))) ")
      (custom-theme-set-variables
       'my-notmuch-theme
       '(help-at-pt-display-when-idle t nil (help-at-pt)))
      (provide-theme 'my-notmuch-theme)
    
    
      (defun my/notmuch-show-hook ()
        (enable-theme 'my-notmuch-theme)
      )
    
      ;; (add-hook 'notmuch-search-hook 'my/notmuch-hook)
      (add-hook 'notmuch-show-hook 'my/notmuch-show-hook)


<a id="orga0cf38b"></a>

# wrap lines

ways to handle long lines("Line Wrap"):

-   Hard-Wrap Lines
    -   M-q fill-paragraph
    -   auto-fill-mode - automatic M-q - insert a line ending after the last word that occurs before the value of option
        ‘fill-column’ (a column number).
    -   refill-mode - it hits M-q automatically after changes to the buffer that might normally trigger auto-filling
-   Soft-Wrap
    -   visual-line-mode (built-in)
    -   "default wrapping" without toggle-truncate-lines - same as visual-line-mode
    -   visual-fill-column-mode (external package)

hard-wrad cons:

-   doesn't perform well across multiple zoom levels
-   may not fill well during exporting

hard-wrad pros:

-   you don't rely on automatic wrapping
-   beauty is in your hands


<a id="org895a85f"></a>

## fill-paragraph

M-q

fill-prefix variable control indentation of paragraph

    (add-hook 'text-mode-hook (lambda () (setq-local fill-prefix " ")))

visual-line-mode - don't have “fill-prefix”


<a id="orgbe2a3ab"></a>

## org-fill-paragraph


<a id="orga069900"></a>

## fill column

<https://www.gnu.org/software/emacs/manual/html_node/emacs/Fill-Commands.html>
<https://www.gnu.org/software/emacs/manual/html_node/emacs/Displaying-Boundaries.html>

C-x f    Set the fill column

minor modes:

-   M-x display-fill-column-indicator-mode locally
-   M-x global-display-fill-column-indicator-mode globally


<a id="org27d7e7e"></a>

# Dvorak

C-x RET C-\\ english-dvorak RET


<a id="orge162686"></a>

# fonts

-   at character : Ctrl+u Ctrl+x =
-   chinese: fonts-noto-cjk

<https://gist.github.com/coldnew/7398845>
<https://gist.github.com/nukr/420fe13645900a1840ac>


<a id="org2e9e591"></a>

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


<a id="orge6e2e64"></a>

# backup

~backup<sub>file</sub> - Single or Numbered Backups
\#file# - autosave every 300 characters or 30 seconds of idleness. auto save

Created file~ only the first time the file is saved from a buffer

-   diff-backup - see difference with file~

M-x recover-file <RET> foo.c <RET>
yes <RET>
C-x C-s

M-x recover-session - to recover if crash


<a id="org6e9dc96"></a>

## vc-backup

a VC backend that uses "Emacs backup files" for single-file version control.

-   <https://git.sr.ht/~pkal/vc-backup>


<a id="org77dc086"></a>

## autosave

Сохранять #файлы# автосохранения в (setq auto-save-file-name-transforms   \`((".\*"
   "~/.emacs-saves/" t)))

auto-save-default default is t
config:

-   auto-save-interval, default 300 - specifies how many characters there are between auto-saves
-   auto-save-timeout, default 30 seconds


<a id="org4c26cdc"></a>

### links

-   \#file# auto save <https://www.gnu.org/software/emacs/manual/html_node/emacs/Auto-Save.html#Auto-Save>
-   auto saving <https://www.gnu.org/software/emacs/manual/html_node/elisp/Auto_002dSaving.html>


<a id="orgab2733f"></a>

## links

<https://www.gnu.org/software/emacs/manual/html_node/emacs/Backup.html>


<a id="org13ae2ef"></a>

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


<a id="org3fb92e2"></a>

# Narrowing

-   C-x n n 	narrow-to-region	Narrow down to between point and mark.
-   C-x n e	narrow-to-element
-   C-x n s	narrow-to-subtree	in Org mode
-   C-x n w	widen			Widen to make the entire buffer accessible again
-   C-x n p	narrow-to-page
-   C-x n d	narrow-to-defun


<a id="orgf477c57"></a>

## pages

-   C-q C-l	insert ^L  - page delimiter
-   M-x 		what-page
-   C-x [	backward-page
-   C-x ]	forward-page
-   C-x C-p	mark-page
-   C-x l	count-lines-page
-   C-x n p	narrow-to-page


<a id="org6fa0cd9"></a>

## Cursor Position Information

-   C-x = 	Display the character code of character after point, character position of point, and column of point
-   M-x 		what-line
-   M-=		count-words-region
-   M-x 		hl-line-mode - Enable or disable highlighting of the current line


<a id="orgcd36502"></a>

# Programming


<a id="org5ce076a"></a>

## emacs-lisp-mode

-   C-M-x		eval-defun - at any postion
-   C-x C-e	eval-last-sexp - only after line

-   M-x eval-region
-   M-x eval-buffer

-   F1 e	message buffer
-   F1 f	describe function
-   F1 v  describe global variable
-   C-M-v/C-M-S-v		scroll another window


<a id="orge2f8647"></a>

## IDE Theory

-   highlight syntax
-   indentation suggestion.
-   find includes
-   find where used
-   open documentation/description
-   edit all occurences


<a id="orgc0719fb"></a>

## Project management - project.el (dired + bookmarks can replace this)

-   <https://www.emacswiki.org/emacs/CategoryProject>
-   <https://www.gnu.org/software/emacs/manual/html_node/emacs/Projects.html>

-   M-x speedbar	fast navigate between files

Emacs currently supports two back-ends:

-   VC-aware (see Version Control), whereby a VCS repository is considered a project
-   EDE (see Emacs Development Environment).

known

-   (defcustom project-list-file "~/.emacs.d/projects) - list of known projects


<a id="orgf247f53"></a>

### project.el

-   C-x p p	(project-switch-project). Run an Emacs command for another project
-   C-x p f	project-find-file Visit a file (with completion) in the current project.
-   C-x p g	project-find-regexp Find all matches for REGEXP in the current project's roots.
-   M-x project-search Interactively search for regexp matches in all files that belong to the current project.
-   C-x p r	(project-query-replace-regexp) Perform query-replace for a regexp in all files that belong to the current project.
-   project-or-external-find-regexp "Find all matches for REGEXP in the project roots or external roots.
-   project-find-dir Start Dired in a directory inside the current project.
-   C-x p d	project-dired Start Dired in the current project's root.
-   C-x p v	project-vc-dir Run VC-Dir in the current project's root.
-   project-search Search for REGEXP in all the files of the project. Stops when a match is found.
-   C-x p c	(project-compile) Run compilation in the current project’s root directory.

shell

-   C-x p s	project-shell Start an inferior shell in the current project's root directory.
-   C-x p e	project-eshell
-   C-x p &	project-async-shell-command
-   C-x p !	project-shell-command

buffers

-   project-switch-to-buffer Switch to another buffer belonging to the current project
-   project-list-buffers List the project buffers
-   project-kill-buffers Kill all live buffers that belong to the current project


<a id="org4d460bd"></a>

### EDE - built-in

Support Make and Automake


<a id="org4ed4a62"></a>

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

1.  features

    -   jump to a file in project
    -   jump to a project buffer
    -   jump to a test in project
    -   toggle between files with same names but different extensions (e.g. .h <-> .c/.cpp, Gemfile <-> Gemfile.lock)
    -   toggle between code and its test (e.g. main.service.js <-> main.service.spec.js)
    -   jump to recently visited files in the project
    -   switch between projects you have worked on
    -   kill (close) all project buffers
    -   grep (search) in project
    -   replace in project
    -   find references in project (using xref internally)
    -   run shell commands in a project (e.g. make, lein)
    -   support for multiple minibuffer completion/selection libraries (ido, ivy, helm and the default completion system)
    -   automatic project discovery (see projectile-project-search-path)
    -   integration with the built-in project.el library

2.  install

    M-x package-install [RET] projectile [RET]
    
    (require 'projectile)
    (with-eval-after-load 'projectile
      (projectile-mode +1)
      ;; Recommended keymap prefix on Windows/Linux
      (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
    )


<a id="orgef50336"></a>

### VC - built-in

-   VC-aware back-end doesn’t consider “ignored” files
-   considers “untracked” files by default. (project-vc-include-untracked)


<a id="org7225900"></a>

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

indentation кол-во пробелов:
tab-width (default 8)

-   F1 e	messages
-   C-x d	dired
-   C-x C-e	debugging

C-x TAB		indentation mode with arrows.

M-x toggle-truncate-lines	Disable lines wrap


<a id="org00e0fc2"></a>

### balanced expressions (NavigatingParentheses)

Navigation

-   C-M-d/k	down/up-list
-   C-M-n/p	forward/backward-list  Move forward over a parenthetical group

-   C-M-f	forward-sexp Move up
-   C-M-b	backward-sexp  Move down

-   C-M-k	kill-sexp  Kill balanced expression forward
-   C-M-SPC	mark-sexp  select balanced expression forward


<a id="org315678a"></a>

### copy in terminal

Ctrl+W: Cut the word before the cursor
Ctrl+K: Cut after the cursor
Ctrl+U: Cut before the cursor


<a id="org7a9eb20"></a>

### Looking Up Identifiers (xref)

-   M-.		go to definition
-   C-x 4 . RET	Find definitions of identifier, but display it in another window
-   C-x 5 . RET	Find definition of identifier, and display it in a new frame
-   M-,		Go back to where you previously invoked M-. and friends
-   C-M-. pattern Find all identifiers whose name matches pattern


<a id="orgca29bd6"></a>

## Perl

M+x cperl-mode
help C-h f cperl-mode


<a id="org96cd743"></a>

## TODO company-mode

<https://www.monolune.com/configuring-company-mode-in-emacs/>
<https://readingworldmagazine.com/emacs/2020-07-27-emacs-company-mode/>
<https://readingworldmagazine.com/emacs/2021-09-01-emacs-company-continued-first-thing-to-do-when-developing-with-emacs/>

-   company
-   company-jedi  - company-mode completion back-end for Python JED

-   emacs completion framework It comes with several back-ends: Elisp, Clang, Semantic, Ispell, CMake, BBDB,

Yasnippet, Dabbrev, Etags, Gtags, Files, Keywords

-   Not Python


<a id="org900146b"></a>

## Python

-   <https://www.emacswiki.org/emacs/PythonProgrammingInEmacs>
-   TODO: <https://realpython.com/emacs-the-best-python-editor/>

pip jedi - Python JEDI lib - autocompletion, static analysis and refactoring library for Python

pappasam/jedi-language-server - LSP server for jedi

plugins

-   elpy - big
-   jedi - big
-   Eglot - part of Emacs since 2.9
-   lsp-mode - not part of Emacs

completion by itself

-   CompanyMode  - become more popular
-   AutoComplete

auto-completion for Python

-   direct connection to Jedi: <https://github.com/tkf/emacs-jedi>
-   language servers for Jedi:
    -   <https://github.com/fredcamps/lsp-jedi>
        -   <https://github.com/pappasam/jedi-language-server>
            -   poetry and binary huge amount of dependencies
    -   <https://github.com/palantir/python-language-server>
        -   idk where is Emacs interface and how to install from sources

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


<a id="orgc374f0c"></a>

### jedi - static analysis tool for Python

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
    -   pip install &#x2013;no-cache-dir &#x2013;use-pep517 &#x2013;no-binary=:all: &#x2013;require-hashes &#x2013;user -r requirements.txt

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

5.  troubleshooting

    deferred error : (wrong-type-argument epc:manager nil)
    
    -   solution: comment # import pkg<sub>resources</sub> in ~/.emacs.d/contrib/lisp/emacs-jedi/jediepcserver.py


<a id="orgbadd4e2"></a>

### TODO lsp-pyright vs pyright - type checking


<a id="orgfd2e088"></a>

### TODO elpy+pyright+eglot


<a id="org66bd4a4"></a>

### Eglot

1.  what is that?

    Distributed with GNU Emacs since Emacs
    
    -   version 29.1
    
    for jedi require jedi-language-server
    
    code <https://github.com/joaotavora/eglot>

2.  features

    -   At-point documentation, integrated with ElDoc. If MarkdownMode is installed, the documentation formatting will be improved.
    -   On-the-fly diagnostics and suggested fixes via FlyMake
    -   Finding definitions and uses of symbols via InfoXref
    -   In-buffer navigation via ImenuMode
    -   Improved completion via ‘completion-at-point’
    -   Automatic reformatting of code as you type
    -   Enhanced third-party tools: Boost capabilities of packages like CompanyMode and Yasnippet

3.  jedi

    jedi is not LSP it is Python library <https://jedi.readthedocs.io/en/latest/docs/installation.html>
    
    Used inside LSP servers :
    
    -   jedi-language-server
    -   python-language-server (currently unmaintained)
    -   python-lsp-server (fork from python-language-server)
    -   anakin-language-server

4.  pylsp

    -   <https://packages.gentoo.org/packages/dev-python/python-lsp-server>
    -   <https://github.com/python-lsp/python-lsp-server/>
    -   <https://joaotavora.github.io>
    
        pip3 install "python-lsp-server[all]" --user
    
    -   eglot-server-programs
    -   eglot-workspace-configuration
    
        ;; -- one server
        (with-eval-after-load 'eglot
          (add-to-list 'eglot-server-programs
                       '(foo-mode . ("fools" "--stdio"))))
        ;; -- two servers
        (with-eval-after-load 'eglot
          (add-to-list 'eglot-server-programs
                       `(foo-mode . ,(eglot-alternatives
                                       '(("fools" "--stdio")
                                         ("phewls" "--fast"))))))
    
    1.  server configuration
    
        two ways
        
        1.  per directory-project: .dir-locals.el or  dir-locals-set-class-variables:  (:server1 plist1 :server2 plist2 …)
        2.  eglot-workspace-configuration
        
        config values:
        
        -   true -> t
        -   false -> :json-false
        -   null -> nil
        -   {} -> eglot-{}
        
        (1) .dir-locals.el
        
            ((nil
              . ((eglot-workspace-configuration
                  . (:pylsp (:plugins (:jedi_completion (:include_params t
                                                         :fuzzy t)
                                       :pylint (:enabled :json-false)))
                     :gopls (:usePlaceholders t)))))
             (python-base-mode . ((indent-tabs-mode . nil)))
             (go-mode          . ((indent-tabs-mode . t))))
        
        (2) eglot-workspace-configuration - minimal
        
            (setq-default eglot-workspace-configuration
                          '(:pylsp (:plugins (:jedi_completion (:include_params t
                                                                :fuzzy t)
                                              :pylint (:enabled :json-false)))
                            :gopls (:usePlaceholders t)))
        
        (add-hook 'foo-mode-hook 'eglot-ensure)
        
        M-x eglot-shutdown.
        
        all Pylsp options: <https://github.com/palantir/python-language-server/blob/develop/vscode-client/package.json>
        
        <https://www.gnu.org/software//emacs/manual/html_node/eglot/Project_002dspecific-configuration.html>
    
    2.  server configuration advanced
    
            ((:pylsp . (:configurationSources ["flake8"]
                                         :plugins (
                                                   :pycodestyle (:enabled :json-false)
                                                   :mccabe (:enabled :json-false)
                                                   :pyflakes (:enabled :json-false)
                                                   :flake8 (:enabled :json-false
                                                            :maxLineLength 88)
                                                   :ruff (:enabled t
                                                          :lineLength 88)
                                                   :pydocstyle (:enabled t
                                                                :convention "numpy")
                                                   :yapf (:enabled :json-false)
                                                   :autopep8 (:enabled :json-false)
                                                   :black (:enabled t
                                                           :line_length 88
                                                           :cache_config t)))))))
        
        This command updates the language server configuration according to the
         current value of the variable **eglot-workspace-configuration**.
        
            M-x eglot-signal-didChangeConfiguration
    
    3.  server test
    
            ./.local/bin/pylsp --tcp -vvv
            curl -i -X POST   http://127.0.0.1:2087/lsp   -H 'Content-Type: application/json'   -d '{ "jsonrpc": "2.0", "method": "initialize", "params": { "capabilities": {} }, "id": 1}'
    
    4.  server run
    
        run in background, even if logout:
        
            nohup python3 .local/bin/pylsp -v --tcp &
    
    5.  mypy plugin
    
        -   git clone &#x2013;force &#x2013;depth=1 <https://github.com/python-lsp/pylsp-mypy>
        -   mv pylsp-mypy/pylsp<sub>mypy</sub> ~/.local/lib/python3.12/site-packages/pylsp<sub>mypy</sub>

5.  configuration

    -   (setq eglot-sync-connect 1) ; wait for connection
    -   (setq eglot-autoshutdown t) ; disconnect if all buffers closed
    
    1.  keys
    
            ("C-c C-d" . eldoc)
            ("C-c C-e" . eglot-rename)
            ("C-c C-o" . python-sort-imports)
            ("C-c C-f" . eglot-format-buffer)
        
        -   complete-at-point
        -   iMenu M-g i - a system that uses completing-read for jumping to major definitions or sections of a file.
        -   flymake-goto-next-error goes to previous error in the current buffer
        -   flymake-goto-prev-error goes to next error in the current buffer
        -   M-x company-complete to trigger completions manually
        -   M-x eldoc-doc-buffer to show docs for the symbol at point in a dedicated buffer
        
            ("C-c c a" . eglot-code-actions)
                       ("C-c c o" . eglot-code-actions-organize-imports)
                       ("C-c c r" . eglot-rename)
                       ("C-c c f" . eglot-format)
        
        default:
        
        -   M-. or M-x xref-find-definitions finds the definition of the symbol at point and opens it in the current window
        -   M-, or M-x xref-pop-marker-stack jumps back
        -   M-? or M-x xref-find-references finds the references of the symbol at point
    
    2.  links
    
        -   <https://www.adventuresinwhy.com/post/eglot/>
        -   <https://justinbarclay.ca/posts/from-zero-to-ide-with-emacs-and-lsp/>
        -   <https://whatacold.io/blog/2022-01-22-emacs-eglot-lsp/>
        -   <https://github.com/doomemacs/doomemacs/blob/master/modules/tools/lsp/%2Beglot.el>

6.  speed up

    <https://github.com/jdtsmith/eglot-booster>

7.  LLMs

    -   M-x eglot-code-actions
    -   M-x eglot-code-action-organize-imports
    -   M-x eglot-code-action-quickfix
    -   M-x eglot-code-action-extract
    -   M-x eglot-code-action-inline
    -   M-x eglot-code-action-rewrite

8.  troubleshooting

    -   M-x eglot-events-buffer
    -   M-x eglot-stderr-buffer
    -   M-x eglot-forget-pending-continuations
    -   

9.  links

    <https://www.gnu.org/software/emacs/manual/html_node/eglot/Eglot-and-LSP-Servers.html>


<a id="org536f036"></a>

### ElDoc - Programming Language Documentation Lookup

Is Buffer-local minor mode, but may be activated globally with variable global-eldoc-mode.

activate: `M-x eldoc-mode`

-   eldoc-echo-area-prefer-doc-buffer - where to show documentation by `eldoc-idle-delay`
    -   `t` - if ElDoc window exist, show there.
    -   `nil` - echo area ony. (the default)
    -   `maybe` - echo area if it is short
-   eldoc-documentation-strategy
    -   `eldoc-documentation-default` (default) - first only
    -   `eldoc-documentation-compose` - all
    -   `eldoc-documentation-compose-eagerly` - all eagerly
-   eldoc-idle-delay - 0.5 by default

To check if “eldoc doc buffer” exist:

    (get-buffer-window eldoc--doc-buffer t)

By default

-   show info at minibuffer after several second when cursor `eldoc-idle-delay`
-   eldoc and eldoc-print-current-symbol-info - show info in separate window.

post-command-hook -> eldoc-schedule-timer (Ensure \`eldoc-timer' is running.) -> eldoc-print-current-symbol-info -> eldoc&#x2013;invoke-strategy -> eldoc-documentation-strategy ->
 eldoc-documentation-default -> eldoc-documentation-functions -> elisp-eldoc-var-docstring, elisp-eldoc-funcall

Eglot:

-   post-command-hook -> eldoc-schedule-timer (Ensure \`eldoc-timer' is running.) -> eldoc-print-current-symbol-info ->
    eldoc&#x2013;invoke-strategy -> eldoc-documentation-compose

<https://www.gnu.org/software/emacs/manual/html_node/emacs/Programming-Language-Doc.html>


<a id="orgde08691"></a>

### company-jedi

requirements:
pip install sexpdata-0.0.3.tar.gz
pip install epc-0.0.5.tar.gz
pip install virtualenv-15.1.0.tar.gz

M-x jedi:install-server

jedi required 0.17.2

C-c ?  - get documentatio for object


<a id="org21fa8e0"></a>

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


<a id="org9c8ba4b"></a>

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


<a id="org6b1b4ae"></a>

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
kk)

1.  links

    <https://www.flycheck.org/en/latest/languages.html#python>


<a id="org05d1af5"></a>

### treesit tree-sitter

1.  USE=tree-sitter emerge &#x2013;ask app-editors/emacs
    -   M-: (treesit-available-p) RET should return t
2.  emerge &#x2013;ask dev-libs/tree-sitter-python # replace M-x treesit-install-language-grammar
    -   treesit-language-source-alist - list of sources in github
    -   M-: (treesit-language-available-p 'python) RET should return t
3.  python-ts-mode and python-mode - are different. To remap:
    -   (add-to-list 'major-mode-remap-alist '(python-mode . python-ts-mode))
    -   (setq major-mode-remap-alist '((c-mode . c-ts-mode) (yaml-mode . yaml-ts-mode) (bash-mode . bash-ts-mode)))

Notes:

-   get supported ts mode: C-h a -ts-mode

Before Tree-sitter, your beautiful source code was parsed using some sort of regex engine in most editors.

for:

-   syntax highlighting, code analysis, or incremental selection for example
-   code folding
-   selection around cursor
-   intelligence code snippets

out of Gentoo repository:

-   Dockerfile:
    -   <https://www.macktronics.com/install-ts-parsers-all.html>
    -   <https://github.com/casouri/tree-sitter-module/blob/master/build.sh>

Structural editing in Emacs. <https://karthinks.com/software/a-consistent-structural-editing-interface/>

1.  function

    tree-sitter-save-excursion


<a id="org7885c05"></a>

### LSP based configuration - theory

LSP - Language Server Protocol - a set of protocols (initially by VSCode)

-   for: "IDE features": autocomplete, jump to definition, Documentation, &#x2026;

well knewn:

-   Eglot - part of Emacs since 2.9
-   lsp-mode - not part of Emacs
    -   flycheck instead of flymake for on-the-fly diagnostics.
    -   projectile which is much more powerful and useful than the built in project.el.

Spyder extensions for the python language server <https://packages.gentoo.org/packages/dev-python/pyls-spyder>

-   document symbol searching and others.

<https://packages.gentoo.org/packages/dev-python/python-lsp-server>

-   depends on flake8 and pycodestyle, pylint, pyflakes

Eglot is written by a regular Emacs contributor and maintainer, and as a result is much higher quality code. lsp-mode is
 written by volunteers on Github without a lot of Emacs Lisp experience (it shows), the code is pretty bad at places,
 definitely over-engineered and I wouldn't recommend it.

python-lsp add-ons

-   pylsp-mypy
-   pylsp-rope
-   python-lsp-ruff

<https://andreyor.st/posts/2023-09-09-migrating-from-lsp-mode-to-eglot/>


<a id="org96832a0"></a>

### LSP - bridge, lsp-bridge

Eglot is Elisp therefore single-threaded

Source code <https://github.com/manateelazycat/lsp-bridge>

dependencies:

-   pip3 install epc orjson sexpdata six setuptools paramiko rapidfuzz
    -   emerge &#x2013;ask dev-python/orjson -  is optional
    -   emerge &#x2013;ask dev-python/six dev-python/paramiko
        -   (dev-python/orjson) : dev-util/maturin <https://www.maturin.rs/>
    -   epc <https://github.com/tkf/python-epc>
-   Elisp dependencies, disable?
    -   markdown-mode - lsp-bridge-markdown-lsp-server - nil
    -   yasnippet - acm-enable-yas nil
-   Local: emerge &#x2013;ask dev-python/python-lsp-server

python3 lsp-bridge/lsp<sub>bridge.py</sub>

Components:

-   Emacs - ACM, lsp-bridge
-   LSP Bridge(local): Elisp part, Python part
-   LSP Birdeg(remote): Python part, Elisp part (not used)
-   remote - language server, remote search backend


<a id="org0fb7409"></a>

### Debugger - M-x pdb

GUD (Grand Unified Debugger)

1.  keys

    key prefixes:
    
    -   “C-c” - GUD interaction buffer, global binding.
    -   "C-x C-a” - “gud-key-prefix” <file:///usr/share/emacs/29.4/lisp/progmodes/gud.el>
    
    gud-global-map
    
    -   C-b gud-break	"break %d%f:%l"  "Set breakpoint at current line.")
    -   C-t tbreak
    -   C-d gud-remove	"clear %d%f:%l"  "Remove breakpoint at current line")
    -   C-s gud-step		"step"         "Step one source line with display.")
    -   C-n gud-next		"next"         "Step one line (skip functions).")
    -   C-r gud-cont		"continue"     "Continue with display.")
    -   C-f gud-finish	"return"       "Finish executing current function.")
    -   <   gud-up		"up"           "Up one stack frame.")
    -   >   gud-down		"down"         "Down one stack frame.")
    -   C-p gud-print	"p %e"         "Evaluate Python expression at point.")
    -   C-e gud-statement	"!%e"      "Execute Python statement at point.")
    
    gud-pdb-repeat-map
    
    -   ("n" . gud-next)
    -   ("s" . gud-step)
    -   ("c" . gud-cont)
    -   ("l" . gud-refresh)
    -   ("f" . gud-finish)
    -   ("<" . gud-up)
    -   (">" . gud-down))
    
    pdb keys:
    M-n		comint-next-input
    M-p		comint-previous-input
    M-r		comint-history-isearch-backward-regexp
    C-c M-o	comint-clear-buffer
    C-M-l 		comint-show-output
    
    see <python>


<a id="orgc213ab9"></a>

## TODO C/C++

-   CC Mode <https://www.gnu.org/software/emacs/manual/html_node/ccmode/index.html>
-   CEDET <https://alexott.net/ru/writings/emacs-devenv/EmacsCedet.html>
-   <https://nilsdeppe.com/posts/emacs-c++-ide2>
-   <https://www.youtube.com/watch?v=5FQwQ0QWBTU>
-   rtags irony flycheck <https://martinsosic.com/development/emacs/2017/12/09/emacs-cpp-ide.html>
-   GGTAGS CDET SEMANTIC EDE <http://tuhdo.github.io/c-ide.html>
-   cwarn - build in
-   ggtags <https://wikemacs.org/wiki/C-ide>

CC Mode

-   C - c-mode
-   C++ - c++-mode
-   Objective-C - objc-mode
-   Java - java-mode
-   CORBA IDL (and the variants PSDL and CIDL) - idl-mode
-   Pike - pike-mode
-   AWK code - awk-mode

Basic of config : <https://www.gnu.org/software/emacs/manual/html_node/ccmode/Config-Basics.html>


<a id="org616ce42"></a>

### indentation

**style** is indentation style

Styles: <file:///usr/share/emacs/29.2/lisp/progmodes/cc-styles.el>

Get current style

    (print c-indentation-style)


<a id="org86396a7"></a>

## TypeScript

**typescript-mode** is not developed and on a halt, **typescript-ts-mode** is current supported mode.


<a id="org170a34d"></a>

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


<a id="org60652d2"></a>

## Ctags or tagging system

people usually use ctags to do two things

-   Code navigation
-   Auto-complete/IntelliSense


<a id="orgbac6871"></a>

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


<a id="org6897556"></a>

### GNU etags, ctags - generate tag file for Emacs, vi

-   part of GNU Emacs - The Emacs distribution includes etags, a command for tagging identifier definitions in programs
-   create tag table (defaults file names: TAGS for etags, tags for ctags)
-   The etags format understood by emacs(1);
-   the ctags format understood by vi(1).
-   key bindings for tag navigation were mostly given to Xref (see [38.11.3](#org4615eb2)), Some major modes provide built-in means for
    looking up the language symbols.
-   Semantic package provides another way to generate and use tags, separate from the etags facility.
-   The Ebrowse facility is similar to etags but specifically tailored for C++.

create a tags **table file**:

    find . -name "*.[chCH]" -print | etags -

-   Emacs has at any time at most one selected tags table
    -   M-x visit-tags-table RET / RET
    -   (setq tags-table-list '("~/.emacs.d" "/usr/local/lib/emacs/src"))
    -   Do not set both **tags-file-name** and **tags-table-list**.

to enable table:

-   M-x visit-tags-table RET / RET

simple approach:

-   (require 'etags-select)
-   (require 'etags-table)
-   (global-set-key "\M-." 'etags-select-find-tag)


<a id="orgf07e89e"></a>

### emacs Xref <a id="org4615eb2"></a>

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

3.  links

    -   <https://www.emacswiki.org/emacs/EmacsTags>


<a id="orga0d887f"></a>

### rtags

based on LLVM/Clang

executables

-   rdm - server application, and monitors all your indexed files for changes, and reindexes
    -   rp - used by rdm, when a source file or one of its dependencies is modified
    -   rc -  needs specific information about how your sources are compiled to be able to properly index them
    -   ~/.rdmrc -  to start rdm with specific options


<a id="orgb996ce1"></a>

### just search for string alternative

<http://xahlee.info/emacs/emacs/emacs_grep_find.html>
<http://xahlee.info/comp/ctags_etags_gtags.html>


<a id="orgd949235"></a>

### Effeciency:

-   <http://blog.binchen.org/posts/how-to-use-ctags-in-emacs-effectively-3.html>


<a id="org6e5f5c9"></a>

### links

<https://www.gnu.org/software/emacs/manual/html_node/emacs/Create-Tags-Table.html>
<https://www.emacswiki.org/emacs/BuildTags>
<https://en.wikipedia.org/wiki/Ctags>
<http://blog.binchen.org/posts/how-to-manage-and-use-tags-file-of-third-party-libraries-in-emacs.html>
<https://smanist.github.io/2018/01/17/Emacs-for-Python-Cpp/>
comparision <https://github.com/oracle/opengrok/wiki/Comparison-with-Similar-Tools>


<a id="org005ced3"></a>

## Flymake vs Flycheck

-   Flymake is build-in

Flycheck uses backend check program <https://www.flycheck.org/en/latest/languages.html#flycheck-languages>


<a id="org8f1130b"></a>

## semantic

-   integrated with etags
-   build in
-   supported tools are GNU Global, GNU Idutils, CScope, and Grep (the fallback method). For best results, use GNU Global.

usage:

-   right mouse button
-   C-c , j	semantic-complete-jump-local  defined in the current file
-   C-c , J	semantic-complete-jump  defined in any file Emacs has parsed, and move point there
-   C-c , SPC	Display a list of possible completions for the symbol at point (semantic-complete-analyze-inline)
-   C-c , l	Display a list of the possible completions of the symbol at point, in another window

(semantic-add-system-include "/usr/include/boost" 'c++-mode)
(semantic-add-system-include "~/linux/kernel")
(semantic-add-system-include "~/linux/include")


<a id="org4ba8172"></a>

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


<a id="org6de0b6d"></a>

## autoformat

-   M-q fill-paragraph

You can control such indentation using options lisp-indent-offset and lisp-body-indent, option lisp-indent-function, or symbol property lisp-indent-function. One possible value for option lisp-indent-function is the value of common-lisp-indent-function.
<http://www.gnu.org/software/emacs/manual/html_node/emacs/Lisp-Indent.html>
<http://www.gnu.org/software/emacs/manual/html_node/emacs/Program-Indent.html>


<a id="org8c26e85"></a>

## SQL mode

M-x sql-sqlite


<a id="orgae6011e"></a>

## SQL in org:

SQL mode is used to edit SQLite source code blocks.

two variants: sql and sqlite

there is package in MELPA: ob-sql-mode - SQL code blocks evaluated by sql-mode

sql-mode


<a id="orgca52102"></a>

### sqlite

sqlite3 to evaluate SQL statements

ob-sqlite.el used, must be part of emacs

    (org-babel-do-load-languages
     'org-babel-load-languages (quote ((emacs-lisp . t)
                                        (sqlite . t)
                                        (sql . t)
                                        (R . t)
                                        (python . t))))

    create table greeting(one varchar(10), two varchar(10));
    insert into greeting values('Hello', 'world!');
    select * from greeting;


<a id="org9e33c37"></a>

### PGmacs - posgresql interface

support some others databases

-   TLS support
-   save the contents of a table in CSV or JSON format.

<https://github.com/emarsden/pgmacs>


<a id="org78afc77"></a>

### links

<https://orgmode.org/worg/org-contrib/babel/languages/ob-doc-sql.html>
<https://orgmode.org/worg/org-contrib/babel/languages/ob-doc-sqlite.html>


<a id="orgace1aae"></a>

## yaml

-   (yaml . t) ;; llhotka/ob-yaml
-   flymake-yamllint ;; require dev-util/yamllint (based on python dev-python/pyyaml
-   flymake-yaml ;; require Psych or Syck (Ruby 1.8/1.9 standard library) dev-ruby/psych and flymake-easy emacs package.

flymake-goto-next-error’ and ‘flymake-goto-prev-error

1.  flymake-yamllint

        (add-hook 'yaml-mode-hook 'flymake-yamllint-setup)
        
        (add-hook 'yaml-mode-hook (lambda ()
                                    (local-set-key "\C-c\C-n" 'flymake-goto-next-error)
                                    (local-set-key "\C-c\C-k" 'flymake-goto-next-error)
                                    ))

2.  serialize with PyYAML

    dev-python/pyyaml
    
        aa:
          - b
          - 'c"as"c'
        
        ---
        s: asd
    
        import yaml
        for data in yaml.load_all("""
        aa:
          - b
          - 'c"as"c'
        
        ---
        s: asd""", yaml.SafeLoader):
            print(data)
    
        {'aa': ['b', 'c"as"c']}
        {'s': 'asd'}


<a id="org8f1ba17"></a>

## minimap packages

Minimap is a window with small font that allow to get overview of code

-   **demap** - don't compatible with Org and outlines
-   **minimap** - slow
    -   minimap-minimum-width - default 30 -> 20
    -   minimap-display-semantic-overlays t -> nil
-   **sublimity** - strange behaviour <https://github.com/zk-phi/sublimity>


<a id="orgbf808e7"></a>

## ELisp mode


<a id="org0a03815"></a>

### navigation: list and sexp

-   info "(emacs) Expressions"
-   info "(emacs) Moving by Parens"

“balanced expression” - language specific expressions

-   C-M-f/b	forward-sexp
-   C-M-k	kill-sexp

parentheses - “list“ in syntax table

-   C-M-n/p	forward-list
-   C-M-u/d	up/down-list

They are the same, just forward-sexp are more customizable.

1.  go to begining of next sexp, not the end.

    To make this we modify forward-sexp-function that will replace forward-sexp and backward-sexp behaviour.
    
    Useful to ignore comments during navigation:
    
        (setq parse-sexp-ignore-comments t)
    
        (defun my/forward-sexp (arg)
               ;; (print arg)
               (let ((ar2 (if (> arg 0)
                              1
                              ;; else
                              -1)))
                    (goto-char (or (scan-sexps (point) ar2) (buffer-end ar2)))
                    (if (= arg 1) ; called without C-u
                        (progn ; go to begining of next sexp
                         (if (goto-char (scan-sexps (point) ar2))
                             (goto-char (scan-sexps (point) -1))
                             (goto-char (buffer-end arg)))
                        ;; else - for backward only
                        (backward-prefix-chars)))))
        
        (setq forward-sexp-function 'my/forward-sexp))


<a id="org8648a5d"></a>

### links

-   <https://www.emacswiki.org/emacs/EmacsLispMode>
-   <https://github.com/susam/emacs4cl> - tiny .emacs file to set up Emacs quickly
-   <https://caiorss.github.io/Emacs-Elisp-Programming/Emacs_Key_Bindings_Elisp.html>
-   single letter templates <http://xahlee.info/emacs/emacs/xah-elisp-mode.html>
-   IDE for Elisp <https://lisplima.github.io/cl-cookbook/chapters/emacs-ide.html>


<a id="org7c3d9f8"></a>

## links

-   <https://justinbarclay.ca/posts/from-zero-to-ide-with-emacs-and-lsp/>


<a id="org6dfbbf8"></a>

# completion

-   corfu <https://elpa.gnu.org/packages/corfu.html>
-   company
-   <https://github.com/minad/vertico>
-   Icicles
-   IDO mechanism (part of default Emacs) for minibuffer completion
-   article TODO: <https://thanosapollo.org/posts/emacs-built-in-completions-video/>

Most basic: (complete-at-point) that called from [16](#org737f1ca) bound to TAB.

-   utilize completion-at-point-functions, by default bound to etags.
-   many major modes add own functions to (add-hook 'completion-at-point-functions


<a id="orgc207ad9"></a>

# spell checking


<a id="orgc4d4131"></a>

## aspell

-   emerge app-text/aspell - English and flycheck-aspell Emacs package
-   C-M-i   Complete the word before point based on the spelling dictionary (ispell-complete-word).
-   M-x ispell-change-dictionary RET dict RET

USE="l10n<sub>en</sub> l10n<sub>ru</sub>" emerge app-text/aspell


<a id="orgb00c37e"></a>

## flyspell (not used)

    aspell dicts # available dictionaries

    (add-to-list 'ispell-skip-region-alist '(":\\(PROPERTIES\\|LOGBOOK\\):" . ":END:"))
    (add-to-list 'ispell-skip-region-alist '("#\\+BEGIN_SRC" . "#\\+END_SRC"))
    (require 'flyspell)
    (add-hook 'text-mode-hook 'flyspell-mode)
    (add-hook 'org-mode-hook 'flyspell-mode)
    (define-key flyspell-mode-map (kbd "C-.") 'helm-flyspell-correct)
    (setq-default ispell-program-name "aspell")


<a id="org98b739c"></a>

## TODO hunspell

-   emerge app-text/hunspell

link <https://hunspell.github.io/>


<a id="org641c14c"></a>

## guess-language

<https://github.com/tmalsburg/guess-language.el>


<a id="org45cd136"></a>

## links

-   <https://emacs.readthedocs.io/en/latest/writing_in_emacs.html>
-   <https://www.gnu.org/software/emacs/manual/html_node/emacs/Spelling.html>
-   english writign mode <https://github.com/bnbeckwith/writegood-mode>


<a id="org6e145e7"></a>

# Math symbols


<a id="org7a4073c"></a>

## xah-math-input

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


<a id="org0e85c60"></a>

## company-math

Start math completion by typing the prefix \\ key.

-   math latex tags	company-math-symbols-latex
-   math unicode symbols	company-math-symbols-unicode
-   latex commands	company-latex-commands


<a id="org235719c"></a>

# Terminal, shell

emacs -g '80x24' &#x2013;eval '(term "/bin/bash")'

M-x term

-   C-c C-k char mode
-   C-c C-j line mode
    -   C-c char = C-x char

-   C-c C-c = C-c (term-interrupt-subjob)
-   C-c C-q - page at a time feature
    -   q - exit - Not working
-   S-insert - yank in char mode

insert result of shell command to buffer:

    C-u A-!


<a id="orga80e416"></a>

# Dired


<a id="orgf557fa2"></a>

## basic

-   C-x d	M-x dired
-   C-x C-j	M-x dired-jump - Jump to Dired buffer corresponding to current buffer.

C-x C-f - ?

Mark:

-   h	help
-   m	dired-mark
-   % m	mark with regex
-   u/U	unmark/Unmark all marked
-   \*	Mark all executable file
-   @	Mark all symbolic links
-   /	Mark with \`\*' all files which are actually directories
-   % d regexp RET - mark with regex by name
-   t	invert selection

Delete:

-   d	mark for deletion
-   x	Delete the files that are flagged for deletion.

Visit:

-   e/f/RET	dired-find-file
-   v		view-mode and q to close
-   f/o/C-o	visit in other window/dont switch
-   a		visit and kill current buffer
-   &		open in any program
-   W		open in default program

Navigation:

-   ^		dired-up-directory
-   >		next directory
-   <		preview directory
-   SPC		moves the cursor down one item.
-   (		dired-hide-details-mode

Commands:

-   c	compress to (TODO)
-   shift+c	copy file - dired-do-copy
-   shift+r	rename/move - dired-do-rename
-   shuft+d	delete - dired-do-delete
-   +		dired-create-directory
-   shift+z	Compress/decompress the file by gzip
-   !		shell command on file
-   g	Update the entire contents of the Dired buffer
-   l	Update the specified files

Submodes:

-   C-x C-q (dired-toggle-read-only) - wdired
    -   SPC - change permission

not defined:

-   b     z     F     K     @     [     {     ;     \\     |     ,     /     \`
-   r     E     J     V     )     ]     }     '     "

Open:

BKSP moves the cursor up one item.

g rereads the directory.
RET opens the item in the current window.
o (small O) opens the item in the other window.

Use C-h m or M-x describe-mode to get some help.


<a id="org96dc67c"></a>

## Copy files dired

Mark the files with m or unmark with u.
Press R.
Enter the destination directory.
Press RET.

1.  in .emacs: (setq dired-dwim-target t)
2.  C-x 3  - to open other window
3.  m - mark files
4.  shift+c - copy; shift+r - move


<a id="orgd91d815"></a>

## over ssh - TRAMP

TRAMP stands for “Transparent Remote (file) Access, Multiple Protocol”.

-   /ssh:user@host:/path/to/file
-   /sudo:localhost:/path/to/file # as root
-   /sftp:user@host:/path/to/file
-   /sshfs:user@host:/path/to/file.
-   /adb::/path/to/file  # android
-   /ssh:bird@bastion|ssh:you@remotehost:/path RET
-   /ssh:daniel@melancholia#42:.emacs # port 42
-   /ssh:[::1]:.emacs # ipv6

keys:

-   C-x x g - revert-buffer-quick

steps:

1.  C-x C-f to initiate find-file, enter part of the TRAMP file name, then hit TAB for completion.
2.  TRAMP invokes connection to remote host
3.  Upon successful login, if TRAMP recognizes the shell prompt from the remote host, invokes /bin/sh.
4.  executes cd and ls commands to find which files exist on the remote host. TRAMP checks if a file or directory is
    writable with test.
5.  TRAMP transfers the file contents from the remote host.
6.  Edit, modify, change the buffer contents as normal, and then save the buffer with C-x C-s.

    /:/tmp/foo*bar # ‘/:’ can also prevent ‘~’ and '*' from being treated as a special character


<a id="orgb05f71d"></a>

### issue: close remote file after modification without connection

as it suggest:

    Tramp failed to connect.  If this happens repeatedly, try
    ‘M-x tramp-cleanup-this-connection’

there is also:

    M-x tramp-cleanup-all-connections

and with killing buffers:

    M-x tramp-cleanup-all-buffers

try

-   M-x tramp-unload-tramp
-   M-x kill-buffer RET **tramp.**


<a id="org26f0d4f"></a>

### if connection lost, how to save file?

M-x tramp-rename-files


<a id="org3f4101c"></a>

### links

-   <https://www.gnu.org/software/emacs/manual/html_node/emacs/Remote-Files.html>
-   <https://www.gnu.org/software/emacs/manual/html_node/tramp/index.html#Top>
-   faq <https://www.gnu.org/software/emacs/manual/html_node/tramp/Frequently-Asked-Questions.html>


<a id="orgf8be4e6"></a>

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


<a id="org3e4bb45"></a>

## images

M-x image-dired - show image thumbnails


<a id="org9558f17"></a>

## major addons

-   dired-hide-dotfiles <https://github.com/mattiasb/dired-hide-dotfiles>
-   Dirvish <https://github.com/alexluigit/dirvish>
-   <https://gitlab.com/xuhdev/dired-icon>

Filemanager not based on Dired

-   neotree -
-   <https://github.com/emacs-eaf/eaf-file-manager>


<a id="org617241c"></a>

## How to open several files in Dired:

-   mark files with #'dired-mark
-   for sync call: press ! #'dired-do-shell-command and for async call: & '#dired-do-async-shell-command
-   type name of command to execute command for each file separately.
-   if you want to execute file by concatenating them to one command type: "command \*"


<a id="org68b00ee"></a>

## mark files (dired-x)

-   All executables with \* \*
-   All files of a particular extension with \* .
-   All directories with \* /
-   All symlinks with \* @
-   Files matching a REGEXP \* %

Marking Programmatically

    (string-match "Mar 16" time)

mark all the files that were last modified on 16th of March.


<a id="org5a1876f"></a>

## Virtual Dired

putting a buffer with **Dired-like contents** in Dired mode


<a id="org0b378ae"></a>

## how to open several frequently files at once?

<https://www.gnu.org/software/emacs/manual/html_node/emacs/Filesets.html>


<a id="org0f13fbd"></a>

## links

<https://lucidmanager.org/productivity/manage-files-with-emacs/>


<a id="org32f15c8"></a>

# Org mode <a id="org6488078"></a>

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


<a id="org73dcb63"></a>

## navigate keys

-   C-c C-n/p	next prev heading
-   C-c C-f/b	next prev same level heading
-   C-c C-u	Backward to higher level heading.
-   C-c C-j	search in headers!
-   M-{		org-backward-element
-   M-}		org-forward-element


<a id="orgb0b7ee6"></a>

## keys

-   C-c '	special editor: src block, tables, LaTeX, footnote, timestamp
-   C-c Tab	narrow header
-   C-u Tab	harrow all headers
-   C-u C-u Tab	startup headers visibility

Headers or subtree editing:

-   M-LEFT/RIGHT (org-do-promote/org-do-demote) Promote or demote current heading by one level.
-   M-S-LEFT/RIGHT (org-promote-subtree/org-demote-subtree) Promote the current subtree by one level.
-   M-UP/DOWN (org-move-subtree-up/org-move-subtree-down) Move subtree up, i.e., swap with previous subtree of same level.


<a id="org02e0db4"></a>

## TODO attachments

C-c C-a


<a id="org8a18511"></a>

## special symbols (TAB)

C-q TAB		insert TAB
C-u 4 C-q	insert 4 TABs

-   **asd**
-   `asd`
-   `asd`
-   *asd*
-   <span class="underline">asd</span>
-   <del>df</del>


<a id="orgeceee4a"></a>

## headers

:VISIBILITY: all

-   property, may be: folded, children, content, and all
-   (custom-set-variables '(org-startup-folded t) - every headers will start folded

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


<a id="org4dcf70f"></a>

### TAGS

header tags: \* header :as:asd:
subheadings willl accumulate all tags.
file tags: #+FILETAGS: :Peter:Boss:Secret:
C-c C-q (C-c C-c)	   insert
C-c \\ search


<a id="org22fd78d"></a>

### TODO

S-LEFT/RIGHT - cycle
S-UP/DOWN - change item priority


<a id="org4ea0251"></a>

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


<a id="org49b655c"></a>

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


<a id="org1467c0c"></a>

## Properties

C-c C-x p Set a property.
C-c C-c d Remove

see headers.


<a id="orgfe175b8"></a>

## Time Stamp

-   C-c .	ins. for agenda
-   C-c !	ins. inactive
-   S-left/right	by one day
-   M-S-LEFT / M-S-RIGHT move selection 1 month backward/forward
-   < / > scroll calendar by 1 month
-   C-v / M-v scroll calendar by 3 months
-   M-S-UP / M-S-DOWN scroll calendar by 1 year
-   S-up/down	change at cursor


<a id="orgfc1ac8a"></a>

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


<a id="org04a8833"></a>

## org links [ [ link][description]]

-   C-c C-l		edit link
-   C-c C-x C-v	show hide image inline
-   C-c C-o		open link
-   C-u C-u C-c C-o	open not in emacs

-   M-x org-toggle-link-display

    [[LINK][DESCRIPTION]] or [[LINK]]

[[ ./a.img      - inline image ends with \\]\\]

**Local links (same buffer)** :

1.  [[Target		local link to header <a id="org198b0ee"></a>
2.  [[My Target         local link to just string #+NAME: My Target
3.  [[./papers/last.pdf’]

**external links(sepparate buffer)**

1.  <projects.md>:: name - go had "\* name" OR to <<name >>

    [[docview:papers/last.pdf::NNN]] open in DocView mode at page NNN

1.  <sometextfile>:: NNN (jump to line number)
2.  ‘<projects.md>:: \*task title’ (headline search)
3.  ‘<projects.md>:: #custom-id’ (headline search)
4.  <ls>
5.  <org-store-link>
6.  <org#External>
7.  <https://orgmode.org/>
8.  <java:Active>
9.  ‘<file://ssh:me@some.where:papers/last.pdf>’ (remote)
10. ‘/ssh:me@some.where:papers/last.pdf’ (same as above)
11. <org#External links>
12. full list: (mapc 'print org-link-parameters)

<file:///home/u/.emacs.d/elpa/org-9.6.28/ol.el>

**Internal links.**

-   coderef:
-   custom-id:
-   fuzzy:
-   radio:

example [Mylink to TragetEx](#org198b0ee)

**line position**

    [[file:~/code/main.c::255]]	Find line 255
    ‘file:~/xx.org::My Target’	Find ‘<<My Target>>’
    [[file:~/xx.org::#my-custom-id]]	Find entry with a custom ID


<a id="org59c2773"></a>

### Applications for opening \`<path>' items in a document:

    (setq org-file-apps
        '(("\\.docx\\'" . default)
          ("\\.mm\\'" . default)
          ("\\.x?html?\\'" . default)
          ("\\.pdf\\'" . default)
          ("\\.png\\'" . default)
          ("\\.jpg\\'" . default)
          ("\\.jpeg\\'" . default)
          (auto-mode . emacs)))


<a id="orge1f594c"></a>

### links

(org-open-at-point) calls (org-link-open) which uses the variable (org-link-parameters)

    ;;;; "http", "https", "mailto", "ftp", and "news" link types
    ;; (dolist (scheme '("ftp" "http" "https" "mailto" "news"))
    (dolist (scheme '("http" "https"))
      (org-link-set-parameters scheme
                   :follow
                   (lambda (url arg)
                     (browse-url (concat "http:" url) arg))))


<a id="orgfce4ef6"></a>

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

1.  size of images

    per image:
    
    globally:
    (setopt org-image-actual-width 300)

2.  org-image-actual-width

    1.  M-x add-file-local-varible-prop-line
    2.  org-image-actual-width
    
            org-image-actual-width is a variable defined in ‘org.el’. Its value is t
        
            Documentation: Should we use the actual width of images when inlining them?
        
            When set to t, always use the image width.
        
            When set to a number, use imagemagick (when available) to set the image’s width to this value.
        
            When set to a number in a list, try to get the width from any #+ATTR.* keyword if it matches a width specification like
        
        #+ATTR_HTML: :width 300px
        
            and fall back on that number if none is found.
        
            When set to nil, try to get the width from an #+ATTR.* keyword and fall back on the original width if none is found.
        
            This requires Emacs >= 24.1, build(sic) with imagemagick support.


<a id="org93e5a89"></a>

## source code babel block inline <a id="org1cdd6bb"></a>

Exclude tree and its subtrees:

-   C-c C-q set tag "noexport"

exclude tags: EXCLUDE<sub>TAGS</sub> - default value "noexport"


<a id="org94daf2a"></a>

### theory

    #+begin_src <language>  <switches> <header arguments>
    ,<body>
    #+end_src

-   <switches>  Control code execution, export, and format.
-   <header arguments> Header arguments control many facets of code block behavior, including tangling, evaluation,
    handling results of evaluation, and exporting.


<a id="org33b2d1b"></a>

### header arguments

set default arguments for source code blocks:

Buffer wide:

heading wide:

    :PROPERTIES:
    :header-args:python: :exports both
    :END:

    ;; The example below sets ‘:noweb’ header arguments to ‘yes’,
    ;; which makes Org expand ‘:noweb’ references by default.
    (setq org-babel-default-header-args
          (cons '(:noweb . "yes")
                (assq-delete-all :noweb org-babel-default-header-args)))

-   :eval never-export - prevent code blocks from being evaluated at export time:
-   :exports both - export code and result

sytem-wide

-   org-babel-default-header-args (for all languages)
-   org-babel-default-header-args:<lang> (language specific)

<https://org-babel.readthedocs.io/en/latest/header-args/>


<a id="orgdfd5dd6"></a>

### commands

-   C-c '		Edit the source code
-   C-c C-v d		create
-   C-c C-c 		execute
-   C-c C-v e		execute
-   org-src-fontify-block  code highlighting

templates:

-   <s Tab		create
-   after #+		autocompletion


<a id="orgbe99309"></a>

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


<a id="org7e3f50e"></a>

### python

    return "aasd"

    aasd

    print("aasd")

    aasd


<a id="orgcd59165"></a>

### output result

<https://orgmode.org/manual/Results-of-Evaluation.html>

-   :results output raw - do nothing with output

1.  example output json

        curl -X GET "http://anonchek.ru/get?id=a43219ce4a4a490d9cd34beb718cb09f" -H  "accept: application/json"


<a id="org20acb52"></a>

### python sessions

    #+BEGIN_SRC python :results output :session a
    import numpy
    import pandas as pd
    v = pd.DataFrame({'as':[1,2], 'ssd':[3,2]})
    print(v)

    print(v.describe())

\#+end<sub>src</sub>


<a id="org6e212a1"></a>

### python images

The ‘mkdirp’ header argument creates parent directories for tangled files if the directory does not exist. A ‘yes’
 value enables directory creation whereas ‘no’ inhibits it.

    from matplotlib import pyplot as plt
    x = [1, 2, 3]
    y = [1, 4, 3]
    
    plt.plot(x, y)
    # plt.show()
    plt.savefig('1.png')


<a id="org3f74a73"></a>

### python pandas tables

1.  original - not working with sessions

        import pandas as pd
        df = pd.DataFrame({
              "a": [1,2,3],
              "b": [4,5,6]
        })
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-right" />
    
    <col  class="org-right" />
    
    <col  class="org-right" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-right">&#xa0;</th>
    <th scope="col" class="org-right">a</th>
    <th scope="col" class="org-right">b</th>
    </tr>
    </thead>
    
    <tbody>
    <tr>
    <td class="org-right">0</td>
    <td class="org-right">1</td>
    <td class="org-right">4</td>
    </tr>
    
    
    <tr>
    <td class="org-right">1</td>
    <td class="org-right">2</td>
    <td class="org-right">5</td>
    </tr>
    
    
    <tr>
    <td class="org-right">2</td>
    <td class="org-right">3</td>
    <td class="org-right">6</td>
    </tr>
    </tbody>
    </table>

2.  with sessions

        import pandas as pd
        
        def pd2org(df_to_table):
            "can be used any blocks in same session"
            return tabulate(df_to_table, headers=df_to_table.columns, tablefmt='orgtbl')
        
        df = pd.DataFrame({
              "a": [1,2,3],
              "b": [4,5,6]
        })
        pd2org(df.describe())
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-right" />
    
    <col  class="org-right" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-left">&#xa0;</th>
    <th scope="col" class="org-right">a</th>
    <th scope="col" class="org-right">b</th>
    </tr>
    </thead>
    
    <tbody>
    <tr>
    <td class="org-left">count</td>
    <td class="org-right">3</td>
    <td class="org-right">3</td>
    </tr>
    
    
    <tr>
    <td class="org-left">mean</td>
    <td class="org-right">2</td>
    <td class="org-right">5</td>
    </tr>
    
    
    <tr>
    <td class="org-left">std</td>
    <td class="org-right">1</td>
    <td class="org-right">1</td>
    </tr>
    
    
    <tr>
    <td class="org-left">min</td>
    <td class="org-right">1</td>
    <td class="org-right">4</td>
    </tr>
    
    
    <tr>
    <td class="org-left">25%</td>
    <td class="org-right">1.5</td>
    <td class="org-right">4.5</td>
    </tr>
    
    
    <tr>
    <td class="org-left">50%</td>
    <td class="org-right">2</td>
    <td class="org-right">5</td>
    </tr>
    
    
    <tr>
    <td class="org-left">75%</td>
    <td class="org-right">2.5</td>
    <td class="org-right">5.5</td>
    </tr>
    
    
    <tr>
    <td class="org-left">max</td>
    <td class="org-right">3</td>
    <td class="org-right">6</td>
    </tr>
    </tbody>
    </table>


<a id="org329e1b2"></a>

### python Eglot local

    (defun org-babel-edit-prep:python (babel-info)
      (setq-local buffer-file-name (expand-file-name (->> babel-info caddr (alist-get :tangle))))
      (eglot-ensure)
      )
    
    (defun mb/org-babel-edit:python ()
      (interactive)
      (org-babel-tangle '(4))
      (org-edit-special)
      )


<a id="orgb5d4475"></a>

### python Eglot remote

use #+begin<sub>src</sub> python :dir "/ssh:host:"

<https://github.com/joaotavora/eglot/issues/216>
<https://github.com/joaotavora/eglot/issues/523>

<https://list.orgmode.org/orgmode/87bkqmdhqz.fsf@gmail.com/>

problem:

    [eglot] Connected! Server `pylsp' now managing `(python-mode)' buffers in project `mlops-course'.
    [eglot] Connected! Server `pylsp' now managing `(python-mode)' buffers in project `jup'.

requirements:

-   default-directory ; reqguired for Eglot
-   (org-babel-tangle '(4)) ; required by TRAMP
-   buffer-file-name ; reqguired for Eglot?


<a id="org499265e"></a>

### shell sorce code blocks

for shell:

    set -- "2\n22"
    echo -e "$@"

this works like #include in C:

    print('echo -e "$@"')


<a id="org7aabfd3"></a>

### graphiz - graphs

For: automatically draw the best representation of graph + allow to prettify.

require:

-   emerge &#x2013;ask media-gfx/graphviz

links:

-   <https://orgmode.org/worg/org-contrib/babel/languages/ob-doc-dot.html>
-   <https://graphs.grevian.org/example>


<a id="org3452367"></a>

### templates for source code (org-tempo)

-   (require 'org-tempo) for <s TAB is old system
-   C-c C-, s and it will wrap your selection inside #+begin<sub>src</sub> and #+end<sub>src</sub>.

(require 'org-tempo)

(add-to-list 'org-structure-template-alist '("sh" . "src shell"))
(add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
(add-to-list 'org-structure-template-alist '("py" . "src python"))


<a id="orgd9b10a7"></a>

### calling blocks

syntax:

    #+CALL: <name>[<inside header arguments>](<arguments>) <end header arguments>

inside header arguments - change header of block

end header arguments - affect the results returned by the code block.

1.  ex

    s asd2 s2
    
    s asd2 s2
    s asd2 s2
    
    bla bla
    
        echo s $x s2

2.  ex with :var x=name

        a = 2
    
        print(a)
    
        2


<a id="orgff5af78"></a>

### evaluatlion

prevent evaluation:

    :eval no
    :eval never
    #+PROPERTY: header-args :eval no

prevent evaluation if code not changed:

    :cache yes

prevent evaluation if Org source blocks during export:

-   per block

    #+begin_src <language> :eval never-export

-   per file

    #+PROPERTY: header-args :eval never-export

-   global

    (setq org-babel-default-header-args
          (cons '(:eval . "never-export")
                (assq-delete-all :eval org-babel-default-header-args)))

links

-   <https://orgmode.org/manual/Evaluating-Code-Blocks.html>
-   <https://orgmode.org/manual/Code-Evaluation-Security.html>


<a id="orgad34ca2"></a>

### babel library

-   /usr/share/emacs/29.1/lisp/org/org.el
    -   org-babel-do-load-languages - (require ob-'lang'.el
    -   org-ctrl-c-ctrl-c
    -   ob-core.el: org-babel-execute-src-block
        -   org-babel-process-params
    -   org-babel-execute:lang body params
    -   ob-eval.el: org-babel-eval
-   /usr/share/emacs/29.1/lisp/org/ob-core.el

1.  default params for org-babel-execute:lang

        ((:colname-names)
         (:rowname-names)
         (:result-params "replace" "output")
         (:result-type . output)
         (:results . "replace output")
         (:exports . "code")
         (:session . "none")
         (:cache . "no")
         (:noweb . "no")
         (:hlines . "no")
         (:tangle . "no"))

2.  terms

    -   Literate Programming - invented by Donald Knuth in 1980’s. Self-documented code file that generate 1) documentation 2) source code
        -   weave, weaving - the documentation
        -   **tangle**, tangling - the source code. (ex. Org-mode file is tangled and executed)
    -   **Functional Mode** - ":results value" - the code block is a function with a return value. The return value of one code
        block can be used as input for another code block, even one in a different language.
    -   **Scripting Mode** - ":results output" - stdout to result

3.  python evaluation process

    <file:///home/u/.emacs.d/contrib/lisp/ob-python.el>
    
    -   org-babel-execute:python
    -   org-babel-python-evaluate
    -   if not in session: org-babel-python-evaluate-external-process


<a id="org474608c"></a>

### org-babel-eval (command query)

ob-eval.el

org-babel&#x2013;shell-command-on-region

process-file("/bin/bash" "/tmp/babel-r8qnrq/ob-input-NupvRT" (t "/tmp/babel-r8qnrq/ob-error-cNDFv1") nil "-c" "mypy")

call-process "/bin/bash" "/tmp/babel-r8qnrq/ob-input-ZiSUmz" (t "/tmp/emacsIHqeyU") nil ("-c" "mypy")

call-process "/bin/bash" "~/aaa" (t "/tmp/emacsIHqeyU") nil ("-c" "mypy")

    (call-process "/bin/bash" "~/aaa" t nil "-c" "python")

    (call-process "/bin/bash" "~/aaa" t nil "-c" "mypy")

    (call-process "/bin/bash" "~/aaa" t nil "-c" "/usr/local/bin/mypy.sh")

    print("wes")

    Success: no issues found in 1 source file


<a id="orgdaf0869"></a>

### indentation <a id="orgac86344"></a>

(org-cycle) ->
with babel python
(org-cycle) -> indent-for-tab-command -> org-indent-line with record!

    (execute-extended-command nil "indent-for-tab-command" nil)

-   org-babel-do-key-sequence-in-edit-buffer("\\11")
-   org-babel-do-in-edit-buffer
-   org-edit-src-code, org-edit-src-exit , sequence:
    -   (beg org-src&#x2013;beg-marker)
    -   (end org-src&#x2013;end-marker)
    -   (narrow-to-region beg end)
    -   org-replace-buffer-contents = replace-buffer-contents (SOURCE &optional MAX-SECS MAX-COSTS))
-   

1.  highlight-changes-mode - how it works:

    hilit-chg-set-face-on-change:
    
    -   set hook for local buffer with depth nil
    
        (add-hook 'after-change-functions 'hilit-chg-set-face-on-change nil t))
    
    :(defun hilit-chg-set-face-on-change (beg end leng-before
    
            &optional no-property-change)
    
    -   beg/end - beginning and end of the range of changed text,
    -   leng-before - length in chars of the pre-change text replaced by that range.


<a id="orgc607097"></a>

### exception characters - escaping

-   ‘\*’ as ‘,\*’
-   ‘#+’ as ‘,#+’


<a id="org45da55f"></a>

### Tramp integration

inside org-babel-eval

    (let ((default-directory "/ssh:kvmka:/root/"))
    (org-babel-eval "/usr/bin/python3" "import pandas"))


<a id="orga5c24c6"></a>

### links

-   <https://org-babel.readthedocs.io/en/latest>
-   <https://orgmode.org/worg/org-contrib/babel/>
-   <https://orgmode.org/worg/library-of-babel.html>
-   <https://orgmode.org/manual/Working-with-Source-Code.html>
-   <https://howardism.org/Technical/Emacs/literate-programming-tutorial.html>
-   <https://orgmode.org/worg/org-contrib/babel/intro.html>
-   <https://github.com/dfeich/org-babel-examples/>


<a id="org1889267"></a>

## example block

    20    Some example from a text file.


<a id="org58e3724"></a>

## completions

-   C-c C-, (org-insert-structure-template) - #+ &#x2026;.


<a id="org1e9def2"></a>

### M-TAB completion

-   after '\* '
-   After ‘\\’, complete TeX symbols supported by the exporter.
-   After ‘:’ in a headline, complete tags
-   After ‘:’ and not in a headline, complete property keys
-   After ‘[[’, complete link abbreviations
-   After ‘[[\*’, complete headlines in the current buffer
-   After ‘#+’, complete the special keywords
-   After #+STARTUP: keyword, complete startup items.
-   When point is anywhere else, complete dictionary words using Ispell.  ???


<a id="org5c9c48f"></a>

### disable org-tempo

works like [[skeletons]


<a id="org781ce2e"></a>

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

$$ a=+\sqrt{2} $$ or $$ a=-\sqrt{2} $$


<a id="org0d77f64"></a>

## archiving

C-c C-x C-a	archive subtree.


<a id="orgc423e48"></a>

## inline images

(setq org-startup-with-inline-images t)
or:

[[![img](org-level-hist.png)]


<a id="org1a63472"></a>

## Tables and Spreadsheets

-   |-		start pattern
-   :=vmean($2..$3)	calculate the mean for fields from the second ($2) to the third ($3) field in this row
-   C-u C-c \* (or C-c C-c if you're on the #+TBLFM) 	 reapplying all formulas
-   S-arrows	swap columns


<a id="org4143f39"></a>

## Tables as spreadsheets

-   C-c ?	learn about field
-   C-c C-c	calc table
-   C-c =	editing column formulas
-   C-u C-c = 	field formulas
-   C-c '	edit formulas more interactively in a dedicated buffer
-   C-c { 	Turn the formulas debugger on
-   eval formula when cursor at TBLFM - M-x org-table-calc-current-TBLFM

steps:

1.  put cursor in a row
2.  type `:=vmean($1..$2)` or use editor for filed: C-u C-c =
3.  C-u C-c \*	reapply all formulas

\#+TBLFM line contains all the formulas for the table above, and you should be careful while editing it manually.

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


<a id="orga2fe824"></a>

### calc source block

    print(34)

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-right" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">a</th>
<th scope="col" class="org-left">b</th>
<th scope="col" class="org-right">c</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-right">34</td>
</tr>
</tbody>
</table>


<a id="org279061e"></a>

## indent-mode

-   M-x org-indent-mode
-   (setq org-startup-indented t)

use  '(org-hide-leading-stars t) inside


<a id="org871b6e2"></a>

## TODO graphiz

Diagrams <https://orgmode.org/worg/org-tutorials/org-dot-diagrams.html>
mind map 3yo <https://github.com/the-ted/org-mind-map>


<a id="org9822918"></a>

## TODO Capture C-c c and templates, notes


<a id="org1cfbc19"></a>

## columnar view


<a id="org4af0bb9"></a>

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


<a id="org2bd15c3"></a>

### org-columns-default-format

"%25ITEM %TODO %3PRIORITY %TAGS"
or
\#+COLUMNS %25ITEM %TODO %3PRIORITY %TAGS


<a id="orga8dd696"></a>

### format

%[WIDTH]PROPERTY[(TITLE)][{SUMMARY-TYPE}]


<a id="org5f8de58"></a>

### properties

-   ITEM         The content of the headline.
-   TODO         The TODO keyword of the entry.
-   TAGS         The tags defined directly in the headline.
-   ALLTAGS      All tags, including inherited ones.
-   PRIORITY     The priority of the entry, a string with a single letter.
-   DEADLINE     The deadline time string, without the angular brackets.
-   SCHEDULED    The scheduling time stamp, without the angular brackets.


<a id="orgc31757c"></a>

### links

-   <https://orgmode.org/worg/org-tutorials/org-column-view-tutorial.html>
-   <https://orgmode.org/worg/org-tutorials/org-column-screencast.html>


<a id="org5c74c75"></a>

### effort template

    #+PROPERTY: Effort_ALL 0 0:10 0:30 1:00 2:00 3:00 4:00 5:00 6:00 7:00
    #+COLUMNS: %40ITEM(Task) %17Effort(Estimated Effort){:} %CLOCKSUM


<a id="orgaa14ea3"></a>

### org-clock-report or clocktable

<https://orgmode.org/manual/The-clock-table.html>
![img](imgs/org-clocktable.jpg)


<a id="org2f3ddc7"></a>

## priorities


<a id="org0b4a088"></a>

### custom priorities:

    (setq
      org-lowest-priority  1
      org-highest-priority 10
      org-default-priority 5
      )


<a id="org6802c38"></a>

## sort


<a id="org5fca839"></a>

## TAGS

-   !	add timestemp without asking
-   @	ask whether to add timestamp or not
-   /!	when switching back from it add timestamp to TODO word staying before
-   computer @phone - at most one of them  should be selected

keys

-   C-c C-q (org-set-tags-command)
-   C-c C-c (org-set-tags-command)


<a id="orga920ea0"></a>

## .TODO

\#-**- org-todo-keyword-faces: (("TODO" . org-warning) ("FAILED" . "red") ("DONE" . "green")); -**-

-**- org-todo-keyword-faces: (("TODO" . "red") ("WAIT" . "orange") ("DONE" . "green")); -**-

Colours for TODO:

    (setq org-todo-keyword-faces
      '(("TODO" . org-warning)
         ("STARTED" . "red")
         ("WAITING" . "yellow")
         ;; ("CANCELED" . (:foreground "cyan" :weight bold))
         ("CANCELED" . "cyan")
         ))

<https://orgmode.org/manual/Tracking-TODO-state-changes.html>


<a id="org1382e2a"></a>

## export

-   C-c C-e # - inserts a template containing all the options:

**Disabling underscore-to-subscript**

-   \#+OPTIONS: ^:nil
-   (setq org-export-with-sub-superscripts nil)


<a id="org75b1921"></a>

## export to markdown

to activate:

-   M-x customize-variable <Ret> org-export-backends <Ret>
-   C-c C-e m m (org-md-export-to-markdown) Export to a text file with Markdown syntax
-   C-c C-e m M (org-md-export-as-markdown) Export to a temporary buffer. Does not create a file.
-   C-c C-e m o Export as a text file with Markdown syntax, then open it.
-   supported export formats: <https://orgmode.org/worg/exporters/ox-overview.html>

    #!/bin/sh
    
    for filename in $(find . -maxdepth 1 -type f \
    		       -not -name '*.html' -not -name '.nojekyll' \
    		       -not -name '*.md' -not -name '*.png' -not -name 'export.sh' \
    		       -not -name '.*.sh'); do
        echo "put ${filename}";
        emacs "${filename}" --eval "(progn (org-md-export-to-markdown) (save-buffers-kill-emacs))"
    done


<a id="org39895a2"></a>

## tangling

    #+PROPERTY: header-args :tangle init.el

or

    :tangle init.el

C-c C-v C-t org-babel-tangle Extract the bodies of all source code blocks from the current file into their own
 source-specific files.


<a id="orga7428c4"></a>

## presentations


<a id="orgfbb2cda"></a>

### Beamer - export to PDF

1.  terms

    -   **typesetting:** composition of text for publication,
    -   **LaTeX:** software system for typesetting documents. uses the **TeX** typesetting program for formatting its output, and
        is itself written in the TeX macro language. used as an intermediate format.
    -   **markup tagging conventions:** to define the general structure of a document and other things
    -   **document.tex:** as input to the TeX program (with the LaTeX macros loaded)
    -   **Beamer:** a LaTeX document class specifically designed for creating presentation slides.
    -   **LaTeX class:** a set of predefined formatting and layout settings that define the overall structure and appearance of
        a LaTeX document. Common LaTeX Classes: article, report, book, beamer, letter. have ".cls" extension.
    -   **options:** common classes takes options that select the type size, paper size, orientation, etc..

2.  steps

    1.  sudo apt install texlive-full or
        -   dev-texlive/texlive-latex
        -   dev-texlive/texlive-plaingeneric
        -   dev-tex/latex-beamer
        -   dev-texlive/texlive-latexextra)
        -   if your language is not English you will need special package with fonts: dev-texlive/texlive-lang????&#x2026;
    2.  go to top M-<
    3.  command: Ctrl+C Ctrl+e #  - org-export-dispatch
    4.  add lines at the end:
        -   \#+startup: beamer
        -   \#+LaTeX<sub>CLASS</sub>: beamer
        -   \#+LaTeX<sub>CLASS</sub><sub>OPTIONS</sub>: [bigger]
    5.  if your language is not English you will need addition option T2A or some other:
        -   \#+BEAMER<sub>HEADER</sub>: \usepackage[T1,T2A]{fontenc} - for Russian
    6.  export your slide as a Beamer presentation(pdf):
        -   C-c C-e l P (org-beamer-export-to-pdf)
    
    terms:
    
    -   frame - page
    -   title and the content - outline header and text within
    
    Specify which header level will be used for pages:
    
        #+OPTIONS: H:2
    
    Will not be exported:
    
    -   comments: C-x ; - org-toggle-comment
    -   \# - any lines strted with #
    -   headers with tag: :noexport:

3.  todo aspect rate

        #+BEAMER_HEADER: \usepackage[orientation=landscape,size=custom,width=30,height=30,scale=0.7,debug]{beamerposter}
        #+BEAMER_HEADER: \usepackage[size=custom,width=30,height=30,scale=0.7,debug]{beamerposter}
    
        #+BEAMER_HEADER: \documentclass[aspectratio=169]{beamer}

4.  centered image

    <div class="org-center">
    
    <div id="org53045a0" class="figure">
    <p><img src="figs/greatFigure.png" alt="greatFigure.png" />
    </p>
    </div>
    </div>

5.  Theme setting:

6.  troubleshooting

    problem: org-compile-file: File "/tmp/orgtexayaFgR.pdf" wasn’t produced.  Please adjust ‘imagemagick’ part of ‘org-preview-latex-process-alist’.
    
    -   /etc/ImageMagick-7/policy.xml:
    -   <policy domain="coder" rights="read|write" pattern="PDF" />
    -   workaround: pdflatex /tmp/orgtexayaFgR.tex
    
    sub-problem: LaTeX Error: File \`ulem.sty' not found.
    
    -   workaround: find current font: M-x describe-face RET default
    -   solution: emerge &#x2013;ask dev-texlive/texlive-plaingeneric
    
    sub-problem: ! LaTeX Error: File \`dejavu.sty' not found.
    
    -   solution: emerge &#x2013;ask dev-texlive/texlive-formatsextra
    
    problem: org-compile-file: File "/tmp/orgtexHuvmlj.png" wasn’t produced.  Please adjust ‘imagemagick’ part of ‘org-preview-latex-process-alist’.
    
    -   workaround: cd /tmp ; convert -density 30x30 -trim -antialias orgtexvwZJUM.pdf -quality 100 orgtexvwZJUM.png
    -   solution: app-text/ghostscript-gpl
    
    problem: user-error: Unknown LaTeX class ‘beamer’
    
    -   You should use: M-x org-beamer-export-to-pdf instead.
    
    problem: org-compile-file: File "/home/u/sources/tasks-for-job/task<sub>for</sub><sub>hackathon</sub><sub>demo</sub>/README.pdf" wasn’t produced.  See "**Org PDF LaTeX Output**" for details
    
    -   workaround: M-x buffer-menu and select "**Org PDF LaTeX Output**"
    
    sub-problem: ! LaTeX Error: File \`beamer.cls' not found.
    
    -   solution: install dev-tex/latex-beamer
    
    sub-problem: ! LaTeX Error: File \`wrapfig.sty' not found.
    
    -   solution: install dev-texlive/texlive-latexextra
    
    sub-problem: ! Package inputenc Error: Unicode character к (U+043A)(inputenc)  not set up for use with LaTeX.
    
    -   <https://tex.stackexchange.com/questions/83440/inputenc-error-unicode-char-u8-not-set-up-for-use-with-latex>
    -   workaround: check org-preview-latex-process-alist variable and do "pdflatex -interaction nonstopmode a.tex"
    -   solution:
        1.  install dev-texlive/texlive-langcyrillic
        2.  \#+BEAMER<sub>HEADER</sub>: \usepackage[T1,T2A]{fontenc} The T2A option is needed for Russian letters.
    
    sub-problem: ! Package inputenc Error: Unicode character 哥 (U+54E5)(inputenc)  not set up for use with LaTeX.
    
    -   solution: install texlive-langchinese or texlive-langcjk
    
    How to skip first "Outline" frame?
    
    -   \#+OPTIONS: H:1 toc:nil

7.  don't support GIF

    -   <https://latex-beamer.com/tutorials/gif-latex-beamer/>
    -   <https://tex.stackexchange.com/questions/7602/how-to-add-a-gif-file-to-my-latex-file>

8.  links

    -   main <https://orgmode.org/worg/exporters/beamer/tutorial.html>
    -   options: <https://orgmode.org/manual/Export-Settings.html>
    -   <https://orgmode.org/worg/exporters/beamer/presentation.html>
    -   <https://orgmode.org/manual/Beamer-Export.html>
    -   article <https://www.maketecheasier.com/create-beautiful-beamer-slides-with-emacs/>
    -   article <https://github.com/jgoerzen/public-snippets/blob/master/emacs/emacs-org-beamer/emacs-org-beamer.org>
    -   latex <https://orgmode.org/worg/org-tutorials/org-latex-export.html>
    -   faq <https://orgmode.org/worg/org-faq.html>
    -   article <https://changelog.complete.org/archives/9900-emacs-5-documents-and-presentations-with-org-mode>
    -   <https://github.com/fniessen/refcard-org-beamer>


<a id="orgea91f82"></a>

### links

-   <https://orgmode.org/worg/org-tutorials/non-beamer-presentations.html>
-   <https://sachachua.com/blog/2013/04/how-to-present-using-org-mode-in-emacs/>
-   <https://github.com/rlister/org-present>
-   <https://github.com/eschulte/epresent>
-   <https://github.com/nicferrier/org-presie>
-   <https://gist.github.com/sachac/5278905>
-   TODO <https://github.com/positron-solutions/macro-slides>
-   Questions <https://github.com/fniessen/refcard-org-beamer>
-   article <https://tippenhauer.de/post/writing-presentations-in-org-mode-markup/>


<a id="org23d0400"></a>

## resume

LaTeX template <https://github.com/kjhealy/kjh-vita>

<https://github.com/smythp/cv>

xelatex (Looks bad) <https://github.com/xiaohanyu/resume>

markdown + CSS <https://matthewdaly.co.uk/blog/2016/08/29/maintaining-your-cv-with-markdown-and-emacs/>

LaTeX file  <https://github.com/xgarrido/org-resume>

-   (require 'ox-html)

LaTeX templates <https://tex.stackexchange.com/questions/80/latex-template-for-resume-curriculum-vitae>

-   <https://www.overleaf.com/latex/templates/tagged/cv>

recommends:

-   if you're writing your resumé in plaintext, don't forget the ascii-art on the top
-   and a maximum length of 60 chars


<a id="org9f02bb2"></a>

### spider CV

<https://github.com/ROMAINPC/Spider-CV>

<https://www.overleaf.com/latex/templates/printable-spider-cv/mqqnfrgdhnmp>


<a id="orgb4fc25b"></a>

### academic CV

<https://www.overleaf.com/latex/templates/academic-cv-template/gmyytjmdbvdm>

    %
    %Academic CV LaTeX Template
    % Author: Dubasi Pavan Kumar
    % LinkedIn: https://www.linkedin.com/in/im-pavankumar/
    % License: MIT
    %
    % For errors, suggestions, or improvements, please contact:
    % Email: pavankumard.pg19.ma@nitp.ac.in
    %
    
    
    
    \documentclass[a4paper,11pt]{article}
    
    % Package imports
    \usepackage{latexsym}
    \usepackage{xcolor}
    \usepackage{float}
    \usepackage{ragged2e}
    \usepackage[empty]{fullpage}
    \usepackage{wrapfig}
    \usepackage{lipsum}
    \usepackage{tabularx}
    \usepackage{titlesec}
    \usepackage{geometry}
    \usepackage{marvosym}
    \usepackage{verbatim}
    \usepackage{enumitem}
    \usepackage{fancyhdr}
    \usepackage{multicol}
    \usepackage{graphicx}
    \usepackage{cfr-lm}
    \usepackage[T1]{fontenc}
    \usepackage{fontawesome5}
    
    % Color definitions
    \definecolor{darkblue}{RGB}{0,0,139}
    
    % Page layout
    \setlength{\multicolsep}{0pt}
    \pagestyle{fancy}
    \fancyhf{} % clear all header and footer fields
    \fancyfoot{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
    \geometry{left=1.4cm, top=0.8cm, right=1.2cm, bottom=1cm}
    \setlength{\footskip}{5pt} % Addressing fancyhdr warning
    
    % Hyperlink setup (moved after fancyhdr to address warning)
    \usepackage[hidelinks]{hyperref}
    \hypersetup{
        colorlinks=true,
        linkcolor=darkblue,
        filecolor=darkblue,
        urlcolor=darkblue,
    }
    
    % Custom box settings
    \usepackage[most]{tcolorbox}
    \tcbset{
        frame code={},
        center title,
        left=0pt,
        right=0pt,
        top=0pt,
        bottom=0pt,
        colback=gray!20,
        colframe=white,
        width=\dimexpr\textwidth\relax,
        enlarge left by=-2mm,
        boxsep=4pt,
        arc=0pt,outer arc=0pt,
    }
    
    % URL style
    \urlstyle{same}
    
    % Text alignment
    \raggedright
    \setlength{\tabcolsep}{0in}
    
    % Section formatting
    \titleformat{\section}{
      \vspace{-4pt}\scshape\raggedright\large
    }{}{0em}{}[\color{black}\titlerule \vspace{-7pt}]
    
    % Custom commands
    \newcommand{\resumeItem}[2]{
      \item{
        \textbf{#1}{\hspace{0.5mm}#2 \vspace{-0.5mm}}
      }
    }
    
    \newcommand{\resumePOR}[3]{
    \vspace{0.5mm}\item
        \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
            \textbf{#1}\hspace{0.3mm}#2 & \textit{\small{#3}}
        \end{tabular*}
        \vspace{-2mm}
    }
    
    \newcommand{\resumeSubheading}[4]{
    \vspace{0.5mm}\item
        \begin{tabular*}{0.98\textwidth}[t]{l@{\extracolsep{\fill}}r}
            \textbf{#1} & \textit{\footnotesize{#4}} \\
            \textit{\footnotesize{#3}} &  \footnotesize{#2}\\
        \end{tabular*}
        \vspace{-2.4mm}
    }
    
    \newcommand{\resumeProject}[4]{
    \vspace{0.5mm}\item
        \begin{tabular*}{0.98\textwidth}[t]{l@{\extracolsep{\fill}}r}
            \textbf{#1} & \textit{\footnotesize{#3}} \\
            \footnotesize{\textit{#2}} & \footnotesize{#4}
        \end{tabular*}
        \vspace{-2.4mm}
    }
    
    \newcommand{\resumeSubItem}[2]{\resumeItem{#1}{#2}\vspace{-4pt}}
    
    \renewcommand{\labelitemi}{$\vcenter{\hbox{\tiny$\bullet$}}$}
    \renewcommand{\labelitemii}{$\vcenter{\hbox{\tiny$\circ$}}$}
    
    \newcommand{\resumeSubHeadingListStart}{\begin{itemize}[leftmargin=*,labelsep=1mm]}
    \newcommand{\resumeHeadingSkillStart}{\begin{itemize}[leftmargin=*,itemsep=1.7mm, rightmargin=2ex]}
    \newcommand{\resumeItemListStart}{\begin{itemize}[leftmargin=*,labelsep=1mm,itemsep=0.5mm]}
    
    \newcommand{\resumeSubHeadingListEnd}{\end{itemize}\vspace{2mm}}
    \newcommand{\resumeHeadingSkillEnd}{\end{itemize}\vspace{-2mm}}
    \newcommand{\resumeItemListEnd}{\end{itemize}\vspace{-2mm}}
    \newcommand{\cvsection}[1]{%
    \vspace{2mm}
    \begin{tcolorbox}
        \textbf{\large #1}
    \end{tcolorbox}
        \vspace{-4mm}
    }
    
    \newcolumntype{L}{>{\raggedright\arraybackslash}X}%
    \newcolumntype{R}{>{\raggedleft\arraybackslash}X}%
    \newcolumntype{C}{>{\centering\arraybackslash}X}%
    
    % Commands for icon sizing and positioning
    \newcommand{\socialicon}[1]{\raisebox{-0.05em}{\resizebox{!}{1em}{#1}}}
    \newcommand{\ieeeicon}[1]{\raisebox{-0.3em}{\resizebox{!}{1.3em}{#1}}}
    
    % Font options
    \newcommand{\headerfonti}{\fontfamily{phv}\selectfont} % Helvetica-like (similar to Arial/Calibri)
    \newcommand{\headerfontii}{\fontfamily{ptm}\selectfont} % Times-like (similar to Times New Roman)
    \newcommand{\headerfontiii}{\fontfamily{ppl}\selectfont} % Palatino (elegant serif)
    \newcommand{\headerfontiv}{\fontfamily{pbk}\selectfont} % Bookman (readable serif)
    \newcommand{\headerfontv}{\fontfamily{pag}\selectfont} % Avant Garde-like (similar to Trebuchet MS)
    \newcommand{\headerfontvi}{\fontfamily{cmss}\selectfont} % Computer Modern Sans Serif
    \newcommand{\headerfontvii}{\fontfamily{qhv}\selectfont} % Quasi-Helvetica (another Arial/Calibri alternative)
    \newcommand{\headerfontviii}{\fontfamily{qpl}\selectfont} % Quasi-Palatino (another elegant serif option)
    \newcommand{\headerfontix}{\fontfamily{qtm}\selectfont} % Quasi-Times (another Times New Roman alternative)
    \newcommand{\headerfontx}{\fontfamily{bch}\selectfont} % Charter (clean serif font)
    
    \begin{document}
    \headerfontiii
    
    % Header
    \begin{center}
        {\Huge\textbf{FULL NAME}}
    \end{center}
    \vspace{-6mm}
    
    \begin{center}
        \small{
        +1-234-567-8900 | \href{mailto:youremail@example.com}{youremail@example.com} |
        \href{https://www.yourwebsite.com/}{yourwebsite.com}
        }
    \end{center}
    \vspace{-6mm}
    
    \begin{center}
        \small{
        \socialicon{\faLinkedin} \href{https://www.linkedin.com/in/your-profile/}{your-profile} |
        \socialicon{\faGithub} \href{https://github.com/your-username}{your-username} |
        \ieeeicon{\includegraphics[height=1.3em]{ieee_collabratec_icon.png}} \href{https://ieee-collabratec.ieee.org/app/p/your-profile}{your-profile} |
        \socialicon{\faTwitter} \href{https://twitter.com/your-handle}{your-handle}
        }
    \end{center}
    \vspace{-6mm}
    \begin{center}
        \small{Your City, Your State - Your ZIP, Your Country}
    \end{center}
    
    \vspace{-4mm}
    
    \section{\textbf{Objective}}
    \vspace{1mm}
    \small{
    Seeking a challenging position in [your field] to leverage my expertise in [your key skills]. Aiming to contribute to innovative projects at the intersection of [your interests] and practical problem-solving in fields such as [specific areas of interest].
    }
    \vspace{-2mm}
    
    
    
    \section{\textbf{Experience}}
    \vspace{-0.4mm}
      \resumeSubHeadingListStart
      \resumeSubheading
          {{Company A [\href{https://www.companya.com}{\faIcon{globe}}]}}{City, Country}
          {Job Title A}{Month Year - Month Year}
          \resumeItemListStart
            \item Developed [specific achievement] achieving [specific metric] in [specific area]
            \item Implemented [technology/method], enhancing [specific aspect] by [specific percentage]
            \item Conducted analysis on [specific data], identifying [key findings]
            \item Presented findings at [specific event], receiving [specific recognition]
          \resumeItemListEnd
      \resumeSubheading
        {Company B [\href{https://www.companyb.com}{\faIcon{globe}}]}{Remote}
        {Job Title B}{Month Year - Month Year}
        \resumeItemListStart
          \item Engineered a [specific system/model], improving [specific metric] by [percentage]
          \item Developed [specific tool/method], increasing [specific aspect] by [percentage]
          \item Implemented [specific system], reducing [specific metric] by [percentage]
          \item Conducted [specific test/analysis] to validate [specific aspect]
        \resumeItemListEnd
      \resumeSubHeadingListEnd
    \vspace{-6mm}
    
    \section{\textbf{Education}}
    \vspace{-0.4mm}
    \resumeSubHeadingListStart
    
    \resumeSubheading
    {University Name}{City, Country}
    {Degree Name}{Month Year - Month Year}
    \resumeItemListStart
    \item GPA: X.XX/4.00
    \resumeItemListEnd
    
    \resumeSubheading
    {College Name}{City, Country}
    {Pre-University Education}{Month Year}
    \resumeItemListStart
    \item Grade: XX.X\%
    \resumeItemListEnd
    
    \resumeSubheading
    {High School Name}{City, Country}
    {Secondary Education}{Month Year}
    \resumeItemListStart
    \item GPA: X.X/10
    \resumeItemListEnd
    
    \resumeSubHeadingListEnd
    \vspace{-6mm}
    
    \section{\textbf{Projects}}
    \vspace{-0.4mm}
    \resumeSubHeadingListStart
    
    \resumeProject
      {Project A: [Brief Description]}
      {Tools: [List of tools and technologies used]}
      {Month Year - Month Year}
      {{}[\href{https://github.com/your-username/project-a}{\textcolor{darkblue}{\faGithub}}]}
    \resumeItemListStart
      \item Developed [specific feature/system] for [specific purpose]
      \item Implemented [specific technology] for [specific goal], achieving [specific result]
      \item Created [specific component], ensuring [specific benefit]
      \item Applied [specific method] to analyze [specific aspect]
    \resumeItemListEnd
    
    \resumeProject
      {Project B: [Brief Description]}
      {Tools: [List of tools and technologies used]}
      {Month Year}
      {{}[\href{https://github.com/your-username/project-b}{\textcolor{darkblue}{\faGithub}}]}
    \resumeItemListStart
      \item Developed [specific model/system], achieving [specific metric]
      \item Implemented [specific feature], processing [specific volume] of data
      \item Created [specific visualization] for [specific purpose]
      \item Developed [specific component] for easy integration with [specific system]
    \resumeItemListEnd
    
    \resumeSubHeadingListEnd
    
    \section{\textbf{Patents and Publications} \hfill \textcolor{darkblue}{\scriptsize C=Conference, J=Journal, P=Patent, S=In Submission, T=Thesis}}
    \vspace{0.2mm}
    \small{
    \begin{enumerate}[leftmargin=*, labelsep=0.5em, align=left, widest={[\textbf{S.1}]}, itemindent=0em, label={\textbf{[\arabic*]}]}]
    \item[\textbf{[C.1]}] Your Name, et al. (Year). \href{https://doi.org/XX.XXXX/XXXXXXX.XXXX.XXXXXXX}{\textbf{Title of Conference Paper}}. In \textit{Name of Conference Proceedings}, pp. XX-XX. Publisher. Date, Location. DOI: XX.XXXX/XXXXXXX.XXXX.XXXXXXX
    
    \item[\textbf{[S.1]}] Your Name, et al. (Year). \textbf{Title of Submitted Paper}. Manuscript submitted for publication in \textit{Journal Name}.
    
    \item[\textbf{[P.1]}] Inventor 1, Your Name, Inventor 3, et al. (Year). \href{https://patentoffice.gov/patent/XXXXXXXXX}{\textbf{Title of Patent}}. Patent Office, Patent No. XXXXXXXXX. Registration Date: Date, Grant Date: Date, Publication Date: Date.
    
    \item[\textbf{[J.1]}] Author 1, Your Name, Author 3, et al. (Year). \href{https://doi.org/XX.XXXX/XXXXX.XXXX.XXXXXXX}{\textbf{Title of Journal Article}}. \textit{Journal Name}, Vol. XX, Issue X, pp. XXX-XXX. DOI: XX.XXXX/XXXXX.XXXX.XXXXXXX
    \end{enumerate}
    }
    
    \section{\textbf{Skills}}
    \vspace{-0.4mm}
     \resumeHeadingSkillStart
      \resumeSubItem{Programming Languages:}
        {Language 1, Language 2, Language 3, Language 4, Language 5}
      \resumeSubItem{Web Technologies:}
        {Technology 1, Technology 2, Technology 3, Technology 4, Technology 5}
      \resumeSubItem{Database Systems:}
        {Database 1, Database 2, Database 3}
      \resumeSubItem{Data Science \& Machine Learning:}
        {Tool 1, Tool 2, Tool 3, Tool 4, Tool 5, Tool 6}
    \resumeSubItem{Cloud Technologies:}
        {Cloud Platform 1, Cloud Platform 2, Cloud Platform 3}
      \resumeSubItem{DevOps \& Version Control:}
        {Tool 1, Tool 2, Tool 3, Tool 4, Tool 5}
      \resumeSubItem{Specialized Area:}
        {Skill 1, Skill 2, Skill 3, Skill 4}
      \resumeSubItem{Mathematical \& Statistical Tools:}
        {Tool 1, Tool 2, Tool 3, Tool 4, Tool 5}
      \resumeSubItem{Other Tools \& Technologies:}
        {Tool 1, Tool 2, Tool 3, Tool 4, Tool 5}
      \resumeSubItem{Research Skills:}{Skill 1, Skill 2, Skill 3, Skill 4, Skill 5, Skill 6}
     \resumeHeadingSkillEnd
    
    \section{\textbf{Honors and Awards}}
    \vspace{-0.4mm}
    \resumeSubHeadingListStart
    
    \resumeProject
      {Award Name A}
      {Awarding Institution/Organization}
      {Month Year}
      {{}[\href{https://award-link-a.com}{\textcolor{darkblue}{\faIcon{globe}}}]}
    \resumeItemListStart
      \item Brief description of the award and its significance
      \item Impact or recognition associated with the award
    \resumeItemListEnd
    
    \resumeProject
      {Award Name B}
      {Awarding Institution/Organization}
      {Month Year}
      {{}[\href{https://award-link-b.com}{\textcolor{darkblue}{\faIcon{globe}}}]}
    \resumeItemListStart
      \item Brief description of the award and its significance
      \item Impact or recognition associated with the award
    \resumeItemListEnd
    
    \resumeProject
      {Competition Achievement}
      {Competition Name, Organizing Body}
      {Month Year}
      {{}[\href{https://competition-link.com}{\textcolor{darkblue}{\faIcon{globe}}}]}
    \resumeItemListStart
      \item Specific achievement or rank in the competition
      \item Skills or abilities demonstrated through this achievement
    \resumeItemListEnd
    
    \resumeSubHeadingListEnd
    
    \vspace{-6mm}
    \section{\textbf{Leadership Experience}}
    \vspace{-0.4mm}
    \resumeSubHeadingListStart
    \resumeProject
      {Leadership Role A}
      {Organization/Institution Name}
      {Month Year - Month Year}
      {{}[\href{https://organization-a-link.com}{\textcolor{darkblue}{\faIcon{globe}}}]}
    \resumeItemListStart
      \item Key responsibility or achievement in this role
      \item Quantifiable impact or improvement made during tenure
      \item Initiative taken or project led
    \resumeItemListEnd
    
    \resumeProject
      {Leadership Role B}
      {Organization/Institution Name}
      {Month Year - Month Year}
      {{}[\href{https://organization-b-link.com}{\textcolor{darkblue}{\faIcon{globe}}}]}
    \resumeItemListStart
      \item Key responsibility or achievement in this role
      \item Quantifiable impact or improvement made during tenure
      \item Initiative taken or project led
    \resumeItemListEnd
    
    \resumeSubHeadingListEnd
    
    \vspace{-6mm}
    
    \section{\textbf{Volunteer Experience}}
    \vspace{-0.4mm}
    \resumeSubHeadingListStart
    \resumeProject
      {Volunteer Role A}
      {Organization Name}
      {Month Year - Month Year}
      {{}[\href{https://volunteer-org-a-link.com}{\textcolor{darkblue}{\faIcon{globe}}}]}
    \resumeItemListStart
      \item Key responsibility or contribution in this role
      \item Impact of your volunteer work
      \item Skills developed or applied during this experience
    \resumeItemListEnd
    
    \resumeProject
      {Volunteer Role B}
      {Organization Name}
      {Month Year - Present}
      {{}[\href{https://volunteer-org-b-link.com}{\textcolor{darkblue}{\faIcon{globe}}}]}
    \resumeItemListStart
      \item Key responsibility or contribution in this role
      \item Impact of your volunteer work
      \item Skills developed or applied during this experience
    \resumeItemListEnd
    
    \resumeSubHeadingListEnd
    \vspace{-6mm}
    
    \section{\textbf{Professional Memberships}}
    \vspace{-0.4mm}
    \resumeSubHeadingListStart
    \resumePOR{Professional Organization A}
        {, Membership ID: XXXXXXXX}
        {Month Year - Present}
    \resumePOR{Professional Organization B}
        {, \href{https://membership-certificate-link.com}{Membership ID: XXXXXXXX}}
        {Month Year - Present}
    \resumePOR{Professional Organization C}
        {, \href{https://membership-certificate-link.com}{Membership ID: XXXXXXXX}}
        {Month Year - Present}
    
    \resumeSubHeadingListEnd
    \vspace{-6mm}
    
    \section{\textbf{Certifications}}
    \vspace{-0.2mm}
    \resumeSubHeadingListStart
    \resumePOR{}{\href{https://certification-link-a.com}{
    \textbf{Certification A}
    }}{Month Year}
    \resumePOR{}{
    \textbf{Certifying Body:} {{\href{https://certification-link-b.com}{Certification B}}}}{Month Year}
    \resumePOR{}{
    \textbf{Certifying Body:} {{\href{https://certification-link-c.com}{Certification C}}}}{Month Year}
    \resumePOR{}{\href{https://certification-link-d.com}{
    \textbf{Certification D}
    }}{Month Year}
    
    \resumeSubHeadingListEnd
    \vspace{-6mm}
    
    \section{\textbf{Additional Information}}
    \vspace{-0.4mm}
    \small{
    \textbf{Languages:} Language A (Proficiency level), Language B (Proficiency level), Language C (Proficiency level)
    
    \textbf{Interests:} Interest 1, Interest 2, Interest 3, Interest 4
    }
    \vspace{-4mm}
    
    
    \section{\textbf{References}}
    \vspace{-0.2mm}
    \small{
    \begin{enumerate}[leftmargin=*,labelsep=2mm]
    \item \textbf{Reference Person 1}\\
       Job Title, Department\\
       Organization/Institution Name\\
       Email: email1@example.com\\
       Phone: +X-XXX-XXX-XXXX\\
       \textit{Relationship: [e.g., Thesis Advisor, Manager, etc.]}
    
    \item \textbf{Reference Person 2}\\
       Job Title, Department\\
       Organization/Institution Name\\
       Email: email2@example.com\\
       Phone: +X-XXX-XXX-XXXX\\
       \textit{Relationship: [e.g., Project Supervisor, Colleague, etc.]}
    
    \item \textbf{Reference Person 3}\\
       Job Title, Department\\
       Organization/Institution Name\\
       Email: email3@example.com\\
       Phone: +X-XXX-XXX-XXXX\\
       \textit{Relationship: [e.g., Mentor, Collaborator, etc.]}
    \end{enumerate}
    }
    
    \end{document}


<a id="org7123efc"></a>

### with photo at top

<https://www.overleaf.com/latex/templates/modern-cv-and-cover-letter-2015-version/sttkgjcysttn>

    %% start of file `template.tex'.
    %% Copyright 2006-2015 Xavier Danaux (xdanaux@gmail.com), 2020-2022 moderncv maintainers (github.com/moderncv).
    %
    % This work may be distributed and/or modified under the
    % conditions of the LaTeX Project Public License version 1.3c,
    % available at http://www.latex-project.org/lppl/.
    
    
    \documentclass[11pt,a4paper,sans]{moderncv}        % possible options include font size ('10pt', '11pt' and '12pt'), paper size ('a4paper', 'letterpaper', 'a5paper', 'legalpaper', 'executivepaper' and 'landscape') and font family ('sans' and 'roman')
    
    % moderncv themes
    \moderncvstyle{classic}                             % style options are 'casual' (default), 'classic', 'banking', 'oldstyle' and 'fancy'
    \moderncvcolor{blue}                               % color options 'black', 'blue' (default), 'burgundy', 'green', 'grey', 'orange', 'purple' and 'red'
    %\renewcommand{\familydefault}{\sfdefault}         % to set the default font; use '\sfdefault' for the default sans serif font, '\rmdefault' for the default roman one, or any tex font name
    %\nopagenumbers{}                                  % uncomment to suppress automatic page numbering for CVs longer than one page
    
    % adjust the page margins
    \usepackage[scale=0.75]{geometry}
    \setlength{\footskip}{136.00005pt}                 % depending on the amount of information in the footer, you need to change this value. comment this line out and set it to the size given in the warning
    %\setlength{\hintscolumnwidth}{3cm}                % if you want to change the width of the column with the dates
    %\setlength{\makecvheadnamewidth}{10cm}            % for the 'classic' style, if you want to force the width allocated to your name and avoid line breaks. be careful though, the length is normally calculated to avoid any overlap with your personal info; use this at your own typographical risks...
    
    % font loading
    % for luatex and xetex, do not use inputenc and fontenc
    % see https://tex.stackexchange.com/a/496643
    \ifxetexorluatex
      \usepackage{fontspec}
      \usepackage{unicode-math}
      \defaultfontfeatures{Ligatures=TeX}
      \setmainfont{Latin Modern Roman}
      \setsansfont{Latin Modern Sans}
      \setmonofont{Latin Modern Mono}
      \setmathfont{Latin Modern Math}
    \else
      \usepackage[T1]{fontenc}
      \usepackage{lmodern}
    \fi
    
    % document language
    \usepackage[english]{babel}  % FIXME: using spanish breaks moderncv
    
    % personal data
    \name{John}{Doe}
    \title{Résumé title}                               % optional, remove / comment the line if not wanted
    \born{4 July 1776}                                 % optional, remove / comment the line if not wanted
    \address{street and number}{postcode city}{country}% optional, remove / comment the line if not wanted; the "postcode city" and "country" arguments can be omitted or provided empty
    \phone[mobile]{+1~(234)~567~890}                   % optional, remove / comment the line if not wanted; the optional "type" of the phone can be "mobile" (default), "fixed" or "fax"
    \phone[fixed]{+2~(345)~678~901}
    \phone[fax]{+3~(456)~789~012}
    \email{john@doe.org}                               % optional, remove / comment the line if not wanted
    \homepage{www.johndoe.com}                         % optional, remove / comment the line if not wanted
    
    % Social icons
    \social[linkedin]{john.doe}                        % optional, remove / comment the line if not wanted
    \social[xing]{john\_doe}                           % optional, remove / comment the line if not wanted
    \social[twitter]{ji\_doe}                             % optional, remove / comment the line if not wanted
    \social[github]{jdoe}                              % optional, remove / comment the line if not wanted
    \social[gitlab]{jdoe}                              % optional, remove / comment the line if not wanted
    % \social[stackoverflow]{0000000/johndoe}            % optional, remove / comment the line if not wanted
    % \social[bitbucket]{jdoe}                           % optional, remove / comment the line if not wanted
    % \social[skype]{jdoe}                               % optional, remove / comment the line if not wanted
    % \social[orcid]{0000-0000-000-000}                  % optional, remove / comment the line if not wanted
    % \social[researchgate]{jdoe}                        % optional, remove / comment the line if not wanted
    % \social[researcherid]{jdoe}                        % optional, remove / comment the line if not wanted
    % \social[telegram]{jdoe}                            % optional, remove / comment the line if not wanted
    % \social[whatsapp]{12345678901}                     % optional, remove / comment the line if not wanted
    % \social[signal]{12345678901}                       % optional, remove / comment the line if not wanted
    % \social[matrix]{@johndoe:matrix.org}               % optional, remove / comment the line if not wanted
    % \social[googlescholar]{googlescholarid}            % optional, remove / comment the line if not wanted
    
    
    \extrainfo{additional information}                 % optional, remove / comment the line if not wanted
    \photo[64pt][0.4pt]{picture}                       % optional, remove / comment the line if not wanted; '64pt' is the height the picture must be resized to, 0.4pt is the thickness of the frame around it (put it to 0pt for no frame) and 'picture' is the name of the picture file
    \quote{Some quote}                                 % optional, remove / comment the line if not wanted
    
    % bibliography adjustments (only useful if you make citations in your resume, or print a list of publications using BibTeX)
    %   to show numerical labels in the bibliography (default is to show no labels)
    %\makeatletter\renewcommand*{\bibliographyitemlabel}{\@biblabel{\arabic{enumiv}}}\makeatother
    \renewcommand*{\bibliographyitemlabel}{[\arabic{enumiv}]}
    %   to redefine the bibliography heading string ("Publications")
    %\renewcommand{\refname}{Articles}
    
    % bibliography with mutiple entries
    %\usepackage{multibib}
    %\newcites{book,misc}{{Books},{Others}}
    %----------------------------------------------------------------------------------
    %            content
    %----------------------------------------------------------------------------------
    \begin{document}
    %\begin{CJK*}{UTF8}{gbsn}                          % to typeset your resume in Chinese using CJK
    %-----       resume       ---------------------------------------------------------
    \makecvtitle
    
    \section{Education}
    \cventry{year--year}{Degree}{Institution}{City}{\textit{Grade}}{Description}  % arguments 3 to 6 can be left empty
    \cventry{year--year}{Degree}{Institution}{City}{\textit{Grade}}{Description}
    
    \section{Master thesis}
    \cvitem{title}{\emph{Title}}
    \cvitem{supervisors}{Supervisors}
    \cvitem{description}{Short thesis abstract}
    
    \section{Experience}
    \subsection{Vocational}
    \cventry{year--year}{Job title}{Employer}{City}{}{General description no longer than 1--2 lines.\newline{}
    Detailed achievements:
    \begin{itemize}
    \item Achievement 1
    \item Achievement 2 (with sub-achievements)
      \begin{itemize}
      \item Sub-achievement (a);
      \item Sub-achievement (b), with sub-sub-achievements (don't do this!);
        \begin{itemize}
        \item Sub-sub-achievement i;
        \item Sub-sub-achievement ii;
        \item Sub-sub-achievement iii;
        \end{itemize}
      \item Sub-achievement (c);
      \end{itemize}
    \item Achievement 3
    \item Achievement 4
    \end{itemize}}
    \cventry{year--year}{Job title}{Employer}{City}{}{Description line 1\newline{}Description line 2\newline{}Description line 3}
    \subsection{Miscellaneous}
    \cventry{year--year}{Job title}{Employer}{City}{}{Description}
    
    \section{Languages}
    \cvitemwithcomment{Language 1}{Skill level}{Comment}
    \cvitemwithcomment{Language 2}{Skill level}{Comment}
    \cvitemwithcomment{Language 3}{Skill level}{Comment}
    \cvitemwithcomment{Language 4}{Skill level}{Comment}
    
    \section{Computer skills}
    \cvdoubleitem{category 1}{XXX, YYY, ZZZ}{category 4}{XXX, YYY, ZZZ}
    \cvdoubleitem{category 2}{XXX, YYY, ZZZ}{category 5}{XXX, YYY, ZZZ}
    \cvdoubleitem{category 3}{XXX, YYY, ZZZ}{category 6}{XXX, YYY, ZZZ}
    
    \section{Skill matrix}
    \cvitem{Skill matrix}{Alternatively, provide a skill matrix to show off your skills}
    %% Skill matrix as an alternative to rate one's skills, computer or other.
    
    %% Adjusts width of skill matrix columns.
    %% Usage \setcvskillcolumns[<width>][<factor>][<exp_width>]
    %% <width>, <exp_width> should be lengths smaller than \textwidth, <factor> needs to be between 0 and 1.
    %% Examples:
    % \setcvskillcolumns[5em][][]%    adjust first column. Same as \setcvskillcolumns[5em]
    % \setcvskillcolumns[][0.45][]%   adjust third (skill) column. Same as \setcvskillcolumns[][0.45]
    % \setcvskillcolumns[][][\widthof{``Year''}]%     adjust fourth (years) column.
    % \setcvskillcolumns[][0.45][\widthof{``Year''}]%
    % \setcvskillcolumns[\widthof{``Languag''}][0.48][]
    % \setcvskillcolumns[\widthof{``Languag''}]%
    
    %% Adjusts width of legend columns. Usage \setcvskilllegendcolumns[<width>][<factor>]
    %% <factor> needs to be between 0 and 1. <width> should be a length smaller than \textwidth
    %% Examples:
    % \setcvskilllegendcolumns[][0.45]
    % \setcvskilllegendcolumns[\widthof{``Legend''}][0.45]
    % \setcvskilllegendcolumns[0ex][0.46]% this is usefull for the banking style
    
    %% Add a legend if you are using \cvskill{<1-5>} command or \cvskillentry
    %% Usage \cvskilllegend[*][<post_padding>][<first_level>][<second_level>][<third_level>][<fourth_level>][<fifth_level>]{<name>}
    % \cvskilllegend % insert default legend without lines
    \cvskilllegend*[1em]{}% adjust post spacing
    % \cvskilllegend*{Legend}%  Alternatively add a description string
    %% adjust the legend entries for other languages, here German
    % \cvskilllegend[0.2em][Grundkenntnisse][Grundkenntnisse und eigene Erfahrung in Projekten][Umfangreiche Erfahrung in Projekten][Vertiefte Expertenkenntnisse][Experte\,/\,Spezialist]{Legende}
    
    %% Alternative legend style with the first three skill levels in one column
    %% Usage \cvskillplainlegend[*][<post_padding>][<first_level>][<second_level>][<third_level>][<fourth_level>][<fifth_level>]{<name>}
    % \setcvskilllegendcolumns[][0.6]%  works for classic, casual, banking
    % \setcvskilllegendcolumns[][0.55]%  works better for oldstyle and fancy
    % \cvskillplainlegend{}
    % \cvskillplainlegend[0.2em][Grundkenntnisse][Grundkenntnisse und eigene Erfahrung in Projekten][Umfangreiche Erfahrung in Projekten][Vertiefte Expertenkenntnisse][Experte/Guru]{Legende}
    
    %% Add a head of the skill matrix table with descriptions.
    %% Usage \cvskillhead[<post_padding>][<Level>][<Skill>][<Years>][<Comment>]%
    \cvskillhead[-0.1em]%   this inserts the standard legend in english and adjust padding
    %% Adjust head of the skill matrix for other languages
    % \cvskillhead[0.25em][Level][F\"ahigkeit][Jahre][Bemerkung]
    
    %% \cvskillentry[*][<post_padding>]{<skill_cathegory>}{<0-5>}{<skill_name>}{<years_of_experience>}{<comment>}%
    %% Example usages:
    \cvskillentry*{Language:}{3}{Python}{2}{I'm so experienced in Python and have realised a million projects. At least.}
    \cvskillentry{}{2}{Lilypond}{14}{So much sheet music! Man, I'm the best!}
    \cvskillentry{}{3}{\LaTeX}{14}{Clearly I rock at \LaTeX}
    \cvskillentry*{OS:}{3}{Linux}{2}{I only use Archlinux btw}% notice the use of the starred command and the optional
    \cvskillentry*[1em]{Methods}{4}{SCRUM}{8}{SCRUM master for 5 years}
    %% \cvskill{<0-5>} command
    % \cvitem{\textbackslash{cvskill}:}{Skills can be visually expressed by the \textbackslash{cvskill} command, e.g. \cvskill{2}}
    
    \section{Interests}
    \cvitem{hobby 1}{Description}
    \cvitem{hobby 2}{Description}
    \cvitem{hobby 3}{Description}
    
    \section{Extra 1}
    \cvlistitem{Item 1}
    \cvlistitem{Item 2}
    \cvlistitem{Item 3. This item is particularly long and therefore normally spans over several lines. Did you notice the indentation when the line wraps?}
    
    \section{Extra 2}
    \cvlistdoubleitem{Item 1}{Item 4}
    \cvlistdoubleitem{Item 2}{Item 5\cite{book2}}
    \cvlistdoubleitem{Item 3}{Item 6. Like item 3 in the single column list before, this item is particularly long to wrap over several lines.}
    
    \section{References}
    \begin{cvcolumns}
      \cvcolumn{Category 1}{\begin{itemize}\item Person 1\item Person 2\item Person 3\end{itemize}}
      \cvcolumn{Category 2}{Amongst others:\begin{itemize}\item Person 1, and\item Person 2\end{itemize}(more upon request)}
      \cvcolumn[0.5]{All the rest \& some more}{\textit{That} person, and \textbf{those} also (all available upon request).}
    \end{cvcolumns}
    
    % Publications from a BibTeX file without multibib
    %  for numerical labels: \renewcommand{\bibliographyitemlabel}{\@biblabel{\arabic{enumiv}}}% CONSIDER MERGING WITH PREAMBLE PART
    %  to redefine the heading string ("Publications"): \renewcommand{\refname}{Articles}
    \nocite{*}
    \bibliographystyle{plain}
    \bibliography{publications}                        % 'publications' is the name of a BibTeX file
    
    % Publications from a BibTeX file using the multibib package
    %\section{Publications}
    %\nocitebook{book1,book2}
    %\bibliographystylebook{plain}
    %\bibliographybook{publications}                   % 'publications' is the name of a BibTeX file
    %\nocitemisc{misc1,misc2,misc3}
    %\bibliographystylemisc{plain}
    %\bibliographymisc{publications}                   % 'publications' is the name of a BibTeX file
    
    \clearpage
    %-----       letter       ---------------------------------------------------------
    % recipient data
    \recipient{Company Recruitment team}{Company, Inc.\\123 somestreet\\some city}
    \date{January 01, 1984}
    \opening{Dear Sir or Madam,}
    \closing{Yours faithfully,}
    \enclosure[Attached]{curriculum vit\ae{}}          % use an optional argument to use a string other than "Enclosure", or redefine \enclname
    \makelettertitle
    
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper neque sit amet lectus facilisis sed luctus nisl iaculis. Vivamus at neque arcu, sed tempor quam. Curabitur pharetra tincidunt tincidunt. Morbi volutpat feugiat mauris, quis tempor neque vehicula volutpat. Duis tristique justo vel massa fermentum accumsan. Mauris ante elit, feugiat vestibulum tempor eget, eleifend ac ipsum. Donec scelerisque lobortis ipsum eu vestibulum. Pellentesque vel massa at felis accumsan rhoncus.
    
    Suspendisse commodo, massa eu congue tincidunt, elit mauris pellentesque orci, cursus tempor odio nisl euismod augue. Aliquam adipiscing nibh ut odio sodales et pulvinar tortor laoreet. Mauris a accumsan ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse vulputate sem vehicula ipsum varius nec tempus dui dapibus. Phasellus et est urna, ut auctor erat. Sed tincidunt odio id odio aliquam mattis. Donec sapien nulla, feugiat eget adipiscing sit amet, lacinia ut dolor. Phasellus tincidunt, leo a fringilla consectetur, felis diam aliquam urna, vitae aliquet lectus orci nec velit. Vivamus dapibus varius blandit.
    
    Duis sit amet magna ante, at sodales diam. Aenean consectetur porta risus et sagittis. Ut interdum, enim varius pellentesque tincidunt, magna libero sodales tortor, ut fermentum nunc metus a ante. Vivamus odio leo, tincidunt eu luctus ut, sollicitudin sit amet metus. Nunc sed orci lectus. Ut sodales magna sed velit volutpat sit amet pulvinar diam venenatis.
    
    Albert Einstein discovered that $e=mc^2$ in 1905.
    
    \[ e=\lim_{n \to \infty} \left(1+\frac{1}{n}\right)^n \]
    
    \makeletterclosing
    
    %\clearpage\end{CJK*}                              % if you are typesetting your resume in Chinese using CJK; the \clearpage is required for fancyhdr to work correctly with CJK, though it kills the page numbering by making \lastpage undefined
    \end{document}
    
    
    %% end of file `template.tex'.


<a id="org4832f7e"></a>

### best AltaCV template

Best <https://www.aidanscannell.com/post/org-mode-resume/>

-   <https://github.com/aidanscannell/my-org-resume>
-   LaTeX AltaCV template.

alternative <https://jherrlin.github.io/posts/resume-altacv-latex/>

Clone AltaCV template


<a id="org721f173"></a>

## publishing

Many publishers of technical literature have LaTeX templates to comply with their style guide.
export options:

-   \#+title: the document title.
-   \#+uid: a unique ID of the document, otherwise known as URI, could be a website or ISBN number.
-   \#+date: the date of the document.
-   \#+author: the document author or editor, the creator in the EPUB spec


<a id="org7a1c7d2"></a>

# Outline mode

Org mode was originally the author's extensions to Outline mode, and grew, and grew, and grew.  Even today, org-mode is
  derived from outline-mode.

first line of file:

    ;-*- eval: (outline-minor-mode 1) ; outline-regexp: ";; \\-+" -*-

You can configure it to use a header format that's compatible with your program syntax, and many major modes do so, by
  setting the outline-regexp variable to a regexp that matches the start of a header. For example, this is the default
  value in Emacs Lisp mode:

    ";;;\\(;* [^ \t\n]\\|###autoload\\)\\|("

i.e. section headers start with three or more semicolons and a single space

<https://emacs.stackexchange.com/questions/3143/can-i-use-org-mode-to-structure-my-emacs-or-other-el-configuration-file/3416#3416>


<a id="org53019be"></a>

# Org agenda

provides a convenient way of tracking your projects and managing your calendar.

terms:

-   Agenda Dispatcher - view selector


<a id="org1b3b81b"></a>

## keys


<a id="orgf3250b7"></a>

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


<a id="orga9d5672"></a>

### in agenda:

-   f/b/j		navigation
-   D		toggle diary
-   d/w/l		day/week/log view
-   i		insert diary
-   SPC/TAB/RET	go to todo line in agenda file (diary open buffer required)
-   t		Change the TODO state of the item everywhere
-   C-k		kill entry
-   $		archive to ~/<original<sub>file</sub>><sub>archive</sub>
-   c		calendar
-   r/g		recreate
-   o		Delete other windows.

-   notes ~/.notes


<a id="orgabe1633"></a>

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


<a id="orgff11bc9"></a>

## date, timestamp and timer

-   C-c <           org-date-from-calendar	insert current <>
-   C-c .           org-time-stamp 		select date <>
-   C-c !           org-time-stamp-inactive	select date []
-   C-c C-c 	fix timestamp

timer:

-   C-c C-x ,       org-timer-pause-or-continue
-   C-c C-x -       org-timer-item
-   C-c C-x .       org-timer		Insert current timer value after start
-   C-c C-x 0       org-timer-start	Start or reset the relative timer.
-   C-c C-x ;       org-timer-set-timer	how much timer set? when time left it try to use dbus
-   C-c C-x \_       org-timer-stop

-   C-c C-y         org-evaluate-time-range

<https://orgmode.org/manual/Timers.html>


<a id="orgca909f1"></a>

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


<a id="org6a94fd5"></a>

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


<a id="org0b82cb3"></a>

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


<a id="orgdd807ef"></a>

## example

    #+PRIORITIES: 1 4 1
    #+TODO: TODO(t!) STRD(t!/!) WAIT(w) | DONE(d!) CNLD(c@)
    #+TAGS: airflow(i) superset(s) pipeline(p) Анатолий(a) Александр(l) Марат(m)
    # C-c C-c - set tag
    # C-c C-s - schedule
    :* my work
    :** TODO add pipeline to airflow                     :airflow:pipeleine:
    - State "STRD"       from "WAIT"       [2022-06-06 Mon 10:34]
    - State "WAIT"       from "STRD"       [2022-06-06 Mon 10:34]
    - State "STRD"       from "TODO"       [2022-06-06 Mon 10:34]
    - State "TODO"       from              [2022-06-06 Mon 10:34]
    - State "STARTED"    from "TODO"       [2022-06-06 Mon 10:32]
    - State "TODO"       from              [2022-06-06 Mon 10:32]


<a id="org1d74632"></a>

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


<a id="orgf9284d7"></a>

# org-roam and denote - note taking

non-hierarchical note-taking <https://github.com/org-roam/org-roam>

links between files with notes <https://github.com/protesilaos/denote>


<a id="orgc3b9675"></a>

# holidays

<file:///usr/share/emacs/29.3/lisp/calendar/holidays.el>


<a id="org72d761d"></a>

## integration with calendar.el

if variable **diary-show-holidays-flag** is t <file:///usr/share/emacs/29.3/lisp/calendar/calendar.el>
**calendar-check-holidays** function <file:///usr/share/emacs/29.3/lisp/calendar/holidays.el>
is used to get holidays, use **calendar-holidays** variable <file:///usr/share/emacs/29.3/lisp/calendar/holidays.el>


<a id="org805c295"></a>

## TODO russian holidays

<https://github.com/grafov/russian-holidays>
<https://www.officeholidays.com/countries/russia/2024/>

    (eval-when-compile
      (require 'holidays))
    (defvar russian-holidays
      '(
        (holiday-islamic 9 1 "Ramadan Begins")


<a id="org46c876a"></a>

## easter

-   holiday-easter-etc - used in holiday-christian-holidays
-   holiday-greek-orthodox-easter - used in holiday-christian-holidays


<a id="org4732731"></a>

# icalendar export/import

-   <https://orgmode.org/manual/Exporting-Agenda-Views.html>
-   <https://www.gnu.org/software/emacs/manual/html_node/emacs/Importing-Diary.html>

-   icalendar-import-file

files:

-   <file:///usr/share/emacs/29.3/lisp/calendar/icalendar.el>
-   export <file:///usr/share/emacs/29.3/lisp/org/ox-icalendar.el>

import

-   icalendar-import-file <file:///usr/share/emacs/29.3/lisp/calendar/icalendar.el>


<a id="orgd5d2bae"></a>

# appt - reminder for diary


<a id="org6797760"></a>

## appt reminder

-   M-x appt-activate
-   M-x appt-add 		add reminder without diary and todo files
-   appt-check - internal func which checks diary and decide show message or not


<a id="org5c45d90"></a>

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


<a id="org8acb245"></a>

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


<a id="orga2f4a0e"></a>

### reminder

sudo -u u DISPLAY=:0 notify-send &#x2013;expire-time 3000 -i emacs "hay"

    emacs -batch -l ~/.emacs -eval '(org-batch-agenda "a" org-agenda-include-diary t diary-file "/home/u/.emacs.d/diary")'

2>/dev/null

appt:

-   (setq appt-disp-window-function  (function psachin/appt-display))

<https://orgmode.org/manual/Extracting-Agenda-Information.html>

appt-disp-window-function <https://psachin.gitlab.io/emacs_diary_desktop_notification.html>


<a id="org11256de"></a>

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


<a id="orga0c540d"></a>

# calendar mode and diary

-   M-x calendar


<a id="org54c8fb3"></a>

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


<a id="org53cf436"></a>

## working

calendar -> calendar-basic-setup


<a id="orgdbc1792"></a>

## diary


<a id="org90842ec"></a>

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


<a id="org2913a51"></a>

# hidepw-mode - minor mode

allow to hide passwords.

activation: ; -**- mode: Org ; eval: (hidepw-mode 1) -**-


<a id="orge1cfaba"></a>

## how it works

it sets up \`font-lock-add-keywords'


<a id="org8b4bec0"></a>

## my modification for compatibility with org-mode:

    (setq hidepw-patterns '("\\(password\\|pass\\): \\(.+\\)$"))
    
    (advice-add 'hidepw-font-lock-keywords :override
      (lambda ()
        (mapcar (lambda (pat) `(,pat 2 (hidepw-render)))
              `(,@hidepw-patterns ,@(when hidepw-hide-first-line '("\\`\\(.*\\)$"))))
        )
      )


<a id="org74c6e76"></a>

# ob-http - REST client

-   ob-http <https://github.com/zweifisch/ob-http>
    -   <https://www.youtube.com/watch?v=tGgat6XJ2tk>
-   restclient (not installing from MELP) <https://github.com/pashky/restclient.el>
-   see [44.13](#org1cdd6bb)


<a id="org476e4d1"></a>

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


<a id="org4b88f79"></a>

## examples


<a id="orgb72346c"></a>

### get ip

    GET ifconfig.co/ip

    curl -A "wget" ifconfig.co/ip


<a id="orgba25d63"></a>

### http source block

    GET https://api.github.com/repos/zweifisch/ob-http/languages
    Accept: application/vnd.github.moondragon+json


<a id="orgaba7045"></a>

### json source block

    #+BEGIN_SRC http :pretty
    POST http://httpbin.org/post
    Content-Type: application/json
    
    {
      "key": "value"
    }

\#+end<sub>src</sub>


<a id="orge27cb75"></a>

### form submit

    PATCH http://httpbin.org/patch
    
    key=value&foo=value


<a id="orgf69b848"></a>

### varibale

    POST http://httpbin.org/post
    Content-Type: application/json
    
    {
        "auth": {
            "name": "${name}",
            "password": "${password}"
        }
    }


<a id="org7ee770d"></a>

### properties

    POST /post
    Content-Type: application/json
    X-Auth-Token: ${token}


<a id="orgd389e5e"></a>

## require

    (org-babel-do-load-languages
     'org-babel-load-languages
     '((emacs-lisp . t)
       (http . t)))


<a id="orgd152556"></a>

# Version Control

-   <https://www.emacswiki.org/emacs/CategoryVersionControl>
-   old rus <https://alexott.net/ru/writings/emacs-vcs/>


<a id="orgeabf4eb"></a>

## VC

-   <https://www.gnu.org/software/emacs/manual/html_node/emacs/Version-Control.html>
-   article <https://lgfang.github.io/mynotes/emacs/emacs-vc.html>
-   article <http://xahlee.info/emacs/emacs/emacs_version_control.html>

places

-   file-visiting buffer
-   Dired buffer
-   VC Directory buffer;


<a id="orgb73e521"></a>

### terms

-   **registered:** file under version control
-   **repository:** stores present state and its change history
-   **work file:** The copy of a version-controlled file that you actually edit
-   **commit (or check in):** records the changes in the repository, along with a descriptive log entry.
-   **working tree:** A directory tree of work files
-   **revision:** Each commit creates.
-   **version control log:** commits


<a id="orgf5fff45"></a>

### keys

-   C-x v v (vc-next-action) Perform the next appropriate version control operation on the current VC fileset. perform the
    next logical control operation on file
-   C-x v i	(vc-register) Register the visited file for version control.

Examining And Comparing Old Revisions

-   C-x v =	(vc-diff) Compare the work file with the versions. With a prefix argument, prompt for two revisions.
-   M-x vc-ediff
-   C-x v D	vc-root-diff &#x2013; Compare the entire working tree to the revision you started from.
-   C-x v ~	vc-revision-other-window &#x2013; Prompt for a revision of the current file, and visit it in a separate buffer.
-   C-x v g	vc-annotate &#x2013; Display an annotated version of the current file: for each line, show the latest revision in which it was modified.
-   C-x v u	vc-revert-buffer &#x2013; undo checkout
-   C-x v c	vc-cancel-version &#x2013; delete the latest revision (often it makes more sense to look at an old revision and check that in again!)
-   C-x v d	vc-directory &#x2013; show all files which are not up to date
-   C-x v g	vc-annotate &#x2013; show when each line in a tracked file was added and by whom
-   C-x v s     vc-create-snapshot &#x2013; tag all the files with a symbolic name
-   C-x v r     vc-retrieve-snapshot &#x2013; undo checkouts and return to a snapshot with a symbolic name
-   M-x vc-resolve-conflicts &#x2013; pop up an ediff-merge session on a file with conflict markers

log

-   C-x v l	(vc-print-log) Display the change history for the current fileset.
-   C-x v a     vc-update-change-log &#x2013; update ChangeLog
-   C-x v L	(vc-print-root-log) Display the change history for the current repository.
-   C-x v b l	(vc-print-branch-log) Display the change history for another branch.
-   C-x v I	(vc-log-incoming) Display the changes that a “pull” operation will retrieve .
-   C-x v O	(vc-log-outgoing) Display the changes that will be sent by the next “push” operation.
-   C-x v h	(vc-region-history) Display the history of changes made in the region of file visited by the current buffer.
-   M-x vc-log-search RET Search the change history for a specified pattern.

branches:

-   C-x v b s	vc-switch-branch &#x2013;   for centralized VC use C-u C-x v v
-   C-x v +	vc-update or vc-pull
-   C-x v P	vc-push

next

-   registering it with a version control system
-   committing it
-   unlocking it
-   merging changes into it.


<a id="orgc9ba591"></a>

### vc-annotate

-   Red text is new
-   blue is old
-   intermediate colors indicate intermediate ages.
    
    If the variable **vc-annotate-background-mode** is non-nil, the colors expressing the age of each line are applied to the
    background color, leaving the foreground at its default color.

-   v	vc-annotate-toggle-annotation-visibility
-   D	vc-annotate-show-changeset-diff-revision-at-line
-   n/p	vc-annotate-next-revision vc-annotate-prev-revision
-   j	vc-annotate-revision-at-line
-   f	vc-annotate-find-revision-at-line - open file with revision at line in another window


<a id="org1fd5a7a"></a>

### vc-dir

C-x v d &#x2013; Show status of changed files. &#x2013; in major mode **vc-dir-mode**

-   【m】 → mark the file on current line.
-   【u】 → unmark a file.
-   【M】 → mark all files of the same state.
-   【U】 → unmark all files of the same state.

-   【i】 → vc-register (like git add)
-   【P】 → vc-push (like git push)
-   【+】 → vc-update (like git pull)
-   【=】 → vc-diff (like git diff)


<a id="orgfceb27b"></a>

### usage - change branch + pull

check:

-   C-x v L	vc-print-root-log
-   C-x v b l	vc-print-branch-log
-   C-x v b s	vc-switch-branch
-   C-x v +	vc-update or vc-pull
-   C-x v m	vc-merge


<a id="org1cc54c7"></a>

### usage - push changes

-   C-x v O	vc-log-outgoing &#x2013; Display the changes that will be sent by the next “push” operation.
-   C-x v i	vc-register &#x2013; Similar to git add


<a id="orgd43bd61"></a>

## Magit

You see: 1) HEAD commit info 2) Recent commits.

-   C-x g - main screen
-   ? - keys help
-   q - change buffer
-   TAB -
-   C-m/RET
-   e - ediff, Alt+Tab z - to exit


<a id="org0a4ae2f"></a>

### conflict resolution:

1.  select file listed in the "Unstaged changes" and/or "Staged changes" sections. They are prefixed with the word
    "unmerged", which in this context essentially is a synonym for "unresolved".
2.  smerge-mode -
    -   C-c ^ C-h		for keys
    -   C-c ^ n		smerge-next
    -   C-c ^ m		choose head
    -   C-c ^ o		keep the version that follows "|||||||"
    -   C-c ^ n		smerge-next - to move to the next conflicting area in the same file.
    -   C-c ^ p		smerge-prev
    -   C-c ^ RET       smerge-keep-current
    -   C-c ^ l         smerge-keep-lower
    -   C-c ^ m         smerge-keep-upper
    -   C-c ^ a         smerge-keep-all

To resolve conflicts in a file using Ediff press e while point is on such a file in the status buffer.


<a id="orgcec498f"></a>

### links

-   Magit really is “Git at the speed of thought” <https://www.youtube.com/watch?v=INTu30BHZGk>
-   <https://www.masteringemacs.org/article/introduction-magit-emacs-mode-git>


<a id="orge556323"></a>

# cua-mode

-   C-x, C-c, C-v, and C-z - copy, undo
-   C-x C-c still work

-   activates Delete-Selection mode (to disable cua-delete-selection to nil):
    -   when there is active region (see [7](#org3d81994)) - any key will erase region
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


<a id="orgbe5ea3e"></a>

# Bookmarks mode

-   M-x list-bookmarks (C-x r l) – list your bookmarks
-   M-x bookmark-set or bookmark-set-no-overwrite (C-x r m) - bookmark a folder/file and a cursor postion
-   M-x bookmark-jump (C-x r b) -  jump to a bookmark - you should bookmarked at least one file to go to that file
-   M-x bookmark-save - save to file ~/.emacs.d/bookmarks

bookmark-save


<a id="orgcf75087"></a>

# recentf mode - recent visited files

create file .emacs.d/recentf

M-x recentf-mode

M-x recentf - to open recent file


<a id="orgfc78c0e"></a>

# grip-mode

require grip command

pip grip install

-   grip==4.6.1 &#x2013;hash=sha256:a5e6ac48cd253892f0fbd0aaef3f74fe8169d8ed3d94a2e9be6bf1540e008e9f
-   path-and-address==2.0.1 &#x2013;hash=sha256:e96363d982b3a2de8531f4cd5f086b51d0248b58527227d43cf5014d045371b7


<a id="orgbd0d946"></a>

## reqs

Requirement already satisfied: Flask>=0.10.1 in ./.local/lib/python3.8/site-packages (from grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (1.1.4)
Requirement already satisfied: Markdown>=2.5.1 in ./.local/lib/python3.8/site-packages (from grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (3.3.4)
Requirement already satisfied: Pygments>=1.6 in ./.local/lib/python3.8/site-packages (from grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (2.8.1)
Requirement already satisfied: Werkzeug>=0.7 in ./.local/lib/python3.8/site-packages (from grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (1.0.1)
Requirement already satisfied: docopt>=0.4.0 in *usr/lib/python3/dist-packages (from grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (0.6.2)
Requirement already satisfied: requests>=2.4.1 in .*.local/lib/python3.8/site-packages (from grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (2.25.1)
Requirement already satisfied: Jinja2<3.0,>=2.10.1 in ./.local/lib/python3.8/site-packages (from Flask>=0.10.1->grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (2.11.3)
Requirement already satisfied: click<8.0,>=5.1 in ./.local/lib/python3.8/site-packages (from Flask>=0.10.1->grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (7.1.2)
Requirement already satisfied: itsdangerous<2.0,>=0.24 in ./.local/lib/python3.8/site-packages (from Flask>=0.10.1->grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (1.1.0)
Requirement already satisfied: idna<3,>=2.5 in ./.local/lib/python3.8/site-packages (from requests>=2.4.1->grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (2.10)
Requirement already satisfied: urllib3<1.27,>=1.21.1 in ./.local/lib/python3.8/site-packages (from requests>=2.4.1->grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (1.25.11)
Requirement already satisfied: chardet<5,>=3.0.2 in *usr/lib/python3/dist-packages (from requests>=2.4.1->grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (3.0.4)
Requirement already satisfied: certifi>=2017.4.17 in .*.local/lib/python3.8/site-packages (from requests>=2.4.1->grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (2020.12.5)
Requirement already satisfied: MarkupSafe>=0.23 in ./.local/lib/python3.8/site-packages (from Jinja2<3.0,>=2.10.1->Flask>=0.10.1->grip==4.6.1->-r req<sub>grip.txt</sub> (line 1)) (1.1.1)


<a id="orgdd998c7"></a>

# image-mode

    (setq auto-mode-alist
              (append auto-mode-alist
                      '(("\\.jpg\\'" . image-mode)
                        ("\\.png\\'" . image-mode)
                        ("\\.gif\\'" . image-mode))))


<a id="orgec6ff08"></a>

# markdown-mode

-   C-c C-l/i	insert link/image
-   C-c C-s	styling text
-   C-c C-x	toggle commands
    -   TAG	toggle-inline-images
    -   RET	toggle-markup-hiding
-   C-c TAB		markdown-insert-image
-   C-c </>	shiftint text left/right
-   C-c C-s c/C	markdown-insert-code/block
-   C-c C-h	show list of keys


<a id="orgd981011"></a>

# artistic mode (draw mode)


<a id="orgb54887f"></a>

## base

ditta to convert to image from org src blocks

-   C-c C-c 	artist-mode-off 	Exit artist mode.
-   C-c C-r 	draw rectangle

-   M-x describe-mode  - to get help for artistic mode

narrowing is usefull:

-   C-x n e   # narrow to an element
-   C-x n w   # widen back to the whole page

steps:

1.  narrow to
    -   C-x n b         org-narrow-to-block
    -   C-x n e         org-narrow-to-element
    -   C-x n s         org-narrow-to-subtree
2.  select type of line: M-x artistic-select-op-line
3.  type RET(enter) to start or select direction of line
4.  type RET(enter) to finish or chararter to insert in direction
5.  C-u RET to stop drawing
6.  < or > to toggle arrows for last line
7.  C-x n w         widen

useful:

-   artist-select-op-poly-line (C-c C-a p) - several peaces line
-   artist-select-op-straight-poly-line (C-c C-a P) - more beautiful several peaces line
-   artist-select-op-rectangle (C-c C-a r)
-   artist-select-op-ellipse (C-c C-a e)

    
              C-c `
               \   C-c ^ C-c '
                \   |    /
                 \  |   /
                  \ |  /
                   \| /
    C-c < ----------/-------------C-c >
                   /|\
                  / | \
                 /  |  \
                /   |   \
               /    |    C-c \
              /   C-c .
          C-c /


<a id="orgec45aee"></a>

## draw shapes

-   C-c C-a f  artist-select-op-flood-fill  Select flood fill as the operation.
-   C-c C-a C-k  artist-select-op-cut-rectangle  Draw a rectangle around an area, then cut.
-   C-c C-a M-w  artist-select-op-copy-rectangle Draw a rectangle around an area, then copy.
-   C-c C-a C-y artist-select-op-paste Paste what you copied wherever you click the mouse.
-   C-c C-a v  artist-select-op-vaporize-line Erase a line you select (literal line; not a line in the file).
-   C-c C-a C-d artist-select-op-erase-char Set operation to erase (use the mouse as your eraser).
-   C-c C-a S  artist-select-op-spray-can Set operation to spray can.
-   C-c C-a e artist-select-op-ellipse Draw ellipses.
-   C-c C-a p artist-select-op-poly-line Draws poly-lines
-   C-c C-a r artist-select-op-rectangle Draw rectangles.
-   C-c C-a l artist-select-op-line Draw lines.
-   C-c C-a C-r artist-toggle-rubber-banding If on (the default), show shape while stretching; if not, mark end-points.
-   C-c C-a C-l artist-select-line-char Select character to use when drawing lines (- is the default).
-   C-c C-a C-f  artist-select-fill-char Select character to fill shapes with (Space is the default).


<a id="org7cb4cdc"></a>

## todo

-   create testing function that open new buffer and write lines
-   replace - with \_ in artist-select-op-line


<a id="org26283ad"></a>

## other drawing modes

<https://github.com/misohena/el-easydraw>
requrements:

-   Image support
-   SVG support
-   gzip and gunzip(or zlib support)
-   libxml support


<a id="org1622ccd"></a>

## links

-   <https://www.lysator.liu.se/~tab/artist/>
-   <http://dinasis.com/oliver/Learning_GNU_Emacs/gnu3-CHP-7-SECT-6.html>


<a id="org827a457"></a>

# editorconfig

<https://github.com/editorconfig/editorconfig-emacs/>

    (require 'editorconfig)
    (editorconfig-mode 1) ; EditorConfig properties will be loaded and applied to the new buffers automatically when visiting files.


<a id="org471d5d1"></a>

# templating and expanding

Emacs already had two builtin templating modules: Skeleton and Tempo.

Tempo looked simpler


<a id="orgc425e25"></a>

## Tempo

-   Strings are inserted in the buffer.
-   The n symbol causes the insertion of a new line character
-   The > symbol tells Emacs to indent the current line according to the rules of the major mode of the buffer.
-   The p forms cause Tempo to ask the user for values to insert. Note that you need to set tempo-interative to t.

<https://www.n16f.net/blog/templating-in-emacs-with-tempo/>


<a id="org9ae48d6"></a>

## skeleton and abbrev <a id="orgfcdb255"></a>

Skeletons are feature, where various atoms directly perform either actions on the current buffer or rudimentary flow
 control mechanisms.

two ways:

-   use a key binding for every skeleton command
-   define an abbreviation that will expand into the skeleton (abbrev-mode must be activated)

steps:

1.  define skeleton - (difine-skeleton ) lisp atom
2.  define abbreviation
3.  activate abbreviation (idk why but they work with disabled mode)
4.  type abbreviation and expand it with key C-x '

Yasnippet - another third-party library for templates

may be saved to ~/.emacs.d/abbrev<sub>defs</sub>

Abbrevs expansion only works for last word unles you set mark with M-'. So you should insert space before abbrev.


<a id="org930078b"></a>

### abbrev-mode

-   M-x list-abbrevs - saves to .emacs.d/abbrev<sub>defs</sub> - good for testing

1.  links

    <https://www.gnu.org/software/emacs/manual/html_node/emacs/Abbrevs.html>


<a id="orgafd38b1"></a>

### key binded skeleton example

    (define-skeleton hello-world-skeleton
      "Write a greeting"
      "Type name of user: "
      "hello, " str "!")
    
    (global-set-key "\C-cl" 'hello-world-skeleton)
    ;; Instead of strings you can use Lisp expressions, whose return values will be used in the text.


<a id="orgddf091e"></a>

### abbrev skeletons

    (define-abbrev fortran-mode-abbrev-table ";ife"
      "" fortran-skeleton-if-else-endif)
    
    (define-skeleton fortran-skeleton-if-else-endif
      "Insert an if - else - end if region" nil
      > "if (" _ ") then" \n
      -3 "else" \n
      -3 "end if")
    
    (setq skeleton-end-hook nil)


<a id="org902e30d"></a>

### org-tempo replacement

    (define-skeleton example
      "Write a greetings exaple"
      ""
      "greetings!"
      )
    (define-skeleton org-tempo-src
      "org-tempo replacement"
      ""
      "#+begin_src"
      "\n\n"
      "#+end_src"
      )
    ;; skeleton
    (define-abbrev-table 'org-mode-abbrev-table
       '(
          ("greetings" "" example :count 1)
          ("1s" "" org-tempo-src :count 1)
          )
      )


<a id="org45c8e4d"></a>

### company

company - text completion framework.

Sequence of applying abbreviations defined by company-backends from company-safe-backends

    (setq company-backends
          '((company-files
             company-keywords
             company-capf
             company-yasnippet
            )
            (company-abbrev company-dabbrev)))


<a id="orgd02a4b7"></a>

### links

<https://www.gnu.org/software/emacs/manual/html_node/autotype/index.html>


<a id="orgdddfdb2"></a>

## HippieExpand hippie-exp.el

Dynamic Abbrev – zero relation to Abbrevs.

Hippie Expand - looks at the word before point and tries expand-abbrev, dabbrev-expand or fixed list.

C-h v hippie-expand-try-functions-list


<a id="orga1981d3"></a>

# CSV

csv-mode:  require install!

-   M-x csv-align-mode or M-x csv-align-filds
-   M-x csv-sort-fields
-   csv-separators, default: ("," "	")
-   keys: Tab, S-Tab - navigation by columns

useful:

-   M-x toggle-truncate-lines

native: Simple Emacs Spreadsheet ses-mode - uses .ses format. Require programming.

-   can input any tab-delimited data.


<a id="orgcaee8e3"></a>

# TODO Spreadsheeds - emacsmirror/dismal

<https://acs.ist.psu.edu/projects/dismal/dismal.html>


<a id="orgefebf94"></a>

# preconfigured Emacs distributions

-   <https://en.wikipedia.org/wiki/MicroEMACS>
-   UEmacs is MicroEmacs from Torvalds <https://github.com/torvalds/uemacs>


<a id="org0382f93"></a>

## TODO DoomEmacs

-   State "TODO"       from "FAILED"     <span class="timestamp-wrapper"><span class="timestamp">[2024-04-19 Fri 09:30]</span></span>
    <https://github.com/hlissner/doom-emacs>


<a id="org1ce71b9"></a>

## TODO Spacemacs

extension of a popular text editor called Emacs

-   These projects bring approachability and integration to Emacs, and are in my view, along with LSP, Magit, and Org, the

biggest reasons drawing people to Emacs nowadays.

-   It is however clear from looking at their issue trackers just how difficult it is to provide this cohesive experience
    by combining parts from the ecosystem.


<a id="org26ae57e"></a>

## lambda <https://github.com/Lambda-Emacs/lambda-emacs>


<a id="orgd684104"></a>

## other

based on DoomEmacs, Java IDE <https://github.com/sincebyte/neo-emacs>


<a id="org2ef8ad6"></a>

# Rust Emacs

-   **Remacs:** DEAD <https://github.com/remacs/remacs>
-   Emacs-ng A new approach to Emacs - Including TypeScript, Threading, Async I/O, and WebRender.
    <https://github.com/emacs-ng/emacs-ng>


<a id="org37907a0"></a>

# 4coder

-   loosely based on Emacs

Data oriented programming


<a id="org11060be"></a>

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


<a id="orga21fcb7"></a>

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


<a id="orge198e72"></a>

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


<a id="orge65bcb8"></a>

# email


<a id="orgb56bb48"></a>

## links and overview

-   <https://www.maketecheasier.com/use-email-within-emacs/>
    -   Offlineimap is a helper program that fetches your email from a remote server and saves it
    -   Notmuch, application that tags and displays mail.
-   mu and mu4e
    
    -   mu is a simple command line tool for searching through emails
    
    search features within mu. .
    
    -   mu4e, which offers an emacs interface to the mu
    -   <http://cachestocaches.com/2017/3/complete-guide-email-emacs-using-mu-and-/>
    -   <https://blog.leonardotamiano.xyz/posts/mu4e-setup/>
-   mbsync and offlineimap, review <https://skeptric.com/emacs-email/>
    
    isync + notmuch + emacs <https://haluk.github.io/posts-output/2020-09-11-emacs/>
-   <https://www.tomica.net/blog/2020/03/replacing-offlineimap-with-mbsync-isync/>
-   <https://jonathanchu.is/posts/emacs-notmuch-isync-msmtp-setup/>

offlineimap deps:

-   <https://github.com/jazzband/imaplib2/>

notmuch - indexer and also emacs-based interfece to notmuch indexer

fetchmail, offlineimap, or mbsync, to receive the messages


<a id="orge262620"></a>

## isync + notmuch + emacs steps <a id="org39f48bd"></a>

1.  emerge net-mail/isync
2.  USE="emacs doc" emerge net-mail/notmuchk
3.  useradd -m email
4.  /etc/sudoers.d/email see [72.2](#orge94915b)
5.  chown email:current<sub>user</sub> /home/email
6.  chmod g+rwxs /home/email see ref::sudoers.d/email
7.  configure isync .mbsyncrc. see <nix>
8.  \# mkdir -P *home/email*.mail/yourmaildir
9.  \# chown -R email:user *home/email*.mail
10. \# find *home/email*.mail/ -type d -exec chmod -R g+rxs {} \\;
11. \# find *home/email*.mail/ -type f -exec chmod g+rw {} \\;
12. mbsync gmail or mbsync -aV
13. notmuch setup # create *home/email*.notmuch-config
14. notmuch new # create a database that indexes all of your mail
15. cp *home/email*.notmuch-config *home/user*
16. M-x package-install smtpmail-multi
17. configure smtpmail-multi in .emacs, create "~/.authinfo" or "~/.authinfo.gpg" or "~/.netrc"
18. $ emacs ; M-x notmuch
19. email retriving: # mbsync -aV && notmuch new && notmuch tag &#x2013;input=my.notmuch && find .mail/ -type f -exec chmod g+rw {} \\;

download new emails:

-   proxychains mbsync -aV ; notmuch new ; notmuch tag &#x2013;input=my.notmuch
-   find *home/email*.mail/ -type f -exec chmod g+rw {} \\;

    #!/bin/sh
    # sudo -u email
    # proxychains mbsync -aV
    cd /home/email/
    echo sudo -u email mbsync -c /home/email/.mbsyncrc -aV
    sudo -u email mbsync -c /home/email/.mbsyncrc -aV
    echo #--------------------------------------------------------
    echo sudo /usr/local/bin/email_notmuch_perm.sh
    sudo /usr/local/bin/email_notmuch_perm.sh
    echo sudo -u email notmuch new
    sudo -u email notmuch new
    echo #--------------------------------------------------------
    echo sudo -u email notmuch tag --input=/home/email/my.notmuch
    sudo -u email notmuch tag --input=/home/email/my.notmuch
    echo #--------------------------------------------------------
    # . prev.sh # root required

    +saved -- folder:SAVED
    +sent -- folder:Sent
    +spam -- folder:Spam
    +bks -- folder:bks
    +book -- folder:book
    +pol -- folder:pol
    # bks move from inbox to bks
    +bks -inbox -- 'from:"/.*@bcs[.]ru/"'
    # remove spam,draft,deleted,sent from inbox
    -inbox -- tag:spam or tag:draft or tag:deleted or tag:sent
    # remove spam,draft,deleted,sent from unread
    -unread -- tag:spam or tag:draft or tag:deleted or tag:sent

    #!/bin/sh
    chown -R email:u /home/email/.mail
    find /home/email/.mail/ -type d -exec chmod g+rxs {} \;
    # not working if group is not owned
    find /home/email/.mail/ -type f -exec chmod g+rw {} \; # root required

<a id="orge94915b"></a>

    u ALL=(email) NOPASSWD: ALL
    email ALL=(root) NOPASSWD: /usr/local/bin/email_notmuch_perm.sh
    u ALL=(root) NOPASSWD: /usr/local/bin/email_notmuch_perm.sh


<a id="org18fe273"></a>

## notmuch


<a id="org7d88e32"></a>

### keys:

-   q or x	quit
-   C-m		activate
-   tab/S-tab	move to next/previous button
-   g or = or G	update
-   s		search
-   C-M-s	regex search
-   z		tree search
-   +,-		Add or remove arbitrary tags from the current message.
-   k		tagging menu
-   a/p		next message

in message:

-   V		raw message
-   r		reply to the sender
-   R		reply to the sender and all recipients of the current message.
-   f		forward
-   Z		show tree of messages
-   C-x C-s	save as draft
-   C-c C-s	send
-   C-c C-a	attach file
-   n/p	next/preview message in thread
-   M-n/p	next/preview thread
-   . o		open email in browser

in draft:

-   e	notmuch-show-resume-message


<a id="org6f83276"></a>

### block :

    notmuch tag -inbox -unread +deleted -- tag:inbox and "from:/.*@.*[.]pinterest[.]com/"


<a id="org39fe67b"></a>

### delete

One choice is to maintain a tag of emails you wish to remove from your disk, for example, "killed". Then, you can
  combine the search for the tags with xargs to delete them permanently:

    notmuch search --output=files --format=text0 tag:killed | xargs -r0 rm
    notmuch search --output=files tag:deleted | tr '\n' '\0' | xargs -0 -L 1 rm  # if path has spaces
    notmuch new


<a id="org58a732e"></a>

### headers

not all headers are cached

1.  get all deaders from commandline

        notmuch show --body=false --entire-thread=false as
        cat filename

2.  get all headers from emacs

    keys c F	notmuch-show-stash-filename

3.  to add headers:

    1.  notmuch config set index.header.XSpamFlag X-Spam-Flag
    2.  notmuch reindex '\*'
    3.  notmuch search AcceptLanguage:en-US AND XSpamFlag:NO


<a id="org9158dd9"></a>

### parts

-   notmuch-hello - M-x notmuch or M-x notmuch-hello
    -   saved searches
    -   Search Box
    -   Known Tags
-   notmuch-show
-   notmuch-tree
-   notmuch-search


<a id="org73b69a7"></a>

### recreate

-   $ mv ~/.mail/.notmuch ~/.notmuch.bak
-   $ notmuch new
-   \# chown -R email:user *home/email*.mail
-   \# find .mail/ -type d -exec chmod -R g+rxs {} \\;
-   \# find .mail/ -type f -exec chmod g+rw {} \\;


<a id="org591aecd"></a>

### external viewer

-   . v	notmuch-show-view-part

~/.mailcap:

    text/html; . /home/u/fireflocal.sh %s; nametemplate=%s.html

<https://emacs.stackexchange.com/questions/63436/is-there-some-way-to-view-the-html-part-of-an-email-in-an-external-browser-or-as>


<a id="org0f753ab"></a>

### message display execution path

-   notmuch-show: notmuch-show-insert-part-**/**
-   notmuch-lib.el:
    -   notmuch-mm-display-part-inline
    -   notmuch-show
    -   notmuch-show&#x2013;build-buffer
    -   notmuch-show-insert-forest
    -   notmuch-show-insert-thread
    -   notmuch-show-insert-tree
    -   notmuch-show-insert-msg
    -   notmuch-show-insert-body
    -   notmuch-show-insert-bodypart
    -   notmuch-show-insert-bodypart-internal
    -   notmuch-show-handlers-for: notmuch-show-insert-part-text/html
    -   notmuch-show-insert-part-**/**
    -   notmuch-mm-display-part-inline
-   mm-decode.el:
    -   mm-display-part
    -   mm-display-inline
-   mm-view.el
    -   mm-inline-text-html
    -   mm-text-html-renderer
-   gnus-html.el
    -   gnus-w3m . gnus-article-html
    -   gnus-html-wash-tags
    -   gnus-article-add-button


<a id="orgc6810c0"></a>

### config exampls

1.  <https://bostonenginerd.com/posts/notmuch-of-a-mail-setup-part-2-notmuch-and-emacs/>

        ;Load up Notmuch
        (require 'notmuch)
        
        
        ; Setup some keybindings
        
        
        ; C-c m opens up Notmuch from any buffer
        (global-set-key (kbd "C-c m") `notmuch)
        
        ;Setup Names and Directories
        (setq user-mail-address "myemail@mydomain.tld"
          user-full-name "My Totally Real Name")
        
        ; stores postponed messages to the specified directory
        (setq message-directory "MailLocation/Drafts") ;
        
        ;set sent mail directory
        (setq notmuch-fcc-dirs "MailLocation/Sent")
        
        ;Settings for main screen
        (setq notmuch-hello-hide-tags (quote ("killed")))
        
        ;A few commonly used saved searches.
        (setq notmuch-saved-searches
        (quote
        ((:name "inbox" :query "tag:inbox AND -tag:work" :key "i" :sort-order oldest-first)
         (:name "flagged" :query "tag:flagged" :key "f") ;flagged messages
         (:name "sent" :query "tag:sent -tag:work" :key "t" :sort-order newest-first)
         (:name "drafts" :query "tag:draft" :key "d")
         (:name "mailinglist" :query "tag:lists/mailinglistID" :key "c")
         (:name "all mail" :query "*" :key "a" :sort-order newest-first))))
        
        
        ;Message composition and sending settings
        
        ;Setup User-Agent header
        (setq mail-user-agent 'message-user-agent)
        
        (setq message-kill-buffer-on-exit t) ; kill buffer after sending mail)
        (setq mail-specify-envelope-from t) ; Settings to work with msmtp
        
        (setq send-mail-function (quote sendmail-send-it))
        (setq sendmail-program "~/.local/bin/msmtp-enqueue.sh"
          mail-specify-envelope-from t
        ;; needed for debians message.el cf. README.Debian.gz
         message-sendmail-f-is-evil nil
          mail-envelope-from 'header
          message-sendmail-envelope-from 'header)
        
        ;Reading mail settings:
        
        (define-key notmuch-show-mode-map "S"
            (lambda ()
            "mark message as spam"
            (interactive)
        (notmuch-show-tag (list "+spam" "-inbox"))))
        
        (define-key notmuch-search-mode-map "S"
        (lambda ()
            "mark message as spam"
            (interactive)
            (notmuch-search-tag (list "-inbox" "+spam"))
            (next-line) ))
        
        (setq notmuch-crypto-process-mime t) ; Automatically check signatures
        
        
        ;Crypto Settings
        (add-hook 'message-setup-hook 'mml-secure-sign-pgpmime)
        
        (setq epg-gpg-program "/usr/bin/gpg2")
        
        ;There was some problem with listing PGP keys in the Debian
        ;version of EPG. This magic from StackOverflow seems to resolve it.
        (defun epg--list-keys-1 (context name mode)
        (let ((args (append (if (epg-context-home-directory context)
                  (list "--homedir"
                    (epg-context-home-directory context)))
                  '("--with-colons" "--no-greeting" "--batch"
                "--with-fingerprint" "--with-fingerprint")
                  (unless (eq (epg-context-protocol context) 'CMS)
                '("--fixed-list-mode"))))
        (list-keys-option (if (memq mode '(t secret))
                      "--list-secret-keys"
                    (if (memq mode '(nil public))
                    "--list-keys"
                      "--list-sigs")))
        (coding-system-for-read 'binary)
        keys string field index)
        (if name
        (progn
          (unless (listp name)
            (setq name (list name)))
          (while name
            (setq args (append args (list list-keys-option (car name)))
              name (cdr name))))
          (setq args (append args (list list-keys-option))))
        (with-temp-buffer
          (apply #'call-process
             (epg-context-program context)
             nil (list t nil) nil args)
          (goto-char (point-min))
          (while (re-search-forward "^[a-z][a-z][a-z]:.*" nil t)
        (setq keys (cons (make-vector 15 nil) keys)
              string (match-string 0)
              index 0
              field 0)
        (while (and (< field (length (car keys)))
                (eq index
                (string-match "\\([^:]+\\)?:" string index)))
          (setq index (match-end 0))
          (aset (car keys) field (match-string 1 string))
          (setq field (1+ field))))
          (nreverse keys))))

2.  best <https://mslw.github.io/posts/2022-11-20-emacs-notmuch/>

        (require 'notmuch) ;; if always run on startup
        ;; -- load:
        (autoload 'notmuch "notmuch" "notmuch mail" t)
        (setq notmuch-search-oldest-first nil)
        (setq message-kill-buffer-on-exit t)

3.  TODO <https://github.com/admiralakber/simplemacs/blob/master/modules/notmuch.org>

    -   State "TODO"       from              <span class="timestamp-wrapper"><span class="timestamp">[2023-02-18 Sat 11:59]</span></span>

4.  <https://bostonenginerd.com/posts/notmuch-of-a-mail-setup-part-2-notmuch-and-emacs/>

        
        ;Load up Notmuch
        (require 'notmuch)
        
        
        ; Setup some keybindings
        
        
        ; C-c m opens up Notmuch from any buffer
        (global-set-key (kbd "C-c m") `notmuch)
        
        ;Setup Names and Directories
        (setq user-mail-address "myemail@mydomain.tld"
          user-full-name "My Totally Real Name")
        
        ; stores postponed messages to the specified directory
        (setq message-directory "MailLocation/Drafts") ;
        
        ;set sent mail directory
        (setq notmuch-fcc-dirs "MailLocation/Sent")
        
        ;Settings for main screen
        (setq notmuch-hello-hide-tags (quote ("killed")))
        
        ;A few commonly used saved searches.
        (setq notmuch-saved-searches
        (quote
        ((:name "inbox" :query "tag:inbox AND -tag:work" :key "i" :sort-order oldest-first)
         (:name "flagged" :query "tag:flagged" :key "f") ;flagged messages
         (:name "sent" :query "tag:sent -tag:work" :key "t" :sort-order newest-first)
         (:name "drafts" :query "tag:draft" :key "d")
         (:name "mailinglist" :query "tag:lists/mailinglistID" :key "c")
         (:name "all mail" :query "*" :key "a" :sort-order newest-first))))
        
        
        ;Message composition and sending settings
        
        ;Setup User-Agent header
        (setq mail-user-agent 'message-user-agent)
        
        (setq message-kill-buffer-on-exit t) ; kill buffer after sending mail)
        (setq mail-specify-envelope-from t) ; Settings to work with msmtp
        
        (setq send-mail-function (quote sendmail-send-it))
        (setq sendmail-program "~/.local/bin/msmtp-enqueue.sh"
          mail-specify-envelope-from t
        ;; needed for debians message.el cf. README.Debian.gz
         message-sendmail-f-is-evil nil
          mail-envelope-from 'header
          message-sendmail-envelope-from 'header)
        
        ;Reading mail settings:
        
        (define-key notmuch-show-mode-map "S"
            (lambda ()
            "mark message as spam"
            (interactive)
        (notmuch-show-tag (list "+spam" "-inbox"))))
        
        (define-key notmuch-search-mode-map "S"
        (lambda ()
            "mark message as spam"
            (interactive)
            (notmuch-search-tag (list "-inbox" "+spam"))
            (next-line) ))
        
        (setq notmuch-crypto-process-mime t) ; Automatically check signatures
        
        
        ;Crypto Settings
        (add-hook 'message-setup-hook 'mml-secure-sign-pgpmime)
        
        (setq epg-gpg-program "/usr/bin/gpg2")
        
        ;There was some problem with listing PGP keys in the Debian
        ;version of EPG. This magic from StackOverflow seems to resolve it.
        (defun epg--list-keys-1 (context name mode)
        (let ((args (append (if (epg-context-home-directory context)
                  (list "--homedir"
                    (epg-context-home-directory context)))
                  '("--with-colons" "--no-greeting" "--batch"
                "--with-fingerprint" "--with-fingerprint")
                  (unless (eq (epg-context-protocol context) 'CMS)
                '("--fixed-list-mode"))))
        (list-keys-option (if (memq mode '(t secret))
                      "--list-secret-keys"
                    (if (memq mode '(nil public))
                    "--list-keys"
                      "--list-sigs")))
        (coding-system-for-read 'binary)
        keys string field index)
        (if name
        (progn
          (unless (listp name)
            (setq name (list name)))
          (while name
            (setq args (append args (list list-keys-option (car name)))
              name (cdr name))))
          (setq args (append args (list list-keys-option))))
        (with-temp-buffer
          (apply #'call-process
             (epg-context-program context)
             nil (list t nil) nil args)
          (goto-char (point-min))
          (while (re-search-forward "^[a-z][a-z][a-z]:.*" nil t)
        (setq keys (cons (make-vector 15 nil) keys)
              string (match-string 0)
              index 0
              field 0)
        (while (and (< field (length (car keys)))
                (eq index
                (string-match "\\([^:]+\\)?:" string index)))
          (setq index (match-end 0))
          (aset (car keys) field (match-string 1 string))
          (setq field (1+ field))))
          (nreverse keys))))

5.  <https://github.com/vedang/emacs-up/blob/master/enhance/init-notmuch.el>

6.  blacklist <https://firminmartin.com/en/posts/2020/10/read_email_in_emacs_with_notmuch/>


<a id="org550ee59"></a>

### troubleshooting

fix permissions and ownerships:

    sudo /usr/local/bin/email_notmuch_perm.sh

    chown -R email:u /home/email/.mail # root required
    find /home/email/.mail/ -type d -exec chmod g+rxs {} \; # not working if group is not owned
    find /home/email/.mail/ -type f -exec chmod g+rw {} \;


<a id="orgb890c5e"></a>

### basic installation Emacs

see [72.2](#org39f48bd)

    useradd --create-home --shell=/bin/false email
    /etc/sudoers.d/email: user ALL=(email) NOPASSWD: ALL
    /home/email/.mbsyncrc
    /usr/local/bin/notmchuch.sh - change permissions
    /home/user/main-script.sh - that call all others
    /home/email/my.notmuch - tags configuration
    create folders in remote server
    mkdir /home/email/.mail/????N
    mkdir /home/email/mail - for notmuch
    sudo -u email bash -c "cd ; notmuch setup ; notmuch new" - it will create ~/.notmuch-config file

When emacs starts with \`notmuch' it uses ~/.notmuch-config file

add this lines to config

    [database]
    path=/home/email/.mail/gmx

when start: emacs &#x2013;eval "(notmuch)"

-   emacs &#x2013;eval "(progn (setenv \\"NOTMUCH<sub>CONFIG</sub>\\" \\"*home/user*.notmuch-config-email\\") ( notmuch ))"

add -**- mode: conf -**- to this config


<a id="org7e65b23"></a>

### links

-   <https://notmuchmail.org/notmuch-emacs/>
-   <https://notmuchmail.org/emacstips/>
-   <https://www.cs.unb.ca/~bremner/scratch/notmuch-doc-wip/notmuch-emacs.html>
-   <https://notmuch.readthedocs.io/en/latest/man7/notmuch-search-terms.html#notmuch-search-terms>


<a id="org4e57569"></a>

## email composer

1.  default C-x m compose-mail Message.el mode
2.  Message[Notmuch] mode defined in notmuch-mua.el

remplace default message mode with notmuch message mode:

    (setq mail-user-agent 'notmuch-user-agent)


<a id="orga5ea77a"></a>

## org-mode integration

    (add-hook 'message-mode-hook #'turn-on-orgtbl)
    (global-set-key (kbd "C-c f") 'org-footnote-action)

additional packages

-   M-x package-install RET orgalist RET - Org-like lists in non-Org buffers
-   M-x package-install RET outshine RET - bring the look & feel of Org-mode to the (GNUEmacs) world outside of the Org major-mode.


<a id="orgba8bfee"></a>

## send email actually

Two variables to choose method:

1.  setq send-mail-function
    -   'mailclient-send-it - external client
    -   'smtpmail-send-it - smtp emacs
    -   'sendmail-query-once - ask which to use
2.  message-send-mail-function
    -   MH Mail System
    -   Gmail

~/.authinfo <https://www.gnu.org/software/emacs/manual/html_node/smtpmail/Authentication.html>

~/.signature


<a id="org494539a"></a>

### built-in: smtpmail-send-it

    (setq
      smtpmail-stream-type 'ssl
      smtpmail-smtp-server "smtp.server.com"
      smtpmail-smtp-service 465
      ;;  ~/.authinfo: machine smtp.gmail.com login <login> port 465 password <password here>
      )
    ;; Send message via:
    (setq send-mail-function 'smtpmail-send-it)


<a id="org4078395"></a>

### smtpmail-multi

-   (setopt smtpmail-multi-accounts &#x2026;
-   (setopt message-send-mail-function 'smtpmail-multi-send-it)
-   this function calls smtpmail-send-it
    -   with smtpmail-smtp-user, smtpmail-smtp-server, smtpmail-smtp-service .. etc from (setopt smtpmail-multi-accounts &#x2026;

mailclient.el: (mailclient-send-it)

-   <https://firminmartin.com/en/posts/2020/10/read_email_in_emacs_with_notmuch/>


<a id="org15f6562"></a>

### troubleshooting

**certificate host does not match hostname**

Careful, you may only continue if the displayed certificate fingerprint matches the certificate fingerprint you have
  received from your server administrator server hosting provider. Not verifying the fingerprint leaves you vulnerable
  to man-in-the-middle attacks.


<a id="orgf33a064"></a>

### links

-   <https://www.emacswiki.org/emacs/SendingMail>
-   <https://www.gnu.org/software/emacs/manual/html_node/smtpmail/>


<a id="orgf358e20"></a>

## TODO WanderLust

-   State "TODO"       from              <span class="timestamp-wrapper"><span class="timestamp">[2024-07-16 Tue 06:56]</span></span>

<https://www.emacswiki.org/emacs/WanderLust>


<a id="orgab19e76"></a>

# command history

-   F1 l - keep commands, not strings in variable  command-history

Info: (elisp)Command History

Minibuffer History - keep strings


<a id="orgf2b4a1a"></a>

# TODO font locking


<a id="org40f6cae"></a>

# TODO auto-composition-mode

<https://github.com/emacs-mirror/emacs/blob/master/lisp/composite.el>


<a id="org8e3a9c1"></a>

# Chinese

Emacs built-in “chinese-py” and “chinese-py-punct” (combination of the input methods ‘chinese-py’ and ‘chinese-punct’.),
 others:

-   emacs-rime
-   pyim


<a id="org48bdef2"></a>

# quail - input method

-   <file:///usr/share/emacs/29.1/lisp/international/quail.el>
-   <file:///usr/share/emacs/29.1/lisp/leim/>
-   <file:///usr/share/emacs/29.1/lisp/international/mule-cmds.el>


<a id="org5b2fb8f"></a>

## debug-on-entry set-input-method

-   set-input-method("chinese-sisheng" t)
-   activate-input-method("chinese-sisheng")
-   (quail-use-package "chinese-sisheng" nil)
    -   (quail-select-package "chinese-sisheng")
    -   quail-activate()


<a id="org063ca66"></a>

## create own

    (require 'math-symbol-lists)
    (quail-define-package "math" "UTF-8" "Ω" t) ; name, language, title, guidence echo area
    (quail-define-rules ; add whatever extra rules you want to define here...
     ("\\from"    #X2190)
     ("\\to"      #X2192)
     ("\\lhd"     #X22B2)
     ("\\rhd"     #X22B3)
     ("\\unlhd"   #X22B4)
     ("\\unrhd"   #X22B5))
    ;; (mapc (lambda (x)
    ;;         (if (cddr x)
    ;;             (quail-defrule (cadr x) (car (cddr x)))))
    ;;       (append math-symbol-list-basic math-symbol-list-extended))


<a id="orge42d97a"></a>

# USECASES


<a id="org9333c4b"></a>

## how to add column or form table?

-   rectangles:
    1.  select lines 'C-x space'
    2.  copy lines C/M-w
    3.  M-x yank-rectangle or ‘C-x r y’
-   <https://www.gnu.org/software/emacs/manual/html_node/emacs/Text-Based-Tables.html>

Kill a rectangle: kill-rectangle ‘C-x r k’
Yank the last killed rectangle: yank-rectangle ‘C-x r y’
Toggle Rectangle Mark mode C-x SPC


<a id="org0c08f77"></a>

## scroll two buffers two files together

M-x scroll-all-mode


<a id="org425fe38"></a>

## line numbers at left

-   (setq linum-format " %d ")
-   (global-linum-mode t)


<a id="orgc528970"></a>

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


<a id="orgfc92cdf"></a>

## how to edit several lines

1.  M-x occur that select line by regex
2.  rectangles C-x r
3.  M-% search and replace


<a id="org9e5c0ae"></a>

## how to filter lines - positive

M-x occur RET regex


<a id="orgeaf7710"></a>

## how to filter lines - negative

Buffer sould be writable
M-x flush-lines RET regex


<a id="orgf5891e0"></a>

# emacsclient

-   emacs &#x2013;daemon &
-   emacsclient -c -a "emacs"


<a id="org75ebd5b"></a>

# Very Large Files

-   so-long (built-in)
-   combination of cat, tail, grep, sed, awk, etc.
-   GNU \`more' and \`less' - command line tools that display text files incrementally without loading the entire thing into
    memory
-   vim - LargFile plugin
-   emacs - GNU ELPA VLF package <https://github.com/m00natic/vlfi>
    -   M-x vlf
-   JOE Text Editor

for logs:

-   tail -F
-   emacs M-x auto-revert-tail-mode
-   large-file-warning-threshold - emacs warning when open big file


<a id="org23368c7"></a>

## vlf vs so-long

vlf is the partial loading trick; so-long is optimization for very long lines.

they can be used together or separately


<a id="org6ab8a67"></a>

# Telega <a id="orge450fc0"></a>

It is unofficial Telegram client, lightweight and enhanced alternative to official massive "telegram-desktop".
<https://github.com/zevlg/telega.el/>
see <nix>


<a id="orga97696d"></a>

## terms

-   aux - auxiliary, additional
-   temex - Telega Match Expression. S-exp notation similar to `rx` package for regexps. (defun telega-match-p (object
    temex)) temex consist of “temex-name” and “temex-args”. prefix: \`chat', \`msg', \`user' or \`sender'


<a id="org1ae8bca"></a>

## keys

chat

-   M-g ! telega-chatbuf-next-unread-reaction
-   M-g m/@ telega-chatbuf-next-unread-mention
-   i get info at pointer
-   > telega-chatbuf-read-all
-   < telega-chatbuf-history-beginning
-   M-g r telega-chatbuf-read-all
-   M-g P/^ telega-chatbuf-goto-pinned-message
-   p/n - preview/next message
-   C-c C-f telega-chatbuf-attach-media
-   C-c C-a telega-chatbuf-attach
-   C-c /") 'telega-chatbuf-filter
-   M-p M-k telega-chatbuf-edit-prev
-   M-n 'telega-chatbuf-edit-next
-   telega-chatbuf-cancel-aux
    -   C-c C-k  C-c C-p
    -   C-M-c
-   C-c /") 'telega-chatbuf-filter
-   C-x 4 0	kill-buffer-and-window


<a id="orgd5fa046"></a>

## source code

-   telega.el - (defun telega (&optional arg) - entry
-   telega-core.el - Variables and runtime goodies for telega
-   telega-root.el
-   telega-chat.el
-   telega-server.el - Interface to \`telega-server' process

Message format: telega-chat.el:

-   (defun telega-chatbuf&#x2013;insert-messages (messages how)


<a id="org2114c00"></a>

## installation steps

1.  compile and install TDLib
2.  compile and install telega.el/server


<a id="org2d4b0b8"></a>

## requirement: TDLib

is fully open source, all code is available on GitHub. <https://github.com/tdlib/td> <a id="org2433ed4"></a>

-   <https://core.telegram.org/tdlib>

Full dependencies: <https://github.com/tdlib/td#dependencies>

For stable version of Telega.el you should do 'git checkout v1.8.0' after 'git clone' <https://github.com/tdlib/td>

For master check telega-tdlib-min-version in telega.el

Steps:

-   \# mkdir build
-   \# cd build
-   \# cmake -DCMAKE<sub>BUILD</sub><sub>TYPE</sub>=Release ..
-   \# cmake &#x2013;build . -j2 (for newest version cmake &#x2013;build . -j2 &#x2013;target tdjson)
-   \# make install -j2
-   \# xargs rm < install<sub>manifest.txt</sub> # to remove

It should install itself to *usr/local/include and library itself into /usr/local/lib and \*.pc files to
 /usr/local/lib/pkgconfig*


<a id="org9612b79"></a>

## requirement: telega-server

Zaicev: Do $ make install in the telega.el/server/ dir, it will install telega-server into ~/.telega/ dir, telega will
 be able to find it there

Main dependency for server is [81.5](#org2433ed4) (Full dependencies: <https://zevlg.github.io/telega.el/#dependencies>)

Steps:

-   \# ldconfig # it will update symlinks for TDLib
-   \# export PKG<sub>CONFIG</sub><sub>PATH</sub>=/usr/local/lib/pkgconfig/ # path to \*.pc installed files of TDLib
-   \# make
-   \# make install # just copy "telega-server" to ~/.telega/

Telega looks for "telega-server" executable in PATH environmental variable or in ~/.telega/


<a id="org141f3ae"></a>

## emacs configuration

Let's configure MELPA repository in Emacs configuration file. (from
 <https://zevlg.github.io/telega.el/#installing-telega-from-melpa>)

    (add-to-list 'package-archives
               '("melpa-stable" . "https://stable.melpa.org/packages/"))
    (add-to-list 'package-pinned-packages '(telega . "melpa-stable"))

Install 'telega' from MELPA repository:

-   M-x package-refresh-contents
-   M-x package-install telega

You need to specify folders and account names:

    (setq telega-accounts
          '(("t1" telega-database-dir "/home/telega/.telega/t1")
            ("t2" telega-database-dir "/home/telega/.telega/t2")))

I have "t1" and "t2" named accounts and created "*home/telega*.telega/t1" and "*home/telega*.telega/t1" folders for them.

Now in Emacs: M-x telega RET. It should magically ask you which account to use "t1" or "t2", phone number and activation
 code for it.


<a id="org97d235b"></a>

## troubleshooting

telega-server error: Valid api<sub>id</sub> must be provided. Can be obtained at <https://my.telegram.org>

-   Zaicev: Старая телега и новая TDLib. update telega
-   check version with: M-x telega-version RET

Perhaps you should add the directory containing \`tdjson.pc'
to the PKG<sub>CONFIG</sub><sub>PATH</sub> environment variable
Package 'tdjson', required by 'virtual:world', not found

-   export PKG<sub>CONFIG</sub><sub>PATH</sub>=/usr/local/lib/pkgconfig/
-   or as Zaicev said: "If you intall TDLib into custom prefix (non system-wide), then specify this prefix via LIBS<sub>PREFIX</sub>
    make variable, otherwise pkg-config will be used to detect the prefix."

telega-server: error while loading shared libraries: libtdjson.so.1.8.0: cannot open shared object file:
 No such file or directory

-   Zaicev: $ sudo ldconfig не забудь запустить перед линковкой telega-server, после того как задаунгрейдил TDLib


<a id="orgeecf7b7"></a>

## Architecuture

-   the core is server/telega-server.c
    -   stdin<sub>loop</sub>(
-   telega-server.el
    -   telega-server&#x2013;start - start process (start-process "telega-server" "**telega-server**")
    -   telega-server&#x2013;send
-   telega-tdlib.el: (telega-server&#x2013;send \`(:@type "addProxy" ,@proxy-spec))


<a id="org34b01fe"></a>

## start

-   telega.el/telega.el::201 (defun telega ()
    -   variable "telega-accounts" is defined in .emacs
    -   telega-account-switch
    -   telega-server&#x2013;start - associate process with buffer " **telega-server**"
        -   "telega-server -l ~/.telega/telega-server.log -v "


<a id="org32760ed"></a>

## real communication


<a id="org4eb38e2"></a>

### message video

    (:@type "updateChatLastMessage" :chat_id -1001746478692
     :last_message (:@type "message" :id 24108859392 :sender_id (:@type "messageSenderChat" :chat_id -1001746478692)
     :chat_id -1001746478692
     :is_outgoing nil :is_pinned nil :is_from_offline nil :can_be_edited
     nil :can_be_forwarded t :can_be_replied_in_another_chat t
     :can_be_saved t :can_be_deleted_only_for_self nil
     :can_be_deleted_for_all_users nil :can_get_added_reactions nil
     :can_get_statistics nil :can_get_message_thread nil
     :can_get_read_date nil :can_get_viewers nil
     :can_get_media_timestamp_links t :can_report_reactions nil
     :has_timestamped_media t :is_channel_post t :is_topic_message nil
     :contains_unread_mention nil :date 1713544749 :edit_date 0
     :interaction_info (:@type "messageInteractionInfo" :view_count 1 :forward_count 0)
     :unread_reactions []
     :message_thread_id 0
     :saved_messages_topic_id 0 :self_destruct_in 0.0 :auto_delete_in 0.0
     :via_bot_user_id 0 :sender_business_bot_user_id 0 :sender_boost_count
     0 :author_signature "" :media_album_id "0" :restriction_reason ""
     :content (:@type "messageVideo" :video (:@type "video" :duration 37
     :width 1926 :height 1080 :file_name "1.mp4" :mime_type "video/mp4"
     :has_stickers nil :supports_streaming t
     :minithumbnail (:@type
                    "minithumbnail" :width 40 :height 22 :data
                    "/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDACgcHiMeGSgjISMtKygwPGRBPDc3PHtYXUlkkYCZlo+AjIqgtObDoKrarYqMyP/L2u71////m8H////6/+b9//j/2wBDASstLTw1PHZBQXb4pYyl+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj/wAARCAAWACgDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwCA7ZLmHYR9KqXC4ncehrYa2hiUSqxyp4GfWst8PcPu6FjzQBNbOkT5I6IQPrV37Nm0gwcORz/M1WjtgjrJviaNT83zVNczu1uCjJtHAwwJxQBSedkfaVyB6UVESeaKANmTVIhHuEbkH1xWPLKs0xkVNoPaiigBw+YY7VLDZ5aMg4Vm2t6+tFFAEV+oS6ESEhABiiiigD//2Q==")
     :thumbnail (:@type "thumbnail" :format (:@type "thumbnailFormatJpeg")
                :width 320 :height 179 :file (:@type "file" :id 12705 :size 11393
                :expected_size 11393 :local (:@type "localFile" :path ""
                :can_be_downloaded t :can_be_deleted nil :is_downloading_active nil
                :is_downloading_completed nil :download_offset 0
                :downloaded_prefix_size 0 :downloaded_size 0) :remote (:@type
                "remoteFile" :id
                "AAMCAgADHQJoGSZkAAJZ0GYini0VvP6YhcBdsXrlNx6JosO0AAJ3SwAC0NoZSRyQnNYhzXTTAQAHbQADNAQ"
                :unique_id "AQADd0sAAtDaGUly" :is_uploading_active nil
                :is_uploading_completed t :uploaded_size 11393)))
     :video (:@type "file" :id 12706 :size 8366081 :expected_size 8366081 :local (:@type
            "localFile" :path "" :can_be_downloaded t :can_be_deleted nil
            :is_downloading_active nil :is_downloading_completed nil
            :download_offset 0 :downloaded_prefix_size 0 :downloaded_size 0)
            :remote (:@type "remoteFile" :id
            "BAACAgIAAx0CaBkmZAACWdBmIp4tFbz-mIXAXbF65TceiaLDtAACd0sAAtDaGUkckJzWIc100zQE"
            :unique_id "AgADd0sAAtDaGUk" :is_uploading_active nil
            :is_uploading_completed t :uploaded_size 8366081)))
     :caption (:@type
              "formattedText" :text #("
    MAIN TEXT HERE
              " 368 370 (telega-emoji-p t telega-display "➡️"))
              :entities [
                    (:@type "textEntity" :offset 0 :length 170 :type (:@type "textEntityTypeBold"))
                    (:@type "textEntity" :offset 309 :length 62 :type (:@type "textEntityTypeBold"))
                    (:@type "textEntity" :offset 371 :length 18 :type (:@type "textEntityTypeTextUrl"
                             :url "https://newscentral.top/"))])
     :has_spoiler nil :is_secret nil))
     :positions [(:@type "chatPosition" :list (:@type "chatListMain")
     :order "7359618657187551696" :is_pinned nil)])


<a id="org3cdb6b5"></a>

### message text

    1713544723: event IN: (:@type "updateNewMessage"
    :message (:@type
     "message" :id 3355443200
     :sender_id (:@type "messageSenderUser" :user_id 1202965647)
     :chat_id -1001909184774
     :is_outgoing nil
     :is_pinned nil :is_from_offline nil :can_be_edited nil
     :can_be_forwarded t :can_be_replied_in_another_chat t :can_be_saved t
     :can_be_deleted_only_for_self nil :can_be_deleted_for_all_users nil
     :can_get_added_reactions nil :can_get_statistics nil
     :can_get_message_thread t :can_get_read_date nil :can_get_viewers nil
     :can_get_media_timestamp_links t :can_report_reactions nil
     :has_timestamped_media nil :is_channel_post nil :is_topic_message nil
     :contains_unread_mention nil :date 1713544722 :edit_date 0
     :unread_reactions []
     :reply_to (:@type "messageReplyToMessage"
                :chat_id -1001909184774
                :message_id 3349151744
                :origin_send_date 0)
     :message_thread_id 3349151744 :saved_messages_topic_id 0
     :self_destruct_in 0.0 :auto_delete_in 0.0 :via_bot_user_id 0
     :sender_business_bot_user_id 0 :sender_boost_count 0
     :author_signature "" :media_album_id "0" :restriction_reason ""
     :content (:@type "messageText"
               :text (:@type "formattedText" :text "ну аркана нормик "
                      :entities []))))


<a id="org0d43885"></a>

### user info

1.  update

        1713552904: event IN: (:@type "updateUser" :user (:@type "user"
         :id 108603591
         :first_name "Slava" :last_name ""
         :usernames (:@type "usernames" :active_usernames ["memset"]
                      :disabled_usernames [] :editable_username "memset")
         :phone_number ""
         :status (:@type "userStatusRecently" :by_my_privacy_settings nil)
        
         :profile_photo (:@type "profilePhoto" :id "466448872029399105" :small (:@type "file"
               :id 15425 :size 6773 :expected_size 6773 :local (:@type "localFile"
               :path "/home/telega/.telega/t1/profile_photos/466448872029399105.jpg"
               :can_be_downloaded t :can_be_deleted t :is_downloading_active nil
               :is_downloading_completed t :download_offset 0
               :downloaded_prefix_size 6773 :downloaded_size 6773) :remote (:@type
               "remoteFile" :id "AQADAgADQagxG8coeQYACAIAA8coeQYABDxHPDNJrtSxNAQ"
               :unique_id "AQADQagxG8coeQYAAQ" :is_uploading_active nil
               :is_uploading_completed t :uploaded_size 6773)) :big (:@type "file"
               :id 15426 :size 0 :expected_size 0 :local (:@type "localFile" :path
               "" :can_be_downloaded t :can_be_deleted nil :is_downloading_active
               nil :is_downloading_completed nil :download_offset 0
               :downloaded_prefix_size 0 :downloaded_size 0) :remote (:@type
               "remoteFile" :id "AQADAgADQagxG8coeQYACAMAA8coeQYABDxHPDNJrtSxNAQ"
               :unique_id "AQADQagxG8coeQYB" :is_uploading_active nil
               :is_uploading_completed t :uploaded_size 0)) :minithumbnail (:@type
               "minithumbnail" :width 8 :height 8 :data
               "/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDACgcHiMeGSgjISMtKygwPGRBPDc3PHtYXUlkkYCZlo+AjIqgtObDoKrarYqMyP/L2u71////m8H////6/+b9//j/2wBDASstLTw1PHZBQXb4pYyl+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj/wAARCAAIAAgDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwC8UnN3327s7t3GPTFFFFAH/9k=")
               :has_animation nil :is_personal nil)
         :accent_color_id 5
         :background_custom_emoji_id "0"
         :profile_accent_color_id -1
         :profile_background_custom_emoji_id "0" :is_contact nil
         :is_mutual_contact nil :is_close_friend nil :is_verified nil
         :is_premium nil :is_support nil :restriction_reason "" :is_scam nil
         :is_fake nil :has_active_stories nil :has_unread_active_stories nil
         :restricts_new_chats nil :have_access t
         :type (:@type "userTypeRegular")
         :language_code "" :added_to_attachment_menu nil))

2.  profile

        1713551495: event IN: (:@type "updateUserFullInfo" :user_id 309050033
         :user_full_info (:@type "userFullInfo"
                          :photo
                                            (:@type "chatPhoto" :id
                                             "1327359785018960224" :added_date 1705329104 :minithumbnail (:@type
                                             "minithumbnail" :width 40 :height 40 :data
                                             "/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDACgcHiMeGSgjISMtKygwPGRBPDc3PHtYXUlkkYCZlo+AjIqgtObDoKrarYqMyP/L2u71////m8H////6/+b9//j/2wBDASstLTw1PHZBQXb4pYyl+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj/wAARCAAoACgDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwC29VZbpU4HJpWkaKzUsDuxjntWcSWbjk1KRTLf21uOO/OKdFd72w3GelQmxnxnHbNVmBQ4PUU9A1NffRVOB2dB7cUUhli/XdAT6GqmnRiS4OcfKMjIq9uWRSj/AMQxVKEG0uirdGHBo6C6mhJhQqEknPJxxWbfqEkBzknrxirkoBjLbh+fNZ0pM8oVRmkipbE1kDtY9qKliURgKPQUUyUNeQnvTNwJGeSDRRQMbKgPKk/SmR5TnOKKKAZOr5PNFFFAz//Z")
                                             :sizes [(:@type "photoSize" :type "a" :photo (:@type "file" :id 15033
                                             :size 8650 :expected_size 8650 :local (:@type "localFile" :path ""
                                             :can_be_downloaded t :can_be_deleted nil :is_downloading_active nil
                                             :is_downloading_completed nil :download_offset 0
                                             :downloaded_prefix_size 0 :downloaded_size 0) :remote (:@type
                                             "remoteFile" :id
                                             "AgACAgQAAxUAAWX2KGSPnHEpLQooARmMRZPXQcdXAAJgqTEbsbprEm4U5iRUbqPhAQADAgADYQADNAQ"
                                             :unique_id "AQADYKkxG7G6axIAAQ" :is_uploading_active nil
                                             :is_uploading_completed t :uploaded_size 8650)) :width 160 :height
                                             160 :progressive_sizes []) (:@type "photoSize" :type "b" :photo
                                             (:@type "file" :id 15034 :size 24902 :expected_size 24902 :local
                                             (:@type "localFile" :path "" :can_be_downloaded t :can_be_deleted nil
                                             :is_downloading_active nil :is_downloading_completed nil
                                             :download_offset 0 :downloaded_prefix_size 0 :downloaded_size 0)
                                             :remote (:@type "remoteFile" :id
                                             "AgACAgQAAxUAAWX2KGSPnHEpLQooARmMRZPXQcdXAAJgqTEbsbprEm4U5iRUbqPhAQADAgADYgADNAQ"
                                             :unique_id "AQADYKkxG7G6axJn" :is_uploading_active nil
                                             :is_uploading_completed t :uploaded_size 24902)) :width 320 :height
                                             320 :progressive_sizes []) (:@type "photoSize" :type "c" :photo
                                             (:@type "file" :id 15035 :size 77357 :expected_size 77357 :local
                                             (:@type "localFile" :path
                                             "/home/telega/.telega/cache/photos/1327359785018960224_99.jpg"
                                             :can_be_downloaded t :can_be_deleted t :is_downloading_active nil
                                             :is_downloading_completed t :download_offset 0
                                             :downloaded_prefix_size 77357 :downloaded_size 77357) :remote (:@type
                                             "remoteFile" :id
                                             "AgACAgQAAxUAAWX2KGSPnHEpLQooARmMRZPXQcdXAAJgqTEbsbprEm4U5iRUbqPhAQADAgADYwADNAQ"
                                             :unique_id "AQADYKkxG7G6axIB" :is_uploading_active nil
                                             :is_uploading_completed t :uploaded_size 77357)) :width 640 :height
                                             640 :progressive_sizes [])])
         :can_be_called nil :supports_video_calls
         nil :has_private_calls t :has_private_forwards t
         :has_restricted_voice_and_video_note_messages nil :has_pinned_stories
         nil :need_phone_number_privacy_exception nil :set_chat_background nil
         :bio (:@type "formattedText" :text "λ" :entities [])
         :personal_chat_id 0
         :premium_gift_options [
           (:@type "premiumPaymentOption" :currency "RUB" :amount 279900
            :discount_percentage 41 :month_count 12 :store_product_id
            "org.telegram.telegramPremium.twelveMonths" :payment_link (:@type
            "internalLinkTypeInvoice" :invoice_name
            "premgift309050033_12_ad88c67f42de312854")) (:@type
            "premiumPaymentOption" :currency "RUB" :amount 159900
            :discount_percentage 33 :month_count 6 :store_product_id
            "org.telegram.telegramPremium.sixMonths" :payment_link (:@type
            "internalLinkTypeInvoice" :invoice_name
            "premgift309050033_6_2c9395bb263dc21607")) (:@type
            "premiumPaymentOption" :currency "RUB" :amount 119900
            :discount_percentage 0 :month_count 3 :store_product_id
            "org.telegram.telegramPremium.threeMonths" :payment_link (:@type
            "internalLinkTypeInvoice" :invoice_name
            "premgift309050033_3_0799322a4a75d4ddff"))]
          :group_in_common_count 1))


<a id="org3cb308a"></a>

### chat

IN: updateNewChat

    1713554600: event IN: (:@type "updateNewChat" :chat (
     :@type "chat" :id -1001098300825
     :type (:@type "chatTypeSupergroup" :supergroup_id 1098300825 :is_channel nil)
    
     :title "Big Data"
    
     :accent_color_id 6
     :background_custom_emoji_id "0" :profile_accent_color_id -1
     :profile_background_custom_emoji_id "0"
     :permissions (:@type "chatPermissions" :can_send_basic_messages t :can_send_audios nil
                   :can_send_documents nil :can_send_photos nil :can_send_videos nil
                   :can_send_video_notes nil :can_send_voice_notes nil :can_send_polls
                   nil :can_send_other_messages nil :can_add_web_page_previews nil
                   :can_change_info nil :can_invite_users t :can_pin_messages nil
                   :can_create_topics t)
     :positions [] :chat_lists []
     :message_sender_id (:@type "messageSenderUser" :user_id 679333843)
     :has_protected_content nil :is_translatable nil :is_marked_as_unread
     nil :view_as_topics nil :has_scheduled_messages nil
     :can_be_deleted_only_for_self nil :can_be_deleted_for_all_users nil
     :can_be_reported t :default_disable_notification nil :unread_count 0
     :last_read_inbox_message_id 12879659008 :last_read_outbox_message_id
     12880707584 :unread_mention_count 0 :unread_reaction_count 0
     :notification_settings (:@type "chatNotificationSettings"
                             :use_default_mute_for nil :mute_for 433929079 :use_default_sound t
                             :sound_id "-1" :use_default_show_preview t :show_preview nil
                             :use_default_mute_stories t :mute_stories nil
                             :use_default_story_sound t :story_sound_id "-1"
                             :use_default_show_story_sender t :show_story_sender t
                             :use_default_disable_pinned_message_notifications t
                             :disable_pinned_message_notifications nil
                             :use_default_disable_mention_notifications t
                             :disable_mention_notifications nil)
     :available_reactions (:@type "chatAvailableReactionsAll")
     :message_auto_delete_time 0
     :theme_name ""
     :video_chat (:@type "videoChat" :group_call_id 0 :has_participants nil)
     :reply_markup_message_id 0
     :client_data "(:color (\"#000061ae9385\" \"#0000affae676\"))"))


<a id="orge00fec4"></a>

## Notification

Evgeny Zajcev:

-   Advise telega-notifications&#x2013;notify function, take a look at contrib/telega-alert.el - it uses such advise to use
    alert.el for notifications

telega&#x2013;on-updateNewMessage (telega-tdlib-events.el)-> telega-chat-post-message-hook ->
 telega-notifications-chat-message -> telega-notifications&#x2013;chat-msg0 - > telega-notifications&#x2013;notify

-   telega-notifications-chat-message is working only if telega-notifications-mode active.

hooks in ~/.emacs.d/loadmy/telega/telega-customize.el and ~/.emacs.d/loadmy/telega/telega-notifications.el

-   telega-chat-pre-message-hook
-   telega-chat-post-message-hook - function #'telega-notifications-chat-message

telega-notifications&#x2013;chat-msg0 -> telega-inserter-for-msg-notification to build :body of notify-spec


<a id="orgb60de93"></a>

### telega&#x2013;on-updateNewMessage

A new message was received; can also be an outgoing message.

-   telega-chat-pre-message-hook
-   telega-chat-post-message-hook - received and (outgoing if message is successfully sent)
    -   telega-notifications-chat-message - filter ignored, check message with function “telega-notifications-msg-notify-p”
        -   telega-notifications&#x2013;chat-msg0


<a id="org77cda5d"></a>

### content

(let\* ((content (plist-get msg :content))
             (content-type (telega&#x2013;tl-type content))

(telega-fmt-text-desurrogate
                                (telega-fmt-text-concat
                                 (telega&#x2013;tl-get last-msg :content :text)
                                 (telega-string-fmt-text "\n")
                                 (plist-get imc :text)))

(user (telega-msg-sender msg))
(chat (telega-msg-chat msg))

(chat (telega-msg-chat msg))

(or (not (telega-chat-match-p chat
                       '(or (type private secret) me-is-member)))
(telega-chat-muted-p chat)

Message already has been read: (telega-msg-seen-p msg chat)


<a id="org7d7cd2e"></a>

## member<sub>count</sub>

member<sub>count</sub>

online<sub>member</sub><sub>count</sub>

td-spec-file: elega.el/etc/td-api-1.7.3.tl

    (defun my-members (chat)
      "CHAT from (telega-chat-get chat-id 'offline)."
      (let (
            (chat-id (plist-get chat :id))
            (telega-full-info-offline-p nil) ; nil - online request
            (chat-type (telega-chat--type chat))
            (info (telega-chat--info chat 'locally))
            (full-info))
        (setq full-info (telega--full-info info))
        (let* (
              (member-count (cl-case chat-type
                                    (basicgroup
                                     (plist-get info :member_count))
                                    ((supergroup channel)
                                     (plist-get full-info :member_count))
                                    (t
                                     (user-error "telega: Not a group chat"))
                                    ))
               (omc (or (plist-get chat :x-online-count) 0))
               (ac (plist-get full-info :administrator_count))
              )
        (print (list member-count omc ac))
        (list member-count omc ac)
        ) ; let
      ) ; let
    )


<a id="org421ee0f"></a>

## Usecases:

-   get user info by id: (telega-user-get 655478803)
-   get user info by name: (telega-user&#x2013;by-username "pretty<sub>3</sub>")
-   get message: (telega-msg-get (telega-chat-get -1001628071985) 10148118528)
-   get text of message: (print (plist-get (plist-get (plist-get (telega-msg-get (telega-chat-get -1001628071985) 10148118528) :content) :caption) :text))


<a id="org7765b3c"></a>

# Twitter

6y ago <https://github.com/hayamiz/twittering-mode>


<a id="orgc3bc9a6"></a>

# Other modes

Contact keeping and exporting <https://github.com/pinoaffe/org-vcard>


<a id="org62389a0"></a>

## Youtube packages

empv                           4.0.0          available    melpa-stable A multimedia player/manager, YouTube interface

ytdious                        20210228.2111  available    melpa    Query / Preview YouTube via Invidious


<a id="org907146d"></a>

### yeetube

YouTube Front End | Interface for yt-dlp | mpv control |

Project's Page:    <https://thanosapollo.org/projects/yeetube>
Upstream:          <https://git.thanosapollo.org/yeetube>

Dependencies:

-   (require 'compat)
-   (require 'url)
-   (require 'tabulated-list)
-   (require 'cl-lib)
-   (require 'socks)
-   (require 'iimage)
-   (require 'yeetube-mpv) - own


<a id="org540eb42"></a>

## VoiceEmacs

<https://github.com/jcaw>


<a id="org4d9fc0a"></a>

## ChatGPT, Google Bard

-   <https://github.com/AllTheLife/Bard.el>

programming language

-   <https://github.com/microsoft/guidance/>
-   async short <https://github.com/karthink/gptel>
-   hack <https://github.com/0xk1h0/ChatGPT_DAN>


<a id="orgfc1c947"></a>

## EAF - browser, player, terminal

require NPM (JavaScript) why? <https://github.com/emacs-eaf/emacs-application-framework/blob/master/dependencies.json>

-   <https://github.com/emacs-eaf/emacs-application-framework>


<a id="org5e8eeee"></a>

## hardwarde monitoring

-   old <https://github.com/zk-phi/symon>
-   <https://codeberg.org/emacs-weirdware/lemon>


<a id="orgd973059"></a>

## hunting bugs in .init

<https://github.com/Malabarba/elisp-bug-hunter/>


<a id="org2f4016e"></a>

## host Emacs in cloud and access in browser

<https://github.com/karlicoss/cloudmacs?tab=readme-ov-file>


<a id="orgfc098d7"></a>

## TODO ERC - IRC client

<https://dataswamp.org/~incal/emacs-init/>
<http://www.emacswiki.org/emacs/ErBot>


<a id="org3a10d10"></a>

## Kubel - kubernetes control

<https://github.com/abrochard/kubel>


<a id="orgdede436"></a>

## EasyPG Assistant - autoencryption

**Transparent File Cryptography**

(require 'epa-file)
(epa-file-enable)


<a id="orge6361b4"></a>

### how it works

(epa-file-enable) add hook to find-file-hook and auto-mode-alist to detect ‘.gpg’ files.

finally it call epg&#x2013;start from epg.el that call gpg-agent for password

(epg-gpg-program) used also.


<a id="orge82c7ba"></a>

### configuration of pinentry (password) to different tty

;; &#x2013; &#x2013; EasyPG - GnuPG interface
(require 'epa-file)
(setopt epa-pinentry-mode 'ask)
(epa-file-enable)

    ~/.gnupg/gpg-agent.conf: pinentry-program /usr/bin/pinentry-tty
    /etc/inittab: c2:2345:respawn:/sbin/agetty -a user 38400 tty2 linux

.bashrc:

    if [ $(tty) = "/dev/tty2" ]; then  # hack to disable tty2
        stty -echo -icanon  # disable echo
        while true; do sleep 9000 ; done  # disable input
    fi
    export GPG_TTY=/dev/tty2
    gpg-agent 2> /dev/null

Now you need to switch to TTY with Ctrl+Alt+F2 to enter password.

If this is too complicated, you can always enter
 password directly in Emacs:
(setopt epa-pinentry-mode 'loopback)


<a id="org11021bd"></a>

### commands

-   **epa-list-keys:** browse your keyring
-   **epa-list-secret-keys:** .
-   **epa-sign-region:** create a cleartext signature of the region
-   **epa-encrypt-file:** encrypt a file


<a id="org20a1795"></a>

### Caching Passphrases

By default


<a id="org6486bbd"></a>

### Troubleshooting

Error while encrypting with "/usr/bin/gpg2": gpg: problem with the agent: Inappropriate ioctl for device

    export GPG_TTY=$(tty)

gpg: no valid OpenPGP data found. gpg: decrypt<sub>message</sub> failed: Unknown system error

gpg: public key decryption failed: No such file or directory  gpg: decryption failed: No such file or directory

pinentry password prompt broken inside tmux sessions


<a id="orgd3e57c8"></a>

### links

-   <https://www.gnu.org/software/emacs/manual/html_mono/epa.html>
-   <https://www.masteringemacs.org/article/keeping-secrets-in-emacs-gnupg-auth-sources>
-   <https://www.emacswiki.org/emacs/AutoEncryption>


<a id="org587155f"></a>

## OSM - openstreetmaps

<https://github.com/minad/osm>


<a id="org4927abc"></a>

# proxy


<a id="org8488da2"></a>

## url/url.el

    '(url-proxy-services '(("socks" . "127.0.0.1:9050")))


<a id="org3914945"></a>

### config socks proxy

    (setq socks-server '("Default server" "127.0.0.1" 8080 5)) ;; M-x
    customize socks
    
    (setq socks-password "")
    
    ;; To test:
    (with-current-buffer
    (url-retrieve-synchronously "http://ipinfo.io/ip")
    (goto-char (point-min)) (re-search-forward "^$")
    (delete-region (point) (point-min))
    (buffer-string))


<a id="org4f82cc2"></a>

### path url-retrieve-synchronously

-   url-do-setup
-   url-retrieve
    -   url-retrieve-internal
    -   url-find-proxy-for-url
    -   url-http:
        -   url-http.el:
        -   url-retrieve (url callback &optional cbargs silent inhibit-cookies)
            -   cbargs = (cons nil cbargs)
        -   url-http-find-free-connection (url-host url) (url-port url) gateway-method) gateway-method=CBARGS
        -


<a id="orgb192253"></a>

## old tryes

-   State "TODO"       from              <span class="timestamp-wrapper"><span class="timestamp">[2023-04-24 Mon 01:07]</span></span>

    (setq socks-override-functions 1) ;;  Set this before loading the library to make Emacs use Socks for all networking functions.
    (setq socks-noproxy '("localhost")) ;; A list of domains to exclude from the proxy
    (require 'socks) ;; Finally, load the socks library.
    (setq socks-server '("Default server" "127.0.0.1" 1081 5))
    (setq socks-noproxy '("127.0.0.1"))
    (setq url-gateway-method 'socks)
    
    
    (setq url-proxy-services
          '(("http"     . "http://proxy.example.com:8080")
            ("https"    . "http://proxy.example.com:8080")
    	    ("ftp"      . "proxy.example.com:8080")
    	    ("no_proxy" . "^.*example.com")))
    
    -- test proxy:
    (with-current-buffer
        (url-retrieve-synchronously "http://api.ipify.org/")
      (goto-char (point-min))
      (re-search-forward "^$")
      (delete-region (point) (point-min))
      (buffer-string))
    
    (package-refresh-contents)


<a id="org3354ef4"></a>

# QUESTIONS:

-   what is Auto-Composition minor mode?


<a id="org188db77"></a>

# emacs keyboard layouts

<https://github.com/keyboard-ergonomics/keymacs>
<https://github.com/madand/keymacs-madand>


<a id="org80696de"></a>

# good modes for UI enhancement

-   cc-isearch-menu - menu for isearch <https://github.com/kickingvegas/cc-isearch-menu>
-   contact management package <https://github.com/girzel/ebdb>


<a id="orge1fd3c0"></a>

# keyboard problems:

-   space is too high for big shirt fingers
-   unable to use any key as modifier, detect that key is pressed


<a id="org8413c84"></a>

# log keys, log commands, commands logging, key log

packages: command-log-mode

-   M-x command-log-mode  - in current buffer only
-   M-x global-command-log-mode (optional. Turn on logging for any buffer)
-   M-x clm/open-command-log-buffer (show the key/command output buffer)

<http://xahlee.info/emacs/emacs/emacs_show_key_and_command.html>


<a id="orgb8d5fdd"></a>

# bugs

abbrev.el: abbrev&#x2013;before-point - skip-syntax-backward go beuound new line.


<a id="org97ff79e"></a>

# blogging


<a id="orgbb8a77c"></a>

## engines - SSGs Static Site Generators

<https://soupault.app/>

<https://packages.gentoo.org/categories/www-apps>


<a id="org7fbe4cf"></a>

## emacs tangling

    asdasd


<a id="org0c74c53"></a>

## emacs export subtree

-   <https://howardism.org/Technical/Emacs/getting-even-more-boxes-done.html>

-   <https://github.com/Malabarba/ox-jekyll-subtree/blob/master/ox-jekyll-subtree.el>

-   org-archive-subtree
-   EXPORT<sub>FILE</sub><sub>NAME</sub> - target filename per subtree

-   C-c C-x p (org-set-property

org-html-export-to-html(nil t nil nil)- export

org-forward-heading-same-level - next header


<a id="orgb391994"></a>

### solution

1.  write a single Org with one header per page or part of page
2.  for every header:  C-c C-x p (org-set-property) EXPORT<sub>FILE</sub><sub>NAME</sub> - to location and name of file
3.  C-c e - export buffer with my advice to export every root-subtree according to EXPORT<sub>FILE</sub><sub>NAME</sub>
4.  apply SSGs to exported HTML files
5.  sync-uppload to site

    (defun my/org-html-export-to-html-all-subtrees (&optional async subtreep visible-only body-only ext-plist)
      (save-
      (while (org-forward-heading-same-level)
      )
    (advice-add 'org-html-export-to-html :override #'my/org-html-export-to-html-all-subtrees )


<a id="org22c2bf1"></a>

## emacs tools

blog in a single Org file.
<https://endlessparentheses.com/how-i-blog-one-year-of-posts-in-a-single-org-file.html>

org tools <https://orgmode.org/worg/org-blog-wiki.html>

<https://github.com/org2blog/org2blog> example <https://nhigham.com/category/emacs/>


<a id="org719500a"></a>

# money counting

-   <https://ledger-cli.org/doc/ledger3.html#Accounts-and-Inventories>
-   invoices <https://notes.secretsauce.net/notes/2014/10/01_org-mode-for-invoices.html>
-   <https://orgmode.org/worg/org-contrib/babel/languages/ob-doc-ledger.html>
-   beancount/beancount-mode


<a id="org627436c"></a>

# Troubleshooting

**ERROR**: Unknown terminal type

-   printenv TERM
-   \`infocmp tmux-256color' displays anything?
-   put a few \`tic'ed entries into \`$HOME/.terminfo'

Troubleshooting: **ERROR**: End of file during parsing

-   Solution: You missed “)” or syntax error in CLI arguments.

    *ERROR*: X windows are not in use or not initialized
    *ERROR*: Unknown terminal type

Solution: You use \`find-file' in CLI &#x2013;eval, frame was not created, use `emacsclient --create-frame`


<a id="orgb0828a1"></a>

# Code suggestion - GitLab

provides:

-   Code completion
-   Code generation with context

links

-   VS Code extenstension with Duo <https://gitlab.com/gitlab-org/gitlab-vscode-extension#code-suggestions>
-   JetBrains IDE <https://gitlab.com/gitlab-org/editor-extensions/gitlab-jetbrains-plugin>
-   NeoVim <https://gitlab.com/gitlab-org/editor-extensions/gitlab.vim>
-   Old Emacs package for gitlab <https://github.com/nlamirault/emacs-gitlab>
-   documentation <https://docs.gitlab.com/ee/user/project/repository/code_suggestions/index.html>
-   practices <https://docs.gitlab.com/ee/user/gitlab_duo/use_cases.html>


<a id="orge4b8d33"></a>

# Browsers

-   eww
-   render page to tty <https://github.com/browsh-org/browsh>

not emacs

-   <https://github.com/qutebrowser/qutebrowser>
-   <https://github.com/atlas-engineer/nyxt>


<a id="org2ebd5fd"></a>

# create emacs distribution

[1]: <https://www.emacswiki.org/emacs/emacs-distribution> ""
[2]: <https://github.com/emacs-tw/awesome-emacs> ""
[3]: <https://github.com/kiennq/emacs-build> ""
[4]: <https://www.emacswiki.org/emacs/BuildingEmacs> ""
[5]: <https://www.emacswiki.org/emacs/MakingPackages> ""
[6]: <http://www.emacswiki.org/emacs/emacs-distribution> ""
[7]: <https://github.com/bbatsov/prelude.git> ""
[8]: <https://github.com/overtone/emacs-live.git> ""

Creating your own Emacs distribution involves setting up an independent configuration that can be run separately from your default Emacs setup. Here's a high-level overview of the steps you might take:

1.  ****Create a New Directory****: Make a new directory to serve as the home for your Emacs distribution. This is where you'll store all the configuration files.
2.  ****Set Up Configuration****: Inside your new directory, create a \`.emacs.d\` sub-directory. This will contain your init file and any other configuration files you need.
3.  ****Clone Pre-Packaged Configurations**** (Optional): If you want to use a pre-packaged configuration like Emacs Prelude or Emacs Live, you can clone their repositories directly into your \`.emacs.d\` directory.
4.  ****Run Your Distribution****: You can start Emacs using your new distribution by pointing Emacs to use the new directory as its home. This can be done by setting the \`HOME\` environment variable to your distribution's directory before launching Emacs.
5.  ****Install Packages****: Once running, install new packages using the package manager (\`M-x package-install\`) or add other libraries you're interested in.

For a more detailed guide, you can refer to resources like EmacsWiki or GitHub repositories dedicated to Emacs configurations¹[1]²[2]. These sources provide scripts, tools, and detailed instructions to help you build and manage your Emacs distribution.

Remember, the key to creating your own distribution is to have a separate environment where you can experiment and customize without affecting your main Emacs setup. Good luck with your Emacs journey!

Source: Conversation with Bing, 4/25/2024
(1) EmacsWiki: emacs-distribution. <https://www.emacswiki.org/emacs/emacs-distribution>.
(2) GitHub - emacs-tw/awesome-emacs: A community driven list of useful &#x2026;. <https://github.com/emacs-tw/awesome-emacs>.
(3) GitHub - kiennq/emacs-build: Scripts to build a distribution of Emacs &#x2026;. <https://github.com/kiennq/emacs-build>.
(4) EmacsWiki: Building Emacs. <https://www.emacswiki.org/emacs/BuildingEmacs>.
(5) EmacsWiki: Making Packages. <https://www.emacswiki.org/emacs/MakingPackages>.
(6) undefined. <http://www.emacswiki.org/emacs/emacs-distribution>.
(7) undefined. <https://github.com/bbatsov/prelude.git>.
(8) undefined. <https://github.com/overtone/emacs-live.git>.


<a id="org45122c5"></a>

# How to send a patch

1.  1. Read: Known problems: C-h C-p. 2. <https://debbugs.gnu.org> ex. first field: Emacs second field: Dired 3. <https://lists.gnu.org/mailman/listinfo/bug-gnu-emacs>
2.  git clone git@github.com:emacs-mirror/emacs.git
3.  patch: generate a patch from the master version by using `git format-patch master`. Or `git diff`.  `diff -u -F'^[_a-zA-Z0-9$]\+ *('` when making diffs of C code.
    -   git commit -am "line1 space lines" ; see <file:///home/u/sources/emacs/CONTRIBUTE>
    -   git format-patch -1 HEAD
    -   cat 0001&#x2026;
4.  M-x submit-emacs-patch - to “bug-gnu-emacs@gnu.org”
    -   Subject: 29.1; [PATCH] dired: &#x2026;.

Mailing lists:

-   <https://lists.gnu.org/mailman/listinfo/help-gnu-emacs> Sending bug reports to “the help-gnu-emacs mailing list” is
    undesirable because it takes the time of an unnecessarily large group of people
-   <https://lists.gnu.org/mailman/listinfo/bug-gnu-emacs> smaller group of people who are more likely to know what to do and
    have expressed a wish to receive more messages about Emacs than the others.
    -   <gnu.emacs.bug>
    -   <https://debbugs.gnu.org/index.html#search>
    -   <https://debbugs.gnu.org/cgi/pkgreport.cgi?package=emacs;max-bugs=100;base-order=1;bug-rev=1>
    -   <https://debbugs.gnu.org/Advanced.html>
    -   <https://savannah.gnu.org/projects/emacs/> in admin/notes/bugtracker

Replaying:

-   Email: “bug#123” subject, to  123@debbugs.gnu.org

"Package: emacs,gnus" or "Package: gnus"

-   cc-mode 	bug-cc-mode AT gnu.org
-   gnus 	bugs AT gnus.org
-   org-mode 	emacs-orgmode AT gnu.org

submit@debbugs.gnu.org - Initially, a bug report is submitted by a user as an ordinary mail message to

-   will then be given a number,
-   If the submitter included a **Package** line listing a package with a known maintainer the maintainer will get a copy too.


<a id="orged68d12"></a>

## Sending the bug report via e-mail

to submit@debbugs.gnu.org

-   **Subject** - clear description
-   pseudo-header at the start of the body of the message.
    -   Package: <something>
    -   Version: <something> - of package
-   supply: The exact and complete text of any error messages printed or logged. This is very important!
-   supply: incorrect behaviour -  what behaviour you were expecting, and what you observed
-   supply: suggested fix, or even a patch, if you have one.


<a id="org9d31223"></a>

### severity levels are:

-   critical
-   grave
-   serious
-   important
-   normal
-   minor -   a problem which doesn't affect the package's usefulness, and is presumably trivial to fix.
-   wishlist - for any feature request, and also for any bugs that are very difficult to fix due to major design considerations.


<a id="orgdb4a369"></a>

### tags

-   **patch**
    -   A patch or some other easy procedure for fixing the bug is included in the bug logs. If there's a patch, but
        it doesn't resolve the bug adequately or causes some other problems, this tag should not be used.
-   **wontfix**
    -   This bug won't be fixed. Possibly because this is a choice between two arbitrary ways of doing things and
        the maintainer and submitter prefer different ways of doing things, possibly because changing the behaviour will cause
        other, worse, problems for others, or possibly for other reasons.
-   **moreinfo**
    -   This bug can't be addressed until more information is provided by the submitter. The bug will be closed if
        the submitter doesn't provide more information in a reasonable (few months) timeframe. This is for bugs like "It
        doesn't work". What doesn't work?
-   **unreproducible**
    -   This bug can't be reproduced on the maintainer's system. Assistance from third parties is needed in
        diagnosing the cause of the problem.
-   **fixed**
    -   This bug is fixed or worked around, but there's still an issue that needs to be resolved.
-   **notabug**
    -   This issue is not a bug.
-   **pending**
    -   A fix is waiting on something (e.g. a new release).
-   **help**
    -   The maintainer is requesting help with dealing with this bug.
-   **security**
    -   This bug describes a security problem.
-   **confirmed**
    -   The maintainer has looked at, understands, and basically agrees with the bug, but has yet to fix it. (Use
        of this tag is optional; it is intended mostly for maintainers who need to manage large numbers of open bugs.)
-   **easy**
    -   This bug should be easy to fix. For example, such bugs may be suitable for newcomers to the project to work on
        fixing.


<a id="org240c476"></a>

### ex

    To: submit@debbugs.gnu.org
    From: diligent@testing.linux.org
    Subject: Hello says `goodbye'
    
    Package: hello
    Version: 1.3-16
    X-Debbugs-CC: someone@example.com
    Severity: <severity>
    Tags:
    
    When I invoke `hello' without arguments from an ordinary shell
    prompt it prints `goodbye', rather than the expected `hello, world'.
    Here is a transcript:
    
    /usr/bin/hello
    goodbye
    
    I suggest that the output string, in hello.c, be corrected.
    
    I am using Debian GNU/Linux 2.2, kernel 2.2.17-pre-patch-13
    and libc6 2.1.3-10.


<a id="org5163edb"></a>

## suggest steps

Tags: notabug
Package: indent.el
Version: master
Severity: wishlist

In GNU Emacs master.


<a id="orge05d94c"></a>

## links

-   <https://debbugs.gnu.org/Emacs.html>
-   <https://neoemacs.com/posts/emacs-patches/>


<a id="orgb1420d2"></a>

# elpher - gopher and gemini client

<https://github.com/emacsmirror/elpher>

<https://en.wikipedia.org/wiki/Gemini_(protocol)>

<https://en.wikipedia.org/wiki/Gopher_(protocol)>


<a id="org80ea31a"></a>

# people

edrx eev <http://anggtwu.net/>


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> пояснение в конце
