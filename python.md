
# Table of Contents

1.  [tools 2022 pypi](#orgf2118e3)
    1.  [web frameworks](#org645e5fa)
    2.  [additional libraries](#orgcd511a2)
    3.  [machine learning frameworks](#org9712d18)
    4.  [cloud platforms do you use? \*This question is required.](#org498e7cd)
    5.  [ORM(s) do you use together with Python, if any? \*This question is required.](#org12ed8ad)
    6.  [Big Data tool(s) do you use, if any?  \*This question is required.](#org14b17db)
    7.  [Continuous Integration (CI) system(s) do you regularly use? \*This question is required.](#org46c4857)
    8.  [configuration management tools do you use, if any? \*This question is required.](#orga4a41c0)
    9.  [documentation tool do you use?  \*This question is required.](#org4efc5f9)
    10. [IDE features](#org0692ba0)
    11. [isolate Python environments between projects? \*This question is required.](#org6cf6c3c)
    12. [tools related to Python packaging do you use directly?  \*This question is required.](#org41ac93f)
    13. [application dependency management? \*This question is required.](#orgd903aab)
    14. [automated services to update the versions of application dependencies? \*This question is required.](#org1bc5ea6)
    15. [installing packages? \*This question is required.](#org304def9)
    16. [tool(s) do you use to develop Python applications? \*This question is required.](#org1d1217f)
    17. [job role(s)? \*This question is required.](#org74c559e)
2.  [theory](#org625994d)
    1.  [WSGI (Web Server Gateway Interface)(whiskey)](#org742b486)
3.  [install](#org2bae091)
    1.  [change Python version Ubuntu & Debian](#org9a98293)
4.  [scripting](#org0d7aaef)
    1.  [top-level script enironment](#org619b294)
    2.  [command line arguments](#org5c8b993)
    3.  [current dir](#org88b1fc8)
    4.  [unix logger](#orga3120f1)
5.  [Python theory](#orgbe8b09b)
    1.  [Python [ˈpʌɪθ(ə)n] паисэн](#org8568f84)
    2.  [philosophy](#org3b870b7)
    3.  [History](#orgd2f2314)
    4.  [Implementations](#orge67d464)
    5.  [Bytecode:](#orgdff4238)
    6.  [terms](#org75e103c)
    7.  [Indentation - Отступ слева and blank lines](#org30c0a18)
    8.  [mathematic](#orgaa95433)
6.  [Data model](#org45e7a4f)
    1.  [special types](#orga701926)
    2.  [theory](#org537fbc4)
    3.  [Types build-in ](#org7cb0eaf)
    4.  [Truth Value Testing ](#orgd4f371d)
    5.  [typed varibles or type hints](#orgef518cb)
    6.  [Shallow and deep copy operations](#org21b38e3)
7.  [Strings](#org7d77926)
    1.  [основы](#org74fcb13)
        1.  [multiline](#org8787367)
    2.  [**A formatted string literal or f-string**](#org4c472b1)
    3.  [**String Formatting Operator**](#org9a4de15)
    4.  [string literal prefixes](#orgeac3346)
    5.  [raw strings, Unicode, formatted](#org868facf)
    6.  [Efficient String Concatenation](#org1f7c8fc)
    7.  [byte string](#org3dd52e3)
8.  [Classes](#org4969ef4)
    1.  [basic](#orge00ae99)
    2.  [Special Attributes](#orgd41142e)
    3.  [inheritance](#orgb27f237)
        1.  [Constructor](#orgcde3d69)
        2.  [Subclassing:](#org3610a2e)
        3.  [built-in functions that work with inheritance:](#orgff378ae)
        4.  [example](#orgf6ccd48)
        5.  [Multiple inheritance - left-to-right](#orgd93fb6d)
        6.  [Abstract class (ABC - abstract base class)](#org4a23bec)
        7.  [Virtual sublasses](#org58adc1f)
        8.  [calling parent class constructor](#org02b2bf1)
    4.  [Getters and setters ](#orgba825ce)
    5.  [Polymorphism [pɔlɪˈmɔːfɪzm](#org4c2288c)
    6.  [Protocols or emulation](#org8640a3d)
    7.  [private and protected](#org8657f40)
    8.  [object](#orgf6a69c8)
    9.  [Singleton](#org6377a42)
        1.  [example](#orgae7fa4f)
        2.  [шаблон Monostate](#orga66e4b8)
    10. [anonumous class](#orgf8f4c90)
        1.  [1](#org1382af6)
9.  [modules and packages](#org60f576d)
    1.  [module special  attributes (Module level "dunders") [-ʌndə(ɹ)]](#org31f01ae)
10. [folders/files USECASES](#orgd3dbdc8)
11. [functions](#org21e0690)
    1.  [by value or by reference](#org073a1bd)
    2.  [Types of Аргументы функции](#org7a23bca)
    3.  [example](#org23d0b49)
    4.  [arguments, anonymous-lambda, global variables](#orgc3eb682)
    5.  [attributes](#orge91777f)
    6.  [function decorators](#org9ee9428)
    7.  [build-in](#org8335f1d)
    8.  [Closure](#orgc9d5f7d)
12. [asterisk(\*)](#orgea75630)
13. [with](#orgdf8f810)
    1.  [Context manager class TEMPLATE](#orgd32612f)
14. [Operators](#org9608d6c)
    1.  [basic](#org5058e7d)
    2.  [Precedence](#org0da7a9b)
    3.  [value unpacking](#org2e9663c)
    4.  [if, loops](#orgcefcb5a)
    5.  [Slicing Sequence](#orge4402c9)
15. [Traverse or iteration over containers](#org571e8ea)
    1.  [iterator object](#org25a1134)
    2.  [iterate dictionary](#org9b323f2)
16. [The Language Reference](#org106b7bb)
    1.  [yield and generator expression ](#orgb1a4774)
    2.  [function decorator](#org34c7c74)
    3.  [class decorator](#orgced5053)
    4.  [lines](#org413dca2)
    5.  [Indentation](#org6141c27)
    6.  [identifier [aɪˈdentɪfaɪər] or names](#orgd7c3493)
    7.  [Keywords Exactly as written here:](#org61124b4)
    8.  [Numeric literals](#org2741a66)
    9.  [Docstring and comments](#org9f7fccd)
    10. [Simple statements](#org1301861)
17. [The Python Standard Library](#org1ab6f47)
    1.  [Major libs:](#org2784d81)
    2.  [regex - import re](#org75a59b0)
        1.  [example](#org4baff48)
        2.  [get string between substring](#org4cae7ae)
    3.  [datetime](#orgbf8403e)
        1.  [datetime to date](#org3ee1681)
        2.  [date to datetime](#org2b174e5)
        3.  [current time](#org32fd588)
    4.  [file object](#org559767e)
18. [exceptions handling](#orgf1cfb99)
    1.  [explanation](#org57f128f)
    2.  [traceback](#org43a9175)
    3.  [examples](#org2105588)
19. [Logging](#org449df96)
    1.  [stderror](#org6f15a91)
    2.  [levels](#org8b3a22d)
20. [Collections](#org195e5e5)
    1.  [collections.Counter() - dict subclass for counting hashable objects](#org177b066)
    2.  [time complexity](#orga7572cf)
21. [Conventions](#org9a57e01)
    1.  [Whitespace in Expressions and Statements](#org8b8e397)
    2.  [naming](#orgcc4c374)
    3.  [docstring](#org3103fb1)
22. [Concurrency](#orge821b62)
    1.  [Process](#org90ad334)
    2.  [threading](#org4955bea)
        1.  [examples](#orge2d93b3)
        2.  [syncronization](#org62dc46c)
    3.  [multiprocessing](#orge9e8d92)
    4.  [example multiprocess, Threads, othe thread](#orgf3429b3)
23. [Performance Tips](#org4f173c0)
    1.  [string](#org2b9ab52)
    2.  [loop](#org6e471f7)
    3.  [Avoiding dots&#x2026;](#org278f8bc)
    4.  [avoid global variables](#orge485138)
    5.  [dict](#orgf203954)
24. [decorators](#orgc45efae)
25. [Assert](#org057f57e)
26. [Name convenience](#orgb787b9d)
27. [Debugging and Profiling](#org58d73ba)
    1.  [cProfile](#orgfef1ee6)
    2.  [small code measure 1](#org1e93f70)
    3.  [small code measure 2](#orgd9aaafe)
28. [inject](#org356819d)
    1.  [Callable](#orgd427352)
    2.  [links](#org7ed8b62)
29. [setuptools](#org40eace0)
30. [pip (package manager)](#org4886f03)
    1.  [wheels](#orgf11fbe0)
    2.  [virtualenv](#org546d37b)
    3.  [venv](#org0600687)
    4.  [update](#orgb385be7)
    5.  [requirements.txt](#orgac1c45b)
    6.  [errors](#orgbf75994)
    7.  [cache dir](#org07d5443)
        1.  [links](#orgf03bd3d)
    8.  [hashes ](#org6f5457f)
    9.  [add SSL certificate](#org45bdbbe)
        1.  [crt(not working)](#org6cfb786)
        2.  [pem(not working)](#org12e8466)
    10. [ignore SSL certificates](#orgac34dc8)
    11. [links](#org4a8e508)
31. [wheels](#org30dd36c)
32. [pdf 2 png](#org167663f)
    1.  [pdf2image](#org1573ef3)
    2.  [Wand](#org03464a7)
    3.  [PyMuPDF](#orgf2d628c)
33. [statsmodels](#org47f52a5)
    1.  [ACF, PACF](#org26d38e0)
    2.  [bar plot](#orgbbb9d67)
34. [XGBoost](#orge316291)
    1.  [usage](#org57bda73)
    2.  [categorical columns](#orgc260dde)
        1.  [Feature importance between numerical and categorical features](#org9e6b5ae)
    3.  [gpu support](#orgae4e01e)
    4.  [result value from leaf value](#org1a2338c)
    5.  [terms](#orge4574f2)
    6.  [xgb.DMatrix](#org1858195)
        1.  [LibSVM file format](#org7b9346f)
    7.  [parameters](#orge118d67)
    8.  [print important features](#orgb92f9d8)
    9.  [prune обрезание деревьев](#orgbc51b97)
    10. [permutation importance](#org33e8023)
    11. [model to if-else](#org1ae5c2c)
    12. [Errors](#org1dc9a06)
        1.  [ValueError: setting an array element with a sequence.](#orgf3ac784)
        2.  [label must be in [0,1] for logistic regression](#org91b0c60)
35. [Natasha & Yargy](#org40a77cd)
    1.  [yargy](#orga6d6c5b)
        1.  [yargy.tokenizer](#orgd0b2cc9)
        2.  [rules](#org3bcbf3c)
        3.  [match](#orge7cf068)
        4.  [предикаты](#orgbb0787a)
        5.  [нестандартные формы слова - рулетики](#orgbc96d0e)
        6.  [ex](#org67b715f)
        7.  [natasha](#orgf35c3d6)
        8.  [console](#org4738e7a)
        9.  [QT console](#org6078f99)
        10. [graphviz](#org5ac12f3)
        11. [IPython](#orga3f8d8c)
36. [Stanford NER - Java](#org4c3736f)
    1.  [train](#org8b5fa79)
    2.  [Ttraining data](#orgb0daeb9)
37. [DeepPavlov](#org8f769c9)
    1.  [Коммандная-строка](#org8511bbb)
    2.  [вспомогательные классы](#orgb5acf6e)
    3.  [in code](#orgc3e011c)
    4.  [installation](#org695f7c9)
    5.  [training](#org9fd3697)
        1.  [dataset<sub>iterators</sub>](#org31723f7)
    6.  [NLP pipeline json config](#org0742daa)
        1.  [configs](#orgb7547bf)
        2.  [parsing anal](#orgd16a46c)
        3.  [json](#org8e56598)
        4.  [examples](#org81178a7)
    7.  [prerocessors](#org8143d36)
        1.  [tokenizers](#orgf8a111d)
        2.  [Embedder [ɪmˈbede] - Deep contextualized word reprezentation](#org6d1ec7b)
    8.  [components](#orgb51cd68)
    9.  [Models](#orgcd49b02)
    10. [speelcheking](#org863be6e)
        1.  [Tie vocabulary](#org12e58d8)
    11. [Classification](#org8c3219b)
        1.  [bert](#orgb53ff5d)
        2.  [iterators](#org5db3681)
    12. [NER - componen](#orge27537d)
    13. [Custom component](#org26905d5)
38. [AllenNLP](#org19a789f)
39. [spaCy](#orgedc4368)
40. [fastText](#orga185407)
    1.  [install](#org339e4eb)
41. [rusvectores](#org83d6b8d)
42. [Natural Language Toolkit (NLTK)](#orgca1efb0)
    1.  [collocations](#orgabf2e21)
    2.  [Association measures for collocations (measure functions)](#org2335956)
    3.  [Taggers](#org6c8db8d)
    4.  [Корпус русского языка](#org84c0345)
43. [pymorphy2](#orgb05ab81)
44. [linux NLP](#orgd1dda24)
    1.  [count max words in line of file](#org38488a7)
45. [Audio - librosa](#orga1f2dfe)
    1.  [theory](#org4e4a765)
    2.  [generic audio characteristics](#orgc68dac2)
    3.  [python](#org2efb664)
    4.  [distinguish emotions](#org4e5f3ef)
    5.  [links](#org750568f)
46. [NER USΕ CASES](#org08237ca)
    1.  [Spelling correction algorithms or  (spell checker) or (comparing a word to a list of words)](#org8a3fc63)
    2.  [fuzzy string comparision или Приближённый поиск](#org50c88b1)
47. [TensorFlow (TF)](#org472a957)
    1.  [TF 2.0](#orgcdf5f63)
        1.  [tf.GradientTape API](#org3f3a4a8)
        2.  [tf.function](#org638d085)
        3.  [migrate 1 to 2](#orgff7c049)
        4.  [custome layer](#orgbffad43)
        5.  [decayed learning rate](#org99bb825)
        6.  [layer-wise learning rate in Tensorflow?](#org2279241)
    2.  [Save a model](#org5a9d253)
        1.  [v1 Saver loading:](#orgef457ea)
        2.  [v2 saving loading](#org1c1127e)
    3.  [install](#org5f75386)
    4.  [install from source](#orgedcd56d)
    5.  [APIs](#org122355a)
    6.  [tf.placeholder](#org8e59436)
    7.  [Logger = Disable](#org5060085)
    8.  [4D tensor ](#orge6afe34)
    9.  [install](#orgfecc410)
    10. [Deploy](#org1978376)
    11. [tensor](#org100d524)
    12. [hardware](#org3e6f351)
    13. [hello world](#org7ee1932)
    14. [main objects](#orge5c9799)
    15. [Переменные](#org624ecf2)
    16. [TensorBoard](#org8e0de8e)
    17. [GPU](#org6cc870a)
    18. [keras](#org09e5ed9)
    19. [CNN](#org644407f)
    20. [RNN and LSTM](#org71905d9)
        1.  [CNN](#org9f08748)
        2.  [batch](#org7c28396)
    21. [plot learning curve](#org2a462d9)
    22. [plot CNN layout](#orgf265942)
    23. [Optimizer](#org48e8828)
    24. [loss](#orgebc2cbc)
    25. [USE CASES](#org4ff9020)
        1.  [TF 2.0 convert mode h5 to weight and arch](#org94add40)
48. [PyTorch](#org104bd2a)
    1.  [numpy](#org7a1b98e)
    2.  [layers](#org301c183)
    3.  [noise](#orgf12a30f)
    4.  [basic nn and gradient](#orgf602a99)
        1.  [first](#orgf8ca215)
        2.  [second](#org91b15ca)
    5.  [LSTM](#orgb6a1af4)
        1.  [nn.LSTM](#orga6292ad)
        2.  [nn.LSTMCell](#orgd163a5e)
        3.  [numbers of parameters](#org05afeb5)
        4.  [basic](#org2351031)
        5.  [tagging model](#orgd6e93fb)
        6.  [variable-sized mini-batches](#org60fb9e3)
        7.  [GPU CUDA](#orgc78d53d)
        8.  [SGD](#orgbd8d580)
    6.  [train](#org7131d73)
    7.  [retain<sub>graph</sub>](#orgb02c773)
49. [hyperparemeter optimization library **test-tube**](#org8630b66)
50. [Keras](#orgc128735)
    1.  [install](#org2f9dfb5)
    2.  [API types](#org4d0117f)
    3.  [Sequential model](#org645b6d6)
    4.  [functional API](#org3fe09f6)
    5.  [Layers](#orga73aaf4)
        1.  [types](#org59410fd)
        2.  [Dense](#orgac5480c)
    6.  [Models](#org32f888a)
    7.  [Accuracy:](#org63c0207)
    8.  [input shape & text prepare](#orgda73c29)
    9.  [ValueError: Error when checking input: expected input<sub>1</sub> to have 3 dimensions, but got array with shape](#org8d6a632)
    10. [merge inputs](#org19302fa)
    11. [convolution](#orgcbdcbc0)
    12. [character CNN](#orgc37bace)
    13. [Early stopping](#org887e5ac)
    14. [plot history](#orgf195100)
    15. [ImageDataGenerator class](#orgb8aba37)
    16. [CNN Rotate](#org2eeafd5)
    17. [LSTM](#orgb5ec61d)
51. [Tesseract - Optical Character Recognition](#org21172c8)
    1.  [compilation](#org535100f)
    2.  [black and white list](#org440def3)
    3.  [notes](#orgdc3beb1)
    4.  [prepare](#org7024ad8)
    5.  [usage](#orge12f0a0)
52. [FEATURE ENGEERING](#org4315070)
    1.  [Featuretools - Aturomatic Feature Engeering](#org5c01a09)
        1.  [variable types](#orgfa98710)
        2.  [example one-to-many](#org78bf091)
        3.  [example many-to-many](#org4396f6d)
        4.  [oparations](#orga82826f)
        5.  [aggregation primitive - across a parent-child relationship:](#org7968e78)
        6.  [TransformPrimitive - one or more variables from an entity to one new:](#org78b7a53)
        7.  [create primitive](#org1401538)
        8.  [EXAMPLE from pandas](#org74dccc8)
    2.  [informationsfabirc](#orge4161fe)
    3.  [TPOT](#org0648a93)
    4.  [TSFRESH (time sequence)](#orga88d386)
    5.  [ATgfe - new feature](#org9e34353)
53. [support libraries](#org66b01f1)
54. [Microsoft nni AutoML framework (stupid shut)](#org47e82a1)
55. [help](#org0824433)
    1.  [build-in help](#org0e66d9a)
56. [IDE](#org1c4b18a)
    1.  [EPL](#org9ae89be)
    2.  [PyDev is a Python IDE for Eclipse](#org18808af)
        1.  [features](#org0ec6aec)
    3.  [Emacs](#orge56acbb)
        1.  [python in org mode](#org9364afe)
        2.  [Emacs](#orgc692259)
    4.  [PyCharm](#org2130ba0)
        1.  [installation:](#orge47685b)
        2.  [keys](#orgf9e6245)
    5.  [ipython](#orge7abd3c)
    6.  [geany](#org29f392f)
    7.  [BlueFish](#org2390ae3)
    8.  [Eric](#org5797b17)
57. [Jupyter Notebook](#org7f2a41b)
    1.  [jupyter [ˈʤuːpɪtə] - акцентом на интерактивности производимых вычислений](#org247699e)
    2.  [install](#org8f528bc)
    3.  [convert **to htmp**](#orgc40fed2)
    4.  [Widgets](#org6772e89)
        1.  [install](#orgf82429a)
        2.  [usage](#org8a3b10b)
        3.  [widget abbreviation](#org470820c)
        4.  [widget return type](#org57aff4f)
        5.  [Styling](#org5b30ce1)
    5.  [Hotkeys:](#org2ce46a2)
    6.  [emacs (sucks)](#orga2a9bb7)
    7.  [other](#org566ab89)
    8.  [lab](#org10045ba)
58. [USΕ CASES](#orged833a3)
    1.  [NET](#orga75193e)
        1.  [REST request](#orgc49efab)
        2.  [email IMAP](#org878c026)
        3.  [email DKIM](#org64f836d)
        4.  [urllib SOCKS](#org8a9b5d4)
    2.  [LISTS](#org525de12)
        1.  [all has one value](#orga41d224)
        2.  [2D list to 1D dict or list](#org994bbdd)
        3.  [list to string](#orgf769ec2)
        4.  [replace one with two](#org852499f)
        5.  [remove elements](#orgb9d0018)
        6.  [average](#orgb3fe6c3)
        7.  [[1, -2, 3, -4, 5]](#org2129f07)
        8.  [ZIP массивов с разной длинной](#orgac03a3b)
        9.  [Shuffle two lists](#org04a4831)
        10. [list of dictionaries](#orgab1436f)
        11. [closest in list](#org409ca23)
        12. [TIMΕ SEQUENCE](#org823814b)
        13. [split list in chunks](#org0027124)
    3.  [TIMΕSEQUENCE](#org0122361)
    4.  [FILES](#org41d15cb)
        1.  [Read JSON](#org4d337d7)
        2.  [CSV](#orgfeff711)
        3.  [read file](#orgbae09d5)
        4.  [Export to Excell](#orgc8fb02b)
        5.  [NameError: name 'A' is not defined](#org4b1db13)
        6.  [rename files (list directory)](#org77eabe6)
        7.  [current directory](#org9d193d9)
    5.  [STRINGS](#org688acb6)
        1.  [String comparision](#orgc2d322a)
        2.  [Remove whitespaces](#org9f30590)
        3.  [Unicode](#org0b07fe2)
        4.  [To find all the repeating substring in a given string](#orgcb1c533)
        5.  [first substring](#org999faf0)
    6.  [DICT](#orge7d174a)
        1.  [del](#org41d72d2)
    7.  [command line arguments](#org42c8749)
    8.  [way to terminate](#org562263c)
    9.  [JSON](#org9d9667f)
    10. [NN EQUAL QUANTITY FROM SAMPLES](#orged6dd51)
    11. [most common ellement](#orgfae424a)
    12. [print numpers](#orgd3d3643)
    13. [SCALE](#org1ee991d)
    14. [smoth](#org15bd5d4)
    15. [one-hot encoding](#org6b70cd7)
        1.  [we have [1,3] [1,2,3,4], [3,4] -> numbers](#org54d7ca8)
        2.  [column of strings](#orged08e22)
    16. [binary encoding](#orgefbf995)
    17. [map encoding](#orga3262ad)
    18. [Accuracy](#orgb80fac3)
    19. [garbage collect](#orgb753785)
    20. [Class **loop for member varibles**](#orga1bb0dc)
    21. [filter special characters](#org6953d42)
59. [Flask](#orgafcba5f)
    1.  [static files and debugging console](#org7c902e5)
        1.  [get URL](#org3eee472)
        2.  [path and console](#org2301829)
    2.  [start](#org2995dc2)
        1.  [start app.run()](#orged35a0f)
        2.  [start $flask run (recommended)](#org8a7793e)
    3.  [Quart](#org376ab21)
    4.  [GET](#org66e7212)
        1.  [variables](#org2a707d4)
        2.  [parameters ?key=value](#orgea864d8)
    5.  [dependencies](#org1d25b89)
    6.  [EXAMPLES](#orge089287)
    7.  [curl](#orgd9e5acf)
    8.  [response object](#org73d5b4b)
    9.  [request object](#orgf6c5002)
    10. [security](#org96d512b)
    11. [testing](#org8abc95a)
    12. [Flask-2.2.2 hashes ](#org36ad131)
    13. [USECASES](#orgc996dcf)
        1.  [check file exist](#org157552e)
        2.  [call POST method](#orgcff0aea)
        3.  [call GET method with arguments](#orgf694bf5)
        4.  [print headers](#orgd3a488a)
60. [Databases](#org37d5653)
    1.  [Groonga](#org0433658)
        1.  [Basic commands:](#org588eeac)
        2.  [python](#orgbec1add)
    2.  [Oracle](#orgdb6de01)
        1.  [sql](#orgea50ede)
    3.  [MySQL](#org5572c6f)
61. [Virtualenv](#orga0bc8a1)
    1.  [venv - default module](#org2536870)
    2.  [virtualenv](#orgea4b49c)
62. [ldap](#org8d974cc)
63. [Containerized development](#orge873ae8)
64. [security](#org0d34933)

-**- mode: Org; fill-column: 110; coding: utf-8; -**-

-   build in functions <https://docs.python.org/3/library/functions.html>
-   pypi <https://pypi.org/>
-   <https://www.tutorialspoint.com/python3/python_modules.htm>
-   doc <https://docs.python.org/3/contents.html>
-   <https://docs.python.org/3/index.html>
-   software <https://github.com/vinta/awesome-python>

TODO object by name or by link: muttable immutalbe 2019 <https://realpython.com/pointers-in-python/>

from os import environ as env
env.get('MYSQL<sub>PASSWORD</sub>')


<a id="orgf2118e3"></a>

# tools 2022 pypi


<a id="org645e5fa"></a>

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


<a id="orgcd511a2"></a>

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


<a id="org9712d18"></a>

## machine learning frameworks

-   Gensim
-   MXNet
-   NLTK
-   Theano


<a id="org498e7cd"></a>

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


<a id="org12ed8ad"></a>

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


<a id="org14b17db"></a>

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


<a id="org46c4857"></a>

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


<a id="orga4a41c0"></a>

## configuration management tools do you use, if any? \*This question is required.

-   None
-   Chef
-   Puppet
-   Custom solution
-   Ansible
-   Salt


<a id="org4efc5f9"></a>

## documentation tool do you use?  \*This question is required.

-   I don’t use any documentation tools
-   Sphinx
-   MKDocs
-   Doxygen


<a id="org0692ba0"></a>

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


<a id="org6cf6c3c"></a>

## isolate Python environments between projects? \*This question is required.

-   virtualenv
-   venv
-   virtualenvwrapper
-   hatch
-   Poetry
-   pipenv
-   Conda


<a id="org41ac93f"></a>

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


<a id="orgd903aab"></a>

## application dependency management? \*This question is required.

-   None
-   pipenv
-   poetry
-   pip-tools


<a id="org1bc5ea6"></a>

## automated services to update the versions of application dependencies? \*This question is required.

-   None
-   Dependabot
-   PyUp
-   Custom tools, e.g. a cron job or scheduled CI task
-   No, my application dependencies are updated manually


<a id="org304def9"></a>

## installing packages? \*This question is required.

-   None
-   pip
-   easy<sub>install</sub>
-   Conda
-   Poetry
-   pip-sync
-   pipx


<a id="org1d1217f"></a>

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


<a id="org74c559e"></a>

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


<a id="org625994d"></a>

# theory


<a id="org742b486"></a>

## WSGI (Web Server Gateway Interface)(whiskey)

-   calling convention for web servers to forward requests to web applications or frameworks written in the
    Python programming language.
-   like Java's "servlet" API.
-   WSGI middleware components, which implement both sides of the API, typically in Python code.


<a id="org2bae091"></a>

# install

pip3 install &#x2013;upgrade pip &#x2013;user


<a id="org9a98293"></a>

## change Python version Ubuntu & Debian

update-alternatives &#x2013;install /usr/bin/python python /usr/bin/python3.8 1
echo 1 | update-alternatives &#x2013;config python


<a id="org0d7aaef"></a>

# scripting


<a id="org619b294"></a>

## top-level script enironment

-   <https://docs.python.org/3.9/library/inspect.html>
-   <https://docs.python.org/3/library/functions.html?highlight=__file>\_\_
-   <https://docs.python.org/3/reference/import.html>
-   <https://geek-university.com/python/display-module-content/>

**\_<sub>name</sub>\_\_** - equal to '<span class="underline"><span class="underline">main</span></span>' when as a script or "python -m" or from an interactive prompt. '<span class="underline"><span class="underline">main</span></span>' is
 the name of the scope in which top-level code executes.

if <span class="underline"><span class="underline">name</span></span> == "<span class="underline"><span class="underline">main</span></span>": - not execute when imported

**\_<sub>file</sub>\_\_** - full path to module file


<a id="org5c8b993"></a>

## command line arguments

import sys

print 'Number of arguments:', len(sys.argv), 'arguments.'
print 'Argument List:', str(sys.argv)

getopt module for better


<a id="org88b1fc8"></a>

## current dir

script<sub>dir</sub>=os.path.dirname(os.path.abspath(<span class="underline"><span class="underline">file</span></span>))


<a id="orga3120f1"></a>

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


<a id="orgbe8b09b"></a>

# Python theory


<a id="org8568f84"></a>

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


<a id="org3b870b7"></a>

## philosophy

document **Zen of Python (PEP 20)**

-   Beautiful is better than ugly
-   Explicit is better than implicit
-   Simple is better than complex
-   Complex is better than complicated
-   Readability counts

Other

-   "there should be one—and preferably only one—obvious way to do it"
-   goal -  keeping it fun to use ( spam and eggs instead of the standard foo and bar)
-   pythonic - related to style (code is pythonic )
-   Pythonists, Pythonistas, and Pythoneers - питонутые


<a id="orgd2f2314"></a>

## History

-   1989
-   2000 - **Python 2.0** - cycle-detecting garbage collector and support for Unicode
-   2008 - **Python 3.0** - not completely backward-compatible - include the 2to3 utility, which automates (at
    least partially) the translation of Python 2 code to Python 3.
-   2015 - Python 3.5 - typed varibles
-   2016 -  Python 3.6 - asyncio, Formatted string literals, Syntax for variable annotations
-   Python 2.7 cannot be  translation  to Python 3.

3.7

-   breakpoint() -
-   @dataclass - class annotations shugar
-   contextvars module -  mechanism for managing Thread-local context variables, similar to thread-local storage (TLS), PEP 550

3.8

-   Positional-Only Parameter: pow(x, y, z=None, /)
-   Assignment Expressions: if (match := pattern.search(data)) is not None: -
-


<a id="orge67d464"></a>

## Implementations

**CPython**, the reference implementation of Python

-   interpreter and a compiler as it compiles Python code into bytecode before interpreting it
-   (GIL) problem - Concurrency can only be achieved with separate CPython interpreter processes managed by a multitasking
    operating system

**PyPy** -  just-in-time compiler. written completely in Python.

**Cython** - translates a Python script into C and makes direct C-level API calls into the Python interpreter

**Stackless Python** - a significant fork of CPython that implements microthreads; it does not use the C memory
stack, thus allowing massively concurrent programs.

**IronPython** -C#- use JIT- targeting the .NET Framework and Mono. created here known not to work under CPython

Jython, MicroPython, Numba, CircuitPython


<a id="orgdff4238"></a>

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


<a id="org75e103c"></a>

## terms

**binding** the name to the object - x = 2 - (generic) name x receives a reference to a separate, dynamically
 allocated object of numeric (int) type of value 2


<a id="org30c0a18"></a>

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


<a id="orgaa95433"></a>

## mathematic

-   **арифметика произвольной точности** длина чисел ограничена только объёмом доступной памяти
-   Extensive mathematics library, and the third-party library NumPy that further extends the native capabilities
-   a < b < c - support


<a id="org45e7a4f"></a>

# Data model

-   <https://docs.python.org/3/reference/datamodel.html>
-   <https://docs.python.org/3/library/stdtypes.html>

Five standard data types −

-   Numbers
-   String
-   List :list - []
-   Tuple :tuple - ()
-   Dictionary :dict - {}
-   Callable :callable
-   :object


<a id="orga701926"></a>

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


<a id="org537fbc4"></a>

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


<a id="org7cb0eaf"></a>

## Types build-in <a id="org28792f8"></a>

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


<a id="orgd4f371d"></a>

## Truth Value Testing <a id="org608030e"></a>

-   <https://docs.python.org/3/library/stdtypes.html>

false:

-   None and False.
-   zero of any numeric type: 0, 0.0, 0j, Decimal(0), Fraction(0, 1)
-   empty sequences and collections: '', (), [], {}, set(), range(0)


<a id="orgef518cb"></a>

## typed varibles or type hints

-   <https://docs.python.org/3/library/typing.html>
-   from typing import Dict, Tuple, Sequence, Any, Union, Tuple, Callable, TypeVar, Generic

    variable_name: type

function :

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


<a id="org21b38e3"></a>

## Shallow and deep copy operations

-   import copy
-   copy.copy(x)    Return a shallow copy of x.
-   copy.deepcopy(x[, memo])    Return a deep copy of x.
-   calss own copy: \_<sub>copy</sub>\_<sub>()</sub> and \_<sub>deepcopy</sub>\_<sub>()</sub>


<a id="org7d77926"></a>

# Strings

**Quotation [kwəʊˈteɪʃn] fot string**: single ('), double (") and triple (''' or """) quotes to denote string
 literals


<a id="org74fcb13"></a>

## основы

    S = 'str'; S = "str"; S = '''str''';

    para_str = """this is a long string that is made up of
    several lines and non-printable characters such as
    TAB ( \t ) and they will show up that way when displayed.
    NEWLINEs within the string, whether explicitly given like
    this within the brackets [ \n ], or just a NEWLINE within
    the variable assignment will also show up."""


<a id="org8787367"></a>

### multiline

1.  s = """My Name is Pankajin Developers community."""
2.  s =  ('asd' 'asd') = asdasd
3.  backslash

    s = "My Name is Pankaj. " \
        "website in Developers community."

1.  s = ' '.join(("My Name is Pankaj. I am the owner of", "JournalDev.com and"))


<a id="org4c472b1"></a>

## **A formatted string literal or f-string**

-   {repr(name)}  `=` {name!r}

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


<a id="org9a4de15"></a>

## **String Formatting Operator**

-   print ("My name is %s and weight is %d kg!" % ('Zara', 21))


<a id="orgeac3346"></a>

## string literal prefixes

-   <https://www.python.org/dev/peps/pep-0414/>

str or strings -  immutable sequences of Unicode code points.

-   **r' R' raw strings:** Raw strings do not treat the backslash as a special character at all. print (r'C:\\\nowhere')
-   **b' B' bytes (NOT str):** may only contain ASCII characters
-   ::


<a id="org868facf"></a>

## raw strings, Unicode, formatted

-   r'string' - treat backslashes as literal characters
-   f'string' or F'string' - f"He said his name is {name!r}." - formatted


<a id="org1f7c8fc"></a>

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


<a id="org3dd52e3"></a>

## byte string

b''

-   byte string tp unicode :  str.decode()
-   unicode to byte string: str.encode('')

Your string is already encoded with some encoding. Before encoding it to ascii, you must decode it first.
Python is implicity trying to decode it (That's why you get a UnicodeDecodeError not UnicodeEncodeError).


<a id="org4969ef4"></a>

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


<a id="orge00ae99"></a>

## basic

    class MyClass:
    	a=None
    c = MyClass()
    c.a = 3 # instance

    class MyClass:
        """MyClass.i and MyClass.f are valid attribute references"""
        i = 12345
        def __init__(self, a):
            self.i = a
        def f(self):
            print("f")

    x = MyClass() #instance ERROR!
    x.a = 2; #data attibute
    # MyClass.f and x.f — it is a method object, not a function object.

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


<a id="orgd41142e"></a>

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


<a id="orgb27f237"></a>

## inheritance


<a id="orgcde3d69"></a>

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


<a id="org3610a2e"></a>

### Subclassing:

-   direct - a - b
-   indirect - a - b - c
-   virtual - abstract base class

    class SubClassName (ParentClass1[, ParentClass2, ...]):
       'Optional class documentation string'
       class_suite


<a id="orgff378ae"></a>

### built-in functions that work with inheritance:

-   **isinstance(obj, int)** -  True only if obj.\_<sub>class</sub>\_\_ is int or some class derived from int
-   **issubclass(bool, int)** - True since bool is a subclass of int
-   type(ins) == a.\_<sub>class</sub>\_\_
-   type(ins) **is** Class<sub>name</sub>
-   isinstance(ins, Class<sub>name</sub>)
-   issubclass(ins.\_<sub>class</sub>\_\_, Class<sub>name</sub>)
-   class.mro() - get class.\_<sub>mro</sub>\_\_ attribute


<a id="orgf6ccd48"></a>

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


<a id="orgd93fb6d"></a>

### Multiple inheritance - left-to-right

-   Method Resolution Order (MRO) (какой метод вызывать из родителей) changes dynamically to support cooperative
    calls to super()   (**class.\_<sub>mro</sub>\_\_**) (obj.\_<sub>class</sub>\_\_.\_<sub>mro</sub>\_\_)

\_<sub>spam</sub> textually replaced with \_classname\_<sub>spam</sub> - в родительском классе при наследовании


<a id="org4a23bec"></a>

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


<a id="org58adc1f"></a>

### Virtual sublasses

Virtual subclass - subclass and their descendants of ABC. Made with <span class="underline">register</span> method which overloading
isinstance() and issubclass()

    class MyABC(metaclass=ABCMeta):    pass
    MyABC.register(tuple)
    assert issubclass(tuple, MyABC) # tuple is virtual subclass of MyABC now


<a id="org02b2bf1"></a>

### calling parent class constructor


<a id="orgba825ce"></a>

## Getters and setters <a id="org4bbf451"></a>

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


<a id="org4c2288c"></a>

## Polymorphism [pɔlɪˈmɔːfɪzm

**inheritance for shared behavior, not for polymorphism**

    class Square(object):
        def draw(self, canvas): pass

    class Circle(object):
        def draw(self, canvas): pass

    shapes = [Square(), Circle()]
    for shape in shapes:
        shape.draw('canvas')


<a id="org8640a3d"></a>

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
<td class="org-left">\_<sub>iter</sub>\_\_, next</td>
<td class="org-left">for x in coll:</td>
</tr>


<tr>
<td class="org-left">Comparision</td>
<td class="org-left">\_<sub>eq</sub>\_\_, <span class="underline"><span class="underline">gt</span></span> etc.</td>
<td class="org-left">x == y, x > y</td>
</tr>


<tr>
<td class="org-left">Numeric</td>
<td class="org-left">\_<sub>add</sub>\_\_, <span class="underline"><span class="underline">sub</span></span>, <span class="underline"><span class="underline">and</span></span>, etc.</td>
<td class="org-left">x+y, x-y, x&y ..</td>
</tr>


<tr>
<td class="org-left">String like</td>
<td class="org-left">\_<sub>str</sub>\_\_, <span class="underline"><span class="underline">unicode</span></span>, <span class="underline"><span class="underline">repr</span></span></td>
<td class="org-left">print(x)</td>
</tr>


<tr>
<td class="org-left">Attribute access</td>
<td class="org-left">\_<sub>getattr</sub>\_\_, <span class="underline"><span class="underline">setattr</span></span></td>
<td class="org-left">obj.attr</td>
</tr>


<tr>
<td class="org-left">Context managers</td>
<td class="org-left">\_<sub>enter</sub>\_\_, <span class="underline"><span class="underline">exit</span></span></td>
<td class="org-left">with open('a.txt') as f:f.read()</td>
</tr>
</tbody>
</table>


<a id="org8657f40"></a>

## private and protected

-   public - all
-   Protected: \_property
-   Provate: \_<sub>property</sub>


<a id="orgf6a69c8"></a>

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


<a id="org6377a42"></a>

## Singleton

-   simple
-   отложенный
-   Singleton на уровне модуля - Все модули по умолчанию являются синглетонами


<a id="orgae7fa4f"></a>

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


<a id="orga66e4b8"></a>

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


<a id="orgf8f4c90"></a>

## anonumous class

-   <https://docs.python.org/3/library/types.html#types.SimpleNamespace>
-   <https://docs.python.org/3/library/collections.html#collections.namedtuple>


<a id="org1382af6"></a>

### 1

class Bunch(dict):
    <span class="underline"><span class="underline">getattr</span></span>, <span class="underline"><span class="underline">setattr</span></span> = dict.get, dict.\_<sub>setitem</sub>\_\_

dict(x=1,y=2) or {'x':1,'y':2}

Bunch(dict())


<a id="org60f576d"></a>

# modules and packages

-   module - file
-   package - folder - must have: <span class="underline"><span class="underline">init</span></span>.py

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


<a id="org31f01ae"></a>

## module special  attributes (Module level "dunders") [-ʌndə(ɹ)]

-   \_<sub>name</sub>\_\_
-   \_<sub>doc</sub>\_\_
-   \_<sub>dict</sub>\_\_ - module’s namespace as a dictionary object
-   \_<sub>file</sub>\_\_ - is the pathname of the file from which the module was loaded, if it was loaded from a file.
-   \_<sub>annotations</sub>\_\_ - optional - dictionary containing variable annotations collected during module body execution


<a id="orgd3dbdc8"></a>

# folders/files USECASES

-   list files and directories deepth=1: os.listdir()->list
-   list only files deepth=1 os.listdir() AND os.path.isfile()


<a id="org21e0690"></a>

# functions

-   python does not support method overloading
-   Можно объявлять функции внутри функций
-   Функции видят область где они определены, а не где вызваны.
-   Если функция ничего не возвращает, то возвращает **None**
-   Функция может возвращать return a, b = (a,b) котороые присваиваются нескольким переменным : a,b =
    c()


<a id="org073a1bd"></a>

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


<a id="org7a23bca"></a>

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


<a id="org23d0b49"></a>

## example

    def functionname( parameters:type ) -> return_type:
       "function_docstring"
       function_suite
       return [expression]


    def readit(file :str, fun :callable) ->list:


<a id="orgc3eb682"></a>

## arguments, anonymous-lambda, global variables

**Anonymous Functions**: - one-line version of a function

    lambda [arg1 [,arg2,.....argn]]:expression
    (lambda x, y: x + y)(1, 2)

**global variables** can be accessesd from all functions (except lambda??? - working in console)

    # global Money  # Uncomment to replace local Money to global.
      Money = Money + 1 #local


<a id="orge91777f"></a>

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


<a id="org9ee9428"></a>

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


<a id="org8335f1d"></a>

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
-   **zip(\*iterables):** Make an iterator of tuples that aggregates elements from each of the
    iterables. list(zip([1, 2, 3],[1, 2, 3])) = [(1, 1), (2, 2), (3, 3)]
-   **\_<sub>import</sub>\_<sub>(name, globals=None, locals=None, fromlist=(), level=0)</sub>:** not needed in everyday Python
    programming

---

-   **class bool([x]):** standard truth testing procedure see [6.4](#org608030e)
-   **class bytearray([source[, encoding[, errors]]]):** -mutable If it is a string, you must also give the
    encoding - it will use str.encode()
-   **class bytes([source[, encoding[, errors]]]):** -immutable
-   **class complex([real[, imag]]):** complex('1+2j'). - default - 0j
-   **class dict(\*\*kwarg):** dict(one=1, two=2, three=3) = {'one': 1, 'two': 2, 'three': 3}; dict([('two', 2),
    ('one', 1), ('three', 3)])
-   **class dict(mapping, \*\*kwarg):** ????
-   **class dict(iterable, \*\*kwarg):** dict(zip(['one', 'two', 'three'], [1, 2, 3]))
-   **class float([x]):** from a number or string x.
-   **class frozenset([iterable]):** see [6.3](#org28792f8).
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


<a id="orgc9d5f7d"></a>

## Closure

    def compose_greet_func(name):
        def get_message():
            return "Hello there "+name+"!"

        return get_message

    greet = compose_greet_func("John")
    print(greet())


<a id="orgea75630"></a>

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


<a id="orgdf8f810"></a>

# with

with ContexManager() as c1, ContexManager() as c2:


<a id="orgd32612f"></a>

## Context manager class TEMPLATE

    class DatabaseConnection(object):
        def __enter__(self):
            # make a database connection and return it
            ...
            return self.dbconn

        def __exit__(self, exc_type, exc_val, exc_tb):
            # make sure the dbconnection gets closed
            self.dbconn.close()


<a id="org9608d6c"></a>

# Operators

Ternary operation:    a if condition else b


<a id="org5058e7d"></a>

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


<a id="org0da7a9b"></a>

## Precedence

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


<a id="org2e9663c"></a>

## value unpacking

    x=("v1", "v2")
    a,b = x
    print a,b
    # v1 v2

    T=(1,)
    b,=T
    # b= 1


<a id="orgcefcb5a"></a>

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
    else:
       print num, 'is a prime number'


    break # Terminates the loop
    continue # skip the remainder
    pass # null operation - just stupid empty operator - nothing else.

    #Compcat loops
    [print(x,y) for x in range(1000) for y in range(x, len(range(1000)))]

    for item in array: array2.append (item)


<a id="orge4402c9"></a>

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


<a id="org571e8ea"></a>

# Traverse or iteration over containers

-   see [16.1](#org7381246)


<a id="org25a1134"></a>

## iterator object

Behind the scenes  for statement calls **iter()**- **iterator object**

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


<a id="org9b323f2"></a>

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


<a id="org106b7bb"></a>

# The Language Reference

-   <https://docs.python.org/3/reference/>


<a id="orgb1a4774"></a>

## yield and generator expression <a id="org7381246"></a>

**Generator expressions** - (expression comp<sub>for</sub>) - (x\*y for x in range(10) for y in range(x, x+10)) =
  <generator object

Yield - используется для создания генератора. используется для создания лопа.

-   используется только в функции.
-   как return только останавливается после возврата если в лупе или в других случаях
-   async def - asynchronous generator - not iterable - <async<sub>generator</sub> object -(Coroutine objects)
-   async gen - not implement <span class="underline"><span class="underline">iter</span></span> and <span class="underline"><span class="underline">next</span></span> methods

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


<a id="org34c7c74"></a>

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


<a id="orgced5053"></a>

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


<a id="org413dca2"></a>

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


<a id="org6141c27"></a>

## Indentation

-   Leading whitespace (spaces and tabs)
-   determine the grouping of statements
-   **TabError** - if a source file mixes tabs and spaces in a way that makes the meaning dependent on the worth
    of a tab in spaces

Tabs are replaced - 1-7


<a id="orgd7c3493"></a>

## identifier [aɪˈdentɪfaɪər] or names

[A-Za-z<sub>(0-9 except for firest char)</sub>] - case sensitive

-   and unicode <https://www.dcl.hpi.uni-potsdam.de/home/loewis/table-3131.html>

Reserved classes of identifiers

-   \_\*
-   \\\_\\\_\\\*\\\_\\\_
-   \_<sub>\*</sub>


<a id="org61124b4"></a>

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


<a id="org2741a66"></a>

## Numeric literals

-   integers
-   floating point numbers - 3.14    10.    .001    1e100    3.14e-10    0e0    3.14<sub>15</sub><sub>93</sub>
-   imaginary numbers ????? - 3.14j   10.j    10j     .001j   1e100j   3.14e-10j   3.14<sub>15</sub><sub>93j</sub>

-1 - expression composed of the unary operator ‘-‘ and the literal 1


<a id="org9f7fccd"></a>

## Docstring and comments

first thing in a class/function/module

'''
This is a multiline
comment.
'''


<a id="org1301861"></a>

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


<a id="org1ab6f47"></a>

# The Python Standard Library

-   ref <https://docs.python.org/3/library/index.html#library-index>
-   tutorial <https://docs.python.org/3/tutorial/stdlib.html>


<a id="org2784d81"></a>

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


<a id="org75a59b0"></a>

## regex - import re

-   <https://docs.python.org/3/howto/regex.html>
-   <https://docs.python.org/3/library/re.html>

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


<a id="org4baff48"></a>

### example

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


<a id="org4cae7ae"></a>

### get string between substring

res = re.search("123(.\*)789", "123456789)
res.group(1) # 456


<a id="orgbf8403e"></a>

## datetime


<a id="org3ee1681"></a>

### datetime to date

d.date()


<a id="org2b174e5"></a>

### date to datetime


<a id="org32fd588"></a>

### current time

datetime.datetime.now()

-   .time() or date()


<a id="org559767e"></a>

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


<a id="orgf1cfb99"></a>

# exceptions handling

-   syntax errors - repeats the offending line and displays a little ‘arrow’ pointing
-   exceptions
    -   last line indicates what happened: **stack traceback** and **ExceptionType: detail based on the type and what
        caused it**
    -   exception may have exception’s **argument**

Words: **try, except, else, finally, raise, with**

-   **BaseException** - root exception
-   **Exception** - non-system-exiting exceptions are derived from this class
-   **Warning** -    warnings.warn("Warning&#x2026;&#x2026;&#x2026;..Message")


<a id="org57f128f"></a>

## explanation

    try:
        foo = open("foo.txt")
    except IOError:
        print("error")
    else: # if no exception in try block
        print(foo.read())
    finally: # always
        print("finished")


<a id="org43a9175"></a>

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


<a id="org2105588"></a>

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


<a id="org449df96"></a>

# Logging

-   <https://docs.python.org/3/library/logging.html>

    logging.basicConfig(level=logging.NOTSET)
    root_logger = logging.getLogger()

or

    logger = logging.getLogger(__name__)
    logger.setLevel(logging.NOTSET)


<a id="org6f15a91"></a>

## stderror

deafult:

-   out stderr
-   level = WARNING


<a id="org8b3a22d"></a>

## levels

-   CRITICAL	50
-   ERROR		40
-   WARNING	30
-   INFO		20
-   DEBUG		10
-   NOTSET	0


<a id="org195e5e5"></a>

# Collections

-   Abstract Base Classes <https://docs.python.org/3/library/collections.abc.html>


<a id="org177b066"></a>

## collections.Counter() - dict subclass for counting hashable objects

    import collections
    cnt = Counter()
    cnt[word] += 1
    most_common(n)

Return a list of the n most common elements and their counts from the most common to the least.


<a id="orga7572cf"></a>

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


<a id="org9a57e01"></a>

# Conventions

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


<a id="org8b8e397"></a>

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


<a id="orgcc4c374"></a>

## naming

case sensitive

-   Class names start with an uppercase letter. All other identifiers start with a lowercase letter.
-   Starting an identifier with a single leading underscore indicates that the identifier is **private** = \_i
-   two leading underscores indicates a strongly private identifier = \_<sub>i</sub>
-   Never use the characters 'l' (lowercase letter el), 'O' (uppercase letter oh), or 'I' (uppercase letter eye)
    as single character variable names.

**Package and Module Names** - all-lowercase names. \_ - не рекомендуется. C/C++ module has a leading underscore
 (e.g. \_socket).

**Class Names** - CapWords, or CamelCase

**functions and varibles** Function and varibles names should be lowercase, with words separated by underscores as necessary
to improve readability.

-   Always use **self** for the first argument to instance methods.
-   Always use **cls** for the first argument to class methods.

**Constants** MAX<sub>OVERFLOW</sub>


<a id="org3103fb1"></a>

## docstring

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


<a id="orge821b62"></a>

# Concurrency

modules:

-   **threading** - Thread-based parallelism - fast - better for I/O-bound applications due to the Global Interpreter Lock
-   **multiprocessing** — Process-based parallelism - slow - better for CPU-bound applications
-   **concurrent.futures** -  high-level interface for asynchronously executing callables

Notes:

-   **Preferred approach** is to concentrate all access to a resource in a single thread and then use the **queue**

module to feed that thread with requests from other threads.

-   GIL - mutex - preventing multiple threads from
    executing Python bytecodes at once
    -   <https://docs.python.org/3/c-api/init.html#thread-state-and-the-global-interpreter-lock>
    -   <https://wiki.python.org/moin/GlobalInterpreterLock>


<a id="org90ad334"></a>

## Process

    from multiprocessing import Process
    # not daemon don't allow to have subprocess
    proc: Process = Process(target=self.perform_job, args=(job, queue), daemon=False)
    proc.start()
    proc.join(WAIT_FOR_THREAD)  # seconds
    if proc.is_alive():
      pass

    from multiprocessing.pool import Pool
    def callback_result(result):
       print(result)
    # Pool
    executor = Pool(processes=PAGE_THREADS)  # clear leaked memory with process death
    for i, fp in enumerate(filelist):
        executor.apply_async(
    	page_processing, args=(i, fp, self.id_processing, self.doc_classes, self.barcodes_only),
    	callback=callback_result)
    executor.close()
    executor.join()


<a id="org4955bea"></a>

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


<a id="orge2d93b3"></a>

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


<a id="org62dc46c"></a>

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


<a id="orge9e8d92"></a>

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


<a id="orgf3429b3"></a>

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


<a id="org4f173c0"></a>

# Performance Tips

<https://wiki.python.org/moin/PythonSpeed/PerformanceTips>


<a id="org2b9ab52"></a>

## string

-   Avoid:
    -   out = "<html>" + head + prologue + query + tail + "</html>"
-   Instead, use
    -   out = "<html>%s%s%s%s</html>" % (head, prologue, query, tail)


<a id="org6e471f7"></a>

## loop

-   map(function, list)
-   iterator = (s.upper() for s in oldlist)


<a id="org278f8bc"></a>

## Avoiding dots&#x2026;

-   <https://docs.python.org/3.8/library/functions.html>


<a id="orge485138"></a>

## avoid global variables


<a id="orgf203954"></a>

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


<a id="orgc45efae"></a>

# decorators

-   @property - [8.4](#org4bbf451) - function became read-only variable (getter)
-   @staticmethod - to static method, dont uses **self**
-   @classmethod - it receives the class object as the first parameter instead of an instance of the class. May
    be called for class C.f() or for instance C().f(), self.f(). Used for singleton.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Class Method</th>
<th scope="col" class="org-left">Static Method</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Defined as Mutable via inheritance</td>
<td class="org-left">Immutable via inheritance</td>
</tr>


<tr>
<td class="org-left">The first parameter as cls is to be taken in the class method.</td>
<td class="org-left">not needed</td>
</tr>


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


<a id="org057f57e"></a>

# Assert

    assert Expression[, Arguments]

If the expression is false, Python raises an **AssertionError** exception. Python uses **ArgumentExpression** as the
argument for the AssertionError.

    assert False, "Error here"

python.exe - The \`\`-O\`\` switch removes assert statements, the \`\`-OO\`\` switch removes both assert statements
and <span class="underline"><span class="underline">doc</span></span> strings.


<a id="orgb787b9d"></a>

# Name convenience

-   <https://www.python.org/dev/peps/pep-0008/>
-   Modules should have short, all-lowercase names. Underscores can be used in the module name if it improves
    readability.
-   Python packages should also have short, all-lowercase names, although the use of underscores is discouraged.
-   Class Names - CapWords convention
-   function names - lowercase with words separated by underscores as necessary to improve readability


<a id="org58d73ba"></a>

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


<a id="orgfef1ee6"></a>

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


<a id="org1e93f70"></a>

## small code measure 1

python3 -m timeit '"-".join(str(n) for n in range(100))'

    def test():
        """Stupid test function"""
        L = [i for i in range(100)]

    if __name__ == '__main__':
        import timeit
        print(timeit.timeit("test()", setup="from __main__ import test"))


<a id="orgd9aaafe"></a>

## small code measure 2

    import time
    start_time = time.time()
    main()
    print("--- %s seconds ---" % (time.time() - start_time))


<a id="org356819d"></a>

# inject

<https://github.com/ivankorobkov/python-inject>
Dependency injection


<a id="orgd427352"></a>

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


<a id="org7ed8b62"></a>

## links

<https://github.com/ivankorobkov/python-inject>


<a id="org40eace0"></a>

# setuptools

defines the dependencies for a single project, Requirements Files are often used to define the requirements
for a complete Python environment.

-   It is not considered best practice to use install<sub>requires</sub> to pin dependencies to specific versions, or to
    specify sub-dependencies (i.e. dependencies of your dependencies).

    install_requires=[
       'A>=1,<2', # not allow v2
       'B>=2'
    ]


<a id="org4886f03"></a>

# pip (package manager)

Устанавливается вместе с Python

-   (pip3 for Python 3) by default   - MIT -
-   pip.pypa.io

**Python Package Index** -  official third-party software repository for Python


<a id="orgf11fbe0"></a>

## wheels

**“Wheel”** is a built, archive format that can greatly speed installation compared - .whl

to disable wheel:

-   &#x2013;no-cache-dir
-   &#x2013;no-binary=:all:


<a id="org546d37b"></a>

## virtualenv

Может быть так, что проект А запрашивает версию 1.0.0, в то время как проект Б запрашивает более новую версию
2.0.0, к примеру.

-   не может различать версии в каталоге «site-packages»

pip install virtualenv


<a id="org0600687"></a>

## venv

создать:

    python -m venv /path/to/new/virtual/environment

-   pyvenv.cfg - created
-   bin (or Scripts on Windows) containing a copy/symlink of the Python binary/binaries
-   в директории с интерпретатором или уровнем выше ищется файл с именем pyvenv.cfg;
-   если файл найден, в нём ищется ключ home, значение которого и будет базовой директорией;
-   в базовой директории идёт поиск системной библиотеки (по спец. маркеру os.py);
-

Использовать:

    .\Scripts\activate.bat


<a id="orgb385be7"></a>

## update

pip3 install &#x2013;upgrade pip &#x2013;user

-   устаревшие: pip3 list &#x2013;outdated
-   обновить: pip3 install &#x2013;upgrade SomePackage


<a id="orgac1c45b"></a>

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


<a id="orgbf75994"></a>

## errors

Traceback (most recent call last):
  File "/usr/bin/pip3", line 9, in <module>
    from pip import main
ImportError: cannot import name 'main'

SOLVATION: alias pip3="*home/u2*.local/bin/pip3"


<a id="org07d5443"></a>

## cache dir

to reduce the amount of time spent on duplicate downloads and builds.

-   cached:
    -   http responses
    -   Locally built wheels
-   pip cache dir


<a id="orgf03bd3d"></a>

### links

<https://pip.pypa.io/en/latest/topics/caching/>


<a id="org6f5457f"></a>

## hashes <a id="orgc37fc5d"></a>

-   pip install package &#x2013;require-hashes
-   Requirements must be pinned with ==
-   weak hashes: md5, sha1, and sha224

-   python -m pip download &#x2013;no-binary=:all: SomePackage
-   python -m pip hash &#x2013;algorithm sha512 ./pip<sub>downloads</sub>/SomePackage-2.2.tar.gz
-   pip install &#x2013;no-cache-dir &#x2013;no-binary=:all: &#x2013;require-hashes &#x2013;user -r requirements.txt

FooProject == 1.2 &#x2013;hash=sha256:2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824 \\
  &#x2013;hash=sha256:486ea46224d1bb4fb680f34f7c9ad96a8f24ec88be73ea8e5a6c65260e9cb8a7


<a id="org45bdbbe"></a>

## add SSL certificate

export PIP<sub>CERT</sub>= my-cert.pem


<a id="org6cfb786"></a>

### crt(not working)

-   pip config set global.cert path/to/ca-bundle.crt
-   pip config list
-   conda config &#x2013;set ssl<sub>verify</sub> path/to/ca-bundle.crt
-   conda config &#x2013;show ssl<sub>verify</sub>

-   git config &#x2013;global http.sslVerify true
-   git config &#x2013;global http.sslCAInfo path/to/ca-bundle.crt

<https://stackoverflow.com/questions/39356413/how-to-add-a-custom-ca-root-certificate-to-the-ca-store-used-by-pip-in-windows>


<a id="org12e8466"></a>

### pem(not working)

pip config set global.cert /home/RootCA3.pem - указываем путь к самоподписномму серту, если возникают ошибки установки модулей питона.

-   python -c "import ssl; print(ssl.get<sub>default</sub><sub>verify</sub><sub>paths</sub>())"
-   add pem to path


<a id="orgac34dc8"></a>

## ignore SSL certificates

pip install &#x2013;trusted-host pypi.org &#x2013;trusted-host files.pythonhosted.org <package<sub>name</sub>>


<a id="org4a8e508"></a>

## links

<https://pip.pypa.io/en/latest/topics/secure-installs/>


<a id="org30dd36c"></a>

# wheels


<a id="org167663f"></a>

# pdf 2 png


<a id="org1573ef3"></a>

## pdf2image

require poppler-utils

-   wraps pdftoppm and pdftocairo
-   to PIL image


<a id="org03464a7"></a>

## Wand

pip3 install Wand

ImageMagic binding


<a id="orgf2d628c"></a>

## PyMuPDF

pip3 install PyMuPDF


<a id="org47f52a5"></a>

# statsmodels

-   <https://github.com/statsmodels/statsmodels>
-   <https://www.coursera.org/lecture/data-analysis-applications/avtokorrieliatsiia-4PEHZ>
-   <https://machinelearningmastery.com/gentle-introduction-autocorrelation-partial-autocorrelation/>
-   <https://en.wikipedia.org/wiki/Partial_autocorrelation_function>


<a id="org26d38e0"></a>

## ACF, PACF

    from statsmodels.graphics.tsaplots import plot_acf
    from matplotlib import pyplot
    series = read_csv('seasonally_adjusted.csv', header=None)
    plot_acf(series, lags = 150) #  lag values along the x-axis and correlation on the y-axis between -1 and 1
    plot_pacf(series) # не понять. короче, то же самое, только более короткие корреляции не мешают
    pyplot.show()


<a id="orgbbb9d67"></a>

## bar plot

    loan_type_count = data['Loan Type'].value_counts()
    sns.set(style="darkgrid")
    sns.barplot(loan_type_count.index, loan_type_count.values, alpha=0.9)


<a id="orge316291"></a>

# XGBoost

-   <https://github.com/dmlc/xgboost>
-   doc <https://xgboost.readthedocs.io/en/latest/>
-   parameters tunning <https://xgboost.readthedocs.io/en/latest/tutorials/param_tuning.html>

One natural regularization parameter is the number of gradient boosting iterations M (i.e. the number of trees
in the model when the base learner is a decision tree).


<a id="org57bda73"></a>

## usage

    import xgboost as xgb

or

    from xgboost import XGBClassifier - multi:softprob if classes > 2

for multiclass classification:

-   from sklearn.preprocessing import LabelBinarizer
-   y = np.array(['apple', 'pear', 'apple', 'orange'])
-   y<sub>dense</sub> = LabelBinarizer().fit<sub>transform</sub>(y) - [ [1 0 0],[0 0 1],[1 0 0],[0 0 1] ]


<a id="orgc260dde"></a>

## categorical columns

The politic of XGBoost is to not have a special support for **categorical variables**. It s up to you to
manage them before providing the features to the algo.

If booster=='gbtree' (the default), then XGBoost can handle categorical variables encoded as numeric
directly, without needing dummifying/one-hotting. Whereas if the label is a string (not an integer)
then yes we need to comvert it.


<a id="org9e6b5ae"></a>

### Feature importance between numerical and categorical features

<https://discuss.xgboost.ai/t/feature-importance-between-numerical-and-categorical-features/245>

one-hot encoding. Consequently, each categorical feature transforms into N sub-categorical features,
where N is the number of possible outcomes for this categorical feature.

Then each sub-categorical feature would compete with the rest of sub-categorical features and all
numerical features. It is much easier for a numerical feature to get higher importance ranking.

What we can do is to set importance<sub>type</sub> to weight and then add up the frequencies of
sub-categorical features to obtain the frequency of each categorical feature.


<a id="orgae4e01e"></a>

## gpu support

    tree_method = 'gpu_hist'
    gpu_id = 0  (optional)


<a id="org1a2338c"></a>

## result value from leaf value

The final probability prediction is obtained by taking sum of leaf values (raw scores) in all the trees and
then transforming it between 0 and 1 using a **sigmoid** function. (1 / (1 + math.exp(-x)))

    leaf = 0.1111119 #  raw score
    result = 1/(1+ np.exp(-(leaf))) = 0.5394 # probability score -  logistic function

    xgb.plot_tree(bst, num_trees=num_round-1) # default 0 tree

    print(bst.predict(t, ntree_limit=1)) # first 0 tree, default - all


<a id="orge4574f2"></a>

## terms

-   instance or entity - line
-   feature - column
-   data - list of instances - 2D
-   labels - 1D list of labels for instances


<a id="org1858195"></a>

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


<a id="org7b9346f"></a>

### LibSVM file format

    1 101:1.2 102:0.03
    0 1:2.1 10001:300 10002:400

-   Each line represent a single instance
-   1,0 - labels - probability values in [0,1]
-   101, 102 - feature indices
-   1.2, 0.03 - feature values

    xgb.DMatrix('/home/u2/Downloads/agaricus.txt.train')
    xgb.DMatrix(train.csv?format=csv&label_column=0)


<a id="orge118d67"></a>

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


<a id="orgb92f9d8"></a>

## print important features

    import matplotlib.pyplot as plt
    import matplotlib
    matplotlib.use('TkAgg')

    xgb.plot_importance(bst)
    plt.show()


<a id="orgbc51b97"></a>

## TODO prune обрезание деревьев


<a id="org33e8023"></a>

## permutation importance

for XGBClassificator (binary) - sklearn.inspection.permutation<sub>importance</sub>

other - shap values


<a id="org1ae5c2c"></a>

## model to if-else

<https://towardsdatascience.com/xgboost-deployment-made-easy-6e11f4b3f817>


<a id="org1dc9a06"></a>

## Errors


<a id="orgf3ac784"></a>

### ValueError: setting an array element with a sequence.


<a id="org91b0c60"></a>

### label must be in [0,1] for logistic regression


<a id="org40a77cd"></a>

# Natasha & Yargy

-   pip install jupyter
-   pip install yargy ipymarkup    - подсветка разметки
-   jupyter.exe notebook
-   graphviz и вручную настроил PATH на его bin


<a id="orga6d6c5b"></a>

## yargy

-   **yarky tokenizer** <https://yargy.readthedocs.io/ru/latest/reference.html>
-   **yargy** <https://yargy.readthedocs.io/ru/latest/index.html>
-   MIT License

Недостатки:

-   slow
-   не гибкий
-   нелья построить правила с условиями


<a id="orgd0b2cc9"></a>

### yargy.tokenizer

    from yargy.tokenizer import MorphTokenizer # используется по умолчанию
    t = MorphTokenizer()
    list(t('asds'))[0].value
    list(t('asds'))[0].normalized

Его правила:

-   TokenRule('RU', '[а-яё]+'),
-   TokenRule('LATIN', '[a-z]+'),
-   TokenRule('INT', '\d+'),
-   TokenRule('PUNCT','[-\\\\/!#$%&()\[\]\\\*\\+,\\.:;<=>?@^\_\`{|}~№…"\\'«»„“ʼʻ”]'),
-   TokenRule('EOL', '[\n\r]+'),
-   TokenRule('OTHER', '&sect;')]

убрать часть правил:
tokenizer = Tokenizer().remove<sub>types</sub>('EOL')


<a id="org3bcbf3c"></a>

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


<a id="orge7cf068"></a>

### match

-   <https://github.com/natasha/yargy/blob/master/yargy/parser.py>


<a id="orgbb0787a"></a>

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


<a id="orgbc96d0e"></a>

### нестандартные формы слова - рулетики

-   Т библиотека?
-   уменьшительно ласкательные приводить к стандартной офрме, словарики?


<a id="org67b715f"></a>

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


<a id="orgf35c3d6"></a>

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


<a id="org4738e7a"></a>

### console

-   <https://jupyter.org/documentation>


<a id="org6078f99"></a>

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


<a id="org5ac12f3"></a>

### graphviz

-   graphviz - <https://graphviz.gitlab.io/download/> - визуализация графов
    <https://ru.wikipedia.org/wiki/DOT_(%D1%8F%D0%B7%D1%8B%D0%BA)>
-   Установить PATH на *bin* вручную
-   предназначен для работы внутри jupyter Notebook
-   pip3 install PyQt5

<https://stackoverflow.com/questions/41942109/plotting-the-digraph-with-graphviz-in-python-from-dot-file>

<https://www.youtube.com/watch?time_continue=1027&v=NQxzx0qYgK8>

m.tree.as<sub>dot</sub>.<sub>repr</sub><sub>svg</sub><sub>()</sub>  - выдает что-то для graphiz


<a id="orga3f8d8c"></a>

### IPython


<a id="org4c3736f"></a>

# Stanford NER - Java

-   Conditional Random Field (CRF)
-   Stanford NER <https://nlp.stanford.edu/software/CRF-NER.shtml#Starting>
-   FAQ <https://nlp.stanford.edu/software/crf-faq.html>
-   article <https://towardsdatascience.com/a-review-of-named-entity-recognition-ner-using-automatic-summarization-of-resumes-5248a75de175>
-   article <https://medium.com/@mohangupta13/stanford-corenlp-training-your-own-custom-ner-tagger-348195f54d97>
-   coreNLP <https://stanfordnlp.github.io/CoreNLP/index.html>


<a id="org8b5fa79"></a>

## train

You give the data file, the meaning of the columns, and what features to generate via a properties file.


<a id="orgb0daeb9"></a>

## Ttraining data

-   Dataturks NER tagger


<a id="org8f769c9"></a>

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


<a id="org8511bbb"></a>

## Коммандная-строка

python .\deeppavlov\deep.py interact ner<sub>rus</sub> [-d]

-   взаимодействие, тестирование
-   ner<sub>rus</sub> - C:\Users\Chepilev<sub>VS\AppData\Local\Programs\Python\Python36\lib\site</sub>-packages\deeppavlov\configs\ner\ner<sub>rus.json</sub>


<a id="orgb5acf6e"></a>

## вспомогательные классы

-   simple<sub>vocab</sub>
    -   self.<sub>t2i</sub>[token] = self.count - индексы токенов
    -   self.<sub>i2t.append</sub>(token) - токены индексов


<a id="orgc3e011c"></a>

## in code

    #------------ build model and interact ---------
    from deeppavlov import configs
    from deeppavlov.core.commands.infer import build_model

    faq = build_model(configs.faq.tfidf_logreg_en_faq, download = True)
    a = faq(["I need help"])


<a id="org695f7c9"></a>

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


<a id="org9fd3697"></a>

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


<a id="org31723f7"></a>

### dataset<sub>iterators</sub>

<https://deeppavlov.readthedocs.io/en/0.1.6/apiref/dataset_iterators.html>


<a id="org0742daa"></a>

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


<a id="orgb7547bf"></a>

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


<a id="orgd16a46c"></a>

### parsing anal

    from deeppavlov import configs
    from deeppavlov.core.commands.utils import parse_config
    config_dict = parse_config(configs.ner.ner_ontonotes)
    print(config_dict['dataset_reader']['data_path'])


<a id="org8e56598"></a>

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


<a id="org81178a7"></a>

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


<a id="org8143d36"></a>

## prerocessors

-   sanitizer - \models\preprocessors Remove all combining characters like diacritical marks from tokens deeppavlov\models\preprocessors\sanitizer.py
    -   nums - Replace [0-9] - 1 и ниибет
-   str<sub>lower</sub> - batch.lower()


<a id="orgf8a111d"></a>

### tokenizers

deeppavlov\models\tokenizers

-   lazy<sub>tokenizer</sub> - english nltk word<sub>tokenize</sub> (нет параметров)
-   ru<sub>tokenizer</sub> - lowercase - съедает точку вместе со словом
    -   stopwords - List[str]
    -   ngram<sub>range</sub> - List[int] - size of ngrams to create; only unigrams are returned by default
    -   lemmas - default=False - whether to perform lemmatizing or not
-   nltk<sub>moses</sub><sub>tokenizer</sub> - MosesTokenizer().tokenize - как lazy<sub>tokenizer</sub>, если вход токены - то склеивает.
    -   escape = False - если True заменяет | [] < > [ ] & на '&#124;', '&#91;', '&#93;', '&lt;', '&gt;', '&#91;',


<a id="org6d1ec7b"></a>

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


<a id="orgb51cd68"></a>

## components

-   simple<sub>vocab</sub> - For holding sets of tokens, tags, or characters - \core\data\simple<sub>vocab.py</sub>
    -   id - the name of the vocabulary which will be used in other models
    -   fit<sub>on</sub> - out у предыдущего
    -   save<sub>path</sub> - path to a new file to save the vocabulary
    -   load<sub>path</sub> - path to an existing vocabulary (ignored if there is no files)
    -   pad<sub>with</sub><sub>zeros</sub>: whether to pad the resulting index array with zeros or not
    -   out - indices


<a id="orgcd49b02"></a>

## Models

-   Rule-based Models cannot be trained.
-   Machine Learning Models can be trained only stand alone.
-   Deep Learning Models can be trained independently and in an end-to-end mode being joined in a chain.

У каждой модели своя архитектура - CNN у или LSTM+CRF


<a id="org863be6e"></a>

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


<a id="org12e58d8"></a>

### Tie vocabulary

Префиксное дерево - по буквам разные слова в дереве.
<https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%B5%D1%84%D0%B8%D0%BA%D1%81%D0%BD%D0%BE%D0%B5_%D0%B4%D0%B5%D1%80%D0%B5%D0%B2%D0%BE>


<a id="org8c3219b"></a>

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


<a id="orgb53ff5d"></a>

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


<a id="org5db3681"></a>

### iterators

-   basic<sub>classification</sub><sub>iterator</sub> - for basic<sub>classification</sub><sub>reader</sub>
    -   Формат csv text,label\n word1,
-   dstc2<sub>intents</sub><sub>iterator</sub> - dstc2<sub>reader</sub> - <http://camdial.org/~mh521/dstc/downloads/handbook.pdf>


<a id="orge27537d"></a>

## NER - componen

-   <http://docs.deeppavlov.ai/en/latest/components/ner.html>
-   <https://github.com/deepmipt/DeepPavlov/blob/master/examples/tutorials/02_deeppavlov_ner.ipynb>

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


<a id="org26905d5"></a>

## Custom component

-   \deeppavlov\core\common\registry.json


<a id="org19a789f"></a>

# AllenNLP

-   <https://allennlp.org>
-   <https://pytorch.org/get-started/previous-versions/>
-   conda install pytorch=0.4.1 -c pytorch
-   pip install allennlp


<a id="orgedc4368"></a>

# spaCy

spaCy - convolutional neural network (CNN(  <https://en.wikipedia.org/wiki/SpaCy>

-   <https://en.wikipedia.org/wiki/Convolutional_neural_network>
-   <https://github.com/explosion/spaCy>
-   архитектура pipeline


<a id="orga185407"></a>

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


<a id="org339e4eb"></a>

## install

-   wget <https://github.com/facebookresearch/fastText/archive/v0.1.0.zip>
-   unzip v0.2.0.zip
-   make -j3


<a id="org83d6b8d"></a>

# TODO rusvectores

-   <https://rusvectores.org/en/about/>
-   <https://github.com/akutuzov/webvectors>
-   <https://github.com/akutuzov/webvectors/blob/master/preprocessing/rusvectores_tutorial.ipynb>


<a id="orgca1efb0"></a>

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


<a id="orgabf2e21"></a>

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


<a id="org2335956"></a>

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


<a id="org6c8db8d"></a>

## Taggers

-   averaged<sub>perceptron</sub><sub>tagger</sub><sub>ru</sub> <http://www.nltk.org/nltk_data/>
-   example <http://www.nltk.org/_modules/nltk/tag>
-   API <http://www.nltk.org/api/nltk.tag.html>


<a id="org84c0345"></a>

## Корпус русского языка

-   <http://www.nltk.org/nltk_data/>
-   <https://github.com/nltk/nltk/wiki/Adding-a-Corpus>
-   <http://www.ruscorpora.ru/index.html>
-   Значение тэгов <http://www.ruscorpora.ru/en/corpora-morph.html>

Почему-то не показывает падежи


<a id="orgb05ab81"></a>

# pymorphy2

<https://pymorphy2.readthedocs.io/en/latest/user/grammemes.html>

-   grammeme - Грамме́ма - один из элементов грамматической категории - граммемы:
    tag=OpencorporaTag('NOUN,inan,masc plur,nomn')
-   используется словарь <http://opencorpora.org/>
-   для незнакомых слов строятся гипотезы
-   полностью поддерживается буква ё
-   Лицензия - MIT


<a id="orgd1dda24"></a>

# linux NLP


<a id="org38488a7"></a>

## count max words in line of file

    MAX=0; file="/path";
    while read -r line; do if [[ $(echo $line | wc -w ) -gt $MAX ]]; then MAX=$(echo $line | wc -w ); fi; done < "$file"


<a id="orga1f2dfe"></a>

# Audio - librosa

default: librosa.core.load(path, sr=22050, mono=True, offset=0.0, duration=None, dtype=<class 'numpy.float32'>, res<sub>type</sub>='kaiser<sub>best</sub>')

-   sr is the sampling rate
-   mono is the option (true/ false) to convert it into mono file.
-   offset is a floating point number which is the starting time to read the file
-   duration is a floating point number which signifies how much of the file to load.
-   dtype is the numeric representation of data can be float32, float16, int8 and others.
-   res<sub>type</sub> is the type of resampling (one option is kaiser<sub>best</sub>)


<a id="org4e4a765"></a>

## theory

-   waveform - wave or oscilates curve with amplitude
-   frequency - occurrences of vibrations per unit of time

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


<a id="orgc68dac2"></a>

## generic audio characteristics

-   Channels: number of channels; 1 for mono, 2 for stereo audio
-   Sample width: number of bytes per sample; 1 means 8-bit, 2 means 16-bit
-   Frame rate/Sample rate: frequency of samples used (in Hertz)
-   Frame width: Number of bytes for each “frame”. One frame contains a sample for each channel.
-   Length: audio file length (in milliseconds)
-   Frame count: the number of frames from the sample
-   Intensity: loudness in dBFS (dB relative to the maximum possible loudness)


<a id="org2efb664"></a>

## python

    import librosa
    y: np.array
    y, sample_rate = librosa.load(filename) # sampling rate as `sr` , y - time series
    #
    time = np.arange(0,len(y))/sample_rate # seconds


<a id="org4e5f3ef"></a>

## distinguish emotions

    male = librosa.feature.mfcc(y=X, sr=sample_rate, n_mfcc=13)
    male = np.mean(librosa.feature.mfcc(y=X, sr=sample_rate, n_mfcc=13), axis=0)


<a id="org750568f"></a>

## links

-   <https://community-app.topcoder.com/thrive/articles/audio-data-analysis-using-python>
-   <https://iq.opengenus.org/introduction-to-librosa/>
-   <https://librosa.org/doc/latest/index.html>
-   split on silence <https://medium.com/@vvk.victory/audio-processing-librosa-split-on-silence-8e1edab07bbb>
-   distinguish emotions <https://www.kaggle.com/code/krishnachary/speech-emotion-recognition-with-librosa>


<a id="org08237ca"></a>

# NER USΕ CASES


<a id="org8a3fc63"></a>

## Spelling correction algorithms or  (spell checker) or (comparing a word to a list of words)

-   <https://www.quora.com/Algorithms-What-is-a-fast-way-of-comparing-a-word-to-a-list-of-words-to-find-the-closest-match>

Damerau-Levenshtein - edit distance with constant time O(1) - independent of the word list size (but depending
on the average term length and maximum edit distance)


<a id="org50c88b1"></a>

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


<a id="org472a957"></a>

# TensorFlow (TF)

-   лекция <https://www.youtube.com/watch?v=sTkUjqsjs00>
-   tutorial <https://www.tensorflow.org/tutorials/>
-   guidehttps://www.tensorflow.org/guide/
-   lections pdf <http://web.stanford.edu/class/cs20si/lectures/>

Apache 2.0

-   разработанная компанией Google
-   used for machine learning applications such as neural networks
-   Создается вычислительный граф. - Графовый фреймворк

Features:

-   Stable
-   Well-documented sources
-   Flexibility
-   Portability
-   Scalability
-   Popularity

Cons:

-   Невозможно обучать распределенно
-   Метрический тензор нельзя запрограммировать

‐ Cleverhans - фреймворд чтобы атаковать и защищать модели??

-   Lucid - визуализировать

-   define computation graph - позволяет автоматическое дифференцирование
    -   Nodes - operators, varibles, constants
    -   Edges - tensors
-   Execute it


<a id="orgcdf5f63"></a>

## TF 2.0

-   <https://www.tensorflow.org/guide/effective_tf2?hl=ru>
-   <https://medium.com/tensorflow/effective-tensorflow-2-0-best-practices-and-whats-changed-a0ca48767aff>
-   Chinese <https://tf.wiki/en/basic/tools.html#graph-execution-mode-tf-function>
    -   <https://github.com/snowkylin/tensorflow-handbook/blob/3ee1d0fdb6518a08b2e9fbb7353ace2d3110bd4b/docs/_static/code/zh/savedmodel/custom/train_and_export.py>

API:

-   tf.keras - High level API
-   Eager Execution By Default with "Gradient Tape". For optimization require @tf.function
    <https://www.tensorflow.org/guide/eager>
    -   keras API Model subclassing <https://www.tensorflow.org/guide/keras/custom_layers_and_models>

-   tf.data is going to replace tf.placeholders
-   No more tf.Session()


<a id="org3f3a4a8"></a>

### tf.GradientTape API

for automatic differentiation using "reverse mode differentiation"

-   resources held by a GradientTape are released as soon as GradientTape.gradient() method is called
-   Trainable variables (created by tf.Variable or tf.compat.v1.get<sub>variable</sub>, where trainable=True is default in both cases) are automatically watched.
-   at least one of inputs is being "watched".

    with tf.GradientTape() as g:
      g.watch(x)
      y = x * x
    dy_dx = g.gradient(y, x)


<a id="org638d085"></a>

### tf.function

-   <https://github.com/tensorflow/community/blob/master/rfcs/20180918-functions-not-sessions-20.md>

TensorFlow graphs require static dtypes and shape dimensions. tf.function keeps a cache of concrete functions
generated by tracing.

trace<sub>cache</sub><sub>key</sub> as function of datatype and shape of every Tensor argument and tf.device() scope. For a Python
primitive is its value. Key is used to determine if a new graph needs to be created or if a previously created graph can be invoked.

Nones:

-   Can only use Tensors arguments.
-   runs all stateful operations (e.g. tf.print)

Argumets must be either:

-   Tensor (ndarrays are converted to the equivalent Tensor)
-   list of Tensor
-   arbitrary Python value

The main takeaways and recommendations are:

-   Don't rely on Python side effects like object mutation or list appends.
-   tf.function works best with TensorFlow ops, rather than NumPy ops or Python primitives.
-   When in doubt, use the for x in y idiom.

1.  wrap function

    <https://www.tensorflow.org/api_docs/python/tf/compat/v1/wrap_function>

    tf.compat.v1.wrap<sub>function</sub>

    -   do not runs all stateful operations (e.g. tf.cond)
    -   only trace the Python function once

        from tensorflow_core.python.eager.wrap_function import WrappedFunction, VariableHolder, wrap_function
        wf:WrappedFunction = wrap_function(f)

        class WrappedFunction(function.ConcreteFunction):
        """Callable object encapsulating a function definition and its gradient.

2.  AutoGraph включен в tf.function

    для преобразования if и for в tf.cond и tf.while.


<a id="orgff7c049"></a>

### migrate 1 to 2

-   <https://www.tensorflow.org/guide/migrate?hl=ru>
-   2017 stratch <https://ai.googleblog.com/2017/10/eager-execution-imperative-define-by.html>
-   <https://colab.research.google.com/github/tensorflow/docs/blob/master/site/en/guide/migrate.ipynb>

import tensorflow.compat.v1 as tf
tf.disable<sub>v2</sub><sub>behavior</sub>()

-   Eager execution, v1.enable<sub>eager</sub><sub>execution</sub>() - tf.Graph will fail - wrap this code in a with
    tf.Graph().as<sub>default</sub>() context.
-   Resource variables, v1.enable<sub>resource</sub><sub>variables</sub>() - 2.0 Resource variables are locked while being written to
-   Tensor shapes, v1.enable<sub>v2</sub><sub>tensorshape</sub>() - t.shape[0].value will fail
-   Control flow, v1.enable<sub>control</sub><sub>flow</sub><sub>v2</sub>()


<a id="orgbffad43"></a>

### custome layer

-   <https://www.tensorflow.org/tutorials/customization/custom_layers>
-   <https://www.tensorflow.org/guide/keras/custom_layers_and_models>
-   Convolution <https://github.com/basveeling/keras-gcnn/blob/master/keras_gcnn/layers/convolutional.py>

Custom layers

Methods:

-   \_<sub>init</sub>\_<sub>()</sub>
-   build()\`: Called once from \`\_<sub>call</sub>\_\_\`, when we know the shapes of inputs and \`dtype\`.
-   call()

Arguments \_<sub>init</sub>\_<sub>()</sub>:

-   **trainable:** Boolean, whether the layer's variables should be trainable.
-   **name:** String name of the layer.
-   **dtype:** The dtype of the layer's computations and weights (default of \`None\` means use
    \`tf.keras.backend.floatx\` in TensorFlow 2, or the type of the first input in TensorFlow 1).
-   **dynamic:** Set this to \`True\` if your layer should only be run eagerly, and should not be used to generate a
    static computation graph.  This would be the case for a Tree-RNN or a recursive network, for example, or
    generally for any layer that manipulates tensors using Python control flow. If \`False\`, we assume that the
    layer can safely be used to generate a static computation graph.

    class Linear(layers.Layer):

      def __init__(self, units=32):
        super(Linear, self).__init__()
        self.units = units

      def build(self, input_shape):
        self.w = self.add_weight(shape=(input_shape[-1], self.units),
                                 initializer='random_normal',
                                 trainable=True) # все self переменные попадают в model.variables  автоматически
        self.b = self.add_weight(shape=(self.units,),
                                 initializer='random_normal',
                                 trainable=True)

      def call(self, inputs):
        return tf.matmul(inputs, self.w) + self.b


<a id="org99bb825"></a>

### decayed learning rate

    optimizer = SGD(learning_rate=0.006, decay=0.003, momentum=0.3)

    lr = optimizer._decayed_lr(tf.float32)
    print("lr: %f" % lr)


<a id="org2279241"></a>

### layer-wise learning rate in Tensorflow?

<https://stackoverflow.com/questions/34945554/how-to-set-layer-wise-learning-rate-in-tensorflow?noredirect=1>


<a id="org5a9d253"></a>

## Save a model

-   v1 <https://cv-tricks.com/tensorflow-tutorial/save-restore-tensorflow-models-quick-complete-tutorial/>

API

-   tf.compat.v1.train.Saver - binary format. Not-object-based
    -   my<sub>test</sub><sub>model</sub>-1000.index
    -   my<sub>test</sub><sub>model</sub>-1000.meta
    -   my<sub>test</sub><sub>model</sub>-1000.data-00000-of-00001
    -   checkpoint -  keeps a record of latest checkpoint files saved
-   tf.keras.Model
-   tf.compat.v2.train.Checkpoint - binary object-based checkpoints


<a id="orgef457ea"></a>

### v1 Saver loading:

-   <https://www.tensorflow.org/api_docs/python/tf/compat/v1/train/import_meta_graph>
-   example <https://github.com/ZZUTK/TensorFlow_VGG_train_test/blob/master/testing.py>

steps

1.  with tf.compat.v1.Session() as sess: or tf.compat.v1.Session()
2.  saver = tf.compat.v1.train.import<sub>meta</sub><sub>graph</sub>('my<sub>test</sub><sub>model</sub>-1000.meta') # this will create the graph/network for you
    but we still need to load the value of the parameters that we had trained on this graph
3.  saver.restore(sess,tf.train.latest<sub>checkpoint</sub>('./')) # restore the parameters of the network
4.  print(sess.run('w1:0')) - print saved value of w1.

Run:

    graph = tf.compat.v1.get_default_graph()
    w1 = graph.get_tensor_by_name("w1:0")
    w2 = graph.get_tensor_by_name("w2:0")
    feed_dict ={w1:13.0,w2:17.0}
    op_to_restore = graph.get_tensor_by_name("op_to_restore:0")
     print sess.run(op_to_restore,feed_dict)


<a id="org1c1127e"></a>

### v2 saving loading

-   Checkpoints - exact value of all parameters (tf.Variable) - source code required
    -   tf.keras.Model.save<sub>weights</sub>(path/mymodel)
-   Model.save(path) - the parameter values && serialized description of the computation defined by the model. Source code not needed.


<a id="org5f75386"></a>

## install

   see Tested build configurations
tensorflow.org/install/source#linux

1.  apt clean; apt updatel apt purge cuda ; apt purge nvidia-\*; apt autoremoveq
2.  install "cuda toolkit" from archive
3.  pip3 install tensorflow-gpu==2.3.0


<a id="orgedcd56d"></a>

## install from source

Для компиляции tensorflow используется гугловая система сборки Bazel


<a id="org122355a"></a>

## APIs

1.  tf.nn - very low level
2.  tf.layers - higher
3.  tf.keras - highest
4.  просто сразу вычисляет tf.enable<sub>eager</sub><sub>execution</sub>()


<a id="org8e59436"></a>

## tf.placeholder

amy = placeholder - это тензоры в графе, которым присваивается имя amy

    sess.run([tensors], feed_dict={amy: 1})  # заполняет placeholders and выполняет тензоры


<a id="org5060085"></a>

## Logger = Disable

    import os
    import tensorflow as tf
    os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'


<a id="orge6afe34"></a>

## 4D tensor <a id="orgf3fcd79"></a>

-   N refers to the number of images in a batch.
-   H refers to the number of pixels in the vertical (height) dimension.
-   W refers to the number of pixels in the horizontal (width) dimension.
-   C refers to the channels. For example, 1 for black and white or grayscale and 3 for RGB.

Formats:

-   NCHW or channels<sub>first</sub> - optimal for NVIDIA GPUs cuDNN - If not using the Intel MKL, some operations are not
    supported on CPU when using NCHW
-   NHWC or channels<sub>last</sub> - TensorFlow default - little faster on CPU - we are working on tools to auto
    rewrite graphs to make switching between the formats transparent and take advantages of micro optimizations
    where a GPU op may be faster using NHWC

channels<sub>last</sub> - default for keras


<a id="orgfecc410"></a>

## install

-   pip install tensorflow &#x2013;user
-   import tensorflow as tf
-   tf.InteractiveSession()


<a id="org1978376"></a>

## Deploy

-   Java
-   C
-   Go


<a id="org100d524"></a>

## tensor

-   <https://www.tensorflow.org/guide/tensors>
-   Tensor a mathematical object analogous to but more general than a vector, represented by an array of
    components that are functions of the coordinates of a space
-   unit of data, geometric objects that describe linear relations between geometric vectors, scalars, and other

tensors

-   has Rank
-   set of primitive values shaped into an array of any number of dimensions
-   rank/dimension zero tensor - 5 - scalar - shape is []
-   rank/dimension 1 tensor - [ 1., 2., 3., 4. ] - Vector - shape is [4]
-   rank/dimension 2 tensor or a Matrix - shape [ 2, 4] - [ [ 1., 2., 3., 4. ], [ 5., 6., 7., 8. ] ]

Граф состоит из узлов op, связанных друг с другом, представляющих операции.

-   Операция выделяет память для своих выходов, которые доступны в конечных точках :0, :1 и т.д. - похожих на
    тензор


<a id="org3e6f351"></a>

## hardware

GPU могу ускорить работу сети в 10-20 раз[1]

**CPU**

-   С достаточно мощной видеокартой мощность процессора практически не важна, потому что всю нагрузку возмет GPU
-   желательно Intel® Xeon®, Intel® Xeon Phi™
-   если 2 видеокарты, то процессор должен их поддерживать.

**GPU**

-   две GPU лучше чем одна на 20%. Переносимость модели на систему без GPU реализована.
-   CUDA-Enabled NVIDIA video vard <https://developer.nvidia.com/cuda-gpus>
-   Deep Learning Primitives (cuDNN) - part of Deep Learning SDK, requires CUDA Toolkit
-   GPU Memory >=11 GB - больше лучше
-   чем больше FLOPS тем лучше
-   топы: NVIDIA QUADRO® GV100 или NVIDIA TITAN RTX
-   GPU Cooling - очень важен - Air cooling - для одного или двух если между ними поместится ещё две

**RAM**

-   RAM clock rates not required
-   RAM size больше чем GPU Memory одной из карт - больше памяти, удобнее работа для человека.

**PSU** if you have 4 GPUs with each 250 watts TDP and a CPU with 150 watts TDP, then you will need a PSU with a
 minimum of 4×250 + 150 + 100 = 1250 watts

Quandro P1000 PCE-3.0
кабинет 42 Соловьев

Счет на Кирила скинуть, Артем сказал скинуть счет на оплату, с Минофьевым согласовали, отправить в москву.

Андрей Свиридов поговорил с ЦФТ о возможности получить тестовый доступ к их облачному сервису расладвающему
назначения на компоненты.

Почтовый ящик с заявками, текст и сканы.

1.  TensorFlow для глубокого обучения. Барат Рамсундар, Реза Босаг Заде. 2019г.
2.  <https://timdettmers.com/2018/12/16/deep-learning-hardware-guide/>

1.  проверить материнскую плату что она PCI-E 3.0

1.  Написать письмо
2.  Можно ли с keras использовать несколько GPU
3.  прочитать по автокредиту что прислал в почте, посмотреть бизнес процессы
4.  читать банковское дело.
5.  Военкомат!! 11:00

<https://www.ferra.ru/review/computers/nvidia-geforce-gtx-1070-asus-gigabyte-msi-palit-zotac.htm>

Выбор видеокарты PALIT GeForce GTX 1070 27030р - 29000р

-   <https://belgorod.nix.ru/autocatalog/palit_graphics_accelerators/8Gb-PCI-E-GDDR5-Palit-GTX1070-JetStream-RTL-DVI-plus-HDMI-plus-3xDP-plus-SLI-GeForce-GTX1070_274136.html>
-   <https://www.onlinetrade.ru/catalogue/videokarty-c338/palit/videokarta_palit_geforce_gtx_1070_1506mhz_pci_e_3.0_8192mb_8000mhz_256_bit_dvi_hdmi_hdcp_jetstream_ne51070015p2_1041j-556700.html?utm_source=market.yandex.ru&utm_medium=cpc&city=55&_openstat=bWFya2V0LnlhbmRleC5ydTvQktC40LTQtdC-0LrQsNGA0YLQsCBQQUxJVCBHZUZvcmNlIEdUWCAxMDcwIDE1MDZNaHogUENJLUUgMy4wIDgxOTJNYiA4MDAwTWh6IDI1NiBiaXQgRFZJIEhETUkgSERDUCBKZXRTdHJlYW0gKE5FNTEwNzAwMTVQMi0xMDQxSik7dVFPbk1jckprVlZZWmNEamR5UVBiUTs&ymclid=15602370129371193275200002>

GeForce RTX 2060

Железо 50 70


<a id="org7ee1932"></a>

## hello world

    import tensorflow as tf
    a = tf.add(3, 5)

    sess = tf.Session()
    print sess.run(a)
    sess.close()
    # or
    with tf.Session() as sess:
      print sess.run(a)


<a id="orge5c9799"></a>

## main objects

-   tf.Session - содержит один глобальный граф
    -   tf.InteractiveSession - makes itself the default
-   tf.Tensor
    -   tf.constant(value, dtype=None, shape=None, name='Const', verify<sub>shape</sub>=False)
        -   stored in the graph definition
        -   loading graphs expensive
-   tf.placeholder - input for graph

when constants are big

-   tf.Operation
-   tf.Graph - состоит из экземпляров tf.Tensor и tf.Operation.
    -   Multiple graphs require multiple sessions, each will try to use all available resources by default
    -   Can't pass data between them without passing them through python/numpy, which doesn't work in distributed
    -   It’s better to have disconnected subgraphs within one graph
-   data types
    -   tf.int32
    -   tf.float32
    -   tf.float64
    -   tf.string
    -   tf.bool
    -


<a id="org624ecf2"></a>

## Переменные

-   tf.Varible - контейнер Tensor
-   tf.assign

Инициализация

    init = tf.global_variables_initializer()
    with tf.Session() as sess:
      sess.run(init)

nitialize a single variable

    W = tf.Variable(tf.zeros([784,10]))
    with tf.Session() as sess:
      sess.run(W.initializer)
      print W.eval()


<a id="org8e0de8e"></a>

## TensorBoard

2 run it:

-   $ python [yourprogram].py
-   $ tensorboard &#x2013;logdir="./graphs" &#x2013;port 6006
-   <http://localhost:6006/>

1 save it:

    import tensorflow as tf
    a = tf.constant(2, name="a")
    b = tf.constant(3, name="b")
    x = tf.add(a, b, name="add")
    with tf.Session() as sess:
      # add this line to use TensorBoard.
      writer = tf.summary.FileWriter('./graphs, sess.graph)
      print sess.run(x)
    writer.close() # close the writer when you’re done using


<a id="org6cc870a"></a>

## GPU

<https://www.tensorflow.org/install/gpu>

-   pip3 install tensorflow-gpu &#x2013;user

Required:

-   import tensorflow as tf
-   config = tf.ConfigProto()
-   config.gpu<sub>options.allow</sub><sub>growth</sub> = True
-   session = tf.Session(config=config)


<a id="org09e5ed9"></a>

## keras

    from tensorflow import keras
    from tensorflow.python.keras.api._v2.keras.layers import BatchNormalization, Dense, Dropout, Activation, Flatten, \
        Conv2D, MaxPooling2D
    from tensorflow.python.keras.api._v2.keras.models import Sequential


<a id="org644407f"></a>

## CNN

tf.nn.conv2d(feat,

-   weight, - input
-   strides=[1,1,1,1], -  1,2 or 4 - stride of the sliding window for each dimension of input
-   padding="VALID")+bias

tf.nn.max<sub>pool</sub>(feat,

-   ksize=[1,2,2,1] - window per every dimension
-   strides=[1,2,2,1]
-   padding="VALID")


<a id="org71905d9"></a>

## RNN and LSTM

-   TODO <https://www.tensorflow.org/guide/keras/rnn>
-   <https://github.com/curiousily/Deep-Learning-For-Hackers>
-   <https://github.com/aymericdamien/TensorFlow-Examples/blob/master/tensorflow_v2/notebooks/3_NeuralNetworks/recurrent_network.ipynb>

stateful=True requre constant batch<sub>size</sub>

Change bach <https://stackoverflow.com/questions/58799212/how-can-i-use-a-stateful-lstm-model-to-predict-without-specifying-the-same-batch>


<a id="org9f08748"></a>

### CNN

<https://machinelearningmastery.com/how-to-develop-convolutional-neural-network-models-for-time-series-forecasting/>


<a id="org7c28396"></a>

### batch

<https://machinelearningmastery.com/stateful-stateless-lstm-time-series-forecasting-python/>

You can set RNN layers to be 'stateful', which means that the states computed for the samples in one batch
will be reused as initial states for the samples in the next batch. This assumes a one-to-one mapping between
samples in different successive batches.

You can specify the initial state of RNN layers symbolically by calling them with the keyword argument
**initial<sub>state</sub>**. The value of **initial<sub>state</sub>** should be a tensor or list of tensors representing the initial state
of the RNN layer.

You can specify the initial state of RNN layers numerically by calling **reset<sub>states</sub>** with the keyword argument
**states**. The value of **states** should be a numpy array or list of numpy arrays representing the initial state of
the RNN layer.

it may be possible to simulate a stateful LSTM with a stateless LSTM using a large batch size.


<a id="org2a462d9"></a>

## plot learning curve

    print(history.history.keys()) # ['loss', 'acc', 'val_loss', 'val_acc']

    from matplotlib import pyplot as plt

    plt.figure(1)

    # summarize history for accuracy

    plt.subplot(211)
    plt.plot(history.history['acc'])
    plt.plot(history.history['val_acc'])
    plt.title('model accuracy')
    plt.ylabel('accuracy')
    # plt.xlabel('epoch')
    plt.legend(['train', 'test'], loc='upper left')

    # summarize history for loss

    plt.subplot(212)
    plt.plot(history.history['loss'])
    plt.plot(history.history['val_loss'])
    plt.title('model loss')
    plt.ylabel('loss')
    # plt.xlabel('epoch')
    plt.legend(['train', 'test'], loc='upper left')
    plt.show()


<a id="orgf265942"></a>

## plot CNN layout

-   <https://stackoverflow.com/questions/55421290/tensorflow-2-0-keras-how-to-write-image-summaries-for-tensorboard>

summaryWriter = tf.summary.FileWriter("model<sub>name</sub>")
summaryWriter.add<sub>graph</sub>(sess.graph)

summaryWriter.add<sub>summary</sub>(sess.run(summaryMeanTest0,feed<sub>dict</sub>={testImagePH:testMean[0]}),i+1)


<a id="org48e8828"></a>

## Optimizer

softmaxLoss = tf.losses.softmax<sub>cross</sub><sub>entropy</sub>(onehot<sub>labels</sub>=labelOnehot, logits=output) -> float or [batch]

-   labelOnehot - оригиналы
-   logits - то что вернула сеть
-   reduction: str = Reduction.SUM<sub>BY</sub><sub>NONZERO</sub><sub>WEIGHTS</sub> - default

-   optimizer = tf.train.GradientDescentOptimizer(learning<sub>rate</sub>).minimize(cost)
    -   cost - ?
-   sess.run(tf.global<sub>variables</sub><sub>initializer</sub>())
-   sess.run([optim,loss],feed<sub>dict</sub>=batch)

ways:

-   minimize()
    1.  opt = GradientDescentOptimizer(learning<sub>rate</sub>=0.1)
    2.  opt<sub>op</sub> = opt.minimize(cost, var<sub>list</sub>=<list of variables>) - computing the gradients and applying them to
        the variables
    3.  sess.run([opt<sub>op,loss</sub>], feed<sub>dict</sub>=batch) or opt<sub>op.run</sub>()
-   compute<sub>gradients</sub>() - process the gradients before applying them
    1.  opt = GradientDescentOptimizer(learning<sub>rate</sub>=0.1)
    2.  grads<sub>and</sub><sub>vars</sub> = opt.compute<sub>gradients</sub>(loss, <list of variables>)
    3.  capped<sub>grads</sub><sub>and</sub><sub>vars</sub> = [(MyCapper(gv[0]), gv[1]) for gv in grads<sub>and</sub><sub>vars</sub>]
    4.  opt.apply<sub>gradients</sub>(capped<sub>grads</sub><sub>and</sub><sub>vars</sub>)
    5.  sess.run([opt,loss], feed<sub>dict</sub>=batch)

    lrGP_PH, lrC_PH = tf.placeholder(tf.float32, shape=[]), tf.placeholder(tf.float32, shape=[])
    optim = tf.train.AdamOptimizer(learning_rate=lrC_PH).minimize(loss, global_step=tf.train.get_global_step())


    lrC = opt.lrC*opt.lrCdecay**(i//opt.lrCstep)
    batch[lrC_PH] = lrC
    sess.run


<a id="orgebc2cbc"></a>

## loss

-   loss = tf.losses.softmax<sub>cross</sub><sub>entropy</sub>(onehot<sub>labels</sub>=labelOnehot, logits=output,  reduction=tf.losses.Reduction.MEAN)
-   lossm = tf.metrics.mean(loss)


<a id="org4ff9020"></a>

## USE CASES


<a id="org94add40"></a>

### TF 2.0 convert mode h5 to weight and arch

    from tensorflow import keras
    from tensorflow.keras.models import Model
    import os
    # use CPU
    os.environ['CUDA_VISIBLE_DEVICES'] = '-1'
    # parent_path = os.path.join(os.getcwd(), os.pardir)
    model_path = '/mnt/hit4/hit4user/PycharmProjects/cnn/text_or_not/saved_models/cnn_trained_model2020-09-10 09:26:34.553480.h5'
    print(model_path)

    model: Model = keras.models.load_model(model_path)
    import time

    name = 'cnn_trained_model2020-09-10 09:26:34.553480'
    os.mkdir(name)


    with open("./"+name+"/model_to_json.json", "w") as json_file:
        json_file.write(model.to_json(indent=4))

    model.save_weights('./'+name+'/')
    print("ok")
    time.sleep(1)


<a id="org104bd2a"></a>

# PyTorch

install: <https://pytorch.org/get-started/locally/>
examples <https://github.com/pytorch/examples/>

-   GPU Tensors, Dynamic Neural Networks and deep Python integration
-   This is closer to writing code in any language as a for loop in code will behave as a for loop inside the
    graph structure as well.
-   TensorFlow doesn’t handle dynamic graphs very well though there are some not so flexible and frankly quite
    limiting primitive dynamic constructs.
-   Intel MKL and NVIDIA (CuDNN, NCCL) support

PyTorch:

-   replacement for NumPy to use the power of GPUs
-   deep learning research platform


<a id="org7a1b98e"></a>

## numpy

    import torch
    x = torch.empty(5, 3)
    print(x)

    print(x.size())
    >> torch.Size([5, 3])
    # Converting a Torch Tensor to a NumPy Array
    n = torch.ones(5).numpy()
    # Converting NumPy Array to Torch Tensor
    t = torch.from_numpy(a)
    # tensors on CUDA
    if torch.cuda.is_available():
        device = torch.device("cuda")          # a CUDA device object
        y = torch.ones_like(x, device=device)
        x = x.to(device)
        z = x + y
        print(z.to("cpu", torch.double)) # back to cpu

    # random
    x = torch.randn(4, 4) # from a normal distribution - mean 0 and variance 1
    x = torch.rand(4, 4) # on the interval [0,1)

    # resize/reshape
    y = x.view(16) # line
    z = x.view(-1, 8) # column:  torch.Size([2, 8])

    # torch.squeeze(input, dim=None, out=None) → Tensor
    # tensor(A×1×B×C×1×D)
    >>> x = torch.zeros(2, 1, 2, 1, 2)
    torch.Size([2, 1, 2, 1, 2])
    # выжимать remove 1 size dimensions
    >>> y = torch.squeeze(x) #
    torch.Size([2, 2, 2])
    >>> y = torch.squeeze(x, 0)
    torch.Size([2, 1, 2, 1, 2])
    >>> y = torch.squeeze(x, 1)
    torch.Size([2, 2, 1, 2])

    # Concatenates sequence of tensors along a new dimension:
    torch.stack(tensors: list, dim=0, out=None) → Tensor

    # transpose
    t = torch.tensor([[1,2,3],[4,5,6]])
    torch.transpose(t,0,1)
    >tensor([[1, 4],
            [2, 5],
            [3, 6]])

    # add dimension
    >> torch.Size([1, 2])
    a.unsqueeze(0).size()
    >> torch.Size([1, 1, 2])
    a.unsqueeze(-1).size()
    >> torch.Size([1, 2, 1])


<a id="org301c183"></a>

## layers

    import torch.nn as nn
    import torch.nn.functional as F # activation

-   CNN
    -   nn.Conv2d(1, 32, kernel<sub>size</sub>=(3, 3), stride=(1, 1)) -
-


<a id="orgf12a30f"></a>

## noise

           r = (0.1**0.9)*torch.randn(self.levels, batch, self.hidden_size//2, dtype=dtype, device=self.device)
    self.hidden1 = (self.hidden1[0] + r, self.hidden1[1] + r)


<a id="orgf602a99"></a>

## basic nn and gradient

input 32x32

torch.Size([64, 32, 26, 26]) - batch<sub>size</sub>, output<sub>channels</sub>, Height, Width

Trainable parameters:

    params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(f"Trainable parameters: {params:,}")

Recap:

-   torch.Tensor - A multi-dimensional array with support for autograd operations like backward(). Also holds
    the gradient w.r.t. the tensor.
    -   IF .requires<sub>grad</sub> as True - it starts to track all operations on it. accumulated into .grad
    -   with torch.no<sub>grad</sub>(): - for testing
-   nn.Module - Neural network module. Convenient way of encapsulating parameters, with helpers for moving them
    to GPU, exporting, loading, etc.
-   nn.Parameter - A kind of Tensor, that is automatically registered as a parameter when assigned as an
    attribute to a Module.
-   autograd.Function - Implements forward and backward definitions of an autograd operation. Every Tensor
    operation creates at least a single Function node that connects to functions that created a Tensor and
    encodes its history.


<a id="orgf8ca215"></a>

### first

    import torch
    import torch.nn as nn # layer
    import torch.nn.functional as F # activation


    class Net(nn.Module):

        def __init__(self):
            super(Net, self).__init__()
            # 1 input image channel, 6 output channels, 3x3 square convolution
            # kernel
            self.conv1 = nn.Conv2d(1, 6, 3) # input 1 image to 6, 3x3 kernel, stride=1 default
            self.conv2 = nn.Conv2d(6, 16, 3)
            self.dropout1 = nn.Dropout2d(0.25)
            # an affine operation: y = Wx + b
            self.fc1 = nn.Linear(16 * 6 * 6, 120)  # 6*6 from image dimension
            self.fc2 = nn.Linear(120, 84)
            self.fc3 = nn.Linear(84, 10)

        def forward(self, x):
            # Max pooling over a (2, 2) window
            x = F.max_pool2d(F.relu(self.conv1(x)), (2, 2))
            # If the size is a square you can only specify a single number
            x = F.max_pool2d(F.relu(self.conv2(x)), 2)
            x = x.view(-1, self.num_flat_features(x))
            x = F.relu(self.fc1(x))
            x = self.dropout1(x)
            x = F.relu(self.fc2(x))
            x = self.fc3(x)
            return x

        def num_flat_features(self, x):
            size = x.size()[1:]  # all dimensions except the batch dimension
            num_features = 1
            for s in size:
                num_features *= s
            return num_features


    net = Net()
    print(net) # print all layers
    params = list(net.parameters()) # learnable parameters of a model




    import torch.optim as optim

    # create your optimizer
    optimizer = optim.SGD(net.parameters(), lr=0.01)

    # in your training loop:
    optimizer.zero_grad()   # zero the gradient buffers
    output = net(input)
    loss = criterion(output, target)
    loss.backward()
    optimizer.step()    # Does the updatee


<a id="org91b15ca"></a>

### second

    import argparse
    import torch
    import torch.nn as nn
    import torch.nn.functional as F
    import torch.optim as optim
    from torchvision import datasets, transforms
    from torch.optim.lr_scheduler import StepLR


    class Net(nn.Module):
        def __init__(self):
            super(Net, self).__init__()
            self.conv1 = nn.Conv2d(1, 32, 3, 1)
            self.conv2 = nn.Conv2d(32, 64, 3, 1)

            self.dropout1 = nn.Dropout2d(0.25)
            self.dropout2 = nn.Dropout2d(0.5)
            self.fc1 = nn.Linear(9216, 128)
            self.fc2 = nn.Linear(128, 10)

        def forward(self, x):
            x = self.conv1(x)
            x = F.relu(x)
            x = self.conv2(x)
            x = F.max_pool2d(x, 2)
            x = self.dropout1(x)
            x = torch.flatten(x, 1)
            x = self.fc1(x)
            x = F.relu(x)
            x = self.dropout2(x)
            x = self.fc2(x)
            output = F.log_softmax(x, dim=1)
            return output


    def train(args, model: nn.Module, device, train_loader, optimizer, epoch):
        model.train()
        for batch_idx, (data, target) in enumerate(train_loader):
            data, target = data.to(device), target.to(device)
            optimizer.zero_grad()
            output = model(data)
            loss = F.nll_loss(output, target)
            loss.backward()
            optimizer.step()
            if batch_idx % args.log_interval == 0:
                print('Train Epoch: {} [{}/{} ({:.0f}%)]\tLoss: {:.6f}'.format(
                    epoch, batch_idx * len(data), len(train_loader.dataset),
                    100. * batch_idx / len(train_loader), loss.item()))


    def test(args, model: nn.Module, device, test_loader):
        model.eval()
        test_loss = 0
        correct = 0
        with torch.no_grad():
            for data, target in test_loader:
                data, target = data.to(device), target.to(device)
                output = model(data)
                test_loss += F.nll_loss(output, target, reduction='sum').item()  # sum up batch loss
                pred = output.argmax(dim=1, keepdim=True)  # get the index of the max log-probability
                correct += pred.eq(target.view_as(pred)).sum().item()

        test_loss /= len(test_loader.dataset)

        print('\nTest set: Average loss: {:.4f}, Accuracy: {}/{} ({:.0f}%)\n'.format(
            test_loss, correct, len(test_loader.dataset),
            100. * correct / len(test_loader.dataset)))


    def main():
        # Training settings
        parser = argparse.ArgumentParser(description='PyTorch MNIST Example')
        parser.add_argument('--batch-size', type=int, default=64, metavar='N',
                            help='input batch size for training (default: 64)')
        parser.add_argument('--test-batch-size', type=int, default=1000, metavar='N',
                            help='input batch size for testing (default: 1000)')
        parser.add_argument('--epochs', type=int, default=14, metavar='N',
                            help='number of epochs to train (default: 14)')
        parser.add_argument('--lr', type=float, default=1.0, metavar='LR',
                            help='learning rate (default: 1.0)')
        parser.add_argument('--gamma', type=float, default=0.7, metavar='M',
                            help='Learning rate step gamma (default: 0.7)')
        parser.add_argument('--no-cuda', action='store_true', default=False,
                            help='disables CUDA training')
        parser.add_argument('--seed', type=int, default=1, metavar='S',
                            help='random seed (default: 1)')
        parser.add_argument('--log-interval', type=int, default=10, metavar='N',
                            help='how many batches to wait before logging training status')

        parser.add_argument('--save-model', action='store_true', default=False,
                            help='For Saving the current Model')
        args = parser.parse_args()
        use_cuda = not args.no_cuda and torch.cuda.is_available()
        # random seed
        torch.manual_seed(args.seed)

        device = torch.device("cuda" if use_cuda else "cpu")

        kwargs = {'num_workers': 1, 'pin_memory': True} if use_cuda else {}
        train_loader = torch.utils.data.DataLoader(
            datasets.MNIST('../data', train=True, download=True,
                           transform=transforms.Compose([
                               transforms.ToTensor(),
                               transforms.Normalize((0.1307,), (0.3081,))
                           ])),
            batch_size=args.batch_size, shuffle=True, **kwargs)
        test_loader = torch.utils.data.DataLoader(
            datasets.MNIST('../data', train=False, transform=transforms.Compose([
                               transforms.ToTensor(),
                               transforms.Normalize((0.1307,), (0.3081,))
                           ])),
            batch_size=args.test_batch_size, shuffle=True, **kwargs)

        # load model to GPU
        model: nn.Module = Net()
        # print(model.shape)
        # print(model.parameters())
        # params = list(model.)
        # print('params', params)
        params = sum(p.numel() for p in model.parameters() if p.requires_grad)
        print(f"Trainable parameters: {params:,}")
        model = Net().to(device)

        # optimizer
        optimizer = optim.Adadelta(model.parameters(), lr=args.lr)

        scheduler = StepLR(optimizer, step_size=1, gamma=args.gamma)
        for epoch in range(1, args.epochs + 1):
    h        test(args, model, device, test_loader)
            scheduler.step()

        if args.save_model:
            torch.save(model.state_dict(), "mnist_cnn.pt")


    if __name__ == '__main__':
        main()


<a id="orgb6a1af4"></a>

## LSTM

-   tutor <https://pytorch.org/tutorials/beginner/nlp/sequence_models_tutorial.html>
-   doc <https://pytorch.org/docs/stable/nn.html#recurrent-layers>
-   from Stratch <https://mlexplained.com/2019/02/15/building-an-lstm-from-scratch-in-pytorch-lstms-in-depth-part-1/>
-   article <https://towardsdatascience.com/lstm-for-time-series-prediction-de8aeb26f2ca>
-   article <https://stackabuse.com/time-series-prediction-using-lstm-with-pytorch-in-python/>
-   github chinese <https://github.com/TankZhouFirst/Pytorch-LSTM-Stock-Price-Predict/blob/master/LSTM%E5%AE%9E%E7%8E%B0%E8%82%A1%E7%A5%A8%E9%A2%84%E6%B5%8B--pytorch%20%E7%89%88%E6%9C%AC-V2.0.ipynb>


<a id="orga6292ad"></a>

### nn.LSTM

expects all of its inputs to be 3D tensors:

-   sequence itself
-   indexes instances in the mini-batch
-   indexes elements of the input

    rnn = nn.LSTM(input_size=10, hidden_size=20, num_layers=2)
    input = torch.randn(5, 3, 10)
    h0 = torch.randn(2, 3, 20) # layers, batch size, hidden
    c0 = torch.randn(2, 3, 20)
    output, (hn, cn) = rnn(input, (h0, c0))

If the following conditions are satisfied, persistent algorithm can be selected to improve performance:

1.  cudnn is enabled
2.  input data is on the GPU
3.  input data has dtype torch.float16
4.  V100 GPU is used,
5.  input data is not in PackedSequence format


<a id="orgd163a5e"></a>

### nn.LSTMCell

    rnn = nn.LSTMCell(input_size=10, hidden_size=20)
    input = torch.randn(6, 3, 10) # 3=batch size
    hx = torch.randn(3, 20) # batch_size, hidden_size
    cx = torch.randn(3, 20)
    output = []
    for i in range(6):
      hx, cx = rnn(input[i], (hx, cx))
      output.append(hx)


<a id="org05afeb5"></a>

### numbers of parameters

    gate_size = 4 * hidden_size # = 4
    w_ih = Parameter(torch.Tensor(gate_size, layer_input_size))
    w_hh = Parameter(torch.Tensor(gate_size, hidden_size))
    b_ih = Parameter(torch.Tensor(gate_size))

    b_hh = Parameter(torch.Tensor(gate_size))
    layer_params = (w_ih, w_hh, b_ih, b_hh) # one lstm

4\*4 = 16 parameters

    4*(4*is + 4*hs  + 4 + 4) # for first layer


<a id="org2351031"></a>

### basic

    import torch
    import torch.nn as nn

    # num_layers = 1, bias=True, bidirectional=False
    lstm = nn.LSTM(input_size=1, hidden_size=1)
    inputs = [torch.randn(1, 1) for _ in range(5)]  # make a sequence of length 5

    # initialize the hidden state.
    hidden = (torch.randn(1, 1, 1),
              torch.randn(1, 1, 1))
    for i in inputs:
        # Step through the sequence one element at a time.
        # after each step, hidden contains the hidden state.
        out, hidden = lstm(i.view(1, 1, -1), hidden)

    # alternatively, we can do the entire sequence all at once.
    # the first value returned by LSTM is all of the hidden states throughout
    # the sequence. the second is just the most recent hidden state
    # (compare the last slice of "out" with "hidden" below, they are the same)
    # The reason for this is that:
    # "out" will give you access to all hidden states in the sequence
    # "hidden" will allow you to continue the sequence and backpropagate,
    # by passing it as an argument  to the lstm at a later time
    # Add the extra 2nd dimension
    inputs = torch.cat(inputs).view(len(inputs), 1, -1)
    hidden = (torch.randn(1, 1, 1), torch.randn(1, 1, 1))  # clean out hidden state
    out, (hn, cn) = lstm(inputs, hidden)
    params = sum(p.numel() for p in lstm.parameters())
    print(list(lstm.parameters()))
    print(f"Trainable parameters: {params:,}")
    print(out)
    print(hn)
    print(cn)


<a id="orgd6e93fb"></a>

### tagging model

    class LSTMTagger(nn.Module):

        def __init__(self, embedding_dim, hidden_dim, vocab_size, tagset_size):
            super(LSTMTagger, self).__init__()
            self.hidden_dim = hidden_dim

            self.word_embeddings = nn.Embedding(vocab_size, embedding_dim)

            # The LSTM takes word embeddings as inputs, and outputs hidden states
            # with dimensionality hidden_dim.
            self.lstm = nn.LSTM(embedding_dim, hidden_dim)

            # The linear layer that maps from hidden state space to tag space
            self.hidden2tag = nn.Linear(hidden_dim, tagset_size)

        def forward(self, sentence):
            embeds = self.word_embeddings(sentence)
            lstm_out, _ = self.lstm(embeds.view(len(sentence), 1, -1))
            tag_space = self.hidden2tag(lstm_out.view(len(sentence), -1))
            tag_scores = F.log_softmax(tag_space, dim=1)
            return tag_scores

    model = LSTMTagger(EMBEDDING_DIM, HIDDEN_DIM, len(word_to_ix), len(tag_to_ix))
    loss_function = nn.NLLLoss()
    optimizer = optim.SGD(model.parameters(), lr=0.1)

    # See what the scores are before training
    # Note that element i,j of the output is the score for tag j for word i.
    # Here we don't need to train, so the code is wrapped in torch.no_grad()
    with torch.no_grad():
        inputs = prepare_sequence(training_data[0][0], word_to_ix)
        tag_scores = model(inputs)
        print(tag_scores)

    for epoch in range(300):  # again, normally you would NOT do 300 epochs, it is toy data
        for sentence, tags in training_data:
            # Step 1. Remember that Pytorch accumulates gradients.
            # We need to clear them out before each instance
            model.zero_grad()

            # Step 2. Get our inputs ready for the network, that is, turn them into
            # Tensors of word indices.
            sentence_in = prepare_sequence(sentence, word_to_ix)
            targets = prepare_sequence(tags, tag_to_ix)

            # Step 3. Run our forward pass.
            tag_scores = model(sentence_in)

            # Step 4. Compute the loss, gradients, and update the parameters by
            #  calling optimizer.step()
            loss = loss_function(tag_scores, targets)
            loss.backward()
            optimizer.step()

    # See what the scores are after training
    with torch.no_grad():
        inputs = prepare_sequence(training_data[0][0], word_to_ix)
        tag_scores = model(inputs)

        # The sentence is "the dog ate the apple".  i,j corresponds to score for tag j
        # for word i. The predicted tag is the maximum scoring tag.
        # Here, we can see the predicted sequence below is 0 1 2 0 1
        # since 0 is index of the maximum value of row 1,
        # 1 is the index of maximum value of row 2, etc.
        # Which is DET NOUN VERB DET NOUN, the correct sequence!
        print(tag_scores)


<a id="org60fb9e3"></a>

### variable-sized mini-batches

<https://towardsdatascience.com/taming-lstms-variable-sized-mini-batches-and-why-pytorch-is-good-for-your-health-61d35642972e>


<a id="orgc78d53d"></a>

### GPU CUDA

device = torch.device("cuda:0" if torch.cuda.is<sub>available</sub>() else "cpu")
if torch.cuda.is<sub>available</sub>():
    input = input.cuda()  # GPU
    target = target.cuda()  # GPU
    test<sub>input</sub> = test<sub>input.cuda</sub>()
    test<sub>target</sub> = test<sub>target.cuda</sub>()

seq: Model = Sequence()
seq.double()
seq = seq.to(device)  # GPU

self.hidden = (torch.rand(self.levels, input.size(0), 51, dtype=torch.double),  # layers, batch, hidden
		   torch.rand(self.levels, input.size(0), 51, dtype=torch.double))
if torch.cuda.is<sub>available</sub>():
    self.hidden = (self.hidden[0].cuda(), self.hidden[1].cuda())


<a id="orgbd8d580"></a>

### SGD

optim = torch.optim.SGD(model.parameters(), lr=0.01)
lr = 0.5 \* 1.2
    optimizer = torch.optim.SGD(seq.parameters(), lr=lr, momentum=0.2)
    for s in range(STEPS):
        lr = lr / 1.2
        print("lr", lr)

for g in optimizer.param<sub>groups</sub>:
    g['lr'] = lr


<a id="org7131d73"></a>

## train

data, target = data.to(device), target.to(device)

optimizer.zero<sub>grad</sub>()

output = model(data)

loss = F.nll<sub>loss</sub>(output, target)

loss.backward(retain<sub>graph</sub>=True)

optimizer.step()

When we call **loss.backward()** - all Tensors in the graph that has requires<sub>grad</sub>=True will have their .grad
Tensor accumulated with the gradient.


<a id="orgb02c773"></a>

## retain<sub>graph</sub>

<https://pytorch.org/docs/stable/autograd.html>

    loss.backward(retain_graph=True)

LSTM slowed becouse of hidden state saved between. Solutions:

-   detach/repackage the hidden state in between batches.
    -   hidden.detach<sub>()</sub>
    -   hidden = hidden.detach()


<a id="org8630b66"></a>

# hyperparemeter optimization library **test-tube**

<https://github.com/williamFalcon/test-tube>


<a id="orgc128735"></a>

# Keras

-   <https://keras.io/>
-   <https://keras.io/optimizers/>
-   CNN <https://www.learnopencv.com/image-classification-using-convolutional-neural-networks-in-keras/>

MIT нейросетевая библиотека

-   надстройку над фреймворками Deeplearning4j, TensorFlow и Theano
-   Нацелена на оперативную работу с сетями глубинного обучения
-   компактной, модульной и расширяемой
-   высокоуровневый, более интуитивный набор абстракций, который делает простым формирование нейронных сетей,
-   channels<sub>last</sub> - default for keras [47.8](#orgf3fcd79)

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


<a id="org2f9dfb5"></a>

## install

pip install keras &#x2013;user


<a id="org4d0117f"></a>

## API types

-   Model subclassing: from keras.models import Model
-   Model constructor - deprecated
-   Functional API
-   Sequential model


<a id="org645b6d6"></a>

## Sequential model

-   first layer needs to receive information about its input shape - following layers can do automatic shape

inference


<a id="org3fe09f6"></a>

## functional API


<a id="orga73aaf4"></a>

## Layers

-   layer.get<sub>weights</sub>()
-   layer.get<sub>config</sub>(): returns a dictionary containing the configuration of the layer.


<a id="org59410fd"></a>

### types

-   Input - instantiate a Keras tensor Input(shape=(784,)) - indicates that the expected input will be batches
    of 784-dimensional vectors
-   Dense - Each neuron recieves input from all the neurons in the previous layer
-   Embedding -  can only be used as the first layer
-   Merge Layers  - concatenate  - Add  - Substract  - Multiply  - Average etc.
    -


<a id="orgac5480c"></a>

### Dense

-   output = activation(dot(input, kernel) + bias)


<a id="org32f888a"></a>

## Models

attributes:

-   model.layers is a flattened list of the layers comprising the model.
-   model.inputs is the list of input tensors of the model.
-   model.outputs is the list of output tensors of the model.
-   model.summary() prints a summary representation of your model. Shortcut for
-   model.get<sub>config</sub>() returns a dictionary containing the configuration of the model.


<a id="org63c0207"></a>

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


<a id="orgda73c29"></a>

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


<a id="org8d6a632"></a>

## ValueError: Error when checking input: expected input<sub>1</sub> to have 3 dimensions, but got array with shape

if

    Input(shape=(5,100))

then

    model.fit(x_embed, y_onehot, epochs=3, batch_size=1)

where x<sub>embed.shape</sub> = (1, 5, 100)


<a id="org19302fa"></a>

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


<a id="orgcbdcbc0"></a>

## convolution

-   **filters** - dimensionality of the output space - In practice, they are in number of 64,128,256, 512 etc.
-   **kernel<sub>size</sub>** is size of these convolution filters -  sliding window. In practice they are 3x3, 1x1 or 5x5
-   Note that number of filters from previous layer become the number of channels for current layer's input image.


<a id="orgc37bace"></a>

## character CNN

<https://towardsdatascience.com/besides-word-embedding-why-you-need-to-know-character-embedding-6096a34a3b10>


<a id="org887e5ac"></a>

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


<a id="orgf195100"></a>

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


<a id="orgb8aba37"></a>

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


<a id="org2eeafd5"></a>

## CNN Rotate


<a id="orgb5ec61d"></a>

## LSTM

<https://machinelearningmastery.com/understanding-stateful-lstm-recurrent-neural-networks-python-keras/>
By default the Keras implementation resets the network state after each training batch.

    model.add(LSTM(50, batch_input_shape=(batch_size, X.shape[1], X.shape[2]), stateful=True))
    model.reset_states() # at the end of epoch


<a id="org21172c8"></a>

# Tesseract - Optical Character Recognition

-   <https://github.com/tesseract-ocr/tesseract>
-   man <https://github.com/tesseract-ocr/tesseract/blob/master/doc/tesseract.1.asc>


<a id="org535100f"></a>

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


<a id="org440def3"></a>

## black and white list

<https://github.com/tesseract-ocr/langdata/blob/master/rus/rus.training_text>

-   ./tesseract -l eng /home/u2/Documents/2.jpg stdout -c tessedit<sub>char</sub><sub>blacklist</sub>='0123456789'
-   ./tesseract -l eng /home/u2/Documents/2.jpg stdout -c tessedit<sub>char</sub><sub>whitelist</sub>='0123456789'

    print(pytesseract.image_to_string(im, lang='rus', config='-c tessedit_char_whitelist=0123456789'))


<a id="orgdc3beb1"></a>

## notes

when we repeat symbol it start to recognize it


<a id="org7024ad8"></a>

## prepare

-   <https://github.com/tesseract-ocr/tesseract/wiki/ImproveQuality>

-   20-30 pix - height character


<a id="orge12f0a0"></a>

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


<a id="org4315070"></a>

# FEATURE ENGEERING


<a id="org5c01a09"></a>

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


<a id="orgfa98710"></a>

### variable types

-   <https://docs.featuretools.com/en/stable/api_reference.html#variable-types>

-   **Index:** указывается при созданни Entity
-   **Id:** foreign key


<a id="org78bf091"></a>

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


<a id="org4396f6d"></a>

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


<a id="orga82826f"></a>

### oparations

-   <https://primitives.featurelabs.com/>

    ft.list_primitives().head(5)


<a id="org7968e78"></a>

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


<a id="org78b7a53"></a>

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


<a id="org1401538"></a>

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


<a id="org74dccc8"></a>

### EXAMPLE from pandas

    es = ft.EntitySet()
    matches_df = pd.read_csv("./matches.csv")
    es.entity_from_dataframe(entity_id="matches",
                             index="match_id",
                             time_index="match_date",
                             dataframe=matches_df)


<a id="orge4161fe"></a>

## TODO informationsfabirc

-   <https://www.informationsfabrik.com/>
-   <https://github.com/Informationsfabrik/feature-engineering-slides/blob/master/pydata2019_feature-engineering.pdf>


<a id="org0648a93"></a>

## TODO TPOT

-   <https://epistasislab.github.io/tpot/>


<a id="orga88d386"></a>

## TSFRESH (time sequence)

-   <https://tsfresh.readthedocs.io/en/latest/>


<a id="org9e34353"></a>

## ATgfe - new feature

<https://github.com/ahmed-mohamed-sn/ATgfe>


<a id="org66b01f1"></a>

# support libraries

-   **dask:** scale numpy, pandas, scikit-learn, XGBoost
-   tqdm - progress meter for loops: for i in tqdm(range(1000)):
-   msgpack - binary serialization of JSON for example
-   cloudpickle - serialize to "pickle" lambda and classes
-   tornado - non-blocking network I/O
-   BeautifulSoup - extract data for web html pages


<a id="org47e82a1"></a>

# Microsoft nni AutoML framework (stupid shut)

-   <https://github.com/microsoft/nni>
-   <https://github.com/microsoft/nni/blob/master/docs/en_US/FeatureEngineering/Overview.md>


<a id="org0824433"></a>

# help


<a id="org0e66d9a"></a>

## build-in help

1.  help(L.append) - docstr and many things
2.  dir() or dir(object) - list of all the globals and locals.
3.  locals() variables, and their values (called inside method)
4.  globals() method returns all the global variables, and their values, in a dictionary


<a id="org1c4b18a"></a>

# IDE

By default, Python source files are treated as encoded in UTF-8 to change it:

    #!/usr/bin/env python3
    # - '*' - coding: cp1252 -*-

<https://en.wikipedia.org/wiki/Comparison_of_integrated_development_environments#Python>


<a id="org9ae89be"></a>

## EPL

py.exe or python.exe file [arg]

-   Exit - Control-D on Unix, Control-Z on Windows.  - quit();
-   blank line; this is used to end a multi-line command.


<a id="org18808af"></a>

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


<a id="org0ec6aec"></a>

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


<a id="orge56acbb"></a>

## Emacs

M-~	menu


<a id="org9364afe"></a>

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


<a id="orgc692259"></a>

### Emacs

<https://habr.com/ru/post/303600/>

-   <https://crafting.be/2015/06/emacs-python-django-dev/>

.emacs.d/lisp

-   **Company** is a text completion framework for Emacs <http://company-mode.github.io/>
-   **Jedi** Python auto-completion package <http://tkf.github.io/emacs-jedi/latest/>
-   **Elpy** Emacs Python Development Environment <https://github.com/jorgenschaefer/elpy>


<a id="org2130ba0"></a>

## PyCharm


<a id="orge47685b"></a>

### installation:

-   Other settings -> settings for new project -> Tools -> Python integrated tools -> docstrings - reStructuredText
-   Ctrl+Alt+S -> keymap - Emacs
-   Ctrl+Alt+S -> keymap - Error Description -> add key Alt+\\
-   Ctrl+Alt+S -> keymap - Close; Editor tabs -> add key Ctrl+4
-   Ctrl+Alt+S -> keymap - Navigate; Back -> add key Ctrl+\\
-   Ctrl+Alt+S -> keymap - Select next tab -> Alt+E
-   Ctrl+Alt+S -> keymap - Select previous tab -> Alt+A


<a id="orgf9e6245"></a>

### keys

-   Ctrl+Shift+U - to upper case

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

**navigate**

-   Ctrl+Alt+g - navigate to definition
-   Ctrl+\\ - Navigate; Back (my)

**Bookmars**

-   Alt+2 - bookmars and debug points
-   F11 - create
-   Shift-F11 bookmars

**not emacs**

-   Ctrl+/ - comment text
-   Ctrl+b - navigate to definition


<a id="orge7abd3c"></a>

## ipython

-   Ctrl+e Ctrl+o - multiline code or if 1:
-   Ctrl+r - search in history


<a id="org29f392f"></a>

## geany

no autocompletion


<a id="org2390ae3"></a>

## BlueFish

Style - preferences->Editor settings->Fonts&Colours->Use system wide color settings

-   S-C-c	comment
-   C-space	completion

to execute file:

-   preferences->external commands->
    -   any name:  xfce4-terminal  -e 'bash -c "python %f; exec bash"'

cons

-   cannot execute


<a id="org5797b17"></a>

## Eric

-   echo "dev-python/PyQt5 network" >> /etc/portage/package.use/eric
-   emerge mercurial PyQt5 qscintilla-python dev-qt/qtcharts dev-qt/qtwebengine
-   cd /usr/local
-   hg clone <https://hg.die-offenbachs.homelinux.org/eric>
-   or <https://sourceforge.net/projects/eric-ide/files/latest/download>
-   select branch
    -   hg up eric7-maintenance (PyQt6)
    -   hg up eric6 (PyQt5)


<a id="org7f2a41b"></a>

# Jupyter Notebook

<https://jupyter-notebook.readthedocs.io/en/stable/examples/Notebook/Importing> Notebooks.html
**.ipynb**


<a id="org247699e"></a>

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


<a id="org8f528bc"></a>

## install

    pip3 install nbconvert --user

launch:

-   cd to folder with .ipynb
-   jupyter-notebooks # it will open browser


<a id="orgc40fed2"></a>

## convert **to htmp**

    ipython nbconvert /home/u2/tmp/Lecture_10_decision_trees.ipynb


<a id="org6772e89"></a>

## Widgets


<a id="orgf82429a"></a>

### install

-   list <https://ipywidgets.readthedocs.io/en/stable/examples/Widget%20List.html>

run

-   pip install ipywidgets &#x2013;user
-   jupyter nbextension enable &#x2013;py widgetsnbextension


<a id="org8a3b10b"></a>

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


<a id="org470820c"></a>

### widget abbreviation

-   **Checkbox:** True or False
-   **Text:** 'Hi there'
-   **IntSlider:** value or (min,max) or (min,max,step) if integers are passed
-   **FloatSlider:** value or (min,max) or (min,max,step) if floats are passed
-   **Dropdown:** ['orange','apple'] or \`[(‘one’, 1), (‘two’, 2)]


<a id="org57aff4f"></a>

### widget return type

-   **widgets.DatePicker:** datetime.date


<a id="org5b30ce1"></a>

### Styling

<https://ipywidgets.readthedocs.io/en/latest/examples/Widget%20Styling.html>

**Description**

-   style = {'description<sub>width</sub>': 'initial'}
-   IntSlider(description='A too long description', style=style)


<a id="org2ce46a2"></a>

## Hotkeys:

-   Enter - in cell
-   Escepe - exit cell
-   h - hotkeys
-   Ctrl+Enter/Shift+Enter - run
-   Tab - code completion
-   arrow up/down - above/below cell


<a id="orga2a9bb7"></a>

## emacs (sucks)

org-mode may evaluate code blocks using a Jupyter kernel
<https://github.com/gregsexton/ob-ipython>

jupyter<sub>console</sub>, jupyter<sub>client</sub>


<a id="org566ab89"></a>

## other

-   <https://proglib.io/p/analysis-hacks/>


<a id="org10045ba"></a>

## TODO lab

-   pip install jupyterlab
-   jupyter lab - <http://localhost:8888>


<a id="orged833a3"></a>

# USΕ CASES


<a id="orga75193e"></a>

## NET


<a id="orgc49efab"></a>

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


<a id="org878c026"></a>

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


<a id="org64f836d"></a>

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


<a id="org8a9b5d4"></a>

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


<a id="org525de12"></a>

## LISTS


<a id="orga41d224"></a>

### all has one value

    list.count('value') == len(list)


<a id="org994bbdd"></a>

### 2D list to 1D dict or list

    [j for sub in [[1,2,3],[1,2],[1,4,5,6,7]] for j in sub]

    {j for sub in [[1,2,3],[1,2],[1,4,5,6,7]] for j in sub}


<a id="orgf769ec2"></a>

### list to string

    ' '.join(w for w in a)


<a id="org852499f"></a>

### replace one with two

    l[pos:pos+1] = ('a', 'b')


<a id="orgb9d0018"></a>

### remove elements

**filter**

    self.contours = list(filter(lambda a: a is not None, self.contours))

**new list**

    a = [item for item in a if ...]

**iterate over copy**

    for i, x in enumerate(lis[:]):
      del lis[i]


<a id="orgb3fe6c3"></a>

### average

    [np.average((x[0], x[1])) for x in zip([1,2,3],[1,2,3])]


<a id="org2129f07"></a>

### [1, -2, 3, -4, 5]

    >>> [(x % 2 -0.5)*2*x for x in range(1,10)]
    [1.0, -2.0, 3.0, -4.0, 5.0, -6.0, 7.0, -8.0, 9.0]


<a id="orgac03a3b"></a>

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
            else:
                subflat.append('')
                subflat.append('')
        flat_list.append(subflat)


<a id="org04a4831"></a>

### Shuffle two lists

    z = list(zip(self.x, self.y))
    z = random.shuffle(z)
    self.x, self.y = zip(*z)


<a id="orgab1436f"></a>

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


<a id="org409ca23"></a>

### closest in list

    alph = [1,2,5,7]
    source = [1,2,3,6] # 3, 6 replace
    target = source[:]
    for i, s in enumerate(source
      if s not in alph:
        distance = [(abs(x-s), x) for x in alph
        res = min(distance, key=lambda x: x[0])
        target[i] = res[1]


<a id="org823814b"></a>

### TIMΕ SEQUENCE

**smooth**

    mean_ver1 = pandas.Series(mean_ver1).rolling(window=5).mean()


<a id="org0027124"></a>

### split list in chunks

    our_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    chunk_size = 3
    chunked_list = [our_list[i:i+chunk_size] for i in range(0, len(our_list), chunk_size)]
    print(chunked_list)


<a id="org0122361"></a>

## TODO TIMΕSEQUENCE


<a id="org41d15cb"></a>

## FILES

-   os.path.join('/home','user') - /home/user
-   os.listdir('/home/user') -> list of file<sub>names</sub> - files and directories
-   os.path.isdir/isfile() -> True False
-   os.walk() - subderictories = [(folder<sub>path</sub>, list<sub>folders</sub>, list<sub>files</sub>), &#x2026; ]
-   extension = os.path.splitext(filename)[1][1:]

Extract from subolders:
find . -mindepth 2 -type f -print -exec mv {} . \\;


<a id="org4d337d7"></a>

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


<a id="orgfeff711"></a>

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


<a id="orgbae09d5"></a>

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


<a id="orgc8fb02b"></a>

### Export to Excell

<https://docs.python.org/3.6/library/csv.html>

    import csv
    wtr = csv.writer(open('out.csv', 'w'), delimiter=';', lineterminator='\n')
    wtr.writerows(flat_list)


<a id="org4b1db13"></a>

### NameError: name 'A' is not defined

    try:
        file.close()
    except NameError:


<a id="org77eabe6"></a>

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


<a id="org9d193d9"></a>

### current directory

    import sys, os
    os.path.abspath(sys.argv[0])


<a id="org688acb6"></a>

## STRINGS


<a id="orgc2d322a"></a>

### String comparision

<https://stackabuse.com/comparing-strings-using-python/>

-   == compares two variables based on their actual value
-   **is** operator compares two variables based on the object id

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

3.  hamming distance

        import hashlib

        def hamming_distance(chaine1, chaine2):
            return sum(c1 != c2 for c1, c2 in zip(chaine1, chaine2))

        def hamming_distance2(chaine1, chaine2):
            return len(list(filter(lambda x : ord(x[0])^ord(x[1]), zip(chaine1, chaine2))))
        print(hamming_distance("chaine1", "chaine2"))

        print(hamming_distance2("chaine1", "chaine2"))


<a id="org9f30590"></a>

### Remove whitespaces

    line = " ".join(line.split()) # resplit


<a id="org0b07fe2"></a>

### Unicode

-   '\u2116'.encode("unicode<sub>escape</sub>")


<a id="orgcb1c533"></a>

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


<a id="org999faf0"></a>

### first substring

-   str.find
-   by regex:

    m = re.search("[0-9]*")
      if m:
        num = d[m.start():m.end()]


<a id="orge7d174a"></a>

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


<a id="org41d72d2"></a>

### del

**loop with clone**

    for k,v in list(d.items()):
      if v is bad:
         del d[k]
    # or
    {k,v for k,v in list(d.items()) if v is not bad}

**filter**

    self.contours = list(filter(lambda a: a is not None, self.contours))


<a id="org42c8749"></a>

## command line arguments

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


<a id="org562263c"></a>

## way to terminate

sys.exit()


<a id="org9d9667f"></a>

## JSON

may be array or object

-   замана " на  \\"
-   замена \\ на


<a id="orged6dd51"></a>

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


<a id="orgfae424a"></a>

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


<a id="orgd3d3643"></a>

## print numpers

    n=123123123412
    print(f"{n:,}")

>>> 123,123,123,412


<a id="org1ee991d"></a>

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


<a id="org15bd5d4"></a>

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


<a id="org6b70cd7"></a>

## one-hot encoding


<a id="org54d7ca8"></a>

### we have [1,3] [1,2,3,4], [3,4] -> numbers

    import numpy as np
    nb_classes = 4
    targets = np.array([[2, 3, 4, 0]]).reshape(-1)
    one_hot_targets = np.eye(nb_classes)[targets]
    res:int = sum([x*(2**i) for i, x in enumerate(sum(one_hot_targets))]) # from binary to integer


<a id="orged08e22"></a>

### column of strings

    def one_h_str_col(col: np.array, name: str):
        c = list(set(col))  # unique
        print(name, c)  # encoding
        res_col = []
        for x in col:
            ind = c.index(x)
            res_col.append(ind)
        return np.array(res_col)


<a id="orgefbf995"></a>

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


<a id="orga3262ad"></a>

## map encoding

    df['`condition`'] = df['`condition`'].map({'new': 0, 'uses': 1})


<a id="orgb80fac3"></a>

## Accuracy

    import numpy as np

Accuracy = (TP+TN)/(TP+TN+FP+FN):

    print("%f" % (np.round(ypred2) != labels_test).mean())

Precision = (TP) / (TP+FP)


<a id="orgb753785"></a>

## garbage collect

del train, test; gc.collect()


<a id="orga1bb0dc"></a>

## Class **loop for member varibles**

    for x in vars(instance): # string names
       v = vars(e)[x]  # varible


<a id="org6953d42"></a>

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


<a id="orgafcba5f"></a>

# Flask

-   Flask and Quart built on Werkzeug and uses Jinja for templating.
-   Flask wraps Werkzeug, allowing it to take care of the WSGI intricacies while also offering extra structure
    and patterns for creating powerful applications.
-   Quart — an async reimplementation of flask

-   get data <https://stackoverflow.com/questions/10434599/how-to-get-data-received-in-flask-request>
-   app.config['JSON<sub>AS</sub><sub>ASCII</sub>'] = False # disabling ASCII-safe encoding opens the door for issues with U+2028
    and U+2029 separators in the data to break Javascript interpolation or JSONP APIs
    <http://timelessrepo.com/json-isnt-a-javascript-subset>

Для возвращаемого значения создается

-   Response 200 OK, with the string as response body, text/html mimetype
-   (response, status, headers) or (response, headers)


<a id="org7c902e5"></a>

## static files and debugging console


<a id="org3eee472"></a>

### get URL

    from flask import url_for
    from flask import redirect
    @app.route("/")
    def hell():
        return redirect(url_for('static', filename='style.css'))


<a id="org2301829"></a>

### path and console

default:

-   in localhost:8080/console
    -   >>> print(app.static<sub>folder</sub>)
    -   /home/u/static
    -   >>> print(app.static<sub>url</sub><sub>path</sub>)
    -   /static

if we set: app = Flask(static<sub>folder</sub>='test')

-   >>> print(app.static<sub>folder</sub>)
-   /home/u/test
-   >>> print(app.static<sub>url</sub><sub>path</sub>)
-   /test

    app = Flask(__name__, template_folder='./',
                static_url_path='/static',
                static_folder='/home/u/sources/documents_recognition_service/docker/worker/code/test'
                )


<a id="org2995dc2"></a>

## start


<a id="orged35a0f"></a>

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


<a id="org8a7793e"></a>

### start $flask run (recommended)

    export FLASK_ENV=development
    export SERVER_NAME=127.0.0.1:8000
    flask --app main run

-   <https://flask.palletsprojects.com/en/2.1.x/config/>


<a id="org376ab21"></a>

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


<a id="org66e7212"></a>

## GET


<a id="org2a707d4"></a>

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


<a id="orgea864d8"></a>

### parameters ?key=value

    from flask import request
    searchword = request.args.get('key', '')


<a id="org1d25b89"></a>

## dependencies

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


<a id="orge089287"></a>

## EXAMPLES

    import flask
    from flask import Flask
    from flask import json, Response

    app = Flask(__name__, template_folder='./', static_folder='./')

    @app.route("/predict", methods=["POST"])
    def predict():
        data = {"success": False}

        if flask.request.method != "POST":
            json_string = json.dumps(data, ensure_ascii=False)
            return Response(json_string, content_type="application/json; charset=utf-8")


    from markupsafe import escape

    @app.route("/<name>")
    def hello(name):
        return f"Hello, {escape(name)}!"


    @app.route("/")
    def hello() -> str:
        return "Hello World"


    if __name__ == "__main__":
        app.run(debug=False)


<a id="orgd9e5acf"></a>

## curl

-   <https://gist.github.com/subfuzion/08c5d85437d5d4f00e58>

**one string**

application/x-www-form-urlencoded is the default:

    curl -d "param1=value1&param2=value2" -X POST http://localhost:3000/data

explicit:

    curl -d "param1=value1&param2=value2" -H "Content-Type: application/x-www-form-urlencoded" -X POST http://localhost:3000/dat


<a id="org73d5b4b"></a>

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


<a id="orgf6c5002"></a>

## request object

-   from flask import request

-   <https://flask.palletsprojects.com/en/2.2.x/api/#flask.Request>


<a id="org96d512b"></a>

## security

-   from markupsafe import escape; return f"Hello, {escape(name)}!"


<a id="org8abc95a"></a>

## testing

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


<a id="org36ad131"></a>

## Flask-2.2.2 hashes <a id="org7fa3e34"></a>

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


<a id="orgc996dcf"></a>

## USECASES


<a id="org157552e"></a>

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


<a id="orgcff0aea"></a>

### call POST method

    request.files = {'file': open('/home/u/a.html', 'rb')}
    request.method = 'POST'
    r = upload()
    # ('{"id": "35f190f6aa854b6c9bb0c64e601c0eda"}', 200, {'Content-Type': 'application/json'})


<a id="orgf694bf5"></a>

### call GET method with arguments

    request.args = {'id': rid}
    r = get()
    app.logger.debug("r " + json.dumps(json.loads(r[0]), indent=4))


<a id="orgd3a488a"></a>

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


<a id="org37d5653"></a>

# Databases


<a id="org0433658"></a>

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


<a id="org588eeac"></a>

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


<a id="orgbec1add"></a>

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


<a id="orgdb6de01"></a>

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


<a id="orgea50ede"></a>

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


<a id="org5572c6f"></a>

## MySQL


<a id="orga0bc8a1"></a>

# Virtualenv

enables multiple side-by-side installations of Python, one for each project.


<a id="org2536870"></a>

## venv - default module

Creation of virtual environments is done by executing the command venv:

-   python3 -m venv path


<a id="orgea4b49c"></a>

## virtualenv

-   pip3.6 install virtualenv &#x2013;user
-   ~/.local/bin/virtualenv ENV
-   source ENV/bin/activate


<a id="org8d974cc"></a>

# ldap

apt-get install libsasl2-dev python-dev libldap2-dev libssl-dev


<a id="orge873ae8"></a>

# Containerized development

Docker

-   ENV values are available to containers

    USER = os.getenv('API_USER')
    PASSWORD = os.environ.get('API_PASSWORD')

    os.environ['API_USER'] = 'username'
    os.environ['API_PASSWORD'] = 'secret'


<a id="org0d34933"></a>

# security

-   html.escape - <html> => &lt;html&gt;
-   from werkzeug.utils import secure<sub>filename</sub> - request.files['the<sub>file</sub>'].filename
-   [30.8](#orgc37fc5d) - [59.12](#org7fa3e34)
