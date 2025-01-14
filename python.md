
# Table of Contents

1.  [Key questions:](#org9cccbc4)
2.  [most common structures](#org27f512d)
    1.  [json](#orgc3f5ea0)
    2.  [remove old <span class="underline"><span class="underline">pycache</span></span>](#org630d8b7)
    3.  [sliced windows](#orgc54fa56)
    4.  [compare row to itself](#org1ee0792)
    5.  [group elements in chunks from list](#org5a1d3b8)
    6.  [flatten list](#orgd72ff13)
    7.  [count occurances of intems in a list](#orgdcdbbcb)
    8.  [dot notation access](#org20bb48b)
        1.  [SimpleNamespace](#org5e8dfd0)
        2.  [dataclass](#org1da7078)
    9.  [fast lookup in ranges](#orgc7fbadc)
    10. [time of execution](#orgdf13d32)
    11. [call one functions several times](#orgf1cb6c1)
    12. [prepare message for logging as like print](#org2f2794f)
    13. [group dictionaries in list](#org556d1d7)
    14. [ModuleNotFoundError: No module named](#org762311d)
3.  [tools 2022 pypi](#org6ae1b8e)
    1.  [web frameworks](#org8b53617)
    2.  [additional libraries](#org50ec796)
    3.  [machine learning frameworks](#org5a6d3c3)
    4.  [cloud platforms do you use? \*This question is required.](#org56b65c0)
    5.  [ORM(s) do you use together with Python, if any? \*This question is required.](#orgf333aeb)
    6.  [Big Data tool(s) do you use, if any?  \*This question is required.](#org195f483)
    7.  [Continuous Integration (CI) system(s) do you regularly use? \*This question is required.](#orgfe27eae)
    8.  [configuration management tools do you use, if any? \*This question is required.](#orgdf757ce)
    9.  [documentation tool do you use?  \*This question is required.](#org420d6ee)
    10. [IDE features](#orge5f00c5)
    11. [isolate Python environments between projects? \*This question is required.](#org2c14e38)
    12. [tools related to Python packaging do you use directly?  \*This question is required.](#org1c03d04)
    13. [application dependency management? \*This question is required.](#org8da5527)
    14. [automated services to update the versions of application dependencies? \*This question is required.](#org4a8e032)
    15. [installing packages? \*This question is required.](#org5d2300b)
    16. [tool(s) do you use to develop Python applications? \*This question is required.](#org43b5fbb)
    17. [job role(s)? \*This question is required.](#org5fa89a9)
4.  [tools 2024](#org5feda2d)
5.  [install](#org11c9ad0)
    1.  [debian](#org286a53c)
    2.  [issues](#orgf94ab4b)
    3.  [change Python version Ubuntu & Debian](#orge73ae8b)
6.  [Python theory](#orga5236b4)
    1.  [Python [ˈpʌɪθ(ə)n] паисэн](#orge3be418)
    2.  [philosophy](#org092b8af)
    3.  [History](#org0d69ff1)
        1.  [3.0](#org32fcf5b)
    4.  [Implementations](#org4825f10)
    5.  [Bytecode:](#orgaf63638)
    6.  [terms](#orgb43bc17)
    7.  [Indentation - Отступ слева and blank lines](#orgca74588)
    8.  [mathematic](#org4a9c839)
    9.  [WSGI (Web Server Gateway Interface)(whiskey)](#orgd9bcbf6)
    10. [pythonic paradigms](#org5a6a2b9)
7.  [scripting](#org29ac1ab)
    1.  [top-level script enironment](#orgaeeb268)
    2.  [command line arguments parsing](#orgdee353f)
    3.  [python executable](#org0a89ec4)
    4.  [current dir](#org3f927fb)
    5.  [unix logger](#org32ca88f)
    6.  [How does python find packages?](#org2d1cf71)
    7.  [dist-packages and site-packages?](#org01a69db)
    8.  [file size and modification date](#org56f09ed)
    9.  [environment](#orgdfcda37)
    10. [-m mod - run library module as a script](#org50163bd)
        1.  [e.g. mymodule/\_<sub>main</sub>\_<sub>.py</sub>:](#orgdbe6eec)
8.  [Data model](#org67969ae)
    1.  [special types](#orgaca6dce)
    2.  [theory](#org250484a)
    3.  [Types build-in ](#org389c2dd)
    4.  [Truth Value Testing ](#org28a1e80)
    5.  [Shallow and deep copy operations](#orgc4931b0)
    6.  [Why Dict and set use only hashable objects?](#org2a6c0ba)
    7.  [Dict hash collisions](#org5de1136)
    8.  [links](#org2dfcb23)
9.  [typed varibles or type hints](#org8fbecdf)
    1.  [typing.Annotated and PEP-593](#org0f062b6)
        1.  [from typing import get<sub>type</sub><sub>hints</sub>](#org2d0f1fe)
        2.  [Use case: A calendar Event model, using pydantic https://github.com/pydantic/pydantic](#org2f122a5)
    2.  [function annotation](#org80111a3)
10. [Strings](#org0298f54)
    1.  [основы](#org23338ba)
        1.  [multiline](#org234ac62)
    2.  [**A formatted string literal or f-string**](#orgdfa90bc)
    3.  [**String Formatting Operator**](#org67053a2)
    4.  [string literal prefixes](#org4a842c1)
    5.  [raw strings, Unicode, formatted](#orgb15caa8)
    6.  [Efficient String Concatenation](#orgfdd640a)
    7.  [byte string](#org7251e6c)
11. [Classes](#org4e11ceb)
    1.  [basic](#org13b2abd)
    2.  [Special Attributes](#orgb758ec7)
    3.  [inheritance](#orgc8b89d3)
        1.  [Constructor](#orga257e6c)
        2.  [Subclassing:](#orga9e29d4)
        3.  [built-in functions that work with inheritance:](#orgfcce632)
        4.  [example](#org8c6f76f)
        5.  [Multiple inheritance - left-to-right](#org4da345f)
        6.  [Abstract class (ABC - abstract base class)](#orgbda01f1)
        7.  [Virtual sublasses](#org2b1dc56)
        8.  [calling parent class constructor](#org0c8eaf6)
    4.  [Getters and setters ](#org7f10d04)
    5.  [Polymorphism [pɔlɪˈmɔːfɪzm](#orgf3ec65f)
    6.  [Protocols or emulation](#org8847780)
    7.  [private and protected](#org349de35)
    8.  [object](#orgb9bb205)
    9.  [Singleton](#org6f41c0c)
        1.  [example](#org423935b)
        2.  [шаблон Monostate](#org7508e19)
    10. [anonumous class](#org002abb8)
        1.  [1](#org9067d45)
    11. [replace method](#org73d45d1)
12. [modules and packages](#org42b8683)
    1.  [module special  attributes (Module level "dunders") [-ʌndə(ɹ)]](#orga2c1ad1)
13. [functions](#org95382a1)
    1.  [by value or by reference](#org1481040)
    2.  [Types of Аргументы функции](#org87fd0d4)
    3.  [example](#org89a68f4)
    4.  [arguments, anonymous-lambda, global variables](#orgf5b15f4)
    5.  [attributes](#org22fc613)
    6.  [function decorators](#orga94d161)
    7.  [build-in](#orgcca5587)
    8.  [Closure](#orgbaddc2c)
    9.  [overloading](#orgdfd7e05)
14. [asterisk(\*)](#org9036b61)
15. [with](#org569d503)
    1.  [Context manager class TEMPLATE](#orgcf54cc8)
16. [Operators and control structures](#org5cfa389)
    1.  [basic](#org348e348)
    2.  [Operator Precedence (Приоритет) *ˈpresədəns*](#orgc249dc3)
    3.  [value unpacking](#orgcfad475)
    4.  [if, loops](#orgb934051)
    5.  [match 3.10](#orgeadb3cf)
    6.  [Slicing Sequence](#org83bb93c)
17. [Traverse or iteration over containers](#orgf28cf49)
    1.  [iterator object ](#org419d187)
    2.  [iterate dictionary](#orgfb3495e)
18. [The Language Reference](#org97932b9)
    1.  [yield and generator expression ](#org9640346)
    2.  [yield from](#org2da279b)
    3.  [ex](#org45949ca)
    4.  [function decorator](#org56fac90)
    5.  [class decorator](#org79cd6fd)
    6.  [lines](#org6f709db)
    7.  [Indentation](#orga6de273)
    8.  [identifier [aɪˈdentɪfaɪər] or names](#orgf4c5ac3)
    9.  [Keywords Exactly as written here:](#org381a388)
    10. [Numeric literals](#orgcdaf8dc)
        1.  [integers](#org46dd44e)
        2.  [float](#org0fbc938)
        3.  [Imaginary literals](#orgcb712f6)
    11. [Docstring and comments](#org3d18336)
    12. [Simple statements](#org97aaeb3)
    13. [call external process](#orgfbcddb8)
        1.  [ex](#orgb5236f9)
        2.  [ex: call shell command and get stdout stderr and check return status](#org27ce799)
        3.  [links](#orgcc29d7c)
    14. [Timeout on subprocess readline in Python](#orgaf5a546)
        1.  [1](#orgd023cd4)
        2.  [2](#org3a7212c)
        3.  [3](#org3745ec2)
19. [The Python Standard Library](#org942916c)
    1.  [Major libs:](#org285c660)
    2.  [regex - import re, regular](#org1ff2106)
        1.  [methods](#orgdf54ed4)
        2.  [sub example](#org79985cc)
        3.  [get string between substring](#org469b96a)
        4.  [reference](#orgade7b0e)
        5.  [Frequent Sequences:](#orgd9f6ec3)
        6.  [(&#x2026;) - capture to group.](#org8e440a7)
        7.  [Zero-width assertions or lookarounds](#org1ba8bd2)
    3.  [datetime](#org8652a99)
        1.  [datetime to date](#org0765ead)
        2.  [date to datetime](#org923066d)
        3.  [current time](#orgc1dd881)
    4.  [file object](#org23d3e6c)
    5.  [importlib](#org9197941)
    6.  [pprint](#org7c100fd)
20. [exceptions handling](#org259195b)
    1.  [syntax](#orgfad9f89)
    2.  [output](#org608fa5b)
    3.  [hierarchy](#orgbeb5451)
    4.  [explanation](#org19f6e6c)
    5.  [traceback](#orgc0eaec3)
    6.  [simple exception](#orgbae7d79)
    7.  [examples](#org0a9c7f6)
21. [Logging](#orgaa7684e)
    1.  [ways to log](#org009c82a)
    2.  [terms](#orgd45eb7b)
    3.  [getLogger()](#orge38edc0)
    4.  [stderror](#orgf3f6c65)
    5.  [inspection](#orgb7a0f77)
    6.  [levels](#org3493001)
22. [Collections](#org565e99d)
    1.  [collections.Counter() - dict subclass for counting hashable objects](#org961419f)
    2.  [time complexity](#org4c652f5)
23. [Conventions](#orgb28fb91)
    1.  [code style, indentation, naming](#orga022015)
    2.  [1/2 underscore](#org22e7433)
    3.  [Whitespace in Expressions and Statements](#org8216f92)
    4.  [naming](#org2b9a64a)
    5.  [docstrings](#orgbef3dbb)
        1.  [ex. simple](#orgc9454ac)
24. [Concurrency](#org144e818)
    1.  [select right API](#orgb924214)
        1.  [asyncio vs threading](#org09a6478)
    2.  [Process](#org3f51e55)
    3.  [Pool of processes](#orgc0f168b)
        1.  [1](#org4f0d3f2)
        2.  [2](#org34fcd85)
    4.  [threading](#org4b3a790)
        1.  [examples](#orgbfdf384)
        2.  [syncronization](#orga067367)
    5.  [multiprocessing](#org6a8022e)
    6.  [example multiprocess, Threads, othe thread](#org6033249)
25. [асинхронного программирования (asyncio, async, await)](#org476def7)
    1.  [Limitations](#org73f04fd)
    2.  [Best practices](#org57f9907)
    3.  [asyncio theory](#org85dc919)
    4.  [terms:](#org83821e0)
    5.  [async and await syntax https://peps.python.org/pep-0492/](#org0dd3ba0)
    6.  [hight-level API - asyncio.run](#orgea66d8c)
    7.  [hight-level API - asyncio.Runner](#org467e1a3)
    8.  [low-level API - get<sub>running</sub><sub>loop</sub> & new<sub>event</sub><sub>loop</sub> & run<sub>until</sub><sub>complete</sub>](#org256345c)
    9.  [async with](#org5e079db)
    10. [async for](#org2042e49)
    11. [Asynchronous Generators](#org79e50cc)
    12. [Troubleshooting](#org6137122)
    13. [links](#org439ec08)
26. [Monkey patch (modification at runtile) Reflective or meta programming](#org5f567aa)
    1.  [theory](#org72251f8)
    2.  [basic example](#org7862ed5)
    3.  [replace method of class instance](#org0794732)
        1.  [Monkey patch](#org35ae909)
        2.  [types.MethodType](#org25ed045)
        3.  [Subclassing](#org1549f4a)
    4.  [detect event of variable changed](#orgb50d7b2)
    5.  [inspect.getmembers() vs <span class="underline"><span class="underline">dict</span></span>.items() vs dir()](#org770f64a)
    6.  [ex replace function](#org1de4ef4)
    7.  [ex replace method of class](#orgdd0d230)
    8.  [links](#org17bd7d8)
27. [Performance Tips](#org4d762c8)
    1.  [string](#org3d53a80)
    2.  [loop](#org84871d3)
    3.  [Avoiding dots&#x2026;](#orgd8a4241)
    4.  [avoid global variables](#org6e244c9)
    5.  [dict](#org34f8561)
28. [decorators](#org7a7946a)
    1.  [ex](#org33e9ed2)
29. [Assert](#org8286732)
30. [Debugging and Profiling](#org3ee8432)
    1.  [cProfile](#org777d1e1)
    2.  [small code measure 1](#orga8eb550)
    3.  [small code measure 2 ](#org2c140e9)
    4.  [pdb - breakpoint and code investigation](#org6c62aa4)
    5.  [pdb - .pdbrc file ](#orgd2f3f64)
    6.  [py-spy, pyinstrument](#orgb098cb3)
31. [inject](#org6107849)
    1.  [Callable](#org7c48cd7)
    2.  [links](#orgfe5363d)
32. [BUILD and PACKAGING](#orgc1694f8)
    1.  [build tools:](#org84afee7)
        1.  [hatchling](#orgdb3ec29)
        2.  [setuptools](#org4c6c59b)
        3.  [gpep517 ](#orgcb81bdc)
    2.  [toml format for pyproject.toml](#org59f686a)
        1.  [basic](#org576f666)
        2.  [integers](#org17e9f88)
        3.  [Dates and Times](#org0c9bd8c)
        4.  [array and table](#org2d256d2)
    3.  [pyproject.toml](#orga262e2c)
        1.  [[build-system]](#org42c894b)
        2.  [metadata [project] and [project.urls]](#orgcc95f74)
        3.  [[project.scripts]](#org3160f1f)
        4.  [dependencies](#org53d5415)
        5.  [minimal](#org997c393)
        6.  [example](#orgd738896)
    4.  [build](#org2b81fa8)
    5.  [distutils (old)](#orga8b336a)
    6.  [terms](#orgfa3bf8b)
    7.  [recommended](#org3d3d340)
    8.  [Upload to the package distribution service](#orgc5f70db)
        1.  [twine](#org88a972d)
        2.  [Github actions](#orgd1b180b)
    9.  [editable installs PEP660](#orge5c77c5)
    10. [PyPi project name, name normalization and other specifications](#orga29fd52)
        1.  [links](#org4d7aad6)
    11. [src layout vs flat layout](#org1e88243)
    12. [build tool, build system](#orge0d7ce9)
    13. [build from source](#org4493ae7)
        1.  [pipdeptree](#org3e0a727)
        2.  [troubles](#org7320e65)
    14. [links](#orgbce7390)
33. [setuptools - build system](#orgd8117d3)
34. [pip (package manager)](#org5c3402a)
    1.  [release steps](#orgcc5cd7d)
        1.  [links](#orgeab9d23)
    2.  [wheels](#orga067eb5)
    3.  [virtualenv](#orga6c0ef5)
    4.  [venv](#org7050e36)
    5.  [update](#orgdf7f586)
    6.  [requirements.txt](#org213b5f1)
    7.  [errors](#org43f11fd)
    8.  [cache dir](#org3ad27e2)
        1.  [links](#orga3a0029)
    9.  [hashes ](#orgf6dc3f7)
    10. [add SSL certificate](#org33d5e11)
        1.  [crt(not working)](#orgfed35dc)
        2.  [pem(not working)](#org899b8e3)
    11. [ignore SSL certificates](#org8393216)
    12. [proxy](#orgfe9119e)
    13. [https://packaging.python.org/en/latest/key\_projects/](#orgceff3c0)
    14. [ways to freeze dependencies:](#org4d643ab)
    15. [pipenv](#org117b7e4)
        1.  [Cons: hard to read Pipfile.lock file.](#org4de5657)
        2.  [steps to create project:](#orgd616a3b)
        3.  [commands](#org13bf539)
    16. [links](#org8a84d13)
35. [urllib3 and requests library](#orgd9b9f14)
    1.  [difference](#org27d39b0)
    2.  [see raw request](#org62abe0d)
        1.  [requests](#org49c0314)
        2.  [links](#orgdab8408)
    3.  [problems:](#org4687c55)
    4.  [links](#org116f9af)
36. [pdf 2 png](#orgbb846cc)
    1.  [pdf2image](#org0c9cc9e)
    2.  [Wand](#orgcebb426)
    3.  [PyMuPDF](#orgb0727de)
37. [statsmodels](#org2f677a8)
    1.  [ACF, PACF](#org530f30d)
    2.  [bar plot](#org9b4dd58)
38. [XGBoost](#org83efc78)
    1.  [usage](#org725cfc7)
    2.  [categorical columns](#org59e2767)
        1.  [Feature importance between numerical and categorical features](#org8b09cac)
    3.  [gpu support](#orge427e12)
    4.  [result value from leaf value](#org614af60)
    5.  [terms](#orgb68a493)
    6.  [xgb.DMatrix](#orga8cf371)
        1.  [LibSVM file format](#orga845c18)
    7.  [parameters](#orgeabc358)
    8.  [print important features](#orga1c2932)
    9.  [prune обрезание деревьев](#orgbdc0950)
    10. [permutation importance](#orgdf32b4e)
    11. [model to if-else](#orgd3d3a43)
    12. [Errors](#orga565b20)
        1.  [ValueError: setting an array element with a sequence.](#org81e02e0)
        2.  [label must be in [0,1] for logistic regression](#orgf655e4f)
39. [Natasha & Yargy](#org78883e3)
    1.  [yargy](#org35f4f86)
        1.  [yargy.tokenizer](#orgb03fb8d)
        2.  [rules](#orge4111e4)
        3.  [match](#org4ac2e72)
        4.  [предикаты](#org89db08c)
        5.  [нестандартные формы слова - рулетики](#org78660d1)
        6.  [ex](#orgf3a7efa)
        7.  [natasha](#org76e92d1)
        8.  [console](#orgd434a0f)
        9.  [QT console](#org5243c7a)
        10. [graphviz](#orgc3ee4d2)
        11. [IPython](#org943be6f)
40. [Stanford NER - Java](#org3946302)
    1.  [train](#org8fc5f85)
    2.  [Ttraining data](#org22c7bb0)
41. [DeepPavlov](#orga59d6df)
    1.  [Коммандная-строка](#org7516e72)
    2.  [вспомогательные классы](#org621f8b7)
    3.  [in code](#org302376b)
    4.  [installation](#orge9097ee)
    5.  [training](#orgf9a8519)
        1.  [dataset<sub>iterators</sub>](#org35ecfb4)
    6.  [NLP pipeline json config](#orgc566a3e)
        1.  [configs](#orge661e9f)
        2.  [parsing anal](#org9170b00)
        3.  [json](#org94b08e5)
        4.  [examples](#org9890eda)
    7.  [prerocessors](#org9172e03)
        1.  [tokenizers](#orge4a362f)
        2.  [Embedder [ɪmˈbede] - Deep contextualized word reprezentation](#org7f2c965)
    8.  [components](#org90363ec)
    9.  [Models](#org80bb543)
    10. [speelcheking](#orgf0cdb7f)
        1.  [Tie vocabulary](#org7ff6d22)
    11. [Classification](#orgd357269)
        1.  [bert](#orgcf21515)
        2.  [iterators](#org5217265)
    12. [NER - componen](#orgd0d4a0c)
        1.  [ner<sub>rus</sub><sub>bert</sub>](#org28ce22e)
    13. [Custom component](#orga13072e)
    14. [docker](#org0c010ad)
    15. [issues](#org1334c0c)
42. [AllenNLP](#orge7ec2dd)
43. [spaCy](#orgd2e62b4)
44. [fastText](#orgca563d4)
    1.  [install](#org212bde3)
45. [rusvectores](#org813c9a9)
46. [Natural Language Toolkit (NLTK)](#org8a0eb57)
    1.  [collocations](#org4602571)
    2.  [Association measures for collocations (measure functions)](#org438dffb)
    3.  [Taggers](#org8aa56b6)
    4.  [Корпус русского языка](#orgf820a1a)
47. [pymorphy2](#orgc622f38)
48. [linux NLP](#orgbc4630a)
    1.  [count max words in line of file](#org69b4f4e)
49. [fuzzysearch](#orgb2d9f1b)
    1.  [typesense](#org041c429)
        1.  [pip3 install typesense &#x2013;user](#org0336fba)
50. [Audio - librosa](#orgb07035e)
    1.  [generic audio characteristics](#org1f08e6b)
    2.  [load](#org5d52b67)
    3.  [the Fourier transform - spectrum](#orgee16ec2)
    4.  [spectrogram](#orgb2d1cb4)
    5.  [log-Mel spectrogram](#orge5c8421)
    6.  [distinguish emotions](#orgf051f0f)
    7.  [links](#orgf1555be)
51. [Audio](#org44e35d0)
    1.  [terms](#orgbc46014)
    2.  [theory](#org39578a5)
    3.  [The Fourier Transform (spectrum)](#org1528ff0)
    4.  [log-Mel spectrogram](#org8debd8b)
        1.  [Log - because](#org486b596)
    5.  [pyo](#orgf64873f)
    6.  [torchaudio](#org2603f14)
    7.  [ffmpeg-python](#orgf963c13)
52. [Whisper](#orgcb7f5bd)
    1.  [Byte-Pair Encoding (BPE)](#org8c9109d)
        1.  [usage](#org215d9e6)
    2.  [model.transcribe(filepath or numpy)](#org808415b)
        1.  [return](#org039450d)
    3.  [model.decode(mel, options) ](#org6a8ce27)
    4.  [no<sub>speech</sub><sub>prob</sub> and avg<sub>logprob</sub>](#org4a1e436)
    5.  [decode from whisper<sub>word</sub><sub>level</sub> 844](#org6bf660f)
    6.  [main<sub>loop</sub>](#org842e16b)
    7.  [words timestemps https://github.com/jianfch/stable-ts](#org2321aec)
        1.  [transcribe format](#org451a5d2)
    8.  [confidence score](#org3cbfad5)
    9.  [main/notebooks](#orgdaaf6cb)
    10. [links](#org1eaf3ac)
53. [NER USΕ CASES](#orgfb4d2fd)
    1.  [Spelling correction algorithms or  (spell checker) or (comparing a word to a list of words)](#orgc584344)
    2.  [fuzzy string comparision или Приближённый поиск](#org3979017)
54. [Flax and Jax](#org28e63fc)
55. [hyperparemeter optimization library **test-tube**](#org3999c45)
56. [Keras](#orgca54622)
    1.  [install](#orga4e0b5c)
    2.  [API types](#org5f5208d)
    3.  [Sequential model](#orgd7399f9)
    4.  [functional API](#orgd988d8c)
    5.  [Layers](#orgdd51876)
        1.  [types](#orgacea9c3)
        2.  [Dense](#org974d56d)
    6.  [Models](#orge3b06e1)
    7.  [Accuracy:](#orgbef4ac9)
    8.  [input shape & text prepare](#orgd0eaad3)
    9.  [ValueError: Error when checking input: expected input<sub>1</sub> to have 3 dimensions, but got array with shape](#org9b21529)
    10. [merge inputs](#org096bf77)
    11. [convolution](#orgea30d71)
    12. [character CNN](#org89a3fee)
    13. [Early stopping](#orga338015)
    14. [plot history](#orgb63b8e2)
    15. [ImageDataGenerator class](#orga003448)
    16. [CNN Rotate](#org70b72c1)
    17. [LSTM](#orgccddade)
57. [Tesseract - Optical Character Recognition](#org4441eb5)
    1.  [compilation](#org3ffb4a6)
    2.  [black and white list](#org1638399)
    3.  [notes](#org25fc09d)
    4.  [prepare](#org55568ce)
    5.  [usage](#org62109fa)
58. [FEATURE ENGEERING](#orge522b9d)
    1.  [Featuretools - Aturomatic Feature Engeering](#orgb99472e)
        1.  [variable types](#orgb1079e4)
        2.  [example one-to-many](#orgab4d589)
        3.  [example many-to-many](#org2dde341)
        4.  [oparations](#orgcdc44ea)
        5.  [aggregation primitive - across a parent-child relationship:](#org8f78d0a)
        6.  [TransformPrimitive - one or more variables from an entity to one new:](#orgb44e42c)
        7.  [create primitive](#org3840d14)
        8.  [EXAMPLE from pandas](#org142da52)
    2.  [informationsfabirc](#org0c67138)
    3.  [TPOT](#org12c22c1)
    4.  [TSFRESH (time sequence)](#org92f0455)
    5.  [ATgfe - new feature](#orgbaeb717)
59. [support libraries](#org9ea7d9a)
60. [Microsoft nni AutoML framework (stupid shut)](#org122f963)
61. [help](#org56b2b21)
    1.  [build-in help](#org654558f)
62. [IDE](#org7ba2b65)
    1.  [EPL](#org5576c7e)
    2.  [PyDev is a Python IDE for Eclipse](#org923ec53)
        1.  [features](#org7cb9114)
    3.  [Emacs](#org7e5c1b7)
        1.  [python in org mode](#org53422e2)
        2.  [Emacs](#org7edeb05)
    4.  [PyCharm](#org97364c4)
        1.  [installation:](#orga364ce4)
        2.  [keys](#orga3ec49d)
        3.  [mirrored environment in remote Docker](#orga31c9f6)
    5.  [ipython](#org9a704d8)
    6.  [geany](#org38816c8)
    7.  [BlueFish](#org559c313)
    8.  [Eric](#org54cc171)
    9.  [Google Colab](#org98fffa2)
        1.  [todo](#org6ad3584)
        2.  [initial config](#org2214be9)
        3.  [keys (checked):](#org701a790)
        4.  [keys in Internet (emacs IPython console)](#orga797f73)
        5.  [Google Colab Magics](#orga2286fd)
        6.  [install libraries and system commands](#orgbaa7d02)
        7.  [execute code from google drive](#orgdfa5cfc)
        8.  [shell](#org61fd5af)
        9.  [gcloud](#orgeeaf60a)
        10. [gcloud ssh (require billing)](#orge53cbe8)
        11. [api](#orgdecad0b)
        12. [upload and download files](#org4fc61e0)
        13. [connect ssh (restricted)](#orgc7f7c0f)
        14. [connect ssh (unrestricted)](#org4dcef4f)
        15. [Restrictions](#org898f1b5)
        16. [cons](#orgb368fff)
    10. [Eclipse Theia (IDE)](#orgcaacb99)
    11. [Atom](#org9b82bc8)
63. [Jupyter Notebook](#org1dde4dc)
    1.  [jupyter [ˈʤuːpɪtə] - акцентом на интерактивности производимых вычислений](#org46fa707)
    2.  [install](#orgb762480)
    3.  [convert **to htmp**](#org0312b4f)
    4.  [Widgets](#org9ce064f)
        1.  [install](#org0864268)
        2.  [usage](#orgc181abf)
        3.  [widget abbreviation](#org7d6f94c)
        4.  [widget return type](#org6f47453)
        5.  [Styling](#org41e25ef)
    5.  [Hotkeys:](#org8a37ff9)
    6.  [emacs (sucks)](#org84478d8)
    7.  [in Docker](#orgef94824)
    8.  [other](#org3ef2be8)
    9.  [lab](#orgc5ba0ac)
        1.  [in venv](#orgdc2250c)
        2.  [Will not respect mounted venv:](#orgd2120ce)
64. [USΕ CASES](#org082ee76)
    1.  [NET](#orgb2dbbd8)
        1.  [REST request](#org3edd79c)
        2.  [email IMAP](#org971241c)
        3.  [email DKIM](#orgba54433)
        4.  [urllib SOCKS](#orgbf18506)
    2.  [LISTS](#org2bb59e5)
        1.  [all has one value](#orgcf5971a)
        2.  [2D list to 1D dict or list](#org574dfa8)
        3.  [list to string](#org2f4e049)
        4.  [replace one with two](#orgda0ca6e)
        5.  [remove elements](#org5e4afa7)
        6.  [average](#org8918579)
        7.  [[1, -2, 3, -4, 5]](#org6e88582)
        8.  [ZIP массивов с разной длинной](#orgf728248)
        9.  [Shuffle two lists](#org799acf6)
        10. [list of dictionaries](#org7ca6307)
        11. [closest in list](#org3b0ea71)
        12. [TIMΕ SEQUENCE](#orgce511c4)
        13. [split list in chunks](#org0bfde51)
    3.  [FILES](#orgc1fca5b)
        1.  [locking](#org06ea0f5)
        2.  [Read JSON](#orgfae75d9)
        3.  [CSV](#orgd7e0bbb)
        4.  [read file](#org0474d8f)
        5.  [Export to Excell](#orgc6436a4)
        6.  [NameError: name 'A' is not defined](#org0d6b171)
        7.  [rename files (list directory)](#org0d68174)
        8.  [current directory](#org256f2ca)
    4.  [STRINGS](#org22378b4)
        1.  [String comparision](#org03dbd97)
        2.  [Remove whitespaces](#org82e36d2)
        3.  [Unicode](#orgd46a76e)
        4.  [To find all the repeating substring in a given string](#orgbb6f909)
        5.  [first substring](#org6f04355)
    5.  [DICT](#orgc4ebb47)
        1.  [del](#org125a6b2)
    6.  [argparse: command line arguments](#org241c108)
        1.  [terms](#org92786f0)
        2.  [usage](#org1224caa)
        3.  [optional positional argument](#org30bf8a6)
    7.  [way to terminate](#orgf060ec0)
    8.  [JSON](#orga37bedf)
    9.  [NN EQUAL QUANTITY FROM SAMPLES](#org4775d52)
    10. [most common ellement](#org68c6b8c)
    11. [print numpers](#org382a69f)
    12. [SCALE](#org2e6517b)
    13. [smoth](#orga18ed77)
    14. [one-hot encoding](#org954f328)
        1.  [we have [1,3] [1,2,3,4], [3,4] -> numbers](#org01ac38a)
        2.  [column of strings](#org0a9bbec)
    15. [binary encoding](#org40d5083)
    16. [map encoding](#org8763e57)
    17. [Accuracy](#orge2e757b)
    18. [garbage collect](#org58a90e3)
    19. [Class **loop for member varibles**](#org287dd09)
    20. [filter special characters](#org54f4d14)
    21. [measure time](#org9df9545)
    22. [primes in interval](#orgec4b24f)
    23. [unicode characters in interval](#orgcdebacc)
65. [Flask](#org6d0a563)
    1.  [terms](#org3320c2d)
    2.  [components](#org77cca39)
    3.  [static files and debugging console](#orga6e93b1)
        1.  [get URL](#orgaa6a57c)
        2.  [path and console ](#orgb528758)
    4.  [start, run](#orgc0ed0ea)
        1.  [start $flask run (recommended)](#org12440ab)
        2.  [start app.run()](#org605a007)
        3.  [links](#orgba588d6)
    5.  [Quart](#orgec986c2)
    6.  [GET](#org9155ebb)
        1.  [variables](#org2fe79e1)
        2.  [parameters ?key=value](#orgb94caf7)
    7.  [app.route](#org9675aa6)
    8.  [gentoo dependencies](#org27fc1f6)
    9.  [blueprints](#orgb97632f)
    10. [Hello world](#org91f0aa3)
    11. [curl](#orgc5c95c0)
    12. [response object](#orga409d20)
    13. [request object](#org38d6676)
        1.  [get all values](#org9e19ea9)
    14. [Jinja templates](#org40d3a68)
        1.  [own filters:](#org68781cd)
        2.  [links](#org0852a73)
    15. [security](#orgb4b4ae9)
    16. [my projects](#org82f0dc7)
        1.  [testing1](#orgdd71ee8)
        2.  [testing2](#orgec67212)
        3.  [file storage](#org3d0fb6d)
    17. [Flask-2.2.2 hashes ](#org3e9120e)
    18. [flask-api (bad working)](#org3a34379)
    19. [flask-restful (old)](#orgfa6f63e)
    20. [example](#org3296403)
        1.  [image](#org4a9f7a7)
    21. [swagger](#org2894921)
    22. [werkzeug](#org24be04a)
    23. [debug](#org016d1a1)
    24. [test](#orgbe0c269)
    25. [production](#org7c72f17)
    26. [vulnerabilities](#org6cf87d7)
    27. [USECASES](#orgc1d8651)
        1.  [check file exist](#org8332837)
        2.  [call POST method](#org7f01c5f)
        3.  [call GET method with arguments](#orgb67c80c)
        4.  [print headers](#orge55b19c)
        5.  [TLS server](#org52355e9)
    28. [async/await and ASGI](#orgf827604)
    29. [use HTTPS](#orga524ab6)
    30. [links](#org710a333)
66. [FastAPI](#orga33764b)
    1.  [Interactive API Documentation](#orgee8b96a)
    2.  [running with uvicorn or gunicorn](#org3e497e7)
    3.  [dependencies](#org8c6f904)
    4.  [swagger](#org2292c95)
    5.  [links](#org77bc051)
67. [Databases](#orgab50eeb)
    1.  [Database API Specification v2.0 (PEP 249). http://www.python.org/dev/peps/pep-0249/](#orga47f927)
    2.  [Groonga](#orgea64ef2)
        1.  [Basic commands:](#orgae219a3)
        2.  [python](#org8920f05)
    3.  [Oracle](#org4cbff39)
        1.  [sql](#orga72348e)
    4.  [MySQL](#org63494e2)
    5.  [Redis](#org9dd7c7c)
        1.  [timeout - connection for client to master](#org92f2cfe)
68. [SQLAlchemy - ORM](#org54c4e5b)
69. [Virtualenv](#orgb888be6)
    1.  [venv - default module](#org68f86a1)
    2.  [virtualenv](#org4355286)
    3.  [two virtaul environments](#org3f0e7dd)
70. [ldap](#org4925ff5)
71. [Containerized development](#org278ae3b)
72. [security](#orga96e02f)
73. [serialization](#org54029dd)
    1.  [pickle](#orge39d032)
74. [cython](#org7847ecd)
75. [headles browsers](#org73ad9cc)
76. [selenium](#org1822c07)
    1.  [drivers](#orga622546)
    2.  [install](#org6c0f25f)
    3.  [python installantion](#org043a669)
    4.  [python usage](#orgf817e0a)
    5.  [links](#orgb9126cd)
77. [plot in terminal](#org1a7070e)
    1.  [plotext](#org9ccdb62)
78. [xml parsing](#orge935932)
79. [pytest](#orgcbdca24)
    1.  [features](#org1af7e12)
    2.  [layout](#org07a69ce)
    3.  [usage](#org0e6636a)
    4.  [dependencies](#orge7e1cc5)
    5.  [fixtures - context for the test](#org1aec795)
    6.  [mock - monkeypatch fixture](#org569485f)
    7.  [print](#org6991e5a)
    8.  [troubleshooting](#org65be32c)
    9.  [links](#org1d61210)
80. [collection of helpers and mock objects https://github.com/simplistix/testfixtures](#org4c92495)
81. [static analysis tools:](#org81e5a54)
    1.  [security](#orgaf5d83f)
    2.  [mypy](#orgaf9b797)
        1.  [emacs fix](#org95e1c07)
        2.  [ex](#org05fba32)
        3.  [troubleshooting](#org1d66a19)
        4.  [links](#org2aecd84)
82. [release as execuable  - Pyinstaller](#org863ce50)
83. [Documentation building with Sphinx](#orga95ac2f)
84. [troubleshooting](#orgbc61f81)

-**- mode: Org; fill-column: 110; coding: utf-8; -**-
\#+TITLE Python my notes

-   build in functions <https://docs.python.org/3/library/functions.html>
-   pypi <https://pypi.org/>
-   <https://www.tutorialspoint.com/python3/python_modules.htm>
-   doc <https://docs.python.org/3/contents.html>
-   <https://docs.python.org/3/index.html>
-   software <https://github.com/vinta/awesome-python>

TODO
from os import environ as env
env.get('MYSQL<sub>PASSWORD</sub>')


<a id="org9cccbc4"></a>

# Key questions:

-   Compilation vs. Interpretation
    -   Interpreted Languages
-   Dynamic Typing vs. Static Typing
    -   Dynamic Typing
-   Passing Parameters by Value vs. By Reference
    -   Primitive Types: Passed by value, Reference Types: Passed by reference
-   Object-Oriented vs. Functional Programming vs procedural
    -   Functional: 3, OOP: 5, procedural 4
-   function overloading exist or not?
    -   does not support function overloading in the traditional sense
-   How do closures work?
    -   nested functions
-   What is the Scope of Variables?
    -   Python separate mark for (global and nonlocal)
-   Supports multiple inheritance.
    -   Support.
-   Memory Management: Manual vs. Automatic Garbage Collection
    -   gc
-   one way to solve problem or many ways to solve?
    -   one way
-   How Syntax structured with indentation or some characters?
    -   indentation
-   What paradigms supported? (e.g., imperative, declarative, procedural, functional).
-   Event-Driven Concurrency (simple) vs Thread-Based Concurrency (compex)
    -   Event-driven
-   Error Handling: return codes vs handling exception objects
    -   exception objects


<a id="org27f512d"></a>

# most common structures


<a id="orgc3f5ea0"></a>

## json

    echo '{some json}' | tr -d '\n\t' | tr -s ' '


<a id="org630d8b7"></a>

## remove old <span class="underline"><span class="underline">pycache</span></span>

    find . | grep -E "(/__pycache__$|\.pyc$|\.pyo$)" | tee >(xargs rm -rf)


<a id="orgc54fa56"></a>

## sliced windows

    from itertools import islice
    
    def window(seq, n=2):
        "Returns a sliding window (of width n) over data from the iterable"
        "   s -> (s0,s1,...s[n-1]), (s1,s2,...,sn), ...                   "
        it = iter(seq)
        result = tuple(islice(it, n))
        if len(result) == n:
            yield result
        for elem in it:
            result = result[1:] + (elem,)
            yield result
    
    # or
    seq = [0, 1, 2, 3, 4, 5]
    window_size = 3
    
    for i in range(len(seq) - window_size + 1):
        print(seq[i: i + window_size])


<a id="org1ee0792"></a>

## compare row to itself

    import numpy as np
    a = [0,1,2,3,4,5,6,7,8,9]
    
    r = np.zeros((len(a),len(a)))
    for x in a:
        for y in a:
            if y<x:
                continue # we skip y!
            r[x,y] = x+y
    
    print(r)

    [[ 0.  1.  2.  3.  4.  5.  6.  7.  8.  9.]
     [ 0.  2.  3.  4.  5.  6.  7.  8.  9. 10.]
     [ 0.  0.  4.  5.  6.  7.  8.  9. 10. 11.]
     [ 0.  0.  0.  6.  7.  8.  9. 10. 11. 12.]
     [ 0.  0.  0.  0.  8.  9. 10. 11. 12. 13.]
     [ 0.  0.  0.  0.  0. 10. 11. 12. 13. 14.]
     [ 0.  0.  0.  0.  0.  0. 12. 13. 14. 15.]
     [ 0.  0.  0.  0.  0.  0.  0. 14. 15. 16.]
     [ 0.  0.  0.  0.  0.  0.  0.  0. 16. 17.]
     [ 0.  0.  0.  0.  0.  0.  0.  0.  0. 18.]]


<a id="org5a1d3b8"></a>

## group elements in chunks from list

    def chunks(lst, n):
        """Yield successive n-sized chunks from lst.
        The last chunk may be smaller."""
        for i in range(0, len(lst), n):
            yield lst[i:i + n]
    
    print(list(chunks(range(1, 9), 3)))

    [range(1, 4), range(4, 7), range(7, 9)]


<a id="orgd72ff13"></a>

## flatten list

    s = [x for xs in s for x in xs]


<a id="orgdcdbbcb"></a>

## count occurances of intems in a list

    from collections import Counter
    products = ["Apple", "Orange", "Banana", "Pear", "Apple", "Banana"]
    element_counts = Counter(products)
    print(element_counts)

    Counter({'Apple': 2, 'Banana': 2, 'Orange': 1, 'Pear': 1})


<a id="org20bb48b"></a>

## dot notation access


<a id="org5e8dfd0"></a>

### SimpleNamespace

    from types import SimpleNamespace
    args = SimpleNamespace(**{"vocab_file": "/var/tmp/u/uncased_L-12_H-768_A/vocab.txt"})
    print(args.vocab_file)


<a id="org1da7078"></a>

### dataclass

add

-   def \_<sub>init</sub>\_<sub>(self &#x2026;)</sub>
-   def \_<sub>repr</sub>\_<sub>(self)</sub>:
-   def \_<sub>eq</sub>\_<sub>(self, other)</sub>:
-   def \_<sub>ne</sub>/lt/gt&#x2026;\_<sub>(self, other)</sub>:

    from dataclasses import dataclass
    
    @dataclass
    class DataClassCard:
        rank: str
        suit: str
    
    queen_of_hearts = DataClassCard('Q', 'Hearts')
    print(queen_of_hearts.rank)

    Q


<a id="orgc7fbadc"></a>

## fast lookup in ranges

    def find_shard_id(SHARDS, value):
        # Flatten the ranges into a list of tuples (start, end, shard_id)
        ranges = [(start, end, shard_id) for shard_id, ranges_list in SHARDS.items() for start, end in ranges_list]
    
        # Sort the ranges by their start values
        ranges.sort(key=lambda x: x[0])
    
        # Perform a binary search on the sorted list
        left, right = 0, len(ranges) - 1
        while left <= right:
            mid = (left + right) // 2
            if ranges[mid][0] <= value <= ranges[mid][1]:
                return ranges[mid][2]
            elif value < ranges[mid][0]:
                right = mid - 1
            else:
                left = mid + 1
    
        # If no matching range is found, return None
        return None
    
    SHARDS = {
        1: ((1, 10), (31, 40)),
        2: ((11, 20), (41, 50)),
        3: ((21, 30), (51, 60))
    }
    
    print(find_shard_id(SHARDS, 25))  # Output: 3
    print(find_shard_id(SHARDS, 7))  # Output: 1
    print(find_shard_id(SHARDS, 61))  # Output: None

    3
    1
    None


<a id="orgdf13d32"></a>

## time of execution

    import time
    
    start_time = time.time()
    time.sleep(2)
    end_time = time.time()
    
    print(f"Command executed in {end_time - start_time:.2f} seconds")

    Command executed in 2.00 seconds


<a id="orgf1cb6c1"></a>

## call one functions several times

    class PortScannerPool(object):
        def scan(  # NOQA: CFQ002
                self, callback, host="127.0.0.1", port=22, service=None,
                arguments="-l root -p root", stop_at_found=True,
                ctimeout=0, wtimeout=None, threads=1, timeout=0, hang_timeout=40, args_list=None):
            if args_list is not None:
                arg_dict = {'callback': callback, 'host': host, 'port': port,
                            'service': service, 'arguments': arguments,
                            'stop_at_found': stop_at_found, 'ctimeout': ctimeout,
                            'wtimeout': wtimeout, 'threads': threads,
                            'timeout': timeout, 'hang_timeout': hang_timeout}
                for args in args_list:
                    arg_dict.update(args)
                    self.scan(**arg_dict)
                return self._batch


<a id="org2f2794f"></a>

## prepare message for logging as like print

    import logging
    import sys
    
    def lprint(*args) -> str:
        msg = ' '.join(map(str, args))
        return msg.strip()
    
    # ------ main -------
    logger = logging.getLogger(__name__)
    logger.setLevel(logging.DEBUG)
    handler = logging.StreamHandler(sys.stdout)
    logger.addHandler(handler)
    
    logger.debug(lprint([1,23], 'sd'))
    logger.setLevel(logging.INFO)
    logger.debug(lprint([1,23], 'sd'))

    [1, 23] sd
    [1, 23] sd
    [1, 23] sd
    [1, 23] sd
    [1, 23] sd
    [1, 23] sd


<a id="org556d1d7"></a>

## group dictionaries in list

    from itertools import groupby
    
    # Sample list of dictionaries
    list_of_dicts = [
        {'host': 'A', 'other_key': 'value1'},
        {'host': 'B', 'other_key': 'value2'},
        {'host': 'A', 'other_key': 'value3'},
        {'host': 'C', 'other_key': 'value4'},
        {'host': 'B', 'other_key': 'value5'},
    ]
    sorted_list = sorted(list_of_dicts, key=lambda x: x['host'])
    
    # Group the sorted list by the 'host' key
    for host, group in groupby(sorted_list, key=lambda x: x['host']):
        print(f"Host: {host} {list(group)}")

    Host: A [{'host': 'A', 'other_key': 'value1'}, {'host': 'A', 'other_key': 'value3'}]
    Host: B [{'host': 'B', 'other_key': 'value2'}, {'host': 'B', 'other_key': 'value5'}]
    Host: C [{'host': 'C', 'other_key': 'value4'}]


<a id="org762311d"></a>

## ModuleNotFoundError: No module named

    import sys
    sys.path.insert(0, '../src/')


<a id="org6ae1b8e"></a>

# tools 2022 pypi


<a id="org8b53617"></a>

## web frameworks

-   Bottle
-   CherryPy
-   Django
-   Falcon
-   FastAPI
-   Flask
-   Hug
-   Pyramid
-   Tornado
-   web2py


<a id="org50ec796"></a>

## additional libraries

-   aiohttp
-   Asyncio
-   httpx
-   Pillow
-   Pygame
-   PyGTK
-   PyQT
-   Requests
-   Six
-   Tkinter
-   Twisted
-   Kivy
-   wxPython
-   Scrapy


<a id="org5a6d3c3"></a>

## machine learning frameworks

-   Gensim
-   MXNet
-   NLTK
-   Theano


<a id="org56b65c0"></a>

## cloud platforms do you use? \*This question is required.

-   AWS
-   Rackspace
-   Linode
-   OpenShift
-   PythonAnywhere
-   Heroku
-   Microsoft Azure
-   DigitalOcean
-   Google Cloud Platform
-   OpenStack


<a id="orgf333aeb"></a>

## ORM(s) do you use together with Python, if any? \*This question is required.

-   No database development
-   Tortoise ORM
-   Dejavu
-   Peewee
-   SQLAlchemy
-   Django ORM
-   PonyORM
-   Raw SQL
-   SQLObject


<a id="org195f483"></a>

## Big Data tool(s) do you use, if any?  \*This question is required.

-   None
-   Apache Samza
-   Apache Kafka
-   Dask
-   Apache Beam
-   Apache Hive
-   Apache Hadoop/MapReduce
-   Apache Spark
-   Apache Tez
-   Apache Flink
-   ClickHouse


<a id="orgfe27eae"></a>

## Continuous Integration (CI) system(s) do you regularly use? \*This question is required.

-   CruiseControl
-   Gitlab CI
-   Travis CI
-   TeamCity
-   Bitbucket Pipelines
-   AppVeyor
-   GitHub Actions
-   Jenkins / Hudson
-   CircleCI
-   Bamboo


<a id="orgdf757ce"></a>

## configuration management tools do you use, if any? \*This question is required.

-   None
-   Chef
-   Puppet
-   Custom solution
-   Ansible
-   Salt


<a id="org420d6ee"></a>

## documentation tool do you use?  \*This question is required.

-   I don’t use any documentation tools
-   Sphinx and furo - Sphinx theme (example <https://github.com/simplistix/testfixtures>)
-   MKDocs
-   Doxygen


<a id="orge5f00c5"></a>

## IDE features

-   use Version Control Systems 	use Version Control Systems: Often 	use Version Control Systems: From timeto time 	use Version Control Systems: Never orAlmost never
-   use Issue Trackers 	use Issue Trackers: Often 	use Issue Trackers: From timeto time 	use Issue Trackers: Never orAlmost never
-   use code coverage 	use code coverage: Often 	use code coverage: From timeto time 	use code coverage: Never orAlmost never
-   use code linting (programs that analyze code for potential errors) 	use code linting (programs that analyze code for potential errors): Often 	use code linting (programs that analyze code for potential errors): From timeto time 	use code linting (programs that analyze code for potential errors): Never orAlmost never
-   use Continuous Integration tools 	use Continuous Integration tools: Often 	use Continuous Integration tools: From timeto time 	use Continuous Integration tools: Never orAlmost never
-   use optional type hinting 	use optional type hinting: Often 	use optional type hinting: From timeto time 	use optional type hinting: Never orAlmost never
-   use NoSQL databases 	use NoSQL databases: Often 	use NoSQL databases: From timeto time 	use NoSQL databases: Never orAlmost never
-   use autocompletion in your editor 	use autocompletion in your editor: Often 	use autocompletion in your editor: From timeto time 	use autocompletion in your editor: Never orAlmost never
-   run / debug or edit code on remote machines (remote hosts, VMs, etc.) 	run / debug or edit code on remote machines (remote hosts, VMs, etc.): Often 	run / debug or edit code on remote machines (remote hosts, VMs, etc.): From timeto time 	run / debug or edit code on remote machines (remote hosts, VMs, etc.): Never orAlmost never
-   use SQL databases 	use SQL databases : Often 	use SQL databases : From timeto time 	use SQL databases : Never orAlmost never
-   use a Python profiler 	use a Python profiler: Often 	use a Python profiler: From timeto time 	use a Python profiler: Never orAlmost never
-   use Python virtual environments for your projects 	use Python virtual environments for your projects: Often 	use Python virtual environments for your projects: From timeto time 	use Python virtual environments for your projects: Never orAlmost never
-   use a debugger 	use a debugger: Often 	use a debugger: From timeto time 	use a debugger: Never orAlmost never
-   write tests for your code 	write tests for your code: Often 	write tests for your code: From timeto time 	write tests for your code: Never orAlmost never
-   refactor your code 	refactor your code: Often 	refactor your code: From timeto time 	refactor your code: Never orAlmost never


<a id="org2c14e38"></a>

## isolate Python environments between projects? \*This question is required.

-   virtualenv
-   venv
-   virtualenvwrapper
-   hatch
-   Poetry
-   pipenv
-   Conda


<a id="org1c03d04"></a>

## tools related to Python packaging do you use directly?  \*This question is required.

-   pip
-   Conda
-   pipenv
-   Poetry
-   venv (standard library)
-   virtualenv
-   flit
-   tox
-   PDM
-   twine
-   Containers (eg: via Docker)
-   Virtual machines
-   Workplace specific proprietary solution


<a id="org8da5527"></a>

## application dependency management? \*This question is required.

-   None
-   pipenv
-   poetry
-   pip-tools


<a id="org4a8e032"></a>

## automated services to update the versions of application dependencies? \*This question is required.

-   None
-   Dependabot
-   PyUp
-   Custom tools, e.g. a cron job or scheduled CI task
-   No, my application dependencies are updated manually


<a id="org5d2300b"></a>

## installing packages? \*This question is required.

-   None
-   pip
-   easy<sub>install</sub>
-   Conda
-   Poetry
-   pip-sync
-   pipx


<a id="org43b5fbb"></a>

## tool(s) do you use to develop Python applications? \*This question is required.

-   None / I'm not sure
-   Setuptools
-   build
-   Wheel
-   Enscons
-   pex
-   Flit
-   Poetry
-   conda-build
-   maturin
-   PDM-PEP517


<a id="org5fa89a9"></a>

## job role(s)? \*This question is required.

-   Architect
-   QA engineer
-   Business analyst
-   DBA
-   CIO / CEO / CTO
-   Technical support
-   Technical writer
-   Team lead
-   Systems analyst
-   Data analyst
-   Product manager
-   Developer / Programmer


<a id="org5feda2d"></a>

# tools 2024

Experience with at least one direction:

-   Data Governance,
-   MLOps,
-   Computer Vision,
-   NLP (Natural Language Processing),
-   LLM (Large Language Models)
-   Reinforcement Learning:

-   Computer Vision tools: EasyOCR, Tesseract, AWS Textract, Azure Computer Vision, Google OCR, PaddleOCR,
    MMOCR, YOLO, etc.)
-   NLP: tokenization, named entity recognition, classification, sentiment analysis, word embeddings (NLTK,
    spaCy, scikit-learn, transfomers, etc.)
-   Reinforcement learning tools: KerasRL, Pyqlearning, Tensorforce, RL<sub>Coach</sub>, TFAgents, Stable Baselines,
    mushroomRL, RLlib, Dopamine, SpinningUp, garage, Acme, coax, SURREAL)
-   Relational (PostgreSQL, MySQL, ClickHouse, Snowflake, etc.) and Non-Relational databases (Hive, AWS Aurora, etc.)
-   Experience in one or more Cloud Technologies (AWS, GCP, Azure)
-   Experience with Message brokers (Kafka, RabbitMQ, AWS Kinesis, etc.)

Data validation tools: Pydantic

database ORM migration tools: alembic.sqlalchemy.org


<a id="org11c9ad0"></a>

# install

pip3 install &#x2013;upgrade pip &#x2013;user


<a id="org286a53c"></a>

## debian

1.  visit <https://www.python.org/downloads/>
2.  apt install gpg
3.  gpg &#x2013;recv-keys 64E628F8D684696D
4.  cd *usr/local/src*
5.  wget <https://www.python.org/ftp/python/3.11.9/Python-3.11.9.tar.xz>
6.  wget <https://www.python.org/ftp/python/3.11.9/Python-3.11.9.tar.xz.asc>
7.  gpg &#x2013;verify Python-3.11.9.tar.xz.asc
8.  tar xpf Python-3.11.9.tar.xz
9.  apt-get install apt install libbz2-dev libffi-dev libssl-dev zlib1g-dev?
10. cat README.rst
    -   ./configure &#x2013;with-zlib &#x2013;with-openssl
    -   make && make install

11. useradd &#x2013;home=/home/hug &#x2013;create-home &#x2013;shell /bin/bash &#x2013;user-group hug
12. sudo -u hub bash
13. pip install &#x2026;


<a id="orgf94ab4b"></a>

## issues

no module named zlib

    apt-get install zlib-dev

pip is configured with locations that require TLS/SSL, however the ssl module in Python is not available

    apt-get install apt install libbz2-dev libffi-dev libssl-dev
    ./configure && make && make install


<a id="orge73ae8b"></a>

## change Python version Ubuntu & Debian

update-alternatives &#x2013;install /usr/bin/python python /usr/bin/python3.8 1
echo 1 | update-alternatives &#x2013;config python


<a id="orga5236b4"></a>

# Python theory


<a id="orge3be418"></a>

## Python [ˈpʌɪθ(ə)n] паисэн

-   interpreted
-   code readability
-   indentation instead of curly braces
-   designed to be highly extensible
-   garbage collector
-   functions are first class citizens
-   multiple inheritance
-   all parameters (arguments) are passed by reference
-   nothing in Python makes it possible to enforce data hiding
-   all classes inherit from object

Multi-paradigm:

-   imperative
-   procedural
-   object-oriented
-   functional (in the Lisp tradition) - (itertools and functools) - borrowed from Haskell and Standard ML
-   reflective
-   aspect-oriented programming  by metaprogramming[42] and metaobjects (magic methods)
-   dynamic name resolution (late binding) ?????????

Typing discipline:

-   Duck
-   dynamic
-   gradual (since 3.5) - mey be defined with type(static) or not(dynamic).
-   strong

Python and **CPython** are managed by the *non-profit* **Python Software Foundation**.

**The Python Standard Library** 3.6

-   string processing (regular expressions, Unicode, calculating differences between files)
-   Internet protocols (HTTP, FTP, SMTP, XML-RPC, POP, IMAP, CGI programming)
-   software engineering (unit testing, logging, profiling, parsing Python code)
-   operating system interfaces (system calls, filesystems, TCP/IP sockets)


<a id="org092b8af"></a>

## philosophy

document **Zen of Python (PEP 20)**

-   Beautiful is better than ugly
-   Explicit is better than implicit
-   Simple is better than complex
-   Complex is better than complicated
-   Readability counts
-   Errors should never pass silently. Unless explicitly silenced.
-   There should be one&#x2013; and preferably only one &#x2013;obvious way to do it.
-   If the implementation is hard to explain, it's a **bad idea**. If the implementation is easy to explain, it **may
    be** a good idea.
-   Namespaces are one honking great idea &#x2013; let's do more of those!

Other

-   "there should be one—and preferably only one—obvious way to do it"
-   goal -  keeping it fun to use ( spam and eggs instead of the standard foo and bar)
-   pythonic - related to style (code is pythonic )
-   Pythonists, Pythonistas, and Pythoneers - питонутые

<https://peps.python.org/pep-0020/#id3>


<a id="org0d69ff1"></a>

## History

Every revision of Python enjoys performance improvements over the previous version.

-   1989
-   2000 - **Python 2.0** - cycle-detecting garbage collector and support for Unicode
-   2008 - **Python 3.0** - not completely backward-compatible - include the 2to3 utility, which automates (at
    least partially) the translation of Python 2 code to Python 3.
-   2009 Python 3.1 ordered dictionaries,
-   2015 Python 3.5 typed varibles
-   2016 Python 3.6 asyncio, Formatted string literals (f-strings), Syntax for variable annotations.
    -   PEP523 API to make frame evaluation pluggable at the C level.

3.7

-   built-in breakpoint() function that calls pdb. before was: import pdb; pdb.set<sub>trace</sub>()
-   @dataclass - class annotations shugar
-   contextvars module -  mechanism for managing Thread-local context variables, similar to thread-local storage (TLS), PEP 550
-   from dataclasses import dataclass @dataclass - comes with basic functionality already implemented:
    instantiate, print, and compare data class instances

3.8

-   Positional-Only Parameter: pow(x, y, z=None, /)
-   Assignment Expressions: if (match := pattern.search(data)) is not None: - This feature allows developers to
    assign values to variables within an expression.
-   f"{a=}", f"Square has area of {(area := length\*\*2)} perimeter of {(perimeter := length\*4)}"
-   new SyntaxWarnings: when to choose is over ==, miss a comma in a list

3.9

-   Merge (|) and update (|=) added to dict library to compliment dict.update() method and {\*\*d1, \*\*d2}.
-   Added str.removeprefix(prefix) and str.removesuffix(suffix) to easily remove unneeded sections of a string.
-   More Flexible Decorators: Traditionally, a decorator has had to be a named, callable object, usually a
    function or a class. PEP 614 allows decorators to be any callable expression.
    -   before: decorator: '@' dotted<sub>name</sub> [ '(' [arglist] ')' ] NEWLINE
    -   after: decorator: '@' namedexpr<sub>test</sub> NEWLINE
-   typehints: list[int] do not require import typing;
-   Annotated[int, ctype("char")] -  integer that should be considered as a char type in C.
-   Better time zones handling.
-   The new parser based on PEG was introduced, making it easier to add new syntax to the language.

3.10

-   Structural pattern matching (PEP 634) was added, providing a way to match against and destructure data structures.
    -   match command.split():    case [action, obj]: # interpret action, obj
-   The new Parenthesized context managers syntax (PEP 618) was introduced, making it easier to write context
    managers using less boilerplate code.
-   Improved error messages and error recovery were added to the parser, making it easier to debug syntax errors.
-   Parenthesized Context Managers: This feature improves the readability of with statements by allowing
    developers to use parentheses. with (open("test<sub>file1.txt</sub>", "w") as test,  open("test<sub>file2.txt</sub>", "w") as test2):

3.11

-   The built-in pip package installer was upgraded to version 21.0, providing new features and improvements to
    package management.
-   Improved error messages and error handling were added to the interpreter, making it easier to understand and
    recover from runtime errors.
-   Some of the built-in modules were updated and improved, including the asyncio and typing modules.
-   Better hash randomization: This improves the security of Python by making it more difficult for attackers to
    exploit hash-based algorithms that are used for various operations such as dictionary lookups.
-   package has been deprecated

3.12

-   **distutils** removed
-   allow perf - linux profiler, new API for profilers,  sys.monitoring
-   buffer protocol -  access to the raw region of memory
-   type-hits:
    -   TypedDict - source of types.  for typing \*\*kwargs
    -   doesn't need to import TypeVar. func[T] syntax to indicate generic type references
    -   @override decorator can be used to flag methods that override methods in a parent
-   concurrency preparing:
    
    -   Immortal objects - to implement other optimizations (like avoiding copy-on-write)
    -   subinterpreters - the ability to have multiple instances of an interpreter, each with its own GIL, no
    
    end-user interface to subinterpreters.
    
    -   asyncio is larger and faster
-   sqlite3 module: command-line interface has been added to the
-   unittest: Add a &#x2013;durations command line option, showing the N slowest test cases

3.13

-   Just-In-Time (JIT) Compiler - translates specialized bytecode into machine code at runtime
-   Free-Threaded Mode - disables the Global Interpreter Lock (GIL)
-   random in CLI


<a id="org32fcf5b"></a>

### 3.0

-   Old feature removal: old-style classes, string exceptions, and implicit relative imports are no longer supported.
-   exceptions now need the as keyword, exec as **var**
-   **with** is now built in and no longer needs to be imported from <span class="underline"><span class="underline">future</span></span>.
-   range: xrange() from Python 2 has been replaced by range(). The original range() behavior is no longer available.
-   **print** changed
-   **input**
-   all text content such as strings are Unicode by default
-   / -> float, in 2.0 it was integer. // operator added.
-   Python 2.7 cannot be  translation  to Python 3.


<a id="org4825f10"></a>

## Implementations

**CPython**, the reference implementation of Python

-   interpreter and a compiler as it compiles Python code into bytecode before interpreting it
-   (GIL) problem - only one thread may be processing Python bytecode at any one time
    -   One thread may be waiting for a client to reply, and another may be waiting for a database query to execute,
        while the third thread is actually processing Python code.
    -   Concurrency can only be achieved with separate CPython interpreter processes managed by a multitasking
        operating system

implementations that are known to be compatible with a given version of the language are IronPython, Jython and PyPy.

-   **IronPython** -C#- use JIT- targeting the .NET Framework and Mono. created here known not to work under CPython
-   **PyPy** -  just-in-time compiler. written completely in Python.
-   Jython - Python in Java for the Java platform

CPython based:

-   **Cython** - translates a Python script into C and makes direct C-level API calls into the Python interpreter

**Stackless Python** - a significant fork of CPython that implements microthreads; it does not use the C memory
stack, thus allowing massively concurrent programs.

**Numba** - NumPy-aware optimizing runtime compiler for Python

**MicroPython** - Python for microcontrollers (runs on the pyboard and the BBC Microbit)

Jython and IronPython - do not have a GIL and so multithreaded execution for a CPU-bound python application
 will work.  These platforms are always playing catch-up with new language features or library features, so
 unfortunately

**Pythran**, a static Python-to-C++ extension compiler for a subset of the language, mostly targeted at
 numerical computation. Pythran can be (and is probably best) used as an additional backend for NumPy code in
 Cython.

**mypyc**, a static Python-to-C extension compiler, based on the mypy static Python analyser. Like Cython's pure
 Python mode, mypyc can make use of PEP-484 type annotations to optimise code for static types. Cons: no
 support for low-level optimisations and typing, opinionated Python type interpretation, reduced Python
 compatibility and introspection after compilation

**Nuitka**, a static Python-to-C extension compiler.

-   Pros: highly language compliant, reasonable performance gains, support for static application linking
    (similar to cython<sub>freeze</sub> but with the ability to bundle library dependencies into a self-contained
    executable)
-   Cons: no support for low-level optimisations and typing

**Brython** is an implementation of Python 3 for client-side web programming (in JavaScript). It provides a
 subset of Python 3 standard library combined with access to DOM objects. It is packaged in Gentoo as
 dev-python/brython.


<a id="orgaf63638"></a>

## Bytecode:

-   Java is compiled into bytecode and then executed by the JVM.
-   C language is compiled into object code, and then becomes the executable file after the linker
-   Python is first converted to the bytecode and then executed via ceval.c. The interpreter directly
    executes thetranslated instruction set.

Bytecide is a set of instructions for a virtual machine which is called the Python Virtual Machine
(PVM).

The PVM is an interpreter that runs the bytecode.

The bytecode is platform-independent, but PVM is specific to the target machine. **.pyc** file.

The bytecode files are stored in a folder named <span class="underline"><span class="underline">pycache</span></span>. This folder is automatically created
when you try to import another file that you created.

manually create it: manually create it: python -m compileall file<sub>1.py</sub> &#x2026; file<sub>n.py</sub>


<a id="orgb43bc17"></a>

## terms

**binding** the name to the object - x = 2 - (generic) name x receives a reference to a separate, dynamically
 allocated object of numeric (int) type of value 2


<a id="orgca74588"></a>

## Indentation - Отступ слева and blank lines

Количество отступов не важно.

if True:
    print "Answer" // both prints called  **suite** and **header line** with : - if
    print "True"
else:
    print "Answer"
    print "False"

Blank Lines - ignored

semicolon ( ; ) allows multiple statements

Внутри:

-   INDENT - token означающий начало нового блока
-   DEDENT - конец блока.


<a id="org4a9c839"></a>

## mathematic

-   **арифметика произвольной точности** длина чисел ограничена только объёмом доступной памяти
-   Extensive mathematics library, and the third-party library NumPy that further extends the native capabilities
-   a < b < c - support


<a id="orgd9bcbf6"></a>

## WSGI (Web Server Gateway Interface)(whiskey)

-   calling convention for web servers to forward requests to web applications or frameworks written in the
    Python programming language.
-   like Java's "servlet" API.
-   WSGI middleware components, which implement both sides of the API, typically in Python code.


<a id="org5a6a2b9"></a>

## pythonic paradigms

-   **Context managers** - object for **with** with \_<sub>enter</sub>\_<sub>()</sub>, \_<sub>exit</sub>\_<sub>()</sub> or \_<sub>aenter</sub>\_<sub>()</sub> and \_<sub>aexit</sub>\_<sub>()</sub> methods.
-   **while else** - else clause is only executed when your while condition becomes false. If you break out of the
    loop, or if an exception is raised, it won't be executed.


<a id="org29ac1ab"></a>

# scripting


<a id="orgaeeb268"></a>

## top-level script enironment

-   <https://docs.python.org/3.9/library/inspect.html>
-   <https://docs.python.org/3/library/functions.html?highlight=__file>\_\_
-   <https://docs.python.org/3/reference/import.html>
-   <https://geek-university.com/python/display-module-content/>

**\_<sub>name</sub>\_\_** - equal to '<span class="underline"><span class="underline">main</span></span>' when as a script or "python -m" or from an interactive prompt. '<span class="underline"><span class="underline">main</span></span>' is
 the name of the scope in which top-level code executes.

if <span class="underline"><span class="underline">name</span></span> == "<span class="underline"><span class="underline">main</span></span>": - not execute when imported

**\_<sub>file</sub>\_\_** - full path to module file


<a id="orgdee353f"></a>

## command line arguments parsing

import sys

print 'Number of arguments:', len(sys.argv), 'arguments.'
print 'Argument List:', str(sys.argv)

getopt module for better


<a id="org0a89ec4"></a>

## python executable

-   -c cmd : program passed in as string (terminates option list)
-   -m mod : run library module as a script (terminates option list)
-   -O : remove assert and <span class="underline"><span class="underline">debug</span></span>-dependent statements; add .opt-1 before .pyc extension; also
    PYTHONOPTIMIZE=x
-   -OO : do -O changes and also discard docstrings; add .opt-2 before .pyc extension
-   -s     : don't add user site directory to sys.path; also PYTHONNOUSERSITE. Disable *home/u2*.local/lib/python3.8/site-packages
-   -S     : don't imply 'import site' on initialization
    -   /usr/lib/python38.zip
    -   /usr/lib/python3.8
    -   /usr/lib/python3.8/lib-dynload


<a id="org3f927fb"></a>

## current dir

script<sub>dir</sub>=os.path.dirname(os.path.abspath(<span class="underline"><span class="underline">file</span></span>))


<a id="org32ca88f"></a>

## unix logger

    def init_logger(level, logfile_path: str = None):
        """
        stderr  WARNING ERROR and CRITICAL
        stdout < WARNING
    
        :param logfile_path:
        :param level: level for stdout
        :return:
        """
    
        formatter = logging.Formatter('mkbsftp [%(asctime)s] %(levelname)-6s %(message)s')
        logger = logging.getLogger(__name__)
        logger.setLevel(level)  # debug - lowest
        # log file
        if logfile_path is not None:
            h0 = logging.FileHandler(logfile_path)
            h0.setLevel(level)
            h0.setFormatter(formatter)
            logger.addHandler(h0)
        # stdout -- python3 script.py 2>/dev/null | xargs
        h1 = logging.StreamHandler(sys.stdout)
        h1.setLevel(level)  # level may be changed
        h1.addFilter(lambda record: record.levelno < logging.WARNING)
        h1.setFormatter(formatter)
        # stderr -- python3 script.py 2>&1 >/dev/null | xargs
        h2 = logging.StreamHandler(sys.stderr)
        h2.setLevel(logging.WARNING)  # fixed level
        h2.setFormatter(formatter)
    
        logger.addHandler(h1)
        logger.addHandler(h2)
        return logger


<a id="org2d1cf71"></a>

## How does python find packages?

**sys.path** - Initialized from the environment variable PYTHONPATH, plus an installation-dependent default.

find module:

-   import imp
-   imp.find<sub>module</sub>('numpy')


<a id="org01a69db"></a>

## dist-packages and site-packages?

-   dist-packages is a Debian-specific convention that is also present in its derivatives, like Ubuntu. Modules
    are installed to dist-packages when they come from the Debian package manager. This is to reduce conflict
    between the system Python, and any from-source Python build you might install manually.

<https://wiki.debian.org/Python>


<a id="org56f09ed"></a>

## file size and modification date

    os.stat(pf).st_size
    os.stat(pf).st_mtime


<a id="orgdfcda37"></a>

## environment

os.environ  - dictionary

try &#x2026; except KeyError: - no variable in dictionary

os.environ.get('FLASK<sub>SOME</sub><sub>STAFF</sub>') - None if no key

if

    export BBB ; python
    os.environ['BBB'] # KeyError

    DEBUG = os.environ.get('DEBUG', False) # sed DEBUG to  True of False


<a id="org50163bd"></a>

## -m mod - run library module as a script

<https://peps.python.org/pep-0338/>

-   \_<sub>name</sub>\_\_ is always '<span class="underline"><span class="underline">main</span></span>'


<a id="orgdbe6eec"></a>

### e.g. mymodule/\_<sub>main</sub>\_<sub>.py</sub>:

    import argparse
    
    def main():
        parser = argparse.ArgumentParser()
        parser.add_argument("-p", "--port", action="store", default="8080")
        parser.add_argument("--host", action="store", default="0.0.0.0")
        args = parser.parse_args()
        port = int(args.port)
        host = str(args.host)
        app.run(host=host, port=port, debug=False)
        return 0
    
    if __name__=="__main__":
        main()


<a id="org67969ae"></a>

# Data model

Five standard data types −

-   Numbers
-   String
-   List :list - []
-   Tuple :tuple - ()
-   Dictionary :dict - {}
-   Callable :callable
-   :object


<a id="orgaca6dce"></a>

## special types

<https://docs.python.org/3/reference/datamodel.html>

-   None - a single value
-   NotImplemented - Numeric methods and rich comparison methods should return this value if they do not
    implement the operation for the operands provided.
-   Ellipsis - accessed through the literal &#x2026; or the built-in name Ellipsis.
-   numbers.Number
-   Sequences - represent finite ordered sets indexed by non-negative numbers (len() for sequence)
    -   mutable: lists, Byte Arrays
    -   immutable: str, tuple, bytes
-   Set types -
    -   Sets - mutable
    -   Frozen sets - frozenset()
-   Mappings - indexet by [2:3], have **del** and
-   Callable
    -   Instance methods
    -   Generator functions -  function or method which uses the yield statement
        -   when called, always returns an iterator object
    -   Coroutine functions - async def - when called, returns a coroutine object
    -   Asynchronous generator functions
    -   Built-in functions
    -   Built-in methods
    -   Classes - factories for new instances of themselves
    -   Class Instances - can be made callable by defining a \_<sub>call</sub>\_<sub>()</sub> method in their class.
-   Modules <span class="underline"><span class="underline">name</span></span> The module’s name, <span class="underline"><span class="underline">doc</span></span>, <span class="underline"><span class="underline">file</span></span> - The pathname of the file from which the module was
    loaded,\_<sub>annotations</sub>\_\_, <span class="underline"><span class="underline">dict</span></span> is the module’s namespace as a dictionary object.
-   Custom classes -
-   Class instances


<a id="org250484a"></a>

## theory

-   everything is an **object**, even classes. (Von Neumann’s model of a  “stored program computer”)
-   object has **identity**, a **type** and a **value**
-   **identity** - address in memory, never changed once created instance
    -   id(object)  = identity
    -   x is y - compare identities x is not y
-   **type** or class
    -   type()
-   **value** of some objects can change - **mutable** **immutable** - even if refered object inside mutable
    -   numbers, strings and tuples are immutable
    -   dictionaries and lists are mutable


<a id="org389c2dd"></a>

## Types build-in <a id="org9908a6d"></a>

-   **None** - name to access single object - to signify the absence of a value = false.

-   **NotImplemented** - name to access single object - <span class="underline">Numeric methods</span> and rich <span class="underline">comparison methods</span> should
    return this value if they do not implement the operation for the operands provided. = true.
-   **Ellipsis** - single object with name to access - **&#x2026;** or **Ellipsis** = true
-   **numbers.Number** - immutable
    -   numbers.Integral
        -   Integers (**int**) - unlimited range
        -   Booleans (**bool**) - 0 and 1, in most contextes  "False" or "True"
    -   numbers.Real (**float**) - underlying machine architecture определеяет accepted range and handling of
        overflow
    -   numbers.Complex (**complex**) - z.real and z.imag  - pair of machine-level double precision floating point numbers

-   Sequences - finite ordered sets **len()** - index **a[i]**: 0 to n-1; **min(s), max(s)** ; **s \* n** - n copies of s ;
    **s + t** concatenation; **x in s** - True if an item of s is equal to x
    -   Immutable sequences - **list.index(obj)**
        -   **str** - UTF-8 - s[0] = string with length 1(code point).  **ord(s)** - <span class="underline">code point</span> to 0 - 10FFFF ;
            **chr(i)** int to integer.; **str.encode()** -> bytes.decode() <-
        -   **Tuple** - неизменяемый (), (1,) (1,'23') any type.
        -   **range()**
        -   **Bytes** -  items are 8-bit byte = 1-255 - literal **xb'ab'** ; **bytes()** - creates;
    -   Mutable unhashable - **del list[0]** - без первого -
        -   **List** - изменяемый [1,'3'] any type.
        -   Byte Array - bytearray - **bytearray()**
        -   memoryview

-   Set types - unordered - finite sets of unique - immutable - compare by == ; has **len()**
    -   **set** - mutable - <span class="underline">items must be imutable</span> **x in set** **for x in set** - {'h', 'o', 'l', 'e'}
    -   **frozenset** -  immutable and hashable -  it can be used again as an element of another set
-   Mappings - finite sets,  finctions: del a[k], len()
    -   **Dictionary** - mutable - Keys are unique within a dictionary - indexed by nearly arbitrary values -<sub>Keys</sub>
        must be immutable\_ - {2 : 'Zara', 'Age' : 7, 'Class' : 'First'} dict[3] = "my" # Add new entry

-   Callable types -  to which  call operation  can be applied - код, который можеть быть вызван
    -   User-defined functions
    -   Instance methods: read-only attributes:
    -   Generator functions - function which returns a generator iterator. It looks like a normal function except
        that it contains **yield** expressions ??????
    -   Coroutine functions -  **async def** - returns a coroutine object ???
    -   Asynchronous generator functions
    -   Built-in functions - len()  and math.sin()  (math is a standard built-in module)
    -   Built-in methods alist.append()
    -   Classes - act as factories for new instances of themselves. arguments of the call are passed to \_<sub>new</sub>\_<sub>()</sub>
    -   Class Instances - may be callable by defining a \_<sub>call</sub>\_<sub>()</sub> method
-   Modules
-   Custom classes


<a id="org28a1e80"></a>

## Truth Value Testing <a id="org0d8b868"></a>

-   <https://docs.python.org/3/library/stdtypes.html>

false:

-   None and False.
-   zero of any numeric type: 0, 0.0, 0j, Decimal(0), Fraction(0, 1)
-   empty sequences and collections: '', (), [], {}, set(), range(0)


<a id="orgc4931b0"></a>

## Shallow and deep copy operations

-   import copy
-   copy.copy(x)    Return a shallow copy of x.
-   copy.deepcopy(x[, memo])    Return a deep copy of x.
-   calss own copy: \_<sub>copy</sub>\_<sub>()</sub> and \_<sub>deepcopy</sub>\_<sub>()</sub>


<a id="org2a6c0ba"></a>

## Why Dict and set use only hashable objects?

Hash function used to address value by a key.

There is tradeoff what should be brokern: hash function that will not mirror changed of mutable object or dict
 and set that will not allow not hashable objects.

Solutions:

-   freeze mutable to imutable, ex. list to typle

Set:

-   bucket<sub>index</sub> = self.<sub>hash</sub>(element) % self.size
-   sets are resized when the load factor (the ratio of the number of elements to the number of buckets)
    exceeds a certain threshold.

To allow set to use other hash function hash function of kept object should be modified or whole Set class
 should be reimplemented.


<a id="org5de1136"></a>

## Dict hash collisions

-   Replaceas “hash” with “hashlib”
-   Chaining: When two different elements hash to the same bucket (a collision), Python uses chaining to store these elements in a linked list within that bucket.
-   Open Addressing: Python also uses open addressing techniques to handle collisions, where the next available slot is used to store the element.
-   performance monitoring


<a id="org2dfcb23"></a>

## links

-   <https://docs.python.org/3/reference/datamodel.html>
-   <https://docs.python.org/3/library/stdtypes.html>
-   object by name or by link: muttable immutalbe 2019 <https://realpython.com/pointers-in-python/>


<a id="org8fbecdf"></a>

# typed varibles or type hints

-   <https://docs.python.org/3/library/typing.html>
-   from typing import Dict, Tuple, Sequence, Any, Union, Tuple, Callable, TypeVar, Generic

    variable_name: type


<a id="org0f062b6"></a>

## typing.Annotated and PEP-593

data models, validation, serialization, UI

v: Annotated[T, \*x]

-   v: a “name” (variable, function parameter, . . . )
-   T: a valid type
-   x: at least one metadata (or annotation), passed in a variadic way.  The metadata can be used for either
    static analysis or at runtime.

Ignorable: When a tool or a library does not support annotations or encounters an unknown annotation it should just
 ignore it and treat annotated type as the underlying type.

stored in obj.\_<sub>annotations</sub>\_\_


<a id="org2d0f1fe"></a>

### from typing import get<sub>type</sub><sub>hints</sub>

    @dataclass
    class Point:
      x: int
      y: Annotated[int, Label("ordinate")]
    {'x': <class 'int'>, 'y': typing.Annotated[int, Label('ordinate')]}


<a id="org2f122a5"></a>

### Use case: A calendar Event model, using pydantic <https://github.com/pydantic/pydantic>

    from pydantic import BaseModel
    class Event(BaseModel):
        summary: str
        description: str | None = None
        start_at: datetime | None = None
        end_at: datetime | None = None
    
    # -- Validation on datetime fields (using Pydantic)
    
    
    from pydantic import AfterValidator
    
    class Event(BaseModel):
        summary: str
        description: str | None = None
        start_at: Annotated[datetime | None, AfterValidator(tz_aware)] = None
        end_at: Annotated[datetime | None, AfterValidator(tz_aware)] = None
    
    def tz_aware(d: datetime) -> datetime:
        if d.tzinfo is None or d.tzinfo.utcoffset(d) is None:
            raise ValueError ("expecting a TZ-aware datetime")
        return d
    
    # -- iCalendar serialization support
    
    TZDatetime = Annotated[datetime, AfterValidator(tz_aware)]
    
    from . import ical
    
    class Event(BaseModel):
        summary: Annotated[str, ical.Serializer(label="summary")]
        description: Annotated[str | None, ical.Serializer(label="description")] = None
        start_at: Annotated[TZDatetime | None, ical.Serializer(label="dtstart")] = None
        end_at: Annotated[TZDatetime | None, ical.Serializer(label="dtend")] = None
    
    # module: ical
    @dataclass
    class Serializer:
        label: str
    
        def serialize(self, value: Any) -> str:
            if isinstance(value, datetime):
                value = value.astimezone(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
            return f"{self.label.upper()}:{value}"
    
    
    def serialize_event(obj: Event) -> str:
        lines = []
        for name, a, _ in get_annotations(obj, Serializer):
            if (value := getattr(obj, name, None)) is not None:
                lines.append(a.serialize(value))
        return "\n".join(["BEGIN:VEVENT"] + lines + ["END:VEVENT"])
    # console rendering
    
    # >>> evt = Event(
    # ... summary="FOSDEM",
    # ... start_at=datetime(2024, 2, 3, 9, 00, 0, tzinfo=ZoneInfo("Europe/Brussels")),
    # ... end_at=datetime(2024, 2, 4, 17, 00, 0, tzinfo=ZoneInfo("Europe/Brussels")),
    # ... )
    # >>> print(ical.serialize_event(evt))
    # BEGIN:VEVENT
    # SUMMARY:FOSDEM
    # DTSTART:20240203T080000Z
    # DTEND:20240204T160000Z
    # END:VEVENT


<a id="org80111a3"></a>

## function annotation

    def function_name(parameter1: type) -> return_type:

    from typing import Dict
    
    def get_first_name(full_name: str) -> str:
        return full_name.split(" ")[0]
    
    fallback_name: Dict[str, str] = {
        "first_name": "UserFirstName",
        "last_name": "UserLastName"
    }
    
    raw_name: str = input("Please enter your name: ")
    first_name: str = get_first_name(raw_name)
    
    # If the user didn't type anything in, use the fallback name
    if not first_name:
        first_name = get_first_name(fallback_name)
    
    print(f"Hi, {first_name}!")


<a id="org0298f54"></a>

# Strings

**Quotation [kwəʊˈteɪʃn] fot string**: single ('), double (") and triple (''' or """) quotes to denote string
 literals


<a id="org23338ba"></a>

## основы

-   “str” is a built-in type.
-   “string” is a module in the Python Standard Library. For providing constants and classes that aid in string
    manipulation. Constants: string.ascii<sub>letters</sub>, string.digits, string.punctuation, etc.

    S = 'str'; S = "str"; S = '''str''';
    
    para_str = """this is a long string that is made up of
    several lines and non-printable characters such as
    TAB ( \t ) and they will show up that way when displayed.
    NEWLINEs within the string, whether explicitly given like
    this within the brackets [ \n ], or just a NEWLINE within
    the variable assignment will also show up."""


<a id="org234ac62"></a>

### multiline

1.  s = """My Name is Pankajin Developers community."""
2.  s =  ('asd' 'asd') = asdasd
3.  backslash

    s = "My Name is Pankaj. " \
        "website in Developers community."

1.  s = ' '.join(("My Name is Pankaj. I am the owner of", "JournalDev.com and"))


<a id="orgdfa90bc"></a>

## **A formatted string literal or f-string**

-   <https://peps.python.org/pep-0498/>
-   <https://docs.python.org/3/library/string.html#formatstrings>

equivalent to format()

-   '!s' calls str() on the expression
-   '!r' calls repr() on the expression
-   '!a' calls ascii() on the expression.

    >>> name = "Fred"
    >>> f"He said his name is {name!r}." # repr() is equivalent to !r
    "He said his name is 'Fred'."

Символов после запятой

    >>> width = 10
    >>> precision = 4
    >>> value = decimal.Decimal("12.34567")
    >>> f"result: {value:{width}.{precision}}"  # nested fields
    'result:      12.35'

Форматирование даты:

    >>> today = datetime(year=2017, month=1, day=27)
    >>> f"{today:%B %d, %Y}"  # using date format specifier
    'January 27, 2017'
    >>> number = 1024
    >>> f"{number:#0x}"  # using integer format specifier
    '0x400'

format:

    >>> '{:,}'.format(1234567890)
    '1,234,567,890'
    >>> 'Correct answers: {:.2%}'.format(19/22)
    'Correct answers: 86.36%'


<a id="org67053a2"></a>

## **String Formatting Operator**

-   print ("My name is %s and weight is %d kg!" % ('Zara', 21))


<a id="org4a842c1"></a>

## string literal prefixes

-   <https://www.python.org/dev/peps/pep-0414/>

str or strings -  immutable sequences of Unicode code points.

-   **r' R' raw strings:** Raw strings do not treat the backslash as a special character at all. print (r'C:\\\nowhere')
-   **b' B' bytes (NOT str):** may only contain ASCII characters
-   ::


<a id="orgb15caa8"></a>

## raw strings, Unicode, formatted

-   r'string' - treat backslashes as literal characters
-   f'string' or F'string' - f"He said his name is {name!r}." - formatted


<a id="orgfdd640a"></a>

## Efficient String Concatenation

-   concatination at runtime

    #Fastest:
    s= ''.join([`num` for num in xrange(loop_count)])
    
    def g():
        sb = []
        for i in range(30):
            sb.append("abcdefg"[i%7])
    
        return ''.join(sb)
    
    print g()   # abcdefgabcdefgabcdefgabcdefgab


<a id="org7251e6c"></a>

## byte string

b''

-   byte string tp unicode :  str.decode()
-   unicode to byte string: str.encode('')

Your string is already encoded with some encoding. Before encoding it to ascii, you must decode it first.
Python is implicity trying to decode it (That's why you get a UnicodeDecodeError not UnicodeEncodeError).


<a id="org4e11ceb"></a>

# Classes

-   Class object - support two kinds of operations: attribute references and instantiation.
-   Instance object - attribute references - data and methods

there is **data attributes** correspond to “instance variables” in Smalltalk, and to “data members” in C++. - -
static varible - shared by each instance.

-   instance varibles may be reassigned
-   instance methods may be reassigned to any method or function. it is just an alias

object - parent for all classes

-   \_<sub>class</sub>\_\_ - class of instance
-   \_<sub>init</sub>\_\_
-   \_<sub>new</sub>\_\_
-   \_<sub>init</sub><sub>subclass</sub>\_\_
-   '<span class="underline"><span class="underline">delattr</span></span>', '<span class="underline"><span class="underline">dir</span></span>', '<span class="underline"><span class="underline">doc</span></span>', '<span class="underline"><span class="underline">eq</span></span>', '<span class="underline"><span class="underline">format</span></span>', '<span class="underline"><span class="underline">ge</span></span>', '<span class="underline"><span class="underline">getattribute</span></span>', '<span class="underline"><span class="underline">gt</span></span>',
    '<span class="underline"><span class="underline">hash</span></span>', '<span class="underline"><span class="underline">le</span></span>', '<span class="underline"><span class="underline">lt</span></span>', '<span class="underline"><span class="underline">ne</span></span>', '<span class="underline"><span class="underline">reduce</span></span>',
    '<span class="underline"><span class="underline">reduce<sub>ex</sub></span></span>', '<span class="underline"><span class="underline">repr</span></span>', '<span class="underline"><span class="underline">setattr</span></span>', '<span class="underline"><span class="underline">sizeof</span></span>', '<span class="underline"><span class="underline">str</span></span>', '<span class="underline"><span class="underline">subclasshook</span></span>'


<a id="org13b2abd"></a>

## basic

    class MyClass:
    	a=None
    c = MyClass()
    c.a = 3 # instance
    
    class MyClass:
        """MyClass.i and MyClass.f are valid attribute references"""
        i = 12345 # class value
        def __init__(self, a):
            self.i = a # create new object value
        def f(self):
            print("f")
    
    x = MyClass(2) # instance ERROR!
    x.a = 3; # data attibute
    
    print(x.a)
    print(x.i)
    print(MyClass.i)
    print(x.f)
    print(MyClass.f)
    # MyClass.f and x.f — it is a method object, not a function object.

    3
    2
    12345
    <bound method MyClass.f of <__main__.MyClass object at 0x7f37165d4790>>
    <function MyClass.f at 0x7f37165c5440>

    class Dog:
        kind = 'canine'         # class variable shared by all instances
        tricks = []             # static!
    
        def __init__(self, name):
            self.name = name    # instance variable unique to each instance
    
    #-------------- class method
    : class C:
    :    @classmethod
    :    def f(cls, arg1, arg2, ...): ...
    #May be called for class C.f() or for instance C().f() For derived class
    #                  derived class object is passed as the implied first argument.

    class A:
        c = 0
        def meth(self):
            self.c = 3
    a = A()
    a.meth()
    print(A.c, a.c)

    0 3
    None


<a id="orgb758ec7"></a>

## Special Attributes

-   instance.\_<sub>class</sub>\_\_ - The class to which a class instance belongs.
-   class.\_<sub>mro</sub>\_\_ or mro() - This attribute is a tuple of classes that are considered when looking for base classes
    during method resolution.
-   class.\_<sub>subclasses</sub>\_<sub>()</sub> - Each class keeps a list of weak references to its immediate subclasses.

Class
-<span class="underline"><span class="underline">name</span></span> The class name.

-   \_<sub>module</sub>\_\_ The name of the module in which the class was defined.
-   \_<sub>dict</sub>\_\_ The dictionary containing the class’s namespace.
-   \_<sub>bases</sub>\_\_ A tuple containing the base classes, in the order of their occurrence in the base class list.
-   \_<sub>doc</sub>\_\_ The class’s documentation string, or None if undefined.
-   \_<sub>annotations</sub>\_\_ A dictionary containing variable annotations collected during class body execution. For best
    practices on working with <span class="underline"><span class="underline">annotations</span></span>, please see Annotations Best Practices.
-   \_<sub>new</sub>\_<sub>(cls,&#x2026;)</sub> - static method - special-cased so you need not declare it as such. The return value of
    \_<sub>new</sub>\_<sub>()</sub> should be the new object instance (usually an instance of cls).
    -   typically: super().\_<sub>new</sub>\_<sub>(cls[, &#x2026;])</sub> with appropriate arguments and then modifying the newly-created
        instance as necessary before returning it.
    -   then the new instance’s \_<sub>init</sub>\_<sub>()</sub> method will be invoked
-   \_<sub>call</sub>\_<sub>(self,&#x2026;)</sub>

Class instances

-   super() - Return a proxy object that delegates method calls to a parent or sibling class of type
    -


<a id="orgc8b89d3"></a>

## inheritance


<a id="orga257e6c"></a>

### Constructor

-   classes whose base class is object should not call super().\_<sub>init</sub>\_<sub>()</sub>
-   class inherited from object by default
-   you should never write a class that inherits from object and doesn't have an <span class="underline"><span class="underline">init</span></span> method

designed for cooperative inheritance:
class CoopFoo:
    def \_<sub>init</sub>\_<sub>(self, \*args, \*\*kwargs)</sub>:
        super().\_<sub>init</sub>\_<sub>(\*args, \*\*kwargs)</sub>  # forwards all unused arguments

super(type, object-or-type)

-   type - get parent or sibling of type
-   object-or-type.mro() determines the method resolution order to be searched

super(self.\_<sub>class</sub>\_\_, self) == super()


<a id="orga9e29d4"></a>

### Subclassing:

-   direct - a - b
-   indirect - a - b - c
-   virtual - abstract base class

    class SubClassName (ParentClass1[, ParentClass2, ...]):
       'Optional class documentation string'
       class_suite


<a id="orgfcce632"></a>

### built-in functions that work with inheritance:

-   **isinstance(obj, int)** -  True only if obj.\_<sub>class</sub>\_\_ is int or some class derived from int
-   **issubclass(bool, int)** - True since bool is a subclass of int
-   type(ins) == a.\_<sub>class</sub>\_\_
-   type(ins) **is** Class<sub>name</sub>
-   isinstance(ins, Class<sub>name</sub>)
-   issubclass(ins.\_<sub>class</sub>\_\_, Class<sub>name</sub>)
-   class.mro() - get class.\_<sub>mro</sub>\_\_ attribute


<a id="org8c6f76f"></a>

### example

    class aa():
        def __init__(self, aaa, vv):
            self.aaa = aaa
            self.vv = vv
    
        def get(self):
            print(self.aaa + self.vv)
    
    class bb(aa):
        def __init__(self, aaa, *args, **kwargs):
            super().__init__(aaa, *args, **kwargs)
            self.aaa = aaa +'asd'
    
    
    s = bb('aa', 'vv')
    s.get()
    >> aaasdvv


<a id="org4da345f"></a>

### Multiple inheritance - left-to-right

-   Method Resolution Order (MRO) (какой метод вызывать из родителей) changes dynamically to support cooperative
    calls to super()   (**class.\_<sub>mro</sub>\_\_**) (obj.\_<sub>class</sub>\_\_.\_<sub>mro</sub>\_\_)

\_<sub>spam</sub> textually replaced with \_classname\_<sub>spam</sub> - в родительском классе при наследовании


<a id="orgbda01f1"></a>

### Abstract class (ABC - abstract base class)

-   <https://www.python.org/dev/peps/pep-3119/>
-   Numbers <https://www.python.org/dev/peps/pep-3141/>
-   abc <https://docs.python.org/3/library/abc.html>

Notes:

-   Dynamically adding abstract methods to a class, or attempting to modify the abstraction status of
    a method or class once it is created, are not supported.

    from abc import ABCMeta
    
    class MyABC(metaclass=ABCMeta):
        @abstractmethod
        def foo(self): pass
    
    # or
    from abc import ABC
    
    class MyABC(ABC):
        @abstractmethod
        def foo(self): pass
    
    class B(A):
        def __init__(self, first_name, last_name, salary):
            super().__init__(first_name, last_name) # if A has __init__
            self.salary = salary
        def foo(self):
            return true


<a id="org2b1dc56"></a>

### Virtual sublasses

Virtual subclass - subclass and their descendants of ABC. Made with <span class="underline">register</span> method which overloading
 isinstance() and issubclass()

    class MyABC(metaclass=ABCMeta):    pass
    MyABC.register(tuple)
    assert issubclass(tuple, MyABC) # tuple is virtual subclass of MyABC now


<a id="org0c8eaf6"></a>

### calling parent class constructor


<a id="org7f10d04"></a>

## Getters and setters <a id="org2f4b88a"></a>

-   no private variables

**@property** - pythonic way

    class Celsius:
        def __init__(self, temperature = 0):
            self.temperature = temperature
    
        def to_fahrenheit(self):
            return (self.temperature * 1.8) + 32
    
        def get_temperature(self):
            print("Getting value")
            return self._temperature
    
        def set_temperature(self, value):
            if value < -273:
                raise ValueError("Temperature below -273 is not possible")
            print("Setting value")
            self._temperature = value
    
        temperature = property(get_temperature,set_temperature)
    
    >>> c.temperature
    Getting value
    0
    >>> c.temperature = 37
    Setting value
    
    
    #----------- OR ------
    class Celsius:
        def __init__(self, temperature = 0):
            self.temperature = temperature
    
        def to_fahrenheit(self):
            return (self.temperature * 1.8) + 32
    
        @property
        def temperature(self):
            print("Getting value")
            return self._temperature
    
        @temperature.setter
        def temperature(self, value):
            if value < -273:
                raise ValueError("Temperature below -273 is not possible")
            print("Setting value")
            self._temperature = value


<a id="orgf3ec65f"></a>

## Polymorphism [pɔlɪˈmɔːfɪzm

**inheritance for shared behavior, not for polymorphism**

    class Square(object):
        def draw(self, canvas): pass
    
    class Circle(object):
        def draw(self, canvas): pass
    
    shapes = [Square(), Circle()]
    for shape in shapes:
        shape.draw('canvas')


<a id="org8847780"></a>

## Protocols or emulation

-   <https://docs.python.org/3/reference/datamodel.html>

Это переопределение скрытых методов, которые позволяют использовать класс в конструкциях.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Protocol</th>
<th scope="col" class="org-left">Methods</th>
<th scope="col" class="org-left">Supports syntax</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Sequence</td>
<td class="org-left">slice in <span class="underline"><span class="underline">getitem</span></span> etc.</td>
<td class="org-left">seq[1:2]</td>
</tr>


<tr>
<td class="org-left">Iterators</td>
<td class="org-left">_<sub>iter</sub>__, next</td>
<td class="org-left">for x in coll:</td>
</tr>


<tr>
<td class="org-left">Comparision</td>
<td class="org-left">_<sub>eq</sub>__, <span class="underline"><span class="underline">gt</span></span> etc.</td>
<td class="org-left">x == y, x &gt; y</td>
</tr>


<tr>
<td class="org-left">Numeric</td>
<td class="org-left">_<sub>add</sub>__, <span class="underline"><span class="underline">sub</span></span>, <span class="underline"><span class="underline">and</span></span>, etc.</td>
<td class="org-left">x+y, x-y, x&amp;y ..</td>
</tr>


<tr>
<td class="org-left">String like</td>
<td class="org-left">_<sub>str</sub>__, <span class="underline"><span class="underline">unicode</span></span>, <span class="underline"><span class="underline">repr</span></span></td>
<td class="org-left">print(x)</td>
</tr>


<tr>
<td class="org-left">Attribute access</td>
<td class="org-left">_<sub>getattr</sub>__, <span class="underline"><span class="underline">setattr</span></span></td>
<td class="org-left">obj.attr</td>
</tr>


<tr>
<td class="org-left">Context managers</td>
<td class="org-left">_<sub>enter</sub>__, <span class="underline"><span class="underline">exit</span></span></td>
<td class="org-left">with open('a.txt') as f:f.read()</td>
</tr>
</tbody>
</table>


<a id="org349de35"></a>

## private and protected

-   public - all
-   Protected: \_property
-   Provate: \_<sub>property</sub>


<a id="orgb9bb205"></a>

## object

object() or object - base for all clases

dir(object())

['<span class="underline"><span class="underline">class</span></span>', '<span class="underline"><span class="underline">delattr</span></span>', '<span class="underline"><span class="underline">dir</span></span>', '<span class="underline"><span class="underline">doc</span></span>', '<span class="underline"><span class="underline">eq</span></span>', '<span class="underline"><span class="underline">format</span></span>', '<span class="underline"><span class="underline">ge</span></span>', '<span class="underline"><span class="underline">getattribute</span></span>',
'<span class="underline"><span class="underline">gt</span></span>', '<span class="underline"><span class="underline">hash</span></span>', '<span class="underline"><span class="underline">init</span></span>', '<span class="underline"><span class="underline">init<sub>subclass</sub></span></span>', '<span class="underline"><span class="underline">le</span></span>', '<span class="underline"><span class="underline">lt</span></span>', '<span class="underline"><span class="underline">ne</span></span>', '<span class="underline"><span class="underline">new</span></span>', '<span class="underline"><span class="underline">reduce</span></span>',
'<span class="underline"><span class="underline">reduce<sub>ex</sub></span></span>', '<span class="underline"><span class="underline">repr</span></span>', '<span class="underline"><span class="underline">setattr</span></span>', '<span class="underline"><span class="underline">sizeof</span></span>', '<span class="underline"><span class="underline">str</span></span>', '<span class="underline"><span class="underline">subclasshook</span></span>']

-   \_<sub>dict</sub>\_\_ − Dictionary containing the class's namespace.
-   \_<sub>doc</sub>\_\_ - docstring
-   \_<sub>init</sub>\_\_ - constructor
-   \_<sub>str</sub>\_\_ - toString() - Return a string version of object
-   \_<sub>name</sub>\_ - Class name
-   \_<sub>module</sub>\_\_ - Module name in which the class is defined. This attribute is "<span class="underline"><span class="underline">main</span></span>" in interactive mode.
-   \_<sub>bases</sub>\_\_ − A possibly empty tuple containing the base classes, in the order of their occurrence in the base class list.
-   \_<sub>hash</sub>\_\_' - hashcode()
-   \_<sub>repr</sub>\_\_ - string printable representation of an object


<a id="org6f41c0c"></a>

## Singleton

-   simple
-   отложенный
-   Singleton на уровне модуля - Все модули по умолчанию являются синглетонами


<a id="org423935b"></a>

### example

    class Singleton(object):
        def __new__(cls):
            if not hasattr(cls, 'instance'):
                cls.instance = super(Singleton, cls).__new__(cls)
            return cls.instance
    # Отложенный экземпляр в Singleton
    class Singleton:
        __instance = None
        def __init__(self):
            if not Singleton.__instance:
                print(" __init__ method called..")
            else:
                print("Instance already created:", self.getInstance())
        @classmethod
        def getInstance(cls):
            if not cls.__instance:
                cls.__instance = Singleton()
            return cls.__instance


<a id="org7508e19"></a>

### шаблон Monostate

чтобы экземпляры имели одно и то же состояние

    class Borg:
       __shared_state = {"1": "2"}
       def __init__(self):
          self.x = 1
          self.__dict__ = self.__shared_state
          pass
    b = Borg()
    b1 = Borg()
    b.x = 4
    print("Borg Object 'b': ", b) ## b and b1 are distinct objects
    print("Borg Object 'b1': ", b1)
    print("Object State 'b':", b.__dict__)## b and b1 share same state
    print("Object State 'b1':", b1.__dict__)
    >> ("Borg Object 'b': ", <__main__.Borg instance at 0x10baa5a70>)
    >> ("Borg Object 'b1': ", <__main__.Borg instance at 0x10baa5638>)
    >> ("Object State 'b':", {'1': '2', 'x': 4})
    >> ("Object State 'b1':", {'1': '2', 'x': 4})


<a id="org002abb8"></a>

## anonumous class

-   <https://docs.python.org/3/library/types.html#types.SimpleNamespace>
-   <https://docs.python.org/3/library/collections.html#collections.namedtuple>


<a id="org9067d45"></a>

### 1

class Bunch(dict):
    <span class="underline"><span class="underline">getattr</span></span>, <span class="underline"><span class="underline">setattr</span></span> = dict.get, dict.\_<sub>setitem</sub>\_\_

dict(x=1,y=2) or {'x':1,'y':2}

Bunch(dict())


<a id="org73d45d1"></a>

## replace method

    class A():
        def cc(self):
            print("cc")
    
    c = A.cc
    
    def ff(self):
        print("ff")
        c(self)
    
    A.cc = ff
    a = A()
    a.cc()

    ff
    cc

    class A():
        def cc(self):
            print("cc")
    
    a = A()
    c = a.cc
    
    def ff(self):
        print("ff")
        c()
    
    A.cc = ff
    a = A()
    a.cc()

    ff
    cc


<a id="org42b8683"></a>

# modules and packages

-   module - file
-   package - folder - must have: <span class="underline"><span class="underline">init</span></span>.py to be able to import folder as a module.
-   \_<sub>main</sub>\_<sub>.py</sub> - allow to execute folder: python -m folder

module can define

-   functions
-   classes
-   variables
-   runnable code.

**When a module is imported (anyhow) into a script, the code in the top-level portion of a module is executed
only once.**

Import whole file - обращаться с файлом -

    import module1[, module2[,... moduleN]
    import support   #just a file support.py
    
    support.print_func("Zara")

Import specific thing from file **to access without module**

    from modname import name1[, name2[, ... nameN]]
    from modname import *

\_<sub>name</sub>\_\_ - name of this module.

**Locating Modules**:

-   current dir
-   PYTHONPATH - shell variable -  list of directories
-   default path. On UNIX   *usr/local/lib/python3*

build-in functions

-   **dir(math)** - list of strings containing the names defined by a module or in current
-   **locals()** - within a function, it will return all the names that can be accessed locally from that function
    (dictionary)
-   **global()** return dictionary type
-   **reload(module)** reexecute the top-level code of module.

To make all of your functions available when you have imported Phone:

    from Pots import Pots
    from Isdn import Isdn
    from G3 import G3

**Main**

    def main(args):pass
    if __name__ == '__main__':  #name of module-namespace. '__main__' for - $python a.py
        import sys
        main(sys.argv)
        quit()


<a id="orga2c1ad1"></a>

## module special  attributes (Module level "dunders") [-ʌndə(ɹ)]

-   \_<sub>name</sub>\_\_
-   \_<sub>doc</sub>\_\_
-   \_<sub>dict</sub>\_\_ - module’s namespace as a dictionary object
-   \_<sub>file</sub>\_\_ - is the pathname of the file from which the module was loaded, if it was loaded from a file.
-   \_<sub>annotations</sub>\_\_ - optional - dictionary containing variable annotations collected during module body execution


<a id="org95382a1"></a>

# functions

-   python does not support method overloading
-   Можно объявлять функции внутри функций
-   Функции видят область где они определены, а не где вызваны.
-   Если функция ничего не возвращает, то возвращает **None**
-   Функция может возвращать return a, b = (a,b) котороые присваиваются нескольким переменным : a,b =
    c()


<a id="org1481040"></a>

## by value or by reference

by value:

-   immutable:
    -   strings
    -   integers
    -   tuples
    -   others&#x2026;

by reference:

-   muttable:
    -   objects
    -   lists, sets, dicts


<a id="org87fd0d4"></a>

## Types of Аргументы функции

-   Positional arguments (first, second, third=None, fourth=None) (first, second) - positional, (third,
    fourth) - Keyword arguments
-   Keyword arguments - printinfo( age = 50, name = "miki" ) - order does not metter
-   Default arguments -  def printinfo( name, age = 35 ):
-   Variable-length or Arbitrary Argument Lists positional arguments

    def printinfo( arg1, *vartuple ):
      for var in vartuple:
         print (var)
    printinfo (1, 'asd','d31', 'cv')

-   Variable-length or Arbitrary Argument Lists Keyword arguments

    def save_ranking(**kwargs):
      print(kwargs)
    save_ranking(first='ming', second='alice', fourth='wilson', third='tom', fifth='roy')
    >>> {'first': 'ming', 'second': 'alice', 'fourth': 'wilson', 'third': 'tom', 'fifth': 'roy'}

-   both

    def save_ranking(*args, **kwargs):
    save_ranking('ming', 'alice', 'tom', fourth='wilson', fifth='roy')


<a id="org89a68f4"></a>

## example

    def functionname( parameters:type ) -> return_type:
       "function_docstring"
       function_suite
       return [expression]
    
    
    def readit(file :str, fun :callable) ->list:


<a id="orgf5b15f4"></a>

## arguments, anonymous-lambda, global variables

**Anonymous Functions**: - one-line version of a function

    lambda [arg1 [,arg2,.....argn]]:expression
    (lambda x, y: x + y)(1, 2)

**global variables** can be accessesd from all functions (except lambda??? - working in console)

    # global Money  # Uncomment to replace local Money to global.
      Money = Money + 1 #local


<a id="org22fc613"></a>

## attributes

User-defined function

-   \_<sub>doc</sub>\_\_
-   \_<sub>name</sub>\_\_
-   \_<sub>qualname</sub>\_\_
-   \_<sub>module</sub>\_\_
-   \_<sub>defaults</sub>\_\_
-   \_<sub>code</sub>\_\_
-   \_<sub>globals</sub>\_\_
-   \_<sub>dict</sub>\_\_
-   \_<sub>closure</sub>\_\_
-   \_<sub>annotations</sub>\_\_
-   \_<sub>kwdefaults</sub>\_\_
    
    Instance methods: read-only attributes:
-   \_<sub>self</sub>\_\_ - class instance object
-   \_<sub>func</sub>\_\_ - function object
-   \_<sub>module</sub>\_\_ - name of the module the method was defined in


<a id="orga94d161"></a>

## function decorators

-   <https://docs.python.org/3/glossary.html#term-decorator>
-   <https://www.thecodeship.com/patterns/guide-to-python-function-decorators/>

function that get one function and returning another function

-   when you need to extend the functionality of functions that you don't want to modify
-   @classmethod

Typically used to catch exceptions in wrapper

    def p_decorate(f):
       def inner(name): # wrapper
           # do something here!
           f() # we call wrapped function
       return inner
    
    my_get_text = p_decorate(get_text) # обертываем, теперь
    my_get_text("John") #о бертка вернет и вызовет вложенную
    
    #syntactic sugar
    @p_decorate
    def get_text(name):
       return "bla " + name
    
    #-------------
    get_text = div_decorate(p_decorate(strong_decorate(get_text)))
    # Equal to
    @div_decorate
    @p_decorate
    @strong_decorate
    
    #-------------- Passing arguments to decorators ------
    def tags(tag_name):
        def tags_decorator(func):
    	def func_wrapper(name):
    	    return "<{0}>{1}</{0}>".format(tag_name, func(name))
    	return func_wrapper
        return tags_decorator
    
    @tags("p")
    def get_text(name):
        return "Hello "+name
    def get_text(name):


<a id="orgcca5587"></a>

## build-in

<https://docs.python.org/3/library/functions.html>

-   **abs(x):** absolute value
-   **all(iterable):** all elements of the iterable are true or empty = true
-   **any(iterable):** any element is true or empty = false
-   **ascii(object):** printable representation of an object
-   **breakpoint(\*args, \*\*kws):** drops you into the debugger at the call site. calls sys.breakpointhook() which
    calls calls pdb.set<sub>trace</sub>()
-   **callable(object):** if the object - callable type - true. (classes are callable )
-   **@classmethod:** function decorator. May be called for class C.f() or for instance C().f() For derived class
    derived class object is passed as the implied first argument.

    class C:
       @classmethod
       def f(cls, arg1, arg2, ...): ...

-   **compile(source, filename, mode, flags=0, dont<sub>inherit</sub>=False, optimize=-1):** into code or AST object - can
    be executed by exec() or eval(). Mode - 'exec' if source consists of a sequence of statements. 'eval' if
    it consists of a single expression
-   **delattr(object, name):** like setattr() - delattr(x, 'foobar') is equivalent to del x.foobar.
-   **divmod(a, b):** ab-two (non complex) numbers =  quotient and remainder when using integer division
-   **enumerate(iterable, start=0):** return iterator which returns tuple (0, arg1), (1,arg1) ..
-   **eval(expression, globals=None, locals=None):** string is parsed and evaluated as a Python expression .  The
    globals() and locals() functions returns the current global and local dictionary, respectively, which may
    be useful to pass around for use by eval() or exec().
-   **exec(object[, globals[, locals]]):** object must be either a string or a code object. Be aware that the
    return and yield statements may not be used outside of function definitions even within the context of
    code passed to the exec() function. The return value is None.
-   **filter(function, iterable):** Construct an iterator from those elements of iterable for which function returns true.
-   **getattr(object, name[, default]):** eturn the value of the named attribute of object.  *name* must be a
    string or *AttributeError* is raised
-   **setattr(object, name, value):** assigns the value to the attribute, provided the object allows it
-   **globals():** dictionary representing the current global symbol table (inside a function or method, this is
    the module where it is defined, not the module from which it is called)x
-   **hasattr(object, string name):** result is True if the string is the name of one of the object’s attributes, False if not
-   **hash(object):** Hash values are integers. Object \_<sub>hash</sub>\_<sub>()</sub> method.
-   **id(object):** “identity” of an object - integer. Unique and constant during life time. Two objects with
    non-overlapping lifetimes may have the same id() value.
-   **isinstance(object, classinfo):** True if object is an instance of the classinfo argument.
-   **issubclass(class, classinfo):** true if <span class="underline">class</span> is a subclass of <span class="underline">classinfo</span>.  class is considered a subclass
    of itself
-   **iter(object[, sentinel]):** 1) Return an iterator object. \_<sub>iter</sub>\_<sub>()</sub> or \_<sub>getitem</sub>\_<sub>()</sub> 2) object must be a
    callable object \_<sub>next</sub>\_<sub>()</sub> if the value returned is equal to sentinel, StopIteration will be raised
-   **next(iterator[, default]):** \_<sub>next</sub>\_<sub>()</sub> If **default** is given, it is returned if the iterator is exhausted
-   **len(s):** .
-   **map(function, iterable, &#x2026;):** Return an iterator that applies function to every item of iterable. May be
    applied in parallel to may iterable.
-   **max/min(iterable, \*[, key, default]):** .
-   **max/min(arg1, arg2, \*args[, key]):** largest item in an iterable or the largest of two or more arguments
-   **memoryview(obj):** memory view” object
-   **pow(x, y[, z]):** (x\*\* y) % z
-   **repr(object):** \_<sub>repr</sub>\_<sub>()</sub> method - printable representation of an object
-   **reversed(seq):** \_<sub>reversed</sub>\_<sub>()</sub> method or support **sequence protocol** (the \_<sub>len</sub>\_<sub>()</sub> method and the
    \_<sub>getitem</sub>\_<sub>()</sub>
-   **round(number[, ndigits]):** number rounded to ndigits precision after the decimal point
-   **sorted(iterable, \*, key=None, reverse=False):** sorted list []  from the items in iterable
-   **@staticmethod:** method into a static method.
-   **sum(iterable[, start]):** returns the total
-   **super([type[, object-or-type]]):** Return a proxy object that delegates method calls to a parent/parents or sibling class of type
-   **vars([object]):** \_<sub>dict</sub>\_\_ attribute for a module, class, instance, or any other object
-   **zip(\*iterables):** Make an iterator of tuples that aggregates elements from each of the iterables.
    -   list(zip([1, 2, 3],[1, 2, 3])) = [(1, 1), (2, 2), (3, 3)]
    -   unzip: list(zip(\*zip([1, 2, 3],[1, 2, 3]))) = [(1, 2, 3), (1, 2, 3)]
-   **\_<sub>import</sub>\_<sub>(name, globals=None, locals=None, fromlist=(), level=0)</sub>:** not needed in everyday Python
    programming

---

-   **class bool([x]):** standard truth testing procedure see [8.4](#org0d8b868)
-   **class bytearray([source[, encoding[, errors]]]):** -mutable If it is a string, you must also give the
    encoding - it will use str.encode()
-   **class bytes([source[, encoding[, errors]]]):** -immutable
-   **class complex([real[, imag]]):** complex('1+2j'). - default - 0j
-   **class dict(\*\*kwarg):** dict(one=1, two=2, three=3) = {'one': 1, 'two': 2, 'three': 3}; dict([('two', 2),
    ('one', 1), ('three', 3)])
-   **class dict(mapping, \*\*kwarg):** ????
-   **class dict(iterable, \*\*kwarg):** dict(zip(['one', 'two', 'three'], [1, 2, 3]))
-   **class float([x]):** from a number or string x.
-   **class frozenset([iterable]):** see [8.3](#org9908a6d).
-   **class int([x]):** x.\_<sub>int</sub>\_<sub>()</sub> or x.\_<sub>trunc</sub>\_<sub>()</sub>.
-   **class int(x, base=10):** .
-   **class list([iterable]):** .
-   **class object:** Return a new featureless object.
-   **class property(fget=None, fset=None, fdel=None, doc=None):** 

-   **class range(stop):** 

-   **class range(start, stop[, step]):** immutable sequence type
-   **class set([iterable]):** .
-   **class slice(stop):** .
-   **class str(object=''):** .
-   **class str(object=b'', encoding='utf-8', errors='strict'):** .
-   **tuple([iterable]):** .
-   **class type(object):** object.\_<sub>class</sub>\_\_
-   **class type(name, bases, dict):** .

---

-   **input([prompt]):** return input input from stdin.
-   **open(file, mode='r', buffering=-1, encoding=None, errors=None, newline=None, closefd=True, opener=None):** Open
    file and return a corresponding file object.
-   **print(\*objects, sep=' ', end='\n', file=sys.stdout, flush=False):** to file or sys.stdout
-   **dir([object]):** list of valid attributes for that object. or list of names in the current local
    scope. \_<sub>dir</sub>\_<sub>()</sub> - method called - dir() - Is supplied primarily as a convenience for use at
    an interactive prompt
-   **help([object]):** built-in help system
-   **locals():** the current local symbol table

---

-   **bin(x):** bin(3) -> '0b11'
-   **chr(i):** Return the string representing a character = i - Unicode code
-   **hex(x):** hex(255) = '0xff'
-   **format(value[, format<sub>spec</sub>]):** <https://docs.python.org/3/library/string.html#formatspec>
-   **oct(x):** Convert an integer number to an octal string prefixed with “0o”.
-   **ord(c):** c - string representing one Unicode character. Return integer.


<a id="orgbaddc2c"></a>

## Closure

    def compose_greet_func(name):
        def get_message():
            return "Hello there "+name+"!"
    
        return get_message
    
    greet = compose_greet_func("John")
    print(greet())


<a id="orgdfd7e05"></a>

## overloading

    from functools import singledispatch
    
    @singledispatch
    def func(arg1, arg2):
        print("default implementation of func - ", arg1, arg2)
    
    @func.register
    def func_impl_1(arg1: str, arg2):
        print("Implementation of func with first argument as string - ", arg1, arg2)
    
    @func.register
    def func_impl_2(arg1: int, arg2):
        print("Implementation of func with first argument as int - ", arg1, arg2)
    
    
    func(1, "hello")
    func("test", "hello")
    func(1.34, "hi")

    Implementation of func with first argument as int -  1 hello
    Implementation of func with first argument as string -  test hello
    default implementation of func -  1.34 hi


<a id="org9036b61"></a>

# asterisk(\*)

1.  For multiplication and power operations.
    -   2\*3 = 6
    -   2\*\*3 = 8
2.  For repeatedly extending the list-type containers.
    -   (0,) \* 100
3.  For using the variadic arguments. "Packaging"  - def save<sub>ranking</sub>(\*args, \*\*kwargs):
    -   \*args - tuple
    -   \*\*kwargs - dict
4.  For unpacking the containers.(so-called “unpacking”) чтобы передать список в  variadic arguments

    def product(*numbers):
    product(*[2, 3, 5, 7, 11, 13])

1.  for arguments of function. all after \* - keyword ony, after / - positional or keyword only

    def another_strange_function(a, b, /, c, *, d):


<a id="org569d503"></a>

# with

with ContexManager() as c1, ContexManager() as c2:


<a id="orgcf54cc8"></a>

## Context manager class TEMPLATE

    class DatabaseConnection(object):
        def __enter__(self):
            # make a database connection and return it
            ...
            return self.dbconn
    
        def __exit__(self, exc_type, exc_val, exc_tb):
            # make sure the dbconnection gets closed
            self.dbconn.close()


<a id="org5cfa389"></a>

# Operators and control structures

Ternary operation:    a if condition else b


<a id="org348e348"></a>

## basic

**Arithmetic**

-   + - \*
-   / - 9/2 = 4,5 - Division
-   % - 9%2 = 1 - Modulus - returns remainder
-   \*\* - Exponent
-   // - Floor Division 9 //2 = 4     -9/2 = -5
-   += -= \*= /= %= \*\*= //=

**Comparison**
`= !` <> > < >= <=

**Bitwise**

-   &
-   |
-   ^ - XOR
-   ~ - ~a  = 1100 0011
-   << - a<<2 = 1111 0000
-   >>

**Logical** - AND - OR - NOT

**Membership** - in,  not in

**Identity Operators** ( point to the same object) - is,  is not


<a id="orgc249dc3"></a>

## Operator Precedence (Приоритет) *ˈpresədəns*

<https://docs.python.org/3/reference/expressions.html#operator-precedence>

1.  Binding or parenthesized expression, list display, dictionary display, set display
    -   (expressions&#x2026;),
    -   [expressions&#x2026;], {key: value&#x2026;}, {expressions&#x2026;}
2.  Subscription, slicing, call, attribute reference
    -   x[index], x[index:index], x(arguments&#x2026;), x.attribute
3.  await x - Await expression
4.  \*\* - Exponentiation [5]
5.  +x, -x, ~x - Positive, negative, bitwise NOT
6.  \*, @, *, /*, % - Multiplication, matrix multiplication, division, floor division, remainder [6]
7.  +, - - Addition and subtraction
8.  <<, >> - Shifts
9.  & - Bitwise AND
10. ^ - Bitwise XOR
11. | - Bitwise OR
12. in, not in, is, is not, <, <=, >, >=, !=, == - Comparisons, including membership tests and identity tests
13. not x - Boolean NOT
14. and - Boolean AND
15. or - Boolean OR
16. if – else - Conditional expression
17. lambda - Lambda expression
18. := - Assignment expression

old:

1.  \*\*
2.  ~ + - unary
3.  \* / % //
4.  + -
5.  >> <<
6.  &
7.  ^ |
8.  <= < > >=
9.  <> `= !` Equality operators
10. = %= /= //= -= += \*= \*\*= Assignment operators
11. is is not
12. in not in
13. not or and - Logical operators


<a id="orgcfad475"></a>

## value unpacking

    x=("v1", "v2")
    a,b = x
    print a,b
    # v1 v2
    
    T=(1,)
    b,=T
    # b= 1


<a id="orgb934051"></a>

## if, loops

    if expression1:
        statement(s)
    elif statement(s):
        statement(s)
    
    while expression:
       statement(s)
    
    while count < 5:
       print count, " is  less than 5"
       count = count + 1
    else:  # when the condition becomes false or at the end
       print count, " is not less than 5"
    
    for iterating_var in sequence:
       statements(s)
    else: # when no break encountered
       print num, 'is a prime number'
    
    
    break # Terminates the loop
    continue # skip the remainder
    pass # null operation - just stupid empty operator - nothing else.
    
    #Compcat loops, double loop
    [print(x,y) for x in range(1000) for y in range(x, len(range(1000)))]
    [g for g in [x['whole_word_timestamps'] for x in whisper_stable_result]] # list created everyloop
    
    for item in array: array2.append (item)


<a id="orgeadb3cf"></a>

## match 3.10

    command = input("What are you doing next? ")
    
    match command.split():
        case [action]:
            ... # interpret single-verb action
        case [action, obj]:
            ... # interpret action, obj
        case ["quit"]:
            print("Goodbye!")
            quit_game()


<a id="org83bb93c"></a>

## Slicing Sequence

-   a[i:j] - i to j
-   s[i:j:k] - slice i to j with step k;

s = range(10) - [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

-   s[-2] - = 8
-   s[1:] - [1, 2, 3, 4, 5, 6, 7, 8, 9]
-   s[1::] - [1, 2, 3, 4, 5, 6, 7, 8, 9]
-   s[:2] - [0, 1]
-   s[:-2] - [0, 1, 2, 3, 4, 5, 6, 7]
-   s[-2:] - [8, 9]
-   s[::2] - [0, 2, 4, 6, 8]
-   s[::-1] -[9, 8, 7, 6, 5, 4, 3, 2, 1, 0]


<a id="orgf28cf49"></a>

# Traverse or iteration over containers

-   see [18.1](#org23a6c48)


<a id="org419d187"></a>

## iterator object <a id="orgfbfcb14"></a>

From simple to complex:

1.  **Iterable** - Object that can be used in **for**, zip, map, in statements - must have \_<sub>iter</sub>\_<sub>()</sub>
2.  **Iterator** - Object with  \_<sub>iter</sub>\_<sub>()</sub> and \_<sub>next</sub>\_<sub>()</sub>. iterator is also iterable.
3.  **generator** - method with **yield** that magically create **iterator**, usable in next().

built-in methods

-   iter(object) - create Iterable object from **list**
-   iter(object, sentinel) - if the value of \_<sub>next</sub>\_<sub>()</sub> is equal to sentinel, StopIteration will be raised.
-   next(iterator) - call \_<sub>next</sub>\_<sub>()</sub> method of object.
-   next(iterator, default)

Behind the scenes **for** statement calls **iter()**- **iterator object**

-   \_<sub>next</sub>\_<sub>()</sub> - when nothig left -  raises a StopIteration exception.

    #remove in loop: https://docs.python.org/3/reference/compound_stmts.html#the-for-statement
    for f in ret[:]:
      ret.remove(f)
    
    for element in [1, 2, 3]:
        print(element)
    for element in (1, 2, 3):
        print(element)
    for key in {'one':1, 'two':2}:
        print(key)
    for char in "123":
        print(char)
    for line in open("myfile.txt"):
        print(line, end='')
    
    
    class Reverse: # add iterator behavior to your classes
        """Iterator for looping over a sequence backwards."""
        def __init__(self, data):
            self.data = data
            self.index = len(data)
    
        def __iter__(self):
            return self
    
        def __next__(self):
            if self.index == 0:
                raise StopIteration
            self.index = self.index - 1
            return self.data[self.index]
    
    rev = Reverse('spam')
    for char in rev:
        print(char)
    
    #compact form
    >>> t = {x: x*x for x in range(0, 4)}
    >>> print(t)
    {0: 0, 1: 1, 2: 4, 3: 9}


<a id="orgfb3495e"></a>

## iterate dictionary

-   for key in a<sub>dict</sub>:
-   for item in a<sub>dict.items</sub>(): - tuple
-   for key, value in a<sub>dict.items</sub>():
-   for key in a<sub>dict.keys</sub>():
-   for value in a<sub>dict.values</sub>():

Since Python 3.6, dictionaries are ordered data structures, so if you use Python 3.6 (and beyond), you’ll be
able to sort the items of any dictionary by using sorted() and with the help of a dictionary comprehension:

-   sorted<sub>income</sub> = {k: incomes[k] for k in sorted(incomes)}
-   sorted() - sort keys


<a id="org97932b9"></a>

# The Language Reference

-   <https://docs.python.org/3/reference/>


<a id="org9640346"></a>

## yield and generator expression <a id="org23a6c48"></a>

form of coroutine

-   (expression comp<sub>for</sub>) - (x\*y for x in range(10) for y in range(x, x+10)) =
    <generator object>

Yield - используется для создания генератора. используется для создания лопа.

-   используется только в функции.
-   как return только останавливается после возврата если в лупе или в других случаях
-   async def - asynchronous generator - not iterable - <async<sub>generator</sub> object -(Coroutine objects)
-   async gen - not implement <span class="underline"><span class="underline">iter</span></span> and <span class="underline"><span class="underline">next</span></span> methods


<a id="org2da279b"></a>

## yield from

allow to

    def gen_list1(iterable):
        for i in list(iterable):
            yield i
    
    # equal to:
    def gen_list2(iterable):
        yield from list(iterable)


<a id="org45949ca"></a>

## ex

    def agen():
        for n in range(1, 10):
              yield n
    
    [1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    
    def a():
        for n in range(1, 3):
              yield n
    def agen():
        for n in range(1, 7):
              yield from a()
    
    [1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2]
    
    #-------------------------
    async def ticker(delay, to):
        """Yield numbers from 0 to *to* every *delay* seconds."""
        for i in range(to):
            yield i
            await asyncio.sleep(delay)


<a id="org56fac90"></a>

## function decorator

\#+name example<sub>1</sub>

        def hello(func):
        def inner():
            print("Hello ")
            func()
        return inner
    
    @hello
    def name():
        print("Alice")

\#+name exampl<sub>2</sub>

        def star(n):
        def decorate(fn):
            def wrapper(*args, **kwargs):
                print(n*'*')
                result = fn(*args, **kwargs)
                print(result)
                print(n*'*')
                return result
            return wrapper
        return decorate
    
    
    @star(5)
    def add(a, b):
        return a + b
    
    
    add(10, 20)


<a id="org79cd6fd"></a>

## class decorator

-   print(f.\_<sub>name</sub>\_\_) of wrapper
-   print(f.\_<sub>doc</sub>\_\_)  of wrapper
    
    \#+name ex1
    
        from functools import wraps
        
        class Star:
            def __init__(self, n):
        	self.n = n
        
            def __call__(self, fn):
        	@wraps(fn) # addition to fix f.__name__ and __doc__
        	def wrapper(*args, **kwargs):
        	    print(self.n*'*')
        	    result = fn(*args, **kwargs)
        	    print(result)
        	    print(self.n*'*')
        	    return result
        	return wrapper
        
        @Star(5)
        def add(a, b):
            return a + b
        
        # or
        add = Star(5)(add)
        
        add(10, 20)


<a id="org6f709db"></a>

## lines

**new line**

-   Конец строки - Unix LF, Windows CR LF, Macintosh CR - All of these forms can be used equally, regardless of
    platform
-   In Python - C conventions for newline characters - \n - ASCII LF

**Comments**

    # - line
    """ comment """ - multiline

**Line joining** - cannot carry a comment

    if 1900 < year < 2100 and 1 <= month <= 12 \
      and 1 <= day <= 31 and 0 <= hour < 24 # Looks like a valid date

**Implicit line joining**

    month_names = ['Januari', 'Februari', 'Maart',      #you can
                   'Oktober', 'November', 'December']   #do it

**Blank line** - contains only spaces, tabs, formfeeds(FFor \f) and possibly a comment


<a id="orga6de273"></a>

## Indentation

-   Leading whitespace (spaces and tabs)
-   determine the grouping of statements
-   **TabError** - if a source file mixes tabs and spaces in a way that makes the meaning dependent on the worth
    of a tab in spaces

Tabs are replaced - 1-7


<a id="orgf4c5ac3"></a>

## identifier [aɪˈdentɪfaɪər] or names

[A-Za-z<sub>(0-9 except for firest char)</sub>] - case sensitive

-   and unicode <https://www.dcl.hpi.uni-potsdam.de/home/loewis/table-3131.html>

Reserved classes of identifiers

-   \_\*
-   \\\_\\\_\\\*\\\_\\\_
-   \_<sub>\*</sub>


<a id="org381a388"></a>

## Keywords Exactly as written here:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">False</td>
<td class="org-left">await</td>
<td class="org-left">else</td>
<td class="org-left">import</td>
<td class="org-left">pass</td>
</tr>


<tr>
<td class="org-left">None</td>
<td class="org-left">break</td>
<td class="org-left">except</td>
<td class="org-left">in</td>
<td class="org-left">raise</td>
</tr>


<tr>
<td class="org-left">True</td>
<td class="org-left">class</td>
<td class="org-left">finally</td>
<td class="org-left">is</td>
<td class="org-left">return</td>
</tr>


<tr>
<td class="org-left">and</td>
<td class="org-left">continue</td>
<td class="org-left">for</td>
<td class="org-left">lambda</td>
<td class="org-left">try</td>
</tr>


<tr>
<td class="org-left">as</td>
<td class="org-left">def</td>
<td class="org-left">from</td>
<td class="org-left">nonlocal</td>
<td class="org-left">while</td>
</tr>


<tr>
<td class="org-left">assert</td>
<td class="org-left">del</td>
<td class="org-left">global</td>
<td class="org-left">not</td>
<td class="org-left">with</td>
</tr>


<tr>
<td class="org-left">async</td>
<td class="org-left">elif</td>
<td class="org-left">if</td>
<td class="org-left">or</td>
<td class="org-left">yield</td>
</tr>
</tbody>
</table>


<a id="orgcdaf8dc"></a>

## Numeric literals

-   integers
-   floating point numbers - 3.14    10.    .001    1e100    3.14e-10    0e0    3.14<sub>15</sub><sub>93</sub>
-   imaginary numbers ????? - 3.14j   10.j    10j     .001j   1e100j   3.14e-10j   3.14<sub>15</sub><sub>93j</sub>

-1 - expression composed of the unary operator ‘-‘ and the literal 1


<a id="org46dd44e"></a>

### integers

integer      ::=  decinteger | bininteger | octinteger | hexinteger
decinteger   ::=  nonzerodigit (["<span class="underline">"] digit)\* | "0"+ (["</span>"] "0")\*
bininteger   ::=  "0" ("b" | "B") (["<span class="underline">"] bindigit)+
octinteger   ::=  "0" ("o" | "O") (["</span>"] octdigit)+
hexinteger   ::=  "0" ("x" | "X") (["\_"] hexdigit)+
nonzerodigit ::=  "1"&#x2026;"9"
digit        ::=  "0"&#x2026;"9"
bindigit     ::=  "0" | "1"
octdigit     ::=  "0"&#x2026;"7"
hexdigit     ::=  digit | "a"&#x2026;"f" | "A"&#x2026;"F"


<a id="org0fbc938"></a>

### float

-   floatnumber   ::=  pointfloat | exponentfloat
-   pointfloat    ::=  [digitpart] fraction | digitpart "."
-   exponentfloat ::=  (digitpart | pointfloat) exponent
-   digitpart     ::=  digit (["\_"] digit)\*
-   fraction      ::=  "." digitpart
-   exponent      ::=  ("e" | "E") ["+" | "-"] digitpart

3.14    10.    .001    1e100    3.14e-10    0e0    3.14<sub>15</sub><sub>93</sub>


<a id="orgcb712f6"></a>

### Imaginary literals

imagnumber ::=  (floatnumber | digitpart) ("j" | "J")

3.14j   10.j    10j     .001j   1e100j   3.14e-10j   3.14<sub>15</sub><sub>93j</sub>


<a id="org3d18336"></a>

## Docstring and comments

first thing in a class/function/module

'''
This is a multiline
comment.
'''


<a id="org97aaeb3"></a>

## Simple statements

-   assert
-   pass
-   del
-   return
-   yield????
-   raise - without argument - re-raise the exception in try except
-   break
-   continue
-   import
-   global indentifiers\*\* - tell pareser to treat identifier as global. Когда есть функция и глобальные переменные
-   nonlocal indentifier\*\* - когда есть функция внутри функции. переменные в первой функции - не глобальные и не
    локальные


<a id="orgfbcddb8"></a>

## call external process

if shell=True you cannot use array of arguments


<a id="orgb5236f9"></a>

### ex

    # -- 1
    import os
    os.system("echo Hello World")
    # can no pass input
    # -- 2
    import os
    pipe=os.popen("dir *.md")
    print (pipe.read())
    
    # -- 2
    import subprocess
    subprocess.Popen("echo Hello World", shell=True, stdout=subprocess.PIPE).stdout.read()
    
    # -- 3 old
    import subprocess
    subprocess.call("echo Hello World", shell=True)
    
    # -- 4
    import subprocess
    print(subprocess.run("echo Hello World", shell=True))
    
    # -- 5
    import subprocess
    (ls_status, ls_output) = subprocess.getstatusoutput(ls_command)
    
    # -- 6
    # returns output as byte string
    returned_output = subprocess.check_output(cmd)
    # using decode() function to convert byte string to string
    print('Current date is:', returned_output.decode("utf-8"))
    
    # -- 7 with timeout
    import subprocess
    DELAY = 10
    po = subprocess.Popen(["sleep 1; echo 'asd\nasd'"], shell=True, stdout=subprocess.PIPE)
    po.wait(DELAY)
    print(po.stdout.read().decode('utf-8'))
    print("ok")


<a id="org27ce799"></a>

### ex: call shell command and get stdout stderr and check return status

    import subprocess
    
    def run_command(command):
        try:
            result = subprocess.run(command, shell=True, capture_output=True, text=True)
            stdout = result.stdout.strip()
            stderr = result.stderr.strip()
            returncode = result.returncode
            return stdout, stderr, returncode
        except Exception as e:
            print(f"Error: {e}")
            return None, None, None
    
    command = "ls -l"
    stdout, stderr, returncode = run_command(command)
    
    if returncode == 0:
        print(f"Command '{command}' executed successfully.")
        print(f"stdout: {stdout}")
    else:
        print(f"Command '{command}' failed with return code {returncode}.")
        print(f"stderr: {stderr}")


<a id="orgcc29d7c"></a>

### links

<https://docs.python.org/3/library/subprocess.html>


<a id="orgaf5a546"></a>

## Timeout on subprocess readline in Python


<a id="orgd023cd4"></a>

### 1

    import asyncio
    
    async def read_stdout(process):
        # Read from the stdout pipe
        while True:
            line = await process.stdout.readline()
            if not line:
                break
            yield line.decode().strip()
    
    
    async def main():
        # Create a subprocess
        process = await asyncio.create_subprocess_exec('ls', stdout=asyncio.subprocess.PIPE, stderr=asyncio.subprocess.PIPE)
    
        # Set the timeout in seconds
        timeout = 10
    
        try:
            while True:
                line = await asyncio.wait_for(read_stdout(process).__anext__(), timeout=timeout)
                if not line:
                    break
                print(line)
        except asyncio.TimeoutError:
            # If no data is available within the timeout, handle it
            print("Timeout occurred")
        finally:
            # Ensure the subprocess is terminated if necessary
            if process.returncode is None:
                process.terminate()
                await process.wait()
    
    asyncio.run(main())


<a id="org3a7212c"></a>

### 2

    import asyncio
    
    async def _read_stdout(process):
        # Read from the stdout pipe
        return await process.stdout.readline()
    
    async def read_stdout(process, timeout):
        while True:
            line = await asyncio.wait_for(_read_stdout(process),
                                          timeout=timeout)
            if line:
                yield line.decode().strip()
            else:
                break
    
    async def main():
        # Create a subprocess
        process = await asyncio.create_subprocess_exec(
            'ls',
            stdout=asyncio.subprocess.PIPE,
            stderr=asyncio.subprocess.PIPE)
    
        # Set the timeout in seconds
        timeout = 1
    
        try:
            async for line in read_stdout(process, timeout):
                print(line)
    
        except asyncio.TimeoutError:
            # If no data is available within the timeout, handle it
            print("Timeout occurred")
        finally:
            # Ensure the subprocess is terminated if necessary
            # may spawn: child process pid 1701 exit status already read:  will report returncode 255
            if process.returncode is None: # if TimeoutError also
                process.terminate()
                await process.wait()
    
    asyncio.run(main())


<a id="org3745ec2"></a>

### 3

    #+begin_src python :results output :exports both :session s1
    import asyncio
    
    async def _read_stdout(process):
        # Read from the stdout pipe
        line = await process.stdout.readline()
        if line is not None:
            return line.decode().strip()
        else:
            return None
    
    async def read_lines():
        # Create a subprocess
        args = ['ls', '-al']
        process = await asyncio.create_subprocess_exec(
            *args, # 'ls', '-al',
            stdout=asyncio.subprocess.PIPE,
            stderr=asyncio.subprocess.PIPE)
    
        # Set the timeout in seconds
        timeout = 1
        lines = []
        try:
            while True:
                line = await asyncio.wait_for(_read_stdout(process),
                                          timeout=timeout)
                if line is None:
                    break
                lines.append(line)
    
        except asyncio.TimeoutError:
            # If no data is available within the timeout, handle it
            print("Timeout occurred")
        finally:
            # Ensure the subprocess is terminated if necessary
            # may spawn: child process pid 1701 exit status already read:  will report returncode 255
            if process.returncode is None: # if TimeoutError also
                process.terminate()
                await process.wait()
        return lines
    
    print("\n".join(asyncio.run(read_lines())))

\#+end<sub>src</sub>


<a id="org942916c"></a>

# The Python Standard Library

-   ref <https://docs.python.org/3/library/index.html#library-index>
-   tutorial <https://docs.python.org/3/tutorial/stdlib.html>


<a id="org285c660"></a>

## Major libs:

-   os - portable way of using operating system dependent functionality - files, Command Line Arguments,
    Environment Variables
    -   shutil - higher level interface for files
    -   glob - file lists from directory
-   logging
-   threading - multi-threading
-   collections - !!!
-   re - regular expression
-   math
-   statistics
-   datetime
-   zlib, gzip, bz2, lzma, zipfile and tarfile.
-   timeit - performance test
-   profile and pstats - tools for identifying time critical sections in larger blocks of code
-   doctest - module provides a tool for scanning a module and validating tests embedded in a program’s
    docstrings.
-   unittest
-   json
-   sqlite3
-   Internationalization supported by: gettext, locale, and the codecs package


<a id="org1ff2106"></a>

## regex - import re, regular

-   <https://docs.python.org/3/howto/regex.html>

import re

-   **match:** если от начала строки совпадает. Возращает объект MatchObject
    -   **fullmatch:** whole string match
-   **search:** до первого вхождения в строке
-   **compile(pattern):** "Компилирует" регулярное выражение, заданное в качестве строки в объект для
    последующей работы.
-   **sub:** replace substring

Флаги:

-   re.DOTALL - '.' в регексе означает любой символ кроме пробела, с re.DOTALL включая пробел
-   re.IGNORECASE


<a id="orgdf54ed4"></a>

### methods

-   re.compile(re-pattern) -> re.Pattern - prepare pattern.
-   search(pattern, string) -> re.Match or None - Searches for  first location.
-   re.match(pattern, string) -> re.Match or None - Match string to pattern from begining.
-   re.fullmatch(pattern, string) -> re.Match or None - Match to whole string.
-   findall() -> List[str] - Finds all occurrences of the pattern in the string.
-   inditer() -> yield re.Match - Finds all occurrences of the pattern in the string, returning an iterator yielding match objects.
-   split() -> List[str] - Splits the string by the pattern.
-   re.sub(re-pattern, repl, src-string) -> str - Replacing the leftmost non-overlapping occurrences


<a id="org79985cc"></a>

### sub example

    import re
    
    regex = re.compile('[^а-яА-ЯёЁ/-//,. ]')
    reg_pu = re.compile('[,]')
    reg_pu2 = re.compile(r'\.([а-яА-ЯёЁ])') #.a = '. a'
    
    s = reg_pu.sub(' ', data['naznach'])
    s = reg_pu2.sub(r'. \1', s)
    nf = regex.sub(' ', s).lower().split()
    
    # -----------------
    import re
    
    s = 'asdds https://alalal.com'
    m = re.search('https.*')
    if m:
      sp = m.span()
      sub = s[sp[0]:sp[1]]


<a id="org469b96a"></a>

### get string between substring

res = re.search("123(.\*)789", "123456789)
res.group(1) # 456


<a id="orgade7b0e"></a>

### reference

-   intro <https://docs.python.org/3/howto/regex.html>
-   reference full, sequences: <https://docs.python.org/3/library/re.html>

metacharacters: . ^ $ \* + ? { } [ ] \\ | ( )


<a id="orgd9f6ec3"></a>

### Frequent Sequences:

-   \d - Matches any decimal digit; this is equivalent to the class [0-9].
-   \D - Matches any non-digit character; this is equivalent to the class [<sup>0</sup>-9].
-   \s - Matches any whitespace character; this is equivalent to the class [ \t\n\r\f\v].
-   &sect; - Matches any non-whitespace character; this is equivalent to the class [^ \t\n\r\f\v].
-   \w - Matches any alphanumeric character; this is equivalent to the class [a-zA-Z0-9\_].
-   \W - Matches any non-alphanumeric character; this is equivalent to the class [<sup>a</sup>-zA-Z0-9\_].
-   \A - Matches only the start of the entire string. Regardless of the multiline flag.
    -   (^) - match the start of each line in a multiline string if the re.MULTILINE flag is used.
-   \Z - Matches only at the end of the string.


<a id="org8e440a7"></a>

### (&#x2026;) - capture to group.

-   (?&#x2026;) - usually do not create a new group
-   (?aiLmsux) - create group, One or more letters from set aiLmsux, match empty string.
    -   used to specify flags within the regular expression.
    -   can only be used at the start of the expression.
    -   (?-flags:pattern) - disable flags
    -   (?flags1-flags2:pattern) - enable flags1 and disable flags2
    -   (?flags) - “global flags”. Apply the specified flags to the entire regular expression.
    -   r'(?i)cat' - applies case-insensitive matching and match Cat, CAT and cat.
-   (?:&#x2026;) - don't create group.
-   (?>&#x2026;) - atomic group, ‘&#x2026;’ is atomic unit.
    -   No Backtracking: Once an atomic group has matched, it throws away all backtracking positions within
        itself. This prevents the regex engine from trying alternative matches within that group if subsequent
        parts of the pattern fail.
    -   Improve performance in specific cases.
    -   “a(bc|b)c” - match both "abc" and "abcc".
    -   a(?>bc|b)c - match "abcc" because once bc matches, the engine discards the backtracking positions and
        cannot try just b if the subsequent c fails.
    -   (?>.\*). fail to match, atomic group
-   (?P<name>&#x2026;) - set name to group.
    -   ex. (?P<quote>['"]).\*?
    -   Ways to reference it: (?P=quote)
        -   (?P<quote>['"]).\*?, \\1
        -   m.group('quote'), m.end('quote')
        -   like: re.sub(repl=\g<quote> / \g<1> / \\1)
-   (?P=name) - reference to group
-   (?#&#x2026;) - comment
-   (?=&#x2026;) - lookahead. no capturing. “Isaac (?=Asimov)” will match 'Isaac ' only if it’s followed by 'Asimov'.
-   (?!&#x2026;) - negative lookahed. “Isaac (?!Asimov)” will match 'Isaac ' only if it’s not followed by 'Asimov'.
-   (?<=&#x2026;) - lookbehind. (?<=abc)def will find a match in 'abcdef',
    -   contained pattern must only match strings of some fixed length: “abc” or “a|b” are allowed, but “a\*” and
        “a{3,4}” are not.
-   (?<!&#x2026;) - negative lookbehind.
-   (?(id/name)yes-pattern|no-pattern) -  if the group with given id or name exists, try to match with yes-pattern.


<a id="org1ba8bd2"></a>

### Zero-width assertions or lookarounds

presence or absence of a pattern without including it in the match.

-   only check if a condition is met at the current position

types:

1.  (?=pattern)	Lookahead
2.  (?<=foo)	Lookbehind
3.  (?!foo)	Negative Lookahead
4.  (?<!foo)	Negative Lookbehind

(?<!infarct) - Matches any string that is not preceded by the word “infarct”.


<a id="org8652a99"></a>

## datetime


<a id="org0765ead"></a>

### datetime to date

d.date()


<a id="org923066d"></a>

### date to datetime


<a id="orgc1dd881"></a>

### current time

datetime.datetime.now()

-   .time() or date()


<a id="org23d3e6c"></a>

## file object

<https://docs.python.org/3/library/filesys.html>

-   os - lower level than Python "file objects"
-   os.path — Common pathname manipulations
-   shutil — High-level file operations
-   tempfile — Generate temporary files and directories
-   Built-in function open() - returns "file object"
-   

file object

-   


<a id="org9197941"></a>

## importlib

    import importlib
    itertools = importlib.import_module('itertools')
    
    g = importlib.import_module('t')
    g.v
    # from g import v # ERROR


<a id="org7c100fd"></a>

## pprint

pprint.pp(dict/list/file/stdout, indent=4)

    d = {'hostnames': [{'name': '', 'type': ''}],
         'addresses': {'ipv4':'49.248.21.1'}}
    import pprint
    pprint.pp(d, indent=2, width=20)

    { 'hostnames': [ { 'name': '',
                       'type': ''}],
      'addresses': { 'ipv4': '49.248.21.1'}}

with logger

    from pprint import pformat
    import logging
    
    logging.basicConfig(level=logging.DEBUG, format='%(levelname)-8s %(message)s')
    
    data = [{'hello': 'there'}, {'foo': 'bar'}]
    
    # Use pformat to get a string representation
    formatted_data = pformat(data)
    
    # Log the formatted data
    logging.debug(formatted_data)

    DEBUG    [{'hello': 'there'}, {'foo': 'bar'}]


<a id="org259195b"></a>

# exceptions handling


<a id="orgfad9f89"></a>

## syntax

    try:

-   \# Code that may raise an exception

    except ExceptionType:

-   \# Code to handle the exception

    else:

-   \# Code to execute when no exceptions are raised

    finally:

-   \# Code to execute regardless of exceptions

Words: \*try, except, else, finally, raise


<a id="org608fa5b"></a>

## output

-   syntax errors - repeats the offending line and displays a little ‘arrow’ pointing
-   exceptions
    -   last line indicates what happened: **stack traceback** and **ExceptionType: detail based on the type and what
        caused it**
    -   exception may have exception’s **argument**


<a id="orgbeb5451"></a>

## hierarchy

-   **BaseException** - root exception
-   **Exception** - non-system-exiting exceptions are derived from this class
-   **Warning** -    warnings.warn("Warning&#x2026;&#x2026;&#x2026;..Message")

    BaseException
     ├── BaseExceptionGroup
     ├── GeneratorExit
     ├── KeyboardInterrupt
     ├── SystemExit
     └── Exception
          ├── ArithmeticError
          │    ├── FloatingPointError
          │    ├── OverflowError
          │    └── ZeroDivisionError
          ├── AssertionError
          ├── AttributeError
          ├── BufferError
          ├── EOFError
          ├── ExceptionGroup [BaseExceptionGroup]
          ├── ImportError
          │    └── ModuleNotFoundError
          ├── LookupError
          │    ├── IndexError
          │    └── KeyError
          ├── MemoryError
          ├── NameError
          │    └── UnboundLocalError
          ├── OSError
          │    ├── BlockingIOError
          │    ├── ChildProcessError
          │    ├── ConnectionError
          │    │    ├── BrokenPipeError
          │    │    ├── ConnectionAbortedError
          │    │    ├── ConnectionRefusedError
          │    │    └── ConnectionResetError
          │    ├── FileExistsError
          │    ├── FileNotFoundError
          │    ├── InterruptedError
          │    ├── IsADirectoryError
          │    ├── NotADirectoryError
          │    ├── PermissionError
          │    ├── ProcessLookupError
          │    └── TimeoutError
          ├── ReferenceError
          ├── RuntimeError
          │    ├── NotImplementedError
          │    └── RecursionError
          ├── StopAsyncIteration
          ├── StopIteration
          ├── SyntaxError
          │    └── IndentationError
          │         └── TabError
          ├── SystemError
          ├── TypeError
          ├── ValueError
          │    └── UnicodeError
          │         ├── UnicodeDecodeError
          │         ├── UnicodeEncodeError
          │         └── UnicodeTranslateError
          └── Warning
               ├── BytesWarning
               ├── DeprecationWarning
               ├── EncodingWarning
               ├── FutureWarning
               ├── ImportWarning
               ├── PendingDeprecationWarning
               ├── ResourceWarning
               ├── RuntimeWarning
               ├── SyntaxWarning
               ├── UnicodeWarning
               └── UserWarning


<a id="org19f6e6c"></a>

## explanation

    try:
        foo = open("foo.txt")
    except IOError:
        print("error")
    else: # if no exception in try block
        print(foo.read())
    finally: # always
        print("finished")


<a id="orgc0eaec3"></a>

## traceback

two ways

    import traceback
    import sys
    
    try:
        do_stuff()
    except Exception:
        print(traceback.format_exc())
        # or
        print(sys.exc_info()[0])


<a id="orgbae7d79"></a>

## simple exception

    class LimitException(Exception):
        pass
    
    try:
        raise LimitException(1)
    except LimitException as e:
        print(dir(e))
        print(e.args[0])

    ['__cause__', '__class__', '__context__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__getstate__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__setstate__', '__sizeof__', '__str__', '__subclasshook__', '__suppress_context__', '__traceback__', '__weakref__', 'add_note', 'args', 'with_traceback']
    1


<a id="org0a9c7f6"></a>

## examples

    try:
        x = int(input("Please enter a number: "))
        break
    except ValueError:
        print("Oops!  That was no valid number.  Try again...")
    
    except (RuntimeError, TypeError, NameError):
        pass
    except OSError as err:
        print("OS error: {0}".format(err)
        print("Unexpected error:", sys.exc_info()[0])
    except: #any . with extreme caution!
        print("B")
        raise          # re-raise the exception
    
    
    
    try:
        raise Exception('spam', 'eggs')
    except OSError:
        print(type(inst))    # the exception instance
        print(inst.args)     # arguments stored in .args
        print(inst)          # __str__ allows args to be printed directl
    else:
        print(arg, 'has', len(f.readlines()), 'lines')
        f.close()
    
    
    
    try:
    ...         result = x / y
    ...     except ZeroDivisionError:
    ...         print("division by zero!")
    ...     else:                           #no exception
    ...         print("result is", result)
    ...     finally:                        #always Even with неожиданным exception.
    ...         print("executing finally clause")
    
    
    with open("myfile.txt") as f: # f is always closed, even if a problem was encountered
        for line in f:
    	print(line, end="")
    
    
          try:
              obj = self.method_number_list[method_number](image)
              self.OUTPUT_OBJ = obj.OUTPUT_OBJ
          except Exception as e:
              if hasattr(e, 'message'):
                  self.OUTPUT_OBJ = {"qc": 3, "exception": e.message}
              else:
                  self.OUTPUT_OBJ = {"qc": 3, "exception": str(type(e).__name__) + " : " + str(e.args)}


<a id="orgaa7684e"></a>

# Logging

-   <https://docs.python.org/3/library/logging.html>

import logging


<a id="org009c82a"></a>

## ways to log

1.  loggers: logger = logging.getLogger(name) ; logger.warning("as")
2.  root logger: logging.warning('Watch out!')

    logging.basicConfig(level=logging.NOTSET)
    root_logger = logging.getLogger()

or

    logger = logging.getLogger(__name__)
    logger.setLevel(logging.NOTSET)


<a id="orgd45eb7b"></a>

## terms

-   **handlers:** send the log records (created by loggers) to the appropriate destination.
-   **records:** log records (created by loggers)
-   **loggers:** expose the interface that application code directly uses.
-   **Filters:** provide a finer grained facility for determining which log records to output.
-   **Formatters:** specify the layout of log records in the final output.


<a id="orge38edc0"></a>

## getLogger()

Multiple calls to getLogger(**name**) with the same name will always return a reference to the same Logger object.

**name** - period-separated hierarchical value, like foo.bar.baz


<a id="orgf3f6c65"></a>

## stderror

deafult:

-   out stderr
-   level = WARNING


<a id="orgb7a0f77"></a>

## inspection

get all loggers:

    [print(name) for name in logging.root.manager.loggerDict]

logger properties:

-   logger.level
-   logger.handlers
-   logger.filters
-   logger.root.handlers[0].formatter.<sub>fmt</sub> - formatter
-   logger.root.handlers[0].formatter.default<sub>time</sub><sub>format</sub>

root logger: logging.root or logging.getLogger()


<a id="org3493001"></a>

## levels

-   CRITICAL	50
-   ERROR		40
-   WARNING	30
-   INFO		20
-   DEBUG		10
-   NOTSET	0


<a id="org565e99d"></a>

# Collections

-   Abstract Base Classes <https://docs.python.org/3/library/collections.abc.html>


<a id="org961419f"></a>

## collections.Counter() - dict subclass for counting hashable objects

    import collections
    cnt = Counter()
    cnt[word] += 1
    most_common(n)

Return a list of the n most common elements and their counts from the most common to the least.


<a id="org4c652f5"></a>

## time complexity

O -  provides an upper bound on the growth rate of the function.

x in c:

-   list - O(n)
-   dict - O(1) O(n)
-   set - O(1) O(n)

set

-   list - O(1) O(1)
-   collections.deque - O(1) O(1) - append
-   dict - O(1) O(n)

get

-   list - O(1) O(1)
-   collections.deque - O(1) O(1) - pop
-   dict - O(1) O(n)

<https://wiki.python.org/moin/TimeComplexity>


<a id="orgb28fb91"></a>

# Conventions


<a id="orga022015"></a>

## code style, indentation, naming

-   <https://www.python.org/dev/peps/>
-   code style <https://www.python.org/dev/peps/pep-0008/>

Indentation:

-   4 spaces per indentation level.
-   Spaces are the preferred indentation method.

Limit all lines to a maximum of 79 characters.

Surround top-level function and class definitions with two blank lines.

Method definitions inside a class are surrounded by a single blank line.

Inside class:

-   capitalizing method names
-   prefixing data attribute names with a small unique string (perhaps just an underscore)
-   using verbs for methods and nouns for data attributes.

naming conventions

-   <https://www.python.org/dev/peps/pep-0008/>
-   Modules should have short, all-lowercase names. Underscores can be used in the module name if it improves
    readability.
-   Python packages should also have short, all-lowercase names, although the use of underscores is discouraged.
-   Class Names - CapWords convention
-   function names - lowercase with words separated by underscores as necessary to improve readability


<a id="org22e7433"></a>

## 1/2 underscore

Single Underscore: PEP-0008: \_single<sub>leading</sub><sub>underscore</sub>: weak "internal use" indicator. E.g. from M import \* does not import objects whose name starts with an underscore.

Double Underscore: <https://docs.python.org/3/tutorial/classes.html#private-variables>

-   Any identifier of the form \_<sub>spam</sub> (at least two leading underscores, at most one trailing underscore) is
    textually replaced with \_classname\_<sub>spam</sub>, where classname is the current class name with leading
    underscore(s) stripped. This mangling is done without regard to the syntactic position of the identifier, so
    it can be used to define class-private instance and class variables, methods, variables stored in globals,
    and even variables stored in instances. private to this class on instances of other classes.
-   Name mangling is intended to give classes an easy way to define “private” instance variables and methods,
    without having to worry about instance variables defined by derived classes, or mucking with instance
    variables by code outside the class. Note that the mangling rules are designed mostly to avoid accidents; it
    still is possible for a determined soul to access or modify a variable that is considered private. ( as a way
    to ensure that the name will not overlap with a similar name in another class.)


<a id="org8216f92"></a>

## Whitespace in Expressions and Statements

    Yes: spam(ham[1], {eggs: 2})
    No:  spam ( ham [ 1 ], { eggs: 2 } )
    z
    Yes: if x == 4: print x, y; x, y = y, x
    No:  if x == 4 : print x , y ; x , y = y , x
    
    YES:
    i = i + 1
    submitted += 1
    x = x*2 - 1
    hypot2 = x*x + y*y
    c = (a+b) * (a-b)
    
    def munge(input: AnyStr): ...
    def munge() -> AnyStr: ...
    
    def complex(real, imag=0.0):
    return magic(r=real, i=imag)
    
    
    if foo == 'blah':
        do_blah_thing()
    do_one()
    do_two()
    do_three()
    
    FILES = [
        'setup.cfg',
        'tox.ini',
        ]
    initialize(FILES,
               error=True,
               )
    
    No:
    FILES = ['setup.cfg', 'tox.ini',]
    initialize(FILES, error=True,)


<a id="org2b9a64a"></a>

## naming

case sensitive

-   Class names start with an uppercase letter. All other identifiers start with a lowercase letter.
-   Starting an identifier with a single leading underscore indicates that the identifier is **private** = \_i
-   two leading underscores indicates a strongly private identifier = \_<sub>i</sub>
-   Never use the characters 'l' (lowercase letter el), 'O' (uppercase letter oh), or 'I' (uppercase letter eye)
    as single character variable names.

**Package and Module Names** - all-lowercase names. \_ - не рекомендуется. C/C++ module has a leading underscore
 (e.g. \_socket). <https://peps.python.org/pep-0423/>

**Class Names** - CapWords, or CamelCase

**functions and varibles** Function and varibles names should be lowercase, with words separated by underscores as necessary
to improve readability.

-   Always use **self** for the first argument to instance methods.
-   Always use **cls** for the first argument to class methods.

**Constants** MAX<sub>OVERFLOW</sub>

PEP8

-   modules (filenames) should have short, all-lowercase names, and they can contain underscores;
-   packages (directories) should have short, all-lowercase names, preferably without underscores;
-   classes should use the CapWords convention.


<a id="orgbef3dbb"></a>

## docstrings

**Docstring** is a first thing in a **module**, **function**, **class**, or **method** definition. ( <span class="underline"><span class="underline">doc</span></span> special
 attribute).

-   Docstring Conventions <https://peps.python.org/pep-0257/>
-   <https://peps.python.org/pep-0258/>

Convs.:

-   Phrase ending in a period.
-   (""" """) are used even though the string fits on one line.
-   The closing quotes are on the same line as the opening quotes
-   There’s no blank line either before or after the docstring.
-   It prescribes the function or method’s effect as a command (“Do this”, “Return that”), not as a description;
    e.g. don’t write “Returns the pathname …”.
-   Multiline: 1. summary 2. blank 3. more elaborate description


<a id="orgc9454ac"></a>

### ex. simple

    def kos_root():
        """Return the pathname of the KOS root directory."""
    
    def complex(real=0.0, imag=0.0):
        """Form a complex number.
    
        Keyword arguments:
        real -- the real part (default 0.0)
        imag -- the imaginary part (default 0.0)
        """
        if imag == 0.0 and real == 0.0:
            return complex_zero


<a id="org144e818"></a>

# Concurrency

<https://docs.python.org/3/library/concurrency.html>
Notes:

-   **Preferred approach** is to concentrate all access to a resource in a single thread and then use the **queue**

module to feed that thread with requests from other threads.

-   GIL - mutex - preventing multiple threads from executing Python bytecodes at once on multiple cores
    -   <https://docs.python.org/3/c-api/init.html#thread-state-and-the-global-interpreter-lock>
    -   <https://wiki.python.org/moin/GlobalInterpreterLock>

coroutine (сопрограмма) - components that allow execution to be suspended and resumed, their sates are saved

concurrent.futures - high-level interface for asynchronously executing callables. Any yield from chain of
 calls ends with a yield (fundamental mechanism).


<a id="orgb924214"></a>

## select right API

problems:

-   CPU-Bound Program
-   I/O-bound problem - spends most of its time waiting for external operations

types:

-   multiprocessing - creating a new instance of the Python interpreter to run on each CPU and then farming out
    part of your program to run on it.
-   threading - Pre-emptive multitasking, The operating system decides when to switch tasks.
    -   hard to code, race conditions
-   one thread
-   Coroutines - Cooperative multitasking - The tasks decide when to give up control.
    -   asyncio

modules:

-   **threading** - Thread-based parallelism - fast - better for I/O-bound applications due to the Global Interpreter Lock
-   **multiprocessing** — Process-based parallelism - slow - better for CPU-bound applications
-   **concurrent.futures** - high-level interface for asynchronously executing callables ThreadPoolExecutor or
    ProcessPoolExecutor.
-   **subprocess** - it’s the recommended option when you need to run multiple processes in parallel or call an
    external program or external command from inside your Python code. spawn new processes, connect to their
    input/output/error pipes, and obtain their return codes
-   **sched** - event scheduler
-   **queue** - useful in threaded programming when information must be exchanged safely between multiple thread
-   **asyncio** - coroutine-based concurrency(Cooperative multitasking) The tasks decide when to give up control.

![img](https://superfastpython.com/wp-content/uploads/2022/07/Python-Concurrency-API-Decision-Tree.jpg)

![img](https://superfastpython.com/wp-content/uploads/2022/07/Python-Concurrency-API-Pools-vs-Executors.png)

![img](https://superfastpython.com/wp-content/uploads/2022/07/Python-Concurrency-API-Worker-Pool-vs-Class.png)


<a id="org09a6478"></a>

### asyncio vs threading

Use asyncio for:

-   I/O-bound tasks
-   Non-blocking operations
-   Scalable concurrent execution of many tasks
-   Simplified asynchronous programming

Use threading for:

-   I/O-bound tasks with blocking operations
-   Tasks that require parallelism but are not heavily CPU-bound
-   Easier integration with existing synchronous code


<a id="org3f51e55"></a>

## Process

    from multiprocessing import Process
    # not daemon don't allow to have subprocess
    proc: Process = Process(target=self.perform_job, args=(job, queue), daemon=False)
    proc.start()
    proc.join(WAIT_FOR_THREAD)  # seconds
    if proc.is_alive():
      pass


<a id="orgc0f168b"></a>

## Pool of processes

-   cannot work with lambdas because of pickle used internaly
-   def <span class="underline"><span class="underline">enter</span></span> : self.<sub>check</sub><sub>running</sub>()
-   def <span class="underline"><span class="underline">exit</span></span> : self.terminate()
-   r = executor.apply<sub>async</sub> ; r.get() - use for debug.

lambdas not supported to apply. Functions should be defined before Pool creation.

cons:

-   impossible to catch result of callback
-   impossible to pass function to func with additional argument
-   require if <span class="underline"><span class="underline">name</span></span> == '<span class="underline"><span class="underline">main</span></span>': construction


<a id="org4f0d3f2"></a>

### 1

    from multiprocessing.pool import Pool
    def callback_result(result):
       print(result)
    # Pool
    pool = Pool(processes=2)  # clear leaked memory with process death
    
    def aa2(x):
        return x
    
    pool.apply_async(aa2, args=(1,), callback=callback_result)
    pool.close()
    pool.join()


<a id="org34fcd85"></a>

### 2

    from multiprocessing import Pool
    import time
    
    # Worker function that simulates some work
    def worker(num):
        time.sleep(1)  # Simulate work
        return num * 2
    
    
    # Callback function to process results
    def callback(result):
        print(f"Received result: {result}")
    
    # Create a pool of 4 worker processes
    pool = Pool(processes=4)
    # Submit tasks to the pool and specify the callback function
    for i in range(10):
        pool.apply_async(worker, args=(i,), callback=callback)
        print("sd")
    
    pool.close()
    pool.join()

    Received result: 0
    Received result: 4
    Received result: 6
    Received result: 2
    Received result: 8
    Received result: 14
    Received result: 10
    Received result: 12
    Received result: 16
    Received result: 18


<a id="org4b3a790"></a>

## threading

Daemon - daemon thread will shut down immediately when the program exits. default=False

Python (CPython) is not optimized for thread framework.You can keep allocating more resources and it
will try spawning/queuing new threads and overloading the cores. You need to make a design change
here:

Process based design:

-   Either use the multiprocessing module
-   Make use of rabbitmq and make this task run separately
-   Spawn a subprocess

Or if you still want to stick to threads:

-   Switch to PyPy (faster compared to CPython)
-   Switch to PyPy-STM (totally does away with GIL)


<a id="orgbfdf384"></a>

### examples

1.  ThreadPoolExecutor - many function for several workers

        def get_degree1(angle):
            return a
        
        def get_degree2(angle):
            return a
        
        import concurrent.futures
        with concurrent.futures.ThreadPoolExecutor(max_workers=5) as executor:
            futures1 = executor.submit(get_degree1, x) # started
            futures2 = executor.submit(get_degree2, x) # started
            data = future1.result()
            data = future1.result()

2.  ThreadPoolExecutor - one function for several workers

        def get_degree(angle):
           return a
        
        import concurrent.futures
        angles: list = []
        with concurrent.futures.ThreadPoolExecutor(max_workers=5) as executor:
            futures = {executor.submit(get_degree, x): x for x in degrees}
            for future in concurrent.futures.as_completed(futures):
                # futures[future] # degree
                data = future.result()
                angles.append(data)

3.  **Custom thread**

        from threading import Thread
        
        def foo(bar):
            print 'hello {0}'.format(bar)
            return "foo"
        
        class ThreadWithReturnValue(Thread):
            def __init__(self, group=None, target=None, name=None,
                         args=(), kwargs={}, Verbose=None):
                Thread.__init__(self, group, target, name, args, kwargs)
                self._return = None
            def run(self):
                print(type(self._target))
                if self._target is not None:
                    self._return = self._target(*self._args,
                                                        **self._kwargs)
            def join(self, *args):
                Thread.join(self, *args)
                return self._return
        
        twrv = ThreadWithReturnValue(target=foo, args=('world!',))
        
        twrv.start()
        print twrv.join()   # prints foo


<a id="orga067367"></a>

### syncronization

**with** - acquire() and release()

-   Lock, RLock, Condition, Semaphore, and BoundedSemaphore

1.  Lock and RLock (recurrent version)

    threading.Lock

2.  Condition object - barrier

    -   cv = threading.Condition()
    -   cv.wait() - stop
    -   cv.notifyAll() - resume all in wait

3.  Semaphore Objects - protected section

    maxconnections = 5
    pool<sub>sema</sub> = BoundedSemaphore(value=maxconnections)
    
    with pool<sub>sema</sub>:
        conn = connectdb()

4.  Barrier Objects - by number

    b = Barrier(2, timeout=5) # 2 - numper of parties
    
    b.wait()
    
    b.wait()


<a id="org6a8022e"></a>

## multiprocessing

     def get_degree(angle):
          return a
    
    from multiprocessing import Process, Manager
        manager = Manager()
        angles = manager.list()  # result angles!
        pool = []
        for x in degrees:
            # angles.append(get_degree(x))
            p = Process(target=get_degree, args=(x, angles))
            pool.append(p)
            p.start()
        for p2 in pool:
            p2.join()

    manager = mp.Manager()
    return_dict = manager.dict()
    jobs = []
    for i in range(len(fileslist)):
        p = mp.Process(target=PageProcessing, args=(i, return_dict, fileslist[i],))
        jobs.append(p)
        p.start()
    
    for proc in jobs:
        proc.join() # ждем завершение каждого


<a id="org6033249"></a>

## example multiprocess, Threads, othe thread

    def main_processing(filelist) -> list:
        """ Multithread page processing
    
        :param filelist: # файлы PNG страниц PDF входящего файла
        :return: {procnum:(procnum, new_obj.OUTPUT_OBJ), ....}
        """
    
        # import multiprocessing as mp
        # manager = mp.Manager()
        # return_dict = manager.dict()
        # jobs = []
    
        # for i in range(len(filelist)):
        #     p = mp.Process(target=page_processing, args=(i, return_dict, filelist[i]))
        #     jobs.append(p)
        #     p.start()
        #
        # for proc in jobs:
        #     proc.join()
    
        # Threads
        import concurrent.futures
        return_dict: list = []
        with concurrent.futures.ThreadPoolExecutor(max_workers=2) as executor:
            futures = {executor.submit(page_processing, i, x): x for i, x in enumerate(filelist)}
            for future in concurrent.futures.as_completed(futures):
                data = future.result()
                return_dict.append(data)
    
        # One Thread Debug
        # from threading import Thread
        # thread: Thread = Thread(target=page_processing, args=(0, filelist[0]))
        # thread.start()
        # thread.join()
    
        return list(return_dict)


<a id="org476def7"></a>

# асинхронного программирования (asyncio, async, await)


<a id="org73f04fd"></a>

## Limitations

-   timeout for asyncio run available only at top level in file.
-   time.sleep(400) breaks asyncio. Use asyncio.sleep()
-   losing of exceptions in subprocesses like Pool.


<a id="org57f9907"></a>

## Best practices

-   to use a top-level try/except block to catch any unhandled exceptions across all tasks.
    -   use asyncio.gather with return<sub>exceptions</sub>=True
-   Ensure that long-running loops are scheduled onto the event loop using methods like loop.call<sub>soon</sub> or by
    breaking them into smaller tasks to avoid halting the event loop.
    -   use asyncio.wait with return<sub>when</sub>=asyncio.FIRST<sub>COMPLETED</sub> to wait until the first task completes.
-   Consider keeping a single event loop instance if necessary. Aviod subloops.
-   Use asyncio.wait<sub>for</sub> to set timeouts for tasks, which helps prevent tasks from running
    indefinitely. Also, use task.cancel() to cancel tasks that are no longer needed or have timed out.
-   Avoid functions with long-running loops within coroutines


<a id="org85dc919"></a>

## asyncio theory

-   <http://hoad.io/blog/playing-with-asyncio/>
-   <https://habr.com/ru/post/337420/>

IO-bound and high-level structured network code. synchronize concurrent code;

Any function that calls **await** needs to be marked with **async**.

async as a flag to Python telling it that the function about to be defined uses await.

async with statement, which creates a context manager from an object you would normally await.

cons:

-   all of the advantages of cooperative multitasking get thrown away if one of the tasks doesn’t cooperate.

asyncio.run - ideally only be called once


<a id="org83821e0"></a>

## terms:

-   Event Loop - low level the core of every asyncio application, high level: asyncio.run()
-   Coroutines (coro) - (**async def** statement or generator iterator **yield** or **yield from**). internally,
    coroutines are a special kind of generators, every await is suspended by a yield somewhere down the chain of
    await calls (please refer to PEP 3156 for a detailed explanation).
    -   **async def** - **native coroutines**
    -   **yield** or **yield from** - **generator-based coroutines**
-   awaitable object or **awaitable proxy object** - used for **await** &#x2026;
    
    -   **native coroutine**
    -   **generator-based coroutine**
    -   An object with an <span class="underline"><span class="underline">await</span></span> method (**Future-like**) returning an iterator. enable Future objects in await statements, the
    
    only change is to add <span class="underline"><span class="underline">await</span></span> = <span class="underline"><span class="underline">iter</span></span> line to asyncio.Future class.
-   **await** accept **awaitable object** as an argument. Should be used only in **async def**.


<a id="org0dd3ba0"></a>

## async and await syntax <https://peps.python.org/pep-0492/>

princeples:

-   should not be tied to any specific **Event Loop** implementation (asyncio.events.AbstractEventLoop)
-   **yield** as a signal to the scheduler, indicating that the coroutine will be waiting until an event (such as
    IO) is completed.
-   **async def** can contain **await** expressions.
-   SyntaxError to have **yield** or **yield from** expressions in an **async def** function.
-   Regular generators, when called, return a **generator object**; similarly, coroutines return a **coroutine object**.
-   decorator **@types.coroutine** clearly define makes generators a **coroutine object**, generator-based coroutine.


<a id="orgea66d8c"></a>

## hight-level API - asyncio.run

just create new loop and execute one task in it

    with Runner(debug=debug) as runner:
           return runner.run(main)

    import time
    start_time = time.time()
    
    import asyncio
    async def main():
        await asyncio.sleep(2)
        print('hello')
        return 2
    
    print (asyncio.run(main()))
    print("--- %s seconds ---" % (time.time() - start_time))
    print (asyncio.run(main()))
    print("--- %s seconds ---" % (time.time() - start_time))

    hello
    2
    --- 2.0029571056365967 seconds ---
    hello
    2
    --- 4.005870580673218 seconds ---


<a id="org467e1a3"></a>

## hight-level API - asyncio.Runner

create loop and ContextVars -

    import time
    start_time = time.time()
    
    import asyncio
    async def main():
        await asyncio.sleep(2)
        print('hello')
        return 2
    
    with asyncio.Runner() as runner:
        print (runner.run(main()))
        print("--- %s seconds ---" % (time.time() - start_time))
        print (runner.run(main()))
        print("--- %s seconds ---" % (time.time() - start_time))

    hello
    2
    --- 2.003290891647339 seconds ---
    hello
    2
    --- 4.006376266479492 seconds ---


<a id="org256345c"></a>

## low-level API - get<sub>running</sub><sub>loop</sub> & new<sub>event</sub><sub>loop</sub> & run<sub>until</sub><sub>complete</sub>

timeout=40 available only at top level, not inside ss() normal function

    import asyncio
    async def run_command():
        print("asd")
    
    
    def ss():
        try:
            loop = asyncio.get_running_loop()
        except RuntimeError:
            loop = asyncio.new_event_loop()
            asyncio.set_event_loop(loop)
    
        loop.run_until_complete(run_command(), timeout=40) # cause: RuntimeWarning: Enable tracemalloc to get the object allocation traceback
        print("sdff1")
        asyncio.run(run_command())
        print("sdff2")
    
    ss()
    # OR JUST
    # asyncio.run(run_command()) # out created or exiten loop used

    import asyncio
    # import time
    async def run_command2():
        await asyncio.sleep(22)
        print("222")
        return "ggg"
    
    async def run_command():
        try:
            line = await asyncio.wait_for(run_command2(),
                                          timeout=1.0)
        except TimeoutError:
            print('timeout!')
        print("asd", line)
    
    # def ss():
    #     # try:
    #     #     loop = asyncio.get_running_loop()
    #     # except RuntimeError:
    #     #     loop = asyncio.new_event_loop()
    #     #     asyncio.set_event_loop(loop)
    
    #     # loop.run_until_complete(run_command()) # , timeout=40 cause: RuntimeWarning: Enable tracemalloc to get the object allocation traceback
    #     # print("sdff1")
    #     asyncio.run(run_command())
    #     print("sdff2")
    
    # ss()
    # OR JUST
    asyncio.run(run_command()) # out created or exiten loop used

    asd
    sdff1
    asd
    sdff2
    asd

    import asyncio
    
    async def eternity():
        # Sleep for one hour
        await asyncio.sleep(3600)
        print('yay!')
    
    async def main():
        # Wait for at most 1 second
        try:
            await asyncio.wait_for(eternity(), timeout=1.0)
        except TimeoutError:
            print('timeout!')
    
    asyncio.run(main())

    timeout!


<a id="org5e079db"></a>

## async with

Object with \_<sub>aenter</sub>\_<sub>()</sub> and  \_<sub>aexit</sub>\_<sub>()</sub>

-   lets Python programs perform asynchronous calls when entering and exiting a runtime context
-   easy to implement proper database transaction managers for coroutines.

    # create and use an asynchronous context manager
    async with AsyncContextManager() as manager:
    	# ...
    
    #Equal to:
    manager = await AsyncContextManager()
    try:
    	# ...
    finally: # see for correct: https://peps.python.org/pep-0492/#new-syntax
    	# close or exit the context manager
    	await manager.close()
    
    
    
    async with lock:
        ...
    instead of:
    
    with (yield from lock):
        ...
    
    
    
    
    # easy to implement proper database transaction managers for coroutines:
    async def commit(session, data):
        ...
    
        async with session.transaction():
            ...
            await session.update(data)
            ...


<a id="org2042e49"></a>

## async for

Object with

-   \_<sub>aiter</sub>\_<sub>()</sub> - returns **asynchronous iterator** object
-   \_<sub>anext</sub>\_<sub>()</sub> - returns **awaitable**. can rise StopAsyncIteration exception.

Makes it possible to perform asynchronous calls in iterators. see [17.1](#orgfbfcb14)

aiter() - built-in. Equivalent to calling x.\_<sub>aiter</sub>\_<sub>()</sub>.

    class AsyncIterable:
        def __aiter__(self):
            return self
    
        async def __anext__(self):
            data = await self.fetch_data()
            if data:
                return data
            else:
                raise StopAsyncIteration
    
        async def fetch_data(self):
            ...
    
    async for TARGET in ITER:
        BLOCK
    else:
        BLOCK2


<a id="org79e50cc"></a>

## TODO Asynchronous Generators

<https://peps.python.org/pep-0525/>

    async def asyncgen():  # an asynchronous generator function
        await asyncio.sleep(0.1)
        yield 42
    
    async for i in asyncgen():
        print(i)

with FastAPI

    from collections.abc import AsyncGenerator
    async def get_redis_pool() -> AsyncGenerator[Int]:
        yield Int(1)
    
    async def get_redis(r: Redis = Depends(get_redis_pool)) -> Redis:
        return r


<a id="org6137122"></a>

## Troubleshooting

    RuntimeWarning: coroutine 'sleep' was never awaited   asyncio.sleep(22)
    RuntimeWarning: Enable tracemalloc to get the object allocation traceback

Solution


<a id="org439ec08"></a>

## links

<https://docs.python.org/3/library/asyncio.html>


<a id="org5f567aa"></a>

# Monkey patch (modification at runtile) Reflective or meta programming

-   instance.attribute = 23


<a id="org72251f8"></a>

## theory

-   **Monkey Patching:** is about modifying existing code at runtime. Ofter just reassing. (Ruby and Python)
-   **Reflection:** is about examining and modifying the structure and behavior of a program at runtime.
-   **Metaprogramming:** is about writing code that can manipulate other code at compile time or runtime.


<a id="org7862ed5"></a>

## basic example

    # Without reflection
    obj = Foo()
    obj.hello()
    
    # With reflection
    obj = globals()["Foo"]()
    getattr(obj, "hello")()
    
    # With eval
    eval("Foo().hello()")


<a id="org0794732"></a>

## replace method of class instance


<a id="org35ae909"></a>

### Monkey patch

    from somemodule import testMOD
    
    mytest = testMOD()
    
    def alternativeFunc(self, variable):
        var = variable
        self.something = var + 1.2
    
    # Replace the method
    testMOD.testFunc = alternativeFunc
    
    # Now, calling mytest.testFunc will execute alternativeFunc
    mytest.testFunc(12)


<a id="org25ed045"></a>

### types.MethodType

    import types
    
    from somemodule import testMOD
    
    mytest = testMOD()
    
    def alternativeFunc(self, variable):
        var = variable
        self.something = var + 1.2
    
    # Replace the method using types.MethodType
    mytest.testFunc = types.MethodType(alternativeFunc, mytest)
    
    # Now, calling mytest.testFunc will execute alternativeFunc
    mytest.testFunc(12)


<a id="org1549f4a"></a>

### Subclassing

    from somemodule import testMOD
    
    class MyTestMOD(testMOD):
        def testFunc(self, variable):
            var = variable
            self.something = var + 1.2
    
    mytest = MyTestMOD()
    mytest.testFunc(12)


<a id="orgb50d7b2"></a>

## detect event of variable changed

    class ExistingClass:
        def __init__(self, value):
            self.value = value
    
    
    def value_getter(self):
        return self._value
    def value_setter(self, value):
        print(f"Value changed {value}")
        self._value = value
    
    # Monkey patch the ExistingClass to add the property setter
    ExistingClass.value = property(value_getter, value_setter)
    
    # Create an instance of ExistingClass
    obj = ExistingClass(10)
    
    # Change the value of obj
    obj.value = 20
    print(obj.value)

    Value changed 10
    Value changed 20
    20


<a id="org770f64a"></a>

## inspect.getmembers() vs <span class="underline"><span class="underline">dict</span></span>.items() vs dir()

-   dir() and inspect.getmembers() are basically the same,
-   \_<sub>dict</sub>\_\_ is the complete namespace including metaclass attributes.


<a id="org1de4ef4"></a>

## ex replace function

    import werkzeug.serving
    import functools
    
    def wrap_function(oldfunction, newfunction):
        @functools.wraps(oldfunction)
        def run(*args): #, **kwargs
            return newfunction(oldfunction, *args) #, **kwargs
        return run
    
    def generate_adhoc_ssl_pair2(oldfunc, parameter=None):
        # Do some processing or something to customize the parameters to pass
        c, k = oldfunc(parameter)
        print(c, c.public_key().public_numbers())
        return c,k
    
    
    werkzeug.serving.generate_adhoc_ssl_pair = wrap_function(
            werkzeug.serving.generate_adhoc_ssl_pair, generate_adhoc_ssl_pair2)


<a id="orgdd0d230"></a>

## ex replace method of class

    import werkzeug.serving
    
    oldfunc = werkzeug.serving.BaseWSGIServer.__init__
    
    def myinit(*args, **kwargs):
        # Do some processing or something to customize the parameters to pass
        oldfunc(*args, **kwargs)
        print(dir(args[0].ssl_context))
    
    werkzeug.serving.BaseWSGIServer.__init__ = myinit


<a id="org17bd7d8"></a>

## links

<https://docs.python.org/3/c-api/reflection.html>


<a id="org4d762c8"></a>

# Performance Tips

<https://wiki.python.org/moin/PythonSpeed/PerformanceTips>


<a id="org3d53a80"></a>

## string

-   Avoid:
    -   out = "<html>" + head + prologue + query + tail + "</html>"
-   Instead, use
    -   out = "<html>%s%s%s%s</html>" % (head, prologue, query, tail)


<a id="org84871d3"></a>

## loop

-   map(function, list)
-   iterator = (s.upper() for s in oldlist)


<a id="orgd8a4241"></a>

## Avoiding dots&#x2026;

-   <https://docs.python.org/3.8/library/functions.html>


<a id="org6e244c9"></a>

## avoid global variables


<a id="org34f8561"></a>

## dict

    wdict = {}
    for word in words:
        if word not in wdict:
            wdict[word] = 0
        wdict[word] += 1
    
    # Use:
    
    wdict = {}
    for word in words:
        try:
            wdict[word] += 1
        except KeyError:
            wdict[word] = 1
    
    # or:
    wdict = {}
    get = wdict.get
    for word in words:
        wdict[word] = get(word, 0) + 1
    
    # or:
    wdict.setdefault(key, []).append(new_element)
    
    # or:
    from collections import defaultdict
    
    wdict = defaultdict(int)
    for word in words:
        wdict[word] += 1


<a id="org7a7946a"></a>

# decorators

-   @property - [11.4](#org2f4b88a) - function became read-only variable (getter)
-   @staticmethod - to static method, dont uses **self**
-   @classmethod - it receives the class object as the first parameter instead of an instance of the class. May
    be called for class C.f() or for instance C().f(), self.f(). Used for singleton.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">Class Method</td>
<td class="org-left">Static Method</td>
</tr>
</tbody>
</table>

;;

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">Defined as Mutable via inheritance</td>
<td class="org-left">Immutable via inheritance</td>
</tr>


<tr>
<td class="org-left">The first parameter as cls is to be taken in the class method.</td>
<td class="org-left">not needed</td>
</tr>
</tbody>
</table>

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">Accession or modification of class state is done in a class method.</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Class methods are bound to know about class and access it.</td>
<td class="org-left">dont knew about class</td>
</tr>
</tbody>
</table>


<a id="org33e9ed2"></a>

## ex

    def d(c):
       print('d', c)
    
    def dec_2(a):
        print('dec_2', a)
        return d
    
    
    def dec_1():
        print('dec_1')
        return dec_2
    
    
    @dec_1()
    def f(v):
        print('f')
    
    print('s')
    f(2)


<a id="org8286732"></a>

# Assert

    assert Expression[, Arguments]

If the expression is false, Python raises an **AssertionError** exception. Python uses **ArgumentExpression** as the
argument for the AssertionError.

    assert False, "Error here"

python.exe - The \`\`-O\`\` switch removes assert statements, the \`\`-OO\`\` switch removes both assert statements
and <span class="underline"><span class="underline">doc</span></span> strings.


<a id="org3ee8432"></a>

# Debugging and Profiling

<https://habr.com/en/company/mailru/blog/201594/>
Profiling - сбор характеристик работы программы

-   Ручное
    -   метод пристального взгляда - сложно оценить трудозатраты и результат
    -   Ручное - подтвердить или опровергнуть гипотезу узкого места
        -   time - Unix tool
-   статистический statistical профайлер - через маленькие промежутки времени берётся указатель на текущую
    выполняемую функцию
    -   gprof - Unix tool C, Pascal, or Fortran77
    -   их не много
-   событийный (deterministic, event-based) профайлер - отслеживает все вызовы функций, возвраты, исключения и
    замеряет интервалы между этими событиями - возможно замедление работы программы в два и более раз
    -   Python standard library provides:
        -   profile - if cProfile is not available
        -   cProfile
-   debugging


<a id="org777d1e1"></a>

## cProfile

primitive calls - without recursion

-   **ncalls:** for the number of calls
-   **tottime:** time spent inside without subfunctions
-   **percall:** tottime/tottime
-   **cumtime:** time spent in this and all subfunctions and in recursion
-   **percall:** cumtime/ncalls

    import cProfile
    import re
    cProfile.run('re.compile("foo|bar")', filename='restats')
    #  pstats.Stats class reads profile results from a file and formats them in various ways.
    # python -m cProfile [-o output_file] [-s sort_order] (-m module | myscript.py)


<a id="orga8eb550"></a>

## small code measure 1

python3 -m timeit '"-".join(str(n) for n in range(100))'

    def test():
        """Stupid test function"""
        L = [i for i in range(100)]
    
    if __name__ == '__main__':
        import timeit
        print(timeit.timeit("test()", setup="from __main__ import test"))


<a id="org2c140e9"></a>

## small code measure 2 <a id="org2a82e75"></a>

    import time
    start_time = time.time()
    main()
    print("--- %s seconds ---" % (time.time() - start_time))


<a id="org6c62aa4"></a>

## pdb - breakpoint and code investigation

    python3 -m pdb app.py arg1 arg2

-   built-in breakpoint() function that calls pdb.

pdb commands: <https://docs.python.org/3/library/pdb.html>

-   s(step)	dive in
-   n(next)	step over
-   unt(il) [lineno]
-   r(eturn)
-   c(ontinue)

-   l .		List the source code around the current line or continue list
-   b		list breakpoints
-   clear	Clear a breakpoint by its index.

-   where	Display the current call stack.
-   args		Print the argument list of the current function.

-   p/pp		evaluate expression
    -   p locals()
    -   p globals()
-   run/quit


<a id="orgd2f3f64"></a>

## pdb - .pdbrc file <a id="org2fedd19"></a>

steps:

1.  create ~/.pdbrc
2.  python -m pdb file.py

    b /usr/lib/python3.12/site-packages/redis/cluster.py:1145
    commands 1
    pp redis_node, connection, command
    end
    continue

commands:

    # b /usr/lib/python3.12/site-packages/redis/cluster.py:1145
    # commands 1
    # pp redis_node, connection, command
    # end
    
    # b /usr/lib/python3.12/site-packages/redis/cluster.py:1143
    # # b /usr/lib/python3.12/site-packages/redis/connection.py:275
    # commands 1
    # pp asking, command, target_node, self.nodes_manager.nodes_cache.values()
    # end
    
    # b /usr/lib/python3.12/site-packages/redis/cluster.py:1152
    # commands 1
    # p "wwwww", response
    # end
    
    # # target_node
    
    # b /usr/lib/python3.12/site-packages/redis/cluster.py:1500
    # commands 2
    # p "----initialize---"
    # end
    # continue
    
    b /usr/lib/python3.12/site-packages/redis/client.py:310
    commands 1
    p self.connection_pool
    end


<a id="orgb098cb3"></a>

## TODO py-spy, pyinstrument


<a id="org6107849"></a>

# inject

<https://github.com/ivankorobkov/python-inject>
Dependency injection


<a id="org7c48cd7"></a>

## Callable

    import inject
    # configuration
    inject.configure(lambda binder: binder.bind_to_provider('predict', lambda: predict))
    # or
    def my_config(binder):
      binder.bind_to_provider('predict', lambda: predict)
    inject.configure(my_config)
    
    # usage
    @inject.params(predict='predict')  # param name to a binder key.
    def detect_advanced(self, predict=None) -> (int, any):


<a id="orgfe5363d"></a>

## links

<https://github.com/ivankorobkov/python-inject>


<a id="orgc1694f8"></a>

# BUILD and PACKAGING

**setup.py** - dustutils and setuptools (based on) was most widely used approach. Since PEP 517, PEP 518 -
 **pyproject.toml** is recommended format for package.


<a id="org84afee7"></a>

## build tools:

**frontend** - read pyproject.toml

-   pip
-   build
-   gpep517 - gentoo tool <https://github.com/projg2/gpep517>
-   hatch

**backend** - defined in [build-system]->build-backend, create the build artifacts, dictates what additional
 information is required in the pyproject.toml file

-   Hatch or Hatchling
-   setuptools
-   Flit
-   PDM


<a id="orgdb3ec29"></a>

### hatchling

backend and frontend

    hatch build /path/to/project

1.  links

    -   <https://pypi.org/project/hatchling/>
    -   <https://github.com/pypa/hatch>
    -   doc <https://hatch.pypa.io/>


<a id="org4c6c59b"></a>

### setuptools

build backend

collection of enhancements to the Python distutils that allow you to more easily build and distribute Python
 distributions, especially ones that have dependencies on other packages.

defines the dependencies for a single project, Requirements Files are often used to define the requirements
for a complete Python environment.

It is not considered best practice to use install<sub>requires</sub> to pin dependencies to specific versions, or to
 specify sub-dependencies (i.e. dependencies of your dependencies).

1.  ex setup.cfg

        install_requires=[
           'A>=1,<2', # not allow v2
           'B>=2'
        ]

2.  old way

    install
    
    -   python setup.py build
    -   python setup.py install &#x2013;install-lib ~/.local/lib/python3.10/site-packages/

3.  links

    -   <https://pypi.org/project/setuptools>
    -   <https://github.com/pypa/setuptools>
    -   toml <https://setuptools.pypa.io/en/latest/userguide/pyproject_config.html>


<a id="orgcb81bdc"></a>

### gpep517 <a id="org909a52e"></a>

a minimal tool to aid building wheels for Python packages

    gpep517 build-wheel --backend setuptools.build_meta --output-fd 3 --wheel-dir /var/tmp/portage/dev-python/flask-2.3.2/work/Flask-2.3.2-python3_11/wheel
    gpep517 install-wheel --destdir=/var/tmp/portage/dev-python/flask-2.3.2/work/Flask-2.3.2-python3_11/install --interpreter=/usr/bin/python3.11 --prefix=/usr --optimize=all /var/tmp/portage/dev-python/flask-2.3.2/work/Flask-2.3.2-python3_11/wheel/Flask-2.3.2-py3-none-any.whl

commands:

-   **get-backend:** to read build-backend from pyproject.toml (auxiliary command).
-   **build-wheel:** to call the respeective PEP 517 backend in order to produce a wheel.
-   **install-wheel:** to install a wheel into the specified directory,
-   **install-from-source:** that combines building a wheel and installing it (without leaving the artifacts),
-   **verify-pyc:** to verify that the .pyc files in the specified install tree are correct and up-to-date.

1.  links

    -   <https://pypi.org/project/gpep517/>
    -   <https://github.com/projg2/gpep517>


<a id="org59f686a"></a>

## toml format for pyproject.toml

Tom's Obvious Minimal Language


<a id="org576f666"></a>

### basic

-   \b         - backspace       (U+0008)
-   \t         - tab             (U+0009)
-   \n         - linefeed        (U+000A)
-   \f         - form feed       (U+000C)
-   \r         - carriage return (U+000D)
-   \\"         - quote           (U+0022)
-   \\\\         - backslash       (U+005C)
-   \uXXXX     - unicode         (U+XXXX)
-   \UXXXXXXXX - unicode         (U+XXXXXXXX)

    # This is a TOML comment
    str1 = "I'm a string."
    str2 = "You can \"quote\" me."
    str3 = "Name\tJos\u00E9\nLoc\tSF."
    
    str1 = """
    Roses are red
    Violets are blue"""
    
    str2 = """\
      The quick brown \
      fox jumps over \
      the lazy dog.\
      """
    
    # Literal strings - No escaping is performed so what you see is what you get
    path = 'C:\Users\nodejs\templates'
    path2 = '\\User\admin$\system32'
    quoted = 'Tom "Dubs" Preston-Werner'
    regex = '<\i\c*\s*>'
    
    # multi-line literal strings
    re = '''I [dw]on't need \d{2} apples'''
    lines = '''
    The first newline is
    trimmed in raw strings.
    All other whitespace
    is preserved.
    '''


<a id="org17e9f88"></a>

### integers

    # integers
    int1 = +99
    int2 = 42
    int3 = 0
    int4 = -17
    
    # hexadecimal with prefix `0x`
    hex1 = 0xDEADBEEF
    hex2 = 0xdeadbeef
    hex3 = 0xdead_beef
    
    # octal with prefix `0o`
    oct1 = 0o01234567
    oct2 = 0o755
    
    # binary with prefix `0b`
    bin1 = 0b11010110
    
    # fractional
    float1 = +1.0
    float2 = 3.1415
    float3 = -0.01
    
    # exponent
    float4 = 5e+22
    float5 = 1e06
    float6 = -2E-2
    
    # both
    float7 = 6.626e-34
    
    # separators
    float8 = 224_617.445_991_228
    
    # infinity
    infinite1 = inf # positive infinity
    infinite2 = +inf # positive infinity
    infinite3 = -inf # negative infinity
    
    # not a number
    not1 = nan
    not2 = +nan
    not3 = -nan


<a id="org0c9bd8c"></a>

### Dates and Times

    # offset datetime
    odt1 = 1979-05-27T07:32:00Z
    odt2 = 1979-05-27T00:32:00-07:00
    odt3 = 1979-05-27T00:32:00.999999-07:00
    
    # local datetime
    ldt1 = 1979-05-27T07:32:00
    ldt2 = 1979-05-27T00:32:00.999999
    
    # local date
    ld1 = 1979-05-27
    
    # local time
    lt1 = 07:32:00
    lt2 = 00:32:00.999999


<a id="org2d256d2"></a>

### array and table

-   Key/value pairs within tables are not guaranteed to be in any specific order.
-   only contain ASCII letters, ASCII digits, underscores, and dashes (A-Za-z0-9\_-). Note that bare keys are

allowed to be composed of only ASCII digits, e.g. 1234, but are always interpreted as strings.

-   Quoted keys

    key = # INVALID
    first = "Tom" last = "Preston-Werner" # INVALID
    1234 = "value"
    "127.0.0.1" = "value"
    
    = "no key name"  # INVALID
    "" = "blank"     # VALID but discouraged
    '' = 'blank'     # VALID but discouraged
    
    fruit.name = "banana"     # this is best practice
    fruit. color = "yellow"    # same as fruit.color
    fruit . flavor = "banana"   # same as fruit.flavor
    
    # DO NOT DO THIS - Defining a key multiple times is invalid.
    name = "Tom"
    name = "Pradyun"
    # THIS WILL NOT WORK
    spelling = "favorite"
    "spelling" = "favourite"
    
    # This makes the key "fruit" into a table.
    fruit.apple.smooth = true
    # So then you can add to the table "fruit" like so:
    fruit.orange = 2
    
    # THE FOLLOWING IS INVALID
    fruit.apple = 1
    fruit.apple.smooth = true
    
    integers = [ 1, 2, 3 ]
    colors = [ "red", "yellow", "green" ]
    nested_arrays_of_ints = [ [ 1, 2 ], [3, 4, 5] ]
    nested_mixed_array = [ [ 1, 2 ], ["a", "b", "c"] ]
    string_array = [ "all", 'strings', """are the same""", '''type''' ]
    
    # Mixed-type arrays are allowed
    numbers = [ 0.1, 0.2, 0.5, 1, 2, 5 ]
    contributors = [
      "Foo Bar <foo@example.com>",
      { name = "Baz Qux", email = "bazqux@example.com", url = "https://example.com/bazqux" }
    ]
    integers2 = [
      1, 2, 3
    ]
    
    integers3 = [
      1,
      2, # this is ok
    ]
    
    [table-1]
    key1 = "some string"
    key2 = 123
    
    [table-2]
    key1 = "another string"
    key2 = 456
    
    [a.b.c]            # this is best practice
    [ d.e.f ]          # same as [d.e.f]
    [ g .  h  . i ]    # same as [g.h.i]
    [ j . "ʞ" . 'l' ]  # same as [j."ʞ".'l']


<a id="orga262e2c"></a>

## pyproject.toml

consis of

-   [build-system] - pep-0517
-   [project] - pep 621 pyproject.toml <https://packaging.python.org/en/latest/specifications/declaring-project-metadata/#declaring-project-metadata>
    -   dependencies - pep 0631
-   [project.urls]
-   [project.scripts], [project.gui-scripts], and [project.entry-points] - entryproins
-   [project.optional-dependencies]
-   [tool] - pep 518 <https://packaging.python.org/en/latest/specifications/declaring-build-dependencies/#declaring-build-dependencies>

folder structure <https://packaging.python.org/en/latest/tutorials/packaging-projects/>


<a id="org42c894b"></a>

### [build-system]

Hatch

    requires = ["hatchling"]
    build-backend = "hatchling.build"

setuptools

    requires = ["setuptools>=61.0"]
    build-backend = "setuptools.build_meta"

Flit

    requires = ["flit_core>=3.4"]
    build-backend = "flit_core.buildapi"

PDM

    requires = ["pdm-backend"]
    build-backend = "pdm.backend"


<a id="orgcc95f74"></a>

### metadata [project] and [project.urls]

pep 621 - [project] and <https://packaging.python.org/en/latest/specifications/declaring-project-metadata/#declaring-project-metadata>

    [project]
    name = "example_package_YOUR_USERNAME_HERE"
    version = "0.0.1"
    authors = [
      { name="Example Author", email="author@example.com" },
    ] # optional?
    description = "A small example package"
    readme = "README.md"
    license = {file = "LICENSE.txt"} # optional
    keywords = ["egg", "bacon", "sausage", "tomatoes", "Lobster Thermidor"] # optional
    requires-python = ">=3.7"
    classifiers = [
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ]
    dependencies = [
      "httpx",
      "gidgethub[httpx]>4.0.0",
      "django>2.1; os_name != 'nt'",
      "django>2.0; os_name == 'nt'",
    ] # optional
    
    [project.optional-dependencies]
    gui = ["PyQt5"]
    cli = [
      "rich",
      "click",
    ]
    
    
    [project.urls]
    "Homepage" = "https://github.com/pypa/sampleproject"
    "Bug Tracker" = "https://github.com/pypa/sampleproject/issues"
    
    [project.scripts]
    spam-cli = "spam:main_cli"


<a id="org3160f1f"></a>

### [project.scripts]

    mycmd = mymod:main

would create a command mycmd launching a script like this:

    import sys
    from mymod import main
    sys.exit(main())

main should return 0

1.  links

    -   <https://packaging.python.org/en/latest/specifications/entry-points/#entry-points>
    -   example of main for cli <https://docs.python.org/3/library/__main__.html>


<a id="org53d5415"></a>

### dependencies

<https://peps.python.org/pep-0508/>


<a id="org997c393"></a>

### TODO minimal

<https://packaging.python.org/en/latest/tutorials/packaging-projects/#configuring-metadata>


<a id="orgd738896"></a>

### example

<https://raw.githubusercontent.com/pypa/sampleproject/refs/heads/main/pyproject.toml>

    [build-system]
    requires = ["setuptools"] # REQUIRED if [build-system] table is used
    build-backend = "setuptools.build_meta" # If not defined, then legacy behavior can happen.
    
    [project]
    name = "sampleproject" # REQUIRED, is the only field that cannot be marked as dynamic.
    version = "4.0.0" # REQUIRED, although can be dynamic
    description = "A sample Python project"
    readme = "README.md"
    requires-python = ">=3.9"
    license = { file = "LICENSE.txt" }
    keywords = ["sample", "setuptools", "development"]
    authors = [{ name = "A. Random Developer", email = "author@example.com" }]
    maintainers = [
      { name = "A. Great Maintainer", email = "maintainer@example.com" },
    ]
    
    classifiers = [
      # How mature is this project? Common values are
      #   3 - Alpha
      #   4 - Beta
      #   5 - Production/Stable
      "Development Status :: 3 - Alpha",
      # Indicate who your project is intended for
      "Intended Audience :: Developers",
      "Topic :: Software Development :: Build Tools",
      # Pick your license as you wish
      "License :: OSI Approved :: MIT License",
      # Specify the Python versions you support here. In particular, ensure
      # that you indicate you support Python 3. These classifiers are *not*
      # checked by "pip install". See instead "requires-python" key in this file.
      "Programming Language :: Python :: 3",
      "Programming Language :: Python :: 3.9",
      "Programming Language :: Python :: 3.10",
      "Programming Language :: Python :: 3.11",
      "Programming Language :: Python :: 3.12",
      "Programming Language :: Python :: 3.13",
      "Programming Language :: Python :: 3 :: Only",
    ]
    
    dependencies = ["peppercorn"]
    
    [project.optional-dependencies]
    dev = ["check-manifest"]
    test = ["coverage"]
    
    [project.urls]
    "Homepage" = "https://github.com/pypa/sampleproject"
    "Bug Reports" = "https://github.com/pypa/sampleproject/issues"
    "Funding" = "https://donate.pypi.org"
    "Say Thanks!" = "http://saythanks.io/to/example"
    "Source" = "https://github.com/pypa/sampleproject/"
    
    [project.scripts]
    sample = "sample:main"
    
    [tool.setuptools]
    package-data = { "sample" = ["*.dat"] }


<a id="org2b81fa8"></a>

## build

python3 -m build

create: dist/

-   ├── example<sub>package</sub><sub>YOUR</sub><sub>USERNAME</sub><sub>HERE</sub>-0.0.1-py3-none-any.whl -  **built distribution** with binaries
-   └── example<sub>package</sub><sub>YOUR</sub><sub>USERNAME</sub><sub>HERE</sub>-0.0.1.tar.gz - **source distribution**


<a id="orga8b336a"></a>

## distutils (old)

package has been deprecated in 3.10 and will be removed in Python 3.12. Its functionality for specifying
 package builds has already been completely replaced by third-party packages **setuptools** and **packaging**, and
 most other commonly used APIs are available elsewhere in the standard library (such as platform, shutil,
 subprocess or sysconfig).

-   <https://docs.python.org/3/distutils/>


<a id="orgfa3bf8b"></a>

## terms

-   Source Distribution (or “sdist”) - generated using python setup.py sdist.
-   Wheel - A Built Distribution format
-   build - is a PEP 517 compatible Python package builder.
    -   pep517 - new style of source tree based around the pep518 pyproject.toml + [build-backend]
-   setup.py-style - de facto specification for "source tree"
-   src-layout - not flat layout. selected for package folder structure. pep 660

types of artifacts:

-   The source distribution (sdist): python3 -m build &#x2013;sdist source-tree-directory
-   The built distributions (wheels): python3 -m build &#x2013;wheel source-tree-directory
    -   no compilation required during install:


<a id="org3d3d340"></a>

## recommended

dapendency management:

-   pip with &#x2013;require-hashes and &#x2013;only-binary :all:
-   virtualenv or venv
-   pip-tools, Pipenv, or poetry
-   wheel project - offers the bdist<sub>wheel</sub> **setuptools** extension
-   buildout: primarily focused on the web development community
-   Spack, Hashdist, or conda: primarily focused on the scientific community.

package tools

-   **setuptools**
-   **build** to create Source Distributions and wheels.
-   **cibuildwheel** - If you have binary extensions and want to distribute wheels for multiple platforms
-   **twine** - for uploading distributions to PyPI.


<a id="orgc5f70db"></a>

## Upload to the package distribution service


<a id="org88a972d"></a>

### TODO twine

    twine upload dist/package-name-version.tar.gz dist/package-name-version-py3-none-any.whl


<a id="orgd1b180b"></a>

### TODO Github actions


<a id="orge5c77c5"></a>

## editable installs PEP660

    pip install --editable

editable installation mode - installation of projects in such a way that the python code being imported
 remains in the source directory

Python programmers want to be able to develop packages without having to install (i.e. copy) them into
 site-packages, for example, by working in a checkout of the source repository.

Actualy just add directories to PYTHONPATH.

there is 2 types of wheel now: normal and "editable".


<a id="orga29fd52"></a>

## PyPi project name, name normalization and other specifications

names should be ASCII alphabet, ASCII numbers. ., -, and \_ allowed, but normalized to -.

-   normalized to
-   lowercase

Valid non-normalized names: ^([A-Z0-9]|[A-Z0-9][A-Z0-9.\_-]\*[A-Z0-9])$

Normalization: re.sub(r"[-\_.]+", "-", name).lower()

Source distribution format - pep-0517 PEP 518

-   Source distribution file name: {name}-{version}.tar.gz
-   contains a single top-level directory called {name}-{version} (e.g. foo-1.0), containing the source files of the package.
-   directory must also contain
    -   a pyproject.toml
    -   PKG-INFO file containing metadata - PEP 566


<a id="org4d7aad6"></a>

### links

-   <https://discuss.python.org/t/revisiting-distribution-name-normalization/12348>
-   <https://peps.python.org/pep-0503/>
-   <https://packaging.python.org/en/latest/specifications/>


<a id="org1e88243"></a>

## TODO src layout vs flat layout

src layout helps

-   prevent accidental usage of the in-development copy of the code

-   <https://packaging.python.org/en/latest/discussions/src-layout-vs-flat-layout/>
-   <https://blog.ionelmc.ro/2014/05/25/python-packaging/#the-structure%3E>


<a id="orge0d7ce9"></a>

## build tool, build system

The Boost project <https://en.wikipedia.org/wiki/Boost_(C%2B%2B_libraries)> has its own build system:
 BJam. There is some documentation, but it's kind of minimal and cryptic.

using Autotools for a modern C/C++ project in 2021 is like using CVS for source code version control in 2021:
 there are better tools available

**Meson** is a build tool with good C/C++ support. written in Python and generates Ninja build
 files. <https://en.wikipedia.org/wiki/Ninja_(build_system)>

-   there is one kind of obvious way to do it.
-   has better documentation
-   only supports out of source tree builds, and its domain specific language is arguably much better designed.

**CMake**

-   several ways to implement common build tasks


<a id="org4493ae7"></a>

## build from source

Old:

-   python setup.py install &#x2013;user
-   if setup.py and pyproject.toml exist: pip install &#x2013;index-url <https://your-local-repo-url> &#x2013;disable-pip-version-check -e .

New - can not disable Internet connection:

-   python3 -m build -x # uses pip to install dependencies, create dist/package.whl file
    -   -x to skip dependencies
-   pip install &#x2013;no-index dist/pipdeptree-2.23.5.dev3+gaa0535b-py3-none-any.whl
    -   &#x2013;no-index imlies &#x2013;disable-pip-version-check
    -   pip install &#x2013;no-index &#x2013;find-links=C:\path&rarr;\package\mypackage mypackage openpyxl==3.1.5

Gentoo way:

-   see: [32.1.3](#org909a52e)

Source:

-   pip install &#x2013;force-reinstall &#x2013;no-cache-dir &#x2013;no-binary=:all: &#x2013;user # &#x2013;require-hashes may be added

After installation, you may need to adjust:

-   export PYTHONPATH=$PYTHONPATH:$INSTALL<sub>DIR</sub>/lib/pythonX.Y/site-packages
-   export PATH=$PATH:$INSTALL<sub>DIR</sub>/bin


<a id="org3e0a727"></a>

### pipdeptree

<https://github.com/tox-dev/pipdeptree>

requirements:

-   hatch-vcs,
-   hatchling
-   packaging>=24.1
-   pip>=24.2


<a id="org7320e65"></a>

### troubles

/usr/bin/python3: No module named build

-   Debian: apt install python3-build
-   other: python -m pip install build

disable pip Internet requests
pip &#x2013;disable-pip-version-check


<a id="orgbce7390"></a>

## links

-   main <https://packaging.python.org/en/latest/>
-   python key projects <https://packaging.python.org/en/latest/key_projects/>
-   build systems recommended (officla) <https://packaging.python.org/en/latest/guides/tool-recommendations/>
-   gentoo <https://blogs.gentoo.org/mgorny/2021/11/07/the-future-of-python-build-systems-and-gentoo/>
-   PEP 517 – A build-system independent format for source trees <https://peps.python.org/pep-0517/>
-   PEP 518 Specifying Minimum Build System Requirements for Python Projects <https://peps.python.org/pep-0518/>
-   PEP 621 Storing project metadata in pyproject.toml - <https://peps.python.org/pep-0621/>
-   specifications <https://packaging.python.org/en/latest/specifications/>
-   pip default installer <https://peps.python.org/pep-0453/>


<a id="orgd8117d3"></a>

# setuptools - build system


<a id="org5c3402a"></a>

# pip (package manager)

Устанавливается вместе с Python

-   (pip3 for Python 3) by default   - MIT -
-   pip.pypa.io

Some package managers, including pip, use PyPI as the default source for packages and their dependencies.

**Python Package Index** -  official third-party software repository for Python

-   PyPI (*ˌpaɪpiˈaɪ*)


<a id="orgcc5cd7d"></a>

## release steps

1.  register at pypi.org
2.  <https://pypi.org/manage/account/#api-tokens>
3.  github->project->Secrets and variables->actions
    -   New repostitory secret
    -   PYPI<sub>API</sub><sub>TOKEN</sub>
    -   token from 2)
4.  github->project->Actions->add->Publish Python Package


<a id="orgeab9d23"></a>

### links

<https://packaging.python.org/en/latest/guides/publishing-package-distribution-releases-using-github-actions-ci-cd-workflows/>


<a id="orga067eb5"></a>

## wheels

**“Wheel”** is a built, archive format that can greatly speed installation compared - .whl

to disable wheel:

-   &#x2013;no-cache-dir
-   &#x2013;no-binary=:all:


<a id="orga6c0ef5"></a>

## virtualenv

Unlike venv, virtualenv can create virtual environments for other **versions of Python**.

Может быть так, что проект А запрашивает версию 1.0.0, в то время как проект Б запрашивает более новую версию
2.0.0, к примеру.

-   не может различать версии в каталоге «site-packages»

pip install virtualenv


<a id="org7050e36"></a>

## venv

создать:

    python -m venv /path/to/new/virtual/environment

-   pyvenv.cfg - created
-   bin (or Scripts on Windows) containing a copy/symlink of the Python binary/binaries
-   в директории с интерпретатором или уровнем выше ищется файл с именем pyvenv.cfg;
-   если файл найден, в нём ищется ключ home, значение которого и будет базовой директорией;
-   в базовой директории идёт поиск системной библиотеки (по спец. маркеру os.py);

Использовать:

-   source bin/activate
-   ./bin/python main.py

**&#x2013;prefix=venv is NOT equal to &#x2013;user**
idk what &#x2013;user do, but only &#x2013;prefix works

create:

-   apt install python3.10-venv
-   python3 -m venv /root/vit/venv
-   source venv/bin/activate
-   sed -i "s#/usr/bin#$(readlink -f venv/bin)#"  venv/pyvenv.cfg
-   source venv/bin/activate
-   venv/bin/python -m pip install something &#x2013;prefix=/opt/.venv


<a id="orgdf7f586"></a>

## update

pip3 install &#x2013;upgrade pip &#x2013;user

-   устаревшие: pip3 list &#x2013;outdated
-   обновить: pip3 install &#x2013;upgrade SomePackage


<a id="org213b5f1"></a>

## requirements.txt

Как установить

-   pip install -r requirements.txt

Как создать

1.  pip freeze > requirements.txt - Создать на основе всех установленных библиотек
2.  pipreqs . - на основе импортов - требует установку pip3 install pipreqs &#x2013;user

Смотреть на кроссплатформенность! Не все библиотеки такие!

    docopt == 0.6.1             # Version Matching. Must be version 0.6.1
    keyring >= 4.1.1            # Minimum version 4.1.1
    coverage != 3.5             # Version Exclusion. Anything except version 3.5
    Mopidy-Dirble ~= 1.1        # Compatible release. Same as >= 1.1, == 1.*
    
    # without version:
    nose
    nose-cov
    beautifulsoup4


<a id="org43f11fd"></a>

## errors

Traceback (most recent call last):
  File "/usr/bin/pip3", line 9, in <module>
    from pip import main
ImportError: cannot import name 'main'

SOLVATION: alias pip3="*home/u2*.local/bin/pip3"


<a id="org3ad27e2"></a>

## cache dir

to reduce the amount of time spent on duplicate downloads and builds.

-   cached:
    -   http responses
    -   Locally built wheels
-   pip cache dir


<a id="orga3a0029"></a>

### links

<https://pip.pypa.io/en/latest/topics/caching/>


<a id="orgf6dc3f7"></a>

## hashes <a id="org0f3cf49"></a>

-   pip install package &#x2013;require-hashes
-   Requirements must be pinned with ==
-   weak hashes: md5, sha1, and sha224

-   python -m pip download &#x2013;no-binary=:all: SomePackage
-   python -m pip hash &#x2013;algorithm sha512 ./pip<sub>downloads</sub>/SomePackage-2.2.tar.gz
-   pip install &#x2013;force-reinstall &#x2013;no-cache-dir &#x2013;no-binary=:all: &#x2013;require-hashes &#x2013;user -r requirements.txt

FooProject == 1.2 &#x2013;hash=sha256:2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824 \\
  &#x2013;hash=sha256:486ea46224d1bb4fb680f34f7c9ad96a8f24ec88be73ea8e5a6c65260e9cb8a7


<a id="org33d5e11"></a>

## add SSL certificate

export PIP<sub>CERT</sub>=/etc/ssl/certs/rnb.pem

Dockerfile:

-   COPY /etc/ssl/certs/rnb.pem /rnb.pem
-   ENV PIP<sub>CERT</sub>=/rnb.pem


<a id="orgfed35dc"></a>

### crt(not working)

-   pip config set global.cert path/to/ca-bundle.crt
-   pip config list
-   conda config &#x2013;set ssl<sub>verify</sub> path/to/ca-bundle.crt
-   conda config &#x2013;show ssl<sub>verify</sub>

-   git config &#x2013;global http.sslVerify true
-   git config &#x2013;global http.sslCAInfo path/to/ca-bundle.crt

<https://stackoverflow.com/questions/39356413/how-to-add-a-custom-ca-root-certificate-to-the-ca-store-used-by-pip-in-windows>


<a id="org899b8e3"></a>

### pem(not working)

pip config set global.cert /home/RootCA3.pem - указываем путь к самоподписномму серту, если возникают ошибки установки модулей питона.

-   python -c "import ssl; print(ssl.get<sub>default</sub><sub>verify</sub><sub>paths</sub>())"
-   add pem to path


<a id="org8393216"></a>

## ignore SSL certificates

pip install &#x2013;trusted-host pypi.org &#x2013;trusted-host files.pythonhosted.org <package<sub>name</sub>>


<a id="orgfe9119e"></a>

## proxy

1.  proxychains
2.  dns proxy and http


<a id="orgceff3c0"></a>

## TODO <https://packaging.python.org/en/latest/key_projects/>


<a id="org4d643ab"></a>

## ways to freeze dependencies:

Problem: according <https://pip.pypa.io/en/stable/topics/secure-installs/> pip does not perform any checks to
 protect against remote tampering and involves running arbitrary code from distributions

Not working: create virtual environment, install, pip freeze

-   require: python -m pip hash [options] <file> &#x2026;

    ./pip_downloads/SomePackage-2.2.tar.gz:
    --hash=sha256:93e62e05c7ad3da1a233def6731e8285156701e3419a5fe279017c429ec67ce0

**Solution:**

1.  pip install pipenv - implementation of <https://github.com/pypa/pipfile>
2.  just generate hashes <https://www.peterdebelak.com/blog/generating-a-fully-qualified-and-hashed-requirements-file/>
    -   which get <https://pypi.org/pypi/zipp/3.19.2/json> and parse


<a id="org117b7e4"></a>

## pipenv

dependency manager

Pepfile - TOML syntax, but it is not **pyproject.toml**


<a id="org4de5657"></a>

### Cons: hard to read Pipfile.lock file.

    cat Pipfile.lock | jq '. | keys

"<sub>meta</sub>",  "default",  "develop"

packages with version:
cat Pipfile.lock | jq '.default | (keys | .[]) + (.[].version)'


<a id="orgd616a3b"></a>

### steps to create project:

1.  pipenv install requests
2.  cd myproject
3.  pipenv install # Install from Pipfile, if there is one:
4.  pipenv install <package> # add package
5.  pipenv lock # create Pepfile.lock with hashes -  repeatable, and deterministic, builds.
6.  pipenv shell
7.  pipenv update &#x2013;outdated # show what is outdated
8.  pipenv update or pipenv update <pkg>

<https://docs.pipenv.org/basics/>


<a id="org13bf539"></a>

### commands

-   check         Checks for PyUp Safety security vulnerabilities and against
    PEP 508 markers provided in Pipfile.
-   clean         Uninstalls all packages not specified in Pipfile.lock.
-   graph         Displays currently-installed dependency graph information.
-   install       Installs provided packages and adds them to Pipfile, or (if no
    packages are given), installs all packages from Pipfile.
-   lock          Generates Pipfile.lock.
-   open          View a given module in your editor.
-   requirements  Generate a requirements.txt from Pipfile.lock.
-   run           Spawns a command installed into the virtualenv.
-   scripts       Lists scripts in current environment config.
-   shell         Spawns a shell within the virtualenv.
-   sync          Installs all packages specified in Pipfile.lock.
-   uninstall     Uninstalls a provided package and removes it from Pipfile.
-   update        Runs lock, then sync.
-   upgrade       Resolves provided packages and adds them to Pipfile, or (if no
    packages are given), merges results to Pipfile.lock
-   verify        Verify the hash in Pipfile.lock is up-to-date.


<a id="org8a84d13"></a>

## links

<https://pip.pypa.io/en/latest/topics/secure-installs/>


<a id="orgd9b9f14"></a>

# urllib3 and requests library

requests->urllib3->http.client

request parametes:

-   data - body with header: Content-Type: applicantion/x-www-form-urlencoded
-   params - ?param=value - urllib.quote(string)


<a id="org27d39b0"></a>

## difference

**speed** - I found that time took to send the data from the client to the server took same time for both
  modules (urllib, requests) but the time it took to return data from the server to the client is more then
  twice faster in urllib compare to request.


<a id="org62abe0d"></a>

## see raw request


<a id="org49c0314"></a>

### requests

1.  1) after request:

    hello, as!
    
        p = requests.post(f'http://127.0.0.1:8081/transcribe/{rid}/find_sentence', params={'sentences': sentences})
        print("----request:")
        [print(x) for x in p.request.__dict__.items()]
    
    \#+

2.  2) before request

        s = Session()
        req = Request('GET',  url, data=data, headers=headers)
        prepped = s.prepare_request(req)
        [print(x) for x in prepped.__dict__.items()]

3.  3) after request from logs:

        import requests
        import logging
        
        # These two lines enable debugging at httplib level (requests->urllib3->http.client)
        # You will see the REQUEST, including HEADERS and DATA, and RESPONSE with HEADERS but without DATA.
        # The only thing missing will be the response.body which is not logged.
        try:
            import http.client as http_client
        except ImportError:
            # Python 2
            import httplib as http_client
        http_client.HTTPConnection.debuglevel = 1
        
        # You must initialize logging, otherwise you'll not see debug output.
        logging.basicConfig()
        logging.getLogger().setLevel(logging.DEBUG)
        requests_log = logging.getLogger("requests.packages.urllib3")
        requests_log.setLevel(logging.DEBUG)
        requests_log.propagate = True
        
        requests.get('https://httpbin.org/headers')


<a id="orgdab8408"></a>

### links

-   <https://stackoverflow.com/questions/10588644/how-can-i-see-the-entire-http-request-thats-being-sent-by-my-python-application>


<a id="org4687c55"></a>

## problems:

-   


<a id="org116f9af"></a>

## links

-   <https://requests.readthedocs.io/en/latest/>
-   <https://urllib3.readthedocs.io/en/stable/>


<a id="orgbb846cc"></a>

# pdf 2 png


<a id="org0c9cc9e"></a>

## pdf2image

require poppler-utils

-   wraps pdftoppm and pdftocairo
-   to PIL image


<a id="orgcebb426"></a>

## Wand

pip3 install Wand

ImageMagic binding


<a id="orgb0727de"></a>

## PyMuPDF

pip3 install PyMuPDF


<a id="org2f677a8"></a>

# statsmodels

-   <https://github.com/statsmodels/statsmodels>
-   <https://www.coursera.org/lecture/data-analysis-applications/avtokorrieliatsiia-4PEHZ>
-   <https://machinelearningmastery.com/gentle-introduction-autocorrelation-partial-autocorrelation/>
-   <https://en.wikipedia.org/wiki/Partial_autocorrelation_function>


<a id="org530f30d"></a>

## ACF, PACF

    from statsmodels.graphics.tsaplots import plot_acf
    from matplotlib import pyplot
    series = read_csv('seasonally_adjusted.csv', header=None)
    plot_acf(series, lags = 150) #  lag values along the x-axis and correlation on the y-axis between -1 and 1
    plot_pacf(series) # не понять. короче, то же самое, только более короткие корреляции не мешают
    pyplot.show()


<a id="org9b4dd58"></a>

## bar plot

    loan_type_count = data['Loan Type'].value_counts()
    sns.set(style="darkgrid")
    sns.barplot(loan_type_count.index, loan_type_count.values, alpha=0.9)


<a id="org83efc78"></a>

# XGBoost

-   <https://github.com/dmlc/xgboost>
-   doc <https://xgboost.readthedocs.io/en/latest/>
-   parameters tunning <https://xgboost.readthedocs.io/en/latest/tutorials/param_tuning.html>

One natural regularization parameter is the number of gradient boosting iterations M (i.e. the number of trees
in the model when the base learner is a decision tree).


<a id="org725cfc7"></a>

## usage

    import xgboost as xgb

or

    from xgboost import XGBClassifier - multi:softprob if classes > 2

for multiclass classification:

-   from sklearn.preprocessing import LabelBinarizer
-   y = np.array(['apple', 'pear', 'apple', 'orange'])
-   y<sub>dense</sub> = LabelBinarizer().fit<sub>transform</sub>(y) - [ [1 0 0],[0 0 1],[1 0 0],[0 0 1] ]


<a id="org59e2767"></a>

## categorical columns

The politic of XGBoost is to not have a special support for **categorical variables**. It s up to you to
manage them before providing the features to the algo.

If booster=='gbtree' (the default), then XGBoost can handle categorical variables encoded as numeric
directly, without needing dummifying/one-hotting. Whereas if the label is a string (not an integer)
then yes we need to comvert it.


<a id="org8b09cac"></a>

### Feature importance between numerical and categorical features

<https://discuss.xgboost.ai/t/feature-importance-between-numerical-and-categorical-features/245>

one-hot encoding. Consequently, each categorical feature transforms into N sub-categorical features,
where N is the number of possible outcomes for this categorical feature.

Then each sub-categorical feature would compete with the rest of sub-categorical features and all
numerical features. It is much easier for a numerical feature to get higher importance ranking.

What we can do is to set importance<sub>type</sub> to weight and then add up the frequencies of
sub-categorical features to obtain the frequency of each categorical feature.


<a id="orge427e12"></a>

## gpu support

    tree_method = 'gpu_hist'
    gpu_id = 0  (optional)


<a id="org614af60"></a>

## result value from leaf value

The final probability prediction is obtained by taking sum of leaf values (raw scores) in all the trees and
then transforming it between 0 and 1 using a **sigmoid** function. (1 / (1 + math.exp(-x)))

    leaf = 0.1111119 #  raw score
    result = 1/(1+ np.exp(-(leaf))) = 0.5394 # probability score -  logistic function
    
    xgb.plot_tree(bst, num_trees=num_round-1) # default 0 tree
    
    print(bst.predict(t, ntree_limit=1)) # first 0 tree, default - all


<a id="orgb68a493"></a>

## terms

-   instance or entity - line
-   feature - column
-   data - list of instances - 2D
-   labels - 1D list of labels for instances


<a id="orga8cf371"></a>

## xgb.DMatrix

-   LibSVM text format file
-   Comma-separated values (CSV) file
-   NumPy 2D array
-   SciPy 2D sparse array
-   cuDF DataFrame
-   Pandas data frame, and
-   XGBoost binary buffer file.

    data = np.random.rand(5, 10)  # 5 entities, each contains 10 features
    label = np.random.randint(2, size=5)  # binary target array([1, 0, 1, 0, 0])
    dtrain = xgb.DMatrix(data, label=label)
    
    # weights
    w = np.random.rand(5, 1)
    dtrain = xgb.DMatrix(data, label=label, missing=-999.0, weight=w)


<a id="orga845c18"></a>

### LibSVM file format

    1 101:1.2 102:0.03
    0 1:2.1 10001:300 10002:400

-   Each line represent a single instance
-   1,0 - labels - probability values in [0,1]
-   101, 102 - feature indices
-   1.2, 0.03 - feature values

    xgb.DMatrix('/home/u2/Downloads/agaricus.txt.train')
    xgb.DMatrix(train.csv?format=csv&label_column=0)


<a id="orgeabc358"></a>

## parameters

<https://xgboost.readthedocs.io/en/latest/parameter.html>

    param = {'max_depth': 2, 'eta': 1, 'objective': 'binary:logistic'}

objective:

-   'binary:logistic' - labels [0,1] - output probability, binary

-'reg:squarederror' - regression with squared loss

-   multi:softmax		multiclass classification using the softmax objective
-   

'booster': 'gbtree' - **gbtree** and **dart** use tree based models while **gblinear** uses linear functions

eval<sub>metric</sub> - **rmse** for regression, and **error** for classification, **mean average precision** for ranking

-   error - Binary classification #(wrong cases)/#(all cases)

'seed': 0 - random seed

**gbtree**

-   'eta': 0.3  - learning<sub>rate</sub>
-   'max<sub>depth</sub>': 6 - Maximum depth of a tree - more = more complex and more likely to overfit
-   'gamma': 0 - Minimum loss reduction required to make a further partition on a leaf node of the tree. - to
    make more coservative


<a id="orga1c2932"></a>

## print important features

    import matplotlib.pyplot as plt
    import matplotlib
    matplotlib.use('TkAgg')
    
    xgb.plot_importance(bst)
    plt.show()


<a id="orgbdc0950"></a>

## TODO prune обрезание деревьев


<a id="orgdf32b4e"></a>

## permutation importance

for XGBClassificator (binary) - sklearn.inspection.permutation<sub>importance</sub>

other - shap values


<a id="orgd3d3a43"></a>

## model to if-else

<https://towardsdatascience.com/xgboost-deployment-made-easy-6e11f4b3f817>


<a id="orga565b20"></a>

## Errors


<a id="org81e02e0"></a>

### ValueError: setting an array element with a sequence.


<a id="orgf655e4f"></a>

### label must be in [0,1] for logistic regression


<a id="org78883e3"></a>

# Natasha & Yargy

-   pip install jupyter
-   pip install yargy ipymarkup    - подсветка разметки
-   jupyter.exe notebook
-   graphviz и вручную настроил PATH на его bin


<a id="org35f4f86"></a>

## yargy

-   **yarky tokenizer** <https://yargy.readthedocs.io/ru/latest/reference.html>
-   **yargy** <https://yargy.readthedocs.io/ru/latest/index.html>
-   MIT License

Недостатки:

-   slow
-   не гибкий
-   нелья построить правила с условиями


<a id="orgb03fb8d"></a>

### yargy.tokenizer

    from yargy.tokenizer import MorphTokenizer # используется по умолчанию
    t = MorphTokenizer()
    list(t('asds'))[0].value
    list(t('asds'))[0].normalized

Его правила:

-   TokenRule('RU', '[а-яё]+'),
-   TokenRule('LATIN', '[a-z]+'),
-   TokenRule('INT', '\d+'),
-   TokenRule('PUNCT','[-\\\\/!#$%&()$$$$\\\*\\+,\\.:;<=>?@^\_\`{|}~№…"\\'«»„“ʼʻ”]'),
-   TokenRule('EOL', '[\n\r]+'),
-   TokenRule('OTHER', '&sect;')]

убрать часть правил:
tokenizer = Tokenizer().remove<sub>types</sub>('EOL')


<a id="orge4111e4"></a>

### rules

-   yargy.predicates- type('INT'), eq('г'), \_or(normalized('ложка'), caseless('вилка')
-   yargy.rule - rule(predicates, &#x2026;), or\_
-   yargy.pipelines - газетти́р - список - конструктор правила
    -   morph<sub>pipeline</sub>(['л','г']) - перед работой приводит слова к нормальной форме
    -   caseless<sub>pipeline</sub>(['Абд Аль','и']) - перед работой приводит слова к нижнему регистру
-   yargy.interpretation.fact('название',['аттрибут', &#x2026;]) - его используют предикаты для их интерпритации. -
    Интерпретация, это сварачивание дерева разбора снизу вверх.
    -   attribute - значение по умолчанию для аттрибута и опреации над результатом

    f = fact('name',[attribute('year', 2017)])
    a=eq('100').interpretation(f.year.custom(произвольная фонкция одного аргумента))
    r=rule(a).interpretation(f)
    match.fact or match.tree.as_dot


<a id="org4ac2e72"></a>

### match

-   <https://github.com/natasha/yargy/blob/master/yargy/parser.py>


<a id="org89db08c"></a>

### предикаты

-   eq(value) 		a == b
-   caseless(value) 	a.lower() == b.lower()
-   in<sub>(value)</sub>   a in b
-   in<sub>caseless</sub>(value) 	a.lower() in b
-   gte(value) 		a >= b
-   lte(value) 		a <= b
-   length<sub>eq</sub>(value) 	len(a) == b
-   normalized(value) 	Нормальная форма слова == value
-   dictionary(value) 	Нормальная форма слова in value
-   gram(value) 		value есть среди граммем слова
-   type(value) 		Тип токена равен value
-   tag(value) 		Тег токена равен value
-   custom(function[, types]) 	function в качестве предиката
-   true 			Всегда возвращает True
-   is<sub>lower</sub>   str.islower
-   is<sub>upper</sub>   str.isupper
-   is<sub>title</sub>   str.istitle
-   is<sub>capitalized</sub>  Слово написано с большой буквы
-   is<sub>single</sub>   Слово в единственном числе

Сэты:

-   optional()
-   repeatable(min=None, max=None, reverse=False)
-   interpretation(a.a) - прикрепляет предикат к эллементу интерпретации


<a id="org78660d1"></a>

### нестандартные формы слова - рулетики

-   Т библиотека?
-   уменьшительно ласкательные приводить к стандартной офрме, словарики?


<a id="orgf3a7efa"></a>

### ex

    #------- правило в виде контекстно-свободной грамматики ----
    from yargy import rule
    R = rule('a','b')
    R.normalized.as_bnf
    >> R -> 'a' 'b'
    #------- FLOAT -------
    from yargy import rule, or_
    from yargy.predicates import eq, type as _type, in_
    INT = _type('INT')
    FLOAT = rule(INT, in_(',.'), INT)
    FRACTION = rule(INT, eq('/'), INT)
    RANGE = rule(INT, eq('-'), INT)
    AMOUNT = or_(
      rule(INT),
      FLOAT,
      FRACTION,
      RANGE)
    #------- MorphTokenizer -----------
    from yargy.tokenizer import MorphTokenizer
    TOKE = MorphTokenizer()
    l = list(TOKE(text))
    for i in l: print('\n'.join(map(str, i)))
    #--------- findall ----------
    from yargy import rule, Parser
    from yargy.predicates import eq
    
    line = '100 г'
    
    MEASURE = rule(eq(100))
    parser = Parser(MEASURE.optional())
    matches=list(parser.findall(line))
    # --------- Simples ------
    from yargy import rule, Parser
    r = rule('a','b')
    parser = Parser(r)
    line = 'abc'
    match = parser.match(line)
    # ----------- spans  show --------
    from ipymarkup import markup, AsciiMarkup
    
    spans =[_.spam for _ in matches]
    for line in markup(text, spans, AsciiMarkup).as_ascii:
        print(line)


<a id="org76e92d1"></a>

### natasha

Extractors:

-   NamesExtractor - NAME,tagger=tagger
-   SimpleNamesExtractor - SIMPLE<sub>NAME</sub>
-   PersonExtractor - PERSON, tagger=tagger
-   DatesExtractor - DATE
-   MoneyExtractor - MONEY
-   MoneyRateExtractor - MONEY<sub>RATE</sub>
-   MoneyRangeExtractor - MONEY<sub>RANGE</sub>
-   AddressExtractor - ADDRESS, tagger=tagger
-   LocationExtractor - LOCATION
-   OrganisationExtractor - ORGANISATION


<a id="orgd434a0f"></a>

### console

-   <https://jupyter.org/documentation>


<a id="org5243c7a"></a>

### QT console

-   <https://qtconsole.readthedocs.io/en/stable/>
-   <https://www.tutorialspoint.com/jupyter/ipython_introduction.htm>
-   inline figures
-   proper multi-line editing with syntax highlighting
-   graphical calltips
-   emacs-style bindings for text navigation
-   HTML or XHTML
-   PNG(outer or inline) in HTML, or inlined as SVG in XHTML
-   **Run**: jupyter qtconsole &#x2013;style monokai
-   ! - system command (!dir)
-   ? - a? - information about varible, plt?? - source definition, exit - q
-   In[2] - input string, Out[2] - out
-   **display(object)** display anythin supported
-   "\*"\*100500; - ; не видеть результат
-   **Switch to SVG inline XHTML** In [10]: %config InlineBackend.figure<sub>format</sub> = 'svg'

1.  keys

    -   Tab - autocompletion - Несклько раз нажать
    -   \`\`Enter\`\`: insert new line (may cause execution, see above).
    -   \`\`Ctrl-Enter\`\`: **force** new line, **never** causes execution.
    -   \`\`Shift-Enter\`\`: **force** execution regardless of where cursor is, no newline added.
    -   \`\`Up\`\`: step backwards through the history.
    -   \`\`Down\`\`: step forwards through the history.
    -   \`\`Shift-Up\`\`: search backwards through the history (like \`\`Control-r\`\` in bash).
    -   \`\`Shift-Down\`\`: search forwards through the history.
    -   \`\`Control-c\`\`: copy highlighted text to clipboard (prompts are automatically stripped).
    -   \`\`Control-Shift-c\`\`: copy highlighted text to clipboard (prompts are not stripped).
    -   \`\`Control-v\`\`: paste text from clipboard.
    -   \`\`Control-z\`\`: undo (retrieves lost text if you move out of a cell with the arrows).
    -   \`\`Control-Shift-z\`\`: redo.
    -   \`\`Control-o\`\`: move to 'other' area, between pager and terminal.
    -   \`\`Control-l\`\`: clear terminal.
    -   \`\`Control-a\`\`: go to beginning of line.
    -   \`\`Control-e\`\`: go to end of line.
    -   \`\`Control-u\`\`: kill from cursor to the begining of the line.
    -   \`\`Control-k\`\`: kill from cursor to the end of the line.
    -   \`\`Control-y\`\`: yank (paste)
    -   \`\`Control-p\`\`: previous line (like up arrow)
    -   \`\`Control-n\`\`: next line (like down arrow)
    -   \`\`Control-f\`\`: forward (like right arrow)
    -   \`\`Control-b\`\`: back (like left arrow)
    -   \`\`Control-d\`\`: delete next character, or exits if input is empty
    -   \`\`Alt-<\`\`: move to the beginning of the input region.
    -   \`\`alt->\`\`: move to the end of the input region.
    -   \`\`Alt-d\`\`: delete next word.
    -   \`\`Alt-Backspace\`\`: delete previous word.
    -   \`\`Control-.\`\`: force a kernel restart (a confirmation dialog appears).
    -   \`\`Control-+\`\`: increase font size.
    -   \`\`Control&#x2013;\`\`: decrease font size.
    -   \`\`Control-Alt-Space\`\`: toggle full screen. (Command-Control-Space on Mac OS X)

2.  magic

    -   %lsmagic - Displays all magic functions currently available
    -   %cd
    -   %pwd
    -   %dhist - directories you have visited in current session
    -   %notebook - history to  into an IPython notebook file with ipynb extension
    -   %precision n - n after ,
    -   %recall n -  execute preview command or n command
    -   **%run a.py** - run file, - замерить время выполнения (-t), запустить с отладчиком (-d) или профайлером (-p)
        -   %run -n main.py - import
    -   %time command - displays time required by IPython environment to execute a Python expression
    -   %who type - у каких переменнх такой-то тип
    -   **%whos** - все импортированные и созданные объекты
    -   %hist - вся история в виде текста
    -   **%rep n** - переход на n ввод
    
    **Python**
    
    -   %pdoc -  документацию
    -   %pdef - определение функции
    -   %psource - исходный код функции, класса
    -   %pfile - полный код файла соответственно

3.  TEMPLATE

        #------ TEMPLATE ---------------
        # QTconsole ----
        In [1]: run -n main.py
        
        In [2]: main()
        
        In [3]: from yargy import rule, Parser
        from yargy.predicates import eq, type as _type, normalized
        MEASURE = rule(eq('НДС'))
        parser = Parser(MEASURE)
        for line in words:
            matches = list(parser.findall(line))
            spans = [_.span for _ in matches]
            mup(line, spans)
        # main.py ------
        #my
        import read_json
        
        
        # -- test
        words :list = [] #words from file
        index :int = 0
        # test --
        
        def mup(s :str, spans:list):
            """ выводит что поматчилось на строке """
            from ipymarkup import markup, AsciiMarkup
            for line in markup(s, spans, AsciiMarkup).as_ascii:
                print(line)
        
        def work(prov :dict):
            """вызывается для каждой строки """
            text = prov['naznach']
            # -- test
            global words, index
            words.append(text)
            index +=1
            if index >5: quit()
            # test --
        
        
        def main():#args):
            read_json.readit('a.txt', work) #aml_provodki.txt
        #################### MAIN ##########################
        if __name__ == '__main__':  #name of module-namespace.  '__main__' for - $python a.py
             #import sys
             main()#sys.argv)
             quit()

4.  Other

        
        #--------- yargy to graphviz ------------
        from ipymarkup import markup, show_markup
        spans = [_.span for _ in matches]
        show_markup(line,spans)
        
        r = rule(...
        r.normalized.as_bnf
        
        
        match.tree.as_dot
        # ----------- случайная выборка строк для теста ----
        from random import seed, sample
        seed(1)
        sample(lines, 20)
        
        
        OR
        from random import sample
        
        for a in sample(range(0,20), 2):
            print(a)
        #-------- matplotlib --------
        from matplotlib import pyplot as plt
        plt.plot(range(10),range(10))


<a id="orgc3ee4d2"></a>

### graphviz

-   graphviz - <https://graphviz.gitlab.io/download/> - визуализация графов
    <https://ru.wikipedia.org/wiki/DOT_(%D1%8F%D0%B7%D1%8B%D0%BA)>
-   Установить PATH на *bin* вручную
-   предназначен для работы внутри jupyter Notebook
-   pip3 install PyQt5

<https://stackoverflow.com/questions/41942109/plotting-the-digraph-with-graphviz-in-python-from-dot-file>

<https://www.youtube.com/watch?time_continue=1027&v=NQxzx0qYgK8>

m.tree.as<sub>dot</sub>.<sub>repr</sub><sub>svg</sub><sub>()</sub>  - выдает что-то для graphiz


<a id="org943be6f"></a>

### IPython


<a id="org3946302"></a>

# Stanford NER - Java

-   Conditional Random Field (CRF)
-   Stanford NER <https://nlp.stanford.edu/software/CRF-NER.shtml#Starting>
-   FAQ <https://nlp.stanford.edu/software/crf-faq.html>
-   article <https://towardsdatascience.com/a-review-of-named-entity-recognition-ner-using-automatic-summarization-of-resumes-5248a75de175>
-   article <https://medium.com/@mohangupta13/stanford-corenlp-training-your-own-custom-ner-tagger-348195f54d97>
-   coreNLP <https://stanfordnlp.github.io/CoreNLP/index.html>


<a id="org8fc5f85"></a>

## train

You give the data file, the meaning of the columns, and what features to generate via a properties file.


<a id="org22c7bb0"></a>

## Ttraining data

-   Dataturks NER tagger


<a id="orga59d6df"></a>

# DeepPavlov

-   <https://deeppavlov.ai/>
-   <http://docs.deeppavlov.ai/en/latest/components/ner.html>
-   SpaCy и DeepPavlov <https://www.youtube.com/watch?v=WVhA3YpIek4>
-   simple-intent-recognition <https://medium.com/deeppavlov/simple-intent-recognition-and-question-answering-with-deeppavlov-c54ccf5339a9>
-   Курс по NLP от DeepPavlov <https://github.com/hse-aml/natural-language-processing>
-   built on **TensorFlow** and **Keras**

Валентин Малых, Алексей Лымарь, МФТИ

-   **агенты** ведут диалог с пользователем,
-   у них есть **скилы**, которые выбираются. - это набор **компонентов** - spellchecker, morphanalizer,
    классификатор интентов
-   скил - their input and output should both be strings
-   компоненты могут объединяться в цепочку, похожую на pipeline spacy

Компоненты - могут быть вложенными:

-   нет синтаксич парсера
-   Question Answering вопросно-ответная система
-   NER и Slot filling
-   Classification
-   Goal-oriented bot
-   Spellchecker
-   Morphotagger


<a id="org7516e72"></a>

## Коммандная-строка

python .\deeppavlov\deep.py interact ner<sub>rus</sub> [-d]

-   взаимодействие, тестирование
-   ner<sub>rus</sub> - C:\Users\Chepilev<sub>VS\AppData\Local\Programs\Python\Python36\lib\site</sub>-packages\deeppavlov\configs\ner\ner<sub>rus.json</sub>


<a id="org621f8b7"></a>

## вспомогательные классы

-   simple<sub>vocab</sub>
    -   self.<sub>t2i</sub>[token] = self.count - индексы токенов
    -   self.<sub>i2t.append</sub>(token) - токены индексов


<a id="org302376b"></a>

## in code

    #------------ build model and interact ---------
    from deeppavlov import configs
    from deeppavlov.core.commands.infer import build_model
    
    faq = build_model(configs.faq.tfidf_logreg_en_faq, download = True)
    a = faq(["I need help"])


<a id="orge9097ee"></a>

## installation

-   apt install libssl-dev libncurses5-dev libsqlite3-dev libreadline-dev libtk8.5 libgdm-dev libdb4o-cil-dev libpcap-dev

wget <https://www.python.org/ftp/python/3.6.8/Python-3.6.8rc1.tgz>

-   tar -xvzf
-   cd Python-3.6.8
-   ./configure &#x2013;enable-optimizations &#x2013;with-ensurepip=install
-   make -j8
-   sudo make altinstall
-   python3.6
-   update-alternatives &#x2013;install /usr/bin/python python /usr/bin/python3.6 1
-   update-alternatives &#x2013;config python
-   python -m pip install &#x2013;upgrade pip
-   git config &#x2013;global http.proxy <http://srv-proxy:8080>
-   git clone <https://github.com/deepmipt/DeepPavlov.git>

ver 1

-   pip3.6 install virtualenv &#x2013;user
-   ~/.local/bin/virtualenv ENV
-   source ENV/bin/activate

var 2

-   python -m venv .
-   source bin/activate

-   pip install deeppavlov
-   ENV/bin/python

**fastText**

    pip install git+https://github.com/facebookresearch/fastText.git#egg=fastText==0.8.22

install everything required by a specific DeepPavlov config by running:

    python -m deeppavlov install <config_name>

**МОИ ФИКСЫ** <https://github.com/vitalij23/DeepPavlov/commits/master>

-   JSON с комментами:
    -   pip3.6 install jstyleson
    -   deeppavlov\core\common\file.py   json ->jstyleson


<a id="orgf9a8519"></a>

## training

-   IOB format <https://en.wikipedia.org/wiki/Inside%E2%80%93outside%E2%80%93beginning_(tagging)>
-   <https://lingpipe-blog.com/2009/10/14/coding-chunkers-as-taggers-io-bio-bmewo-and-bmewo/>

we use BIO or IOB (Inside–outside–beginning) - It subdivides the in tags as either being begin-of-entity (B<sub>X</sub>)
or continuation-of-entity (I<sub>X</sub>).

dataset

-   **train:** data for training the model;
-   **validation:** data for evaluation and hyperparameters tuning;
-   **test:** data for final evaluation of the model.

Обучение состоит из 3 элементов dataset<sub>reader</sub>, dataset<sub>iterator</sub> and train. Или хотя бы двух dataset and train.

dataset<sub>reader</sub> - источник x и у

Прото-Классы dataset<sub>iterator</sub>:

-   Estimator - no early stopping, safely done  at the time of pipeline initialization. in both supervised and unsupervised settings
    -   fit()
-   NNModel  - Обучение с учителем (supervised learning);
    -   in
    -   in<sub>y</sub>

**Обучение:**

-   rm -r ~/.deeppavlov/models/ner<sub>rus</sub>
-   cd deep
-   source ENV/bin/activate
-   python3.6 -m deeppavlov train ~/ner<sub>rus.json</sub>


<a id="org35ecfb4"></a>

### dataset<sub>iterators</sub>

<https://deeppavlov.readthedocs.io/en/0.1.6/apiref/dataset_iterators.html>


<a id="orgc566a3e"></a>

## NLP pipeline json config

<https://deeppavlov.readthedocs.io/en/0.1.6/intro/config_description.html>
Используется core/common/registry.json

-   Если у компонента указать id с именем, то по этому имени можно не создавать, а сослаться на него: "ref":
    "id<sub>name</sub>"

Four main sections:

-   dataset<sub>reader</sub>
-   dataset<sub>iterator</sub>
-   chainer - one required element
    -   in
    -   pipe
        -   in
        -   out
    -   out
-   train

"metadata": {"variables" - определеяет пути "DOWNLOADS<sub>PATH</sub>" "MODELS<sub>PATH</sub>" и т.д.


<a id="orge661e9f"></a>

### configs

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">ner<sub>conll2003.json</sub></td>
<td class="org-left">glove</td>
</tr>


<tr>
<td class="org-left">ner<sub>conll2003</sub><sub>pos.json</sub></td>
<td class="org-left">glove</td>
</tr>


<tr>
<td class="org-left">ner<sub>dstc2.json</sub></td>
<td class="org-left">random<sub>emb</sub><sub>mat</sub></td>
</tr>


<tr>
<td class="org-left">ner<sub>few</sub><sub>shot</sub><sub>ru.json</sub></td>
<td class="org-left">elmo<sub>embedder</sub></td>
</tr>


<tr>
<td class="org-left">ner<sub>few</sub><sub>shot</sub><sub>ru</sub><sub>simulate.json</sub></td>
<td class="org-left">elmo<sub>embedder</sub></td>
</tr>


<tr>
<td class="org-left">ner<sub>ontonotes.json</sub></td>
<td class="org-left">glove</td>
</tr>


<tr>
<td class="org-left">ner<sub>rus.json</sub></td>
<td class="org-left">fasttext</td>
</tr>


<tr>
<td class="org-left">slotfill<sub>dstc2.json</sub></td>
<td class="org-left">nothing</td>
</tr>


<tr>
<td class="org-left">slotfill<sub>dstc2</sub><sub>raw.json</sub></td>
<td class="org-left">nothing</td>
</tr>
</tbody>
</table>


<a id="org9170b00"></a>

### parsing anal

    from deeppavlov import configs
    from deeppavlov.core.commands.utils import parse_config
    config_dict = parse_config(configs.ner.ner_ontonotes)
    print(config_dict['dataset_reader']['data_path'])


<a id="org94b08e5"></a>

### json

    {
      "deeppavlov_root": ".",
      "dataset_reader": { //deeppavlov\dataset_readers
        "class_name": "conll2003_reader",  //conll2003_reader.py
        "data_path": "{DOWNLOADS_PATH}/total_rus/", //папка откуда брать train.txt, valid.txt, test.txt
        "dataset_name": "collection_rus", //если папка пустая то используется ссылка внутри conll2003_reader.py
        "provide_pos": false //pos tag?
      },
      "dataset_iterator": { //deeppavlov\dataset_iterators
        //For simple batching and shuffling
        "class_name": "data_learning_iterator", //deeppavlov\core\data\data_learning_iterator.py
        "shuffle": true, //по умолчанию перемешивает List[Tuple[Any, Any]]
        "seed": 42 //seed for random shuffle
      },
      "chainer": {  //list of components - core\common\chainer.py
        "in": ["x"], //names of inputs for pipeline inference mode
        "in_y": ["y"], //names of additional inputs for pipeline training and evaluation modes
        "out": ["x_tokens", "tags"], //names of pipeline inference outputs
        "pipe": [  //
        {
          "class_name": "tokenizer",
          "in": "x", //in of chainer
          "lemmas": true, // lemmatizer enabled
          "out": "q_token_lemmas"
        },


<a id="org9890eda"></a>

### examples

1.  tokenizer

    x::As a'd.234 4567
    >> ['as', "a'd.234", '4567']
    
        {
          "chainer": {
            "in": [ "x" ],
            "in_y": [ "y" ],
            "pipe": [
              {
                "class_name": "str_lower",
                "id": "lower",
                "in": [ "x" ],
                "out": [ "x_lower" ]
              },
              {
                "in": [ "x_lower" ],
                "class_name": "lazy_tokenizer",
                "out": [ "x_tokens" ]
              },
              {
                "in": [ "x_tokens" ],
                "class_name": "sanitizer",
                "nums": false,
                "out": [ "x_san" ]
              }
            ],
            "out": [ "x_san" ]
          }
        }


<a id="org9172e03"></a>

## prerocessors

-   sanitizer - \models\preprocessors Remove all combining characters like diacritical marks from tokens deeppavlov\models\preprocessors\sanitizer.py
    -   nums - Replace [0-9] - 1 и ниибет
-   str<sub>lower</sub> - batch.lower()


<a id="orge4a362f"></a>

### tokenizers

deeppavlov\models\tokenizers

-   lazy<sub>tokenizer</sub> - english nltk word<sub>tokenize</sub> (нет параметров)
-   ru<sub>tokenizer</sub> - lowercase - съедает точку вместе со словом
    -   stopwords - List[str]
    -   ngram<sub>range</sub> - List[int] - size of ngrams to create; only unigrams are returned by default
    -   lemmas - default=False - whether to perform lemmatizing or not
-   nltk<sub>moses</sub><sub>tokenizer</sub> - MosesTokenizer().tokenize - как lazy<sub>tokenizer</sub>, если вход токены - то склеивает.
    -   escape = False - если True заменяет | [] < > [ ] & на '&#124;', '&#91;', '&#93;', '&lt;', '&gt;', '&#91;',


<a id="org7f2c965"></a>

### Embedder [ɪmˈbede] - Deep contextualized word reprezentation

-   "Words that occur in similar contexts tend to have similar meaning"

-   Consist of embedding matrices.
-   Converts every token to a vector of particular dimensionality
-   Vocabularies allow conversion from tokens to indices is needed to perform lookup in **embeddings matrices**
    and compute cross-entropy between predicted probabilities and target values.
-   Для: (eg Cosine) similarity - as a measure of semantic simularity
-   unsupervised learning algorithm

Classes

-   glove<sub>emb</sub> - GloVe (Stanford) - by factorizing the logarithm of the corpus word co-occurrence matrix
    <https://github.com/maciejkula/glove-python>
-   ELMo - Embeddings from Language Models
    -   whole sentences as context
-   fastText - By default, we use 100 dimensions
    -   skip-gram - learns to predict using a random close-by word - skipgram models works better with
        subword information than cbow.
        -   designed to predict the context
        -   works well with small amount of the training data, represents well even rare words or phrases.
        -   slow
    -   cbow - according to its context - uses the sum of their vectors to predict the target
        -   learning to predict the word by the context. Or maximize the probability of the target word by looking
            at the context
        -   there is problem for rare words.
        -   several times faster to train than the skip-gram, slightly better accuracy for the frequent words

1.  GloVe (Stanford)

    Global Vectors for Word Representation
    
    -   <https://en.wikipedia.org/wiki/GloVe_(machine_learning)>
    -   <https://nlp.stanford.edu/projects/glove/>
    -   python <https://pypi.org/project/glove/>
    -   python <https://pypi.org/project/glovepy/>
    -   tutorial <https://medium.com/@japneet121/word-vectorization-using-glove-76919685ee0b>
    
    Goal: create a glove model
    X  pip3 install <https://github.com/JonathanRaiman/glove/archive/master.zip>
    
    -   git clone <https://github.com/umlkhuang/glovepy.git>
    -   cd glovepy
    -   pip3.6 install numpy &#x2013;user
    -   python3.6 setup.py install &#x2013;user
    
    glovepy
    
    -   corpus.py  - Cooccurrence matrix construction tools for fitting the GloVe model.
    -   glovepy.py - Glove(object) - Glove model for obtaining dense embeddings from a co-occurence (sparse) matrix.

2.  fastText skip-gram model

    -   <https://fasttext.cc/docs/en/unsupervised-tutorial.html>
    
    -   wget <https://github.com/facebookresearch/fastText/archive/v0.2.0.zip>
    -   wget <https://github.com/facebookresearch/fastText/archive/v0.1.0.zip>
    -   unzip v0.2.0.zip
    -   make -j3
    -   ./fasttext skipgram -input README.md -output result/re
    
    Without subwords: ./fasttext skipgram -input data/fil9 -output result/fil9-none -maxn 0 -ws 30 -dim 300
    
    "class<sub>name</sub>": "fasttext", deeppavlov\models\embedders\fasttext<sub>embedder.py</sub>


<a id="org90363ec"></a>

## components

-   simple<sub>vocab</sub> - For holding sets of tokens, tags, or characters - \core\data\simple<sub>vocab.py</sub>
    -   id - the name of the vocabulary which will be used in other models
    -   fit<sub>on</sub> - out у предыдущего
    -   save<sub>path</sub> - path to a new file to save the vocabulary
    -   load<sub>path</sub> - path to an existing vocabulary (ignored if there is no files)
    -   pad<sub>with</sub><sub>zeros</sub>: whether to pad the resulting index array with zeros or not
    -   out - indices


<a id="org80bb543"></a>

## Models

-   Rule-based Models cannot be trained.
-   Machine Learning Models can be trained only stand alone.
-   Deep Learning Models can be trained independently and in an end-to-end mode being joined in a chain.

У каждой модели своя архитектура - CNN у или LSTM+CRF


<a id="orgf0cdb7f"></a>

## speelcheking

-   <http://docs.deeppavlov.ai/en/latest/components/spelling_correction.html>
-   <https://kheafield.com/code/kenlm/>

based on context with the help of a kenlm language model

две pipeline

<https://github.com/deepmipt/DeepPavlov/blob/0.1.6/deeppavlov/configs/spelling_correction/levenshtein_corrector_ru.json>

-   Damerau-Levenshtein distance to find correction candidates
-   Нет тренера
    -   вход x разбитый на токены и в нижнем регистре
    -   Файла:
        1.  russian<sub>words</sub><sub>vocab.dict</sub> - "слово 1" - без ё
        2.  ru<sub>wiyalen</sub><sub>no</sub><sub>punkt.arpa.binary</sub> -  kenlm language model?
    -   simple<sub>vocab</sub> &#x2014; слово\tчастота - файл 1)
    -   главный deeppavlov.models.spelling<sub>correction.levenshtein.searcher</sub><sub>component</sub>:LevenshteinSearcherComponent
        -   x<sub>tokens</sub> -> tokens<sub>candidates</sub>
        -   words - vacabulary - файл 1)
        -   max<sub>distance</sub> = 1
        -   инициализирует LevenshteinSearcher по словарю - возвращает близкие слова и дистанцию до них
        -   (0, word) - для пунктуаций
        -   error<sub>probability</sub> = 1e-4 = 0.0001
        -   выдает мама: [(-4,'мара'),(-8,'мама')]
    -   deeppavlov.models.spelling<sub>correction.electors.kenlm</sub><sub>elector</sub>:KenlmElector  spelling<sub>correction\electors\kenlm</sub><sub>elector.py</sub>
        -   2)
        -   выбирает лучший вариант с учетом 2) файла, даже с маньшим фактором от Levenshtein

<https://github.com/deepmipt/DeepPavlov/blob/0.1.6/deeppavlov/configs/spelling_correction/brillmoore_kartaslov_ru.json>

-   statistic error model
-   "dataset<sub>iterator</sub>": deeppavlov\dataset<sub>iterators\typos</sub><sub>iterator.py</sub> наследник DataLearningIterator
-   "dataset<sub>reader</sub>" :
    -   typos<sub>kartaslov</sub><sub>reader</sub> - typos<sub>reader.py</sub> - бумажка;бумаша;0.5
    -   <https://raw.githubusercontent.com/dkulagin/kartaslov/master/dataset/orfo_and_typos/orfo_and_typos.L1_5.csv>
-   Есть тренер
    -   вход x, у  - разбиваются на токены и в нижнем регистре
    -   Файла:
        1.  error<sub>model.tar.gz</sub>/error<sub>model</sub><sub>ru.tsv</sub>
        2.  {DOWNLOADS<sub>PATH</sub>}/vocabs
        3.  ru<sub>wiyalen</sub><sub>no</sub><sub>punkt.arpa.binary</sub> -  kenlm language model?
    -   главный **spelling<sub>error</sub><sub>model</sub>** наследник Estimator  1) - deeppavlov.models.spelling<sub>correction.brillmoore.error</sub><sub>model</sub>:ErrorModel
        -   "fit<sub>on</sub>" - x, y
        -   in - x
        -   out - tokens<sub>candidates</sub>
        -   error<sub>model</sub><sub>ru.tsv</sub> "лицо ло	0.060606060606060615"
        -   dictionary: class **russian<sub>words</sub><sub>vocab</sub>** DeepPavlov\deeppavlov\vocabs\typos.py - Tie tree
            -   2)
            -
    -   deeppavlov.models.spelling<sub>correction.electors.kenlm</sub><sub>elector</sub>:KenlmElector
        -   3)

Первый spelling<sub>error</sub><sub>model</sub>


<a id="org7ff6d22"></a>

### Tie vocabulary

Префиксное дерево - по буквам разные слова в дереве.
<https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%B5%D1%84%D0%B8%D0%BA%D1%81%D0%BD%D0%BE%D0%B5_%D0%B4%D0%B5%D1%80%D0%B5%D0%B2%D0%BE>


<a id="orgd357269"></a>

## Classification

1.  keras<sub>classification</sub><sub>model</sub> - neural network on Keras with tensorflow - deeppavlov.models.classifiers.KerasClassificationModel
    -   cnn<sub>model</sub> – Shallow-and-wide CNN with max pooling after convolution,
    -   dcnn<sub>model</sub> – Deep CNN with number of layers determined by the given number of kernel sizes and filters,
    -   cnn<sub>model</sub><sub>max</sub><sub>and</sub><sub>aver</sub><sub>pool</sub> – Shallow-and-wide CNN with max and average pooling concatenation after convolution,
    -   bilstm<sub>model</sub> – Bidirectional LSTM,
    -   bilstm<sub>bilstm</sub><sub>model</sub> – 2-layers bidirectional LSTM,
    -   bilstm<sub>cnn</sub><sub>model</sub> – Bidirectional LSTM followed by shallow-and-wide CNN,
    -   cnn<sub>bilstm</sub><sub>model</sub> – Shallow-and-wide CNN followed by bidirectional LSTM,
    -   bilstm<sub>self</sub><sub>add</sub><sub>attention</sub><sub>model</sub> – Bidirectional LSTM followed by self additive attention layer,
    -   bilstm<sub>self</sub><sub>mult</sub><sub>attention</sub><sub>model</sub> – Bidirectional LSTM followed by self multiplicative attention layer,
    -   bigru<sub>model</sub> – Bidirectional GRU model.

Please, pay attention that each model has its own parameters that should be specified in config.

1.  sklearn<sub>component</sub> - sklearn classifiers - deeppavlov.models.sklearn.SklearnComponent

configs/classifiers:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">JSON</th>
<th scope="col" class="org-left">Frame</th>
<th scope="col" class="org-left">Embedder</th>
<th scope="col" class="org-left">Dataset</th>
<th scope="col" class="org-left">Lang</th>
<th scope="col" class="org-left">model</th>
<th scope="col" class="org-left">comment</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">insults<sub>kaggle.json</sub></td>
<td class="org-left">keras</td>
<td class="org-left">fasttext</td>
<td class="org-left">basic</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">insults<sub>kaggle</sub><sub>bert.json</sub></td>
<td class="org-left">bert<sub>classifier</sub></td>
<td class="org-left">?</td>
<td class="org-left">basic</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">new 0.2.0</td>
</tr>


<tr>
<td class="org-left">intents<sub>dstc2.json</sub></td>
<td class="org-left">keras</td>
<td class="org-left">fasttext</td>
<td class="org-left">dstc2</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">intents<sub>dstc2</sub><sub>bert.json</sub></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">intents<sub>dstc2</sub><sub>big.json</sub></td>
<td class="org-left">keras</td>
<td class="org-left">fasttext</td>
<td class="org-left">dstc2</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">intents<sub>sample</sub><sub>csv.json</sub></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">intents<sub>sample</sub><sub>json.json</sub></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">intents<sub>snips.json</sub></td>
<td class="org-left">keras</td>
<td class="org-left">fasttext</td>
<td class="org-left">SNIPS</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">cnn<sub>model</sub></td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">intents<sub>snips</sub><sub>big.json</sub></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">intents<sub>snips</sub><sub>sklearn.json</sub></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">intents<sub>snips</sub><sub>tfidf</sub><sub>weighted.json</sub></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">paraphraser<sub>bert.json</sub></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">rusentiment<sub>bert.json</sub></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">basic</td>
<td class="org-left">ru</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">rusentiment<sub>cnn.json</sub></td>
<td class="org-left">keras</td>
<td class="org-left">fasttext</td>
<td class="org-left">basic</td>
<td class="org-left">ru</td>
<td class="org-left">cnn<sub>model</sub></td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">rusentiment<sub>elmo.json</sub></td>
<td class="org-left">keras</td>
<td class="org-left">elmo</td>
<td class="org-left">basic</td>
<td class="org-left">ru</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">sentiment<sub>twitter.json</sub></td>
<td class="org-left">keras</td>
<td class="org-left">fasttext</td>
<td class="org-left">basic</td>
<td class="org-left">ru</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">sentiment<sub>twitter</sub><sub>preproc.json</sub></td>
<td class="org-left">keras</td>
<td class="org-left">fasttext</td>
<td class="org-left">basic</td>
<td class="org-left">ru</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">topic<sub>ag</sub><sub>news.json</sub></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">yahoo<sub>convers</sub><sub>vs</sub><sub>info.json</sub></td>
<td class="org-left">keras</td>
<td class="org-left">elmo</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">en</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">no reader and iterator</td>
</tr>
</tbody>
</table>

one<sub>hotter</sub> - in(y)out(y) - given batch of list of labels to one-hot representation


<a id="orgcf21515"></a>

### bert

-   <https://github.com/google-research/bert>

Bidirectional Encoder Representations from Transformers, is a new method of pre-training language
representations which obtains state-of-the-art results on a wide array of Natural Language Processing (NLP)
tasks.

Pre-trained representations:

-   context-free - word2vec or GloVe
-   contextual -  based on the other words in the sentence
    -   unidirectional
    -   bidirectional

json:

-   bert<sub>preprocessor</sub> in(x)
-   one<sub>hotter</sub> in(y)
-   bert<sub>classifier</sub> x y
-   proba2labels - probas to id
-   classes<sub>vocab</sub> - id to labels


<a id="org5217265"></a>

### iterators

-   basic<sub>classification</sub><sub>iterator</sub> - for basic<sub>classification</sub><sub>reader</sub>
    -   Формат csv text,label\n word1,
-   dstc2<sub>intents</sub><sub>iterator</sub> - dstc2<sub>reader</sub> - <http://camdial.org/~mh521/dstc/downloads/handbook.pdf>


<a id="orgd0d4a0c"></a>

## NER - componen

-   <https://docs.deeppavlov.ai/en/master/features/models/NER.html>
-   <https://docs.deeppavlov.ai/en/0.2.0/components/ner.html>
-   <https://github.com/deeppavlov/DeepPavlov/blob/master/docs/intro/python.ipynb>

**conll2003<sub>reader</sub>** dataset<sub>reader</sub> - BIO

-   "data<sub>path</sub>": - three files, namely: “train.txt”, “valid.txt”, and “test.txt”

Models:

-   "ner": "deeppavlov.models.ner.network:NerNetwork",
-   "ner<sub>bio</sub><sub>converter</sub>": "deeppavlov.models.ner.bio:BIOMarkupRestorer",
-   "ner<sub>few</sub><sub>shot</sub><sub>iterator</sub>": "deeppavlov.dataset<sub>iterators.ner</sub><sub>few</sub><sub>shot</sub><sub>iterator</sub>:NERFewShotIterator",
-   "ner<sub>svm</sub>": "deeppavlov.models.ner.svm:SVMTagger",

preprocess

-   ХЗ random<sub>emb</sub><sub>mat</sub> deeppavlov.models.preprocessors.random<sub>embeddings</sub><sub>matrix</sub>:RandomEmbeddingsMatrix
-   "mask": "deeppavlov.models.preprocessors.mask:Mask"

**deeppavlov.models.ner.network** - когда ответ после всех или для каждого

-   use<sub>cudnn</sub><sub>rnn</sub> - true TF layouts build on - NVIDIA CUDA® Deep Neural Network library (cuDNN) is a GPU-accelerated library of
    primitives for deep neural networks.
-   net<sub>type</sub> - rnn
-   cell<sub>type</sub> - lstm

"in": ["x<sub>emb</sub>", "mask", "x<sub>char</sub><sub>ind</sub>", "cap"],

-   x<sub>emb</sub> - token of fastText


<a id="org28ce22e"></a>

### ner<sub>rus</sub><sub>bert</sub>

config <https://github.com/deeppavlov/DeepPavlov/blob/master/deeppavlov/configs/ner/ner_rus_bert.json>

'torch<sub>transformers</sub><sub>ner</sub><sub>preprocessor</sub>'

install:

    python -m deeppavlov install ner_rus_bert
    python
    from deeppavlov import build_model
    ner_model = build_model('ner_rus_bert', download=True)


<a id="orga13072e"></a>

## Custom component

-   \deeppavlov\core\common\registry.json


<a id="org0c010ad"></a>

## docker

<https://hub.docker.com/r/deeppavlov/base-cpu/tags>

Dockerfile: <https://hub.docker.com/r/deeppavlov/base-cpu/tags>

    docker build -t p .
    python -m deeppavlov install ner_rus_bert
    python
    from deeppavlov import build_model
    ner_model = build_model('ner_rus_bert', download=True)

FROM deeppavlov/base-cpu

docker build -t pavl .


<a id="org1334c0c"></a>

## issues

No module named 'bert<sub>dp</sub>'

    python -m deeppavlov install ner_rus_bert # model name


<a id="orge7ec2dd"></a>

# AllenNLP

-   <https://allennlp.org>
-   <https://pytorch.org/get-started/previous-versions/>
-   conda install pytorch=0.4.1 -c pytorch
-   pip install allennlp


<a id="orgd2e62b4"></a>

# spaCy

spaCy - convolutional neural network (CNN(  <https://en.wikipedia.org/wiki/SpaCy>

-   <https://en.wikipedia.org/wiki/Convolutional_neural_network>
-   <https://github.com/explosion/spaCy>
-   архитектура pipeline


<a id="orgca563d4"></a>

# fastText

-   <https://fasttext.cc/docs/en/options.html>

By default, we use 100 dimensions

-   skip-gram - learns to predict using a random close-by word - skipgram models works better with
    subword information than cbow.
    -   designed to predict the context
    -   works well with small amount of the training data, represents well even rare words or phrases.
    -   slow
    -   better for rare slow
-   cbow - according to its context - uses the sum of their vectors to predict the target
    -   learning to predict the word by the context. Or maximize the probability of the target word by looking
        at the context
    -   there is problem for rare words.
    -   several times faster to train than the skip-gram, slightly better accuracy for the frequent words

./fasttext skipgram -input data/fil9 -output result/fil9 -minn 2 -maxn 5 -dim 300

-   dim dimensions - default 100
-   -minn 2 -maxn 5 - substrings contained in a **word** between the minimum size (minn) and the maximal size
-   -ws                 size of the context window [5]

-epoch              number of epochs [5]

result

-   **bin** stores the whole fastText model and can be subsequently loaded
-   **vec** contains the word vectors, one per line for each word in the vocabulary. The first line is a header
    containing the number of words and the dimensionality of the vectors.

Проверка:

-   ./fasttext nn result/fil9.bin
-   ./fasttext analogies result/fil9.bin


<a id="org212bde3"></a>

## install

-   wget <https://github.com/facebookresearch/fastText/archive/v0.1.0.zip>
-   unzip v0.2.0.zip
-   make -j3


<a id="org813c9a9"></a>

# TODO rusvectores

-   <https://rusvectores.org/en/about/>
-   <https://github.com/akutuzov/webvectors>
-   <https://github.com/akutuzov/webvectors/blob/master/preprocessing/rusvectores_tutorial.ipynb>


<a id="org8a0eb57"></a>

# Natural Language Toolkit (NLTK)

-   <http://www.nltk.org/>
-   API <http://www.nltk.org/genindex.html>
-   nltk.download('averaged<sub>perceptron</sub><sub>tagger</sub><sub>ru</sub>') - russian. The NLTK corpus and module downloader.
    -   Корпус corpus - набор слов  <http://www.nltk.org/howto/corpus.html>
        -   nltk.corpus.abc.words() - примерн окакие слова там C:\Users\Chepilev<sub>VS\AppData\Roaming\nltk</sub><sub>data</sub>
        -   for w in nltk.corpus.genesis.words('english-web.txt'): print(w) - все слова
        -   Plaintext Corpora
        -   Tagged Corpora - ex.  part-of-speech tags -  (word,tag) tuples
    -   Tagger
    -   >>> nltk.download('book') -   >>> from nltk.book import \*   - >>> text1

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">corpus</td>
<td class="org-left">standardized interfaces to corpora and lexicons</td>
</tr>


<tr>
<td class="org-left">String processing</td>
<td class="org-left">tokenize, stem</td>
<td class="org-left">tokenizers, sentence tokenizers, stemmers</td>
</tr>


<tr>
<td class="org-left">Collocation discovery</td>
<td class="org-left">collocations</td>
<td class="org-left">t-test, chi-squared, point-wise mutual information</td>
</tr>


<tr>
<td class="org-left">Part-of-speech tagging</td>
<td class="org-left">tag</td>
<td class="org-left">n-gram, backoff, Brill, HMM, TnT</td>
</tr>


<tr>
<td class="org-left">Machine learning</td>
<td class="org-left">classify, cluster, tbl</td>
<td class="org-left">decision tree, maximum entropy, naive Bayes, EM, k-means</td>
</tr>


<tr>
<td class="org-left">Chunking</td>
<td class="org-left">chunk</td>
<td class="org-left">regular expression, n-gram, named-entity</td>
</tr>


<tr>
<td class="org-left">Parsing</td>
<td class="org-left">parse, ccg</td>
<td class="org-left">chart, feature-based, unification, probabilistic, dependency</td>
</tr>
</tbody>
</table>


<a id="org4602571"></a>

## collocations

-   <http://www.nltk.org/howto/collocations.html>
-   <http://www.nltk.org/api/nltk.html>
-   Finders -
-   Filtering candidates
-   Association measures

nltk.collocations.BigramCollocationFinder

-   from<sub>words</sub>([sequence of words], bigram<sub>fdm</sub>, window<sub>size</sub>=2)=>finder - '.', ',',':' - разделяет
-   

AbstractCollocationFinder

-   nbest(funct, n)=>[] top n ngrams when scored by the given function
-   finder.apply<sub>freq</sub><sub>filter</sub>(min<sub>freq</sub>) - the minimum number of occurrencies of bigrams to take into
    consideration
-   finder.apply<sub>word</sub><sub>filter</sub>(lambda w: w `= '.' or w =` ',') - Removes candidate ngrams (w1, w2, &#x2026;) where any
    of (fn(w1), fn(w2), &#x2026;) evaluates to True.


<a id="org438dffb"></a>

## Association measures for collocations (measure functions)

-   **bigram<sub>measures.student</sub><sub>t</sub>:** Student's t
-   **bigram<sub>measures.chi</sub><sub>sq</sub>:** Chi-square
-   **bigram<sub>measures.likelihood</sub><sub>ratio</sub>:** Likelihood ratios
-   **bigram<sub>measures.pmi</sub> Pointwise Mutual Information:** bigram<sub>measures.pmi</sub>
-   **raw<sub>freq</sub>:** Scores ngrams by their frequency
-   ::

-   w2 (w2w1)  (o w1) = n<sub>xi</sub>
-   ~w2 (w2 o)
-   = n<sub>ix</sub>   TOTAL = n<sub>xx</sub>

    #(n_ii, (n_ix, n_xi), n_xx):
    >>> import nltk
    >>> from nltk.collocations import *
    >>> bigram_measures = nltk.collocations.BigramAssocMeasures()
    >>>print('%0.4f' % bigram_measures.student_t(1, (2, 2), 4))
    0
    >>> print('%0.4f' % bigram_measures.student_t(1, (2, 2), 8))
    0.5000


<a id="org8aa56b6"></a>

## Taggers

-   averaged<sub>perceptron</sub><sub>tagger</sub><sub>ru</sub> <http://www.nltk.org/nltk_data/>
-   example <http://www.nltk.org/_modules/nltk/tag>
-   API <http://www.nltk.org/api/nltk.tag.html>


<a id="orgf820a1a"></a>

## Корпус русского языка

-   <http://www.nltk.org/nltk_data/>
-   <https://github.com/nltk/nltk/wiki/Adding-a-Corpus>
-   <http://www.ruscorpora.ru/index.html>
-   Значение тэгов <http://www.ruscorpora.ru/en/corpora-morph.html>

Почему-то не показывает падежи


<a id="orgc622f38"></a>

# pymorphy2

<https://pymorphy2.readthedocs.io/en/latest/user/grammemes.html>

-   grammeme - Грамме́ма - один из элементов грамматической категории - граммемы:
    tag=OpencorporaTag('NOUN,inan,masc plur,nomn')
-   используется словарь <http://opencorpora.org/>
-   для незнакомых слов строятся гипотезы
-   полностью поддерживается буква ё
-   Лицензия - MIT


<a id="orgbc4630a"></a>

# linux NLP


<a id="org69b4f4e"></a>

## count max words in line of file

    MAX=0; file="/path";
    while read -r line; do if [[ $(echo $line | wc -w ) -gt $MAX ]]; then MAX=$(echo $line | wc -w ); fi; done < "$file"


<a id="orgb2d9f1b"></a>

# fuzzysearch

pip install &#x2013;force-reinstall &#x2013;no-cache-dir &#x2013;no-binary=:all: &#x2013;require-hashes &#x2013;user -r file.txt

    fuzzysearch==0.7.3 --hash=sha256:d5a1b114ceee50a5e181b2fe1ac1b4371ac8db92142770a48fed49ecbc37ca4c
    attrs==22.2.0 --hash=sha256:c9227bfc2f01993c03f68db37d1d15c9690188323c067c641f1a35ca58185f99


<a id="org041c429"></a>

## typesense


<a id="org0336fba"></a>

### pip3 install typesense &#x2013;user

*usr/lib/python3/dist-packages/secretstorage/dhcrypto.py:15: CryptographyDeprecationWarning: int<sub>from</sub><sub>bytes</sub> is deprecated, use int.from<sub>bytes</sub> instead
  from cryptography.utils import int<sub>from</sub><sub>bytes</sub>
/usr/lib/python3/dist-packages/secretstorage/util.py:19: CryptographyDeprecationWarning: int<sub>from</sub><sub>bytes</sub> is deprecated, use int.from<sub>bytes</sub> instead
  from cryptography.utils import int<sub>from</sub><sub>bytes</sub>
Collecting typesense
  Downloading typesense-0.15.0-py2.py3-none-any.whl (30 kB)
Requirement already satisfied: requests in .*.local/lib/python3.8/site-packages (from typesense) (2.28.1)
Requirement already satisfied: idna<4,>=2.5 in ./.local/lib/python3.8/site-packages (from requests->typesense) (3.4)
Requirement already satisfied: certifi>=2017.4.17 in ./.local/lib/python3.8/site-packages (from requests->typesense) (2022.12.7)
Requirement already satisfied: urllib3<1.27,>=1.21.1 in ./.local/lib/python3.8/site-packages (from requests->typesense) (1.26.13)
Requirement already satisfied: charset-normalizer<3,>=2 in ./.local/lib/python3.8/site-packages (from requests->typesense) (2.1.1)
Installing collected packages: typesense
Successfully installed typesense-0.15.0


<a id="orgb07035e"></a>

# Audio - librosa

librosa uses **soundfile** and **audioread** for reading audio.


<a id="org1f08e6b"></a>

## generic audio characteristics

-   Channels: number of channels; 1 for mono, 2 for stereo audio
-   Sample width: number of bytes per sample; 1 means 8-bit, 2 means 16-bit
-   Frame rate/Sample rate: frequency of samples used (in Hertz)
-   Frame width or Bit depth: Number of bytes for each “frame”. One frame contains a sample for each channel.
-   Length: audio file length (in milliseconds)
-   Frame count: the number of frames from the sample
-   Intensity: loudness in dBFS (dB relative to the maximum possible loudness)


<a id="org5d52b67"></a>

## load

default: librosa.core.load(path, sr=22050, mono=True, offset=0.0, duration=None, dtype=<class 'numpy.float32'>, res<sub>type</sub>='kaiser<sub>best</sub>')

-   sr is the sampling rate (To preserve the native sampling rate of the file, use sr=None.)
-   mono is the option (true/ false) to convert it into mono file.
-   offset is a floating point number which is the starting time to read the file
-   duration is a floating point number which signifies how much of the file to load.
-   dtype is the numeric representation of data can be float32, float16, int8 and others.
-   res<sub>type</sub> is the type of resampling (one option is kaiser<sub>best</sub>)

    import librosa
    y: np.array
    y, sample_rate = librosa.load(filename, sr=None) # sampling rate as `sr` , y - time series
    print("sample rate of original file:", sample_rate)
    # -- Duration
    print(librosa.get_duration(y))
    print("duration in seconds", len(y)/sample_rate)
    
    
    from IPython.display import Audio
    Audio(data=data1,rate=sample_rate) # play audio
    
    # --- for WAV files:
    import soundfile as sf
    ob = sf.SoundFile('example.wav')
    print('Sample rate: {}'.format(ob.samplerate))
    print('Channels: {}'.format(ob.channels))
    print('Subtype: {}'.format(ob.subtype))
    
    # --- mp3
    import audioread
    with audioread.audio_open(filename) as f:
        print(f.channels, f.samplerate, f.duration)


<a id="orgee16ec2"></a>

## the Fourier transform - spectrum

    import numpy as np
    import librosa
    import matplotlib.pyplot as plt
    
    # filepath = '/home/u2/h4/PycharmProjects/whisper/1670162239-2022-12-04-16_57.mp3'
    filepath = '/mnt/hit4/hit4user/gitlabprojects/captcha_fssp/app/929014e341a0457f5a90a909b0a51c40.wav'
    
    y, sr = librosa.load(filepath)
    librosa.fft_frequencies()
    n_fft = 2048
    ft = np.abs(librosa.stft(y[:n_fft], hop_length=n_fft + 1))
    
    plt.plot(ft)
    plt.title('Spectrum')
    plt.xlabel('Frequency Bin')
    plt.ylabel('Amplitude')
    plt.show()


<a id="orgb2d1cb4"></a>

## spectrogram

    import numpy as np
    import librosa
    import matplotlib.pyplot as plt
    
    # filepath = '/home/u2/h4/PycharmProjects/whisper/1670162239-2022-12-04-16_57.mp3'
    filepath = '/mnt/hit4/hit4user/gitlabprojects/captcha_fssp/app/929014e341a0457f5a90a909b0a51c40.wav'
    
    y, sr = librosa.load(filepath)
    
    spec = np.abs(librosa.stft(y, hop_length=512))
    spec = librosa.amplitude_to_db(spec, ref=np.max)
    # fig, ax = plt.figure()
    plt.imshow(spec, origin="lower", cmap=plt.get_cmap("magma"))
    
    plt.colorbar(format='%+2.0f dB')
    plt.title('Spectrogram')
    plt.show()


<a id="orge5c8421"></a>

## log-Mel spectrogram

    import numpy as np
    import librosa
    import matplotlib.pyplot as plt
    
    # filepath = '/home/u2/h4/PycharmProjects/whisper/1670162239-2022-12-04-16_57.mp3'
    filepath = '/mnt/hit4/hit4user/gitlabprojects/captcha_fssp/app/929014e341a0457f5a90a909b0a51c40.wav'
    
    y, sr = librosa.load(filepath)
    
    hop_length = 512
    n_mels = 128 #  linear transformation matrix to project FFT bins
    n_fft = 2048 #  samples, corresponds to a physical duration of 93 milliseconds at a sample rate of 22050 Hz
    # one line mel spectrogram
    S = librosa.feature.melspectrogram(y, sr=sr, n_fft=n_fft, hop_length=hop_length, n_mels=n_mels)
    # 3 lines mel spectrogram
    fft_windows = librosa.stft(y, n_fft=n_fft, hop_length=hop_length)
    magnitude = np.abs(fft_windows)**2
    mel = librosa.filters.mel(sr=sr, n_fft=n_fft, n_mels=n_mels)
    S2 = mel.dot(magnitude)
    assert (S2 == S).all()
    
    S = np.log10(S) # Log
    
    mel_spect = librosa.power_to_db(S, ref=np.max)
    plt.imshow(mel_spect, origin="lower", cmap=plt.get_cmap("magma"))
    
    plt.colorbar(format='%+2.0f dB')
    plt.title('Mel Spectrogram')
    plt.show()


<a id="orgf051f0f"></a>

## distinguish emotions

    male = librosa.feature.mfcc(y=X, sr=sample_rate, n_mfcc=13)
    male = np.mean(librosa.feature.mfcc(y=X, sr=sample_rate, n_mfcc=13), axis=0)


<a id="orgf1555be"></a>

## links

-   <https://community-app.topcoder.com/thrive/articles/audio-data-analysis-using-python>
-   <https://iq.opengenus.org/introduction-to-librosa/>
-   <https://librosa.org/doc/latest/index.html>
-   split on silence <https://medium.com/@vvk.victory/audio-processing-librosa-split-on-silence-8e1edab07bbb>
-   distinguish emotions <https://www.kaggle.com/code/krishnachary/speech-emotion-recognition-with-librosa>


<a id="org44e35d0"></a>

# Audio


<a id="orgbc46014"></a>

## terms

-   down-mixing -  The process of combining multiple audio output channels into a single stereo or mono output
-   resampling - change sample rate, - samplese per seconds


<a id="org39578a5"></a>

## theory

-   waveform - wave or oscilates curve with amplitude
-   frequency - occurrences of vibrations per unit of time
-   sampling frequency or sampling rate - average number of samples obtained in one second. or hertz e.g. 48 kHz
    is 48,000 samples per second. 44.1kHz, or 44,100 samples per second
-   Bit depth - typically recorded at 8-, 16-, and 24-bit depth,
    -   mp3 does not have bit depth - compressed format
    -   wav - uncompressed
-   quality 44.1kHz / 16-bit  - CD, 192kHz/24-bit - hires audio
-   bit rate - bits per second required for encoding without compression

Calc bit rate and size:

-   44.1kHz/16-bit: 44,100 x 16 x 2 = 1,411,200 bits per second (1.4Mbps)
-   44.1kHz/16-bit: 1.4Mbps \* 300s = 420Mb (52.5MB)

All wave forms

-   periodic
    -   simple
    -   comples
-   aperiodic
    -   noise
    -   pulse

-   amplitude - distance from max and min
-   wavelength -  total distance covered by a particle in one time period
-   Phase - location of the wave from an equilibrium point as time t=0
-   

features

-   loudness - brain intensity
-   pitch - brain frequency
-   quality or Timbre - brain ?
-   intensity
-   amplitude phase
-   angular velocity


<a id="org1528ff0"></a>

## The Fourier Transform (spectrum)

mathematical formula - converts the signal from the time domain into the frequency domain.

-   result - \*spectrum
-   Fourier’s theorem - signal can be decomposed into a set of sine and cosine waves
-   fast Fourier transform (FFT) is an algorithm that can efficiently compute the Fourier transform
-   Short-time Fourier transform - signal in the time-frequency domain by computing discrete Fourier transforms
    (DFT) over short overlapping windows. for non periodic signals - such as music and speech


<a id="org8debd8b"></a>

## log-Mel spectrogram

spectrogram - the horizontal axis represents time, the vertical axis represents frequency, and the color intensity
represents the amplitude of a frequency at a certain point.

-   y - Decibels
-   used to train convolutional neural networks for the classification

Mel-spectrogram converts the frequencies to the mel-scale is “a perceptual scale of pitches judged by
listeners to be equal in distance from one another”

-   y - just Hz 0,64,128,256,512,1024
-   It uses the Mel Scale instead of Frequency on the y-axis.
-   It uses the Decibel Scale instead of Amplitude to indicate colors.
-   x - time sequence
-   value - mel shaped dB

Mel scale (after the word melody) - frequency(Hz) to mels(mel) conversion by formula

-   the pair at 100Hz and 200Hz will sound further apart than the pair at 1000Hz and 1100Hz.
-   you will hardly be able to distinguish between the pair at 10000Hz and 10100Hz.

Decibel Scale - \*2

-   10 dB is 10 times louder than 0 dB
-   20 dB is 100 times louder than 10 dB

steps:

1.  Separate to windows: Sample the input with windows of size n<sub>fft</sub>=2048, making hops of size hop<sub>length</sub>=512
    each time to sample the next window.
2.  Compute FFT (Fast Fourier Transform) for each window to transform from time domain to frequency domain.
3.  Generate a Mel scale: Take the entire frequency spectrum, and separate it into n<sub>mels</sub>=128 evenly spaced
    frequencies.
4.  Generate Spectrogram: For each window, decompose the magnitude of the signal into its components,
    corresponding to the frequencies in the mel scale.


<a id="org486b596"></a>

### Log - because

-   np.log10(S) after mel spectrogram
-   or because Mel Scale has log in formule

    func frequencyToMel(_ frequency: Float) -> Float {
           return 2595 * log10(1 + (frequency / 700))
       }
    
    
       func melToFrequency(_ mel: Float) -> Float {
           return 700 * (pow(10, mel / 2595) - 1)
       }


<a id="orgf64873f"></a>

## pyo

-   <http://ajaxsoundstudio.com/software/pyo/>

libsndfile-dev


<a id="org2603f14"></a>

## torchaudio


<a id="orgf963c13"></a>

## ffmpeg-python

-   doc <https://kkroening.github.io/ffmpeg-python/>


<a id="orgcb7f5bd"></a>

# Whisper

-   a Transformer based encoder-decoder model, also referred to as a sequence-to-sequence model
-   Input audio is split into 30-second chunks, converted into a log-Mel spectrogram, and then passed into an encoder
-   automatic speech recognition (ASR)
-   Whisper is pre-trained on a vast quantity of labelled audio-transcription data, 680,000 hours to be precise
-   117,000 hours of this pre-training data is multilingual ASR data
-   supervised task of speech recognition
-   uses
    -   GPT2TokenizerFast <https://github.com/huggingface/transformers/blob/main/src/transformers/models/gpt2/tokenization_gpt2_fast.py>
        -   byte-level    Byte-Pair-Encoding
        -   "gpt2" and "multilingual"

logits - all 51865 tokes probability

Steps:

1.  model.transcribe
2.  model.decode
3.  DecodingTask.run()
4.  self.<sub>main</sub><sub>loop</sub>


<a id="org8c9109d"></a>

## Byte-Pair Encoding (BPE)

Tokenization algorithms can be

-   word
-   subword - used by most state-of-the-art NLP models - frequently used words should not be split into smaller subwords
-   character-based

Subword-based tokenization:

-   splits the rare words into smaller meaningful subwords
-   WordPiece, Byte-Pair Encoding (BPE)(used in GPT-2), Unigram, and SentencePiece
-   <https://huggingface.co/docs/transformers/tokenizer_summary>
-   <https://arxiv.org/abs/1508.07909>


<a id="org215d9e6"></a>

### usage

    from transformers import GPT2TokenizerFast
    path = '/home/u2/.local/lib/python3.8/site-packages/whisper/assets/multilingual'
    
    tokenizer = GPT2TokenizerFast.from_pretrained(path)
    
    tokens = [[50364, 3450, 5505, 13, 50464, 51014, 9149, 11, 6035, 5345, 7520, 1595, 6885, 1725, 30162, 13, 51114, 51414, 21249, 7520, 9916, 13, 51464]]
    print([tokenizer.decode(t).strip() for t in tokens])
    print(tokenizer.encode('А вот. Да, но он уже у меня не работает. Нет уже нет.'))


<a id="org808415b"></a>

## model.transcribe(filepath or numpy)

-   mel = log<sub>mel</sub><sub>spectrogram</sub>(audio) # split audio by chunks (84)
    -   whisper.audio.load<sub>audio</sub>(filepath)
-   if no language set - it will use 30 seconds to detect language first
-   loop seek<length
    -   get 3000 frames - 30 seconds
    -   decode segment - DecodingResult=DecodingTask(model, options).run(mel) decoding.py (701) see [52.3](#org00709ad)
    -   if no speech then skip
    -   split segment to consequtives
-   tokenize and segment
-   summarize

    

-   segments - think a chunk of speech based you obtain from the timestamps. Something like 10:00s -> 13.52s would be a segment


<a id="org039450d"></a>

### return

-   text - full text
-   segments
    -   seek
    -   start&end
    -   text - segment text
    -   'tokens': []
    -   'temperature': 0.0,
    -   'avg<sub>logprob</sub>': -0.7076873779296875, # if < -1 - too low probability, retranscribe with another temperature
    -   'compression<sub>ratio</sub>': 1.1604938271604939,
    -   'no<sub>speech</sub><sub>prob</sub>': 0.5063244700431824 - если больше 0.6, то не возвращаем сегмент
-   'language': 'ru'

{'text': 'long text', 'segments': [{'id': 0, 'seek': 0, 'start': 0.0, 'end': 2.64, 'text': ' А вот, не добрый
день.', 'tokens': [], 'temperature': 0.0,
'avg<sub>logprob</sub>': -0.7076873779296875, 'compression<sub>ratio</sub>': 1.1604938271604939, 'no<sub>speech</sub><sub>prob</sub>':
0.5063244700431824},
 {'id': 1, 'seek': 0, 'start': 2.64, 'end': 4.64, 'text': ' Меня зовут Дмитрий, это
Русснорбанг.', 'tokens': [], 'temperature': 0.0,
'avg<sub>logprob</sub>': -0.7076873779296875, 'compression<sub>ratio</sub>': 1.1604938271604939, 'no<sub>speech</sub><sub>prob</sub>':
0.5063244700431824},
 {'id': 2, 'seek': 0, 'start': 4.64, 'end': 8.040000000000001, 'text': ' Дайте, он
разжонили по поводу Мехеэлы Романовича Гапуэк,', 'tokens': [], 'temperature': 0.0, 'avg<sub>logprob</sub>': -0.7076873779296875, 'compression<sub>ratio</sub>':
1.1604938271604939, 'no<sub>speech</sub><sub>prob</sub>': 0.5063244700431824},

{'id': 62, 'seek': 13828, 'start': 150.28, 'end': 151.28, 'text': ' Если&#x2026;', 'tokens': [], 'temperature': 0.0, 'avg<sub>logprob</sub>': -0.3628227009492762,
'compression<sub>ratio</sub>': 1.0274509803921568, 'no<sub>speech</sub><sub>prob</sub>': 1.6432641132269055e-05}, {'id': 63, 'seek': 13828,
'start': 151.28, 'end': 154.28, 'text': ' Если как-то пежись, хорошо, накрыли.', 'tokens': [], 'temperature': 0.0, 'avg<sub>logprob</sub>': -0.3628227009492762,
'compression<sub>ratio</sub>': 1.0274509803921568, 'no<sub>speech</sub><sub>prob</sub>': 1.6432641132269055e-05}, {'id': 64, 'seek': 15428,
'start': 154.28, 'end': 183.28, 'text': ' Ну, да, всего доброго, до сих пор.', 'tokens': [50364, 7571, 11,
8995, 11, 15520, 35620, 2350, 11, 5865, 776, 4165, 11948, 13, 51814], 'temperature': 0.0, 'avg<sub>logprob</sub>':
-0.9855107069015503, 'compression<sub>ratio</sub>': 0.576271186440678, 'no<sub>speech</sub><sub>prob</sub>': 6.223811215022579e-05}],
'language': 'ru'}


<a id="org6a8ce27"></a>

## model.decode(mel, options) <a id="org00709ad"></a>

options: language

DecodingTask(model, options).run(mel)

-   create GPT2TokenizerFast wrapped
-   audio<sub>features</sub> <- mel
-   tokens, sum<sub>logprobs</sub>, no<sub>speech</sub><sub>probs</sub> <- audio<sub>features</sub>
-   texts: List[str] = [tokenizer.decode(t).strip() for t in tokens]
    -   tokens = [ [50364, 3450, 5505, 13, 50464, 51014, 9149, 11, 6035, 5345, 7520, 1595, 6885, 1725, 30162, 13, 51114, 51414, 21249, 7520, 9916, 13, 51464] ]
-   <- fine tune

<https://huggingface.co/blog/fine-tune-whisper>
<https://colab.research.google.com/drive/1P4ClLkPmfsaKn2tBbRp0nVjGMRKR-EWz>


<a id="org4a1e436"></a>

## no<sub>speech</sub><sub>prob</sub> and avg<sub>logprob</sub>

-   no<sub>speech</sub><sub>prob</sub> - calc at the first toke only and at SOT logit
-   avg<sub>logprob</sub>
    -   sum<sub>logprobs</sub> - sum of:
        -   current<sub>logprobs</sub> - logprobs = F.log<sub>softmax</sub>(logits.float(), dim=-1)


<a id="org6bf660f"></a>

## decode from whisper<sub>word</sub><sub>level</sub> 844

decode<sub>word</sub><sub>level</sub> 781

-   result, ts = decode.run() 711   - decoding.py 612
-   finalize 524    - decoding.py 271

self.ts

-   self.decoder.update<sub>with</sub><sub>ts</sub> 700 (main<sub>loop</sub>) - decoding.py 602
-   


<a id="org842e16b"></a>

## main<sub>loop</sub>

receive

-   audio<sub>features</sub>
-   tokens with 3 values

tokes: int +=1
complete: bool = False
sum<sub>logprobs</sub>: int


<a id="org2321aec"></a>

## words timestemps <https://github.com/jianfch/stable-ts>

timestamp<sub>logits</sub> - ts<sub>logits</sub> - self.ts -


<a id="org451a5d2"></a>

### transcribe format

-   

-   segments:

[{'id': 0, 'seek': 0, 'offset': 0.0, 'start': 1.0, 'end': 3.0, 'text': ' А вот, не добрый день.',
  'tokens': [50414, 3450, 5505, 11, 1725, 35620, 4851, 13509, 13, 50514, 50514, 47311, 46376, 3401, 919, 1635, 50161, 11, 2691, 6325, 7071, 461, 1234, 481, 1552, 1416, 1906, 13, 50564, 50564, 3401, 10330, 11, 5345, 4203, 1820, 1784, 5435, 2801, 10499, 35749, 50150, 386, 2338, 6325, 1253, 11114, 3903, 386, 7247, 4219, 23412, 3605, 13, 50714, 50714, 3200, 585, 37408, 585, 11, 2143, 10655, 30162, 1006, 17724, 15028, 4558, 13, 50814, 50814, 2348, 1069, 755, 12886, 387, 29868, 11, 776, 31158, 50233, 19411, 23201, 860, 1283, 25190, 13, 51014, 51014, 9149, 11, 6035, 5345, 7520, 1595, 6885, 1725, 30162, 13, 51064, 51064, 3450, 5505, 5865, 10751, 29117, 21235, 13640, 11, 2143, 5345, 1595, 10655, 2801, 7247, 9223, 24665, 30162, 13, 51314, 51314, 6684, 1725, 13790, 13549, 10986, 11, 6035, 8995, 11, 6035, 4777, 1725, 485, 51414, 51414, 21249, 7520, 9916, 13, 51464, 51464, 4857, 37975, 11, 25969, 5878, 11, 3014, 50150, 386, 2338, 6325, 1253, 11114, 3903, 1595, 6519, 3348, 35968, 23412, 34005, 47573, 51664, 51664, 10969, 45309, 13388, 19465, 5332, 4396, 20392, 44356, 740, 1069, 755, 1234, 1814, 13254, 11, 51814, 51814],
  'temperature': 0.0, 'avg<sub>logprob</sub>': -0.5410955043438354, 'compression<sub>ratio</sub>': 1.1496259351620948, 'no<sub>speech</sub><sub>prob</sub>': 0.5069490671157837,
  'alt<sub>start</sub><sub>timestamps</sub>': [1.0, 0.9199999570846558, 1.0399999618530273, 0.9599999785423279, 1.100000023841858, 0.9399999976158142, 0.9799999594688416, 1.0799999237060547, 1.1200000047683716, 1.1999999284744263],
  'start<sub>ts</sub><sub>logits</sub>': [13.0390625, 12.4140625, 12.296875, 12.2109375, 12.171875, 12.140625, 12.0390625, 11.9921875, 11.9453125, 11.8046875],
  'alt<sub>end</sub><sub>timestamps</sub>': [3.0, 2.0, 2.859999895095825, 2.879999876022339, 2.8999998569488525, 4.0, 2.9800000190734863, 3.0399999618530273, 2.299999952316284, 2.359999895095825],
  'end<sub>ts</sub><sub>logits</sub>': [9.6015625, 8.9375, 7.65234375, 7.53125, 7.4609375, 7.4609375, 7.30859375, 7.28515625, 7.22265625, 7.11328125],
  'unstable<sub>word</sub><sub>timestamps</sub>': [{'word': ' А', 'token': 3450,
				'timestamps':[7.0, 29.5, 1.0, 29.35999870300293, 13.0, 29.279998779296875, 29.34000015258789, 29.479999542236328, 28.939998626708984, 29.01999855041504],
				'timestamp<sub>logits</sub>': [15.1328125, 15.0703125, 14.9921875, 14.96875, 14.96875, 14.96875, 14.890625, 14.8359375, 14.7890625, 14.7890625]},
				{'word': ' вот', 'token': 5505,
				'timestamps': [27.34000015258789, 29.31999969482422, 26.979999542236328, 28.420000076293945, 28.739999771118164, 27.31999969482422, 28.439998626708984, 29.34000015258789, 13.519999504089355, 28.239999771118164],
				'timestamp<sub>logits</sub>': [19.546875, 19.46875, 19.296875, 19.125, 19.109375, 19.109375, 19.09375, 19.09375, 19.078125, 19.046875]},
				{'word': ',', 'token': 11,
				'timestamps': [2.0, 3.0, 4.0, 1.0, 1.7999999523162842, 10.0, 3.0199999809265137, 1.7599999904632568, 19.0, 3.5],
				'timestamp<sub>logits</sub>': [14.8828125, 13.640625, 13.21875, 12.734375, 11.3828125, 11.3671875, 11.3515625, 11.3359375, 11.2890625, 11.2578125]},
				{'word': ' не', 'token': 1725,
				'timestamps': [2.0, 1.0, 1.7599999904632568, 1.71999990940094, 1.6399999856948853, 1.7799999713897705, 28.19999885559082, 1.7999999523162842, 7.0, 28.239999771118164],
				'timestamp<sub>logits</sub>': [15.328125, 15.03125, 14.921875, 14.4453125, 14.3671875, 14.234375, 14.2265625, 14.203125, 14.0234375, 13.875]},
				{'word': ' добр', 'token': 35620,
				'timestamps': [28.099998474121094, 28.139999389648438, 14.75999927520752, 14.920000076293945, 27.099998474121094, 18.119998931884766, 14.59999942779541, 28.260000228881836, 13.0, 26.599998474121094],
				'timestamp<sub>logits</sub>': [14.015625, 13.9765625, 13.96875, 13.8515625, 13.84375, 13.8046875, 13.7109375, 13.7109375, 13.6953125, 13.6953125]},
				{'word': 'ый', 'token': 4851,
				'timestamps': [13.59999942779541, 15.399999618530273, 13.279999732971191, 14.719999313354492, 13.399999618530273, 14.880000114440918, 13.0, 14.59999942779541, 13.679999351501465, 13.639999389648438],
				'timestamp<sub>logits</sub>': [15.4140625, 15.28125, 15.21875, 14.765625, 14.7265625, 14.71875, 14.6328125, 14.578125, 14.5546875, 14.53125]}, {'word': ' день', 'token': 13509, 'timestamps': [2.0, 20.959999084472656, 3.0, 25.68000030517578, 3.4800000190734863, 24.0, 3.5, 19.920000076293945, 28.559999465942383, 4.0], 'timestamp<sub>logits</sub>': [9.3984375, 9.21875, 9.046875, 9.015625, 8.9296875, 8.90625, 8.875, 8.8203125, 8.7890625, 8.7421875]},
				{'word': '.', 'token': 13, 'timestamps': [3.0, 2.0, 4.0, 3.5, 3.0199999809265137, 2.879999876022339, 3.319999933242798, 3.0399999618530273, 2.299999952316284, 2.859999895095825], 'timestamp<sub>logits</sub>': [12.6328125, 12.4296875, 10.875, 10.2578125, 9.828125, 9.5078125, 9.4921875, 9.421875, 9.3828125, 9.3046875]}
				],
  'anchor<sub>point</sub>': False,
  'word<sub>timestamps</sub>': [{'word': ' А', 'token': 3450, 'timestamp': 1.0}, {'word': ' вот', 'token': 5505, 'timestamp': 1.0}, {'word': ',', 'token': 11, 'timestamp': 2.0}, {'word': ' не', 'token': 1725, 'timestamp': 2.0}, {'word': ' добр', 'token': 35620, 'timestamp': 2.0}, {'word': 'ый', 'token': 4851, 'timestamp': 2.0}, {'word': ' день', 'token': 13509, 'timestamp': 2.0}, {'word': '.', 'token': 13, 'timestamp': 3.0}],
  'whole<sub>word</sub><sub>timestamps</sub>': [{'word': ' А', 'timestamp': 1.3799999952316284}, {'word': ' вот,', 'timestamp': 1.7599999904632568}, {'word': ' не', 'timestamp': 1.7899999618530273}, {'word': ' добр', 'timestamp': 1.8899999856948853}, {'word': 'ый', 'timestamp': 1.8899999856948853}, {'word': ' день.', 'timestamp': 2.5899999141693115}
			     ]
  }, {'id': 1,


<a id="org3cbfad5"></a>

## confidence score

sum<sub>logprobs</sub>: List[float] = [lp[i] for i, lp in zip(selected, sum<sub>logprobs</sub>)]

avg<sub>logprob</sub> - [lp / (len(t) + 1) for t, lp in zip(tokens, sum<sub>logprobs</sub>)]

path

-   model.transcribe
-   model.decode
-   transcribe<sub>word</sub><sub>level</sub> (whisper<sub>word</sub><sub>level.py</sub>:39)
-   results, ts<sub>tokens</sub>, ts<sub>logits</sub>\_ = model.decode


<a id="orgdaaf6cb"></a>

## TODO main/notebooks


<a id="org1eaf3ac"></a>

## links

<https://github.com/openai/whisper>

-   <https://cdn.openai.com/papers/whisper.pdf>


<a id="orgfb4d2fd"></a>

# NER USΕ CASES


<a id="orgc584344"></a>

## Spelling correction algorithms or  (spell checker) or (comparing a word to a list of words)

-   <https://www.quora.com/Algorithms-What-is-a-fast-way-of-comparing-a-word-to-a-list-of-words-to-find-the-closest-match>

Damerau-Levenshtein - edit distance with constant time O(1) - independent of the word list size (but depending
on the average term length and maximum edit distance)


<a id="org3979017"></a>

## fuzzy string comparision или Приближённый поиск

-   <https://stackoverflow.com/questions/6690739/high-performance-fuzzy-string-comparison-in-python-use-levenshtein-or-difflib>

approaches:

-   Levenshtein is O(m\*n) - mn - length of the two input strings
-   difflib.SequenceMatcher
    -   uses the Ratcliff/Obershelp algorithm - O(n\*2)
-   расстояние Хэмминга - не учитывает удаление символов, а считает только для двух строк одинаковой длины
    количество символов

databases

-   Clickhouse <https://habr.com/en/company/yandex/blog/466183/>
-   


<a id="org28e63fc"></a>

# Flax and Jax

Google

-   <https://github.com/google/flax>
-   <https://github.com/google/jax>

Flax - neural network library and ecosystem for JAX designed for flexibility


<a id="org3999c45"></a>

# hyperparemeter optimization library **test-tube**

<https://github.com/williamFalcon/test-tube>


<a id="orgca54622"></a>

# Keras

-   <https://keras.io/>
-   <https://keras.io/optimizers/>
-   CNN <https://www.learnopencv.com/image-classification-using-convolutional-neural-networks-in-keras/>

MIT нейросетевая библиотека

-   надстройку над фреймворками Deeplearning4j, TensorFlow и Theano
-   Нацелена на оперативную работу с сетями глубинного обучения
-   компактной, модульной и расширяемой
-   высокоуровневый, более интуитивный набор абстракций, который делает простым формирование нейронных сетей,
-   channels<sub>last</sub> - default for keras <python-ds>

import logging
logging.getLogger('tensorflow').disabled = True

-   loss - loss function <https://github.com/keras-team/keras/blob/c2e36f369b411ad1d0a40ac096fe35f73b9dffd3/keras/metrics.py>
    -   mean<sub>squared</sub><sub>error</sub>
    -   categorical<sub>crossentropy</sub>
    -   binary<sub>crossentropy</sub>
    -   sparse<sub>categorical</sub><sub>accuracy</sub> - Calculates the top-k categorical accuracy rate, i.e. success when the
        target class is within the top-k predictions provided.
    -   top<sub>k</sub><sub>categorical</sub><sub>accuracy</sub> - Calculates the top-k categorical accuracy rate, i.e. success when the target
        class is within the top-k predictions provided.
    -   sparse<sub>top</sub><sub>k</sub><sub>categorical</sub><sub>accuracy</sub>

Steps:

    # 1.declare keras.layers.Input and keras.layers.Dense in chain
    # 2.
    model = Model(inputs=inputs, outputs=predictions) # where inputs - inputs, predictions - last Dense layout
    # 3. Configures the model for training
    model.compile(optimizer='rmsprop', loss='categorical_crossentropy', metrics=['accuracy']) #
    # 4.
    model.fit(data, labels, epochs=10, batch_size=32)
    # 5.
    model.predict(np.array([[3,3,3]])) - shape (3,)
    
    model = Model(inputs=inputs, outputs=predictions)
    model.compile(optimizer='rmsprop',
                  loss='categorical_crossentropy',
                  metrics=['accuracy'])


<a id="orga4e0b5c"></a>

## install

pip install keras &#x2013;user


<a id="org5f5208d"></a>

## API types

-   Model subclassing: from keras.models import Model
-   Model constructor - deprecated
-   Functional API
-   Sequential model


<a id="orgd7399f9"></a>

## Sequential model

-   first layer needs to receive information about its input shape - following layers can do automatic shape

inference


<a id="orgd988d8c"></a>

## functional API


<a id="orgdd51876"></a>

## Layers

-   layer.get<sub>weights</sub>()
-   layer.get<sub>config</sub>(): returns a dictionary containing the configuration of the layer.


<a id="orgacea9c3"></a>

### types

-   Input - instantiate a Keras tensor Input(shape=(784,)) - indicates that the expected input will be batches
    of 784-dimensional vectors
-   Dense - Each neuron recieves input from all the neurons in the previous layer
-   Embedding -  can only be used as the first layer
-   Merge Layers  - concatenate  - Add  - Substract  - Multiply  - Average etc.
    -


<a id="org974d56d"></a>

### Dense

-   output = activation(dot(input, kernel) + bias)


<a id="orge3b06e1"></a>

## Models

attributes:

-   model.layers is a flattened list of the layers comprising the model.
-   model.inputs is the list of input tensors of the model.
-   model.outputs is the list of output tensors of the model.
-   model.summary() prints a summary representation of your model. Shortcut for
-   model.get<sub>config</sub>() returns a dictionary containing the configuration of the model.


<a id="orgbef4ac9"></a>

## Accuracy:

    # Keras reported accuracy:
    score = model.evaluate(x_test, y_test, verbose=0)
    score[1]
    # 0.99794011611938471
    
    # Actual accuracy calculated manually:
    import numpy as np
    y_pred = model.predict(x_test)
    acc = sum([np.argmax(y_test[i])==np.argmax(y_pred[i]) for i in range(10000)])/10000
    acc
    # 0.98999999999999999


<a id="orgd0eaad3"></a>

## input shape & text prepare

    import numpy as np
    data = np.random.random((2, 3)) # ndarray [[1,1,1],[1,1,1]]
    print(data.shape) # = (2,3)

(2,)

    data = np.random.random((2,)) # [0.3907832  0.00941261]

list to ndarray

    np.array(texts)
    np.asarray(texts)

fit of batches

    model.fit([np.asarray([x_embed , x_embed]) , np.asarray([x2_onehot, x2_onehot])], np.asarray([y_onehot[0], y_onehot[0]]), epochs=2, batch_size=2)


<a id="org9b21529"></a>

## ValueError: Error when checking input: expected input<sub>1</sub> to have 3 dimensions, but got array with shape

if

    Input(shape=(5,100))

then

    model.fit(x_embed, y_onehot, epochs=3, batch_size=1)

where x<sub>embed.shape</sub> = (1, 5, 100)


<a id="org096bf77"></a>

## merge inputs

<https://www.pyimagesearch.com/2019/02/04/keras-multiple-inputs-and-mixed-data/>

Добавил ещё один Input(shape=(x2<sub>size</sub>,) в виде вектора и сделал concatenate на плоском слое нейронов, важно
чтобы shape были одной размерности в данном случае это вектор

        inp = Input(shape=(words, embedding_size))  # 5 tokens
        output = inp
        #my
        #word_input = Input(shape=(x2_size,), name='word_input')
    
        outputs = []
        for i in range(len(kernel_sizes_cnn)):
            output_i = Conv1D(filters_cnn, kernel_size=kernel_sizes_cnn[i],
                              activation=None,
                              kernel_regularizer=l2(coef_reg_cnn),
                              padding='same')(output)
            output_i = BatchNormalization()(output_i)
            output_i = Activation('relu')(output_i)
            output_i = GlobalMaxPooling1D()(output_i)
            outputs.append(output_i)
    
        output = concatenate(outputs, axis=1)
        #my
        output = concatenate([output, word_input]) #second input
    
        output = Dropout(rate=dropout_rate)(output)
        output = Dense(dense_size, activation=None,
                       kernel_regularizer=l2(coef_reg_den))(output)
    
        output = BatchNormalization()(output)
        output = Activation('relu')(output)
        output = Dropout(rate=dropout_rate)(output)
        output = Dense(n_classes, activation=None,
                       kernel_regularizer=l2(coef_reg_den))(output)
        output = BatchNormalization()(output)
        act_output = Activation("softmax")(output)
        model = Model(inputs=[inp, word_input], outputs=act_output)
    
    model: Model = build_model(vocab_y.len, embedder.dim, words, embedder.dim)
    model.fit([np.asarray(x), np.asarray(x2)], np.asarray(y), epochs=100, batch_size=2)


<a id="orgea30d71"></a>

## convolution

-   **filters** - dimensionality of the output space - In practice, they are in number of 64,128,256, 512 etc.
-   **kernel<sub>size</sub>** is size of these convolution filters -  sliding window. In practice they are 3x3, 1x1 or 5x5
-   Note that number of filters from previous layer become the number of channels for current layer's input image.


<a id="org89a3fee"></a>

## character CNN

<https://towardsdatascience.com/besides-word-embedding-why-you-need-to-know-character-embedding-6096a34a3b10>


<a id="orga338015"></a>

## Early stopping

<https://keras.io/callbacks/>

    from tensorflow.keras.callbacks import EarlyStopping
    early_stopping_callback = EarlyStopping(monitor='val_acc', patience=2)
    model.fit(X_train, Y_train, callbacks=[early_stopping_callback])

    from keras.callbacks import EarlyStopping
    # ...
    num_epochs = 50 # we iterate at most fifty times over the entire training set
    # ...
    # fit the model on the batches generated by datagen.flow()---most parameters similar to model.fit
    model.fit_generator(datagen.flow(X_train, Y_train,
                            batch_size=batch_size),
                            samples_per_epoch=X_train.shape[0],
                            nb_epoch=num_epochs,
                            validation_data=(X_val, Y_val),
                            verbose=1,
                            callbacks=[EarlyStopping(monitor='val_loss', patience=5)]) # adding early stopping


<a id="orgb63b8e2"></a>

## plot history

    history = model.fit(X_train, Y_train, validation_split=0.2)
    plt.plot(history.history['acc'],
             label='Доля верных ответов на обучающем наборе')
    plt.plot(history.history['val_acc'],
             label='Доля верных ответов на проверочном наборе')
    plt.xlabel('Эпоха обучения')
    plt.ylabel('Доля верных ответов')
    plt.legend()
    plt.show()


<a id="orga003448"></a>

## ImageDataGenerator class

-   <https://medium.com/@vijayabhaskar96/tutorial-image-classification-with-keras-flow-from-directory-and-generators-95f75ebe5720>
-   flow() - Takes (x,y), return generator for model.fit<sub>generator</sub>()
-   flow<sub>from</sub><sub>directory</sub>() - берез директорию с субдиректориями и выдает (x,y) без остановки или в одну директорию
-   flow<sub>from</sub><sub>dataframe</sub>()
-   fit() - Only required if \`featurewise<sub>center</sub>\` or \`featurewise<sub>std</sub><sub>normalization</sub>\` or \`zca<sub>whitening</sub>\` are set
    to True.

    datagen = ImageDataGenerator(
    #         zoom_range=0.2, # randomly zoom into images
    #         rotation_range=10,  # randomly rotate images in the range (degrees, 0 to 180)
            width_shift_range=0.1,  # randomly shift images horizontally (fraction of total width)
            height_shift_range=0.1,  # randomly shift images vertically (fraction of total height)
            horizontal_flip=True,  # randomly flip images
            vertical_flip=False)  # randomly flip images


<a id="org70b72c1"></a>

## CNN Rotate


<a id="orgccddade"></a>

## LSTM

<https://machinelearningmastery.com/understanding-stateful-lstm-recurrent-neural-networks-python-keras/>
By default the Keras implementation resets the network state after each training batch.

    model.add(LSTM(50, batch_input_shape=(batch_size, X.shape[1], X.shape[2]), stateful=True))
    model.reset_states() # at the end of epoch


<a id="org4441eb5"></a>

# Tesseract - Optical Character Recognition

-   <https://github.com/tesseract-ocr/tesseract>
-   man <https://github.com/tesseract-ocr/tesseract/blob/master/doc/tesseract.1.asc>


<a id="org3ffb4a6"></a>

## compilation

-   <https://github.com/tesseract-ocr/tesseract/wiki/Compiling>

dockerfile:

    RUN apt-get update && apt-get install -y --no-install-recommends \
      g++ \
      automake \
      make \
      libtool \
      pkg-config \
      libleptonica-dev \
      curl \
      libpng-dev \
      zlib1g-dev \
      libjpeg-dev \
      && apt-get autoclean \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*
    
    ARG PREFIX=/usr/local
    ARG VERSION=4.1.0
    
    RUN curl --silent --location --location-trusted \
            --remote-name https://github.com/tesseract-ocr/tesseract/archive/$VERSION.tar.gz \
      && tar -xzf $VERSION.tar.gz \
      && cd tesseract-$VERSION \
      && ./autogen.sh \
      && ./configure --prefix=$PREFIX \
      && make \
      && make install \
      && ldconfig


<a id="org1638399"></a>

## black and white list

<https://github.com/tesseract-ocr/langdata/blob/master/rus/rus.training_text>

-   ./tesseract -l eng /home/u2/Documents/2.jpg stdout -c tessedit<sub>char</sub><sub>blacklist</sub>='0123456789'
-   ./tesseract -l eng /home/u2/Documents/2.jpg stdout -c tessedit<sub>char</sub><sub>whitelist</sub>='0123456789'

    print(pytesseract.image_to_string(im, lang='rus', config='-c tessedit_char_whitelist=0123456789'))


<a id="org25fc09d"></a>

## notes

when we repeat symbol it start to recognize it


<a id="org55568ce"></a>

## prepare

-   <https://github.com/tesseract-ocr/tesseract/wiki/ImproveQuality>

-   20-30 pix - height character


<a id="org62109fa"></a>

## usage

    text = pytesseract.image_to_string(img, lang='rus')
    
    letters = pytesseract.image_to_boxes(img, lang='rus')
    letters = letters.split('\n')
    letters = [letter.split() for letter in letters]
    h, w = img.shape
    for letter in letters:
         cv.rectangle(img, (int(letter[1]), h - int(letter[2])), (int(letter[3]), h - int(letter[4])), (0, 0, 255), 2)
                p_x = int(letter[1])
                p_y = hh - int(letter[2])  # 0 at top - LOWER
                p_x2 = int(letter[3])
                p_y2 = hh - int(letter[4])  # 0 at top - close to 0 - higher y2 < y
    
                # cv.rectangle(img, (int(letter[1]), h - int(letter[2])), (int(letter[3]), h - int(letter[4])), (0, 0, 255),
                #              2)
    
                cc = [
                    [p_x, p_y],
                    [p_x2, p_y],  # _
                    [p_x2, p_y2],  # _|
                    [p_x, p_y2]]
    
                c = np.array(cc, dtype=np.int32)
    
                # print(cv.contourArea(c), ',')
    
                # print(cc)
                # cv.drawMarker(img, (int(letter[1]), hh - int(letter[2])), -1, (0, 255, 0), 3)
    
                x = p_x
                y = p_y2
                w = p_x2 - p_x
                h = p_y - p_y2
                box = [x, y, w, h]


<a id="orge522b9d"></a>

# FEATURE ENGEERING


<a id="orgb99472e"></a>

## Featuretools - Aturomatic Feature Engeering

-   doc dfs <https://docs.featuretools.com/en/stable/generated/featuretools.dfs.html#featuretools.dfs>
-   doc <https://docs.featuretools.com/en/stable/>

-   article <https://medium.com/@rrfd/simple-automatic-feature-engineering-using-featuretools-in-python-for-classification-b1308040e183>
-   article kaggle <https://www.kaggle.com/willkoehrsen/automated-feature-engineering-basics/notebook>

Limitation: intended to be run on datasets that can fit in memory on one machine

-   делить закачку по строкам и делать массив
-   закачивать часть по дате

Steps:

1.  create dict {column:[rows], column2:[rows]}
2.  EntitySet
    -   Entities pd.DataFrame
    -   Relations
        -   **one to one only** - for many to many you must create middle set(ids)
        -   for each child id parent id MUST EXIST
        -   child id and parent id type must be queal
3.  ft.dfs - Input - entities with relationships

Cons

-   мусорные столбцы построенные на id столбцах и в порядке от child к parent при many-to-many

for prediction you must have в 10 раз больше строк чем feature <https://www.youtube.com/watch?v=Dc0sr0kdBVI&hd=1#t=57m20s>


<a id="orgb1079e4"></a>

### variable types

-   <https://docs.featuretools.com/en/stable/api_reference.html#variable-types>

-   **Index:** указывается при созданни Entity
-   **Id:** foreign key


<a id="orgab4d589"></a>

### example one-to-many

    # sys.partner_id - foreign key
    # partner - one
    # sys - many
    entities = {
      "sys": (sys, "id"),
      "partner": (partner, "id)
    }
    relationships = {
      ("partner", "id", "sys", "partner_id")
    }
    # fields:
    # partner.SUM(sys.field1)


<a id="org2dde341"></a>

### example many-to-many

    entities = {
      "sys": (sys, "id"),
      "cl_ids": (cl_ids, "id"),
      "cl_budget": (cl_budget, "idp")
    }
    relationships = {
      ("cl_ids", "id", "sys", "client_id"),
      ("cl_ids", "id", "cl_budget", "id")
    }
    
    # cl_ids.SUM(cl_budget.field1)
    # cl_ids.SUM(sys.field1) - мусорное поле, дублирующиее sys.field1


<a id="orgcdc44ea"></a>

### oparations

-   <https://primitives.featurelabs.com/>

    ft.list_primitives().head(5)


<a id="org8f78d0a"></a>

### aggregation primitive - across a parent-child relationship:

Default: [“sum”, “std”, “max”, “skew”, “min”, “mean”, “count”, “percent<sub>true</sub>”, “num<sub>unique</sub>”, “mode”]

-   **skew:** Computes the extent to which a distribution differs from a normal distribution.
-   **std:** Computes the dispersion relative to the mean value, ignoring \`NaN\`.
-   **percent<sub>true</sub>:** Determines the percent of \`True\` values.
-   **mode:** Determines the most commonly repeated value.

1.  all

    0                               std  aggregation              Computes the dispersion relative to the mean value, ignoring \`NaN\`.
    1                            median  aggregation                            Determines the middlemost number in a list of values.
    2                     n<sub>most</sub><sub>common</sub>  aggregation                                         Determines the \`n\` most common elements.
    3                          num<sub>true</sub>  aggregation                                              Counts the number of \`True\` values.
    4                   time<sub>since</sub><sub>last</sub>  aggregation        Calculates the time elapsed since the last datetime (default in seconds).
    5                               max  aggregation                             Calculates the highest value, ignoring \`NaN\` values.
    6                           entropy  aggregation                                Calculates the entropy for a categorical variable
    7                               any  aggregation                                     Determines if any value is 'True' in a list.
    8                              mode  aggregation                                     Determines the most commonly repeated value.
    9                  time<sub>since</sub><sub>first</sub>  aggregation               Calculates the time elapsed since the first datetime (in seconds).
    10                            trend  aggregation                                    Calculates the trend of a variable over time.
    11                            first  aggregation                                            Determines the first value in a list.
    12                              sum  aggregation                                   Calculates the total addition, ignoring \`NaN\`.
    13                            count  aggregation                          Determines the total number of values, excluding \`NaN\`.
    14                             skew  aggregation  Computes the extent to which a distribution differs from a normal distribution.
    15                 avg<sub>time</sub><sub>between</sub>  aggregation               Computes the average number of seconds between consecutive events.
    16                     percent<sub>true</sub>  aggregation                                         Determines the percent of \`True\` values.
    17                       num<sub>unique</sub>  aggregation                 Determines the number of distinct values, ignoring \`NaN\` values.
    18                              all  aggregation                                   Calculates if all values are 'True' in a list.
    19                              min  aggregation                            Calculates the smallest value, ignoring \`NaN\` values.
    20                             last  aggregation                                             Determines the last value in a list.
    21                             mean  aggregation                                       Computes the average for a list of values.


<a id="orgb44e42c"></a>

### TransformPrimitive - one or more variables from an entity to one new:

Default: [“day”, “year”, “month”, “weekday”, “haversine”, “num<sub>words</sub>”, “num<sub>characters</sub>”]

Useful:

-   divide<sub>numeric</sub> - ratio

Transform Don't have:

-   root
-   square<sub>root</sub>
-   log

1.  all

    -   <https://docs.featuretools.com/en/stable/_modules/featuretools/primitives/standard/binary_transform.html>
    -   22                             year    transform                                         Determines the year value of a datetime.
    -   23                            equal    transform                      Determines if values in one list are equal to another list.
    -   24                             isin    transform                        Determines whether a value is present in a provided list.
    -   25                   num<sub>characters</sub>    transform                                 Calculates the number of characters in a string.
    -   26                 less<sub>than</sub><sub>scalar</sub>    transform                               Determines if values are less than a given scalar.
    -   27               less<sub>than</sub><sub>equal</sub><sub>to</sub>    transform         Determines if values in one list are less than or equal to another list.
    -   28                 multiply<sub>boolean</sub>    transform                      Element-wise multiplication of two lists of boolean values.
    -   29                             week    transform                                 Determines the week of the year from a datetime.
    -   30     greater<sub>than</sub><sub>equal</sub><sub>to</sub><sub>scalar</sub>    transform                Determines if values are greater than or equal to a given scalar.
    -   31                              and    transform                                           Element-wise logical AND of two lists.
    -   32                 multiply<sub>numeric</sub>    transform                                        Element-wise multiplication of two lists.
    -   33                           second    transform                                      Determines the seconds value of a datetime.
    -   34                        not<sub>equal</sub>    transform                  Determines if values in one list are not equal to another list.
    -   35                              day    transform                                 Determines the day of the month from a datetime.
    -   36                          cum<sub>min</sub>    transform                                               Calculates the cumulative minimum.
    -   37              greater<sub>than</sub><sub>scalar</sub>    transform                            Determines if values are greater than a given scalar.
    -   38            modulo<sub>numeric</sub><sub>scalar</sub>    transform                       Return the modulo of each element in the list by a scalar.
    -   39          subtract<sub>numeric</sub><sub>scalar</sub>    transform                                 Subtract a scalar from each element in the list.
    -   40                         absolute    transform                                         Computes the absolute value of a number.
    -   41               add<sub>numeric</sub><sub>scalar</sub>    transform                                          Add a scalar to each value in the list.
    -   42                        cum<sub>count</sub>    transform                                                 Calculates the cumulative count.
    -   43                divide<sub>by</sub><sub>feature</sub>    transform                                       Divide a scalar by each value in the list.
    -   44            divide<sub>numeric</sub><sub>scalar</sub>    transform                                     Divide each element in the list by a scalar.
    -   45              time<sub>since</sub><sub>previous</sub>    transform                             Compute the time since the previous entry in a list.
    -   46                        longitude    transform                      Returns the second tuple value in a list of LatLong tuples.
    -   47                          cum<sub>max</sub>    transform                                               Calculates the cumulative maximum.
    -   48                              not    transform                                                         Negates a boolean value.
    -   49                 not<sub>equal</sub><sub>scalar</sub>    transform                  Determines if values in a list are not equal to a given scalar.
    -   50                             diff    transform                       Compute the difference between the value in a list and the
    -   51                     equal<sub>scalar</sub>    transform                      Determines if values in a list are equal to a given scalar.
    -   52                        num<sub>words</sub>    transform               Determines the number of words in a string by counting the spaces.
    -   53                   divide<sub>numeric</sub>    transform                                              Element-wise division of two lists.
    -   54        less<sub>than</sub><sub>equal</sub><sub>to</sub><sub>scalar</sub>    transform                   Determines if values are less than or equal to a given scalar.
    -   55                            month    transform                                        Determines the month value of a datetime.
    -   56                               or    transform                                            Element-wise logical OR of two lists.
    -   57                          weekday    transform                                  Determines the day of the week from a datetime.
    -   58                        less<sub>than</sub>    transform                     Determines if values in one list are less than another list.
    -   59                           minute    transform                                      Determines the minutes value of a datetime.
    -   60          multiply<sub>numeric</sub><sub>scalar</sub>    transform                                   Multiply each element in the list by a scalar.
    -   61            greater<sub>than</sub><sub>equal</sub><sub>to</sub>    transform      Determines if values in one list are greater than or equal to another list.
    -   62                             hour    transform                                         Determines the hour value of a datetime.
    -   63                modulo<sub>by</sub><sub>feature</sub>    transform                       Return the modulo of a scalar by each element in the list.
    -   64  scalar<sub>subtract</sub><sub>numeric</sub><sub>feature</sub>    transform                             Subtract each value in the list from a given scalar.
    -   65                       is<sub>weekend</sub>    transform                                         Determines if a date falls on a weekend.
    -   66                     greater<sub>than</sub>    transform                  Determines if values in one list are greater than another list.
    -   67                         cum<sub>mean</sub>    transform                                                  Calculates the cumulative mean.
    -   68                   modulo<sub>numeric</sub>    transform                                                Element-wise modulo of two lists.
    -   69                 subtract<sub>numeric</sub>    transform                                           Element-wise subtraction of two lists.
    -   70                        haversine    transform                Calculates the approximate haversine distance between two LatLong
    -   71                          is<sub>null</sub>    transform                                                   Determines if a value is null.
    -   72                      add<sub>numeric</sub>    transform                                              Element-wise addition of two lists.
    -   73                          cum<sub>sum</sub>    transform                                                   Calculates the cumulative sum.
    -   74                       percentile    transform                         Determines the percentile rank for each value in a list.
    -   75                       time<sub>since</sub>    transform                     Calculates time from a value to a specified cutoff datetime.
    -   76                         latitude    transform                       Returns the first tuple value in a list of LatLong tuples.
    -   77                           negate    transform                                                         Negates a numeric value.


<a id="org3840d14"></a>

### create primitive

-   <https://medium.com/@rrfd/simple-automatic-feature-engineering-using-featuretools-in-python-for-classification-b1308040e183>

    from featuretools.primitives import make_trans_primitive
    from featuretools.variable_types import Numeric
    # Create two new functions for our two new primitives
    def Log(column):
        return np.log(column)
    def Square_Root(column):
        return np.sqrt(column)
    # Create the primitives
    log_prim = make_trans_primitive(
        function=Log, input_types=[Numeric], return_type=Numeric)
    square_root_prim = make_trans_primitive(
        function=Square_Root, input_types=[Numeric], return_type=Numeric)


<a id="org142da52"></a>

### EXAMPLE from pandas

    es = ft.EntitySet()
    matches_df = pd.read_csv("./matches.csv")
    es.entity_from_dataframe(entity_id="matches",
                             index="match_id",
                             time_index="match_date",
                             dataframe=matches_df)


<a id="org0c67138"></a>

## TODO informationsfabirc

-   <https://www.informationsfabrik.com/>
-   <https://github.com/Informationsfabrik/feature-engineering-slides/blob/master/pydata2019_feature-engineering.pdf>


<a id="org12c22c1"></a>

## TODO TPOT

-   <https://epistasislab.github.io/tpot/>


<a id="org92f0455"></a>

## TSFRESH (time sequence)

-   <https://tsfresh.readthedocs.io/en/latest/>


<a id="orgbaeb717"></a>

## ATgfe - new feature

<https://github.com/ahmed-mohamed-sn/ATgfe>


<a id="org9ea7d9a"></a>

# support libraries

-   **dask:** scale numpy, pandas, scikit-learn, XGBoost
-   tqdm - progress meter for loops: for i in tqdm(range(1000)):
-   msgpack - binary serialization of JSON for example
-   cloudpickle - serialize to "pickle" lambda and classes
-   tornado - non-blocking network I/O
-   BeautifulSoup - extract data for web html pages


<a id="org122f963"></a>

# Microsoft nni AutoML framework (stupid shut)

-   <https://github.com/microsoft/nni>
-   <https://github.com/microsoft/nni/blob/master/docs/en_US/FeatureEngineering/Overview.md>


<a id="org56b2b21"></a>

# help


<a id="org654558f"></a>

## build-in help

1.  help(L.append) - docstr and many things
2.  dir() or dir(object) - list of all the globals and locals.
3.  locals() variables, and their values (called inside method)
4.  globals() method returns all the global variables, and their values, in a dictionary


<a id="org7ba2b65"></a>

# IDE

By default, Python source files are treated as encoded in UTF-8 to change it:

    #!/usr/bin/env python3
    # - '*' - coding: cp1252 -*-

<https://en.wikipedia.org/wiki/Comparison_of_integrated_development_environments#Python>


<a id="org5576c7e"></a>

## EPL

py.exe or python.exe file [arg]

-   Exit - Control-D on Unix, Control-Z on Windows.  - quit();
-   blank line; this is used to end a multi-line command.


<a id="org923ec53"></a>

## PyDev is a Python IDE for Eclipse

-   Cltr+Space
-   F3 go to definition   Alt+Arrow < >
-   Shift+Enter - next line
-   Ctrl+1 assign paramenters to field, create class constructor
-   Ctrl+2/R  - rename varible
-   Alt+Shift+R rename verible
-   Alt+Shift+A Start/Stop Rectangular editing
-   Ctrl+F9 run test
-   Ctrl+F11 rerun last launch
-   Ctrl+Alt+Down/Up duplicate line
-   Alt+Shift+L Extract local varible
-   Alt+Shift+R Extract method

Firest

1.  Create Project
2.  Create new Source Folder - "src" <http://www.pydev.org/manual_101_project_conf2.html>


<a id="org7cb9114"></a>

### features

-   Django integration
-   Code completion
-   Code completion with auto import
-   Type hinting
-   Code analysis
-   Go to definition
-   Refactoring
-   Debugger
-   Remote debugger
-   Find Referrers in Debugger
-   Tokens browser
-   Interactive console
-   Unittest integration
-   Code coverage
-   PyLint integration
-   Find References (Ctrl+Shift+G)


<a id="org7e5c1b7"></a>

## Emacs

M-~	menu


<a id="org53422e2"></a>

### python in org mode

<https://stackoverflow.com/questions/18598870/emacs-org-mode-executing-simple-python-code>

C-c C-c - to activate

    1+1

    print(1+1)

.emacs configuration:

    ;; enable python for in-buffer evaluation
    (org-babel-do-load-languages
     'org-babel-load-languages
     '((python . t)))
    
    ;; all python code be safe
    (defun my-org-confirm-babel-evaluate (lang body)
    (not (string= lang "python")))
    (setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)
    
    ;; required
    (setq shell-command-switch "-ic")


<a id="org7edeb05"></a>

### Emacs

<https://habr.com/ru/post/303600/>

-   <https://crafting.be/2015/06/emacs-python-django-dev/>

.emacs.d/lisp

-   **Company** is a text completion framework for Emacs <http://company-mode.github.io/>
-   **Jedi** Python auto-completion package <http://tkf.github.io/emacs-jedi/latest/>
-   **Elpy** Emacs Python Development Environment <https://github.com/jorgenschaefer/elpy>


<a id="org97364c4"></a>

## PyCharm


<a id="orga364ce4"></a>

### installation:

-   Other settings -> settings for new project -> Tools -> Python integrated tools -> docstrings - reStructuredText
-   Ctrl+Alt+S -> keymap - Emacs

navigate

-   Ctrl+Alt+S -> keymap - up -> Ctrl+k
-   Ctrl+Alt+S -> keymap - left -> Ctrl+l
-   Ctrl+Alt+S -> keymap - move catet to previous word -> Alt+l

other:

-   Ctrl+Alt+S -> keymap - Error Description -> add key Alt+Z
-   Ctrl+Alt+S -> keymap - Navigate; Back -> add key Ctrl+\\
-   Ctrl+Alt+S -> keymap - Select next tab -> Alt+E
-   Ctrl+Alt+S -> keymap - Select previous tab -> Alt+A
-   Ctrl+Alt+S -> keymap - Close tab -> Ctrl+Alt+w
-   Ctrl+Alt+S -> keymap - Backspace -> Ctrl+h
-   Ctrl+Alt+S -> keymap - Delete to word start -> Alt+h
-   Ctrl+Alt+S -> keymap - run/ -> Ctrl+C Ctrl+C
-   Ctrl+Alt+S -> keymap - back (Navigate) -> Alt+,

Disable cursor blinking: Ctrl+Alt+s -> Editor, General, Appearance


<a id="orga3ec49d"></a>

### keys

-   Alt+\\ - main menu
-   Alt+Shift+F10 - run
-   Alt+Shift+F8 - debug

-   Ctrl+Shift+U		to upper case
-   Ctrl+.		fold/unfold
-   Ctrl+q		get documentation
-   Ctrl+Alt+q		auto-indent lines
-   Ctrl+z/v		scroll
-   Alt+left/right	switch tabs
-   Ctrl+x k		close tab
-   Ctrl+x \`		go to next error
-   Alt+.		go to declaration
-   Ctr+Shift+'		maximize bottom console

**emacs keymap**

-   Alt+Shift+F10 run
-   Alt+; - comment text
-   leftAlt+ arrows - tabs switch
-   leftAlt+Enter - at yello - variants to solve
-   Ctrl+Alt+L - Reformat code
-   Alt+Enter - at error - fix error menu
-   F10 - menu
-   Esc+Esc - focus Editor
-   F12 - focus last tool window(run)
-   Shift+Esc - hide low "Run"
-   Ctrl+ +/- - unfold/fold
-   Ctrl+m - Enter

**navigate** (Goto by reference actions)

-   Ctrl+Alt+g, Alt+. - navigate to definition
-   Alt+, - Navigate; Back (my)

**Windows**

-   Alt+1 - project navigation
-   Alt+2 - bookmars and debug points
-   Alt+4 - console
-   Alt+5 - debug
-   F11 - create
-   Ctrl-Shift+F8 - debug points
-   Shift-F11 bookmars
-   shift+Esc - hide current window
-   switch to main window - shift+Esc or F4 or Alt+current window or double Alt+any
-   C-x k - close current tab

**not emacs**

-   Ctrl+/ - comment text
-   Ctrl+b - navigate to definition


<a id="orga31c9f6"></a>

### mirrored environment in remote Docker

see [69.3](#org3f0e7dd) and <git>

remote:

-   mkdir proj-ds.git
-   cd proj-ds.git
-   git init &#x2013;bare
-   cd ..
-   git clone &#x2013;local proj-ds.git
-   cd proj-ds
-   touch .gitignore
-   git commit -m "init"
-   git push

host:

-   sudo -u pych bash
-   git clone remotehost:/root/proj-ds.git /home/pych/PycharmProjects/proj-ds
-   Start PyCharm and configure venv in /home/pych/PycharmProjects/proj-ds
    -   new project
    -   virtualenv
    -   venv/.gitignore: # \*
    -   venv -> Git -> Add
    -   add Dockerfile:
        -   FROM python:3.11 (as in venv)
        -   WORKDIR /usr/src/app
        -   COPY requirements.txt ./
    -   add requirements.txt: fastapi==0.111.0 parquet-tools==0.2.16 parquet==1.3.1 scikit-learn==1.4.2 pandas==2.2.2
    -   commit
    -   git push

remote:

-   cd proj-ds
-   git pull
-   docker build -t ds .
-   docker run -v /root/proj-ds:/opt -it ds bash
-   cd /opt
-   see from 2) [69.3](#org3f0e7dd)
-   &#x2026;
-   source *opt*.venv/bin/activate
-   *opt*.venv/bin/python -m pip install &#x2013;prefix=/opt/.venv &#x2013;no-cache-dir -r /opt/requirements.txt
-   exit
-   git add .
-   git commit -m "install req" ; git push

host:

-   add lines to Dockerfile:
-   COPY main.py ./
-   \# COPY venv /opt/venv
-   \# COPY .venv *opt*.venv
-   CMD . *opt*.venv/bin/activate && exec python main.py
-   CMD *opt*.venv/bin/python *opt*.venv/bin/jupyter notebook &#x2013;ip 0.0.0.0 &#x2013;no-browser &#x2013;allow-root
-   docker run -v /root/proj-ds:/opt -p 127.0.0.1:8888:8888 -t ds


<a id="org9a704d8"></a>

## ipython

-   Ctrl+e Ctrl+o - multiline code or if 1:
-   Ctrl+r - search in history


<a id="org38816c8"></a>

## geany

no autocompletion


<a id="org559c313"></a>

## BlueFish

Style - preferences->Editor settings->Fonts&Colours->Use system wide color settings

-   S-C-c	comment
-   C-space	completion

to execute file:

-   preferences->external commands->
    -   any name:  xfce4-terminal  -e 'bash -c "python %f; exec bash"'

cons

-   cannot execute


<a id="org54cc171"></a>

## Eric

-   echo "dev-python/PyQt5 network" >> /etc/portage/package.use/eric
-   emerge mercurial PyQt5 qscintilla-python dev-qt/qtcharts dev-qt/qtwebengine
-   cd /usr/local
-   hg clone <https://hg.die-offenbachs.homelinux.org/eric>
-   or <https://sourceforge.net/projects/eric-ide/files/latest/download>
-   select branch
    -   hg up eric7-maintenance (PyQt6)
    -   hg up eric6 (PyQt5)


<a id="org98fffa2"></a>

## Google Colab


<a id="org6ad3584"></a>

### TODO todo

Overfitting
Look-ahead Bias
P-hacking

<https://course.algotrading101.com/courses/pt101-practical-python-for-finance-trading-masterclass/lectures/27360454>

<https://colab.research.google.com/signup/pricing>


<a id="org2214be9"></a>

### initial config

-   Runtime -> View resources -> Change runtime tupe - GPU
-   Editor -> Code diagnostics -> Syntax and type checking
-   Miscellaneous -> Power level - ?


<a id="org701a790"></a>

### keys (checked):

-   Ctrl-a/e 	Move cursor to the beginning/end of the line
-   Ctrl-Alt-n/p Move cursor to the beginning of the line
-   Ctrl-d/h 	Delete next/previous character in line
-   Ctrl-k 	Delete text from cursor to end of line
-   Ctrl-space	auto completion
-   Ctrl+o	new line and stay at current
-   Ctrl+j	delete and of the line character and set cursor at the end
-   Ctrl+m m/y	convert (code to text)/(text to code)
-   Ctrl+z/y	undo/redo action

Docstring:

-   Ctrl + mouse over variable
-   Ctrl + space + mouse click

keys advanced (checked)

-   Ctrl+s		save notebook
-   Ctrl+m		activate the shortcuts
-   Ctrl+m h		get Keyboard preferences
-   Tab			Toggle code docstring help
-   Shift+Tab		Unindent current line
-   Ctrl+m n/p		next/preview cell (like arrows)
-   Ctrl+]		Collapse
-   Ctrl+'		toggle collapse
-   Ctrl+Shift+Enter	Run
-   Ctrl+Shift+S		select focused cell
-   Ctrl+m o		show hide output
-   Ctrl+m a/b		add cell above/below
-   ctrl+m+d	Delete cell
-   Ctrl+shift+alt+p	command palette


<a id="orga797f73"></a>

### keys in Internet (emacs IPython console)

Ctrl-C and Ctrl-V) for copying and pasting in a wide variety of programs and systems

-   Ctrl-a 	Move cursor to the beginning of the line
-   Ctrl-e 	Move cursor to the end of the line
-   Ctrl-b or the left arrow key 	Move cursor back one character
-   Ctrl-f or the right arrow key 	Move cursor forward one character

-   Backspace key 	Delete previous character in line
-   Ctrl-d 	Delete next character in line
-   Ctrl-k 	Cut text from cursor to end of line
-   Ctrl-u 	Cut text from beginning of line to cursor
-   Ctrl-y 	Yank (i.e. paste) text that was previously cut
-   Ctrl-t 	Transpose (i.e., switch) previous two characters

-   Ctrl-p (or the up arrow key) 	Access previous command in history
-   Ctrl-n (or the down arrow key) 	Access next command in history
-   Ctrl-r 	Reverse-search through command history

?

-   Ctrl-l 	Clear terminal screen
-   Ctrl-c 	Interrupt current Python command
-   Ctrl-d 	Exit IPython session


<a id="orga2286fd"></a>

### Google Colab Magics

set of system commands that can be seen as a mini extensive command language

-   line magics start with %, while the cell magics start with %%
-   %lsmagic - full list of available magics
-   %ldir
-   %%html

more <https://colab.research.google.com/notebooks/intro.ipynb>


<a id="orgbaa7d02"></a>

### install libraries and system commands

-   !pip install or !apt-get install
    -   !apt-get -qq install -y libfluidsynth1

-   !wget
-   !git clone <https://github.com/wxs/keras-mnist-tutorial.gi>
-   !ls /bin


<a id="orgdfa5cfc"></a>

### execute code from google drive

    # Run this cell to mount your Google Drive.
    from google.colab import drive
    drive.mount('/content/drive')
    
    !python3 "/content/drive/My Drive/Colab Notebooks/hello.py"


<a id="org61fd5af"></a>

### shell

    from IPython.display import JSON
    from google.colab import output
    from subprocess import getoutput
    import os
    
    def shell(command):
      if command.startswith('cd'):
          path = command.strip().split(maxsplit=1)[1]
          os.chdir(path)
          return JSON([''])
      return JSON([getoutput(command)])
    output.register_callback('shell', shell)

    #@title Colab Shell
    %%html
    <div id=term_demo></div>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery.terminal/js/jquery.terminal.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/jquery.terminal/css/jquery.terminal.min.css" rel="stylesheet"/>
    <script>
      $('#term_demo').terminal(async function(command) {
          if (command !== '') {
              try {
                  let res = await google.colab.kernel.invokeFunction('shell', [command])
                  let out = res.data['application/json'][0]
                  this.echo(new String(out))
              } catch(e) {
                  this.error(new String(e));
              }
          } else {
              this.echo('');
          }
      }, {
          greetings: 'Welcome to Colab Shell',
          name: 'colab_demo',
          height: 250,
          prompt: 'colab > '
      });


<a id="orgeeaf60a"></a>

### gcloud

-   gcloud info - current environment

import torch
print(torch.cuda.get<sub>device</sub><sub>name</sub>())

LD<sub>LIBRARY</sub><sub>PATH</sub>=/usr/lib64-nvidia watch -n 1 nvidia-smi

!gcloud auth login # Authorize gcloud to access the Cloud Platform with Google user credentials.

connect Google Colab to Google Cloud.

    !gcloud compute ssh --zone us-central1-a 'instance-name' -- -L 8888:localhost:8888


<a id="orge53cbe8"></a>

### gcloud ssh (require billing)

    bad: !gcloud config set account account@gmail

    !gcloud auth login
    !gcloud projects create vfdsgq2345 --enable-cloud-apis --name vfdsgq2345 --set-as-default

Create in progress for [<https://cloudresourcemanager.googleapis.com/v1/projects/vfdsgq2346>].
Enabling service [cloudapis.googleapis.com] on project [vfdsgq2346]&#x2026;
Operation "operations/acat.p2-872588642643-8ef11211-5181-47e3-bcd2-383690de7d91" finished successfully.
Updated property [core/project] to [vfdsgq2346].

    !gcloud config set project 1
    !gcloud compute ssh

gcloud compute ssh example-instance &#x2013;zone=us-central1-a &#x2013; -vvv -L 80:%INSTANCE%:80

!gcloud compute ssh 10.2.3.4:22 &#x2013;zone=us-central1-a &#x2013; -vvv -L 80:localhost:80


<a id="orgdecad0b"></a>

### api

-   <https://github.com/googlecolab>
-   <https://cloud.google.com/sdk/docs/install>
-   binary gcloud


<a id="org4fc61e0"></a>

### upload and download files

    from google.colab import files
    files.upload/download()


<a id="orgc7f7c0f"></a>

### connect ssh (restricted)

<https://medium.com/@ayaka_45434/connect-to-google-colab-using-ssh-bb342e0d0fd2>

at relay server:

-   $ ssh-keygen -t ed25519 -a 256
-   $ cat .ssh/id<sub>ed25519.pub</sub>

at colab:

    %%sh
    mkdir -p ~/.ssh
    echo '<SSH public key of PC>' >> ~/.ssh/authorized_keys
    apt update > /dev/null
    yes | unminimize > /dev/null
    apt install -qq -o=Dpkg::Use-Pty=0 openssh-server pwgen net-tools psmisc pciutils htop neofetch zsh nano byobu > /dev/null
    ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa > /dev/null
    echo ListenAddress 127.0.0.1 >> /etc/ssh/sshd_config
    mkdir -p /var/run/sshd
    /usr/sbin/sshd


<a id="org4dcef4f"></a>

### connect ssh (unrestricted)

at colab:

1.  !git clone <https://github.com/WassimBenzarti/colab-ssh> ; mv colab-ssh cs ; cd cs ; rm -r .git

!git clone &#x2013;depth=1 <https://github.com/openssh/openssh-portable> ; mv openssh-portable cs ; cd cs ; rm -r .git ; autoreconf && ./configure && make && make install ; mv /usr/local/sbin/sshd /usr/local/sbin/aav

%%shell
a=$(cat <<EOF
AcceptEnv LANG LC<sub>ALL</sub> LC<sub>COLLATE</sub> LC<sub>CTYPE</sub> LC<sub>MESSAGES</sub> LC<sub>MONETARY</sub> LC<sub>NUMERIC</sub> LC<sub>TIME</sub> LANGUAGE LC<sub>ADDRESS</sub> LC<sub>IDENTIFICATION</sub> LC<sub>MEASUREMENT</sub> LC<sub>NAME</sub> LC<sub>PAPER</sub> LC<sub>TELEPHONE</sub>
AcceptEnv COLORTERM

Port 9090
ListenAddress 127.0.0.1
AllowUsers u

PermitRootLogin no
PubkeyAuthentication yes
PasswordAuthentication no
PermitEmptyPasswords no
KbdInteractiveAuthentication no
EOF
)
echo "$a" > aav.conf ; useradd -m sshd ; ls

!mkdir *root*.ssh ; chmod  0700 *root*.ssh ; mv cs/ssh aavc ; ./cs/ssh-keygen -b 4096 -t rsa -f *root*.ssh/mykey<sub>rsa</sub> -q -N "" ; cat *root*.ssh/mykey<sub>rsa.pub</sub> > *root*.ssh/authorized<sub>keys</sub>

!exec /usr/local/sbin/aav -f aav.conf

!cat *root*.ssh/mykey<sub>rsa.pub</sub> > *root*.ssh/authorized<sub>keys</sub>

!./aavc -vvv -p 9090 localhost


<a id="org898f1b5"></a>

### Restrictions

disallowed from Colab runtimes:

-   file hosting, media serving, or other web service offerings not related to interactive compute with Colab
-   downloading torrents or engaging in peer-to-peer file-sharing
-   using a remote desktop or SSH
-   connecting to remote proxies
-   mining cryptocurrency
-   running denial-of-service attacks
-   password cracking
-   using multiple accounts to work around access or resource usage restrictions
-   creating deepfakes


<a id="orgb368fff"></a>

### cons

-   GPU/TPU usage is limited
-   Not the most powerful GPU/TPU setups available
-   Not the best de-bugging environment
-   It is hard to work with big data
-   Have to re-install extra dependencies every new runtime
-   Google drive: limited to 15 GB of free space with a Gmail id.
-   you’ll have to (re)install any additional libraries you want to use every time you (re)connect to a Google
    Colab notebook.

Alternatives:

-   Kaggle
-   Azure Notebooks
-   Amazon SageMaker
-   Paperspace Gradient
-   FloydHub


<a id="orgcaacb99"></a>

## Eclipse Theia (IDE)

<https://theia-ide.org/docs/>

based on  (TypeScript, HTML and CSS) - can run as desktop applications or in the browser.

-   consist of client (the UI) and a server

features:

-   Eclipse Theia and its extensions are node.js packages.
    -   Installation from Yarn package manager: <https://theia-ide.org/docs/composing_applications>
-   <https://smartface.io/> - IDE to develop native iOS/Android mobile applications with a single JavaScript/TypeScript codebase.
-   Monaco code editor of VS Code and makes strong use of the language server protocol (LSP)
-   can customize almost everything within Theia and even replace core features
    -   <https://eclipsesource.com/blogs/2019/11/21/how-to-create-develop-an-eclipse-theia-ide-extension/>
    -   injections <https://eclipsesource.com/blogs/2018/11/28/how-to-inversify-in-eclipse-theia/>
-   Active community and vendor-neutrality
-   Compatible with Visual Studio Code extensions
-   License GPLv2 with the classpath exception.


<a id="org9b82bc8"></a>

## Atom

-   Written: CoffeeScript, JavaScript, Less, HTML
-   MIT License
-   last release: 2022
-   fork: Pulsar


<a id="org1dde4dc"></a>

# Jupyter Notebook

<https://jupyter-notebook.readthedocs.io/en/stable/examples/Notebook/Importing> Notebooks.html
**.ipynb**

у каждой cell желательно обеспечить идемпотентность


<a id="org46fa707"></a>

## jupyter [ˈʤuːpɪtə] - акцентом на интерактивности производимых вычислений

-   <https://jupyter.org/>
-   Идея - не рисовать, а отбирать работающие правила
-   many languages <https://github.com/jupyter/jupyter/wiki/Jupyter-kernels>
-   Project Jupyter - nonprofit organization, interactive computing across dozens of programming languages.
    Free for all to use and released under the liberal terms of the modified BSD license
    -   Jupyter Notebook -web-based - .ipynb - Jupyter Notebook is MathJax-aware (subset of Tex and LaTeX.)
    -   Jupyter Hub
    -   Jupyter Lab - interfaces for all products under the Jupyter ecosystem, редактирование изображений, CSV,
        JSON, Markdown, PDF, Vega, Vega-Lite
    -   next-generation version of Jupyter Notebook
    -   Jupyter Console
    -   Qt Console

**kernels:** jupyter kernelspec list

    %run -n main.py  - import module


<a id="orgb762480"></a>

## install

    useradd --create-home --shell=/bin/bash jup
    sudo -u jup bash
    cd
    python3 -m pip install --upgrade pip --user
    python3 -m pip install notebook --user

    pip3 install nbconvert --user

Launch with:

    sudo -u jup bash ; cd
    cd; .local/bin/jupyter notebook --no-browser --IdentityProvider.token=''


<a id="org0312b4f"></a>

## convert **to htmp**

    ipython nbconvert /home/u2/tmp/Lecture_10_decision_trees.ipynb


<a id="org9ce064f"></a>

## Widgets


<a id="org0864268"></a>

### install

-   list <https://ipywidgets.readthedocs.io/en/stable/examples/Widget%20List.html>

run

-   pip install ipywidgets &#x2013;user
-   jupyter nbextension enable &#x2013;py widgetsnbextension


<a id="orgc181abf"></a>

### usage

    from ipywidgets import interact, interactive, fixed, interact_manual
    import ipywidgets as widgets
    
    date_w = widgets.DatePicker(
        description='Pick a Date',
        disabled=False
    )
    
    def f(x):
        return x
    
    interact(f, x=date_w) # x - name of f(x) parameter and *type of widget*
    interact(f, x=10); # int slider (abbrev)
    interact(f, x=True); # bool flag (abbrev)
    
    interact(h, p=5, q=fixed(20)); # q parameter is fixed


<a id="org7d6f94c"></a>

### widget abbreviation

-   **Checkbox:** True or False
-   **Text:** 'Hi there'
-   **IntSlider:** value or (min,max) or (min,max,step) if integers are passed
-   **FloatSlider:** value or (min,max) or (min,max,step) if floats are passed
-   **Dropdown:** ['orange','apple'] or \`[(‘one’, 1), (‘two’, 2)]


<a id="org6f47453"></a>

### widget return type

-   **widgets.DatePicker:** datetime.date


<a id="org41e25ef"></a>

### Styling

<https://ipywidgets.readthedocs.io/en/latest/examples/Widget%20Styling.html>

**Description**

-   style = {'description<sub>width</sub>': 'initial'}
-   IntSlider(description='A too long description', style=style)


<a id="org8a37ff9"></a>

## Hotkeys:

-   Enter - in cell
-   Escepe - exit cell
-   h - hotkeys
-   Ctrl+Enter/Shift+Enter - run
-   Tab - code completion
-   arrow up/down - above/below cell


<a id="org84478d8"></a>

## emacs (sucks)

org-mode may evaluate code blocks using a Jupyter kernel
<https://github.com/gregsexton/ob-ipython>

jupyter<sub>console</sub>, jupyter<sub>client</sub>


<a id="orgef94824"></a>

## in Docker

types <https://docs.jupyter.org/en/latest/install.html>

    pip install  notebook==7.2.0

jupyter<sub>core</sub>==5.7.2
inside:

    python .venv/bin/jupyter notebook --ip 0.0.0.0 --allow-root

outside:

    docker run -p 127.0.0.1:8888:8888 -it image

remote:

    ssh -L localhost:8888:localhost:8888


<a id="org3ef2be8"></a>

## other

-   <https://proglib.io/p/analysis-hacks/>


<a id="orgc5ba0ac"></a>

## lab


<a id="orgdc2250c"></a>

### in venv

python -m pip install &#x2013;prefix=/opt/venv &#x2013;isolated -v 'jupyterlab==4.2.1'

    FROM python:3.10
    CMD ["jupyter", "lab", "--allow-root", "--ip=0.0.0.0"]

to check installation:

    ipython3 -c 'import tokrch'

docker run -v /dev/shm/vit:/opt -p 8888:8888 -t pavl > /var/log/d1.log &


<a id="orgd2120ce"></a>

### Will not respect mounted venv:

    FROM python:3.10
    RUN pip install --no-cache-dir --upgrade pip && \
        pip install --no-cache-dir jupyterlab
    CMD ["jupyter", "lab", "--allow-root", "--ip=0.0.0.0"]

to check installation:

    ipython3 -c 'import torch'

docker run -p 8888:8888 -t pavl > /var/log/d1.log &


<a id="org082ee76"></a>

# USΕ CASES

measure time [30.3](#org2a82e75)


<a id="orgb2dbbd8"></a>

## NET


<a id="org3edd79c"></a>

### REST request

    import urllib.request
    import json
    
    
    API_KEY = 'f670813c14f672c1e197101fd767cbe675933d86'
    headers = {'User-agent': 'Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5',
               'Content-Type': 'application/json',
               'Accept': 'application/json',
               'Authorization': 'Token ' + API_KEY
    }
    
    data = '{ "query": "Виктор Иван", "count": 3 }'
    req = urllib.request.Request(url='https://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/fio',
                                 headers=headers, data=data.encode())
    with urllib.request.urlopen(req) as f:
        r = f.read().decode('utf-8')
        j = json.loads(r)
        print(j['suggestions'][0]["unrestricted_value"])
        print(j['suggestions'][0]["gender"])
        j2 = json.dumps(j, ensure_ascii=False, indent=4)
        print(j2)


<a id="org971241c"></a>

### email IMAP

    import configparser as cp
    import cx_Oracle
    import datetime
    import email
    import imaplib
    import logging
    import os
    import re
    import requests
    import shutil
    import smtplib
    import zipfile
    import sys
    
    from email.header import decode_header
    from email.mime.application import MIMEApplication
    from email.mime.multipart import MIMEMultipart
    from email.mime.text import MIMEText
    from email.utils import formatdate
    from os.path import basename
    from requests.auth import HTTPBasicAuth
    from sys import exit
    
    def decode_header_fix(subject_list: list) -> str:
        """ decode to string any header after decode_header"""
        sub_list = []
        for subject in subject_list:
            if subject and subject[1]:
                subject = (subject[0].decode(subject[1]))
            elif type(subject[0]) == bytes:
                subject = subject[0].decode('utf-8')
            else:
                subject = subject[0]
            sub_list.append(subject)
        return ''.join(sub_list)
    
    
    def send_mail(username, password, send_from, send_to, subject,
                  text, files=None, server="mx1.rnb.com"):
        assert isinstance(send_to, list)
    
        msg = MIMEMultipart()
        msg['From'] = send_from
        msg['To'] = COMMASPACE.join(send_to)
        msg['Date'] = formatdate(localtime=True)
        msg['Subject'] = subject
    
        msg.attach(MIMEText(text))
    
        for f in files or []:
            with open(f, "rb") as fil:
                part = MIMEApplication(
                    fil.read(),
                    Name=basename(f)
                )
            # After the file is closed
            part['Content-Disposition'] = 'attachment; filename="%s"' % basename(f)
            msg.attach(part)
    
        smtp = smtplib.SMTP(server)
        smtp.login(username, password)
        log.debug(u'Отправляю письмо на %s' % send_to)
        smtp.sendmail(send_from, send_to, msg.as_string())
        smtp.close()
    
    
    def save_attachment(conn: imaplib.IMAP4, emailid: str, outputdir: str, file_pattern: str):
        """ https://docs.python.org/3/library/imaplib.html
    
        :param conn: connection
        :param emailid:
        :param outputdir:
        :param file_pattern: regex pattern for file name of attachment
        :return:
        """
        try:
            ret, data = conn.fetch(emailid, "(BODY[])")
        except:
            "No new emails to read."
            conn.close_connection()
            exit()
        mail = email.message_from_bytes(data[0][1])
        # print('From:' + mail['From'])
        # print('To:' + mail['To'])
        # print('Date:' + mail['Date'])
        # subject_list = decode_header(mail['Subject'])
        # subject = decode_header_fix(subject_list) # must be: Updating client ICODE RNB_378026
        # print('Subject:' + subject)
        # print('Content:' + str(mail.get_payload()[0]))
    
        # process_out_reestr(mail)
    
        if mail.get_content_maintype() != 'multipart':
            return
        for part in mail.walk():
            if part.get_content_maintype() != 'multipart' and part.get('Content-Disposition') is not None:
                filename_list = decode_header(part.get_filename())  # (encoded_string, charset)
                filename = decode_header_fix(filename_list)
                if not re.search(file_pattern, filename):
                    continue
                # write attachment
                print("OKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK")
                with open('{}/{}'.format(outputdir, filename), 'wb') as f:
                    f.write(part.get_payload(decode=True))
    
    
    def download_email_attachments(server: str, user: str, password: str, outputdir: str,
                                   subject_contains: str, file_pattern: str, days_since=0) \
            -> bool or None:
        """
    
        :param server:
        :param user:
        :param password:
        :param outputdir:
        :param subject_contains:
        :param file_pattern:
        :param days_since:
        :return:
        """
        date = datetime.datetime.now() - datetime.timedelta(days=days_since)
        # https://docs.python.org/3/library/imaplib.html
        # https://tools.ietf.org/html/rfc3501#page-49
        # SUBJECT <string>
        #          Messages that contain the specified string in the envelope
        #          structure's SUBJECT field
        criteria = '(SENTSINCE "{}" SUBJECT "{}")'.format(date.strftime('%d-%b-%Y'),
                                                          subject_contains)
    
        try:
            m = imaplib.IMAP4_SSL(server)
            m.login(user, password)
            m.select()
            resp, items = m.search(None, criteria)
            if not items[0]:
                log.debug(u'Нет писем с реестрами в папке ВХОДЯЩИЕ')
                return False
            items = items[0].split()
            for emailid in items:
                save_attachment(m, emailid, outputdir, file_pattern)
                # TODO: change
                # m.store(emailid, '+FLAGS', '\\Seen')
                # m.copy(emailid, 'processed')
                # m.store(emailid, '+FLAGS', '\\Deleted')
            m.close()
            m.logout()
        except imaplib.IMAP4_SSL.error as e:
            print("LOGIN FAILED!!! ", e)
            sys.exit(1)
        return True
    
    
    if __name__ == '__main__':
        import tempfile
        c = config_load('autocred.conf')
        log = init_logger(logging.INFO, c['storage']['log_path'])  # required by all methods
        #
        # with tempfile.TemporaryDirectory() as tmp:
        #     print(tmp)
        #     res = download_email_attachments(server=c['imap']['host'],
        #                                      user=c['imap']['login'],
        #                                      password=c['imap']['password'],
        #                                      outputdir=tmp, subject_contains='Updating client ICODE RNB_',
        #                                      file_pattern=r'^client_identity_RNB_\d+\.zip\.enc$', days_since=1)
        #     extract_zip_files(tmp)
        #     for x in os.listdir(tmp):
        #         print(x)
    
        tmp = '/home/u2/Desktop/tmp/tmp2/'
        # res = download_email_attachments(server=c['imap_bistr']['host'],
        #                                  user=c['imap_bistr']['login'],
        #                                  password=c['imap_bistr']['password'],
        #                                  outputdir=tmp,
        #                                  subject_contains='Updating client ICODE',  # 'Updating client ICODE RNB_378026'
        #                                  file_pattern=r'^client_identity_RNB_\d+\.zip\.enc$', days_since=3)
    
        for filename in os.listdir(tmp):
            print(filename)
            decrypt_file(uri=c['api']['dec_uri'],
                         cert_thumbprint=c['api']['dec_cert_thumbprint'],
                         user=c['api']['user'],
                         passw=c['api']['pass'],
                         filename=os.path.join(tmp, filename))
        for x in os.listdir(tmp):
            print(x)


<a id="orgba54433"></a>

### email DKIM

    ('DKIM-Signature', 'v=1; a=rsa-sha256; q=dns/txt; c=simple/simple; d=bystrobank.ru\n\t; s=dkim;
    h=Message-Id:Content-Type:MIME-Version:From:Date:Subject:To:Sender:\n\tReply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:\n\tResent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:\n\tIn-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:\n\tList-Post:List-Owner:List-Archive;\n\tbh=dDimDD8KIdEx1QkqygEiFeQfyTIgIztxgQu6BtkzQ5o=;
    b=hZGPWUFnQ2gGNV4UJ7MyaPJYFL\n\tbB9Csmpg/ukcwQuWBI1NtvILUoviMff4ACkNnhPgD7OV4aGtR5UBOy81tdvY5cQnBFv9Yku9yAf8R\n\t1BV83crKYnhU4GRtw7wD4W64zpZRhX3KZxG8SWissmh+vNEMBlmYXN9FsuLyVKaBbks0DYnR3HA9Q\n\tFV4d8CMC8wLrdmBi/MV0x75Q9GhDhGMc8MPNAleuWabHOT8Bmf7FLHQERHBRYm78i4wDWEFFNv5Ox\n\tuqMEm5iJQeYRnoHkrm5KEEP4DYohb8GgJkfIIZs4dO2oMjJif/2A1JLnmq64KPmoAE3s8lO2Bo2Zq\n\t68tnSdFA==;')

    pip3 install dkimpy --user

    import dkim
    # verify email
        try:
            res = dkim.verify(data[0][1])
        except:
            log.error(u'Invalid signature')
            return
        if not res:
            log.error(u'Invalid signature')
            return
        print('[' + os.path.basename(__file__) + '] isDkimValid = ' + str(res))
    
        mail = email.message_from_bytes(data[0][1])
        # verify sender domain
        dkim_sig = decode_header(mail['DKIM-Signature'])
        dkim_sig = decode_header_fix(dkim_sig)
        if not re.search(r" d=bystrobank\.ru", dkim_sig):
            return


<a id="orgbf18506"></a>

### urllib SOCKS

pip install requests[socks]

    import urllib
    import socket
    import socks
    socks.set_default_proxy(socks.SOCKS5, "127.0.0.1",port=8888)
    save = socket.socket
    socket.socket = socks.socksocket # replace socket with socks
    req = urllib.request.Request(url='http://httpbin.org/ip')
    urllib.request.urlopen(req).read() # default request


<a id="org2bb59e5"></a>

## LISTS


<a id="orgcf5971a"></a>

### all has one value

    list.count('value') == len(list)


<a id="org574dfa8"></a>

### 2D list to 1D dict or list

    [j for sub in [[1,2,3],[1,2],[1,4,5,6,7]] for j in sub]

    {j for sub in [[1,2,3],[1,2],[1,4,5,6,7]] for j in sub}


<a id="org2f4e049"></a>

### list to string

    ' '.join(w for w in a)


<a id="orgda0ca6e"></a>

### replace one with two

    l[pos:pos+1] = ('a', 'b')


<a id="org5e4afa7"></a>

### remove elements

**filter**

    self.contours = list(filter(lambda a: a is not None, self.contours))

**new list**

    a = [item for item in a if ...]

**iterate over copy**

    for i, x in enumerate(lis[:]):
      del lis[i]


<a id="org8918579"></a>

### average

    [np.average((x[0], x[1])) for x in zip([1,2,3],[1,2,3])]


<a id="org6e88582"></a>

### [1, -2, 3, -4, 5]

    >>> [(x % 2 -0.5)*2*x for x in range(1,10)]
    [1.0, -2.0, 3.0, -4.0, 5.0, -6.0, 7.0, -8.0, 9.0]


<a id="orgf728248"></a>

### ZIP массивов с разной длинной

    import itertools
    z= itertools.zip_longest(arr1,arr2,arr3)
    flat_list=[]
    for x in z:
        subflat=[]
        for subl in x:
            if subl != None:
                subflat.append(subl[0])
                subflat.append(subl[1])
                subflat.append(subl[1])
            else:
                subflat.append('')
                subflat.append('')
        flat_list.append(subflat)


<a id="org799acf6"></a>

### Shuffle two lists

    z = list(zip(self.x, self.y))
    z = random.shuffle(z)
    self.x, self.y = zip(*z)


<a id="org7ca6307"></a>

### list of dictionaries

1.  search and encode

        def one_h_str_col(dicts: list, column: str):
            c = set([x[column] for x in dicts])  # unique
            c = list(c)  # .index
            nb_classes = len(c)
            targets = np.arange(nb_classes)
            one_hot_targets = np.eye(nb_classes)[targets]
            for i, x in enumerate(dicts):
                x[column] = list(one_hot_targets[c.index(x[column])])
            return dicts
        
        
        def one_h_date_col(dicts: list, column: str):
            for i, x in enumerate(dicts):
                d: date = x[column]
                x[column] = d.year
            return dicts
        
        
        def one_h(dicts: list):
            for col in dicts[0].keys():
                lst = set([x[col] for x in dicts])
                if all(isinstance(x, (str, bytes)) for x in lst):
                    dicts = one_h_str_col(dicts, col)
                if all(isinstance(x, date) for x in lst):
                    dicts = one_h_date_col(dicts, col)
            return dicts
    
        dicts = [
        { "name": "Mark", "age": 5 },
        { "name": "Tom", "age": 10 },
        { "name": "Pam", "age": 7 },
        ]
        
        c = set([x['name'] for x in dicts]) # unique
        c = list(c)  # .index
        
        for i, x in enumerate(dicts):
          x['name'] = c.index(x)

2.  separate labels from matrix

        matrix = [list(x.values()) for x in dicts]
        labels = dicts[0].keys()


<a id="org3b0ea71"></a>

### closest in list

    alph = [1,2,5,7]
    source = [1,2,3,6] # 3, 6 replace
    target = source[:]
    for i, s in enumerate(source
      if s not in alph:
        distance = [(abs(x-s), x) for x in alph
        res = min(distance, key=lambda x: x[0])
        target[i] = res[1]


<a id="orgce511c4"></a>

### TIMΕ SEQUENCE

**smooth**

    mean_ver1 = pandas.Series(mean_ver1).rolling(window=5).mean()


<a id="org0bfde51"></a>

### split list in chunks

    our_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    chunk_size = 3
    chunked_list = [our_list[i:i+chunk_size] for i in range(0, len(our_list), chunk_size)]
    print(chunked_list)


<a id="orgc1fca5b"></a>

## FILES

-   os.path.join('/home','user') - /home/user
-   os.listdir('/home/user') -> list of file<sub>names</sub> - files and directories
-   os.path.isdir/isfile() -> True False
-   os.walk() - subderictories = [(folder<sub>path</sub>, list<sub>folders</sub>, list<sub>files</sub>), &#x2026; ]
-   extension = os.path.splitext(filename)[1][1:]

Extract from subolders:
find . -mindepth 2 -type f -print -exec mv {} . \\;

-   list files and directories deepth=1: os.listdir()->list
-   list only files deepth=1 os.listdir() AND os.path.isfile()


<a id="org06ea0f5"></a>

### locking

    try:
        # Posix based file locking (Linux, Ubuntu, MacOS, etc.)
        #   Only allows locking on writable files, might cause
        #   strange results for reading.
        import fcntl, os
        def lock_file(f):
            if f.writable(): fcntl.lockf(f, fcntl.LOCK_EX)
        def unlock_file(f):
            if f.writable(): fcntl.lockf(f, fcntl.LOCK_UN)
    except ModuleNotFoundError:
        # Windows file locking
        import msvcrt, os
        def file_size(f):
            return os.path.getsize( os.path.realpath(f.name) )
        def lock_file(f):
            msvcrt.locking(f.fileno(), msvcrt.LK_RLCK, file_size(f))
        def unlock_file(f):
            msvcrt.locking(f.fileno(), msvcrt.LK_UNLCK, file_size(f))
    
    # # Class for ensuring that all file operations are atomic, treat
    # # initialization like a standard call to 'open' that happens to be atomic.
    # # This file opener *must* be used in a "with" block.
    # class AtomicOpen:
    #     # Open the file with arguments provided by user. Then acquire
    #     # a lock on that file object (WARNING: Advisory locking).
    #     def __init__(self, path, *args, **kwargs):
    #         # Open the file and acquire a lock on the file before operating
    #         self.file = open(path,*args, **kwargs)
    #         # Lock the opened file
    #         lock_file(self.file)
    
    #     # Return the opened file object (knowing a lock has been obtained).
    #     def __enter__(self, *args, **kwargs): return self.file
    
    #     # Unlock the file and close the file object.
    #     def __exit__(self, exc_type=None, exc_value=None, traceback=None):
    #         # Flush to make sure all buffered contents are written to file.
    #         self.file.flush()
    #         os.fsync(self.file.fileno())
    #         # Release the lock on the file.
    #         unlock_file(self.file)
    #         self.file.close()
    #         # Handle exceptions that may have come up during execution, by
    #         # default any exceptions are raised to the user.
    #         if (exc_type != None): return False
    #         else:                  return True
    
    f = open("/tmp/a.pl", "r")
    lock_file(f)
    strings = f.read()
    f2 = open("/tmp/a.pl", 'r+') # open to erase
    f2.truncate(0) # need '0' when using r+
    unlock_file(f)
    f.close()


<a id="orgfae75d9"></a>

### Read JSON

    import codecs
    fileObj =codecs.open("provodki_1000.json", encoding='utf-8', mode='r')
    text = fileObj.read()
    fileObj.close()
    data = json.loads(text)
    
    # or
    import json
    with open('test_data.txt', 'r') as myfile:
        data=myfile.read()
    obj = json.loads(data)
    
    data = json.loads(text)


<a id="orgd7e0bbb"></a>

### CSV

-   <https://docs.python.org/3.6/library/csv.html>

1.  array to CSV file for Excell

        wtr = csv.writer(open ('out.csv', 'w'), delimiter=';', lineterminator='\n')
        for x in arr :
            wtr.writerow(x)

2.  read CSV and write

    -   <https://docs.python.org/3.6/library/collections.html#collections.OrderedDict>
    
        import csv
        
        p = '/home/u2/Downloads/BANE_191211_191223.csv'
        
        with open(p, 'r') as f:
            reader = csv.reader(f, delimiter=';', quoting=csv.QUOTE_NONE)
            for row in reader:


<a id="org0474d8f"></a>

### read file

Whole:

    import codecs
    fileObj =codecs.open("provodki_1000.json", encoding='utf-8', mode='r')
    text = fileObj.read()
    fileObj.close()

Line by line:

    with open(fname) as f:    content = f.readline()

go to the begining of the file

    file.seek(0)

read whole text file:

    with open(fname) as f:    content = f.readlines()
    with open(fname) as f: temp = f.read().splitlines()


<a id="orgc6436a4"></a>

### Export to Excell

<https://docs.python.org/3.6/library/csv.html>

    import csv
    wtr = csv.writer(open('out.csv', 'w'), delimiter=';', lineterminator='\n')
    wtr.writerows(flat_list)


<a id="org0d6b171"></a>

### NameError: name 'A' is not defined

    try:
        file.close()
    except NameError:


<a id="org0d68174"></a>

### rename files (list directory)

    import os
    from shutil import copyfile
    
    sd = '/mnt/hit4/hit4user/kaggle/abstraction-and-reasoning-challenge/training/'
    
    td = '/mnt/hit4/hit4user/kaggle/abc/training/'
    dirFiles = os.listdir(sd)
    dirFiles.sort(key=lambda f: int(f[:-5], base=16))
    for i, x in enumerate(dirFiles):
        src = os.path.join(sd,x)
        dst = os.path.join(td,str(i))
        copyfile(src, dst)


<a id="org256f2ca"></a>

### current directory

    import sys, os
    os.path.abspath(sys.argv[0])


<a id="org22378b4"></a>

## STRINGS


<a id="org03dbd97"></a>

### String comparision

<https://stackabuse.com/comparing-strings-using-python/>

-   == compares two variables based on their actual value
-   **is** operator compares two variables based on the object id (When the variables on either side of an
    operator point at the exact same object)

Rule: **use == when comparing immutable types (like ints) and is when comparing objects.**

-   a.lower() == b.lower()

1.  difflib.SequenceMatcher - gestalt pattern matching

        from difflib import SequenceMatcher
        m = SequenceMatcher(None, "NEW YORK METS", "NEW YORK MEATS")
        m.ratio() ⇒ 0.962962962963
        # disadvantage:
        fuzz.ratio("YANKEES", "NEW YORK YANKEES") ⇒ 60 # same team
        fuzz.ratio("NEW YORK METS", "NEW YORK YANKEES") ⇒ 75 # different teams
        
        # fix: best partial:
        from difflib import SequenceMatcher
        
        def a(s1,s2):
            if len(s1) <= len(s2):
                shorter = s1
                longer = s2
            else:
                shorter = s2
                longer = s1
        
            m = SequenceMatcher(None, shorter, longer)
            blocks = m.get_matching_blocks()
            scores = []
            for block in blocks:
                long_start = block[1] - block[0] if (block[1] - block[0]) > 0 else 0
                long_end = long_start + len(shorter)
                long_substr = longer[long_start:long_end]
        
                m2 = SequenceMatcher(None, shorter, long_substr)
                r = m2.ratio()
                if r > .995:
                    return 100
                else:
                    scores.append(r)
        
            return int(round(100 * max(scores)))
        
        s1="MEATS"
        s2="NEW YORK MEATS"
        
        
        print(a("asd", "123asd")) # 100
        print(a("asd", "asd123")) # 100

2.  <https://en.wikipedia.org/wiki/Levenshtein_distance>

        def levenshtein(s: str, t: str) -> int:
            """
        
            :param s:
            :param t:
            :return: 0 - len(s)
            """
            if s == "":
                return len(t)
            if t == "":
                return len(s)
            cost = 0 if s[-1] == t[-1] else 1
        
            i1 = (s[:-1], t)
            if not i1 in memo:
                memo[i1] = levenshtein(*i1)
            i2 = (s, t[:-1])
            if not i2 in memo:
                memo[i2] = levenshtein(*i2)
            i3 = (s[:-1], t[:-1])
            if not i3 in memo:
                memo[i3] = levenshtein(*i3)
            res = min([memo[i1] + 1, memo[i2] + 1, memo[i3] + cost])
        
            return res

3.  hamming distance

        import hashlib
        
        def hamming_distance(chaine1, chaine2):
            return sum(c1 != c2 for c1, c2 in zip(chaine1, chaine2))
        
        def hamming_distance2(chaine1, chaine2):
            return len(list(filter(lambda x : ord(x[0])^ord(x[1]), zip(chaine1, chaine2))))
        print(hamming_distance("chaine1", "chaine2"))
        
        print(hamming_distance2("chaine1", "chaine2"))


<a id="org82e36d2"></a>

### Remove whitespaces

    line = " ".join(line.split()) # resplit


<a id="orgd46a76e"></a>

### Unicode

-   '\u2116'.encode("unicode<sub>escape</sub>")
    -   b'\\\u2116'
-   print('№'.encode("unicode<sub>escape</sub>"))
    -   b'\\\u2116'
-   print('\u2116'.encode("utf-8")) # sometimes do wrong
    -   b'\xe2\x84\x96'
-   print(b'\xe2\x84\x96'.decode('utf-8'))
    -   №
-   print('\u2116'.encode("utf-8").decode('utf-8'))
    -   №

1.  terms

    -   **code points**, first two characters are always "U+", hexadecimal.  At least 4 hexadecimal digits are shown,
        prepended with leading zeros as needed. ex: U+00F7
    -   BOM -  magic number at the start of a text
        -   UTF-8 byte sequence EF BB BF, permits the BOM in UTF-8, but does not require or recommend its use.
        -   Not using a BOM allows text to be backwards-compatible with software designed for extended ASCII.
        -   In UTF-16, a BOM (U+FEFF), byte sequence FE FF
    -   **UTF-8 Encoding** or **Hex UTF-8** - hex representation of encoded 1-4 bytes.

2.  Encoding formats: UTF-8, UTF-16, GB18030, UTF-32

    utf-8
    
    -   ASCII-compatible
    -   1-4 bytes for each code point
    
    UTF-16
    
    -   ASCII-compatible
    
    GB18030

3.  utf-8

    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-right" />
    
    <col  class="org-right" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-left">First code point</th>
    <th scope="col" class="org-left">Last code point</th>
    <th scope="col" class="org-right">Byte 1</th>
    <th scope="col" class="org-right">Byte 2</th>
    <th scope="col" class="org-left">Byte 3</th>
    <th scope="col" class="org-left">Byte 4</th>
    </tr>
    </thead>
    
    <tbody>
    <tr>
    <td class="org-left">U+0000</td>
    <td class="org-left">U+007F</td>
    <td class="org-right">0xxxxxxx</td>
    <td class="org-right">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    
    <tr>
    <td class="org-left">U+0080</td>
    <td class="org-left">U+07FF</td>
    <td class="org-right">110xxxxx</td>
    <td class="org-right">10xxxxxx</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    
    <tr>
    <td class="org-left">U+0800</td>
    <td class="org-left">U+FFFF</td>
    <td class="org-right">1110xxxx</td>
    <td class="org-right">10xxxxxx</td>
    <td class="org-left">10xxxxxx</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    
    <tr>
    <td class="org-left">U+10000</td>
    <td class="org-left">U+10FFFF</td>
    <td class="org-right">11110xxx</td>
    <td class="org-right">10xxxxxx</td>
    <td class="org-left">10xxxxxx</td>
    <td class="org-left">10xxxxxx</td>
    </tr>
    </tbody>
    </table>


<a id="orgbb6f909"></a>

### To find all the repeating substring in a given string

<https://stackoverflow.com/questions/41077268/python-find-repeated-substring-in-string>

You can do it by repeating the substring a certain number of times and testing if it is equal to the original string.

    def levenshtein(s: str, t: str) -> int:
        """
    
        :param s:
        :param t:
        :return: 0 - len(s)
        """
        if s == "":
            return len(t)
        if t == "":
            return len(s)
        cost = 0 if s[-1] == t[-1] else 1
    
        i1 = (s[:-1], t)
        if not i1 in memo:
            memo[i1] = levenshtein(*i1)
        i2 = (s, t[:-1])
        if not i2 in memo:
            memo[i2] = levenshtein(*i2)
        i3 = (s[:-1], t[:-1])
        if not i3 in memo:
            memo[i3] = levenshtein(*i3)
        res = min([memo[i1] + 1, memo[i2] + 1, memo[i3] + cost])
    
        return res
    
    
    c = '03105591400310559140031055914003105591400310559140031055914003105591400310559140'
    c = '0310559140031055914031055914003105591400310591400310559140031055910030559140'
    a=[]
    for j in range(10):
        for i in range(7):
            if (i*10+10+j) <= len(c):
                a.append(c[i*10+j:i*10+10+j])
    v = {x: a.count(x) for x in a if a.count(x) >2}
    #for k in v.keys():
    #    print(k, levenshtein(k*8,c)
    re = {k: levenshtein(k*8,c) for k in v.keys()}
    print(sorted(re, key=re.__getitem__)[0]) # asc
    0310559140 4
    3105591400 6
    1055914003 8
    0559140031 10
    5591400310 12
    5914003105 14
    9140031055 12
    1400310559 10
    4003105591 8
    0031055914 6
    '3105591400310559140031055914003105591400310559140031055914003105591400310559140'
    3105591400 1
    1055914003 3
    0559140031 5
    5591400310 7
    5914003105 9
    9140031055 9
    1400310559 7
    4003105591 5
    0031055914 3
    0310559140 1 - THIS


<a id="org6f04355"></a>

### first substring

-   str.find
-   by regex:

    m = re.search("[0-9]*")
      if m:
        num = d[m.start():m.end()]


<a id="orgc4ebb47"></a>

## DICT

**add**

    d1.update(d2) # d1 = d1+d2

**find max value**

    import operator
    max(d1.items(), key=operator.itemgetter(1))[0]

**for**

-   for key in dict:
-   for key, value in dict.items():

**sorted dict**

    abb_sel_diff_middle[wind] = sum/len(abb_sel_diff[wind])
    c = sorted(abb_sel_diff_middle.items(), key=lambda kv: kv[1], reverse=True) #dsc
    numbers = {'first': 2, 'second': 1, 'third': 3, 'Fourth': 4}
    sorted(numbers, key=numbers.__getitem__)
    >>['second', 'first', 'third', 'Fourth']

**merge two dicts**

    z={**x, **y}


<a id="org125a6b2"></a>

### del

**loop with clone**

    for k,v in list(d.items()):
      if v is bad:
         del d[k]
    # or
    {k,v for k,v in list(d.items()) if v is not bad}

**filter**

    self.contours = list(filter(lambda a: a is not None, self.contours))


<a id="org241c108"></a>

## argparse: command line arguments


<a id="org92786f0"></a>

### terms

-   positional arguments - arguments without options (main.py input<sub>file.txt</sub>)
-   options that accept values (&#x2013;file a.txt)
-   on/off flags - options without any vaues (&#x2013;overwrite)


<a id="org1224caa"></a>

### usage

    import sys
    >>> print(sys.argv)

or

    import argparse
    
    
    
    def main(args):
        args.batch_size
    
    if __name__ == '__main__':
    parser = argparse.ArgumentParser()
        parser.add_argument("--data_dir", help="data directory", default='./data')
        parser.add_argument("--default_settings", help="use default settings", type=bool, default=True)
        parser.add_argument("--combine_train_val", help="combine the training and validation sets for testing", type=bool,
                            default=False)
        main(parser.parse_args())


<a id="org30bf8a6"></a>

### optional positional argument

parser.add<sub>argument</sub>('bar', nargs='?', default='d')


<a id="orgf060ec0"></a>

## way to terminate

sys.exit()


<a id="orga37bedf"></a>

## JSON

may be array or object

-   замана " на  \\"
-   замена \\ на


<a id="org4775d52"></a>

## NN EQUAL QUANTITY FROM SAMPLES

        lim = max(count.values())*2 # limit for all groups
        print(count.values())
        print('max', max)
    
        for _, v in count.items(): # v - quantity
            c = 0 # current quantity
            for _ in range(v):  # i - v-1
                r = round(lim / v) #
                if c < lim + r:
                    diff = 0
                    if (c + r) > lim:
                        diff = c + r - lim
                    #create: r - diff
                    c += r - diff # may be removed
            print(c)
    
    # Or in class -------------
    import math
    
    class Counter:
        def __init__(self, limit):  # , multiplyer):
            self.lim: int = limit  # int(max(amounts) * multiplyer)
            print("Counter limit:", self.lim)
    
        def new_count(self, one_amount):
            self.c: int = 0  # done counter
            self.r: int = math.ceil(self.lim / one_amount)  # multiplyer
            # x + y = one_amount
            # x* r + y = lim
            # y = one_amount - x  # without duplicates
            # x*r + one_amount - x = lim  # with duplicates
            # x*(r - 1) = lim - one_amount
            # x = (lim - one_amount) / (r - 1)
            if self.r == 1:
                self.wd = self.lim
            else:
                self.wd = (self.lim - one_amount) / (self.r - 1)    # take duplicates
                self.wd = self.wd * self.r
    
        def how_many_now(self) -> int:
            """ called one_amount times
    	:return how many times repeat this sample to equal this one_amount to others
    	"""
            diff: int = 0
            if self.c > self.wd:
                r: int = 1
            else:
                r: int = self.r
            if (self.c + r) > self.lim:
                diff = self.c + r - self.lim  # last return
    
            self.c += r - diff  # update counter
            return int(r - diff)
    
    counts = [20,30,10,7,100]
    multiplyer = 2
    counter = Counter(counts, multiplyer)
    for v in counts:  # v - quantity
        counter.new_count(v)
        c = 0
        for _ in range(v):  # i - v-1 # one item
            c += counter.how_many_now()
        print(c)


<a id="org68c6b8c"></a>

## most common ellement

    def most_common(lst):
        return max(set(lst), key=lst.count)
    
    mc = most_common([round(a, 1) for a in degrees if abs(a) != 0])
    filtered_degrees = []
    for a in degrees:
        if round(a, 1) == mc:
           filtered_degrees.append(a)
    med_degree = float(np.median(filtered_degrees))
    
    
    # max char
    s3 = 'BEBBBB'
    s3 = {x: s3.count(x) for x in s3}
    mc = sorted(s3.values())[-1]
    s3 = [key for key, value in s3.items() if value == mc][0]  # most common


<a id="org382a69f"></a>

## print numpers

    n=123123123412
    print(f"{n:,}")

>>> 123,123,123,412


<a id="org2e6517b"></a>

## SCALE

    # to range 0 1
    def scaler_simple(data: np.array) -> np.array:
        """ in range (0,1)
    
        :param data: one dimensions
        :return:(0,1)
        """
        data_min = np.nanmin(data)
        data_max = np.nanmax(data)
        data = (data - data_min) / (data_max - data_min)
        return data
    
    # -(0 - 5) / 5
    # to range -1 1
    def scaler_simple(data: np.array) -> np.array:
        """ in range (0,1)
    
        :param data: one dimensions
        :return:(0,1)
        """
        data_min = np.nanmin(data)
        data_max = np.nanmax(data)
        data =(data_max/2 - data) / (data_max - data_min) / 2
        return data
    
    # (0,1) to (-1,1)
    data = (0.5 - data) / 0.5
    # (-1,1) to (0,1)
    data = (1 - data) / 2
    
    def my_scaler(data: np.array) -> np.array:
        """ data close to 0 will not add much value to the learning process
    
        :param data: two dimensions 0 - time, 1 - prices
        :return:
        """
    
        # data = scaler(data, axis=0)
        smoothing_window_size = data.shape[0] // 2  # for 10000 - 4
        dl = []
        for di in range(0, len(data), smoothing_window_size):
            window = data[di:di + smoothing_window_size]
            # print(window.shape)
            window = scaler(window, axis=1)
            # print(window[0], window[-1])
            dl.append(window)  # last line will be shorter
    
        return np.concatenate(dl)


<a id="orga18ed77"></a>

## smoth

    def savitzky_golay(y, window_size, order, deriv=0, rate=1):
    
        import numpy as np
        from math import factorial
    
        try:
            window_size = np.abs(np.int(window_size))
            order = np.abs(np.int(order))
        except ValueError as msg:
            raise ValueError("window_size and order have to be of type int:", msg)
        if window_size % 2 != 1 or window_size < 1:
            raise TypeError("window_size size must be a positive odd number")
        if window_size < order + 2:
            raise TypeError("window_size is too small for the polynomials order")
        order_range = range(order+1)
        half_window = (window_size -1) // 2
        # precompute coefficients
        b = np.mat([[k**i for i in order_range] for k in range(-half_window, half_window+1)])
        m = np.linalg.pinv(b).A[deriv] * rate**deriv * factorial(deriv)
        # pad the signal at the extremes with
        # values taken from the signal itself
        firstvals = y[0] - np.abs(y[1:half_window+1][::-1] - y[0])
        lastvals = y[-1] + np.abs(y[-half_window-1:-1][::-1] - y[-1])
        y = np.concatenate((firstvals, y, lastvals))
        return np.convolve(m[::-1], y, mode='valid')


<a id="org954f328"></a>

## one-hot encoding


<a id="org01ac38a"></a>

### we have [1,3] [1,2,3,4], [3,4] -> numbers

    import numpy as np
    nb_classes = 4
    targets = np.array([[2, 3, 4, 0]]).reshape(-1)
    one_hot_targets = np.eye(nb_classes)[targets]
    res:int = sum([x*(2**i) for i, x in enumerate(sum(one_hot_targets))]) # from binary to integer


<a id="org0a9bbec"></a>

### column of strings

    def one_h_str_col(col: np.array, name: str):
        c = list(set(col))  # unique
        print(name, c)  # encoding
        res_col = []
        for x in col:
            ind = c.index(x)
            res_col.append(ind)
        return np.array(res_col)


<a id="org40d5083"></a>

## binary encoding

    s_ids = []
    for service_id, cost in cursor1.fetchall():  # service_id = None, 1,2,3,4
        service_id = 0 if service_id is None else int(service_id)
        s_ids.append(int(service_id))
    targets = np.array(s_ids).reshape(-1)
    s_id = 0
    if targets:
        one_hot_targets = np.eye(6)[targets]  # 5 classes
        s_id: int = sum([x * (2 ** i) for i, x in enumerate(sum(one_hot_targets))])  # from binary to integer


<a id="org8763e57"></a>

## map encoding

    df['`condition`'] = df['`condition`'].map({'new': 0, 'uses': 1})


<a id="orge2e757b"></a>

## Accuracy

    import numpy as np

Accuracy = (TP+TN)/(TP+TN+FP+FN):

    print("%f" % (np.round(ypred2) != labels_test).mean())

Precision = (TP) / (TP+FP)


<a id="org58a90e3"></a>

## garbage collect

del train, test; gc.collect()


<a id="org287dd09"></a>

## Class **loop for member varibles**

    for x in vars(instance): # string names
       v = vars(e)[x]  # varible


<a id="org54f4d14"></a>

## filter special characters

    print("asd")
    import re
    def remove_special_characters(character):
        if character.isalnum() or character == ' ':
            return True
        else:
            return False
    text = 'datagy -- is. great!'
    new_text = ''.join(filter(remove_special_characters, text))
    print(new_text)


<a id="org9df9545"></a>

## measure time

    import time
    start_time = time.time()
    main()
    print("--- %s seconds ---" % (time.time() - start_time))


<a id="orgec4b24f"></a>

## primes in interval

    #!/usr/bin/python
    import sys
    m = 2
    n = 10
    primes = [i for i in range(m,n) if all(i%j !=0 for j in range(2,int(i**0.5) + 1))]
    print(primes)

    [2, 3, 5, 7]


<a id="orgcdebacc"></a>

## unicode characters in interval

emacs character info: C-x =

    import sys
    a = 945
    b = 961
    for i in range(a,b + 1):
        print(" ".join([str(i)," ",chr(i)]))

    945   α
    946   β
    947   γ
    948   δ
    949   ε
    950   ζ
    951   η
    952   θ
    953   ι
    954   κ
    955   λ
    956   μ
    957   ν
    958   ξ
    959   ο
    960   π
    961   ρ


<a id="org6d0a563"></a>

# Flask

-   Flask and Quart built on Werkzeug and uses Jinja for templating.
-   Flask wraps Werkzeug, allowing it to take care of the WSGI intricacies while also offering extra structure
    and patterns for creating powerful applications.
-   Quart — an async reimplementation of flask

Flask will never have a database layer. Flask itself just bridges to Werkzeug to implement a proper WSGI
 application and to Jinja2 to handle templating. It also binds to a few common standard library packages such
 as logging. Everything else is up for extensions.


<a id="org3320c2d"></a>

## terms

-   **view:** view function is the code you write to respond to requests to your application
-   **Blueprints:** way to organize a group of related views and other code. Flask associates view functions with
    blueprints when dispatching requests and generating URLs.


<a id="org77cca39"></a>

## components

-   **Jinja:** template engine <https://jinja.palletsprojects.com/>
-   **Werkzeug:** WSGI toolkit <https://werkzeug.palletsprojects.com/>
-   **Click :** CLI toolkit <https://click.palletsprojects.com/>
-   **MarkupSafe:** escapes characters so it is safe to use in HTML and XML <https://markupsafe.palletsprojects.com/>
-   **ItsDangerous:** safe data serialization library, store the session of a Flask application in a cookie
    without allowing users to tamper with the session contents. <https://itsdangerous.palletsprojects.com/>
-   **importlib-metadata:** import at middle of execution for optional module dotenv.
-   **zipp:** ?


<a id="orga6e93b1"></a>

## static files and debugging console


<a id="orgaa6a57c"></a>

### get URL

    from flask import url_for
    from flask import redirect
    @app.route("/")
    def hell():
        return redirect(url_for('static', filename='style.css'))


<a id="orgb528758"></a>

### path and console <a id="orgd7e9092"></a>

default:

-   in localhost:8080/console
    -   >>> print(app.static<sub>folder</sub>)
        -   /home/u/static
    -   >>> print(app.static<sub>url</sub><sub>path</sub>)
        -   /static
    -   >>> print(app.template<sub>folder</sub>)
        -   templates

if we set: app = Flask(static<sub>folder</sub>='test')

-   >>> print(app.static<sub>folder</sub>)
-   /home/u/test
-   >>> print(app.static<sub>url</sub><sub>path</sub>)
-   /test

    app = Flask(__name__, template_folder='./',
                static_url_path='/static',
                static_folder='/home/u/sources/documents_recognition_service/docker/worker/code/test'
                )


<a id="orgc0ed0ea"></a>

## start, run

ways to run:


<a id="org12440ab"></a>

### start $flask run (recommended)

    export FLASK_RUN_debug=false
    export FLASK_RUN_HOST=localhost FLASK_RUN_PORT=8080 ; flask --app main run --no-debug
    export FLASK_APP=main
    flask --app main run --debug

FLASK<sub>COMMAND</sub><sub>OPTION</sub> - pattern for all options

-   FLASK<sub>APP</sub>

    print(app.config) # to get all configuration variables in app


<a id="org605a007"></a>

### start app.run()

app.run() or flask run

-   development web server

use gunicorn or uWSGI.
production deployment

app.run()

-   host – the hostname to listen on.
-   port – the port of the web server.
-   debug – if given, enable or disable debug mode.  automatically reload if code changes, and will show an
    interactive debugger in the browser if an error occurs during a request
-   load<sub>dotenv</sub> – load the nearest .env and .flaskenv files to set environment variables.
-   use<sub>reloader</sub> – should the server automatically restart the python process if modules were changed?
-   use<sub>debugger</sub> – should the werkzeug debugging system be used?
-   use<sub>evalex</sub> – should the exception evaluation feature be enabled?
-   extra<sub>files</sub> – a list of files the reloader should watch additionally to the modules.
-   reloader<sub>interval</sub> – the interval for the reloader in seconds.
-   reloader<sub>type</sub> – the type of reloader to use.
-   threaded – should the process handle each request in a separate thread?
-   processes – if greater than 1 then handle each request in a new process up to this maximum number of concurrent processes.
-   passthrough<sub>errors</sub> – set this to True to disable the error catching.
-   ssl<sub>context</sub> – an SSL context for the connection.


<a id="orgba588d6"></a>

### links

-   <https://flask.palletsprojects.com/en/2.3.x/cli/>
-   <https://flask.palletsprojects.com/en/2.3.x/config/>


<a id="orgec986c2"></a>

## Quart

    # save this as app.py
    from quart import Quart, request
    from markupsafe import escape
    
    app = Quart(__name__)
    
    @app.get("/")
    async def hello():
        name = request.args.get("name", "World")
        return f"Hello, {escape(name)}!"
    # $ quart run
    # * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)


<a id="org9155ebb"></a>

## GET


<a id="org2fe79e1"></a>

### variables

-   string (default) accepts any text without a slash
-   int accepts positive integers
-   float accepts positive floating point values
-   path like string but also accepts slashes
-   uuid accepts UUID strings

    @app.route('/post/<int:post_id>')
    def show_post(post_id):
        # show the post with the given id, the id is an integer
        return f'Post {post_id}'
    
    @app.route('/path/<path:subpath>')
    def show_subpath(subpath):
        # show the subpath after /path/
        return f'Subpath {escape(subpath)}'


<a id="orgb94caf7"></a>

### parameters ?key=value

    from flask import request
    searchword = request.args.get('key', '')


<a id="org9675aa6"></a>

## app.route

-   <https://werkzeug.palletsprojects.com/en/2.3.x/routing/#werkzeug.routing.Rule>
-   <https://werkzeug.palletsprojects.com/en/2.3.x/tutorial/#step-4-the-routing>


<a id="org27fc1f6"></a>

## gentoo dependencies

-   dev-python/asgiref - Asynchronous Server Gateway Interface - calling convention for web servers to forward
    requests to web applications or frameworks written in the Python
-   dev-python/blinker - fast dispatching system, to subscribe to events
-   dev-python/click - creating beautiful command line interfaces
-   dev-python/gpep517 - gentoo
-   dev-python/importlib<sub>metadata</sub> - gentoo
-   dev-python/itsdangerous - helpers to pass data to untrusted environments and to get it back safe and sound
    -   <https://github.com/pallets/itsdangerous/>
-   dev-python/jinja - template engine for Python
-   dev-python/pallets-sphinx-themes - ? themes for documentation
-   dev-python/pypy3 - fast, compliant alternative implementation of the Python (4.5 times faster than CPython)
-   dev-python/pytest - Simple powerful testing with Python - detailed assertion introspection
-   dev-python/setuptools - Easily download, build, install, upgrade, and uninstall Python packages
-   dev-python/sphinx - Python documentation generator
-   dev-python/sphinx-issues
-   dev-python/sphinx-tabs
-   dev-python/sphinxcontrib-log<sub>cabinet</sub>
-   dev-python/werkzeug - Collection of various utilities for WSGI applications
-   dev-python/wheel - A built-package format for Python


<a id="orgb97632f"></a>

## blueprints


<a id="org91f0aa3"></a>

## Hello world

    import flask
    from flask import Flask
    from flask import json, Response, redirect, url_for
    from markupsafe import escape
    
    
    def create_app(test=False) -> Flask:
        app = Flask(__name__, template_folder='./', static_folder='./')
        if test:
            pass
    
        @app.route("/predict", methods=["POST"])
        def predict():
            data = {"success": False}
    
            if flask.request.method != "POST":
                json_string = json.dumps(data, ensure_ascii=False)
                return Response(json_string, content_type="application/json; charset=utf-8")
    
        @app.route("/<name>")
        def hello(name):
            return f"Hello, {escape(name)}!"
    
        @app.route('/', methods=['GET', 'POST'])
        def index():
            return redirect(url_for('transcribe'))
    
        return app
    
    
    if __name__ == "__main__":
        app = create_app()
        app.run(debug=False)


<a id="orgc5c95c0"></a>

## curl

-   <https://gist.github.com/subfuzion/08c5d85437d5d4f00e58>

**one string**

application/x-www-form-urlencoded is the default:

    curl -d "param1=value1&param2=value2" -X POST http://localhost:3000/data

explicit:

    curl -d "param1=value1&param2=value2" -H "Content-Type: application/x-www-form-urlencoded" -X POST http://localhost:3000/dat


<a id="orga409d20"></a>

## response object

default return:

-   string => 200 OK status code and a text/html mimetype
-   dict or list => jsonify() is called to produce a response
-   iterator or generator returning strings or bytes => streaming response
-   (response, status), (response, headers), or (response, status, headers)
    -   headers : list or dictionary
-   other -  assume the return is a WSGI application and convert that into a response object.

make<sub>response</sub>:

    from flask import make_response
    
    @app.route('/')
    def index():
        resp = make_response(render_template(...))
        resp.set_cookie('username', 'the username')
        return resp

-   <https://flask.palletsprojects.com/en/2.2.x/quickstart/#about-responses>


<a id="org38d6676"></a>

## request object

-   from flask import request


<a id="org9e19ea9"></a>

### get all values

    for x in dir(request):
        print(x, getattr(request, x))

-   <https://flask.palletsprojects.com/en/2.3.x/api/#flask.Request>


<a id="org40d3a68"></a>

## Jinja templates

Jinja template library to render templates, located at [65.3.2](#orgd7e9092)

-   autoescape any data that is rendered in HTML templates - such as < and > will be escaped with safe value
-   {{ and }} - for output. a single trailing newline is stripped if present, other whitespace (spaces, tabs,
    newlines etc.) is returned unchanged
    -   {{ name|striptags|title }}  - equal to (title(striptags(name)))
-   {% and %} - control flow, and other Statements
    -   {%+ if something %}yay{% endif %} or {% if something +%}yay{% endif %} - disabled block with +
    -   {%- if something %}yay{% endif %} - the whitespaces before or after that block will be removed. used for {{ }} also
-   {# &#x2026; #} for Comments not included in the template output
-   \# for item in seq - line stiment, equivalent to {% for item in seq %}

common for {{}}

-   url<sub>for</sub>('static', filename='style.css')
-   

join paths:

    {{path_join('pillar', 'device1.sls'}}

common for {%%}

-   {% if True %}   yay     {% endif %}
-   {% raw %}  {%  {%  {%  {% endraw %}
-   {% for user in users %} {{user.a}} {% endfor %}
-   {% include 'header.html' %}


<a id="org68781cd"></a>

### own filters:

    # 1 way
    @app.template_filter('reverse')
    def reverse_filter(s):
        return s[::-1]
    
    # 2 way
    def reverse_filter(s):
        return s[::-1]
    app.jinja_env.filters['reverse'] = reverse_filter
    
    app.jinja_env.filters['path_join'] = os.path.join
    # usage: {{ path | path_join('..') }}


<a id="org0852a73"></a>

### links

<https://jinja.palletsprojects.com/templates/>


<a id="orgb4b4ae9"></a>

## security

-   from markupsafe import escape; return f"Hello, {escape(name)}!"

werkzeug.secure<sub>filename</sub>()


<a id="org82f0dc7"></a>

## my projects


<a id="orgdd71ee8"></a>

### testing1

    from main import app
    from flask.testing import FlaskClient
    from flask import Response
    from pathlib import Path
    import json
    import  logging
    # -- enable app.logger.debug()
    app.logger.setLevel(logging.DEBUG)
    
    app.testing = True # propaget excetions to here, or it will return 500 status only
    
    
    
    client: FlaskClient
    with app.test_client() as client:
        # -- get
        r: Response = client.get('/audio_captcha', follow_redirects=True)
        assert r.status_code == 200
        # the same:
        r: Response = client.get('/get' ,query_string = {'id':str('123')})
        r: Response = client.get('/get?id=123')
        # print(r.status_code)
        # -- post
        r: Response = client.post('/audio_captcha', data={
            'file': Path('/home/u2/h4/PycharmProjects/captcha_fssp/929014e341a0457f5a90a909b0a51c40.wav').open('rb')}
        )
        assert r.status_code == 200
        print(json.loads(r.data))
    
    
    with app.test_request_context():
        print(url_for('index'))
        print(url_for('login'))
        print(url_for('login', next='/'))
        print(url_for('profile', username='John Doe'))
    
    # /
    # /login
    # /login?next=/
    # /user/John%20Doe


<a id="orgec67212"></a>

### testing2

    from main import app
    from flask.testing import FlaskClient
    from flask import Response
    from pathlib import Path
    app.testing = True
    client: FlaskClient
    import json
    
    
    with app.test_client() as client:
        # r: Response = client.get('/speech_ru')
        # assert r.status_code == 200
        # print(r.status_code)
    
        r: Response = client.post('/speech_ru', data={
            'file': Path('/home/u2/h4/PycharmProjects/captcha_fssp/929014e341a0457f5a90a909b0a51c40.wav').open('rb')}
        )
        assert r.status_code == 200
        print(json.loads(r.data))


<a id="org3d0fb6d"></a>

### file storage

-   <https://gist.github.com/andik/e86a7007c2af97e50fbb>
-   <https://codereview.stackexchange.com/questions/214418/simple-web-based-file-browser-with-flask>
-   <https://www.reddit.com/r/learnpython/comments/npadxh/how_to_return_directory_listingwith_files_and/>
-   <https://stackoverflow.com/questions/23718236/python-flask-browsing-through-directory-with-files>
-   <https://github.com/Wildog/flask-file-server>
-   <https://pypi.org/project/Flask-AutoIndex/> <https://github.com/general03/flask-autoindex>
-   <https://github.com/walkoncross/tornado-file-server>


<a id="org3e9120e"></a>

## Flask-2.2.2 hashes <a id="orgd20cc98"></a>

    MarkupSafe==2.1.1 \
      --hash=sha256:7f91197cc9e48f989d12e4e6fbc46495c446636dfc81b9ccf50bb0ec74b91d4b
    
    Jinja2==3.1.2 \
      --hash=sha256:31351a702a408a9e7595a8fc6150fc3f43bb6bf7e319770cbc0db9df9437e852
    
    Werkzeug==2.2.2 \
      --hash=sha256:7ea2d48322cc7c0f8b3a215ed73eabd7b5d75d0b50e31ab006286ccff9e00b8f
    
    click==8.1.3 \
      --hash=sha256:7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e
    
    itsdangerous==2.1.2 \
      --hash=sha256:5dbbc68b317e5e42f327f9021763545dc3fc3bfe22e6deb96aaf1fc38874156a
    
    importlib_metadata==5.0.0 \
      --hash=sha256:da31db32b304314d044d3c12c79bd59e307889b287ad12ff387b3500835fc2ab
    
    zipp==3.8.1 \
      --hash=sha256:05b45f1ee8f807d0cc928485ca40a07cb491cf092ff587c0df9cb1fd154848d2
    Flask==2.2.2 \
     --hash=sha256:642c450d19c4ad482f96729bd2a8f6d32554aa1e231f4f6b4e7e5264b16cca2b


<a id="org3a34379"></a>

## flask-api (bad working)

    emerge --ask dev-python/flask-api

Require Flask 1.1.+

<https://github.com/flask-api/flask-api/>


<a id="orgfa6f63e"></a>

## flask-restful (old)

-   flask-restful - complex API at the top of Flask API ( sucks)

-   flask-apispec inspired by Flask-RESTful and Flask-RESTplus, but attempts to provide similar functionality
    with greater flexibility and less code

?? <https://github.com/mgorny/flask-api>

**marshal<sub>with</sub>** - declare serialization transformation for response
<https://flask-restful.readthedocs.io/en/latest/quickstart.html>


<a id="org3296403"></a>

## example

    from flask_restful import fields, marshal_with
    
    resource_fields = {
        'task':   fields.String,
        'uri':    fields.Url('todo_ep')
    }
    
    class TodoDao(object):
        def __init__(self, todo_id, task):
            self.todo_id = todo_id
            self.task = task
    
            # This field will not be sent in the response
            self.status = 'active'
    
    
    parser = reqparse.RequestParser()
    parser.add_argument('task', type=str, help='Rate to charge for this resource')
    parser.add_argument('picture', type=werkzeug.datastructures.FileStorage, required=True, location='files')
    
    
    class Todo(Resource):
        @marshal_with(resource_fields)
        def get(self, todo_id):
            args = parser.parse_args()
            task = {'task': args['task']}
    	file = args['file']
    	file.save("your_file_name.jpg")
            if something:
                abort(404, message="Todo oesn't exist")
            return TodoDao(todo_id='my_todo', task='Remember the milk')
    
    api.add_resource(Todo, '/todos/<todo_id>')
    
    if __name__ == '__main__':
        app.run(debug=True)


<a id="org4a9f7a7"></a>

### image


<a id="org2894921"></a>

## swagger

-   flask<sub>restx</sub> - same API as flask-restful but with Swagger autogeneration

flask<sub>restx.reqparse.RequestParser.add</sub><sub>argument</sub>


<a id="org24be04a"></a>

## werkzeug

-   <https://werkzeug.palletsprojects.com/>
-   /usr/lib/python3.11/site-packages/werkzeug


<a id="org016d1a1"></a>

## debug

1.  run(debug=True) - create two applications
2.  localhost:8080/console
    -   >> app.url<sub>map</sub>
    -   >> print(app.static<sub>folder</sub>)


<a id="orgbe0c269"></a>

## test

    from flask.testing import FlaskClient
    from flask import Response
    
    from micro_file_server.__main__ import app
    
    
    def test_main():
        app.testing = True
        with app.test_client() as client:
            client: FlaskClient
            r: Response = client.get('/')
            assert r.status_code == 200


<a id="org7c72f17"></a>

## production

built-in WSGI in Flask

-   not handle more than one request at a time by default.
-   If you leave debug mode on and an error pops up, it opens up a shell that allows for arbitrary code to be
    executed on your server

pdoction WSGI (Web Server Gateway Interface)

-   Gunicorn
-   Waitress
-   mod<sub>wsgi</sub>
-   uWSGI
-   gevent
-   eventlet
-   ASGI

links

-   <https://flask.palletsprojects.com/en/2.3.x/tutorial/deploy/>
-   <https://flask.palletsprojects.com/en/2.3.x/deploying/>

\*\*


<a id="org6cf87d7"></a>

## vulnerabilities

<https://github.com/lokori/flask-vuln>


<a id="orgc1d8651"></a>

## USECASES

-   get data <https://stackoverflow.com/questions/10434599/how-to-get-data-received-in-flask-request>
-   app.config['JSON<sub>AS</sub><sub>ASCII</sub>'] = False # disabling ASCII-safe encoding opens the door for issues with U+2028
    and U+2029 separators in the data to break Javascript interpolation or JSONP APIs
    <http://timelessrepo.com/json-isnt-a-javascript-subset>

Для возвращаемого значения создается

-   Response 200 OK, with the string as response body, text/html mimetype
-   (response, status, headers) or (response, headers)


<a id="org8332837"></a>

### check file exist

    from flask import Flask
    from flask import render_template
    import os
    app = Flask(__name__)
    @app.route("/")
    def main():
        app.logger.debug(os.path.exists(os.path.join(app.static_folder, 'staticimage.png')))
        app.logger.debug(os.path.exists(os.path.join(app.template_folder, 'index.html')))
        return render_template('index.html')


<a id="org7f01c5f"></a>

### call POST method

    request.files = {'file': open('/home/u/a.html', 'rb')}
    request.method = 'POST'
    r = upload()
    # ('{"id": "35f190f6aa854b6c9bb0c64e601c0eda"}', 200, {'Content-Type': 'application/json'})


<a id="orgb67c80c"></a>

### call GET method with arguments

    request.args = {'id': rid}
    r = get()
    app.logger.debug("r " + json.dumps(json.loads(r[0]), indent=4))


<a id="orge55b19c"></a>

### print headers

    from flask import Flask
    print(__name__)
    app = Flask(__name__, template_folder='./', static_folder='./')
    
    from flask import render_template
    from flask import abort, redirect, url_for
    from flask import request
    from werkzeug.utils import secure_filename
    
    
    @app.route("/")
    def hell():
        # return render_template('a.html')
        return ''.join([f"<br> {x[0]}: {x[1]}\n" for x in request.headers])
    
    if __name__ == "__main__":
        print("start")
        app.run(host='0.0.0.0', port=80, debug=False)


<a id="org52355e9"></a>

### TLS server

generate CSR (Creating the Server Certificate) used by CA to generate SSL

-   rm server.key ; openssl genrsa -out server.key 2048 && cp server.key server.key.org && openssl rsa -in server.key.org -out server.key
    -   cp server.key server.key.org
    -   openssl rsa -in server.key.org -out server.key
-   openssl req -new -key server.key -out server.csr

generate self-signed:

-   openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt

CN must be full domain address

.well-known/pki-validation/926C419392B7B26DFCECBAEB9F163A53.txt


<a id="orgf827604"></a>

## async/await and ASGI

Flask supports **async coroutines for view functions** by executing the coroutine on a separate thread instead of
 using an **event loop on the main thread** as an async-first (ASGI) framework would. This is necessary for Flask
 to remain backwards compatible with extensions and code built before async was introduced into Python. This
 compromise introduces a performance cost compared with the ASGI frameworks, due to the overhead of the
 threads.

you can run async code within a view, for example to make multiple concurrent database queries, HTTP requests
 to an external API, etc. However, the number of requests your application can handle at one time will remain
 the same.


<a id="orga524ab6"></a>

## use HTTPS

unstable certificate:

    flask run --cert=adhoc

or

    app.run(ssl_context='adhoc')

stable

1.  generate: openssl req -x509 -newkey rsa:4096 -nodes -out cert.pem -keyout key.pem -days 365
2.  

    app.run(ssl_context=('cert.pem', 'key.pem'))

or

    flask run --cert=cert.pem --key=key.pem

or

    python micro_file_server/__main__.py --cert=.cert/cert.pem --key=.cert/key.pem


<a id="org710a333"></a>

## links

-   <https://flask.palletsprojects.com/>
-   <file:///usr/lib/python3.11/site-packages/flask/>


<a id="orga33764b"></a>

# FastAPI

-   built-in data validation feature
-   error messages displayed in JSON format
-   anychronous task support - asyncio
-   documentation support - automatic
-   feature-rich: HTTPS requests, OAuth, XML/JSON response, TLS encryption
-   built-in monitoring tools
-   cons: expensive, difficult to scale

implement ASGI specification

installation:

-   pip install fastapi


<a id="orgee8b96a"></a>

## Interactive API Documentation

-   Swagger UI: <http://127.0.0.1:8000/docs>
-   ReDoc: <http://127.0.0.1:8000/redoc>


<a id="org3e497e7"></a>

## running with uvicorn or gunicorn

FastAPI doesn’t contain any built-in development server.

www-servers/gunicorn  - A WSGI HTTP Server for UNIX

-   NOT SUITABLE.

dev-python/uvicorn - ASGI server

-   suitable

uvicorn fapi:app

-   &#x2013;reload - when you update your application code, the server will reload automatically.


<a id="org8c6f904"></a>

## dependencies

-   dev-python/fastapi-0.112.0
-   dev-python/pydantic-2.8.2
-   dev-python/pydantic-core-2.20.1
-   dev-python/annotated-types-0.7.0
-   dev-python/starlette-0.37.2
-   dev-python/httpx-0.27.0
-   dev-python/httpcore-1.0.5
-   dev-python/h2-4.1.0-r1
-   dev-python/hpack-4.0.0-r1
-   dev-python/hyperframe-6.0.1-r1
-   dev-python/h11-0.14.0
-   dev-python/python-multipart-0.0.9
-   dev-python/pdm-backend-2.3.3
-   dev-python/tomli-w-1.0.0-r1
-   dev-python/starlette-0.37.2
-   dev-python/anyio-4.4.0-r1
-   dev-python/sniffio-1.3.1


<a id="org2292c95"></a>

## swagger

-   <https://fastapi.tiangolo.com/tutorial/metadata/>

app.swagger<sub>ui</sub><sub>parameters</sub>

-   <https://fastapi.tiangolo.com/how-to/configure-swagger-ui/>
-   <https://swagger.io/docs/open-source-tools/swagger-ui/usage/configuration/>

Problem: external (not solved)

-   swagger-ui-bundle.js
-   swagger-ui.css
-   <https://medium.com/@chodvadiyasaurabh/elevating-your-api-documentation-customizing-swagger-ui-in-fastapi-28513ccb2af6>
-   <https://github.com/swagger-api/swagger-ui/tree/master/dist>


<a id="org77bc051"></a>

## links

-   <https://fastapi.tiangolo.com/>
-   <https://github.com/fastapi/fastapi>
-   <https://realpython.com/fastapi-python-web-apis/>


<a id="orgab50eeb"></a>

# Databases


<a id="orga47f927"></a>

## Database API Specification v2.0 (PEP 249). <http://www.python.org/dev/peps/pep-0249/>

-   constructor .connect( parameters… )
-   .close()
-   .commit()
-   .rollback() - optional
-   .cursor() -> Cursor Object

Cursor:

-   .execute(operation [, parameters])
-   .fetchone()
-   .fetchall()
-   .close()
-   .arraysize -  number of rows to fetch at a time with .fetchmany()


<a id="orgea64ef2"></a>

## Groonga

<http://groonga.org/docs/>
GNU Lesser General Public License v2.1

-   full text search engine based on inverted index
-   updates without read locks
-   column-oriented database management system
-   read lock-free
-   Geo-location (latitude and longitude) search

start:

-   apt-get install groonga
-   $ groonga -n grb.db            - create database
-   $ groonga -s -p 10041  grb.db

0.0.0.0:10041


<a id="orgae219a3"></a>

### Basic commands:

-   **status:** shows status of a Groonga process.
-   **table<sub>list</sub>:** shows a list of tables in a database.
-   **column<sub>list</sub>:** shows a list of columns in a table.
-   **table<sub>create</sub>:** adds a table to a database.
-   **column<sub>create</sub>:** adds a column to a table.
-   **select:** searches records from a table and shows the result.
-   **load:** inserts records to a table.

    table_create --name Site --flags TABLE_HASH_KEY --key_type ShortText
    select --table Site
    column_create --table Site --name gender --type UInt8

    select Site --filter 'fuzzy_search(_key, "two")'

<https://github.com/groonga/groonga/search?l=C&q=fuzzy_search>

default:

-   data.max<sub>distance</sub> = 1;
-   data.prefix<sub>length</sub> = 0;
-   data.prefix<sub>match</sub><sub>size</sub> = 0;
-   data.max<sub>expansion</sub> = 0;


<a id="org8920f05"></a>

### python

<https://github.com/hhatto/poyonga>

    pip install --upgrade poyonga

    groonga -s --protocol http grb.db

    from poyonga import Groonga
    g = Groonga(port=10041, protocol="http", host='0.0.0.0')
    print(g.call("status").status)
    # >>> 0

1.  load

        from poyonga import Groonga
        
        def _call(g, cmd, **kwargs):
            ret = g.call(cmd, **kwargs)
            print(ret.status)
            print(ret.body)
            if cmd == 'select':
                for item in ret.items:
                    print(item)
                print("=*=" * 30)
        
        data = """\
        [
          {
            "_key": "one",
            "gender": 1,
          }
        ]
        """
        _call(g, "load", table="Site", values="".join(data.splitlines()))


<a id="org4cbff39"></a>

## Oracle

<https://www.oracle.com/database/technologies/instant-client.html>

    python cx_Oracle

require: Oracle Instant Client - Basic zip, SQLPlus zip (for console)

.bashrc

    export LD_LIBRARY_PATH=/home/u2/.local/instantclient_19_8:$LD_LIBRARY_PATH

    wget https://download.oracle.com/otn_software/linux/instantclient/instantclient-basic-linuxx64.zip
    unzip instantclient-basic-linuxx64.zip
    apt-get install libaio1
    export LD_LIBRARY_PATH=/instantclient_19_8:$LD_LIBRARY_PATH


<a id="orga72348e"></a>

### sql

    SELECT *
    FROM
        nls_database_parameters
    WHERE
        PARAMETER = 'NLS_NCHAR_CHARACTERSET';
    
    DELETE FROM table - remove records
    drop table - remove table
    
    SELECT * FROM ALL_OBJECTS - system
    SELECT * FROM v$version - oracle version


<a id="org63494e2"></a>

## MySQL

MySQL Connector/Python  <https://dev.mysql.com/doc/connector-python/en/connector-python-introduction.html>

-   compliant with Python Database API Specification v2.0 (PEP 249). <http://www.python.org/dev/peps/pep-0249/>


<a id="org9dd7c7c"></a>

## Redis

    emerge --ask dev-python/redis
    equery f dev-python/redis

main files:

-   client.py
    -   class Redis
-   connection.py
    -   Connection
    -   ConnectionPool


<a id="org92f2cfe"></a>

### timeout - connection for client to master

For CLI: Close the connection after a client is idle for N seconds (0 to disable)

    timeout 0

Redis(socket<sub>connect</sub><sub>timeout</sub>=None,  socket<sub>keepalive</sub><sub>options</sub>=None, socket<sub>keepalive</sub><sub>options</sub>=None)

Redis uses:

-   socket<sub>timeout</sub>
-   socket<sub>keepalive</sub>

seconds?

-   <https://docs.python.org/3/library/socket.html#socket.socket.settimeout>
-   <https://docs.python.org/3/library/socket.html#socket-timeouts>

**there is no straightforward way to set a global socket timeout for all connections in imported libraries**


<a id="org54c4e5b"></a>

# SQLAlchemy - ORM

<https://docs.sqlalchemy.org/en/20/orm/quickstart.html>

    from sqlalchemy.orm import DeclarativeBase
    from sqlalchemy.orm import mapped_column
    from sqlalchemy.orm import Mapped
    from sqlalchemy.orm import relationship
    from sqlalchemy import ForeignKey
    from sqlalchemy import String
    from typing import List
    
    class Base(DeclarativeBase):
        pass
    
    class User(Base):
        __tablename__ = "user_account"
        id: Mapped[int] = mapped_column(primary_key=True)
        name: Mapped[str] = mapped_column(String(30))
        fullname: Mapped[str | None]
        # -- relationship
        addresses: Mapped[List["Address"]] = relationship(
            back_populates="user", cascade="all, delete-orphan")
    
    class Address(Base):
        __tablename__ = "address"
        id: Mapped[int] = mapped_column(primary_key=True)
        user_id: Mapped[int] = mapped_column(ForeignKey("user_account.id"))
        # -- relationship
        user: Mapped["User"] = relationship(back_populates="addresses")
    
    # -------- Create Tables -------------
    from sqlalchemy import create_engine
    # echo=True parameter indicates that SQL emitted by connections will be logged to standard out.
    engine = create_engine("sqlite://", echo=True)
    
    Base.metadata.create_all(engine) # create DDL
    
    # -------- Create records -------------
    from sqlalchemy.orm import Session
    with Session(engine) as session:
        spongebob = User(
            name="spongebob",
            fullname="Spongebob Squarepants",
            addresses=[Address()],
        )
        session.add_all([spongebob])
        session.commit()
    
    # -------- Select -------------
    from sqlalchemy import select
    session = Session(engine)
    stmt = select(User).where(User.name.in_(["spongebob"]))
    
    for user in session.scalars(stmt):
        print(user.name, user)

    2024-03-03 13:05:24,386 INFO sqlalchemy.engine.Engine BEGIN (implicit)
    2024-03-03 13:05:24,386 INFO sqlalchemy.engine.Engine PRAGMA main.table_info("user_account")
    2024-03-03 13:05:24,387 INFO sqlalchemy.engine.Engine [raw sql] ()
    2024-03-03 13:05:24,388 INFO sqlalchemy.engine.Engine PRAGMA temp.table_info("user_account")
    2024-03-03 13:05:24,388 INFO sqlalchemy.engine.Engine [raw sql] ()
    2024-03-03 13:05:24,389 INFO sqlalchemy.engine.Engine PRAGMA main.table_info("address")
    2024-03-03 13:05:24,389 INFO sqlalchemy.engine.Engine [raw sql] ()
    2024-03-03 13:05:24,389 INFO sqlalchemy.engine.Engine PRAGMA temp.table_info("address")
    2024-03-03 13:05:24,389 INFO sqlalchemy.engine.Engine [raw sql] ()
    2024-03-03 13:05:24,393 INFO sqlalchemy.engine.Engine
    CREATE TABLE user_account (
    	id INTEGER NOT NULL,
    	name VARCHAR(30) NOT NULL,
    	fullname VARCHAR,
    	PRIMARY KEY (id)
    )
    
    
    2024-03-03 13:05:24,394 INFO sqlalchemy.engine.Engine [no key 0.00035s] ()
    2024-03-03 13:05:24,395 INFO sqlalchemy.engine.Engine
    CREATE TABLE address (
    	id INTEGER NOT NULL,
    	user_id INTEGER NOT NULL,
    	PRIMARY KEY (id),
    	FOREIGN KEY(user_id) REFERENCES user_account (id)
    )
    
    
    2024-03-03 13:05:24,395 INFO sqlalchemy.engine.Engine [no key 0.00032s] ()
    2024-03-03 13:05:24,396 INFO sqlalchemy.engine.Engine COMMIT
    2024-03-03 13:05:24,411 INFO sqlalchemy.engine.Engine BEGIN (implicit)
    2024-03-03 13:05:24,415 INFO sqlalchemy.engine.Engine INSERT INTO user_account (name, fullname) VALUES (?, ?)
    2024-03-03 13:05:24,415 INFO sqlalchemy.engine.Engine [generated in 0.00040s] ('spongebob', 'Spongebob Squarepants')
    2024-03-03 13:05:24,417 INFO sqlalchemy.engine.Engine INSERT INTO address (user_id) VALUES (?)
    2024-03-03 13:05:24,417 INFO sqlalchemy.engine.Engine [generated in 0.00036s] (1,)
    2024-03-03 13:05:24,418 INFO sqlalchemy.engine.Engine COMMIT
    2024-03-03 13:05:24,420 INFO sqlalchemy.engine.Engine BEGIN (implicit)
    2024-03-03 13:05:24,425 INFO sqlalchemy.engine.Engine SELECT user_account.id, user_account.name, user_account.fullname
    FROM user_account
    WHERE user_account.name IN (?)
    2024-03-03 13:05:24,425 INFO sqlalchemy.engine.Engine [generated in 0.00050s] ('spongebob',)
    spongebob <__main__.User object at 0x7fb43dedf290>


<a id="orgb888be6"></a>

# Virtualenv

enables multiple side-by-side installations of Python, one for each project.


<a id="org68f86a1"></a>

## venv - default module

Creation of virtual environments is done by executing the command venv:

1.  python3 -m venv path
2.  source <venv>/bin/activate


<a id="org4355286"></a>

## virtualenv

-   pip3.6 install virtualenv &#x2013;user
-   ~/.local/bin/virtualenv ENV
-   source ENV/bin/activate


<a id="org3f0e7dd"></a>

## two virtaul environments

1.  create first with PyCharm, it will be /opt/venv
2.  create second with python -m venv *opt*.venv
3.  apt update
4.  apt install nano
5.  nano *opt*.venv/pyvenv.cfg: home = *opt*.venv/bin
6.  execute my script
7.  source /opt/venv/bin/activate
8.  python -m pip install &#x2013;prefix=/opt/venv &#x2013;no-cache-dir -r requirements.txt

now both venv will hold two

script:

    p=/opt/.venv # path without / ending - for Docker
    t=/opt/venv # path without / ending - for PyCharm
    
    rm -rf $p/bin
    ln -s $t/bin $p/bin
    rm -rf $p/include
    ln -s $t/bin $p/include
    rm -rf $p/lib
    ln -s $t/lib $p/lib
    rm -rf $p/lib64
    ln -s $t/lib $p/lib64


<a id="org4925ff5"></a>

# ldap

apt-get install libsasl2-dev python-dev libldap2-dev libssl-dev


<a id="org278ae3b"></a>

# Containerized development

Docker

-   ENV values are available to containers

    USER = os.getenv('API_USER')
    PASSWORD = os.environ.get('API_PASSWORD')

    os.environ['API_USER'] = 'username'
    os.environ['API_PASSWORD'] = 'secret'


<a id="orga96e02f"></a>

# security

-   html.escape - <html> => &lt;html&gt;
-   from werkzeug.utils import secure<sub>filename</sub> - request.files['the<sub>file</sub>'].filename
-   [34.9](#org0f3cf49) - [65.17](#orgd20cc98)


<a id="org54029dd"></a>

# serialization

-   pickle (unsafe alone) +  hmac
-   json
-   YAML: YAML is a superset of JSON, but easier to read (read & write, comparison of JSON and YAML)
-   csv
-   MessagePack (Python package): More compact representation (read & write)
-   HDF5 (Python package): Nice for matrices (read & write)
-   XML: exists too **sigh** (read & write)
-   


<a id="orge39d032"></a>

## pickle

    # -- pandas pickle and csv --
    import pickle
    p: str = p
    if p.endswith('.csv'):
        df = pd.read_csv(p, index_col=0, low_memory=False, nrows=nrows)
    elif p.endswith('.pickle'):
        df: pd.DataFrame = pd.read_pickle(p)
    
    # -- pickle
    import pickle
    with open('filename.pickle', 'wb') as fh:
        pickle.dump(a, fh, protocol=pickle.HIGHEST_PROTOCOL)
    with open('filename.pickle', 'rb') as fh:
        b = pickle.load(fh)


<a id="org7847ecd"></a>

# cython

-   cython -3 &#x2013;embed a.py
-   gcc \`python3-config &#x2013;cflags &#x2013;ldflags\` -lpython3.10 -fPIC -shared a.c

from doc:

    gcc -shared -pthread -fPIC -fwrapv -O2 -Wall -fno-strict-aliasing \
          -I/usr/include/python3.5 -o yourmod.so yourmod.c


<a id="org73ad9cc"></a>

# headles browsers

<https://github.com/dhamaniasad/HeadlessBrowsers>


<a id="org1822c07"></a>

# selenium

-   Selenium WebDriver - interface to write instructions that work interchangeably across browsers, like a
    headless browser.
    -   1) Protocol specification
    -   2) Ruby official implementation for Protocol specification
    -   3) ChromeDriver, GeckoDriver - implementations of specification by Google and Mozilla. Most drivers are created by the browser vendors themselves
-   Selenium Remote Control (RC) (pip install selenium) simple? interface to browsers and to webdirever
-   Selenium IDE - browser plug-in, records your actions in the browser and repeats them.
-   Selenium Grid - allows you to run parallel tests on multiple machines and browsers at the same time
-   bindings for languages.

pros:

-   easily integrates with various development platforms such as Jenkins, Maven, TestNG, QMetry, SauceLabs, etc.

cons:

-   No built-in image comparison ( Sikuli is a common choice)
-   No tech support
-   No reporting capabilities
    -   TestNG creates two types of reports upon test execution: detailed and summary. The summary provides simple passed/failed data; while detailed reports have logs, errors, test groups, etc.
    -   JUnit uses HTML to generate simple reports in Selenium with indicators “failed” and “succeeded.”
    -   Extent Library is the most complex option: It creates test summaries, includes screenshots, generates pie charts, and so on.
    -   Allure creates beautiful reports with graphs, a timeline, and categorized test results — all on a handy dashboard.
-   well-coded Selenium test typically verifies less than 10% of the user interface

 web mobile apps. based on Selenium.

-   Selendroid focused exclusively on Android
-   Appium - iOS, Android, and Windows devices
-   Robotium — a black-box testing framework for Android
-   ios-driver—a Selenium WebDriver API for iOS testing integrated with Selenium Grid


<a id="orga622546"></a>

## drivers

Chrome: <https://chromedriver.chromium.org/downloads>

-   source C++ <https://chromium.googlesource.com/chromium/src/+/main/chrome/test/chromedriver/>

Edge: <https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/>

Firefox: <https://github.com/mozilla/geckodriver/releases>

-   gentoo: USE="geckodriver" emerge www-client/firefox
-   <https://firefox-source-docs.mozilla.org/testing/geckodriver/>
-   source Rust <https://hg.mozilla.org/mozilla-central/file/tip/testing/geckodriver>

Safari: <https://webkit.org/blog/6900/webdriver-support-in-safari-10/>


<a id="org6c0f25f"></a>

## install

<https://packages.gentoo.org/packages/dev-ruby/selenium-webdriver>
binding for Selenium Remote Control <https://packages.gentoo.org/packages/dev-python/selenium>


<a id="org043a669"></a>

## python installantion

-   www-client/firefox with geckodriver - it is WebDriver implementation for Firefox <https://github.com/mozilla/geckodriver>
-   dev-python/selenium -


<a id="orgf817e0a"></a>

## python usage

    from selenium import webdriver
    
    driver = webdriver.Firefox()
    driver.get("https://google.com")
    for i in range(1):
        matched_elements = driver.get("https://www.google.com/search?q=" +
                                         search_string + "&start=" + str(i))
    
    # driver.find_element_by_id("nav-search").send_keys("Selenium")


<a id="orgb9126cd"></a>

## links

-   <https://www.selenium.dev/documentation/overview/components/>
-   <https://pythonbasics.org/selenium-firefox/>
-   <https://www.scrapingbee.com/blog/selenium-python/>


<a id="org1a7070e"></a>

# plot in terminal

-   plotille
    -   <https://pypi.org/project/plotille/>
    -   <https://github.com/tammoippen/plotille>
-   <https://pypi.org/project/plotext/>


<a id="org9ccdb62"></a>

## plotext

<https://github.com/piccolomo/plotext>
Нагрузка на воркерах 0 и 1 - 400 и 500:

    pip install plotext
    python3 -c "import plotext as plt; plt.bar([0,1],[400,500]) ; plt.show() ;"


<a id="orge935932"></a>

# xml parsing

    import xml.etree.ElementTree as ET
    xmlfile = "a.xml"
    tree = ET.parse(xmlfile)
    root = tree.getroot()
    for child in root:
        print(child.tag, [x.tag for x in child], child.attrib)


<a id="orgcbdca24"></a>

# pytest


<a id="org1af7e12"></a>

## features

-   Detailed info on failing assert statements
-   Auto-discovery of test modules and functions: <https://docs.pytest.org/en/stable/explanation/goodpractices.html#conventions-for-python-test-discovery>
    -   if no "testpaths" and not directories as arguments defined - Recurse into directories
    -   test<sub>\*</sub>.py or \*<sub>test.py</sub>
    -   "test" prefixed functions.
    -   test prefixed test functions or methods inside Test prefixed test classes
-   Modular fixtures for managing small or parametrized long-lived test resources  <https://docs.pytest.org/en/stable/explanation/fixtures.html>
-   Can run "unittest" (or trial), "nose" test suites out of the box
-   Rich plugin architecture, with over 850+ external plugins and thriving community <https://docs.pytest.org/en/latest/reference/plugin_list.html>

    [pytest] # pytest.ini (or .pytest.ini), pyproject.toml, tox.ini, or setup.cfg
    testpaths = testing doc # as if $pytest testing doc

pytest -x           # stop after first failure
pytest &#x2013;maxfail=2  # stop after two failures


<a id="org07a69ce"></a>

## layout

    pyproject.toml
    src/
        mypkg/
            __init__.py
            app.py
            view.py
    tests/
        test_app.py
        test_view.py
        ...


<a id="org0e6636a"></a>

## usage

1.  cd project (with pyproject.toml and test folder)
2.  pytest [ foders &#x2026; ]   - packages should be added to PYTHONPATH manually
3.  or python -m pytest (this one add the current directory to sys.path) - current directory must be src or package(for flat)


<a id="orge7e1cc5"></a>

## dependencies

    dev-python/pytest-7.3.2:
     [  0]  dev-python/pytest-7.3.2
     [  1]  dev-python/iniconfig-2.0.0
     [  1]  dev-python/more-itertools-9.1.0
     [  1]  dev-python/packaging-23.1
     [  1]  dev-python/pluggy-1.0.0-r2
     [  1]  dev-python/exceptiongroup-1.1.1
     [  1]  dev-python/tomli-2.0.1-r1
     [  1]  dev-python/pypy3-7.3.11_p1
     [  1]  dev-lang/python-3.10.11
     [  1]  dev-lang/python-3.11.3
     [  1]  dev-lang/python-3.12.0_beta2
     [  1]  dev-python/setuptools-scm-7.1.0
     [  1]  dev-python/argcomplete-3.0.8
     [  1]  dev-python/attrs-23.1.0
     [  1]  dev-python/hypothesis-6.76.0
     [  1]  dev-python/mock-5.0.2
     [  1]  dev-python/pygments-2.15.1
     [  1]  dev-python/pytest-xdist-3.3.1
     [  1]  dev-python/requests-2.31.0
     [  1]  dev-python/xmlschema-2.3.0
     [  1]  dev-python/gpep517-13
     [  1]  dev-python/setuptools-67.7.2
     [  1]  dev-python/wheel-0.40.0


<a id="org1aec795"></a>

## fixtures - context for the test

fixtures can use other fixtures

    import pytest
    
    class Fruit:
        def __init__(self, name):
            self.name = name
    
        def __eq__(self, other):
            return self.name == other.name
    
    
    @pytest.fixture
    def my_fruit():
        return Fruit("apple")
    
    
    @pytest.fixture
    def fruit_basket(my_fruit):
        return [Fruit("banana"), my_fruit]
    
    
    def test_my_fruit_in_basket(my_fruit, fruit_basket):
        assert my_fruit in fruit_basket

<https://docs.pytest.org/en/latest/explanation/fixtures.html#what-fixtures-are>


<a id="org569485f"></a>

## mock - monkeypatch fixture

<https://docs.pytest.org/en/stable/how-to/monkeypatch.html#monkeypatching-returned-objects-building-mock-classes>


<a id="org6991e5a"></a>

## print

capture stdout and stderr to see only passed tests

    pytest -s                  # disable all capturing


<a id="org65be32c"></a>

## troubleshooting

ModuleNotFoundError: No module named 'micro<sub>file</sub><sub>server</sub>'

-   solution 1: pyproject.toml:

    [tool.pytest.ini_options]
    pythonpath = [ "." ]


<a id="org1d61210"></a>

## links

-   article <https://realpython.com/pytest-python-testing/>
-   <https://pypi.org/project/pytest/>
-   <https://github.com/pytest-dev/pytest/>
-   doc <https://docs.pytest.org/en/latest/contents.html>
    -   <https://docs.pytest.org/en/stable/index.html>
-   example: <https://github.com/okeeffed/hello-pytest>


<a id="org4c92495"></a>

# TODO collection of helpers and mock objects <https://github.com/simplistix/testfixtures>


<a id="org81e5a54"></a>

# static analysis tools:

-   Pylint - coding standards compliance and various error checkers,
    similar/duplicate code,
    <https://pylint.readthedocs.io/en/latest/user_guide/checkers/features.html>
-   Pyflakes - only errors checks, tries very hard not to produce false positives
-   flake8 - Pyflakes with style checks against PEP 8.
-   pycodestyle - Simple Python style checker in one Python file  to check
    the python code against the style conventions of PEP8.
-   <https://github.com/astral-sh/ruff>
    -   <https://github.com/erickgnavar/flymake-ruff>
-   Bandit - common security treats. <https://github.com/PyCQA/bandit>
-   Dodgy - secrets leak detection. <https://github.com/landscapeio/dodgy>
-   Pyright (Microsoft extension for Visual Studio Code)

statis type checkers - mypy, Pyre

<https://github.com/analysis-tools-dev/static-analysis#python>


<a id="orgaf5d83f"></a>

## security

Common Vulnerabilities and Exposures (CVE)

-   CVEs - We can count them and fix them
-   SCA - composition analysis tools.
    -   Mostly signature based
    -   3rd party and our own
-   vulnerabilities

Things that probably won’t hurt us

-   Good habits/code hygiene
-   Active development
-   Developers we trust
-   CVE and SCA clear


<a id="orgaf9b797"></a>

## mypy

reveal<sub>type</sub>() - To find out what type mypy infers for an expression anywhere in your program.


<a id="org95e1c07"></a>

### emacs fix

mypy /dev/stdin


<a id="org05fba32"></a>

### ex

    import random
    from typing import Sequence, TypeVar
    
    Choosable = TypeVar("Choosable", str, float)
    
    def choose(items: Sequence[Choosable]) -> Choosable:
        return random.choice(items)
    
    reveal_type(choose(["Guido", "Jukka", "Ivan"]))
    reveal_type(choose([1, 2, 3]))
    reveal_type(choose([True, 42, 3.14]))
    reveal_type(choose(["Python", 3, 7]))

    /dev/stdin:14: note: Revealed type is "builtins.str"
    /dev/stdin:16: note: Revealed type is "builtins.float"
    /dev/stdin:18: note: Revealed type is "builtins.float"
    /dev/stdin:20: error: Value of type variable "Choosable" of "choose" cannot be "object"  [type-var]
    /dev/stdin:20: note: Revealed type is "builtins.object"
    Found 1 error in 1 file (checked 1 source file)


<a id="org1d66a19"></a>

### troubleshooting

Missing library stubs or py.typed marker

-   PEP 561 - type information required in : 1) inline type annotations 2)


<a id="org2aecd84"></a>

### links

-   <https://mypy.readthedocs.io/en/stable/cheat_sheet_py3.html>
-   <https://realpython.com/python-type-checking/>
-   <https://en.wikipedia.org/wiki/Covariance_and_contravariance_%28computer_science%29>


<a id="org863ce50"></a>

# release as execuable  - Pyinstaller

Pyinstller: <https://pyinstaller.org/en/stable/usage.html>

<https://anshumanfauzdar.medium.com/using-github-actions-to-bundle-python-application-into-a-single-package-and-automatic-release-834bd42e0670>

Actions:

-   <https://github.com/AnshumanFauzdar/qwiklab-badge-checker>
-   example of usage <https://github.com/JackMcKew/pyinstaller-action-windows/blob/main/action.yml>
    -   <https://github.com/AnshumanFauzdar/qwiklab-badge-checker/blob/main/.github/workflows/build.yml>


<a id="orga95ac2f"></a>

# Documentation building with Sphinx

<https://github.com/kruzhok-team/fossdev/blob/devel/educational_materials/docs/content.md>


<a id="orgbc61f81"></a>

# troubleshooting

def a(l:dir = []):

1.  If the user provides an empty list your version will not use that list but instead create a new one, because
    an empty list is "falsy"
2.  empty list is created just once when the function is defined, not every time the function is called.

python tests/test<sub>main.py</sub> - ModuleNotFoundError: No module named

-   solution: PYTHONPATH=. python tests/test<sub>main.py</sub>

