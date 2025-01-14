
# Table of Contents

1.  [community](#org6061381)
2.  [short help](#org3d19cd0)
3.  [emerge](#orgca4911a)
    1.  [output language](#org86f7a1c)
    2.  [stupid language](#orgea454a8)
    3.  [save output](#org82240d0)
4.  [package manager  - Portage](#org8eff4cd)
    1.  [terms](#org1d37f82)
    2.  [system directories and files](#org7a7bc75)
    3.  [solving conflicts](#orgf2c1967)
    4.  [add remote repository](#org8b8a4f7)
    5.  [overlays](#org2dc55ed)
        1.  [install from overlay](#org37105bc)
        2.  [add non-official overlay](#org481a997)
        3.  [list](#org08233a1)
        4.  [create own](#org96adf47)
        5.  [links](#orgc6691f6)
    6.  [socks proxy](#orgaa59c1b)
    7.  [issue solving](#orgaaab0a2)
    8.  [add localrep or personal overlay](#orgf2a5aa2)
    9.  [create own package and ebuild to localrep](#org20a1946)
    10. [add own overlay to gentoo](#org33b5bea)
    11. [ebuilds](#org96c67b3)
        1.  [main links:](#orgddeafab)
        2.  [minimal ebuild](#org9e364c4)
        3.  [terms](#orgfa240cb)
        4.  [steps](#orgd87292f)
        5.  [](#org393388d)
        6.  [package in the tree(ebuild repository)](#orgf5eb176)
        7.  [Ebuild Phase Functions](#org0ba5a68)
        8.  [Predefined Read-Only Variables](#org1edac4b)
        9.  [Ebuild-defined Variables](#org6817137)
        10. [SLOT](#org8602f57)
        11. [DEPEND - RDEPEND, BDEPEND etc.](#org8d32b58)
        12. [helpers](#org92553d0)
        13. [patches](#orgb31daa3)
        14. [fetch](#orge1c5f24)
        15. [debugging ebuild](#org9f5f2c6)
        16. [testing](#org9de985f)
        17. [test dependencies](#org23c7adf)
        18. [Troubleshooting](#org6fc102a)
        19. [examples](#org60aec79)
        20. [links](#org203fe14)
    12. [eclass](#org444b89b)
        1.  [theory](#org4bf6380)
        2.  [python building](#org8a372ef)
        3.  [testing](#org467d8aa)
        4.  [links](#org0786aae)
    13. [disable unused ebuilds](#org3c486a6)
    14. [mirrors](#org03153b7)
        1.  [links](#org5c81e64)
    15. [update security critical packages](#org76662d1)
    16. [(old) Portage security](#org42e0f8b)
    17. [FAQ](#orgf3f1139)
    18. [links](#orgc191292)
5.  [tools](#org0c5ca10)
6.  [q](#org38bf2cb)
7.  [eix](#org5a430d2)
8.  [profiles](#org9017212)
    1.  [merged-user/split-user](#org2c5bf1e)
9.  [install handbook](#orga0b8d85)
    1.  [firmware](#org0c78a6e)
    2.  [chroot](#orgdb4a20f)
10. [install xfce4 ](#orgdebab46)
11. [Dracut - disk encryption USB - full install](#orge9a2aa1)
    1.  [links](#org5c95497)
    2.  [dracut.conf](#org4bdc173)
    3.  [errors](#orgd0bb68e)
    4.  [change password luks.gpg](#org4310ace)
    5.  [ru descryption](#org5824834)
    6.  [EDID - video kernel mode setting](#org2d7db20)
    7.  [custom edid](#orgab53690)
    8.  [nvidia example Xorg](#org653550a)
12. [Dracut - disk encryption USB - kernel update](#orge719d2a)
13. [create USB stick](#orgc18fb80)
14. [python](#org7bd8830)
15. [no root Xorg](#org774941f)
16. [add user](#orgba9e5f1)
17. [network configuration ](#orgbb07051)
    1.  [/etc/wpa<sub>supplicant</sub>/wpa<sub>supplicant.conf</sub>](#orgf4b0f94)
    2.  [router](#orgae728d0)
    3.  [configure pachcard](#org1509d25)
18. [audio](#org58f35ae)
    1.  [alsa ~/.asoundrc](#org5ac94a5)
    2.  [simplest config output hw:0,0](#org083c324)
    3.  [hdmi output](#org25a19ac)
    4.  [troubleshooting](#org8297fc2)
    5.  [pulseaudion](#org3852dd6)
    6.  [loop back test or “hear yourself” - alsa](#org0f698ac)
    7.  [loop back test - pulseaudio](#orgd840945)
    8.  [firefox and ALSA - microphone](#org712a73c)
    9.  [pulseaudion](#org333a391)
    10. [links](#org61ba7b4)
19. [fonts](#org1be100b)
20. [linux firmware](#org9e3c708)
21. [OpenRC](#orge70fc08)
22. [udev brightness](#org70dae0d)
23. [device manager udev/eudev/hal](#orgd08f550)
24. [parallel emerge](#org0623da8)
25. [raspberry pi](#org1c966a4)
    1.  [kernel:](#org3d947a8)
        1.  [links](#orgbe44345)
    2.  [firmware](#orgacb25c6)
    3.  [overcloking](#org003e84a)
26. [soft](#orgf04082b)
    1.  [games](#org07d70cd)
        1.  [dri](#org8505900)
        2.  [openmw](#orgf265143)
        3.  [fps](#org38efc74)
        4.  [mednafen](#org1596828)
        5.  [gemrb](#org39913ca)
    2.  [media player](#orgcdc6394)
    3.  [ntp set time](#org11a0608)
27. [hdmi mirroring](#orgef4904d)
28. [opencl](#org8e97e95)
29. [all modifications:](#org29635cc)
30. [lock screen & consoles](#org9e54180)
31. [patching guide](#org55ebb91)
32. [USECASES](#org3c21aed)
33. [developsers githubs](#org7a699ce)
34. [gcc optimization](#org6e7537c)
    1.  [options](#org796d423)
    2.  [Per-package](#org3332a57)
    3.  [links](#orgea196e0)
35. [diablo](#org2ccea9d)
36. [Rust and Compiler Bootstrapping](#org6ff35fc)
37. [links](#org09c0eab)

;-**- mode: Org; fill-column: 110;-**-
news

-   <https://fossforce.com/>
-   security news <https://www.gentoo.org/support/security/>


<a id="org6061381"></a>

# community

-   <https://wiki.gentoo.org/wiki/Project:Council/Code_of_conduct>
-   <https://wiki.gentoo.org/wiki/Project:ComRel>
-   annoncements <https://forums.gentoo.org/viewforum.php?f=16>
-   blogs <https://planet.gentoo.org/>
-   <https://gentoo-ev.org/>

IRC

-   <https://memleek.org/gentoo-chat.txt> <https://gentoo-chat.org/>

-   


<a id="org3d19cd0"></a>

# short help

<https://wiki.gentoo.org/wiki/Gentoo_Cheat_Sheet>
  emerge:

-   **emerge -pv:** to check if package was installed
-   **emerge  &#x2013;search sci-libs/\* | grep -e "^\\\*" -e "Description":** look for all packages in category
-   **eclean-dist:** clear /var/cache/distfiles, /usr/portage/distfiles - DISTDIR and the PKGDIR respectively
    variables in /etc/portage/make.conf
-   **eclean-pkg:** clear /usr/portage/packages, /var/cache/binpkgs
-   **emerge -atv:** install package with &#x2013;ask &#x2013;tree &#x2013;verbose
-   **emerge &#x2013;search pck:** search any package in names
-   **emerge &#x2013;info pck:** info for any package
-   **emerge -s '@net-ftp':** search al packages in category
-   emerge &#x2013;ask &#x2013;oneshot sys-apps/portage
-   **emerge &#x2013;ask &#x2013;depclean &#x2013;verbose package -:** find out reverse dependencies
-   **emerge &#x2013;ask &#x2013;autounmask =sys-libs/glibc-2.33-r1:** emerge older version
-   USE="qt4 -gtk" emerge -1v app-misc/autokey
-   **cat /var/lib/portage/world:** installed packages
-   **emerge &#x2013;resume:** resume from package was finished (after Ctr+C)
-   **emerge &#x2013;resume &#x2013;skip-first:** skip first package with couse failure &#x2013;keep-going - ignore fails
-   emerge @preserved-rebuild - emerge does not update the depending libraries, but put them into a set instead
-   **qlop -a | less:** last installed packages
-   **equery list \*::localre:** installed packages from overlay
-   **qlist -IRv | grep localre:** installed packages from overlay
-   **eix -e dev-lang/lua:** list available stots for package
-   **emerge &#x2013;fuzzy-search=y &#x2013;searchdesc, -S "descr":** search for package by description

light (standard):

    emerge --ask --update --changed-use --deep @world :: update
    emerge -1vUD @world

hard

    emerge --ask --update --newuse --deep --with-bdeps=y --verbose-conflicts --tree @world :: update

equery:
for installes:

-   **equery h flag1 flag2:** packages with specific USE flags
-   **equery list '\*':** all installed packages - chech if package installed
-   **equery f package:** files of package
-   **equery b 'ifstat':** belongs - list installed packages that owns FILE
-   **emerge app/portage-plf ; plf 'file':** list all packages that owns FILE
-   **equery g iwd-1.24:** dependencies for iwd - "-1.24" - required
-   **equery d iwd-1.24:** packages dependent on iwd
-   **equery l sci-libs/\*:** installed packages in category

for all:

-   **equery m firefox:** info and available versions
-   **equery m -d firefox:** description of package
-   **equery meta package:** info
-   **equery u package:** package USE flags

which package provide file:

-   emerge -av app-portage/pfl
-   e-file YOURFILE
-   or <http://www.portagefilelist.de/site/query/file>

REQUIRED<sub>USE</sub> conditions:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">foo? ( bar )</td>
<td class="org-left">if foo is set, bar must be set</td>
</tr>


<tr>
<td class="org-left">foo? (!bar )</td>
<td class="org-left">if foo is set, bar must not be set</td>
</tr>


<tr>
<td class="org-left">foo? (or (bar baz aha )</td>
<td class="org-left">at least one must be set</td>
</tr>


<tr>
<td class="org-left">^^ (foo bar aha)</td>
<td class="org-left">exactly one must be set</td>
</tr>


<tr>
<td class="org-left">?? ( foo bar aha)</td>
<td class="org-left">no more than one may be set</td>
</tr>
</tbody>
</table>

CFLAGS per package:


<a id="orgca4911a"></a>

# emerge


<a id="org86f7a1c"></a>

## output language

man -P 'less -p ^OUTPUT' emerge

<a id="org46d2a7b"></a>

-   N	new
-   NS	?
-   R	re-emerge
-   U	upgrade
-   UD	downgrade
-   \#	package.mask
-   \*	missing keyword
-   ~	unstable keyword


<a id="orgea454a8"></a>

## stupid language

-   D - deep
-   u - update
-   q - quiet
-   N - newuse
-   v - verbose
-   a - ask
-   1 - oneshot - do not add to world
-   p - pretend
-   e - emptytree - reinstall of atom and his dependencies as though no packages are currently installed
-   s - search
-   U - changed-use (weeker)
-   N - newuse (stronger)


<a id="org82240d0"></a>

## save output

    emerge --ask package 2>&1 | tee a.txt


<a id="org8eff4cd"></a>

# package manager  - Portage

TODO: <https://wiki.gentoo.org/wiki/Handbook:AMD64/Portage/CustomTree>
variables:

-   emerge &#x2013;info
-   make.defaults - /usr/share/portage/config/make.defaults
-   make.globals - /usr/share/portage/config/make.globals
-   /usr/share/portage/config/make.globals
-   activated repositories/overlays:
    -   q -o
    -   eselect repository list -i


<a id="org1d37f82"></a>

## terms

-   **Portage** - package manager and distribution system (emerge command)
    -   packages or atoms
-   **ebuild repository**, colloquially known as an overlay - metadata files for pachages
    
    -   main Gentoo ebuild repository.
    -   **overlays** not main Gentoo ebuild repository, because when they are used, they are overlay on the main
    
    (ebuild) repository, means that a package with the same name and version in the overlay will take precedence
    over that in the main ebuild repository when user installs package via emerge.
    
    -   local ebuild repository
-   primary repository - **Gentoo ebuild repository** - Gentoo repo, ::gentoo, gentoo.git - the Portage
    tree, rsync tree, or sometimes just "the tree"
    -   contains ebuilds
-   **package** -  examples the www-client/firefox
-   **category** - “www-client” or “sci-libs”
-   **ebuild** file - bash like
    -   standardized through the Package Manager Specification
    -   define Ebuild Phase Functions - how to install
        -   src<sub>unpack</sub>, src<sub>prepare</sub>, src<sub>configure</sub>, src<sub>compile</sub>
    -   SRC<sub>URI</sub> - tells Portage the address to use for downloading the source tarball
    -   BDEPEND, DEPEND, and RDEPEND - dependencies
-   **live ebuilds** -  use 9999 as the version (or as the last version component)
-   **Gentoo rsync mirrors** - mirrors distribute the Gentoo ebuild repository
    -   sync-uri variable in the [gentoo] section of repos.conf
    -   <https://www.gentoo.org/support/rsync-mirrors/>
-   **Gentoo source mirrors** - distribute the source archives for the software, stages and tree snapshots for installation
    -   GENTOO<sub>MIRRORS</sub> variable in make.conf
    -   <https://www.gentoo.org/downloads/mirrors/>
-   eclass is a collection of code which can be used by more than one ebuild
-   CBUILD - The system on which the build is performed.
-   CHOST - The system on which the package is going to be executed.
-   BDEPEND - dependencies, programs that need to be executed during the build
-   RDEPEND - dependencies, on built (target) system


<a id="org7a7bc75"></a>

## system directories and files

directories

-   *usr/tmp/portage* or *var/tmp/portage* - extracted source files (PORTAGE<sub>TMPDIR</sub>)
-   *var/db/pkg* - config of installed packages

make.conf:

-   PORTDIR="*var/db/repos/gentoo*" - snapshot of Gentoo ebuild repository
    -   /var/db/repos/gentoo/profiles/use.desc - A full description on the available USE flags
    -   /var/db/repos/gentoo/metadata/timestamp.chk  - last updated (synced)
-   DISTDIR="/var/cache/distfiles" - is the default directory Portage uses to store source code tarballs.
-   PKGDIR="/var/cache/binpkgs"

default config *usr/share/portage/config*

-   repos.conf - may be overwriten in /etc/portage/repos.conf/gentoo.conf
-   make.globals - main config file defaults

<https://wiki.gentoo.org/wiki/Gentoo_specific_directories>


<a id="orgf2c1967"></a>

## solving conflicts

types:

-   slot conflict
-   dependency confclit ( warning)

search installed packages and output formatted:

-   equery l kde-frameworks/\* -F '$category/$name'


<a id="org8b8a4f7"></a>

## add remote repository

    root # eselect repository add guru git git://github.com/gentoo-mirror/guru.git
    root # emaint sync -r guru

Sometime, it's convenient to temporarily configure the overlay as local repository for test purpose, this can
 avoid frequently pushing temporary work to remote git repository.

/etc/portage/repos.conf/my-overlay.conf

    [localrepo]
    location = /home/my-name/my-overlay
    priority = 100

-   <https://wiki.gentoo.org/wiki/Project:Overlays/Overlays_guide>
-   not official search <https://gpo.zugaina.org/>


<a id="org2dc55ed"></a>

## overlays


<a id="org37105bc"></a>

### install from overlay

-   emerge &#x2013;ask app-eselect/eselect-repository
-   eselect repository enable N
-   emerge &#x2013;sync
-   emerge ??


<a id="org481a997"></a>

### add non-official overlay

-   eselect repository add matrix git <https://anongit.gentoo.org/git/repo/proj/matrix.git>
-   root #emaint sync -r matrix
-   root #eix-update # Regenerate eix database cache (optional)


<a id="org08233a1"></a>

### list

-   official eselect repostitory list <https://repos.gentoo.org/> <https://overlays.gentoo.org/>


<a id="org96adf47"></a>

### create own

-   main <https://wiki.gentoo.org/wiki/Project:Overlays/Overlays_guide>
-   <https://wiki.gentoo.org/wiki/Creating_an_ebuild_repository>


<a id="orgc6691f6"></a>

### links

-   official overlays: eselect repostitory list <https://repos.gentoo.org/> <https://overlays.gentoo.org/>
-   doc <https://wiki.gentoo.org/wiki/Ebuild_repository>
-   non-official list <https://gpo.zugaina.org/Overlays>
-   doc <https://wiki.gentoo.org/wiki/Project:Overlays/Overlays_guide>
-   all official repositories <https://gitweb.gentoo.org/>


<a id="orgaa59c1b"></a>

## socks proxy

-   net-proxy/sshuttle - to create VPN connection over ssh

for portage: <https://forums.gentoo.org/viewtopic-t-52442-start-0.html>

-   net-proxy/tsocks
-   in /etc/make.conf
    -   SYNC="rsync://rsync.us.gentoo.org/gentoo-portage"
    -   FTP<sub>PROXY</sub>="<ftp://192.168.0.1:8000>"
    -   HTTP<sub>PROXY</sub>="<http://192.168.0.1:80>"
    -   \#RSYNC<sub>PROXY</sub>="192.168.0.1:873"
-   in /etc/socks/tsocks.conf
    -   \# We can access 192.168.0.\* directly
    -   local = 192.168.0.0/255.255.255.0
    -   \# Otherwise we use the server
    -   path {
    -   reaches = 0.0.0.0/0
    -   server = 192.168.0.1
    -   server<sub>type</sub> = 5
    -   default<sub>user</sub> = test
    -   default<sub>pass</sub> = test
    -   }


<a id="orgaaab0a2"></a>

## issue solving

-   emerge &#x2013;info
-   eselect profile show


<a id="orgf2a5aa2"></a>

## add localrep or personal overlay

-   emerge &#x2013;ask app-eselect/eselect-repository
-   eselect repository create <repository<sub>name</sub>>  #  /var/db/repos/localrepo and /etc/portage/repos.conf/eselect-repo.conf
-   chown -R portage:portage /var/db/repos/localrepo
-   emerge &#x2013;ask git -iconv -pcre -perl -webdav
-   /var/db/repos/localrepo/metadata/layout.conf:
    -   auto-sync = false


<a id="org20a1946"></a>

## create own package and ebuild to localrep

-   emerge &#x2013;ask  app-emacs/ebuild-mode
-   mkdir /var/db/repos/localrepo/<package-group>
-   cp /var/db/repos/gentoo/<package-group>/<package> /var/db/repos/localrepo/<package-group>/<package>

-   cd /var/db/repos/localrepo/<package-group>/<package> # {CATEGORY}/{PN}
-   one of:
    -   cp <package-group>/<package> <package-group>/<package>-r222 # version must be more
    -   create own:
        -   cp /var/db/repos/gentoo/skel.ebuild /var/db/repos/example<sub>repository</sub>/{CATEGORY}/{PN}
        -   emacs {P}.ebuild
        -   chown -R portage:portage /var/db/repos/localrepo
-   pkgdev manifest ; pkgcheck scan #  to create the package's Manifest file for ebuild and # QA errors in an ebuild
-   emerge &#x2013;ask &#x2013;verbose app-dicts/artha # test
-   GENTOO<sub>MIRRORS</sub>="" ebuild ./scrub-2.6.1.ebuild manifest clean unpack # test fetching and unpacking the upstream sources
-   ebuild scrub-2.6.1.ebuild clean test install  # test suite
-   ebuild scrub-2.6.1.ebuild clean install merge # actual install

old

-   ebuild <ebuild> manifest # update Manifest for .ebuild file
-   chown -R portage:portage /var/db/repos/localrepo
-   <https://wiki.gentoo.org/wiki/Handbook:AMD64/Portage/CustomTree#Defining_a_custom_ebuild_repository>
-   <https://wiki.gentoo.org/wiki/Creating_an_ebuild_repository>
-   <https://wiki.gentoo.org/wiki/User:Shunlir/An_Overlay_Tutorial>
-   <https://wiki.gentoo.org/wiki/Basic_guide_to_write_Gentoo_Ebuilds>
-   <https://devmanual.gentoo.org/quickstart/>


<a id="org33b5bea"></a>

## add own overlay to gentoo


<a id="org96c67b3"></a>

## ebuilds

ex. name-version.ebuild


<a id="orgddeafab"></a>

### main links:

-<file:///usr/lib/portage/python3.12/phase-helpers.sh>

-   <https://devmanual.gentoo.org/ebuild-writing/functions/src_configure/configuring/index.html>


<a id="org9e364c4"></a>

### minimal ebuild

    EAPI=8
    inherit .. ???
    DESCRIPTION="Ruby grammar for Tree-sitter" # for info
    HOMEPAGE="https://github.com/tree-sitter-grammars/tree-sitter-yaml" # for info
    SRC_URI="https://github.com/tree-sitter/${PN}/archive/${TS_PV:-v${PV}}.tar.gz"

    LICENSE="MIT" # for info
    SLOT="0"
    KEYWORDS="~amd64 ~x86" This variable is required to specify the architectures and platforms that the package supports.

    RESTRICT="mirror bindist" # mirror - disable attempt to download from GENTOO_MIRRORS


<a id="orgfa240cb"></a>

### terms

-   **ebuild:** bash scripts that are executed within a special environment.
-   **EAPI:** standardization effort of ebuild file format, ebuild repository format. located at the top of the
    ebuild. (eclasses may have EAPI-conditional code)
-   **helpers:** functions, can require eutils eclass or accessed directly. usage: `inherit autotools`
-   **version specifier:** {CATEGORY}, {PN}, and {P} represent package category, package name, and package name and
    version. ex. “sys-devel/gdb-7.3”


<a id="orgd87292f"></a>

### steps

1.  /usr/bin/emerge -> /usr/lib/python-exec/python-exec2 ->  /usr/lib/python-exec/python3.11/emerge
2.  k/usr/lib/python3.11/site-packages/<sub>emerge</sub>/main.py
3.  [4.11.5](#org161bafb) /usr/lib/python-exec/python3.11/ebuild
4.  all files from SRC<sub>URI</sub> downloaded to /var/cache/distfiles (if exist, skip)
    -   SRC<sub>URI</sub> tells Portage the address to use for downloading the source tarball.


<a id="org393388d"></a>

### <a id="org161bafb"></a>

low level interface to the Portage system

-   /usr/lib/python-exec/python3.11/ebuild
-   portage.doebuild(ebuild<sub>path</sub>, action) /usr/lib/python3.11/site-packages/portage/package/ebuild/doebuild.py
    -   \_spawn<sub>phase</sub> -> \_doebuild<sub>spawn</sub>
-   /usr/lib/portage/python3.11/ebuild.sh
-   /usr/lib/portage/python3.11/phase-functions.sh: \_<sub>ebuild</sub><sub>main</sub>


<a id="orgf5eb176"></a>

### package in the tree(ebuild repository)

-   Manifest - hashes
-   20200316.ebuild
-   99999999.ebuild
-   metadata.xml - additional data about a package or category. use flags, maintainers


<a id="org0ba5a68"></a>

### Ebuild Phase Functions

-   Package from source: pkg<sub>pretend</sub>, pkg<sub>setup</sub>, src<sub>unpack</sub>, src<sub>prepare</sub>, src<sub>configure</sub>, src<sub>compile</sub>, src<sub>test</sub> (optional, FEATURES="test"), src<sub>install</sub>, pkg<sub>preinst</sub>, pkg<sub>postinst</sub>
-   Package from binary: pkg<sub>pretend</sub>, pkg<sub>setup</sub>, pkg<sub>preinst</sub>, pkg<sub>postinst</sub>

**pkg<sub>prerm</sub>** and **pkg<sub>postrm</sub>** functions are called when uninstalling a package

Between the transition from **pkg<sub>preinst</sub>** to **pkg<sub>postinst</sub>**, files are copied over to the live filesystem from the
 sandboxed temporary installation location, and Portage records digests of the files installed.

There is phase functions, which may be called as "default" from redefined funcions(pkg<sub>nofetch</sub>, src<sub>unpack</sub>).

-   default<sub>pkg</sub><sub>nofetch</sub> - when RESTRICT="fetch"
-   default<sub>src</sub><sub>unpack</sub>
-   default<sub>src</sub><sub>prepare</sub> - apply patches
-   default<sub>src</sub><sub>configure</sub> <https://devmanual.gentoo.org/ebuild-writing/functions/src_configure/configuring/index.html>
-   default<sub>src</sub><sub>compile</sub>
-   default<sub>src</sub><sub>test</sub>
-   default<sub>src</sub><sub>install</sub>

actual code located in functions: \_<sub>eapi8</sub><sub>src</sub><sub>prepare</sub> &#x2026;

files:

-   /usr/lib/portage/python3.11/phase-functions.sh
-   

<https://devmanual.gentoo.org/ebuild-writing/functions/index.html>

1.  in code functions

    eapply<sub>user</sub> - apply patches from /etc/portage/patches


<a id="org1edac4b"></a>

### Predefined Read-Only Variables

internal

-   **PORTAGE<sub>TMPDIR</sub>:** from emerge &#x2013;info: PORTAGE<sub>TMPDIR</sub>="/var/tmp"
-   **PORTAGE<sub>BUILDDIR</sub>:** internal directory with extracter tar.gz. ex: '*var/tmp/portage/dev-python/flask-2.3.2*'

accessible

-   **P:** Package name and version (excluding revision, if any), for example vim-6.3.
-   **PN:** Package name, for example vim.
-   **CATEGORY:** Package's category, for example app-editors.
-   **ROOT:** The absolute path to the root directory into which the package is to be merged.  Only allowed in pkg<sub>\*</sub> phases
-   **DISTDIR:** Contains the path to the directory where all the files fetched for the package are stored (.tar.gz). defined in "/var/cache/distfiles"
-   **A:** All the source files for the package (excluding those which are not available because of USE flags).
-   **WORKDIR:** Path to the ebuild's root build directory. For example: "${PORTAGE<sub>BUILDDIR</sub>}/work".
-   **T:** Path to a temporary directory which may be used by the ebuild.  For example: "${PORTAGE<sub>BUILDDIR</sub>}/temp".
-   **D:** Path to the temporary install directory. For example: "${PORTAGE<sub>BUILDDIR</sub>}/image".
-   **HOME:** Path to a temporary directory for use by any programs invoked by an ebuild that may read or modify
    the home directory. For example: "${PORTAGE<sub>BUILDDIR</sub>}/homedir".

<https://devmanual.gentoo.org/ebuild-writing/variables/index.html#predefined-read-only-variables>

1.  ex

        PN=slack
        PV=4.36.138
        echo https://downloads.slack-edge.com/releases/linux/${PV}/prod/x64/${PN}-desktop-${PV}-amd64.deb


<a id="org6817137"></a>

### Ebuild-defined Variables

EAPI 7: CHOST vs CBUILD

-   CHOST - DEPEND The system on which the package is going to be executed.
-   CBUILD - BDEPEND - The system on which the build is performed.

dependencies

-   **DEPEND:** legacy variable that was used to specify both build-time and runtime dependencies. It is still
    supported for backwards compatibility, but it is recommended to use BDEPEND and RDEPEND instead.
-   **RDEPEND:** Runtime dependencies. target platform
-   **BDEPEND:** where we build, programs that will be executed during the build (not necessarily required to run it.)
-   **IDEPEND:** Install Dependencies. needed during the pkg<sub>postinst</sub> phase and that can be unmerged afterwards.  not for runtime.
-   **PDEPEND:** Post-Dependencies. runtime dependencies that do not strictly require being satisfied immediately. Can be merget After.

variables

-   **SRC<sub>URI</sub>:** A list of source URIs for the package. Can contain USE-conditional parts, see SRC<sub>URI</sub>. From where to get tar.gz
-   **KEYWORDS:** suitability and stability of both the package and the ebuild on each given arch. see [3.1](#org46d2a7b), -\* - worth trying to test on unlisted arches.
-   **IUSE:** A list of all USE flags (excluding arch flags, but including USE<sub>EXPAND</sub> flags) used within the ebuild.
-   **SLOT:** "0" - not needed. when package require multiple version of same app or lib. see <https://devmanual.gentoo.org/general-concepts/slotting/index.html>
-   **REQUIRED<sub>USE</sub>:** A list of assertions that must be met by the configuration of USE flags to be valid for this ebuild.
-   **RESTRICT:** Valid values are fetch, mirror, strip, test and userpriv. see: man 5 ebuild
-   **S:** Path to the temporary build directory, used by src<sub>compile</sub> and src<sub>install</sub>. Default: "${WORKDIR}/${P}"
-   **BROOT:** BROOT is the absolute path to the root directory


<a id="org8602f57"></a>

### SLOT

ebuild variable. ex. <file:///var/db/repos/gentoo/dev-lang/lua/lua-5.4.6.ebuild>

    SLOT="5.4"

Allow multiple versions of a package to be installed and managed simultaneously by Portage.

Slots may be used in ebuild with (:) :

    emerge --ask gentoo-kernel:6.6.21 gentoo-kernel:6.1.81

where 6.6.21 and 6.1.81 are two SLOTs


<a id="org8d32b58"></a>

### DEPEND - RDEPEND, BDEPEND etc.

-   arbitrary whitespace separated.
-   may have versions:
    -   >=ev-libs/openssl-0.9.7d - at least version 0.9.7d
    -   ~app-misc/foo-1.23 	Version 1.23 (or any 1.23-r\*) is required.
    -   =app-misc/foo-1.23 	without allowing revisions

1.  USE in dependencies

    foo must have bar disabled and baz enabled:
    
        app-misc/foo[-bar,baz]
    
    Compact form 	Equivalent expanded form
    
    -   app-misc/foo[bar?] 	bar? ( app-misc/foo[bar] ) !bar? ( app-misc/foo )
    -   app-misc/foo[!bar?] 	bar? ( app-misc/foo ) !bar? ( app-misc/foo[-bar] )
    -   app-misc/foo[bar=] 	bar? ( app-misc/foo[bar] ) !bar? ( app-misc/foo[-bar] )
    -   app-misc/foo[!bar=] 	bar? ( app-misc/foo[-bar] ) !bar? ( app-misc/foo[bar] )
    
    For a new package version: (+) indicates that the missing flag is assumed to be enabled, (-) the opposite.
    
        >=dev-libs/boost-1.48[threads(+)]
    
    Treat all boost versions without the threads flag as having it enabled.
    
    doc <https://devmanual.gentoo.org/general-concepts/dependencies/>

2.  Blockers

    Пакеты, которые не должны быть установлены одновременно с пакетом, для которого определяется зависимость.
    
    -   weak blockers. ex. RDEPEND="!app-misc/foo"
        -   allow to have two versions installed
        -   exempts the common files from file collision checks
    -   strong blockers. ex. RDEPEND="!!app-misc/foo"
        -   do not allow to install
    
    Allow blocking specific versions: `RDEPEND="!<app-misc/foo-1.3"`

3.  Slot operators: media-libs/cogl:1.0=

    -   :=, :\* - means that any slot is acceptable.
    
    USE-conditional dependencies:
    
    -   Should not be used for disabling a certain USE flag on a given architecture.
    -   ex.
        -   if a given USE flag is set:
            -   perl? ( dev-lang/perl )
        -   if a given USE flag is not set:
            -   !perl? ( dev-lang/perl )

4.  Or: Any of many

        DEPEND="|| ( app-misc/foo app-misc/bar )"
    
    Require foo or bar.


<a id="org92553d0"></a>

### helpers

/usr/lib/portage/python3.12/phase-helpers.sh

1.  general

    -   **assert [reason]:** if any component is non-zero (indicating failure), calls die with reason as a failure message.
    -   **die [reason]:** Causes the current emerge process to be aborted. The final display will include reason.
    -   **nonfatal <helper>:** Execute helper and do not call die if it fails. The nonfatal helper is available beginning with EAPI 4.
    -   **use <USE item>:** If USE item is in the USE variable, the function will silently return 0 (aka shell
        true). If USE item is not in the USE variable, the function will silently return 1 (aka shell false). usev is
        a verbose version of use.  Example: use python && python-single-r1<sub>pkg</sub><sub>setup</sub>
        -   **usev <USE item>:** Like use, but also echoes USE item when use returns true.
        -   usex <USE flag> [true output] [false output] [true suffix] [false suffix]
        -   use<sub>with</sub> <USE item> [configure name] [configure opt]
        -   use<sub>enable</sub> <USE item> [configure name] [configure opt]    Same as use<sub>with</sub> above, except that the configure options are &#x2013;enable- instead of &#x2013;with- and &#x2013;disable- instead of &#x2013;without-. Beginning with EAPI 4, an empty configure opt argument is recognized. In EAPI 3 and earlier, an empty configure opt argument is treated as if it weren't provided.
    -   has <item> <item list>
    -   **hasv <item> <item list>:** Like has, but also echoes item when has returns true.
    -   has<sub>version</sub> [-b] [-d] [-r] [&#x2013;host-root] <category/package-version>
    -   best<sub>version</sub> [-b] [-d] [-r] [&#x2013;host-root] <package name>
    
    for Python: <https://projects.gentoo.org/python/guide/helper.html>
    
    python<sub>doexe</sub>, python<sub>doscript</sub>, python<sub>domodule</sub>, and python<sub>doheader</sub>: Used for installing Python executables,
     scripts, modules, and headers respectively.

2.  Log

    -   **elog	:** If you need to display a message that you wish the user to read and take notice of, then use
        elog. It works just like echo(1), but adds a little more to the output so as to catch the user's eye. The
        message will also be logged by portage for later review.
    -   **einfo:** Same as elog, but should be used when the message isn't important to the user (like progress or
        status messages during the build process).
    -   **ebegin:** Like einfo, we output a helpful message and then hint that the following operation may take some
        time to complete. Once the task is finished, you need to call eend.
    -   **eend	:** Followup the ebegin message with an appropriate "OK" or "!!" (for errors) marker. If status is
        non-zero, then the additional error message is displayed.
    -   **eqawarn:** Same as einfo, but should be used when showing a QA warning to the user.
    -   **ewarn:** Same as einfo, but should be used when showing a warning to the user.
    -   **doman:** Recognition of Language Codes in File Names
    -   **unpack:** Support for the xz file extension
    -   **econf:** ./configure
    -   **einstall:** make install
    -   **dodoc:** Installs documentation files into /usr/share/doc.
    -   **emake:** Used for building and installing packages using the make command.
    -   **eapply:** Applies patches to the source code during the src<sub>prepare</sub> phase.
    -   **doins:** Installs files into the system, often used for installing executables and scripts.
    -   **dobin:** Installs binaries into the system.
    -   **udev<sub>dorules</sub>:** Installs udev rules files into the system.
    
    man 5 ebuild - full list
    
    <https://dev.gentoo.org/~zmedico/portage/doc/man/ebuild.5.html>
    
    additional in /var/db/repos/gentoo/eclass/\*.eclass files


<a id="orgb31daa3"></a>

### patches

patches - is optional directory.

There are two types of patches - /etc/portage/patches and ebuild patches.

1.  etc patches

    steps:
    
        cd /tmp/
        git clone --branch <tag-name> --single-branch https://github.com/example/repo.git
        cd src/
        edit
        "git diff --relative --stat -p --output=patch.patch" # cannot be used: commit and "git format-patch -1 HEAD"
        mkdir -p /etc/portage/patches/x11-misc/pcmanfm-1.2.5
        mv patch.patch /etc/portage/patches/x11-misc/pcmanfm-1.2.5/patch.patch
    
    <https://wiki.gentoo.org/wiki//etc/portage/patches>

2.  ebuild patches

    files/ - path for \*.patch files
    
    example: net-analyzer/portmon
    
        PATCHES=(
            #name-0.1
            "${FILESDIR}"/${P}-dont-umask.patch #93671
        )
        # or
        PATCHES=(
            #name
            "${FILESDIR}"/${PN}-4.3-dont-umask.patch #93671
        )
    
    <https://devmanual.gentoo.org/ebuild-writing/misc-files/patches/index.html>


<a id="orge1c5f24"></a>

### fetch

Downloading a package's source happens before any of phases.

If the user tries to install a **fetch-restricted** package, the package manager will not try to download it,
 but simply check whether the corresponding archive is present in /usr/portage/distfiles

If not, it will execute the pkg<sub>nofetch</sub> ebuild function which should print a message describing the steps
 needed to acquire the archive.


<a id="org9f5f2c6"></a>

### debugging ebuild

-   ebuild /path/to/your.ebuild &#x2013;check-syntax
-   use -v with “ebuild” command
-   /etc/portage/make.conf: PORTAGE<sub>ELOG</sub><sub>SYSTEM</sub>="echo save" -  Show messages after emerging **and** save
-   export DEBUG=1
-   export PORTAGE<sub>LOG</sub><sub>FILE</sub>="/path/to/logfile"
-   emerge &#x2013;debug your-package
-   use tools like chroot or Docker to create isolated environments.
-   Using src<sub>test</sub> Phase

<https://wiki.gentoo.org/wiki/Portage_log>


<a id="org9de985f"></a>

### testing

It is possible to test fetching and unpacking the upstream sources by the new ebuild, using the ebuild command:

-   GENTOO<sub>MIRRORS</sub>="" ebuild ./scrub-2.6.1.ebuild manifest clean unpack

ebuild require modified config of /etc/portage/make.conf or /usr/share/portage/config/make.globals

steps:

1.  create tmp directory:
    -   mkdir -p /tmp/ebuildtest
    -   chown u:portage /tmp/ebuildtest
    -   chmod g+s /tmp/ebuildtest
2.  add repository with ebuild: eselect repository enable localrep. Which add /etc/portage/repos.conf/eselect-repo.conf
3.  creation of environment:
    1.  btrfs subvolume snapshot / /mnt/test # directory /mnt/test should not exist
    2.  cd /mnt/test
    3.  mount -t proc *proc proc*
    4.  \# mount -t sysfs *sys sys*
    5.  mount &#x2013;rbind *dev dev* # both places
    6.  mount &#x2013;rbind *var/tmp* var/tmp # both places
    7.  chroot /mnt/gentoo /bin/bash
    8.  source /etc/profile
    9.  mount -t proc proc /proc
    10.
4.  GENTOO<sub>MIRRORS</sub>="" ebuild ./scrub-2.6.1.ebuild manifest clean unpack
5.  pkg-testing-tool &#x2013;append-emerge='&#x2013;autounmask=y' &#x2013;extra-env-file 'test.conf' &#x2013;append-required-use
    '!anonch' &#x2013;test-feature-scope once &#x2013;max-use-combinations 6 -p '=sci-libs/onnxruntime-1.18.1' &#x2013;report
    /var/tmp/portage/logs/efl-1.25.1-r11-report.json

creation of environment:

-   btrfs subvolume snapshot / /mnt/test
-   btrfs subvolume delete /mnt/test

execute ebuild step - pkg<sub>setup</sub>()

    ebuild /var/db/repos/gentoo/app-containers/lxc/lxc-4.0.6.ebuild setup

1.  pkgdev tatt

    -   &#x2013;packages TARGET [TARGET &#x2026;], -p TARGET [TARGET &#x2026;]
    -   &#x2013;use-default - Prefer to use default use flags configuration
    -   &#x2013;test, -t - Include a test run for packages which define src<sub>test</sub> phase (in the ebuild or inherited from
        eclass). make.conf FEATURES="test"
    
    optional:
    
    -   &#x2013;job-name NAME -j NAME - just name
    
    kgdev tatt &#x2013;use-default &#x2013;extra-env-file test.conf -p =www-client/firefox-122.0.1 -j tatt-firefox
    
    -   /etc/portage/env/test.conf
    
    Feature=”test” Run package-specific tests during each merge to help make sure the package compiled properly.
     See test in ebuild(1) and src<sub>test</sub>() in ebuild(5).  This feature implies the "test" USE flag if it is a
     member of IUSE, either explic‐ itly or implicitly (see ebuild(5) for more information about IUSE).  The
     "test" USE flag is also automatically disabled when the "test" feature is disabled.

2.  pkg-testing-tool

        emerge --ask app-portage/pkg-testing-tools
    
        $ pkg-testing-tool --append-emerge '--autounmask=y' --extra-env-file 'test.conf' --test-feature-scope once --max-use-combinations 6 -p '=sci-libs/onnxruntime-1.18.1'
    
    under user:
    
        Permission denied: '/etc/portage/package.accept_keywords/zzz_pkg_testing_tool_h8yuhdy8'


<a id="org23c7adf"></a>

### test dependencies

    TEST_DEPEND="dev-util/check
                 dev-util/valgrind"
    
    src_test() {
        emake test
    }


<a id="org6fc102a"></a>

### Troubleshooting

The source directory
 '/var/tmp/portage/sci-libs/unhubbed-transformers-4.45.0/work/unhubbed-transformers-4.45.0' doesn't exist. But
 work/unhubbed-transformers-4.45.0.dev0 exist, because we download unhubbed-transformers-4.45.0.dev0.tar.gz
 from github.

-   Solution:

    MY_PV="${PV}.dev0"
    MY_P="${PN}-${MY_PV}"
    S=${WORKDIR}/${MY_P} # work/...
    SRC_URI="https://github.com/Anoncheg1/${PN}/archive/refs/tags/${MY_PV}.tar.gz
    	-> ${P}.gh.tar.gz"


<a id="org60aec79"></a>

### examples

-   cmake git-releasedev-libs/sexpp/sexpp-0.9.0.ebuild
-   cmake git-r3 xdg-utilsgames-strategy/colobot/colobot-9999.ebuild


<a id="org203fe14"></a>

### links

-   <https://devmanual.gentoo.org/quickstart/index.html>
-   main reference for ebuild development <https://devmanual.gentoo.org/index.html>
-   man 5 ebuild
-   <https://devmanual.gentoo.org/eclass-reference/ebuild/>


<a id="org444b89b"></a>

## eclass


<a id="org4bf6380"></a>

### theory

collection of code which can be used by more than one ebuild.

add <repo>/eclass/autotools.eclass in ebuild:

    inherit autotools

for:

-   used by many ebuilds (for example, autotools, bash-completion-r1, flag-o-matic, toolchain-funcs)
-   provide a basic build system for many similar packages (for example, perl-module, vim-plugin)
-   handle one or a small number of packages with complex build systems (for example, kernel-2, toolchain)

consit of:

-   variables - affect the default behavior of the eclass.
-   functions -
-   Function Variables
-   phase functions or Export Functions - default implementations for any of the ebuild phase functions - used to override eclass-defined defaults
    -   simple function definition (not multiple eclass friendly)
    -   EXPORT<sub>FUNCTIONS</sub> - have their name prefixed ("namespaced") with ${ECLASS}\_. 1) define ${ECLASS}<sub>src</sub><sub>compile</sub> 2) EXPORT<sub>FUNCTIONS</sub> ${ECLASS}<sub>src</sub><sub>compile</sub>
        -   If multiple eclasses export the same function, the latest (inherited last) defined version wins.
-   Inherit guard:

    if [[ -z ${_FOO_ECLASS} ]]; then _FOO_ECLASS=1 ... fi

-   Handling incorrect usage of an eclass: case ${EAPI} in &#x2026;

recommendation is now that eclasses should not inherit other eclasses after calling EXPORT<sub>FUNCTIONS</sub>.

-   inherit other eclasses


<a id="org8a372ef"></a>

### python building

1.  eclasses

    pypi.eclass - A helper eclass to generate PyPI source URIs
    
    -   executes \_pypi<sub>set</sub><sub>globals</sub> which set: SRC<sub>URI</sub> as <https://files.pythonhosted.org/packages/{pytag}/${project::1}/${project}/${filename>}
    
    distutils-r1.eclass
    
    -   redefine phases src<sub>prepare</sub> src<sub>configure</sub> src<sub>compile</sub> src<sub>test</sub> src<sub>install</sub>
    -   variables:
        -   DISTUTILS<sub>USE</sub><sub>PEP517</sub> - complete build and install is done in python<sub>compile</sub>() just merges the temporary  install tree into the real fs. may be: setuptools, hatchling, jupyter, poetry
    -   inherit multibuild multilib multiprocessing ninja-utils toolchain-funcs
        -   and python-r1 or python-single-r1
    
    multibuild.eclass - building multiple variants of packages (e.g. multilib, Python implementations).
    
    python-r1.eclass - A common, simple eclass for Python packages.
    
    -   inherit multibuild python-utils-r1
    -   variables:
        -   PYTHON<sub>COMPAT</sub> - list of Python implementations the package supports. ex: ( python2<sub>7</sub> python3<sub>3,4</sub> )
        -   BUILD<sub>DIR</sub> - The current build directory. if unset, it defaults to ${S}. locally set to an implementation-specific build directory

2.  steps

    1.  Compiling: gpep517 build-wheel &#x2013;backend setuptools.build<sub>meta</sub> &#x2013;output-fd 3 &#x2013;wheel-dir /var/tmp/portage/dev-python/flask-2.3.2/work/Flask-2.3.2-python3<sub>11</sub>/wheel
    
    2.  Installing to install tmp direcotyry: gpep517 install-wheel &#x2013;destdir=/var/tmp/portage/dev-python/flask-2.3.2/work/Flask-2.3.2-python3<sub>11</sub>/install &#x2013;interpreter=/usr/bin/python3.11 &#x2013;prefix=/usr &#x2013;optimize=all /var/tmp/portage/dev-python/flask-2.3.2/work/Flask-2.3.2-python3<sub>11</sub>/wheel/Flask-2.3.2-py3-none-any.whl
    3.  install directory has venv structure
    4.  installing - copying tmp install directory to /

3.  links

    <https://github.com/projg2/python-guide/>


<a id="org467d8aa"></a>

### TODO testing

<https://wiki.gentoo.org/wiki/Eclass_testing>


<a id="org0786aae"></a>

### links

<https://devmanual.gentoo.org/eclass-writing/>


<a id="org3c486a6"></a>

## disable unused ebuilds

/etc/portage/package.mask:

    */*::gentoo

/etc/portage/package.unmask

    emerge -pve --color n world > /tmp/tmpe
    cat /tmp/tmpe | sed 's/.* ] \([^ ]*\).*/\1/' | grep :: | grep -o '^\w*\-\?\w*/' | sort -u | sed 's#$#*::gentoo#' > /etc/portage/package.unmask

-   profiles, scripts, eclass

get repository name:

-   emerge &#x2013;info


<a id="org03153b7"></a>

## mirrors

-   Rsync mirrors <https://www.gentoo.org/support/rsync-mirrors/>
    -   /etc/portage/repos.conf/gentoo.conf
-   Source mirrors <https://www.gentoo.org/downloads/mirrors/>
    -   /etc/portage/make.conf


<a id="org5c81e64"></a>

### links

<https://wiki.gentoo.org/wiki/Project:Infrastructure/Mirrors>


<a id="org76662d1"></a>

## update security critical packages

check if the system is up to date security-wise

-   glsa-check &#x2013;list
-   glsa-check -t all

packages that will be updates:

-   glsa-check -p $(glsa-check -t all)

update required packages:

-   glsa-check -f $(glsa-check -t all)


<a id="org42e0f8b"></a>

## (old) Portage security

-   <https://wiki.gentoo.org/wiki/Portage_Security>
-   Gentoo public keys: gpg /usr/share/openpgp-keys/gentoo-release.asc
-   verify: gemato verify -K /usr/share/openpgp-keys/gentoo-release.asc /var/db/repos/gentoo


<a id="orgf3f1139"></a>

## FAQ

“the following features is restricted: Test”

-   RESTRICT="test"
-   typically used to prevent tests that require network access or other disallowed activities from running
    during the build process. The restriction ensures that the build procedure does not attempt to access
    external resources.


<a id="orgc191292"></a>

## links

-   <https://dev.gentoo.org/~zmedico/portage/doc/>
-   <https://devmanual.gentoo.org/index.html>
-   <https://github.com/gentoo/portage>


<a id="org0c5ca10"></a>

# tools

-   ebump 	Ebuild revision bumper (more useful for developers).
-   eclean 	Tool for cleaning repository source files and binary packages.
-   enalyze 	Gentoo's installed packages analysis and repair tool. See man page, which states "CAUTION: This is beta software and is not yet feature complete".
-   epkginfo 	Wrapper to equery: display metadata about a given package.
-   equery 	Gentoo package query tool.
-   eread 	Script to read portage log items from einfo, ewarn etc.
-   eshowkw 	Display keywords for specified package(s).
-   euse 	Tool to see, set and unset USE flags at various places.
-   imlate 	Displays candidates for keywords for an architecture (more useful for developers?).
-   revdep-rebuild 	Reverse Dependency rebuilder. Generally not necessary to run this tool anymore.


<a id="org38bf2cb"></a>

# TODO q

-   portage utility applet
-   collection of utilities


<a id="org5a430d2"></a>

# TODO eix

-   <https://github.com/vaeth/eix>
-   app-portage/eix

more efficient and more flexible than the **emerge &#x2013;search**


<a id="org9017212"></a>

# profiles

    eselect profile show

Describe:

-   the current profile's running architecture
-   default USE flags
-   @system package ebuilds.

files:

-   /var/db/repos/gentoo/profiles
-   /etc/portage/make.profile

Default USE for profile:

    USE_ORDER="defaults:pkginternal:repo" emerge --info|grep USE


<a id="org2c5bf1e"></a>

## merged-user/split-user

-   split-user - legacy layer
-   merged-user - newer layer "/usr merge" where the /bin, /sbin, /lib, and /lib64 are permanently migrated to
    the /usr/bin, /usr/sbin, /usr/lib and /usr/lib64 directories respectively and /sbin and /usr/sbin are both
    actually merged to /usr/bin.

It is required for >= systemd 255 due to changes upstream, but it remains optional for other init systems.

<https://wiki.gentoo.org/wiki/Merge-usr>


<a id="orga0b8d85"></a>

# install handbook

-   mkfs.ext4 -T small /dev/sda2
-   parted /dev/sda: set 1 bios<sub>grub</sub> on # very important for GPT table
-   gpg &#x2013;verify stage3-amd64-<release>-<init>.tar.?(bz2|xz){.DIGESTS.asc,}
-   tar xpvf stage3-**.tar.xz &#x2013;xattrs-include='**.\*' &#x2013;numeric-owner
-   set time:
    -   date +%Y%m%d -s "20220429"
    -   date -s "19:35"
    -   hwclock &#x2013;systohc
-   mirrorselect -i -o >> /mnt/gentoo/etc/portage/make.conf # require correct date
-   chroot!
-   mkdir &#x2013;parents /etc/portage/repos.conf
-   cp /usr/share/portage/config/repos.conf /etc/portage/repos.conf/gentoo.conf
-   nano /etc/resolv.conf: nameserver 8.8.8.8
-   for CPU<sub>FLAGS</sub><sub>X86</sub>: emerge &#x2013;ask app-portage/cpuid2cpuflags
    -   variant: #\`echo "**/** $(cpuid2cpuflags)" >> /etc/portage/package.use/00cpuflags
-   to raplace -march=native: gcc -v -E -x c /dev/null -o /dev/null -march=native 2>&1 | grep /cc1 | grep mtune
-   /etc/portage/make.conf:
    -   USE="caps X alsa ipv6 jpeg png ogg upower verify-sig -fonts -themes -nls -su -pam -qt5 -cups -fortran udev -elogind -udisks" # udev
    -   CPU<sub>FLAGS</sub><sub>X86</sub>="avx f16c mmx mmxext pclmul popcnt sse sse2 sse3 sse4<sub>1</sub> sse4<sub>2</sub> ssse3"
    -   COMMON<sub>FLAGS</sub>="-march=native -O2 -pipe"
    -   MAKEOPTS="-j2"
    -   L10N="en"
-   emerge &#x2013;sync &#x2013;quiet
-   build and install gentoo ???????????
-   emerge &#x2013;ask sys-boot/grub sys-kernel/gentoo-sources
-   install kernel and grub
-   install dhcp client [17](#orgf698f83)
-   Xorg/X11 confuguration [10](#org26140da)
-   logging daemon
    -   emerge &#x2013;ask app-admin/sysklogd or app-admin/syslog-ng
    -   rc-update add sysklogd default
    -   chmod 700 /var/log
-   passwd larry
-   user autologin:
    -   /etc/inittab: c2:2345:respawn:/sbin/agetty -a larry 38400 tty2 linux
-   timezone:
    -   ls /usr/share/zoneinfo
    -   echo "UTC" > /etc/timezone
-   locale
    -   cat /usr/share/i18n/SUPPORTED
    -   nano -w /etc/locale.gen
    -   locale-gen
    -   eselect locale list
-   <nix>
-   emerge &#x2013;ask app-portage/gentoolkit # equery


<a id="org0c78a6e"></a>

## firmware

download

-   links
    -   <https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git>
    -   <https://www.kernel.org/doc/wot/>
    -   <https://keyserver2.gnupg.org/>
    -   git <https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git>
-   gzip -d linux-firmware-20221214.tar.gz
-   gpg &#x2013;verify linux-firmware-20221214.tar.asc

-   emerge &#x2013;ask &#x2013;autounmask=y linux-firmware
-   emerge &#x2013;ask sys-kernel/linux-firmware
-   emerge &#x2013;ask net-wireless/wireless-regdb
-   copy files to /lib/firmware
-   emerge &#x2013;unmerge sys-kernel/linux-firmware
-   set Device Drivers -> Generic Driver Options -> Formware loader -> regulatory.db regulatory.db.p7s

-   


<a id="orgdb4a20f"></a>

## chroot

-   mount &#x2013;types proc /proc /mnt/gentoo/proc
-   mount &#x2013;rbind /sys /mnt/gentoo/sys
-   mount &#x2013;make-rslave /mnt/gentoo/sys
-   mount &#x2013;rbind /dev /mnt/gentoo/dev
-   mount &#x2013;make-rslave /mnt/gentoo/dev
-   mount &#x2013;bind /run /mnt/gentoo/run
-   mount &#x2013;make-slave /mnt/gentoo/run
-   chroot /mnt/gentoo /bin/bash
-   source /etc/profile
-   export PS1="(chroot) ${PS1}"


<a id="orgdebab46"></a>

# install xfce4 <a id="org26140da"></a>

1.  emerge &#x2013;ask app-misc/tmux && tmux
2.  /etc/portage/make.conf:
    -   INPUT<sub>DEVICES</sub>="evdev synaptics"
    -   VIDEO<sub>CARDS</sub>="intel i915" or "amdgpu radeon"
    -   USE="X jpeg png ogg upower -qt5 -pam -su -elogind"
        -   -qt5 - because of app-text/poppler
3.  emerge &#x2013;pretend &#x2013;verbose x11-base/xorg-server
4.  USE=-server emerge &#x2013;ask x11-base/xorgcp ????????
5.  env-update
6.  source /etc/profile
7.  echo "xfce-base/xfce4-panel -dbusmenu" >> /etc/portage/package.use/xfce4-panel
8.  emerge &#x2013;ask &#x2013;oneshot xfce-extra/xfce4-notifyd
9.  emerge &#x2013;ask xfce-base/xfce4-meta
10. emerge &#x2013;ask xfce4-xkb-plugin # keyboard layouts
11. cp -r /usr/share/X11/xorg.conf.d /etc/X11/xorg.conf.d # copy configuration files of xorg-drivers
12. rc-service dbus start && rc-update add dbus default # required for battery power management
13. useradd -m -G users,wheel,input,audio,video,cdrom,games,usb -s /bin/bash larry
14. or #usermod -a -G input,video larry # user should be in input,video groups
15. $startxfce4 &#x2013; vt1 # 1 - number of current tty
16. security:
    -   $startx &#x2013; -nolisten tcp
    -   or:
        -   /usr/bin/startx: defaultserverargs="-nolisten tcp"
        -   /etc/portage/make.conf:
            -   CONFIG<sub>PROTECT</sub>="/usr/bin/startx" # To make sure that startx does not get overwritten when emerging a new version of Xorg you must protect it. Add the following line to /etc/portage/make.conf:
17. keyboard repeat delay: 200, speed: 35

Testing and trouble shooting

-   emerge &#x2013;ask x11-wm/twm x11-terms/xterm
-   X -config /home/u/xorg.conf
-   $X -configure # generate xorg.conf (for testing)
-   evtest # test evdev app-misc/evtest
-   $less .local/share/xorg/Xorg.0.log # holy grail of trouble shooting


<a id="orge9a2aa1"></a>

# Dracut - disk encryption USB - full install

steps

-   we need offset for MBR with grub and boot partition. This partition will contain GRUB files, plain
    (unencrypted) kernel and kernel initrd, dracut initramfs:
-   Partitioning GPT table (offset is a separate partition of size 1M):
    -   parted /dev/sda
        -   mkpart primary fat32 3 515
        -   name 2 boot
        -   set 2 BOOT on
        -   mkpart primary 515 -1
        -   name 3 lvm
        -   set 3 lvm on
        -   set 1 bios<sub>grub</sub> on # offset for MBR in GPT table
-   Partitioning MSDOS table (offset is an empty space of size 1-10M):
    -   fdisk /dev/sda
        -   o
        -   n, p, 1, 20488 (10M offset, not shure how many required for grub), +300M, w - boot
        -   n, p, 2, 20488, Enter, +10G, w - swap
        -   n, p, 3, 20488, Enter, Enter - luks partition
-   Formatting:
    -   mkfs.vfat -F32 /dev/sdX2
    -   modprobe dm-crypt
    -   gpg variant
        -   export GPG<sub>TTY</sub>=$(tty)
        -   dd if=/dev/urandom bs=8388607 count=1 | gpg &#x2013;symmetric &#x2013;cipher-algo AES256 &#x2013;output /mnt/key/rootkey.gpg
        -   gpg &#x2013;quiet &#x2013;decrypt /mnt/key/rootkey.gpg | cryptsetup &#x2013;type luks2 &#x2013;batch-mode &#x2013;key-file - luksFormat /dev/sdX3
        -   gpg &#x2013;quiet &#x2013;decrypt /mnt/key/rootkey.gpg | cryptsetup &#x2013;type luks2 &#x2013;batch-mode &#x2013;key-file - luksOpen /dev/sdX3 lvm
    -   cryptsetup-variant (not tested):
        -   cryptsetup luksFormat /dev/sdZn
        -   cryptsetup luksOpen /dev/ssdZn
    -   cryptsetup luksDump /dev/sdX3 # check
-   Create LVM inside encrypted block - for SSD TRIM require special options
    -   vgcreate vg0 /dev/mapper/lvm  # Create volume group vg0:
    -   lvcreate -L 60G -n root vg0  # Create logical volume for /root filesystem
    -   lvcreate -L 40G -n var vg0  # Create logical volume for /var filesystem
    -   lvcreate -L 7G -n swap vg0  # Create logical volume for swap filesystem
    -   lvcreate -l 100%FREE -n home vg0  # Create logical volume for /home filesystem:
    -   cryptsetup luksHeaderBackup /dev/sdXn &#x2013;header-backup-file /tmp/efiboot/luks-header.img  # backup
-   format
    -   mkswap -L "swap" -n 32k /dev/mapper/vg1-swap
    -   mkfs.btrfs -L "root" -n 32k /dev/mapper/vg1-root
    -   mkfs.btrfs -L "var" -n 32k /dev/mapper/vg1-var
    -   mkfs.trfs -L "home" -n 32k /dev/mapper/vg1-home
-   mount - require sys-fs/lvm2 +lvm
    -   mount -o ssd,compress=lzo,discard=async *dev/vg0/root /mnt/gentoo*
    -   mkdir /mnt/getnoo/var
    -   mount -o ssd,compress=lzo,discard=async *dev/vg0/var* *mnt/gentoo/var*
-   tar xpvf stage3-**.tar.xz &#x2013;xattrs-include='**.\*' &#x2013;numeric-owner # v - verbose
-   mirrorselect -i -o >> /mnt/gentoo/etc/portage/make.conf
-   mkdir &#x2013;parents /mnt/gentoo/etc/portage/repos.conf
-   cp /mnt/gentoo/usr/share/portage/config/repos.conf /mnt/gentoo/etc/portage/repos.conf/gentoo.conf
-   cp &#x2013;dereference *etc/resolv.conf /mnt/gentoo/etc*
-   nano -w /mnt/gentoo/etc/portage/make.conf
    -   COMMON<sub>FLAGS</sub>="-march=native -O2 -pipe"
    -   MAKEOPTS="-j4"
-   chroot! (don't forget env-update && . /etc/profile )
-   emerge-webrsync
-   emerge &#x2013;sync &#x2013;quiet
-   gcc -v -E -x c /dev/null -o /dev/null -march=native 2>&1 | grep /cc1 | grep mtune
-   replace -march=native
-   emerge &#x2013;ask  app-portage/cpuid2cpuflags
-   $cpuid2cpuflags >> /etc/portage/make.conf
-   emerge &#x2013;ask emacs sys-kernel/dracut sys-kernel/gentoo-sources sys-boot/grub sys-fs/lvm2 sys-fs/cryptsetup  sys-apps/busybox app-shells/dash
    app-crypt/gnupg sys-fs/btrfs-progs
-   USE="-gtk -pango -libkms" emerge &#x2013;ask sys-boot/plymouth
-   rc-update add lvm boot
-   fstab
-   sfdisk -d /dev/sda > /mnt/img/sda.partition.table.txt # backup partition table
-   findmnt &#x2013;verify &#x2013;verbose # verify fstab
-   set time:
    -   date +%Y%m%d -s "20220429"
    -   date -s "19:35"
    -   hwclock &#x2013;systohc
-   configure and build Kernel <nix>
-   /etc/dracut.conf
    -   \# Equivalent to -a "module"
    -   \# located *usr/lib/dracut/modules.d*
    -   add<sub>dracutmodules</sub>+=" lvm btrfs crypt crypt-gpg dm "
    -   filesystems+=" btrfs "
    -   kernel<sub>cmdline</sub>="rd.luks.key=/luks-key.gpg:UUID=xxxxxx-xxx-xx-xx rd.luks.uuid=luks-xxxxxx-xxx-xx-xx rd.luks
        rd.lvm rd.lvm.vg=vg0 rd.lvm.lv=vg0/root root=/dev/mapper/vg0-root rootfstype=btrfs
        rootflags=rw,noatime,nodirtime,compress=lzo,ssd,space<sub>cache</sub>=v2,subvolid=5,subvol=/" # shoud work
    -   full: kernel<sub>cmdline</sub>="
    -   early<sub>microcode</sub>="no
    -   show<sub>modules</sub>="yes"
    -   rd.lvm.vg="vg0"
-   dracut &#x2013;kver 6.1.57-gentoo &#x2013;force &#x2013;hostonly &#x2013;fstab 2>drac<sub>log.txt</sub> # - to generate /boot/initramfs-6.1.57-gentoo.img
-   grub-mkconfig -o /boot/grub/grub.cfg
-   grub-install
-   /etc/dracut.conf: kernel<sub>cmdline</sub> shoud be copied to /etc/default/grub:GRUB<sub>CMDLINE</sub><sub>LINUX</sub>
-   passwd # set root password
-   useradd -m -G users,wheel,audio,video,cdrom,games,usb -s /bin/bash larry
-   network confuguration [17](#orgf698f83)
-   Xorg/X11 confuguration [10](#org26140da)
-   logging daemon
    -   emerge &#x2013;ask app-admin/sysklogd
    -   rc-update add sysklogd default
    -   chmod 700 /var/log
-   passwd larry
-   user autologin:
    -   /etc/inittab: c2:2345:respawn:/sbin/agetty -a larry 38400 tty2 linux
-   timezone:
    -   ls /usr/share/zoneinfo
    -   echo "UTC" > /etc/timezone
-   locale
    -   cat /usr/share/i18n/SUPPORTED
    -   nano -w /etc/locale.gen
    -   locale-gen
    -   eselect locale list
-   <nix>

change password:

-   gpg -d /mnt/key/rootkey.gpg > /mnt/key/rootkey
-   cat /mnt/key/rootkey | gpg &#x2013;cipher-algo aes256 &#x2013;armor -c > /mnt/key/rootkey<sub>sc.gpg</sub>

btrfs:

-   btrfs filesystem defragment -r -v -clzo / # force mounted to compress
-   mount -o compress=lzo,discard=async *dev*  *mnt*


<a id="org5c95497"></a>

## links

<https://mirrors.edge.kernel.org/pub/linux/utils/boot/dracut/dracut.html>
<https://wiki.gentoo.org/wiki/Dm-crypt_full_disk_encryption>


<a id="org4bdc173"></a>

## dracut.conf

udevdir=/lib/udev
ro<sub>mnt</sub>=yes
omit<sub>drivers</sub>+=" i2o<sub>scsi</sub> "

omit<sub>dracutmodules</sub>+=" systemd systemd-initrd dracut-systemd


<a id="orgd0bb68e"></a>

## errors

crypt error allocating crypto tfm

-   device-mapper: table : crypt error allocating crypto tfm
-   device-mapper: ioctl: error adding target to table
-   device-mapper: reload ioctl on failed: no such file or directory
-   no cryptographic support in Cryptographic API &#x2014;>

grub install: WARNING: Failed to connect to lvmetad. Failling back to device scanning. ; Cannot process volume
group luks

-   in /etc/lvm/lvm.conf the following : use<sub>lvmetad</sub> = 0
-   USE=device-manager emerge &#x2013;ask grub


<a id="org4310ace"></a>

## change password luks.gpg

-   export GPG<sub>TTY</sub>=$(tty)
-   gpg &#x2013;quiet &#x2013;decrypt /mnt/key/rootkey.gpg > file
-   cat file | gpg &#x2013;symmetric &#x2013;cipher-algo AES256 &#x2013;output /mnt/key/luks-key<sub>new.gpg</sub>


<a id="org5824834"></a>

## ru descryption

Если вам интересно, так я обеспечиваю свою безопасность. Понимаю, что вы работаете с более серьезными задачами.

-   Перепрошиваю чип с UEFI BIOS на "coreboot", это обратный инжинеринг волонтерами.
-   Устанавливаю Gentoo, где бинарные пакеты только на первом шаге, затем они же пересобирается из исходного кода.
-   Компилирую ядро Линукс с отключенными модулями и такими настройками, как: защита от переполнения буфера, рандомизация структур, очистка стека, отладка структур. Выборочно вставляю бинарные Блобы в ядро, когда нет альтернатив.
-   Полное шифрование диска с помощью LUKS (Linux Unified Key Setup) структуры раздела, где берется файл-ключ шифрования размером несколько мегабайт, шифруется симметричным шифрованием (AES256) обычным паролем и помещается на флеш карту. Во время загрузки из initramfs запрашивается пароль, с флешки берется файл, расшифровывается паролем и используется как ключ для LUKS (aes-xts-plain64,256 bits). /boot раздел располагается на флешке без шифрования.
-   /etc/fstab: proc /proc proc hidepid=2,nosuid,noexec,gid=wheel       /home на отдельном разделе с noexec,nosuid,nodev
-   Простой фаервол с помощью iptables или nftables. Logcheck анализатор логов. Бэкап с помощью rsync.
-   Не использую SELinux, так как под рутом вроде бы ничего не запускаю, вместо этого устанавливаю библиотеку POSIX Capabilities, которая поддерживается многими пакетами.
-   Захожу под рутом и пользователем с разных консолей, для каждого прилажения создаю отдельного пользователя, sudo использую только для запуска таких прилажений.
-   Изолирую прилажения с помощью чательно настроенного Firejail, чтобы исключить сбор информации о системе и кейлогеров. Аппаратная виртуализация слишком сложная в настройке, даже паравиртуализация слишком много требует.


<a id="org2d7db20"></a>

## EDID - video kernel mode setting

<https://wiki.archlinux.org/title/Kernel_mode_setting>

emerge &#x2013;ask edid-decode read-edid

get-edid

get-edid -b 10 > edid.bin

cat edid.bin | edid-decode

cp edid > /lib/firmware/edid/edid.bin
(add to .config)
drm.edid<sub>firmware</sub>=edid/your<sub>edid.bin</sub>
drm.edid<sub>firmware</sub>=VGA-1:edid/your<sub>edid.bin</sub>

drivers/gpu/drm/drm<sub>edid</sub><sub>load.c</sub>


<a id="orgab53690"></a>

## custom edid

<https://kodi.wiki/view/Archive:Creating_and_using_edid.bin_via_xorg.conf>
xrandr &#x2013;props

Section "Monitor"
    Identifier "LG 42LD560"
    VendorName "GSM"
    ModelName "LG TV"

    Option "UseEDID" "True"
    Option "CustomEDID" "DFP-1:/etc/X11/LG-42LD560.edid.bin"
EndSection

Section "Device"
   Identifier  "Device0"
   BusID       "PCI:00:02:0"
   Option      "LVDS-1" "MonitorLVDS1"
   Option      "DP-1"   "MonitorDP1"
   Driver      "intel"
   Option      "CustomEDID" "DP1:/etc/X11/edid.bin"
   Option      "UseEDID" "true"
EndSection


<a id="org653550a"></a>

## nvidia example Xorg

<https://wiki.gentoo.org/wiki/NVIDIA/Optimus/EDID_Xorg.conf_Example>


<a id="orge719d2a"></a>

# Dracut - disk encryption USB - kernel update

<nix>

-   PYTHON="python3.8" sh ./deblob-6.6.sh | tee >(tee) > out.log
-   make -j2
-   make install
-   


<a id="orgc18fb80"></a>

# create USB stick

1.  check gpg
2.  or check hash
3.  USB: dd if=/path/to/image.iso of=/dev/sdc bs=8192k


<a id="org7bd8830"></a>

# python

PYTHON<sub>SINGLE</sub><sub>TARGET</sub>
PYTHON<sub>TARGETS</sub>

app-editors/vim PYTHON<sub>TARGETS</sub>: -\* python2<sub>7</sub> PYTHON<sub>SINGLE</sub><sub>TARGET</sub>: -\* python2<sub>7</sub>

$profile-config list      - current stable


<a id="org774941f"></a>

# no root Xorg

package.use/xorg:
x11-base/xorg-server -suid

startx &#x2013; vt2

~/.xinitrc
exec startxfce4


<a id="orgba9e5f1"></a>

# add user

useradd -m -G video,audio,wheel -s /bin/bash larry
usermod -a -G video larry
gpasswd -d larry video


<a id="orgbb07051"></a>

# network configuration <a id="orgf698f83"></a>

netifrc is Gentoo's default framework for configuring and managing network interfaces

1.  emerge &#x2013;ask  net-misc/dhcpcd
2.  dhcpcd eth0
3.  echo 'config<sub>eth0</sub>="dhcp"' > /etc/conf.d/net
4.  ln -s /etc/init.d/net.lo /etc/init.d/net.eth0
5.  rc-service net.eth0 start
6.  rc-update add dhcpcd default
7.  iptables or nftables

wifi:

-   emerge &#x2013;ask net-wireless/iw net-wireless/wpa<sub>supplicant</sub>


<a id="orgf4b0f94"></a>

## /etc/wpa<sub>supplicant</sub>/wpa<sub>supplicant.conf</sub>

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


<a id="orgae728d0"></a>

## router

-   emerge &#x2013;ask net-dns/dnsmasq
-   /etc/sysctl.conf:
    -   net.ipv4.ip<sub>forward</sub> = 1
    -   net.ipv4.conf.default.rp<sub>filter</sub> = 1
-   sysctl -p /etc/sysctl.conf
-   /etc/dnsmasq.conf:
    -   dhcp-range=eth0,192.168.0.100,192.168.0.250,72h
    -   interface=eth0
-   *etc/init.d*: ln -s net.ln net.eth0
-   rc-service net.eth0 restart

-   client:
-   *etc/init.d*: ln -s net.ln net.eth0
-   *etc/conf.d*:
    -   config<sub>eth0</sub>="192.168.0.2/24"
    -   routes<sub>eth0</sub>="default via 192.168.0.1" # or ip route add default via 192.168.0.1 dev eth0
-   rc-service net.eth0 restart
-   /etc/resolv.conf: nameserver 192.168.0.1
-   


<a id="org1509d25"></a>

## configure pachcard

1.  ln -s /etc/init.d/net.lo /etc/init.d/net.eth0
2.  /etc/conf.d/net: config<sub>eth0</sub>="192.168.0.2/24"
3.  rc-service net.eth0 restart


<a id="org58f35ae"></a>

# audio

-   add user to audio group!
-   euse -E alsa # add alsa to /etc/portage/make.conf
-   emerge &#x2013;ask &#x2013;changed-use &#x2013;deep @world
-   emerge &#x2013;ask media-sound/alsa-utils
-   alamixer # unmute Master
-   speaker-test -c2 -t wav
-   aplay -l # List all soundcards and digital audio devices
-   aplay -L # List all PCMs defined
-   arecord -L  # List all PCMs defined
-   alsactl dump-cfg # show current full config

microphone

-   SND<sub>USB</sub><sub>AUDIO</sub> - kernel
-   alsamixer => internal
-   arecord -l # list capture hardware
-   arecord -f S16<sub>LE</sub> -d 3 -r 44100 &#x2013;device="hw:0,0" -c 2 /tmp/test.wav
-   arecord arecord -f S16<sub>LE</sub> -d 3 -f dat -V stereo -r 44100 &#x2013;device="hw:0,0" -c 2 /tmp/test.wav
-   aplat /tmp/test.wav

volumne control:

-   amixer set Master 5%+
-   amixer set Master 5%-


<a id="org5ac94a5"></a>

## alsa ~/.asoundrc

main config in /etc/asound.conf


<a id="org083c324"></a>

## simplest config output hw:0,0


<a id="org25a19ac"></a>

## hdmi output

    # defaults.pcm.!card 0
    # defaults.pcm.!device 3
    
    # pcm.!spdif {
    # 	   type hw
    # 	   card 0
    # 	   device 3
    # }
    
    # pcm.!default {
    # 	     type plug
    # 	     slave {
    # 	     	   pcm "spdif"
    #  	     }
    # }


<a id="org8297fc2"></a>

## troubleshooting

Automatic encoder selection failed for output stream #1:2. Default encoder for format xv (codec none) is probably disabled


<a id="org3852dd6"></a>

## pulseaudion

pavucontrol

<https://wiki.gentoo.org/wiki/PulseAudio>

echo "autospawn = no" > ~/.config/pulse/client.conf
pulseaudio &#x2013;kill


<a id="org0f698ac"></a>

## loop back test or “hear yourself” - alsa

    pcm.!default {
        type plug
        slave.pcm "hw:0,0"
    }
    
    pcm.mic {
        type plug
        slave.pcm "hw:1,0"
    }
    
    pcm.output {
        type plug
        slave.pcm "hw:0,0"
    }

    pcm.!default {
        type asym
        playback.pcm "output"
        capture.pcm "mic"
    }
    
    
    # ctl.!default { # required?
    #     type hw
    #     card 0
    # }
    
    pcm.mic {
        type plug
        slave {
            pcm "hw:1,0" # Replace with your microphone device (e.g., hw:1,0)
    	format S16_LE # Optional: Set the format to 16-bit, Little Endian
            rate 48000
            channels 1
        }
    }
    
    pcm.output {
        type plug
        slave {
            pcm "hw:0,0" # Replace with your output device (e.g., hw:0,0)
        }
    }

    pcm.dmixer {
        type dmix
        ipc_key 1024
        slave {
            pcm "hw:0,0" # Adjust this to your output device
            period_time 0
            period_size 1024
            buffer_size 4096
            rate 44100
        }
        bindings {
            0 0
            1 1
        }
    }
    
    pcm.asymed {
        type asym
        playback.pcm "dmixer"
        capture.pcm "hw:1,0" # Adjust this to your microphone device
    }
    
    pcm.!default {
        type plug
        slave.pcm "asymed"
    }
    
    pcm.default {
        type plug
        slave.pcm "asymed"
    }
    
    ctl.mixer1 {
        type hw
        card 1 # Adjust this to your card number
    }

working:

    arecord -f S16_LE -c 2 -r 44100 -D mic | aplay -f S16_LE -c 2 -r 44100 -D output
    arecord -f S16_LE -c 2 -r 44100 -D plughw:1,0 | aplay -f S16_LE -c 2 -r 44100 -D plughw:0,0
    arecord -f S16_LE -c 2 -D mic | aplay
    arecord -f S16_LE -r 44100 -c 1 -D mic | aplay
    arecord | aplay # right way to use

Recording WAVE 'stdin' : Signed 16 bit Little Endian, Rate 8000 Hz, Mono

dump capabilities of mic:

    arecord -D plughw:1,0 --dump-hw-params


<a id="orgd840945"></a>

## loop back test - pulseaudio

    parec --device=alsa_input.usb-C-Media_Electronics_Inc._USB_PnP_Sound_Device-00.mono-fallback --format=s16le --rate=8000 --channels=2 output.wav
    parec --device=alsa_input.usb-C-Media_Electronics_Inc._USB_PnP_Sound_Device-00.mono-fallback --format=s16be --rate=44100 --channels=1 | aplay --format S16_BE --rate=44100
    parec --device=alsa_input.usb-C-Media_Electronics_Inc._USB_PnP_Sound_Device-00.mono-fallback --format=s16be --rate=8000 --channels=1 | aplay --format S16_BE --rate=8000
    parec --device=alsa_output.pci-0000_00_1b.0.analog-stereo.monitor --format=s16be --rate=8000 --channels=1 | aplay --format S16_BE --rate=8000

working:

    parec --raw | paplay --raw

pactl list sources
pactl list sinks


<a id="org712a73c"></a>

## firefox and ALSA - microphone

<https://github.com/i-rinat/apulse>
<https://forums.gentoo.org/viewtopic-p-8582451.html?sid=d35904653f4a8f9b1b6c4334b3c4ba38>
<https://bbs.archlinux.org/viewtopic.php?id=252378>


<a id="org333a391"></a>

## pulseaudion

useful configuration .config/pulse/client.conf

    autospawn = no


<a id="org61ba7b4"></a>

## links

-   <https://wiki.gentoo.org/wiki/ALSA>
-   <https://wiki.debian.org/ALSA#Troubleshooting>
-   <https://alsa.opensrc.org/MultipleCards>
-   <https://alsa.opensrc.org/Troubleshooting>
-   alsa config
    -   <https://www.alsa-project.org/main/index.php/Documentation>
    -   <https://www.alsa-project.org/alsa-doc/alsa-lib/conf.html>
    -   <https://www.volkerschatz.com/noise/alsa.html>


<a id="org1be100b"></a>

# fonts

eselect fontconfig list

System:

-   emerge &#x2013;ask media-fonts/dejavu

Chinese:

-   emerge &#x2013;ask media-fonts/font-isas-misc


<a id="org9e3c708"></a>

# linux firmware

-   package distributed alongside the Linux kernel
-   contains firmware binary blobs

bin files should be placed to *lib/firmware*


<a id="orge70fc08"></a>

# OpenRC

-   gide <https://github.com/OpenRC/openrc/blob/master/service-script-guide.md>
-   *etc/conf.d* - configuration files for *etc/init.d* scripts with same name

make two instances

-   ln -s sshd /etc/init.d/sshd.eth0
-   cp /etc/conf.d/sshd /etc/conf.d/sshd.eth0


<a id="org70dae0d"></a>

# udev brightness

/etc/udev/rules.d/91-backlight.rules:

-   ACTION=="add", SUBSYSTEM=="backlight", RUN+="/bin/sh -c 'echo 150 > /sys/class/backlight/radeon<sub>bl0</sub>/brightness'"


<a id="orgd08f550"></a>

# device manager udev/eudev/hal

-   hal - old device manager
-   udev - systemd's device manager
-   


<a id="org0623da8"></a>

# parallel emerge

-   MAKEOPTS="-jN" - parallel makes
-   EMERGE<sub>DEFAULT</sub><sub>OPTS</sub>= "&#x2013;jobs 3 &#x2013;load-average 2.9" - parallel emerges
-   N\*K = max cpu
-   MAKEOPTS=”-j${core} +1″ is NOT the best optimization


<a id="org1c966a4"></a>

# raspberry pi

-   <https://wiki.gentoo.org/wiki/Raspberry_Pi/Quick_Install_Guide>
    -   git clone &#x2013;depth 1 <https://github.com/raspberrypi/firmware/>
    -   boot to /boot
    -   modules to /lib
-   <https://wiki.gentoo.org/wiki/Raspberry_Pi/Installation>
    -   emerge &#x2013;ask sys-kernel/raspberrypi-image sys-boot/raspberrypi-firmware

-   arm64
-   Clear root password: sed -i 's/<sup>root</sup>:.\*/root::::::::/' /mnt/gentoo/etc/shadow
-   /etc/fstab
-   for CPU<sub>FLAGS</sub><sub>X86</sub>: emerge &#x2013;ask app-portage/cpuid2cpuflags
-   to raplace -march=native: gcc -v -E -x c /dev/null -o /dev/null -march=native 2>&1 | grep /cc1 | grep march
-   /etc/portage/make.conf
-   mkdir &#x2013;parents /etc/portage/repos.conf
-   cp /usr/share/portage/config/repos.conf /etc/portage/repos.conf/gentoo.conf
-   date +%Y%m%d -s "20220429"
-   date -s "19:35"
-   rc-update add swclock


<a id="org3d947a8"></a>

## kernel:

-   emerge &#x2013;ask sys-devel/bc sys-devel/bison sys-devel/flex
-   Platform selection - Broadcom BCM2835 family
-   emerge &#x2013;ask sys-boot/raspberrypi-firmware or git clone &#x2013;depth 1 git://github.com/raspberrypi/linux.git
-   make bcmrpi3<sub>defconfig</sub>
-   make bcm2711<sub>defconfig</sub>
-   CPU Power Management -> SPU Frequency scaling -> Default CPUFreq governor = performance
-   make -j4 zImage modules dtbs
-   make -j4 Image modules dtbs
-   sudo make modules<sub>install</sub>
-   sudo cp arch/arm64/boot/dts/broadcom/\*.dtb *boot*
-   sudo cp arch/arm64/boot/dts/overlays/\*.dtb\* *boot/overlays*
-   sudo cp arch/arm64/boot/dts/overlays/README *boot/overlays*
-   sudo cp arch/arm64/boot/Image /boot/kernel8.img

Network support -> Network opetions -> The IPv6 protocol
Network support -> RF switch subsystem support
Device drivers -> Network -> Broadcom FullMac WLAN driver


<a id="orgbe44345"></a>

### links

-   official <https://www.raspberrypi.com/documentation/computers/linux_kernel.html>
-   <https://wiki.gentoo.org/wiki/Raspberry_Pi/Kernel_Compilation>
-   <https://wiki.gentoo.org/wiki/Raspberry_Pi/Mainline_Kernel>
-   <https://wiki.gentoo.org/wiki/Raspberry_Pi4_64_Bit_Install>


<a id="orgacb25c6"></a>

## firmware

-   emerge sys-kernel/linux-firmware &#x2013;autounmask=y
-   

<https://github.com/raspberrypi/firmware/tree/master/boot>


<a id="org003e84a"></a>

## overcloking

<https://haydenjames.io/raspberry-pi-3-overclock/>


<a id="orgf04082b"></a>

# soft


<a id="org07d70cd"></a>

## games


<a id="org8505900"></a>

### dri

emerge &#x2013;ask mesa-progs
emerge &#x2013;ask dev-util/strace
strace glxinfo


<a id="orgf265143"></a>

### openmw

-   emerge app-arch/innoextract

    innoextract --exclude-temp --gog -d ./caesar3 setup_caesar3_2.0.0.9.exe


<a id="org38efc74"></a>

### fps

games-fps/doomsday - modern engine for Doom, Heretic, and Hexen


<a id="org1596828"></a>

### mednafen

mednafen.github.io/documentation
**no sound**

-   mednafen -sounddevice sexyal-literal-default

**scaller**

-   mednafen -md.special hq2x/nn2x/super2xsai/2xsai/nny2x

**destination resolution**

-   mednafen -md.stretch full/aspect


<a id="org39913ca"></a>

### gemrb

after 0.9.1 require Python 3.3 or better

1.  TODO ebuild

        # Copyright 1999-2017 Gentoo Foundation
        # Distributed under the terms of the GNU General Public License v2
        
        EAPI=5
        
        PYTHON_COMPAT=( python3_7 python3_8 python3_9 python3_10 python3_11 )
        
        inherit eutils python-single-r1 cmake-utils gnome2-utils
        
        DESCRIPTION="Reimplementation of the Infinity engine"
        HOMEPAGE="http://gemrb.sourceforge.net/"
        
        if [[ ${PV} = 9999* ]]; then
            EGIT_REPO_URI="https://github.com/gemrb/gemrb.git"
            inherit git-r3
        elif [[ ${PV} = 6666* ]]; then
            EGIT_REPO_URI="https://github.com/gemrb/gemrb.git"
            EGIT_BRANCH="subviews"
            inherit git-r3
        else
            SRC_URI="mirror://sourceforge/gemrb/${P}.tar.gz"
        fi
        
        LICENSE="GPL-2"
        SLOT="0"
        KEYWORDS="~amd64 ~x86"
        IUSE="mixer openal opengl png sdl sdl2 truetype -vlc -debug"
        PYTHON_REQ_USE=""
        
        REQUIRED_USE="
           opengl? ( sdl2 )
           ^^ ( sdl sdl2 )
        "
        
        RDEPEND="
           truetype? ( media-libs/freetype )
           png? ( media-libs/libpng:0 )
           mixer? (
              sdl? ( media-libs/sdl-mixer )
              sdl2? ( media-libs/sdl2-mixer )
           )
           sdl? (
              >=media-libs/libsdl-1.2[video]
           )
           sdl2? (
              media-libs/libsdl2[video]
           )
           media-libs/libvorbis
           openal? ( media-libs/openal )
           opengl? ( media-libs/glew:0 )
           vlc? ( media-video/vlc )
           sys-libs/zlib
           ${PYTHON_DEPS}"
        
        DEPEND="${RDEPEND}
           virtual/pkgconfig"
        
        
        src_prepare() {
           cmake-utils_src_prepare
           sed -i \
              -e '/COPYING/d' \
              CMakeLists.txt || die
        }
        
        src_configure() {
           CMAKE_BUILD_TYPE=$(usex debug "Debug" "None")
           local libdir=$(get_libdir)
        
           mycmakeargs=(
           -DLIBDIR_SUFFIX=${libdir/lib/}
           -DDOC_DIR=share/doc/${PF}
           -DDISABLE_WERROR=ON
           -DSDL_BACKEND=$(usex sdl2 "SDL2" "SDL")
           -DOPENGL_BACKEND=$(usex opengl "OpenGL" "None")
           $(cmake-utils_use_use mixer SDLMIXER)
           $(cmake-utils_use_use openal OPENAL)
           $(cmake-utils_use_use png PNG)
           $(cmake-utils_use_use truetype FREETYPE)
           $(cmake-utils_use_use vlc LIBVLC)
           )
           cmake-utils_src_configure
        }
        
        src_compile() {
           cmake-utils_src_compile
        }
        
        src_install() {
           cmake-utils_src_install
           python_fix_shebang "${ED%/}"/usr/bin/extend2da.py
        }
        
        pkg_preinst() {
           gnome2_icon_savelist
        }
        
        pkg_postinst() {
           gnome2_icon_cache_update
        }
        
        pkg_postrm() {
           gnome2_icon_cache_update
        }

2.  links

    -   <https://github.com/gemrb/gemrb>
    -   config <https://github.com/gemrb/gemrb/blob/master/gemrb/GemRB.cfg.sample.in>


<a id="orgcdc6394"></a>

## media player

media-video/mpv


<a id="org11a0608"></a>

## ntp set time

client:

-   emerge &#x2013;ask net-misc/openntpd
-   /etc/ntpd.conf:  servers 0.ru.pool.ntp.org
-   ntpd -ds # to sync time


<a id="orgef4904d"></a>

# hdmi mirroring

xarndr &#x2013;output HDMI-0 &#x2013;auto &#x2013;same-as LVDS


<a id="org8e97e95"></a>

# opencl

-   virtual/opencl
-   emerge &#x2013;ask =dev-util/rocminfo-5.0.2 &#x2013;autounmask=y
-   dev-libs/rocm-opencl-runtime

-   HSA<sub>USERPTR</sub><sub>FOR</sub><sub>PAGED</sub><sub>MEM</sub>=0 rocminfo
-   HSAKMT<sub>DEBUG</sub><sub>LEVEL</sub>=7 rocminfo

Segmentation fault:

-   fix VIDEO<sub>CARD</sub> or disable opencl flag from mesa


<a id="org29635cc"></a>

# all modifications:

-   ~/.bashrc
-   ~/.bash<sub>aliases</sub>
-   ~/nftables
-   ~/.ssh
-   /etc/udev/rules.d/91-backlight.rules
-   /etc/portage/make.conf
-   /etc/portage/package.use/\*
-   /etc/sysctl.conf
-   ~/firef\*
-   ~/hotkeys.sh
-   ~/.emacs
-   ~/x-set-keys.conf
-   create /mnt/share


<a id="org9e54180"></a>

# lock screen & consoles

screen:

-   emerge &#x2013;ask x11-misc/alock
-   alock -auth passwd

consoles:

-   emerge &#x2013;ask app-misc/vlock
-   vlock -a


<a id="org55ebb91"></a>

# patching guide

It's usually better, if the patch is trivial, to open a bug and note that in the ChangeLog for the overlaid
package just before adding the package to the overlay itself, unless the patches needs to be tested for a
while before submitting them to the ebuild maintainer.

As soon as a patch is merged in the main tree, the ebuilds in the overlay need to go, to avoid having
unneeded ebuilds there.


<a id="org3c21aed"></a>

# USECASES

downgrade package dracut to dracut-055-r4 for dracut-056-r1:

-   echo ">sys-kernel/dracut-055-r4" >> /etc/portage/package.mask/glibc

specify using the greater than operator (>) prefix if it is an older package than latest stable or lesser than
operator (<) as a prefix if it is a newer one:


<a id="org7a699ce"></a>

# developsers githubs

-   Python packages, LLVM, Xfce <https://github.com/mgorny>
-   SELinuxProject, identity management platform, matrix, llvm, mumble-voip <https://github.com/0xC0ncord>


<a id="org6e7537c"></a>

# gcc optimization

Some packages  will  fail to compile/run if the optimizations are too extreme.

declaration is on a single line, with as little whitespace as possible to avoid issues.

-   CFLAGS - C compiler
-   CXXFLAGS - is used to refer to the C++ compiler within many buildsystems.
-   FFLAGS - Fortran
-   FCFLAGS - any FORTRAN compiler in more modern build systems


<a id="org796d423"></a>

## options

-   **-march:** processor architecture (or arch); certain kind of CPU
    -   **-mtune and -mcpu:** These flags are normally only used when there is no available -march option.
-   **-pipe:** use pipes instead of temporary files. it makes the compilation process faster. On systems with low
    memory, GCC might get killed.
-   **-O0, -O1, -O2, -O3, -Os, -Oz, -Og, and -Ofast:** -   **-Ofast:** -O3 plus -ffast-math, -fno-protect-parens, -fallow-store-data-races, -fstack-arrays and
    
    -fno-semantic-interposition
-   **-ftree-vectorize:** is an optimization option (default at -O3, -Ofast and -fvect-cost-model=very-cheap),
    attempts to vectorize loops using the selected ISA if possible. doesn't always improve code
-   **-fvect-cost-model=very-cheap:** ??
-   **-fomit-frame-pointer:** turned on at all levels of -O. will make debugging hard or impossible.
-   **-msse, -msse2, -msse3, -mmmx, -m3dnow:** Streaming SIMD Extensions (SSE), SSE2, SSE3, MMX, and 3DNow! instruction sets for x86 and x86-64 architectures.
-   **-funroll-loops and -funroll-all-loops :** Loop unrolling. On modern processors, loop unrolling is often
    counterproductive, as the increased code size can cause more cache misses;
-   **-finline-functions:** Inline expansion
-   **-funswitch-loops:** Loop unswitching optimization

Hardening optimizations

-   **-fpie:** full ASLR for executables
    -   **-fpic -shared:** no text relocations for shared libraries
-   **-D<sub>FORTIFY</sub><sub>SOURCE</sub>=2:** run-time buffer overflow detection
-   **-D<sub>GLIBCXX</sub><sub>ASSERTIONS</sub>:** run-time bounds checking for C++ strings and containers
-   **-fstack-protector-strong:** stack smashing protector
-   **-fstack-clash-protection:** increased reliability of stack overflow detection
-   **-fcf-protection:** control flow integrity protection


<a id="org3332a57"></a>

## Per-package

-   /etc/portage/env directory
-   /etc/portage/package.env file.

ex:

/etc/portage/env/debug-cflags

    CFLAGS="-O2 -ggdb -pipe"
    FEATURES="${FEATURES} nostrip"

/etc/portage/package.env

    media-video/mplayer debug-cflags


<a id="orgea196e0"></a>

## links

-   <https://wiki.gentoo.org/wiki/Safe_CFLAGS>
-   <https://wiki.gentoo.org/wiki/GCC_optimization>
-   <https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html#Optimize-Options>
-   per package <https://wiki.gentoo.org/wiki/Handbook:AMD64/Portage/Advanced#Per-package_environment_variables>


<a id="org2ccea9d"></a>

# diablo

-   <https://github.com/diasurgical/devilutionX>
-   keys <https://github.com/diasurgical/devilutionX/wiki/Keyboard-Controls>
-   doc <https://github.com/diasurgical/devilutionX/blob/master/docs/installing.md>

    emerge games-engines/devilutionx

required in ~/.local/share/diasurgical/devilution/:

-   DIABDAT.MPQ, hellfire.mpq, hfmonk.mpq, hfmusic.mpq, hfvoice.mpq
-   For Chinese, Korean, and Japanese users will also need **fonts.mpq** or the text will be missing.
-   For Polish voice support you need **pl.mpq**
-   For Russian voice support you need **ru.mpq**


<a id="org6ff35fc"></a>

# Rust and Compiler Bootstrapping

Bootstrapping compiler - when a compiler is written in own language, it have sevaral stages “0-9”.

<https://jyn.dev/bootstrapping-rust-in-2023/>

-   GCC
-   LLVM
-   Go Compiler


<a id="org09c0eab"></a>

# links

-   <https://devmanual.gentoo.org/index.html>
-   <https://wiki.gentoo.org/wiki/User:SwifT/Complete_Handbook>
-   <https://wiki.gentoo.org/wiki/Gentoo_Cheat_Sheet>

