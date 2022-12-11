
# Table of Contents

1.  [revisions](#orgdc46d8e)
2.  [Definitions](#org2f7236f)
    1.  [Pull](#org6ed98d4)
    2.  [Push](#orgdfaa84b)
    3.  [Branch](#org01545af)
    4.  [TAG](#org3b41f77)
    5.  [.git/config, remote](#org919a800)
    6.  [Submodule](#orgec21b83)
    7.  [cherry-pick](#org8b7c1ac)
3.  [commands](#org76a5c49)
4.  [remote branches, upstream braches and symrefs](#orgcc3a560)
    1.  [kinds of symrefs](#org8988332)
5.  [Author identity unknown](#orgc2fab6c)
6.  [User/Password locally for repository (save password in repository)](#org3334984)
7.  [log](#org5216265)
8.  [merge](#org4e82b62)
9.  [ingore files](#org6dfb959)
10. [pages](#org923e807)
11. [decentralized share](#org734295e)
12. [branch metodology (rus)](#orgb3d4cee)
    1.  [link](#org0d82670)
13. [commit metodology](#orgf45138c)
14. [EXAPLES](#orge901e77)
    1.  [branch](#org659aa02)
    2.  [misstake](#org4049b54)
    3.  [tags](#orgb6ce96d)
    4.  [all](#orgf95b205)
15. [USE CASE](#orgbb30ca1)
    1.  [see changes](#orga72fe01)
    2.  [branches](#org13d4a4c)
    3.  [explore unknown repo](#orgb74f34a)
    4.  [pull forced](#org9f73921)
    5.  [delete all hisotry / remove all commits](#org013dc27)
    6.  [delete commits affter](#orgac8b07a)
    7.  [check if working tree has local changes](#org048f1ae)
    8.  [seach](#org246aab9)
    9.  [merge changes in big priject - instruction](#org67cf2b1)
    10. [restore file to HEAD](#orga41041a)

;-**- mode: Org; fill-column: 100;-**-
<https://github.com/Anoncheg1/x-set-keys.git>

-   > git clone ssh://git@github.com/<user>/<repository name>.git
-   > git clone ssh://git@github.com/Anoncheg1/x-set-keys.git


<a id="orgdc46d8e"></a>

# revisions

**man gitrevisions**

-   <rev> - revision - commit or blobs ("files") or trees ("directories of files") whis is conteined in commit.
    -   <sha1> - extended SHA-1 syntax
-   <describeOutput> Output from git describe; i.e. a closest tag, optionally followed by a dash and a number of commits,
-   <refname>, e.g. master, heads/master, refs/heads/master
-   [<refname>]@{<date>}
-   <refname>@{<n>}, e.g. master@{1}
    -   n-th prior value of that ref.
-   @{<n>}, e.g. @{1}
-   <rev>^[<n>], e.g. HEAD^, v1.5.1<sup>0</sup> - n-th parent
    -   A suffix ^ to a revision parameter means the first parent up to tree of that commit object. <rev>^ is equivalent to <rev><sup>1</sup>
    -   A^<n> - mean <n> parent where a commit has **more than one parent**
    -   A<sup>0</sup> = A
-   <rev>~[<n>], e.g. HEAD~, master~3
    -   A~2 - seond parent up to branch = A^^
-   r1 .. r2 - revision range
    -   r1..r3 = r2 r3 = r3 ^r1
    -   r1<sup>..r3</sup> = r1 r2 r3
-   r1 &#x2026; r2 - all parents of both


<a id="org2f7236f"></a>

# Definitions

<http://www.vogella.com/tutorials/Git/article.html>
<https://www.tutorialspoint.com/git/git_basic_concepts.htm>

**Version Control System** (VCS) [ˈvɜːʃən] is a software that helps software developers to work together and
maintain a complete history of their work.

Git - distributed version control system.

Repository - software storage local or remote. contains the history and branches.

-   Bare repository - git init &#x2013;bare For sharing in collaborating. repository without working
    tree. Not allow tocreate new versions. (commit i guess)
-   Local Repository - .git folder at local machine

Working tree - folder for the repository (tracked and untracked).
**staging area** (Index) - **git add** list of files with sha1 of content - tracked files.
**Stagging or cached** - changes that will be included in next commit. (after git add)

Checkout - Updates files(remove changes) in the working tree to match the version in the index or the specified branch.

Commit
1)commit the staged changes into Git repository
2)commit object - uniquely identifies(SHA-1 hash) a revision(state) of the repository(content). Has pointer to parent commit.

If commit has miltiple parent commits - was created by merging.

-   First parent commit is the branch you were on when you merged A^, A<sup>2</sup> - second parent

Version graph formed by all commits in the repository

HEAD - symbolic reference. If you switch branches, the HEAD pointer points to
the branch pointer which in turn points to a commit. If you checkout a specific
commit, the HEAD points to this commit directly.

.gitignore the root directory of your project, the ignore settings will be applied to all sub-directories automatically.

Detached HEAD mode - If you checkout a commit or a tag

ref - symbolic references (symrefs)

Upstream branch - branch tracked on remote repository by your local remote "tracking" branches.

-   Local remote "tracking" branches - local branches that has remote associatied in .git/config
-   remote tracking branches - branches on remote version of local repository
-   "remotes" - remote repository, configured in git remote. ex. origin


<a id="org6ed98d4"></a>

## Pull

from remote repository instance to local one.


<a id="orgdfaa84b"></a>

## Push

from local to remote


<a id="org01545af"></a>

## Branch

<https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging>
<https://git-scm.com/book/en/v2/Git-Branching-Remote-Branches>
Branch - are local for the repository. A branch is a named pointer to a commit.

Remote-tracking branches - there are remote branches. Looks like origin/master. not stored localy. but may be checkout.

local branches - looks like master. they are stored in local repository.

To have an upstream branch(tracking branches) - &#x2013;track This configuration will
tell git to show the relationship between the two branches in git status and git
branch -v. If you clone a Git repository, your local master branch is created as
a tracking branch for the master branch of the origin repository
(short:<sub>origin</sub>/master\_) by Git. Always local.

upstream branch - the branch which tracking branch tracks. Always Remote-tracking branches.

Default branch - named \_master


<a id="org3b41f77"></a>

## TAG

Tag - points to a commit.

Lightweight tag - without properties,  annotated tag - with additional info

Release tags - common applying of tag.


<a id="org919a800"></a>

## .git/config, remote

Fetchurl, Pushurl - the location of the repository

Remote - remote repository pointer with properties e.g. URL, branches to fetch or branches to push.

Origin - default name for remote. after clone


<a id="orgec21b83"></a>

## Submodule

Git-submodule - via a .gitmodules file located at the root of the parent
repository.  They’re too intrusive, requiring submodules to be initialised and
updated. And switching between branches, which is where Git really shines,
suddenly becomes painful because submodules don’t do what you expect.

git merge
git rebase - like merge but add current branch commits at the top of rebase branch

git fetch - move local Remote-tracking branche to what at remote repository. it may add commits not existing in another local branches.

By default you can only push to bare repositories.

release tags are labeled based on the [major].[minor].[patch] naming scheme, for example "1.0.0". Several projects also use the "v" prefix.
the minor version is incremented if new, backwards compatible functionality is introduced to the public API and the major version is incremented if any backwards incompatible changes are introduced to the public API.

To get submodules for project:

-   git checkout &#x2013;recurse-submodules
-   git submodule update &#x2013;depth 1 &#x2013;init &#x2013;checkout &#x2013;recursive


<a id="org8b7c1ac"></a>

## cherry-pick

act of picking a commit from a branch and applying it to another.

most of this can be made with git merge


<a id="org76a5c49"></a>

# commands

-   git init/clone

-   git stash - save working directory state and allow list saves
-   git rm [file] - remove files from the index and maybe(&#x2013;cached) working tree
-   git mv - move file, directory symlink, index updated, but changes must be commited
-   git add - update the Index = add files and update check-sum.
-   git clean - Remove untracked files from the working tree

-   git log
-   git reflog - local actions history - git reset HEAD@{index}
-   git show
-   git diff
    -   git diff HEAD - between Staging Area and HEAD commit (git diff "s" HEAD - "s"=a, HEAD=b)
    -   git diff &#x2013;staged/cached HEAD - between Stagging and HEAD
-   git branch
-   git switch - switch branches
-   git checkout -switch
-   git commit
    -   &#x2013;amend - replace last commit of current branch
-   git merge - combines branches
    -   git merge &#x2013;abort

-   git revert - revert one commit and record new one
-   git reset - sets HEAD to comment (and reset index and/or working tree)
    -   &#x2013;mixed - reset index but not working tree
    -   &#x2013;soft - do not touch index and working tree
    -   &#x2013;hard - index and working, changes are lost
    -   &#x2013;merge - reset index and update files in working if they different in past commit
    -   &#x2013;keep - reset index and update files in working if they dont have local changes
-   git reset file - reset file to HEAD

-   git remote - manage remote repositories
-   git fetch - harmless download changes
-   git pull - download changes and change working tree


<a id="orgcc3a560"></a>

# remote branches, upstream braches and symrefs

-   git remote - show "remotes" whose branches you track
-   git branch -r - remote tracking branches (branches on remote version of local repository)
    -   \* - currently viewing
    -   origin/HEAD -> origin/master - default branch and current commit of origin. may be changed with: git remote set-head origin <remote> <branch>
    -   origin/master - remote branch
-   cat .git/config
    -   remote = origin - remote associated with branch (upstream configuration)
    -   merge = refs/heads/master - branch and HEAD on remote


<a id="org8988332"></a>

## kinds of symrefs

git symbolic-ref

-   .git/HEAD, pointing at somewhere under refs/heads/ hierarchy;
-   .git/refs/remotes/{some remote name}/HEAD, pointing at somewhere under refs/remotes/{the same remote name}/ hierarchy.


<a id="orgc2fab6c"></a>

# Author identity unknown

.git/config [user] section:

-   git config user.email ""
-   git config user.name "(none)"

~/.gitconfig
git config &#x2013;global &#x2013;list
git config &#x2013;list    - repository config


<a id="org3334984"></a>

# User/Password locally for repository (save password in repository)

-   git config credential.helper store
-   after next push credentials will be saved


<a id="org5216265"></a>

# log

git log

-   &#x2013;oneline -
-   &#x2013;graph
-   &#x2013;decorate[=short|full|auto|no] lenght of ref name - default short

git log HEAD~4..HEAD
git log HEAD~4     - the same
git log testing..master   - list all commints in master but not in testing
git log master&#x2026;testing   - commits reached by master or testing but not both

git log HEAD &#x2013;
git log -1 &#x2013; HEAD   - one last commit for HEAD file
git log HEAD^  - one parent commit for HEAD


<a id="org4e82b62"></a>

# TODO merge

merge branch

-   git checkout master
-   git merge development

if CONFLICT

1.  undo
    -   git merge &#x2013;abort
    -   git merge &#x2013;continue
2.  resolve
    -   open conflicted file to see
    -   remove <<<<<, `==` amd >>> lines to resolve conflict
    -   git add ./path/file ( if new)
    -   git commt -m "Merge development fixed conflict"


<a id="org6dfb959"></a>

# ingore files

-   .gitignore - will be added to repository
-   .git/info/exclude - without adding .gitignore to repo
-   ~/.gitignore<sub>global</sub> - global for all repositories


<a id="org923e807"></a>

# pages

repo -> Settings ->pages

Preview:

-   <https://htmlpreview.github.io/?https://github.com/Anoncheg1/awesome-chinese/blob/main/index.html>

HTML:

-   touch .nojekyll
-   /<sub>site</sub>/index.html
    -   Settings -> pages <https://anoncheg1.github.io/awesome-chinese/>


<a id="org734295e"></a>

# decentralized share

/etc/conf.d/git-daemon

-   GIT<sub>USER</sub>="t"
-   GIT<sub>GROUP</sub>="t"
-   GITDAEMON<sub>OPTS</sub>="&#x2013;syslog &#x2013;export-all &#x2013;enable=receive-pack &#x2013;base-path=/home/t/share"
    -   If desired to accept git push and allow access all direct, it needs two options
        &#x2013;enable=receive-pack and &#x2013;export-all in GITDAEMON<sub>OPTS</sub>

or use sshfs to directly access folder


<a id="orgb3d4cee"></a>

# branch metodology (rus)

-   Central Workflow - one master branch
-   Forking Workflow - 1) original or main branch 2) fork branch owned by another contributor which going to suggest merges to main
-   Developer Branch Workflow - one main and every developer has one or more own branches. finally forks will be merged to main.
-   Github Flow - (good for agile teams)
    -   main branch - code works and ready to deploy at any time
    -   all brancches (features) - checked by leader of the team + one more specialist then merged to main
-   Feature Branch Workflow -
    -   main - stable
    -   dev -
    -   features branches - created from dev. finally merged to dev
-   Git Flow - big projects
    -   main branch or production - stable
    -   develop - may be not stable
    -   release1-9 branches - stabilization work take place here and merged to develop and master
    -   hotfix1-9 branches - for fast solving of critical problem of production branch. merged to develop and master.
-   Issue Branch Workflow - like a "Feature Branch Workflow" but with for issues


<a id="org0d82670"></a>

## link

<https://view.genial.ly/633ae76d9e26ed001866821c/interactive-content-dst-30-bonus-mdnandgitunit8>


<a id="orgf45138c"></a>

# commit metodology

consist of

-   action
-   subject
-   comments

vocabulary:

-   init — инициализация;
-   add — добавление;
-   delete — удаление;
-   update — изменение;
-   fix — исправление;
-   refactor — рефакторинг кода приложения;
-   style — исправление опечаток, форматирования;
-   docs — всё, что касается документации;
-   test — всё, что связано с тестированием;
-   merged, fix conflict — слияние, решение конфликта.


<a id="orge901e77"></a>

# EXAPLES


<a id="org659aa02"></a>

## branch

git checkout origin/another<sub>branch</sub>

git checkout master
git merge hotfix


<a id="org4049b54"></a>

## misstake

git reset &#x2013;hard

git commit &#x2013;amend -m "asd"

git reset &#x2013;hard a43e2d13
git push origin development &#x2013;force


<a id="orgb6ce96d"></a>

## tags

git tag 1.6.1 -m 'Release 1.6.1'

git push origin [tagname]

git push origin tag <tagname>

git push &#x2013;tags

git tag -d 1.7.0

git push origin :refs/tags/1.7.0

git show 1.6.1
git chechout <tag<sub>name</sub>>


<a id="orgf95b205"></a>

## all

ref~ is shorthand for ref~1 and means the commit's first parent
ref<sup>1</sup> ref<sup>2</sup> - two parents for merge commit

git diff-tree &#x2013;name-only -r <commit<sub>id</sub>>
git diff HEAD^ HEAD

git blame -w -L 1,2 [filename]

git shortlog
git shortlog -s    - only users

git pull = git fetch + git merge
git pull &#x2013;rebase = git fetch + git rebase - clear changes

git checkout  - reset file to latest commit or stagged state

git status - Displays paths that have any differences

git config &#x2013;global &#x2013;list
git config &#x2013;list    - repository config

git clone git://github.com/vogella/gitbook.git			git - default protocol 9148 port
git clone <http://github.com/vogella/gitbook.git>   clone via HTTP
git clone ssh://git@github.com/vogella/gitbook.git      git - name for ssh
URL for remote: git@github.com/vogella/gitbook.git

git remote show origin      - get a full list of Remote references are references (pointers) in your remote repositories, including branches, tags, and so on.
git ls-remote origin   - like above
git remote -v

			###  BRANCHES  ###
git branch    - local branches
git branch -a      - lists all branches including the remote branches
git branch -r      - lists branches in the remote repositories
git branch -v		- info of tracking branches
git branch <name> <hash>    - <hash> is optional to which the branch pointer original points
git checkout [[-b|-B|&#x2013;orphan] <new<sub>branch</sub>>] [<start<sub>point</sub>>]
git checkout -b develop      - new branch and start at the start poing
&#x2013;orphan		- no parents, totally disconnected. no commits before first
git branch -d testing     - delete local branch
git push [remote] &#x2013;delete [branch]        - delete branch in a remote repository

git checkout -b newbranch origin/newbranch - setup a tracking branch called newbrach which tracks origin/newbranch
git branch [new<sub>branch</sub>] origin/master
git remote show origin     - show all remote and tracking branches for origin
git checkout &#x2013;track origin/serverfix   - create local serverfix branch tracking remote one if remote exist.
git checkout serverfix   - the same
git branch -vv        - to see local tracking branches.

     ###  Stagging area  ###
git add [path] -add to staging area
git reset [path] -remove staging area
git diff &#x2013;cached         -shows the differences between the staging area and the last commit
git add -n .              - on’t actually add the file(s), just show if they exist and/or will be ignored.

\#clean
git reset &#x2013;hard     - clean stagging area but do not touch untracked files
git clean -fdx    - remove untracked files -f force -d directories -x hidden files

\#reset to origin
git fetch origin
git reset &#x2013;hard origin/master
git checkout master

git reset HEAD~1  - move HEAD and branch pointer - do nothing with untracked files
Reset			Branch pointer		Working tree		Staging area
soft			Yes					No					No
mixed (default)	Yes					No					Yes
hard			Yes					Yes					Yes

git reflog - show HEAD movements and found reseted commits

git show HEAD:./pom.xml   -show file

Create patch:

echo "new content for test01" >test01

git add .
git commit -m "first commit in the branch"

git format-patch origin/master              or git format-patch -3 HEAD - for last 3 commits
Apply patch:

git checkout master

git apply 0001-First-commit-in-the-branch.patch

git add .
git commit -m "apply patch"

rm 0001-First-commit-in-the-branch.patch
\#short
git am \*.patch   -order in which the patches are applied by specifying them on the command line.

\#remove last commit
git reset &#x2013;hard HEAD~
git commit &#x2013;amend
git push -f origin master

\#fix detached HEAD
git checkout master

\#Subtree  <https://help.github.com/articles/about-git-subtree-merges/>
git remote add -f test-subtree git@github.com:Anoncheg1/test-subtree.git
\#&#x2013;no-commit perform the merge but pretend the merge failed and  do not autocommit

git merge -s ours &#x2013;squash &#x2013;no-commit &#x2013;allow-unrelated-histories test-subtree/master
	git read-tree &#x2013;prefix=test-subtree/ -u test-subtree/master

\#pull changed subtree in parent
git pull &#x2013;allow-unrelated-histories &#x2013;squash -s subtree test-subtree master

\#push subtree from parent
???

git submodule add [URL to Git repo]
git submodule init
git submodule update &#x2013;remote   -remote if you need branches. updates the working tree to the commit described by the branch
cd [submodule directory]
git checkout master
git pull

git clone &#x2013;recursive

\#push submodule from parent
\#cd submodule
git status        - check that we on master
git checkout master      - if detached HEAD mode
commit submodule
cd parent
commit parent
git submodule update

\#commit main
git submodule update
git commit


<a id="orgbb30ca1"></a>

# USE CASE


<a id="orga72fe01"></a>

## see changes

-   git diff myfile.txt			#  haven't git added yet
-   git diff &#x2013;cached myfile.txt	#  already added


<a id="org13d4a4c"></a>

## branches

remove commits to another branch

-   git checkout -b new
-   git checkout old
-   git reset &#x2013;hard commit
-   git push origin &#x2013;force

remove commits from remote branch

-

merge range of commits

-   cherry-pick
    -   git checkout old<sub>or</sub><sub>master</sub>
    -   git checkout -b new<sub>branch</sub>
    -   git cherry-pick a..e # from development


<a id="orgb74f34a"></a>

## explore unknown repo

-   git branch -a  (all or -r remote)
-   git log &#x2013;graph &#x2013;oneline
-   git remote -v
-   git branch -r -a


<a id="org9f73921"></a>

## pull forced

git reset &#x2013;hard
git pull


<a id="org013dc27"></a>

## delete all hisotry / remove all commits

git checkout &#x2013;orphan latest<sub>branch</sub>
git add -A
git commit -am "commit message"
git branch -D master
git branch -m master      -rename current branch to master
git push -f origin master
git branch -u origin/master master   - to track remote

git &#x2013;work-tree="." pull &#x2013;allow-unrelated-histories
git merge
git rebase


<a id="orgac8b07a"></a>

## delete commits affter

-   git reset &#x2013;hard commit
-   git push origin HEAD &#x2013;force ??????
-   git push origin +HEAD:development


<a id="org048f1ae"></a>

## check if working tree has local changes

one of:

-   git status -s
-   git diff &#x2013;name-only

git diff HEAD

git status -u - display untacked files


<a id="org246aab9"></a>

## seach

**in files**
git grep WHAT

-   -n add line number
-   &#x2013;count print only sum occurances
-   &#x2013;heading &#x2013;break  - more readable

**in content of commits**
git log -S WHAT &#x2013;oneline


<a id="org67cf2b1"></a>

## merge changes in big priject - instruction

1.  Create a new dev branch
2.  Do your work on local dev branch
3.  Push dev branch from your local to central git repository
4.  Once your work is done, merge dev branch to master
5.  Finally, delete the dev branch from both local and central git repository

s

1.  git checkout -b my<sub>branch</sub>
2.  git commit -m " "
3.  git push &#x2013;set-upstream origin my<sub>branch</sub>
4.  git checkout development
5.  git merge my<sub>branch</sub>
6.  git branch -d dev
7.  git branch -d -r origin/dev
8.  git push


<a id="orga41041a"></a>

## restore file to HEAD

git reset file
