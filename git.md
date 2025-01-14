
# Table of Contents

1.  [clone specific tag](#org13bbdb0)
2.  [investigate folder](#orgd782e54)
3.  [http to git with Bash](#orgba85dcb)
4.  [pull to diff from GitHub interface](#orgd554005)
5.  [cheat sheet](#orgf260724)
6.  [SHA1 (default)](#org63a1269)
7.  [CLA and DCO, signoff and gpg-sign](#org9a2e471)
8.  [GitLab tagline, forge](#org48b26b0)
9.  [GitHub actions - CI/CD platform](#org8070f8a)
    1.  [theory](#org90e65b3)
    2.  [features](#orgb3e3f35)
    3.  [terms](#org844a967)
    4.  [workflow file](#org61bad0d)
    5.  [examples of workflow files](#orgd2a709d)
        1.  [checks out the pushed code, installs the bats testing framework, and runs a basic command to output the bats version](#orgb2f5b5c)
    6.  [variables](#orgb588dc7)
    7.  [events that trigger workflows](#org082e868)
        1.  [frequent events:](#org80d9609)
        2.  [ex](#org065e984)
    8.  [secrets and variables](#org3133907)
        1.  [GITHUB<sub>TOKEN</sub>](#org96da7d1)
    9.  [jobs](#org0dc77bd)
        1.  [ex](#org932805a)
        2.  [links](#org779b5e2)
    10. [steps](#orgc295f7e)
        1.  [uses](#org4be2680)
    11. [actions](#org4898d31)
        1.  [checkout](#orgf20788e)
        2.  [ex](#org14aeb60)
    12. [variables](#org6df2507)
        1.  [secrets](#orgc5bb13a)
    13. [runs-on](#org100643d)
    14. [passing data between &#x2026;](#org2510c39)
    15. [release](#orgb343d6c)
    16. [links](#orgceef93a)
10. [GitHub special files](#org55265dd)
    1.  [docs/CONTRIBUTING.md](#org120fae7)
    2.  [.git-blame-ignore-revs](#orgcf3e8eb)
    3.  [.github/CODEOWNERS](#org0cf602f)
    4.  [.github/SECURITY.md](#org7a959fb)
    5.  [.gitignore](#org374a816)
        1.  [python .gitignore](#orgd0bbf34)
    6.  [.gitlab-ci.yml](#orgd6b555d)
11. [Github search](#org980098e)
    1.  [links](#org3252fe4)
12. [install git](#org6bc10b2)
13. [Global settings: Author identity unknown, proxy](#org148de59)
    1.  [global config files, Anonymous](#orga4d5292)
    2.  [proxy](#orgfa3abd0)
    3.  [ssh](#orge9f80ab)
14. [revisions](#org1ed961b)
15. [Definitions](#orgd159ac7)
    1.  [Pull](#org491088f)
    2.  [Push](#org2721fc4)
    3.  [Branch](#org8d632fc)
    4.  [TAG](#org8b43dcf)
    5.  [.git/config, remote](#org3f48bbc)
    6.  [Submodule](#org927adde)
    7.  [cherry-pick](#org294ab70)
16. [commands](#orgb72875f)
17. [GIT Branching Strategies](#orgd79cd2b)
18. [branches](#orga66665a)
    1.  [theory](#org73cd385)
19. [remote branches, upstream braches and symrefs](#org9f72a3e)
    1.  [kinds of symrefs](#org663b9f6)
20. [User/Password locally for repository (save password in repository)](#org532a786)
21. [log](#org3147422)
22. [diff](#orgf17d987)
23. [merge](#orgb5916a1)
24. [pull request - Best Practices ](#org58774c9)
25. [markdown](#org718f6b0)
    1.  [headers](#org27c4024)
    2.  [code](#org1d07765)
    3.  [all](#org4856829)
    4.  [links](#orgb862120)
26. [pages](#org45deed4)
27. [decentralized share](#org992bf87)
28. [branch metodology (rus)](#orgfd5388b)
    1.  [link](#org7e45ac6)
29. [commit metodology](#orgf71030f)
30. [image upload](#org21ce5ae)
31. [EXAPLES](#org7ba1b11)
    1.  [branch](#org526e40a)
    2.  [misstake](#orgb186384)
    3.  [tags](#org82a679d)
    4.  [all](#org72d6f84)
32. [USE CASE](#org2ca74c5)
    1.  [see changes](#orgefea3d9)
    2.  [branches](#orge481b87)
    3.  [explore unknown repo](#orgcfa6f71)
    4.  [pull forced](#org868bee9)
    5.  [delete all hisotry / remove all commits](#org6a400e3)
    6.  [delete commits after](#org7756ed5)
    7.  [check if working tree has local changes](#orgfba73c5)
    8.  [seach](#org9223b4c)
    9.  [restore file to HEAD](#orgd1a52d3)
    10. [get all authors](#org1de20f0)
    11. [git move between commits](#org2d58110)
    12. [How to Sync Your Fork with the Original Git Repository](#orgef442e5)
    13. [replace remote history with local](#orgdd2ab8c)
    14. [clone single branch and tags](#orgffd57a8)
    15. [make fork with single main and sync tags](#orge9ed481)
    16. [tracking branch](#orge4462e8)
    17. [adding modifications at old commit](#orgd5316eb)
    18. [patch creation and applying](#org69e31dc)
33. [WORKFLOWS](#orgc2fb484)
    1.  [Merge changes in a big project](#org5854b14)
    2.  [Back-porting Changes from Master to the Release Branch](#orgaf1dac4)
34. [join commits together, merge commits, squash commits, Squash commits into one](#orgd13ca4a)
35. [humor](#orga507f4f)
36. [Troubleshooting](#orgb47364b)
    1.  [You have divergent branches and need to specify how to reconcile them.](#org8b29292)
        1.  [Merge strategy:](#org0fa012f)
        2.  [Rebase strategy](#org5158a43)
    2.  [Your branch and 'origin/main' have diverged](#org37da08a)
    3.  [bare clone](#org9f2fcb3)
    4.  [shallow update not allowed](#org340fa76)
37. [status badge](#orga3ca927)
38. [python bots](#orgb0076d4)
39. [https://jonas.github.io/tig/](#org511fb48)
    1.  [Keybindings](#org4f36a96)
40. [Git local server and git init &#x2013;bare](#orgb514d55)
41. [migrate to codeberg](#orga7bdf67)
42. [CGIT - wtf is this?](#orgab82915)
43. [Github Models](#org30575c9)
    1.  [Rate limits](#org9b85cf0)
    2.  [models](#orgb3e0725)
    3.  [usage Meta-Llama-3-70B-Instruct](#org679926d)
    4.  [usage with curl](#org6694874)
44. [Copilot Free](#org509cd3a)
    1.  [What’s included](#org2cd10de)
    2.  [VSCODE:](#orgd6f340a)
    3.  [build own:](#orgf20abe9)
45. [Git Large File Storage (LFS)](#org0d34ed5)
    1.  [without git](#orge724d2f)
    2.  [Alternatives](#org2be487e)

;-**- mode: Org; fill-column: 100;-**-
git clone ssh://git@github.com/<user>/<repository<sub>name</sub>>.git
<https://packages.gentoo.org/categories/dev-vcs>


<a id="org13bbdb0"></a>

# clone specific tag

    git clone --branch <tag-name> --single-branch https://github.com/example/repo.git

<https://graphite.dev/guides/git-clone-specific-tag>


<a id="orgd782e54"></a>

# investigate folder

list files:

    find $PWD -type f

tree of folders:

    ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--|/g' -e 's/^/ /' -e 's/-/|/'


<a id="orgba85dcb"></a>

# http to git with Bash

    http_to_ssh() {
        # Usage:
        # $ http_to_ssh https://github.com/user/repo.git
        # $ echo https://github.com/user/repo.git | http_to_ssh
    
        # - Read input from stdin or arguments
        if [ $# -eq 0 ]; then
            url=$(cat)
        else
            url=$1
        fi
    
        if [[ $url =~ ^https:// ]]; then
            url=${url#https://} # Remove the "https://" prefix from the URL
            url=${url%.git} # Remove any trailing ".git" from the URL
            url=${url%/} # Remove any trailing slashes from the URL
            # - Split the URL into parts using the "/" character as a delimiter
            parts=(${url//\// })
            # - Extract the owner and repository names from the URL parts
            serv=${parts[0]} # github.com
            owner=${parts[1]}
            repo=${parts[2]}
            ssh_url="git@${serv}:${owner}/${repo}.git"
            echo "$ssh_url"
        else
            echo "Invalid HTTP URL" >&2
            return 1
        fi
    }


<a id="orgd554005"></a>

# pull to diff from GitHub interface

-   <https://github.com/user/repository/pull/123.patch> for a mail-formatted patch file.
-   <https://github.com/user/repository/pull/123.diff> for a unified diff file.


<a id="orgf260724"></a>

# cheat sheet

![img](./imgs/git-commands.jpg)


<a id="org63a1269"></a>

# SHA1 (default)

it defaults to using seven characters:

    git log --oneline or --abbrev-commit

At its core, the Git version control system is **a content addressable filesystem**. It uses the SHA-1
 hash function to name content.

-   these simple names are called “references” or “refs”; (.git/refs directory.)


<a id="org9a2e471"></a>

# CLA and DCO, signoff and gpg-sign

CLA (Contributor License Agreement)

Copyright transfer/assignment agreement - an agreement that transfers the copyright for a work from
 the copyright owner to another party. ex: a video game developer who wants to pay an
 artist(painter) to draw a boss to include in a game

DCO (Developer Certificate of Origin) - way for contributors to certify that they wrote or otherwise
 have the right to submit the code they are contributing to the project.

-   aggree to "the contributor is allowed to make the
    contribution and that the project has the right to distribute it under its license"
-   introduced in 2004[1] by the Linux Foundation
-   Sign-off is a requirement for getting patches into the Linux kernel and a few other projects, but
    most projects don't actually use it.
-   **Sign-off** is a line at the end of the commit message which certifies who is the author of the
    commit. Its main purpose is to improve tracking of who did what, especially with patches.
    -   Signed-off-by: Humpty Dumpty <humpty.dumpty@example.com>

-s::&#x2013;signoff:: - add line to commit message to signal that you created this commit, have permission
 to submit it, and you adhere to the project licensing.

-S &#x2013;gpg-sign - adds a gpg signature to the commit which requires one to have gpg installed and a
 private key. GitHub will mark commits that you sign with the *verified* label. If you sign your
 tags, they will also be marked as *verified*.


<a id="org48b26b0"></a>

# GitLab tagline, forge

**Forge** - a web-based collaborative software platform for both developing and sharing computer
 applications. (after SourceForge)

**GitLab tagline** - forge, AI-powered DevSecOps Platform, the complete developer platform to build,
 scale, and deliver secure software.


<a id="org8070f8a"></a>

# GitHub actions - CI/CD platform


<a id="org90e65b3"></a>

## theory

It uses main branch only.

When you enable GitHub Actions, GitHub installs a GitHub App on your repository.


<a id="orgb3e3f35"></a>

## features

-   automatically add the appropriate labels whenever someone creates a new issue in your repository
-   provides Linux, Windows, and macOS virtual machines to run your workflows, or you can host your
    own self-hosted runners in your own data center or cloud infrastructure


<a id="org844a967"></a>

## terms

-   **event:** in repository
-   **workflow:** defined by a YAML file in .github/workflows/. Triggered by: event, manually, at schedule.
-   **jobs:** part of workflow, set of steps. run sequential or parallel(default) in one workflow. May depend on other job.
-   **runner:** Each job will run inside its own virtual machine or container.
-   **steps:** of job. run a **script** or run an **action**. executed in order.
-   **default environment variables:** that GitHub sets automatically
-   **custom variables:** user definde
-   **activity type:** specify which activity trigger event.


<a id="org61bad0d"></a>

## workflow file

workflow is divided into **jobs**, and each job performs a set of **steps**

specifies what commands or scripts to run, the default settings, the environment for the commands, etc.

-   **name (optional):** name of your workflow, if not specified GitHub sets it to the workflow file path.
-   **run-name (optional):** name for **workflow runs**, if omitted then for a workflow triggered by a
    push or pull<sub>request</sub> event, it is set as the commit message.
    -   ex. Deploy to ${{ inputs.deploy_target }} by @${{ github.actor }}
-   **on:** events if just list. ex. [push, fork]
-   **jobs:** 

-   **check-bats-version:** example job name
-   **ubuntu-latest:** ex. ubuntu-latest.


<a id="orgd2a709d"></a>

## examples of workflow files


<a id="orgb2f5b5c"></a>

### checks out the pushed code, installs the bats testing framework, and runs a basic command to output the bats version

    name: learn-github-actions
    run-name: ${{ github.actor }} is learning GitHub Actions
    on: [push]
    jobs:
      check-bats-version:
        runs-on: ubuntu-latest
        steps:
          - uses: actions/checkout@v3
          - uses: actions/setup-node@v3
            with:
              node-version: '14'
          - run: npm install -g bats
          - run: bats -v

    {True: ['push'],
     'jobs': {'check-bats-version': {'runs-on': 'ubuntu-latest',
                                     'steps': [{'uses': 'actions/checkout@v3'},
                                               {'uses': 'actions/setup-node@v3',
                                                'with': {'node-version': '14'}},
                                               {'run': 'npm '
                                                       'install '
                                                       '-g '
                                                       'bats'},
                                               {'run': 'bats '
                                                       '-v'}]}},
     'name': 'learn-github-actions',
     'run-name': '${{ github.actor }} is '
                 'learning GitHub Actions'}


<a id="orgb588dc7"></a>

## variables

custom variable

-   **env** key in workflow file.
    -   env:\n\t DAY<sub>OF</sub><sub>WEEK</sub>: Monday
    -   jobs: env:\n\t DAY<sub>OF</sub><sub>WEEK</sub>: Monday
    -   jobs: steps: env:\n\t DAY<sub>OF</sub><sub>WEEK</sub>: Monday

-   define it at the organization, repository, or environment level


<a id="org082e868"></a>

## events that trigger workflows

    on: {release: {types: [published]}}
    on: {schedule: [cron:  '30 5,17 * * *']}
    "on": [push]

Every event has "activity type" which describe it further.

events <https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows>


<a id="org80d9609"></a>

### frequent events:

-   push - triggered when a commit is pushed to the repository
-   pull<sub>request</sub> - triggered when a pull request is opened or updated
-   workflow<sub>dispatch</sub> - triggered manually by a user or API call
-   release - triggered when a new release is created. GITHUB<sub>SHA</sub>, GITHUB<sub>REF</sub> (refs/tags/<tag<sub>name</sub>>)

other:

-   schedule - triggered on a specified schedule (e.g. daily, weekly)
-   repository<sub>dispatch</sub> - triggered by a custom event from an external system or API
-   page<sub>build</sub> - triggered when a GitHub Pages site is built
-   issues - triggered when an issue is opened, edited, or labeled


<a id="org065e984"></a>

### ex

    on:
      push:
        # Sequence of patterns matched against refs/heads
        branches:
          - main
          - 'mona/octocat'
          - 'releases/**'
      pull_request:


<a id="org3133907"></a>

## secrets and variables

Repository -> settings -> Secrets and variables -> Actions

referencing secrets: ${{ secrets.GITHUB<sub>TOKEN</sub> }}


<a id="org96da7d1"></a>

### GITHUB<sub>TOKEN</sub>

**GITHUB<sub>TOKEN</sub>** - created before each job begins, expires when a job finishes. Usage: passing the
 token as an input to an action, or using it to make an authenticated GitHub API request. the
 default permissions are restrictive.

1.  permissions:

        permissions:
          actions: read|write|none
          checks: read|write|none
          contents: read|write|none
          deployments: read|write|none
          id-token: read|write|none
          issues: read|write|none
          discussions: read|write|none
          packages: read|write|none
          pages: read|write|none
          pull-requests: read|write|none
          repository-projects: read|write|none
          security-events: read|write|none
          statuses: read|write|none
        
        permissions: read-all|write-all
        permissions: {} # disable permissions

2.  usage example:

        name: Create issue on commit
        
        on: [ push ]
        
        jobs:
          create_issue:
            runs-on: ubuntu-latest
            permissions:
              issues: write
            steps:
              - name: Create issue using REST API
                run: |
                  curl --request POST \
                  --url https://api.github.com/repos/${{ github.repository }}/issues \
                  --header 'authorization: Bearer ${{ secrets.GITHUB_TOKEN }}' \
                  --header 'content-type: application/json' \
                  --data '{
                    "title": "Automated issue for commit: ${{ github.sha }}",
                    "body": "This issue was automatically created by the GitHub Action workflow **${{ github.workflow }}**. \n\n The commit hash was: _${{ github.sha }}_."
                    }' \
                  --fail


<a id="org0dc77bd"></a>

## jobs

-   jobs.<job<sub>id</sub>> - a unique string identifier.
-   jobs.<job<sub>id</sub>>.name - a name for the job, which is displayed in the GitHub UI.
-   jobs.<job<sub>id</sub>>.runs-on - type of machine to run the job on <https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions#choosing-self-hosted-runners>
-   jobs.<job<sub>id</sub>>.needs - any jobs that must complete successfully before this job will run.
-   jobs.<job<sub>id</sub>>.steps - YAML sequence or list of tasks called steps


<a id="org932805a"></a>

### ex

    jobs:
      check-links: # job ID
        name: My first job #  which is displayed in the GitHub UI. (optional)
        runs-on: ubuntu-latest
        steps:
          - run: npm install -g bats
          - name: do something important
            run:

job runners: <https://docs.github.com/en/actions/using-jobs/choosing-the-runner-for-a-job>


<a id="org779b5e2"></a>

### links

<https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions#jobs>


<a id="orgc295f7e"></a>

## steps

-   steps[\*].name - string id
-   steps[\*].uses - action ex. uses: actions/checkout@v4
-   steps[\*].Runs - command-line programs
-   steps[\*].working-directory


<a id="org4be2680"></a>

### uses

    # Reference a specific commit
    - uses: actions/checkout@8f4b7f84864484a7bf31766abe9204da3cbe65b3
    # Reference the major version of a release
    - uses: actions/checkout@v4
    # Reference a specific version
    - uses: actions/checkout@v4.2.0
    # Reference a branch
    - uses: actions/checkout@main


<a id="org4898d31"></a>

## actions

<https://github.com/actions/>

-   setup-python <https://github.com/actions/setup-python>
-   checkout <https://github.com/actions/checkout>
-   stale <https://github.com/actions/stale>
-   setup-java <https://github.com/actions/setup-java>
-   setup-go <https://github.com/actions/setup-go>
-   pypa/gh-action-pypi-publish <https://github.com/pypa/gh-action-pypi-publish>


<a id="orgf20788e"></a>

### checkout

to GITHUB<sub>WORKSPACE</sub>

Only a single last commit is fetched by default.

options:

-   **repository:** Default: ${{ github.repository }}
-   **ref:** uses the default branch


<a id="org14aeb60"></a>

### ex

    uses: pypa/gh-action-pypi-publish@27b31702a0e7fc50959f5ad993c78deac1bdfc29
          with:
            user: __token__
            password: ${{ secrets.PYPI_API_TOKEN }}


<a id="org6df2507"></a>

## variables

<https://docs.github.com/en/actions/learn-github-actions/variables>

reffered as $GITHUB<sub>WORKSPACE</sub>:

-   **GITHUB<sub>WORKSPACE</sub>:** The default working directory on the runner for steps, and the default location
    of your repository when using the checkout action.
-   **RUNNER<sub>OS</sub>:** 


<a id="orgc5bb13a"></a>

### secrets

-   Names must not start with the GITHUB\_ prefix.
-   Names must not start with a number.
-   Names are case insensitive.

${{ secrets.GITHUB<sub>TOKEN</sub> }} - special

    with: # Set the secret as an input
      super_secret: ${{ secrets.SuperSecret }}
    env: # Or as an environment variable
      super_secret: ${{ secrets.SuperSecret }}


<a id="org100643d"></a>

## runs-on

Each job runs in a fresh instance of the virtual environment specified by runs-on.


<a id="org2510c39"></a>

## passing data between &#x2026;

-   actions/upload-artifact and actions/download-artifact
-   volumes - to share data between services or other steps in a job.
-   outputs -  maximum of 1 MB. The total of all outputs in a workflow run can be a maximum of 50 MB.


<a id="orgb343d6c"></a>

## release

1.  create new release
    -   <https://github.com/elgohr/Github-Release-Action>
    -   gh release create &#x2013;title "${INPUT_TITLE}" --generate-notes "$(date +%Y%m%d%H%M%S)"
2.  add asset to existent release
    -   gh release upload ${{ github.ref<sub>name</sub> }} ./dist/\*{.exe,.exe.sha512.txt}


<a id="orgceef93a"></a>

## links

-   main <https://docs.github.com/en/actions>
-   <https://codefresh.io/learn/github-actions/github-actions-tutorial-and-examples/>
-   file <https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions>
-   env variables <https://docs.github.com/en/actions/learn-github-actions/variables>


<a id="org55265dd"></a>

# GitHub special files


<a id="org120fae7"></a>

## docs/CONTRIBUTING.md

README.md:

    [Contribution guidelines for this project](docs/CONTRIBUTING.md)

or in your root directory

think of it as a anchor for your project, around which you will build community and keep things
 tidy. provides potential project contributors with a short guide to how they can help with your
 project or study group

-   Project contributors - users of the file who want to know items they're welcome to tackle, and
    tact they need in navigating the project/respecting those involved with the project
-   Project consumers - users who want to build off the project to create their own project


<a id="orgcf3e8eb"></a>

## .git-blame-ignore-revs

Contains commit hashes with big refactorings that you don't want to be shown in history of review.


<a id="org0cf602f"></a>

## .github/CODEOWNERS

notifications for pull requests, for feedback

path		name of owner


<a id="org7a959fb"></a>

## .github/SECURITY.md

Security Policy

how to report


<a id="org374a816"></a>

## .gitignore

-   .gitignore - will be added to repository
-   .git/info/exclude - without adding .gitignore to repo
-   ~/.gitignore<sub>global</sub> - global for all repositories

remove ignored files from current repository:

-   git rm -r &#x2013;cached .
-   git add .
-   git commit -am 'Drop files from .gitignore'


<a id="orgd0bbf34"></a>

### python .gitignore

<https://github.com/github/gitignore/blob/main/Python.gitignore>

    # Byte-compiled / optimized / DLL files
    __pycache__/
    *.py[cod]
    *$py.class
    
    # C extensions
    *.so
    
    # Distribution / packaging
    .Python
    build/
    develop-eggs/
    dist/
    downloads/
    eggs/
    .eggs/
    lib/
    lib64/
    parts/
    sdist/
    var/
    wheels/
    share/python-wheels/
    *.egg-info/
    .installed.cfg
    *.egg
    MANIFEST
    
    # PyInstaller
    #  Usually these files are written by a python script from a template
    #  before PyInstaller builds the exe, so as to inject date/other infos into it.
    *.manifest
    *.spec
    
    # Installer logs
    pip-log.txt
    pip-delete-this-directory.txt
    
    # Unit test / coverage reports
    htmlcov/
    .tox/
    .nox/
    .coverage
    .coverage.*
    .cache
    nosetests.xml
    coverage.xml
    *.cover
    *.py,cover
    .hypothesis/
    .pytest_cache/
    cover/
    
    # Translations
    *.mo
    *.pot
    
    # Django stuff:
    *.log
    local_settings.py
    db.sqlite3
    db.sqlite3-journal
    
    # Flask stuff:
    instance/
    .webassets-cache
    
    # Scrapy stuff:
    .scrapy
    
    # Sphinx documentation
    docs/_build/
    
    # PyBuilder
    .pybuilder/
    target/
    
    # Jupyter Notebook
    .ipynb_checkpoints
    
    # IPython
    profile_default/
    ipython_config.py
    
    # pyenv
    #   For a library or package, you might want to ignore these files since the code is
    #   intended to run in multiple environments; otherwise, check them in:
    # .python-version
    
    # pipenv
    #   According to pypa/pipenv#598, it is recommended to include Pipfile.lock in version control.
    #   However, in case of collaboration, if having platform-specific dependencies or dependencies
    #   having no cross-platform support, pipenv may install dependencies that don't work, or not
    #   install all needed dependencies.
    #Pipfile.lock
    
    # poetry
    #   Similar to Pipfile.lock, it is generally recommended to include poetry.lock in version control.
    #   This is especially recommended for binary packages to ensure reproducibility, and is more
    #   commonly ignored for libraries.
    #   https://python-poetry.org/docs/basic-usage/#commit-your-poetrylock-file-to-version-control
    #poetry.lock
    
    # pdm
    #   Similar to Pipfile.lock, it is generally recommended to include pdm.lock in version control.
    #pdm.lock
    #   pdm stores project-wide configurations in .pdm.toml, but it is recommended to not include it
    #   in version control.
    #   https://pdm.fming.dev/latest/usage/project/#working-with-version-control
    .pdm.toml
    .pdm-python
    .pdm-build/
    
    # PEP 582; used by e.g. github.com/David-OConnor/pyflow and github.com/pdm-project/pdm
    __pypackages__/
    
    # Celery stuff
    celerybeat-schedule
    celerybeat.pid
    
    # SageMath parsed files
    *.sage.py
    
    # Environments
    .env
    .venv
    env/
    venv/
    ENV/
    env.bak/
    venv.bak/
    
    # Spyder project settings
    .spyderproject
    .spyproject
    
    # Rope project settings
    .ropeproject
    
    # mkdocs documentation
    /site
    
    # mypy
    .mypy_cache/
    .dmypy.json
    dmypy.json
    
    # Pyre type checker
    .pyre/
    
    # pytype static type analyzer
    .pytype/
    
    # Cython debug symbols
    cython_debug/
    
    # PyCharm
    #  JetBrains specific template is maintained in a separate JetBrains.gitignore that can
    #  be found at https://github.com/github/gitignore/blob/main/Global/JetBrains.gitignore
    #  and can be added to the global gitignore or merged into this file.  For a more nuclear
    #  option (not recommended) you can uncomment the following to ignore the entire idea folder.
    #.idea/


<a id="orgd6b555d"></a>

## TODO .gitlab-ci.yml

obsolate?


<a id="org980098e"></a>

# Github search

<https://github.com/search/advanced>
**file**

-   filename:my<sub>filename.txt</sub> or "path:\*\*/your-file-name" or "path:your-file-name"

**stars**

-   cats stars:>1000 matches repositories with the word "cats" that have more than 1000 stars.

**filesize**

-   cats size:<10000 matches code with the word "cats" in files that are smaller than 10 KB.

**dates**

-   cats created:>2016-04-29 matches issues with the word "cats" that were created after April 29, 2016.

**label**

-   build label:"bug fix"

**issues**

-   is:issue assignee:@me matches issues assigned to the person viewing the results

exclude:

-   -org:github - not in repositories in the GitHub organization.
-   -language:javascript
-   hello NOT world matches repositories that have the word "hello" but not the word "world."

**in file**

-   path:\*.ipynb word
-   content:\*.py language:Python symbol:GigaChat-Pro


<a id="org3252fe4"></a>

## links

<https://docs.github.com/en/search-github/github-code-search/understanding-github-code-search-syntax>


<a id="org6bc10b2"></a>

# install git

-   git config &#x2013;global user.email "<larry@gentoo.org>"
-   git config &#x2013;global user.name "Larry the cow"
-   git config &#x2013;global core.editor emacs
-   git init
-   git add .
-   git commit


<a id="org148de59"></a>

# Global settings: Author identity unknown, proxy


<a id="orga4d5292"></a>

## global config files, Anonymous

.git/config [user] section:

-   git config user.email ""
-   git config user.name "(none)"

~/.gitconfig
git config &#x2013;global &#x2013;list
git config &#x2013;list    - repository config


<a id="orgfa3abd0"></a>

## proxy

git supported protocols:

-   http: git clone <http://domain.com/dir/repository.git>
-   https: git clone <https://domain.com/dir/repository.git>
-   git: git clone git://domain.com/dir/repository.git
-   git over ssh: git clone git+ssh://domain.com/dir/repository.git

set proxy:

    git config --global http.proxy 'socks5://127.0.0.1:1081' # for http protocol  http://proxyuser:proxypwd@proxy.server.com:8080
    git config --global ssh.gitproxy /path/to/bin/git-proxy.sh # for git protocol

/path/to/bin/git-proxy.sh where $1 and $2 is remote host and port:

    nc -x 127.0.0.1:1081 $1 $2

git config &#x2013;list # should look like this:

    http.proxy=socks5://127.0.0.1:1081
    core.gitproxy=/home/user/git-proxy.sh

core.gitproxy is not working, idk why.


<a id="orge9f80ab"></a>

## ssh

Host github.com
    ServerAliveInterval 55
    ForwardAgent yes
    CheckHostIP no
    ProxyCommand nc -xlocalhost:9050 -X5 %h %p


<a id="org1ed961b"></a>

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


<a id="orgd159ac7"></a>

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

areas

-   **Working tree** - folder for the repository (tracked and untracked).
-   **staging area** (Index) - **git add** list of files with sha1 of content - tracked files.
-   **Stagging or cached** - changes that will be included in next commit. (after git add)

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


<a id="org491088f"></a>

## Pull

from remote repository instance to local one.


<a id="org2721fc4"></a>

## Push

from local to remote


<a id="org8d632fc"></a>

## Branch

<https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging>
<https://git-scm.com/book/en/v2/Git-Branching-Remote-Branches>
Branch - are local for the repository. A branch is a named pointer to a commit.

Remote-tracking branches - there are remote branches. Looks like origin/master. not stored localy. but may be checkout.

-   “Upstream Remote” - link to original repository, allowing you to fetch updates and track changes
    from the original repository.
-   upstream branch - the branch which tracking branch tracks. Always Remote-tracking branches.

local branches - looks like master. they are stored in local repository.

To have an upstream branch(tracking branches) - &#x2013;track This configuration will
tell git to show the relationship between the two branches in git status and git
branch -v. If you clone a Git repository, your local master branch is created as
a tracking branch for the master branch of the origin repository
(short:<sub>origin</sub>/master\_) by Git. Always local.

Default branch - named \_master

**Setting Upstream Tracking** - bind branch to track remote branch added as “Upstream Remote”.

-   when create new branch: git checkout -b my-local-branch origin/main
-   after creation:
    -   git branch &#x2013;set-upstream-to <upstream> <local-branch>
    -   git branch &#x2013;set-upstream-to upstream/main main-origin


<a id="org8b43dcf"></a>

## TAG

Tag - points to a commit.

Lightweight tag - without properties,  annotated tag - with additional info

Release tags - common applying of tag.


<a id="org3f48bbc"></a>

## .git/config, remote

Fetchurl, Pushurl - the location of the repository

Remote - remote repository pointer with properties e.g. URL, branches to fetch or branches to push.

Origin - default name for remote. after clone


<a id="org927adde"></a>

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


<a id="org294ab70"></a>

## cherry-pick

act of picking a commit from a branch and applying it to another.

most of this can be made with git merge


<a id="orgb72875f"></a>

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
    -   git diff HEAD = git diff - between Staging Area and HEAD commit (git diff "s" HEAD - "s"=a, HEAD=b)
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


<a id="orgd79cd2b"></a>

# GIT Branching Strategies

-   **Gitflow** - two main branches: master and develop. well for large projects with long release cycles
-   **Feature branching** - each new feature is developed on its own branch. easier to roll back changes
    if necessary. for small projects and teams.
-   **Release branching** - new branch for each release. final testing and bug fixing on the release
    branch before it is merged into the master branch for production. good option for projects with
    short release cycles.
-   **Trunk-based development** - single branch, often the master branch, feature flags to isolate new
    features until they are ready for release. move quickly and frequently release updates. requires a
    high level of discipline. challenging to maintain backward compatibility with older releases.


<a id="orga66665a"></a>

# branches

switch

-   git switch branch name

create

-   git branch name	# create a branch from the current branch, do not switch to it
-   git branch <name> <hash>    - <hash> is optional to which the branch pointer original points
-   git checkout [[-b|-B|&#x2013;orphan] <new<sub>branch</sub>>] [<start<sub>point</sub>>] # git branch -f <branch> [<start-point>] ; git checkout <branch>
    -   git checkout -b name		# new branch and start at the start poing
    -   -B	<new-branch>			# <new-branch> is created if it doesn’t exist otherwise, it is reset
-   git switch -c new-branch		# git branch <new-branch> ; git switch <new-branch>
-   git switch -c dev &#x2013;track master	# If the starting point is a local branch, you can force the tracking

delete

-   git branch -d testing     - delete local branch
-   git branch -d -r origin/dev origin/stage origin/prod # delete  remote-tracking branches.
-   git push [remote] &#x2013;delete [branch]        - delete branch in a remote repository

list

-   get branch -r 	# remote branches (red)
-   git branch		# show local branches (green with \* is current)
-   git branch -a      - lists all branches including the remote branches
-   git branch -r      - lists branches in the remote repositories
-   git branch -v		- info of tracking branches
-   git remote show origin     - show all remote and tracking branches for origin
-   git branch -vv        - to see local tracking branches.
-   git branch &#x2013;merged/&#x2013;no-merged [commit]	# Only list branches whose tips are reachable

other

-   git branch -D name	# delete a local copy of a branch.
-   git checkout -b develop      -
-   &#x2013;orphan		- no parents, totally disconnected. no commits before first

-   \# tracking branches
-   git checkout -b newbranch origin/newbranch - setup a tracking branch called newbrach which tracks origin/newbranch
-   git branch [new<sub>branch</sub>] origin/master

-   git checkout &#x2013;track origin/serverfix   - create local serverfix branch tracking remote one if remote exist.
    -   git checkout serverfix   - the same
-   git branch &#x2013;unset-upstream 		# Remove a current tracking relationship
-   git push -u origin feature 		# Link a branch to an upstream branch

-   git branch &#x2013;set-upstream-to 	# set remote tracking branch


<a id="org73cd385"></a>

## theory

upstream tracking branch: master ⇒ origin/master

by default both “git merge” and “git rebase” will use the upstream tracking branch

when you checkout a new branch and you are using a remote branch as the starting point, the upstream
 tracking branch will be setup automatically.


<a id="org9f72a3e"></a>

# remote branches, upstream braches and symrefs

-   git remote - show "remotes" whose branches you track
-   git branch -r - remote tracking branches (branches on remote version of local repository)
    -   \* - currently viewing
    -   origin/HEAD -> origin/master - default branch and current commit of origin. may be changed with: git remote set-head origin <remote> <branch>
    -   origin/master - remote branch
-   cat .git/config
    -   remote = origin - remote associated with branch (upstream configuration)
    -   merge = refs/heads/master - branch and HEAD on remote


<a id="org663b9f6"></a>

## kinds of symrefs

git symbolic-ref

-   .git/HEAD, pointing at somewhere under refs/heads/ hierarchy;
-   .git/refs/remotes/{some remote name}/HEAD, pointing at somewhere under refs/remotes/{the same remote name}/ hierarchy.


<a id="org532a786"></a>

# User/Password locally for repository (save password in repository)

-   git config credential.helper store
-   after next push credentials will be saved


<a id="org3147422"></a>

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


<a id="orgf17d987"></a>

# diff

per file ++&#x2013; statistic
git diff &#x2013;stat HEAD~10..HEAD


<a id="orgb5916a1"></a>

# merge

**fast-forward** is merge operation when Git moves the current branch HEAD pointer to the target local
 branch HEAD pointer, without having extra commits.

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


<a id="org58774c9"></a>

# pull request - Best Practices <a id="orgc7391b3"></a>

1.  fork
2.  create branch from **develop** new “feature-X”
    -   git checkout -b new-branch-name
3.  commit to feature-X
4.  submit a pull request on feature-X. In the PR title use tags [Fix], [Feature], [Refactor], [Release], [Hotfix]
    -   Example: [Fix] Sitemap bug solved.
    -   git pull -r origin master
    -   git push origin new-branch-name

links

-   <https://gist.github.com/mikepea/863f63d6e37281e329f8>


<a id="org718f6b0"></a>

# markdown

GitHub Flavored Markdown with a few unique writing features (один из диалектов Markdown)

-   file.md


<a id="org27c4024"></a>

## headers

    # A first-level heading
    ## A second-level heading
    ### A third-level heading


<a id="org1d07765"></a>

## code

    one word: `nano`.
    
    frase: ``Use `code` in your Markdown file.``
    
    Blocks:
    ```python
    import os
    ```


<a id="org4856829"></a>

## all

    ## The second largest heading
    ###### The smallest heading
    **This is bold text**
    > Text that is a quote
    Use `git status` to list all new or modified files that haven't yet been committed.
    ```
    git status
    git add
    git commit
    ```
    : This site was built using [GitHub Pages](https://pages.github.com/).
    : [Contribution guidelines for this project](docs/CONTRIBUTING.md)
    : ![This is an image](https://myoctocat.com/assets/images/base-octocat.svg)
    : [![name](link to image on GH)](link to your URL)
    : <https://www.markdownguide.org>
    : <fake@example.com>
    : I love supporting the **[EFF](https://eff.org)**.
    
    List:
    - George Washington
    - John Adams
    - Thomas Jefferson
    
    To order your list:
    1. James Madison
    2. James Monroe
    3. John Quincy Adams
    
    Nested Lists
    1. First list item
       - First nested list item
         - Second nested list item
    
    <!-- This content will not appear in the rendered Markdown -->
    
    
    
    | First Header  | Second Header |
    | ------------- | ------------- |
    | Content Cell  | Content Cell  |
    | Content Cell  | Content Cell  |
    
    | Command | Description |
    | --- | --- |
    | `git status` | List all *new or modified* files |
    | `git diff` | Show file differences that **haven't been** staged |
    
    
    Align:
    | Left-aligned | Center-aligned | Right-aligned |
    | :---         |     :---:      |          ---: |
    | git status   | git status     | git status    |
    | git diff     | git diff       | git diff      |


<a id="orgb862120"></a>

## links

-   Markdown rus <https://doka.guide/tools/markdown/>
-   <https://github.com/mattcone/markdown-guide/tree/master>


<a id="org45deed4"></a>

# pages

repo -> Settings ->pages

Preview:

-   <https://htmlpreview.github.io/?https://github.com/Anoncheg1/awesome-chinese/blob/main/index.html>

HTML:

-   touch .nojekyll
-   /<sub>site</sub>/index.html
    -   Settings -> pages <https://anoncheg1.github.io/awesome-chinese/>

pages

-   GitHub Pages supports two Markdown processors: kramdown and GitHub's own Markdown processor, which
    is used to render GitHub Flavored Markdown (GFM)


<a id="org992bf87"></a>

# decentralized share

/etc/conf.d/git-daemon

-   GIT<sub>USER</sub>="t"
-   GIT<sub>GROUP</sub>="t"
-   GITDAEMON<sub>OPTS</sub>="&#x2013;syslog &#x2013;export-all &#x2013;enable=receive-pack &#x2013;base-path=/home/t/share"
    -   If desired to accept git push and allow access all direct, it needs two options
        &#x2013;enable=receive-pack and &#x2013;export-all in GITDAEMON<sub>OPTS</sub>

or use sshfs to directly access folder


<a id="orgfd5388b"></a>

# branch metodology (rus)

-   Central Workflow - one master branch
-   Forking Workflow - 1) original or main branch 2) fork branch owned by another contributor which going to suggest merges to main
-   Developer Branch Workflow - one main and every developer has one or more own branches. finally forks will be merged to main.
-   Github Flow - (good for agile teams) - extension  to provide high-level repository operations for Vincent Driessen's branching model
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


<a id="org7e45ac6"></a>

## link

<https://view.genial.ly/633ae76d9e26ed001866821c/interactive-content-dst-30-bonus-mdnandgitunit8>

-   Vincent Driessen's branching model <https://nvie.com/posts/a-successful-git-branching-model/>


<a id="orgf71030f"></a>

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


<a id="org21ce5ae"></a>

# image upload

-   Just drag and drop your image from your local pc to github readme in editable mode.
-   You can create a .github/images directory in your repo and add all your assets there. Assets added
    here will be available on

    https://raw.githubusercontent.com/{github_user_name}/{repo_name}/{branch}/.github/images/{asset_name}.{asset_extension}

Link in README.md:

    ![Alt Text](/assets/{asset_name}.{asset_extension})


<a id="org7ba1b11"></a>

# EXAPLES


<a id="org526e40a"></a>

## branch

git checkout origin/another<sub>branch</sub>

git checkout master
git merge hotfix


<a id="orgb186384"></a>

## misstake

git reset &#x2013;hard

git commit &#x2013;amend -m "asd"

git reset &#x2013;hard a43e2d13
git push origin development &#x2013;force


<a id="org82a679d"></a>

## tags

    git tag 1.6.1 -m 'Release 1.6.1'

    git push origin [tagname]

    git push origin tag <tagname>

    git push --tags

    git push origin v0.1

    git tag -d 1.7.0

    git push origin :refs/tags/1.7.0

    git show 1.6.1
    git chechout <tag_name>
    git tag -n


<a id="org72d6f84"></a>

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
git diff -p &#x2013;stat > 0001-First-commit-in-the-branch.patch

git commit -m "first commit in the branch"

git format-patch origin/master

git format-patch -3 HEAD # for last 3 commits

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


<a id="org2ca74c5"></a>

# USE CASE


<a id="orgefea3d9"></a>

## see changes

-   git diff myfile.txt			#  haven't git added yet
-   git diff &#x2013;cached myfile.txt	#  already added


<a id="orge481b87"></a>

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

update branch from master

1.  chechout + merge + push
    -   git checkout b1
    -   git merge origin/master
    -   git push origin b1
2.  fetch + rebase
    -   git fetch
    -   git rebase origin/master


<a id="orgcfa6f71"></a>

## explore unknown repo

-   git branch -a  (all or -r remote)
-   git log &#x2013;graph &#x2013;oneline
-   fetch/push: git remote -v
-   authors: git shortlog &#x2013;summary &#x2013;numbered &#x2013;email &#x2013;since "2 year ago" or git shortlog -sne
-   git tag # get all tags and versons


<a id="org868bee9"></a>

## pull forced

git reset &#x2013;hard
git pull


<a id="org6a400e3"></a>

## delete all hisotry / remove all commits

-   git checkout &#x2013;orphan latest<sub>branch</sub>
-   git add -A
-   git commit -am "commit message"
-   git branch -D main
-   git branch -m main
-   git push -f origin main

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


<a id="org7756ed5"></a>

## delete commits after

-   git reset &#x2013;hard commit
-   git push origin HEAD &#x2013;force ??????
-   git push origin +HEAD:development


<a id="orgfba73c5"></a>

## check if working tree has local changes

one of:

-   git status -s
-   git diff &#x2013;name-only

git diff HEAD

git status -u - display untacked files


<a id="org9223b4c"></a>

## seach

**in files**
git grep WHAT

-   -n add line number
-   &#x2013;count print only sum occurances
-   &#x2013;heading &#x2013;break  - more readable

**in content of commits**
git log -S WHAT &#x2013;oneline


<a id="orgd1a52d3"></a>

## restore file to HEAD

git restore file


<a id="org1de20f0"></a>

## get all authors

-   git shortlog -sn &#x2013;since "2 year ago"


<a id="org2d58110"></a>

## git move between commits

-   git checkout HEAD^
-   git switch - and/or git checkout master


<a id="orgef442e5"></a>

## How to Sync Your Fork with the Original Git Repository

git remote add upstream <https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git>

    git remote add upstream https://github.com/<aUser>/<aRepo.git>
    git fetch upstream
    git checkout master
    git merge upstream/master


<a id="orgdd2ab8c"></a>

## replace remote history with local


<a id="orgffd57a8"></a>

## clone single branch and tags

    git clone --single-branch --branch main https://github.com/username/repository.git
    cd repository
    git fetch --tags


<a id="orge9ed481"></a>

## make fork with single main and sync tags

    git remote add upstream https://github.com/ORIGINAL-USERNAME/ORIGINAL-REPOSITORY.git
    git fetch upstream --tags
    git push origin --tags


<a id="orge4462e8"></a>

## tracking branch

    git checkout main
    git branch -c main main-origin
    git push origin main-origin
    git remote add upstream https://github.com/ORIGINAL-USERNAME/ORIGINAL-REPOSITORY.git
    git fetch upstream (may be not needed)
    git ls-remote --heads upstream
    git branch -u upstream/main main-origin
    git branch -vv


<a id="orgd5316eb"></a>

## adding modifications at old commit

Approach: old to new “stash apply”.

    git checkout -b old-branch 9578c2597e2d88b6f0b304b5a05864fd613ddcc1
    # made changed to old-branch
    git stash
    git checkout -b merge-branch main
    git stash apply
    git merge old-branch
    # resolve conficts


<a id="org69e31dc"></a>

## patch creation and applying

.patch file consist of:

-   Header. If a line starts with a space, Git will treat it as a continuation of the previous line,
    rather than a new line. This is a common convention in email and other text formats, where a line
    starting with a space indicates that it's a continuation of the previous line.
-   Diffs with one or more hunks.
-   Trailer or Footer, may have Signed-off-by line.

    --
    2.45.2

Creation:

    commit and "git format-patch -1 HEAD" OR "git diff --stat -p > patch.patch"

Applying patch:

    git apply --stat a_file.patch
    git apply --check a_file.patch # dry run
    git apply a_file.patch

Header.


<a id="orgc2fb484"></a>

# WORKFLOWS


<a id="org5854b14"></a>

## Merge changes in a big project

Steps:

1.  Create a new dev branch
2.  Do your work on local dev branch
3.  Push dev branch from your local to central git repository
4.  Once your work is done, pull changes from master
    
    -   There is a race condition here, just as in CVS and Bazaar: if your mirror is not up-to-date
    
    because another developer has pushed since you last updated, your push will fail.
5.  merge dev branch to the master
6.  push changes
7.  Finally, delete the dev branch from both local and central git repository

Commands:

1.  git checkout -b my<sub>branch</sub>
2.  git commit -m " "
3.  git push &#x2013;set-upstream origin my<sub>branch</sub>
4.  git checkout development
5.  git pull
6.  git merge my<sub>branch</sub>
7.  git push
8.  git branch -d dev
9.  git branch -d -r origin/dev

If the push fails because someone pushed since your last git pull, rebase on the latest master and push again:

1.  git pull &#x2013;rebase
2.  git push

<https://www.emacswiki.org/emacs/GitForEmacsDevs>


<a id="orgaf1dac4"></a>

## Back-porting Changes from Master to the Release Branch

To do this, use the cherry-pick method:

1.  First use the git log command to find the commit you are looking for.
2.  Then switch to the release branch, update it, and do the cherry-pick:
3.  git pull
4.  git checkout release-25  # make sure you have the release branch checked-out
5.  git cherry-pick -xe COMMIT
6.  git show # Finally, review your back-port and push:
7.  git push


<a id="orgd13ca4a"></a>

# join commits together, merge commits, squash commits, Squash commits into one

merge two last commits together:

    git rebase --interactive HEAD~2

or

    git merge --squash bigix # Takes all commits from the bugfix branch and groups it for a 1 commit with your current branch.

merge in history:

    : git rebase -i <commit_hash> # after which others will be squashed
    select commits that will be squashed

; git push &#x2013;force-with-lease


<a id="orga507f4f"></a>

# humor

when the Internet connection lost: "Looks like something went wrong!"


<a id="orgb47364b"></a>

# Troubleshooting


<a id="org8b29292"></a>

## You have divergent branches and need to specify how to reconcile them.

-   There is a merge conflict, you should one of:
    -   git merge or git pull &#x2013;no-ff # create merge
    -   git rebase or git pull &#x2013;rebase # temporarily removes commits from our local branch and do fast-forward

-   **pull.rebase false:** Merge. This is the default setting. **git fetch** + **git merge** for pull
    
    -   When You're working on a team and need to preserve the commit history, including merge
    
    commits. with many merges and conflicts.
    
    -   This creates a new merge commit that combines the histories of both branches.
    -   If there are conflicts, you'll need to resolve them manually, then commit the merge.
    -   steps:
        -   git config pull.rebase false
        -   git pull origin main
-   **pull.rebase true:** **git fetch** + **git rebase**. This means that your local changes will be
    replayed on top of the remote changes, creating a linear history with no merge commits. But
    requires a force push to update the remote branch.
    -   Rewrites the commit history, which can cause problems if you've already shared your changes with others.
    -   May lose the context of merge commits, which can make it harder to understand the commit history.
    -   steps:
        -   git config pull.rebase true
        -   git pull &#x2013;rebase origin main
        -   git push origin main &#x2013;force
-   **pull.ff only:** This configuration tells git pull to only perform fast-forward merges, which means
    that the local branch will be updated only if it can be fast-forwarded to the remote branch. If
    there are any divergent changes, git pull will fail and you will need to resolve the conflicts
    manually.
    -   However, this will result in an error if a fast-forward is not possible, as indicated by the
        message fatal: Not possible to fast-forward, aborting
    -   steps: git config pull.ff only

you can always set this configuration per-branch or per-repository, depending on your specific needs.


<a id="org0fa012f"></a>

### Merge strategy:

    # Fetch the latest changes from the remote repository
    git fetch origin
    
    # Pull and merge the remote changes into your local branch
    git pull origin main
    
    # If there are conflicts, resolve them and commit the merge
    git add <conflicted-file>
    git merge --continue
    
    # Push the updated branch to the remote repository
    git push origin main


<a id="org5158a43"></a>

### Rebase strategy

    # Fetch the latest changes from the remote repository
    git fetch origin
    
    # Rebase your local changes on top of the remote branch
    git rebase origin/main
    
    # Resolve any conflicts during the rebase
    git add <conflicted-file>
    git rebase --continue
    
    # Force push the updated branch to the remote repository
    git push origin main --force


<a id="org37da08a"></a>

## Your branch and 'origin/main' have diverged

Git think it's unrelated histories.

    ---a---b---main
            \      \
              x x x x   diverged, cannot be merged anymore
              \      \
        ---?---?---?---c(origin/main)

And finally, the simple resolution is: git reset &#x2013;hard origin/main, if you don't care the local changes, otherwise you will lost all your work.

Or try

    git pull --depth=2.


<a id="org9f2fcb3"></a>

## bare clone

"error: src refspec refs/heads/master does not match any" or "from the remote, but no such ref was fetched"


<a id="org340fa76"></a>

## shallow update not allowed

If your repository was cloned with the &#x2013;shallow option, it only includes a limited number of
 commits, which can cause issues when pushing to a new remote. Solution:

    git fetch --unshallow


<a id="orga3ca927"></a>

# status badge

<https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/adding-a-workflow-status-badge>

![img](https://github.com/OWNER/REPOSITORY/actions/workflows/WORKFLOW-FILE/badge.svg)

    ![example workflow](https://github.com/github/docs/actions/workflows/main.yml/badge.svg)

select branch:

    ![example branch parameter](https://github.com/github/docs/actions/workflows/main.yml/badge.svg?branch=feature-1)

event:

    ![example event parameter](https://github.com/github/docs/actions/workflows/main.yml/badge.svg?event=push)
    ![example event parameter](https://github.com/github/docs/actions/workflows/main.yml/badge.svg?event=release)


<a id="orgb0076d4"></a>

# python bots

-   python/miss-islington
-   python/bedevere
-   python/the-knights-who-say-ni


<a id="org511fb48"></a>

# <https://jonas.github.io/tig/>

-   **tig log    [options] [revisions] [&#x2013;] [paths]:** .
-   **tig show   [options] [revisions] [&#x2013;] [paths]:** Open diff view using the given git-show(1) options.
-   **tig reflog [options] [revisions]:** .
-   **tig blame  [options] [rev] [&#x2013;] path:** given file annotated by commits
-   **tig grep   [options] [pattern]:** .
-   **tig refs   [options]:** .
-   **tig stash  [options]:** 

-   **tig status:** .
-   **tig <:** .
-   **tig +N:** show +2 = +1 commit from HEAD


<a id="org4f36a96"></a>

## Keybindings

View Switching

-   m Switch to main view.
-   d Switch to diff view.
-   l Switch to log view.
-   p Switch to pager view.
-   t Switch to (directory) tree view.
-   f Switch to (file) blob view.
-   g Switch to grep view.
-   b Switch to blame view.
-   r Switch to refs view.
-   y Switch to stash view.
-   h Switch to help view
-   s Switch to status view
-   c Switch to stage view


<a id="orgb514d55"></a>

# Git local server and git init &#x2013;bare

-   mkdir website.git
-   git init &#x2013;bare

equal:

-   git clone ssh://user@git.example.com:/srv/git/my<sub>project</sub>
-   git clone user@git.example.com:/srv/git/my<sub>project.git</sub>
-   git clone user@git.example.com:/srv/git/my<sub>project</sub> ./my<sub>project</sub>
-   git remote add origin user@git.example.com:/srv/git/my<sub>project.git</sub>

&#x2013;bare - no working tree, repository is special

-   &#x2013;share - Make the repository group-writable g+sx

to clone local bare folder:

1.  git clone &#x2013;local proj-py.git # will crate proj-py folder
2.  touch .gitignore # create first commit to have branch
3.  git add .
4.  git commit -m "init"
5.  git push

By convention, bare repository directory names end with the suffix .git.

-   If a user SSHs into a server and has write access to the /srv/git/my<sub>project.git</sub> directory, they
    will also automatically have push access.
-   git init &#x2013;bare -shared - add group write permissions to a repository properly

The &#x2013;local option is not necessary when cloning a local repository, as Git will automatically use
 hard links to share the object database between the two repositories.

the 'master' branch is not created automatically when you initialize a Git repository. It's created
 after you make your first commit. to solve this:


<a id="orga7bdf67"></a>

# migrate to codeberg

<https://dontreinventbicycle.com/github-to-codeberg-howto.html>

1.  create repository with same name.
2.  git remote set-url origin git@codeberg.org:username/repository.git
3.  git push -u origin main


<a id="orgab82915"></a>

# CGIT - wtf is this?

**How to find git clone link?**

-   It is common known: git://site/repo


<a id="org30575c9"></a>

# Github Models

<https://docs.github.com/en/github-models>


<a id="org9b85cf0"></a>

## Rate limits

Low

-   Requests per minute 	15
-   Requests per day 	150

High

-   Requests per minute 	10
-   Requests per day 	50

Tokens per request: 8000 in, 4000 out


<a id="orgb3e0725"></a>

## models

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">Meta-Llama-3-70B-Instruct</td>
<td class="org-left">70-billion</td>
<td class="org-left">8k input · 4k output</td>
</tr>


<tr>
<td class="org-left">"Mistral-large"</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">33k input · 4k output</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>


<a id="org679926d"></a>

## usage Meta-Llama-3-70B-Instruct

export GITHUB<sub>TOKEN</sub>="<your-github-token-goes-here>"

import ModelClient from "@azure-rest/ai-inference";
import { AzureKeyCredential } from "@azure/core-auth";

const token= process.env["GITHUB<sub>TOKEN</sub>"];
const endpoint = "<https://models.inference.ai.azure.com>";
const modelName = "Meta-Llama-3-70B-Instruct";

export async function main() {

const client = new ModelClient(
  endpoint,
  new AzureKeyCredential(token),
);

const response = await client.path("/chat/completions").post({
  body: {
    messages: [
      { role: "system", content: "You are a helpful assistant." },
      { role: "user", content: "What is the capital of France?" },
      { role: "assistant", content: "The capital of France is Paris." },
      { role: "user", content: "What about Spain?" },
    ],
    model: modelName,
  }


<a id="org6694874"></a>

## usage with curl

    curl -X POST "https://models.inference.ai.azure.com/chat/completions" \
        -H "Content-Type: application/json" \
        -H "Authorization: Bearer $GITHUB_TOKEN" \
        -d '{
            "messages": [
                {
                    "role": "system",
                    "content": ""
                },
                {
                    "role": "user",
                    "content": "Can you explain the basics of machine learning?"
                }
            ],
            "model": "Mistral-large",
            "temperature": 0.8,
            "max_tokens": 2048,
            "top_p": 0.1
        }'


<a id="org509cd3a"></a>

# Copilot Free

vscode:extension/GitHub.copilot?referrer=docs-copilot-setup


<a id="org2cd10de"></a>

## What’s included

-   2,000 intelligent code completions a month. Get context-aware code suggestions that draw
    context from your GitHub projects  and VS Code workspace.
-   50 Copilot Chat messages a month. Ask Copilot for help understanding code, refactoring something, or debugging an issue.
-   Choose your AI model. Pick between Claude 3.5 Sonnet or OpenAI GPT-4o.
-   Make changes to multiple files with Copilot Edits. Tackle changes across multiple files with Copilot Edits.
-   Support for the Copilot Extensions ecosystem. Access third-party agents designed for tasks such
    as querying Stack Overflow or searching the web with Perplexity.
-   Choose where you build. Enjoy support in VS Code and across GitHub.


<a id="orgd6f340a"></a>

## VSCODE:

-   “Use AI Features with Copilot for Free&#x2026;” - unified GitHub Copilot extension (installed by default)
-   Sign in to Copilot

<https://code.visualstudio.com/docs/copilot/setup>

GitHub Copilot: This is the official GitHub Copilot extension for VSCode

-   <https://plugins.jetbrains.com/plugin/17718-github-copilot>

Copilot Extension: This extension provides additional features and settings for GitHub Copilot, such
 as customizable keyboard shortcuts, code snippet management, and more.

third-party extensions that integrate with GitHub Copilot include:

-   TabNine: This extension provides AI-powered code completion and code suggestions, and can be used
    in conjunction with GitHub Copilot.
-   Kite: This extension offers AI-powered code completion, code suggestions, and code review, and can
    be used with GitHub Copilot.
-   Codeium: This extension provides AI-powered code completion, code suggestions, and code review,
    and can be used with GitHub Copilot.


<a id="orgf20abe9"></a>

## build own:

-   <https://github.com/features/copilot/extensions#resources>
-   <https://github.com/copilot-extensions/skillset-example>

approaches:

-   skillsets approach
-   traditional agent


<a id="org0d34ed5"></a>

# Git Large File Storage (LFS)

<https://github.com/git-lfs/git-lfs/wiki/Tutorial>

to test if installed:

    git lfs install

    git lfs track '*.bin'

List tracked patterns (from .gitattributes):

    git lfs track

List tracked files:

    git lfs ls-files

Maximum file size for GitHub Free: 2 GB


<a id="orge724d2f"></a>

## TODO without git

SSH version:

    #!/usr/bin/env bash
    
    PROJECT="${1}" # your-company/or-repo/whatever
    FILEPATH="${2}" # foo/bar.tar.gz
    REF="${3:-master}" # branch
    SSHID="${4:-$HOME/.ssh/ecdsa_id}" # like $HOME/.ssh/mycompany
    
    OID="$(set -o pipefail; curl -fSL -H "PRIVATE-TOKEN: ${GITLAB_TOKEN}" "https://gitlab.com/api/v4/projects/${PROJECT//\//%2F}/repository/files/${FILEPATH//\//%2F}/raw?ref=${REF}" -o - | grep '^oid' | cut -d: -f2)"
    AUTH="$(set -o pipefail; ssh -o IdentitiesOnly=yes -o IdentityFile="${SSHID}" git@gitlab.com git-lfs-authenticate "${PROJECT}.git" download | jq -er '.header.Authorization')"
    mkdir -p "${FILEPATH%%/*}"
    curl -H "Authorization: $AUTH" "https://gitlab.com/${PROJECT}.git/gitlab-lfs/objects/${OID}" -o "${FILEPATH}"
    file "${FILEPATH}"

HTTP version:

    #!/usr/bin/env bash
    
    PROJECT="${1}" # your-company/or-repo/whatever
    FILEPATH="${2}" # foo/bar.tar.gz
    BRANCH="${3:-master}" # branch
    
    # get LFS file info
    IFS=$'\n' LFS_OBJECT_INFO=($(curl -fsSL -H "PRIVATE-TOKEN: ${GITLAB_TOKEN}" "https://gitlab.com/api/v4/projects/${PROJECT//\//%2F}/repository/files/${FILEPATH//\//%2F}/raw?ref=${BRANCH}" -o -))
    OID="$(echo "${LFS_OBJECT_INFO[@]}" | grep -oP "oid sha256:\K[^\s]+")"
    SIZE="$(echo "${LFS_OBJECT_INFO[@]}" | grep -oP "size \K[^\s]+")"
    # request actions for given lfs objects
    LFS_OBJECT_REQUEST_JSON="$(jq -rnc --arg oid $OID --arg size $SIZE --arg ref "refs/heads/$BRANCH" '{"operation":"download","objects":[{"oid":$oid,"size":$size}],"transfers":["lfs-standalone-file","basic"],"ref":{"name": $ref }}')"
    LFS_OBJECT_ACTION_DOWNLOAD="$(set -o pipefail; curl -sSlf -H "Content-Type: application/json" -X POST -d "$JSON" "https://oauth2:${GITLAB_TOKEN}@gitlab.com/${PROJECT}.git/info/lfs/objects/batch" | jq -er '.objects[0].actions.download')"
    AUTH="$(echo "$LFS_OBJECT_ACTION_DOWNLOAD" | jq -er '.header.Authorization')"
    DOWNLOAD_URL="$(echo "$LFS_OBJECT_ACTION_DOWNLOAD" | jq -er '.href')"
    mkdir -p "${FILEPATH%%/*}"
    curl -H "Authorization: ${AUTH}" "${DOWNLOAD_URL}" -o "${FILEPATH}"


<a id="org2be487e"></a>

## Alternatives

-   git-annex
-   git-bigfiles
-   git-fat
-   git-media
-   git-bigstore
-   git-sym

