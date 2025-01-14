
# Table of Contents

1.  [information theory](#orga533e43)
    1.  [Entropy (information theory) or Shannon entropy](#orgcb532e6)
        1.  [entropy ](#orgfd74ac0)
        2.  [cross entropy or log<sub>loss</sub>](#org4b3d6b2)
        3.  [why -p\*log(p)?](#org1918437)
    2.  [Redundancy - Избыточность информации](#org2240b78)
    3.  [Homogeneity and heterogeneity](#org11826bc)
    4.  [Abstractions or [Generalist vs specialist] or usability vs hackability](#orgb8b439f)
    5.  [Dual process theory](#org21c2e95)
    6.  [Taxonomy](#org3053935)
        1.  [Applications](#org7fac21a)
        2.  [Building a taxonomy for entities that can be both processes and objects](#org4167e9a)
        3.  [ER diagram, Entity-Relationship Model (ER Model), Entity-relationship diagrams (ERDs)](#org503020b)
        4.  [Entity–Attribute–Value (EAV) model or Object-Attribute-Value Model and Open Schema.](#org315587e)
    7.  [First principle](#orga69c514)
2.  [Unix philosophy](#orgcc39814)
    1.  [short:](#org2199ed8)
    2.  [2003 Eric Raymond's 17 Unix Rules or design rules](#org9572709)
    3.  [1994 Mike Gancarz: The UNIX Philosophy](#org36a93c9)
    4.  [Functionl Programming](#org5055d60)
3.  [Rare terms](#org2486202)
4.  [Algorithms](#org8f33e2b)
    1.  [classification](#orgdd24096)
        1.  [By implementation](#org3eb06d9)
        2.  [By design paradigm](#orgf268ca2)
        3.  [Optimization problems](#orge441492)
        4.  [Adaptive Filters](#org3e9050d)
        5.  [by learning](#orgd1eae9e)
    2.  [solution:](#org1fcc315)
    3.  [Teaching](#orge9b4ec4)
        1.  [Fibonacci sequence](#org2ad65a2)
5.  [sorting algorithms](#org92d9fbe)
6.  [Computational complexity](#org29c5240)
    1.  [terms](#org138590b)
    2.  [machines](#orgd506a2b)
        1.  [Finite-state machine](#org2fc4f5e)
        2.  [Turing machines](#org013fc56)
        3.  [Circuit models](#org84aee20)
    3.  [Complexity class](#org39a0db5)
    4.  [Hardness](#org1eaef60)
    5.  [Completeness](#org10c5533)
    6.  [NP-трудность](#orga3cbe72)
    7.  [Orders of growth, time complexity](#org71f2770)
    8.  [links](#org6145069)
7.  [OOP](#org03ab13a)
    1.  [late binding](#org12f645b)
    2.  [polymorhism](#org50b785b)
    3.  [Multiple dispatch or multimethods](#orgd4f5ca3)
    4.  [subtyping vs inheritance](#org82fedaa)
    5.  [inheritance vs composition](#org89aa992)
8.  [Data Oriented (DO) programming](#org842629b)
    1.  [tendency of OO systems to be complex.](#org840e12d)
    2.  [universal data collections](#orgdbe421d)
    3.  [DO vs FP (functional programming)](#org227b03c)
9.  [functional or purely functional programming](#org76dc775)
    1.  [concepts of functional programming, higher-order functions](#org9ba4847)
    2.  [Temporal logic](#org5af40c1)
    3.  [Referential transparency](#org74bb0de)
    4.  [map & reduce](#org2917493)
10. [New Language learning](#orgd2615a0)
11. [Patterns, architect role](#org11b90aa)
    1.  [Bottom-up vs top-down design](#org8c17eb1)
    2.  [business needs](#orgae8cdc3)
    3.  [architect role](#org64aeadf)
        1.  [RDF approach - data driven](#org0251bae)
    4.  [architectural patterns](#org93369f5)
    5.  [Multitier architecture or client-server architecture or fronted-backed](#org710e2fb)
        1.  [Architectural Patterns MPV, MVC, MVVM](#org7a94754)
    6.  [Concurrent computing](#org577c6b9)
        1.  [terms](#org42be6de)
        2.  [theory](#org009533d)
        3.  [Linearizability ](#org8c38785)
        4.  [Concurrency patterns](#orgd8d420b)
        5.  [Concurrency approaches](#org04f7b31)
        6.  [Class of process interaction](#orge5fbed4)
        7.  [problems](#org3699725)
        8.  [Problem decomposition](#orgc8220df)
        9.  [parallel programming models](#org0fcbf4d)
        10. [Non-lock concurrency control](#org882ad16)
    7.  [Шаблоны проектирования ООП Design Patterns](#org8489fc5)
        1.  [Creational](#orgdd760c0)
        2.  [Structural](#org3838e19)
        3.  [Behavioural](#org65f5570)
        4.  [Concurrency](#org366dce7)
    8.  [Clean Architecture](#org5b12b76)
        1.  [Advantages:](#orgaa7f94e)
        2.  [Architecture](#org09801da)
        3.  [example 1](#org9f09eb7)
        4.  [example 2](#orgeb4f89f)
        5.  [same to](#org8f7495a)
    9.  [The Packaged Business Capabilities (PBC) pattern](#org36d9a91)
12. [paradigms](#org15b2dd6)
    1.  [Reactive programming](#orgea032ae)
    2.  [Programming paradigms](#org3cd0b40)
        1.  [imperative [ɪmˈpɛrətɪv]](#orgbb70815)
        2.  [declarative [dɪˈklærətɪv]](#org27beec5)
        3.  [Structured](#orgcaa1365)
        4.  [state in all paradigs](#orgbda3e90)
        5.  [Aspect-oriented programming](#orgbe8ceda)
        6.  [Literate programming](#org6e5acd7)
    3.  [Stream processing or dataflow programming or event stream processing or reactive programming](#org7237aea)
13. [data structures](#orga51f951)
    1.  [Binary search tree](#org4ee2ac6)
14. [Architectural style (design ideom)](#org7f8bec8)
    1.  [API-Based Integration (ChatGPT answer)](#org945c8fd)
    2.  [microservices vs SOA](#orgecf67a7)
    3.  [Monolithic Architecture](#orgba0a47b)
    4.  [Serverless Architecture](#org8c61e4d)
    5.  [Domain-Driven Design (DDD)](#orgab87916)
    6.  [Layered Architecture (N-Tier Architecture)](#org854762a)
    7.  [Space-Based Architecture (SBA)](#orga618db2)
    8.  [Cell-Based Architecture - extension of microservices](#org20a80fa)
    9.  [(EDA) Event-driven architecture](#org679d31b)
    10. [(REST) Representational State Transfer](#org65ef766)
        1.  [pros](#org8d8a2ce)
        2.  [terms](#org429bea5)
        3.  [HTTP ](#orgf1693b2)
        4.  [guidelines](#org5419688)
        5.  [CRUD methods:](#org2015335)
        6.  [Architectural constrains:](#orge014de4)
        7.  [Advantages:](#orge15d967)
        8.  [Error handeling](#org0b1521c)
        9.  [Design](#orgd3c8143)
        10. [model: Richardson Maturity Model (RMM)](#orgda79f33)
        11. [model: https://algermissen.io/classification\_of\_http\_apis.html](#org136f843)
        12. [model: https://www.researchgate.net/publication/281287283\_A\_Maturity\_Model\_for\_Semantic\_RESTful\_Web\_APIs](#org41a4445)
        13. [The Open API Initiative](#org28c9532)
        14. [links](#org776e826)
    11. [(SOA) Service-oriented architecture [ˈɔːrɪənt] [ˈɑːkɪˌtɛktʃə]](#org520a6b1)
        1.  [Principles](#org0015ae1)
        2.  [Roles](#org500fddf)
    12. [plugin-based architecture](#orgf9aa05d)
    13. [Hexagonal architecture (or ports and adapters)](#org3d7b4cd)
    14. [API design](#org8feee4e)
15. [Design principles](#orgf27afa5)
    1.  [SOLID](#orga0382bd)
    2.  [variance, covariance and contravariance](#orgfbc2115)
        1.  [links](#orgd1fecde)
    3.  [Liskov substitution principle imposes some standard requirements on signatures:](#orgac2f932)
    4.  [Inversion of Control (IoC) Инверсия управления](#org2040859)
    5.  [separation of concerns](#org126446e)
    6.  [links](#org5e8e0e2)
16. [Methodologies and frameworks - frequent updates](#org06e99a1)
    1.  [Twelve-Factor App methodology](#org4fb1f48)
    2.  [Security Development Lifecycle (SDL) (Microsoft)](#orgc38686d)
        1.  [Этапы SDL](#orgfd6bd09)
        2.  [training](#orga300135)
        3.  [requirements](#org4c24750)
        4.  [links](#orged725d7)
        5.  [SDLC](#orgd4c14a5)
    3.  [Operational Security (Microsoft)](#org8eb9093)
    4.  [SRE vs ITIL vs DevOps](#orgca64332)
    5.  [SRE](#org52bda55)
    6.  [ITIL](#org5a4f9fd)
        1.  [ITIL Service Desk Framework](#org563a042)
    7.  [DevOps CALMS - IT transformation](#org4a77d54)
    8.  [SLO and SLI](#org26665ce)
17. [low level operations](#org2954a64)
18. [areas, a patterns, des pattern](#org8b43e3b)
19. [Software development methodology](#orgb384ec6)
    1.  [Extreme programming (XP)](#org4c19862)
20. [Software development](#org7aa844f)
    1.  [waterfall Разработка ПО – полный цикл](#org643ddbb)
    2.  [Заказная разработка программного обеспечения](#org29177c6)
    3.  [продуктовый подход](#org28ce1a3)
    4.  [Ontology engineering ](#orga964d96)
    5.  [Formal representation or visualize the design](#org5d1dff2)
        1.  [Unified Modeling Language (UML)](#org0c025da)
    6.  [Formal methods, Formal verification techniques](#orgfcf3bc1)
        1.  [terms](#org306ec87)
        2.  [applyed to:](#orgf55627a)
        3.  [can be used at a number of levels](#org717977f)
        4.  [Hoare logic or Floyd–Hoare logic or Hoare rules - Логика Хоара](#orgf1ca515)
        5.  [B-Method - software development](#org3f268c3)
    7.  [Practices](#orga036adf)
        1.  [(TDD) Test-driven development](#org4ffaf0e)
        2.  [(BDD) Behavior-driven development](#orgdaed881)
        3.  [(DDD) Domain-driven design](#orgf62c56a)
        4.  [Design by contract (DbC) or contract programming](#org996288d)
    8.  [Software Testing](#org734db03)
        1.  [function tests](#orgd61662a)
        2.  [web-app testing](#orge87d36c)
    9.  [Service testing](#orgcaf5068)
    10. [Technique tɛkˈniːk](#org11b63cd)
    11. [Microservices](#org35b27ee)
        1.  [async vs sync](#org17afd6f)
        2.  [Quality ](#orgf064e17)
        3.  [Updating](#orgb2f346c)
        4.  [Compatibility problem](#org3285652)
        5.  [load testing](#org9543289)
        6.  [API architecture](#orgddfd936)
        7.  [service mesh](#org4065e8f)
        8.  [Guaranteed delivery patterns - Consistency.](#orgbbff1de)
    12. [principle](#orgdbf5c6e)
    13. [Continuous integration (CI) & Continuous delivery (CD) & Continuous deployment](#orgc82a1db)
    14. [DevOps](#org9f81725)
    15. [Infrastructure-as-Code (marketing use case) ](#org0fe2328)
    16. [Library development](#orga6ee6a4)
        1.  [linkding](#org58789f3)
    17. [remote procedure call (RPC)](#org8b76d2b)
    18. [Framework development](#org8e5e412)
    19. [links](#orgb4929f8)
21. [Documentation Engineering](#orgf7cf7ed)
22. [structured systems engineering methodologies](#orgca7ce75)
    1.  [integrated product team (IPT)](#orgcc2b425)
23. [Programming Languages Evolution](#org94f4625)
    1.  [Rust vs C](#org811aa50)
    2.  [Rust](#org060cec6)
24. [SSO/IAM](#orgbccd851)
25. [(RFP) Request for Proposal](#org3f8eb50)
    1.  [RFP Template and Sample](#org2cfb084)
26. [DevOps](#org55ad126)
    1.  [Cultural Philosophy](#org485a602)
    2.  [benefits of DevOps](#org65cc1e4)
    3.  [concepts](#org96d1385)
    4.  [project management and issue tracking tool](#orga78dc68)
    5.  [automation server and platforms](#org1e833a7)
    6.  [corporate wiki](#org6d147d4)
    7.  [deploy](#orgef22019)
    8.  [lean thinking](#orgabb29b3)
    9.  [principles](#orgbc0ddd4)
    10. [practices](#org31faba0)
    11. [paradigms](#orgdb454cc)
    12. [digital transformation](#org2f9d6db)
    13. [CI/CD lifecycle](#orgbd0bf91)
27. [Management accounting](#orgaf8a990)
    1.  [Total cost of ownership (TCO), TCO analysis](#org092d67c)
28. [Corporate law](#org77e602e)
29. [Outsourcing](#org05a307f)
30. [Marketing](#org350a15d)
    1.  [job to be done (job-to-be-done)](#orgee1b3f1)
    2.  [NBO/NBA Next Best Offer and Next Best Action](#org48bbd3b)
31. [Advertising](#org22f4824)
32. [workflow automation](#org50cc937)
    1.  [steps of RPA](#org3434578)
    2.  [Primo RPA ROM (Robotic Operational Model) - методология](#org55717cf)
33. [Clear code](#org5d62810)
34. [file formats YAML](#org10e2490)
    1.  [theory](#orgd670ddc)
        1.  [ex](#org3c7e041)
    2.  [terms](#org7833b1a)
    3.  [scalars](#org0f98f6a)
    4.  [indentation](#org3ba7e79)
    5.  [comments](#orgc230b22)
    6.  [sequence or list or type !!seq](#org80539e5)
    7.  [mappings or dict or !!map](#orgda075f7)
        1.  [basic or simple mapping](#org206a2a6)
        2.  [Mapping with complex keys (canonical form)](#orge94693c)
        3.  [flow style](#orgea6062e)
    8.  [sequance + mappings](#org5bd4bda)
    9.  [documents separator](#org8ccb314)
    10. [repeated nodes](#orgf6e9f0d)
    11. [scalars or strings](#orgfd00282)
        1.  [flow scalar styles](#orge6e4fe3)
        2.  [multiline](#org3d07712)
    12. [merge keys or type !!merge](#orgc196f51)
    13. [aliases and anchors](#orgb29d172)
    14. [tags](#orga6f3de5)
        1.  [tags table](#org441a3f5)
        2.  [Names and modules](#orgcd185df)
        3.  [Objects](#org39d1752)
        4.  [Named tag handles](#orgcd4a5ed)
    15. [style](#org313756a)
    16. [tools](#orgd7b6915)
        1.  [checkers](#org4ad95ce)
        2.  [formatters](#orgf8c3282)
        3.  [parser and emitter for Python](#org1353bcc)
    17. [links](#orga18c26b)
35. [ORM object-relational mapping](#orgeed75db)
    1.  [object-relational impedance mismatch (imˈpēdns)](#org7195692)
    2.  [Misconceptions](#org188ee4a)
36. [Database](#org46f8a2a)
    1.  [Standards](#org975174c)
    2.  [SQL](#org6f21b2a)
        1.  [History](#org1a0b2f9)
        2.  [Comments](#org3937ad4)
        3.  [Null](#orgf491ed3)
        4.  [String concatenation](#org4b4c360)
        5.  [data types](#orgfd69826)
        6.  [Task 1) - get records from 1 table with 2 table by foreign-key with records count > 2](#org700ce2f)
        7.  [Task 2) -](#org6714f2c)
        8.  [JOIN объединение столбцов](#org2c89fee)
        9.  [UNION объединение строк - UNION ALL, INTERSECT, EXCEPT](#org0b54033)
        10. [GROUP BY heaving  group distinct](#org349d9c6)
        11. [Autoincrement](#org24c3b26)
        12. [Subqueries](#orge1cf650)
        13. [Window functions + common table expressions (CTE).](#orgeac667c)
        14. [?????? examples](#orgc9a8551)
        15. [grouping set](#org65ece0f)
        16. [json](#org3d5bf53)
    3.  [GraphQL](#org9148367)
        1.  [REST vs GraphQL](#org9801a14)
        2.  [solve REST problems](#org42aa26b)
        3.  [drawbacks](#org2992792)
        4.  [Ops:](#org5f6ec15)
        5.  [alternatives](#orgd74612e)
    4.  [Oracle](#org2ec08ba)
    5.  [PL/SQL (Procedural Language for SQL)](#org9b3f1ee)
        1.  [feauters](#orgefc5fb7)
        2.  [varibles](#orgca6c099)
        3.  [Cursor](#orgf5bbbe7)
        4.  [Record - Структура](#org0cb2fdc)
        5.  [Package](#org8b1c117)
        6.  [Procedures [prəˈsiːʤə] and functions  [fʌŋkʃnz]](#org848d31f)
        7.  [Triggers](#org20b3278)
        8.  [Collections](#org46af7ca)
        9.  [Exceptions](#org1ed24ae)
        10. [Transaction](#org0beb3fb)
        11. [Shema - структура для БД](#org6b57896)
        12. [program units:](#orgf31b85d)
        13. [Object oriented](#org789318c)
        14. [SQL Pseudocolumns](#org1d8afbc)
    6.  [OLTP vs OLAP](#orge729169)
    7.  [ACID (atomicity, consistency, isolation, durability)](#orgc48d72e)
    8.  [уровни изоляции транзакций](#orgd3475a4)
    9.  [in-memory databases](#org90e42e9)
    10. [column-oriented DBMS and Wide-column store](#org192241d)
    11. [Data medelling](#org02cae0c)
    12. [Embedded databases](#orge72ef09)
        1.  [SQLight - not java based](#org22982d2)
    13. [PostgreSQL](#orga356b1f)
    14. [triplestore or Resource Description Framework (RDF) store](#org17f14fe)
    15. [Property graph](#orgc2144aa)
    16. [RDF vs PG Property graph](#org459fc70)
    17. [Atomic commit](#orgdb67d15)
        1.  [Задача двух генералов Two Generals' Problem:](#org8c45964)
37. [telecommunications](#orged2fd50)
    1.  [terms](#orgbd70403)
    2.  [error detection and correction (EDAC) or error control](#orgf352cc1)
38. [networks](#org3b3ab35)
    1.  [proxy types](#orgbd510e4)
    2.  [ipv4](#orgf2aed55)
    3.  [ipv6](#org508ac87)
        1.  [multicast](#orgb756031)
    4.  [OSI model](#org1d96326)
    5.  [MTU, MRU, PDU](#org909929d)
    6.  [CIDR (Classless Inter-Domain Routing) prefix or slash notation](#orgb8da6fd)
        1.  [python ip range to slash notation](#orga9b533b)
    7.  [regional Internet registry (RIR)](#org000b7b7)
    8.  [TLS](#orgd28c3ca)
    9.  [Socks - intermediary in TLS](#org397038b)
    10. [Explicit Proxy with CONNECT Method - not intermediary in TLS](#org3e1dad4)
    11. [VPN](#org9058f8e)
39. [software characteristics](#orge44069d)
40. [performance boosting, code optimization, speed up](#org31a63a4)
    1.  [links](#org09a0871)
41. [Markup languages](#orgd4859e7)
42. [Blockchain](#org47ff977)
    1.  [A from-scratch tour of Bitcoin in Python](#org9d12bdd)
    2.  [terms](#org504a1d9)
    3.  [stablecoin ](#org5357634)
    4.  [criptocurrencies](#orgccc28b9)
        1.  [currencies by market cap](#orga45ce22)
    5.  [sybil attack](#orgebc250b)
    6.  [dapps](#orga750f85)
        1.  [gas](#org61f602c)
        2.  [classification](#org3182738)
        3.  [links](#orgde4a271)
    7.  [ipfs](#org846fa83)
    8.  [Ethereum](#orgced76d9)
        1.  [terms](#org4570589)
        2.  [two different client software:](#orgfd22c13)
    9.  [staking - proof of stake (PoS)](#org5512235)
    10. [(DAOs) Decentralized Autonomous Organizations](#orgaca2ada)
    11. [bitcoin basic](#orgb37a413)
    12. [competitions](#org2413501)
43. [Problem Solving and Information Gathering](#org2461a56)
    1.  [Five Ws](#orgad9ab34)
44. [version control systems](#org68086a4)
    1.  [terms](#org8c4e687)
    2.  [soft](#orge3a22d3)
    3.  [notes](#org6d66722)
    4.  [links](#orgb90aaec)
45. [Software licenses](#org7b6161f)
    1.  [GPLv3](#org9a4324a)
46. [Opensource](#org980b194)
    1.  [FSF, GNU, open source license](#orgd697f7f)
    2.  [Russian](#orgc30b243)
    3.  [Russian terms](#orgbef4da2)
    4.  [opensource sponsorship](#org24747f2)
    5.  [opensource events](#org416c578)
    6.  [project management](#org5555d37)
47. [WEB 1,2,3](#org075c54a)
48. [IoT](#orgd22f588)
49. [Quantum computing](#org25b9239)
    1.  [theory](#orge1f460c)
    2.  [Grover's algorithm](#org7d3b532)
50. [Quantum cryptography](#org8b40468)
    1.  [links](#org79ab7cd)
51. [AI tools for code](#orgb089acd)
52. [How to Read a Paper ](#org7c50f62)
53. [knowledge management](#orge0faa5c)
    1.  [terms](#org22d82d7)
    2.  [problems](#org9cfcb3c)
    3.  [Knowledge - Nonaka & Takeuchi spiral](#orgb3214f4)
    4.  [Self notes](#org822c8db)
        1.  [Zettelkasten in obsidian](#org3bf1669)
        2.  [PARA Method](#orgc1eafb9)
    5.  [LLMs stored knowledge](#org39e8715)
    6.  [knowledge graph](#orga0c01e0)
        1.  [implementations](#orgdd12d98)
        2.  [semantic network](#orgc9cbd1f)
        3.  [example YAGO](#org7c72c07)
        4.  [example Unified Medical Language System (UMLS)](#orgdc5dae9)
        5.  [GNNs](#org3d07564)
    7.  [knowledge organization systems, concept system or concept scheme](#orgfa83f8a)
        1.  [links](#org81bd05e)
54. [подбор персонала](#org76c1d86)
    1.  [узнать насколько специалист хороший](#orgbfe81b9)
55. [ораторство](#org2933fda)
    1.  [my](#org3a74956)
    2.  [Пётр Безруков — тренер по ораторскому искусству](#org99ee0e8)
        1.  [sell](#org7ed46d8)
    3.  [wikihow](#orgbf52717)
    4.  [споры, переговоры](#org7259b50)
        1.  [переговорщик](#org47a6f8a)
        2.  [техника контейнирования](#orgaf87c86)
    5.  [war](#orgb0471a5)
        1.  [4 подготовительных пункта](#orgd9dddfa)
        2.  [беседы 1](#orgb87d2f6)
        3.  [беседы 2](#orgd01eb1f)
56. [Тимлид Team Leader & Техлид Technical Leader](#orgc1bd91c)
    1.  [Шаги к тимлид](#orga2bccc1)
    2.  [hackhaton x5 tech ai hack teamlead](#orge7b6067)
    3.  [Tips from womans leaders](#orgf503462)
    4.  [links](#org5865280)
57. [Team - работа на заказ](#org4281776)
58. [управление проектом - мэнеджмент - Project Management - product manager](#org35cc5a5)
    1.  [beginers steps and advices for june:](#org6d126a7)
    2.  [guide](#orgcb8fb41)
    3.  [Project management triangle or triple constraint, iron triangle and project triangle Тройственная ограниченность](#orgdef6619)
    4.  [Feedback, shit sandwich, как сказать человеку необидев](#org3f86a40)
        1.  [модель SCARF - нейролидерства](#org2c334ac)
        2.  [ip picnic](#orge942247)
    5.  [управление ходом проекта](#org378f0cc)
    6.  [Task assignment](#org28f4dc4)
    7.  [project vs product vs scrum-master &#x2026;. roles.](#orgd9d459e)
    8.  [цели бизнеса](#org5d8290b)
    9.  [как диагностировать проблему](#org7a05d2f)
    10. [этапы проекта](#org3844e87)
    11. [структура проекта](#org182cd5c)
    12. [инструменты управления](#org53d7d5b)
    13. [pm require](#org94c3a46)
    14. [AI Guide for Government - AI CoE](#org3ebf8fc)
    15. [методологии](#org0987b89)
    16. [tools](#org723821e)
    17. [course - eduson academy](#org18272ad)
    18. [Проектные артефакты](#org2e676f8)
    19. [wiki How to Be a Leader](#org8f20abe)
    20. [Conflicts](#orgc129f13)
    21. [leader features](#org80c5cd7)
    22. [motivation](#org6ee6e94)
    23. [effective teams](#org392fa55)
    24. [link](#org752118c)
59. [IT audit](#org4263126)
    1.  [COSO internal control framework](#org8c79533)
        1.  [history](#orgaa2e1d8)
60. [agile and extreme development(XP)](#orgdd9f771)
    1.  [roles](#org39f27b7)
    2.  [scrum process (image)](#orgd5d23e6)
    3.  [links](#orgf644bed)
    4.  [Agile+ Lean](#orge0016b7)
61. [Kanban - methodologies](#orgcd4c040)
    1.  [kanban cards](#org3ec46fc)
62. [news theory](#orgf6d1791)
63. [Company culture](#orga093f67)
    1.  [bad company culture:](#org65d9072)
    2.  [Деловой этикет](#orgf193fb8)
    3.  [outreachy.org Standards](#org489e384)
64. [other](#orge03d424)
    1.  [решение задач](#org25b3a26)
    2.  [mya](#org0b4a38b)
    3.  [Вайна с шаповаловым](#org6118723)
    4.  [Моя практика общения](#org6bc1ec7)
    5.  [нейролингвистическое программирование](#orgab9d53c)
    6.  [методом Блеза Паскаля](#org9e7a22c)
    7.  [Сократический диалог](#org5027988)
    8.  [трудные людли](#orgdccf063)
    9.  [развитие харизмы](#org25ca0c7)
    10. [soft skills](#org49e13bb)
    11. [personal brand Личный Бренд](#org9eb3368)
    12. [ИТ-евангелист Technology evangelist](#orgf21649a)
    13. [tactichnost](#orga5fce9f)
        1.  [Нетактичность](#orgcf6ad0b)
        2.  [Тактчность:](#org662e9d3)
        3.  [Тактчность2](#org067144e)
        4.  [В отношениях](#orga0f2fa4)
        5.  [В конфликтах](#org82d76c2)
        6.  [Тактично сказать правду](#orgcf7f7a8)
        7.  [Сделать коммуникацию приятной](#orgf09c0d4)
        8.  [Когда тактичность не нужна:](#orgdb90ced)
        9.  [Развитие тактичности](#org61d69c2)
        10. [Дневник](#org4ffb668)
    14. [girls](#org0474c06)
    15. [To swap the values of two variables without using a third variable](#orgaceb07f)
65. [HR common questions](#org616b08c)
66. [HR mistakes](#orgcd5bde4)
67. [HR questions my](#org2d899b3)
68. [HR check company](#orge5a7e1f)
69. [HR dialog plan](#orgfaa25fa)
70. [HR linkedin lecture](#org054ae11)
71. [HR work search Вопросы для работодателя:](#org6f073de)
72. [projects full stack](#org51cbee4)
    1.  [облачной платформы менеджмента цифровых двойников ГИС-объектов, предоставляющую профильные аналитические и информационные сервисы](#orgecc583d)
73. [burning lead meetup 11](#orge0f2b4a)
74. [договор услуг, подряда, ГПХ, самозанятые, ИП](#org5a7e3d4)
75. [Академия иноваторов](#org5fe3297)
    1.  [topics](#org6699df0)
76. [Clean code book](#orga53ee7b)
    1.  [Meaningful Names](#org97a5fda)
77. [распределенная или разделенная система https://habr.com/ru/articles/322876/](#org61782b4)
    1.  [Consensus консенсус or agreement](#org18ac300)
    2.  [challenges](#org06a887d)
    3.  [Architetcures](#orge42fe29)
    4.  [CAP Theorem, Brewer's theorem](#org54355f8)
    5.  [notes](#org5b9b518)
    6.  [links](#orgc11c9b5)
78. [own business](#orge72ed96)
79. [publicity theory](#org0e876c7)
80. [DNS domen registration](#orge23f99c)
    1.  [terms](#org8051635)
81. [Neuroscience](#orge5c0b65)
    1.  [Social behavior](#org9e3e5b0)
    2.  [imagination](#org8950878)
82. [science tools](#org8fb9a94)
83. [Psychology, Linguistic](#org443f0d3)
    1.  [Эвристика Heuristics](#orgc0776e1)
    2.  [Linguistic](#org08fba6c)
84. [Physics](#orgad80460)
    1.  [general Interactions between particles](#org50bbfad)
    2.  [ΛCDM–MOND debate](#org1edbc8d)
    3.  [String theory](#orge6674d9)
    4.  [quantum mechanics (QM)](#orgce6a3a7)
        1.  [ground state](#org263dbdd)
    5.  [General Relativity (GR)](#org975e06e)
    6.  [QM vs GR](#org7c03192)
    7.  [quantum entanglement](#org40c2e50)
        1.  [Entanglement swapping](#orgafcb86e)
    8.  [what can be entanglement?](#orge62d73d)
    9.  [Hidden-variable theory теории скрытых параметров](#orgf11b198)
    10. [cosmology: space-time created](#orga6deb7d)
    11. [distance versus local action (aether)](#orgc3b2ff8)
85. [startup](#org6b70eed)
86. [Company common tools:](#orgbaca5e8)
87. [anon smartphone](#org6906b9a)
88. [freelance](#org302eebd)
    1.  [answer](#orgbeedaaa)

-**- mode: Org; fill-column: 110; coding: utf-8; -**-

модульный дезайт vs лоскутная автоматизация  <https://bstudy.net/654982/informatika/arhitektura_predpriyatiya>\_

-   “зоопарк технологий”

IT jokes <http://harmful.cat-v.org/software/java>

Такое ощущение, что все парадигмы созданы чтобы реже делать рефакторинг. Если его вообще не делать, то рано
или позна это всеравно приведет к окостенению.

Материалы конференций CNEWS <https://events.cnews.ru/materials>

Backend Architect Technical Map

-   english <https://github.com/ironmanMA/architect-awesome>
-   chinese original <https://github.com/xingshaocheng/architect-awesome>


<a id="orga533e43"></a>

# information theory


<a id="orgcb532e6"></a>

## Entropy (information theory) or Shannon entropy


<a id="orgfd74ac0"></a>

### entropy <a id="org043a439"></a>

N букв в алфавите, это количество информации в одном символе. Используется -log2(P(x)) для less probable
   events carry more information, .

-   **of random variable is average level of information  inherent to the variable's possible outcomes.**
-   Information fluctuation complexity
-   мера неопределённости некоторой системы (в статистической физике или теории информации), в частности
    непредсказуемость появления какого-либо символа первичного алфавита
-   равна количеству информации на символ передаваемого сообщения.

двоичная энтропия, при отсутствии информационных потерь, рассчитывается по **формуле Хартли**:

-   I = log2(N) - I - уровень количества информации в каждом символе сообщения
-   N — мощность алфавита
-   выбор основания логарифма определяет единицу измерения энтропии, принято использовать 2.

Для случайной величины x, принимающей n независимых случайных значений xi с вероятностями pi (i=1,&#x2026;,n},
 формула Хартли переходит в формулу Шеннона:

-   H(x) = − ∑<sub>x</sub> p(x)\*log2(p(x))
-   Величина Hi = −log2\*pi называется частной энтропией, характеризующей только i-e состояние.
-   В общем случае, основание логарифма в определении энтропии может быть любым, большим 1 (так как алфавитом,
    состоящим только из одного символа, нельзя передавать информацию);

I(X) information content = log(1/P(x)) == -log(P(x)) function which increases as the probability of an event
 decrease.

H(X) = E(I(X)) = E(-log(P(X))) = − ∑<sub>x</sub> p(x)\*log2(p(x))

-   E is the expected value operator.
-   E is a weighted average of the xi values, with weights given by their probabilities pi.
-   E = 1\*1/6 + 2\*1/6 + 3\*1/6 + 4\*1/6 + 5\*1/6 + 6\*1/6 = 3.5
-   E is generalization of arithmetic mean.
-   so **the entropy is probability averaged by the weights of amount of information**
-   A skewed probability distribution has less “surprise” and in turn a low entropy because likely events dominate.

-   I total information from N occurrences(алфавита):
-   I = − ∑<sub>i</sub> (N\*pi)\*log2(pi)
-   N\*pi - Approximated number that the certain result will come out in N occurrence
-   I/N = Entropy
-   Entropy is the average(expected) amount of information in a certain event

Примеры:

-   Кидание монеты имеет энтропию -2(1/2\*log2(1/2)) = log2(2) = 1 бит на одно кидание, 2<sup>1</sup>=2 возможных состояний
-   У источника генерирующего строку AAA -suminf(log2(1)) = 0, а количество возможных состояний равно: 2<sup>0</sup> = 1
-   4 красных, 2 желтых, 3 зеленых, посчитать этропию выбора шарика
    -   3 варианта событий n=3,
    -   -(4/9)\*log2(4/9)-(2/9)\*log2(2/9)-(3/9)\*log2(3/9)=1.53

Entropy = -p\*blog(p) - (1-p)\*blog(1-p)

    import math
    math.log(1/2,2) # -1
    # two coin tosses (4 outcomes) has entropy two
    print(- 1/2 * math.log(1/2,2) - (1- 1/2) * math.log(1/2,2))
    print(- 4 * 1/4 * math.log(1/4,2)) # 4 coins
    # three coin tosses (8 outcomes) has entropy three
    print(- 8 * 1/8 * math.log(1/8,2))
    # Compare with skewed coins: 1/3 and 1-1/3 probabilities of sides:
    print(- 1/3 * math.log(1/3,2) - (1- 1/3) * math.log((1-1/3),2))

    1.0
    2.0
    3.0
    0.9182958340544896


<a id="org4b3d6b2"></a>

### cross entropy or log<sub>loss</sub>

is a measure of the average number of bits needed to identify an event from a set of possibilities between two
 probability distributions

-   between two probability distributions p p and q q over the same underlying set of events

H(p,q) = - ∑p(x)log(q(x))

Used as loss function for outputs of softmax activation.

-   y<sub>true</sub> = [[0, 1, 0], [0, 0, 1]]
-   y<sub>pred</sub> = [[0.05, 0.95, 0], [0.1, 0.8, 0.1]]
-   reduction can be **mean** or **sum**

    from math import log
    from numpy import mean
    
    def cross_entropy(p, q):
        return -sum([p[i]*log(q[i]) for i in range(len(p))])
    
    y_true = [[0, 1, 0], [0, 0, 1]]
    y_pred = [[0.05, 0.95, 0.00001], [0.1, 0.8, 0.1]]
    # print (list(zip(y_true, y_pred)))
    # print (cross_entropy(y_true[0],y_pred[0]))
    # print (cross_entropy(y_true[1],y_pred[1]))
    print("for each:")
    [print("-", cross_entropy(x,y)) for x,y  in zip(y_true, y_pred)]
    print("reduction sum :", sum([cross_entropy(x,y) for x,y  in zip(y_true, y_pred)]))
    print("reduction mean:", mean([cross_entropy(x,y) for x,y  in zip(y_true, y_pred)]))
    # cross_entropy(p, q)

    for each:
    - 0.05129329438755058
    - 2.3025850929940455
    reduction sum : 2.353878387381596
    reduction mean: 1.176939193690798


<a id="org1918437"></a>

### why -p\*log(p)?

The amount of information acquired due to the observation of event i follows from Shannon's solution of the
 fundamental properties of information:

-   I(p) is monotonically decreasing in p: an increase in the probability of an event decreases the information
    from an observed event
-   I(1) = 0
-   I(p1·p2) = I(p1) + I(p2): the information learned from independent events is the sum of the information learned from each event.


<a id="org2240b78"></a>

## Redundancy - Избыточность информации

-   превышение количества информации, используемой для передачи или хранения сообщения, над его информационной энтропией
-   fractional difference between the entropy H(X) of an ensemble X, and its maximum possible value log (|Ax|)

Для

-   сжатие данных без потерь
-   контрольная сумма применяется для внесения дополнительной избыточности в поток


<a id="org11826bc"></a>

## Homogeneity and heterogeneity

-   homos, “same”
-   heteros, “other, another, different”
-   genos, “kind”

что-то одинаковое по каким то характеристикам и что-то разное по какой-то характеристике


<a id="orgb8b439f"></a>

## Abstractions or [Generalist vs specialist] or usability vs hackability

Generalist: - usability

-   Simplification of Complexity - focusing on the essential features,
-   easier to learn and use
-   Quicker Development - don't need to reinvent the wheel
-   Strucutred: Easier to made small changes to adopt

Specialist: - hackability

-   Complexity: Better control of underlying implementation
-   Better understanding of underlying platform
-   Unstructured: Faster to replace underlying platform or do major changes

Abstractions is a tool that helps, not a magic that do everything for you.

High-level abstractions don’t always write the best code. They are susceptible to errors. And programmer
 should understand how low levels works.


<a id="org21c2e95"></a>

## Dual process theory

Processes:

-   implicit (automatic), unconscious
-   explicit (controlled), conscious


<a id="org3053935"></a>

## Taxonomy

practice and science concerned with classification or categorization

-   **taxonomy:** the development of an underlying scheme of classes
-   **classification:** and the allocation of things to the classes

relationship schemes

-   parent-child
-   Graphs
-   single child with multi-parents
-   vocabulary

taxonomies are considered narrower than **ontologies** since ontologies apply a larger variety of relation types.

-   see [20.4](#org425c3f5)

**Ontology** is a comprehensive study of the nature of existence and the relationships among entities. An
 ontology can include multiple taxonomies as part of its more comprehensive framework for understanding and
 modeling a domain. Ontologies adding more detailed relationships and attributes to taxonomies.


<a id="org7fac21a"></a>

### Applications

Taxonomies applications:

-   Information Retrieval and Search - improve search by organizing
-   Content Management and Digital Asset Management - media, publishing, and e-commerce
-   User Experience Design

Ontology applications:

-   Semantic Web and Knowledge Representation - allows for more sophisticated knowledge representation and
    reasoning, particularly in the context of the Semantic Web. Linked data that can be shared and reused across
    different applications and domains. Enhance reuse of data on the web.
-   Data Integration and Interoperability - common framework for data from different sources, for data science,
    data engineering, and graph data management
-   Knowledge Management and Reasoning - facilitates reasoning and inference across different domains, for
    expert systems and decision support systems

T and O:

-   Faceted Search and Filtering - users can refine their searches using multiple criteria based on the detailed
    relationships defined in the ontology.
-   Process Management and Workflow Automation - ontologies used to model business processes and workflows,
    taxonomies help in categorizing and organizing the elements involved in these processes.


<a id="org4167e9a"></a>

### Building a taxonomy for entities that can be both processes and objects

Typically may be clasified to: objects, processes and object-process.

**Taxonomies vs Ontologies**. While taxonomies are useful for hierarchical categorization, ontologies offer the
 necessary complexity, semantic richness, and dynamic relationships.

-   Ontologies capture multidimensional relationships and can connect different domains.
-   Ontologies provide Semantic Richness - more expressive set of pre-defined relationships.
-   Ontologies can handle dynamic connections.
-   Ontologies include detailed attributes at levels: Instance and class.
-   Ontologies may be used as integration framework for Domains of processes and objects.

steps

-   Entity Types: Start by identifying the broad categories of entities. For example, in a business context,
    entities might include products, services, organizational units, events, and business processes.
-   Hierarchical Structure: Develop a hierarchical structure where broader categories branch into more specific
    ones. Ensure that each level of the taxonomy is mutually exclusive and unambiguous to avoid confusion.
-   **Validate the taxonomy** by ensuring all items to be classified have a clear place within the hierarchy and
    that the taxonomy is consistently applied.

**faceted taxonomy approach**, which allows for multiple hierarchical taxonomies to work together to describe
 different aspects of the same entity.

**Attribute-Based Organization**. For instance, if an entity can be both a product and a service, attributes
 such as "product type," "service category," "delivery method," and "life cycle stage" can help in
 distinguishing and categorizing these entities[2].

**Iterative Prompting** -  to refine and expand the taxonomy. tarting with broad categories

**Function vs. Type** - might be classified by its function (e.g., structural support) and also by its type (e.g.,
 beam, column) This dual approach helps in capturing the multifaceted nature of entities that can be both
 processes and objects.

Software:

-   Ontologies provide a structured framework for representing knowledge in both aspects.
-   Process Modeling software - models using flowcharts
-   OPCloud, based on the Object-Process Methodology (OPM),
-   Nintex Process Platform - by integrating different tools
-   Protégé -  open-source ontology editor and frameworkk

1.  Object-Process Methodology (OPM)

    Object-Process Methodology (OPM) - based on a minimal universal ontology of stateful objects and processes
     that transform them.
    
    -   Objects are stateful entities that can exist independently, while processes are transformations that create,
        consume, or change the state of objects
    -   Bi-Modal Representation: - expressing the system both graphically “Object-Process Diagrams (OPDs)”, and
        textually “Object-Process Language (OPL)”
    -   OPM treats objects and processes symmetrically, allowing them to be related through various links such as
        structural and procedural links.
    
    Object process diagram (OPD)
    
    -   Links can be structural (o2o or p2p) express static system aspect - structure, and procedural (o2p, p2o)
        expressing the dynamic system aspect - how the system changes over time.
    
    1.  ex
    
        Using OPM as an example, here is how you might represent an entity like the heart, which can be seen as both
         an object and a process:
        
        Object Aspect: The heart is an object with states (e.g., resting, pumping) and attributes (e.g., blood pressure, heart rate).
        
        -   OPD Representation: The heart would be represented as an object in an OPD, showing its states and attributes.
        -   OPL Representation: In OPL, the heart could be described as: "Heart is an object that has states {resting,
            pumping} and attributes {blood pressure, heart rate}"[5].
        
        Process Aspect: The heart is involved in processes such as pumping blood, regulating blood pressure, and responding to metabolic demands.
        
        -   OPD Representation: These processes would be linked to the heart object in the OPD, showing how the heart
            transforms or is transformed by these processes.
        -   OPL Representation: In OPL, this could be described as: "Pumping Blood is a process that transforms Heart
            from state {resting} to state {pumping}"[5].

2.  Process Ontology

    Reverses the traditional substance-based ontology, where processes are seen as dependent on objects. Instead,
     processes become the primary ontological elements, and objects are derived from these processes.
    
    In this framework, an object can be described as an interface between its internal and external processes. For
     example, an organ in the human body can be seen as a collection of internal processes (e.g., metabolic
     activities) and external processes (e.g., interactions with other organs and the environment).

3.  Basic Formal Ontology (BFO)

    Distinguishes between continuants (entities that persist through time) and occurrents (events or happenings).
    
    For instance, a heart can be seen as a continuant (a material entity) that participates in various occurrents
     (processes like pumping blood).
    
    Realizable Entities: BFO introduces the concept of realizable entities, such as functions, roles,
     dispositions, and capabilities, which are realized through processes. For example, the function of the heart
     is realized in the process of pumping blood
    
    BFO divides all entities into two disjoint categories: continuants and occurrents. Continuants are entities
     that endure through time and maintain their identity, such as objects, qualities, and spatial regions.
    
    Occurrents, on the other hand, are entities that unfold over time or have temporal parts, such as processes,
    events, and temporal intervals. Examples include the history of Japan, drinking a cup of coffee, or the
    process of mitotic division

4.  Object-Oriented Ontology (OOO)

    objects can have internal processes and qualities that are not fully captured by external observations

5.  dynamic or context-dependent taxonomies,

    substance-based ontology
    
    -   Process is a taxonomy with relations between objects-states.
    -   Process over process is a taxonomy over taxonomy
    -   object as a node with process connections
    
    Process Ontology
    
    -   Object is a taxonomy of processes with relations that are object that bind processes to each other.
    -   process as node with object connections
    
    Data driven - we build processes that modify data
    
    OOP - we build objects that participate in processes


<a id="org503020b"></a>

### ER diagram, Entity-Relationship Model (ER Model), Entity-relationship diagrams (ERDs)

ER show entity sets (all entities of the same entity type) and relationship sets (all relationships of the
 same relationship type). Closely related to object-oriented design.

-   boxes (entities) -  nouns
-   lines - lines represent the relative cardinality of the relationship
-   diamond (relationships) - verbs
-   ellipse (attributes) - may be of nouns or of verbs

Good for:

-   relational database structures

Bad for:

-   document stores
-   No history or process modeling.

ER models are commonly used in software engineering, business information systems, education, and research.


<a id="org315587e"></a>

### Entity–Attribute–Value (EAV) model or Object-Attribute-Value Model and Open Schema.

-   Entitis - classes or concepts.
-   Attributes -

Good for:

-   Dynamic or Sparse Data -  where the number and types of attributes can vary widely across different entities,

EAV models are often used in domains like clinical data, bioinformatics, or any scenario requiring a high
 degree of flexibility in data modeling.

May be anti-pattern.


<a id="orga69c514"></a>

## First principle

-   In mathematics and formal logic = as axioms or postulates
-   In physics and other sciences = “ab initio” "from the beginning"


<a id="orgcc39814"></a>

# Unix philosophy

-   Make each program do one thing well. To do a new job, build afresh rather than complicate old programs by
    adding new "features".
-   Expect the output of every program to become the input to another, as yet unknown, program. Don't clutter
    output with extraneous information. Avoid stringently columnar or binary input formats. Don't insist on
    interactive input. Write programs to handle text streams, because that is a universal interface.
-   Design and build software, even operating systems, to be tried early, ideally within weeks. Don't hesitate
    to throw away the clumsy parts and rebuild them.
-   Use tools in preference to unskilled help to lighten a programming task, even if you have to detour to build
    the tools and expect to throw some of them out after you've finished using them.


<a id="org2199ed8"></a>

## short:

-   Write programs that do one thing and do it well.
-   Write programs to work together.
-   Write programs to handle text streams, because that is a universal interface.


<a id="org9572709"></a>

## 2003 Eric Raymond's 17 Unix Rules or design rules

KISS Principle as a base.

-   Build modular programs
-   Write readable programs
-   Use composition
-   **Separate mechanisms from policy** - **mechanisms** (control the authorization of operations and the allocation
    of resources) should not dictate (or overly restrict) the **policies** according to which decisions are made
    about which operations to authorize, and which resources to allocate.
-   Write simple programs
-   Write small programs
-   Write transparent programs
-   Write robust programs
-   Make data complicated when required, not the program
-   Build on potential users' expected knowledge
-   Avoid unnecessary output
-   Write programs which fail in a way that is easy to diagnose
-   Value developer time over machine time
-   Write abstract programs that generate code instead of writing code by hand
-   Prototype software before polishing it
-   Write flexible and open programs
-   Make the program and protocols extensible.


<a id="org36a93c9"></a>

## 1994 Mike Gancarz: The UNIX Philosophy

-   Small is beautiful.
-   Make each program do one thing well.
-   Build a prototype as soon as possible.
-   Choose portability over efficiency.
-   **Store data in flat text files.**
-   Use software leverage to your advantage.
-   Use shell scripts to increase leverage and portability.
-   **Avoid captive user interfaces.** - make communication with user shorter, don't abuse user time.
-   **Make every program a filter.**


<a id="org5055d60"></a>

## Functionl Programming

"every program does one thing, and does it well", is another way of expressing the principle that FP
 functions should be pure, orthogonal, general, and elegant.

<https://tilde.town/~ramin_hal9001/articles/emacs-unix-03_unix-is-lesser-fp.html>


<a id="org2486202"></a>

# Rare terms

-   **Closure [ˈkləʊʒə]:** is a callable object that retain information from the scope in which it was created. (inner
    class in java, отчасти lambda expressions) in JavaScript - функция которая возвращает другую
    функцию обращающуюся к её объектам.
-   **mutative:** modify the underlying collection
-   **immutable object:** whose state cannot be modified after it is created. String - every time new string created.

-   **coupling:** [ˈkʌplɪŋ] зацепление, мера того, насколько взаимозависимы разные подпрограммы или
    модули. Больше - хуже. coupling between objects (CBO) e.g. зависимости между классами будут
    снижаться, а зацепление повышаться. If the coupling is high it’s like using superglue or
    welding. No easy way to disassemble. Плохой способ зависимостей.
-   **cohesion [kəʊˈhiːʒən]:** связанность relationship within module, **high cohesion** Правило: вызывать методы

параметров и объектов котоыре создаются внутри метода. Quite easy to disassemble and re-assemble in a
different way. Хороший способ зависимостей. Higher cohesion usually leads to lower coupling and vice versa.
a measure of the strength of relationship between the class's methods and data themselves. with high cohesion
tend to be preferable: robustness, reliability, reusability, and understandability.

-   **overriding [ˌəʊvəˈraɪdɪŋ]:** @Overriding переопределение. **overridden**
-   **overloading [ˈəʊvəˌləʊd] v [ˌəʊvəˈləʊd]:** перегрузка. Одно имя, разные параметры
-   **abstraction [æbˈstrækʃən]:** separating ideas from specific instances.
-   **Metaprogramming:** tech in which computer programs have the ability to treat other programs as their data
-   **foobar (*ˈfuːbɑːr*:** Metasyntactic variable [sɪnˈtæktɪk] - name entities such as variables, functions, and
    commands whose exact identity is unimportant.
-   **BNF grammar:** Форма Бэкуса — Наура - notation technique for context-free grammars, often used to describe
    the syntax of languages
-   **Idempotency *ˌɪdɛmˈpoʊtəns*:** property of operation to have same result after multiple applications:
    a+0+0+0=a (Involution in math - self inverse function)
    -   in imperative programming, a subroutine with side effects is idempotent if multiple calls to the

subroutine have the same effect on the system state as a single call.

-   in functional programming, a pure function is idempotent if it is idempotent in the mathematical sense

given in the definition.

---

**Variadic function** -  function of indefinite arity

    int sum(int... args) {
      for(int arg : args)

---

**Закон Деметры**

-   Each unit should have only limited knowledge about other units and subcomponents: only units "closely"
    related to the current unit.
-   Each unit should only talk to its friends; don't talk to strangers.
-   Only talk to your immediate friends.(Law of Demeter, LoD)

Аналогия из жизни: Если Вы хотите, чтобы собака побежала, глупо командовать её лапами, лучше отдать команду
собаке, а она уже разберётся со своими лапами сама.

---

read–eval–print loop (**REPL**) or interactive toplevel or language shell

**resilience** - Надежность. the ability of an application to react to problems in one of its components and still provide
the best possible service.

**Feature parity** - Build a new system, in a more appropriate technology stack, with exactly the same features
 and behaviors as the existing system.


<a id="org8f33e2b"></a>

# Algorithms


<a id="orgdd24096"></a>

## classification


<a id="org3eb06d9"></a>

### By implementation

-   Recursion or Iteration
-   Logical - based on logical reasoning and use logical operators such as AND, OR, and
-   Procedural or Declarative (non-Procedural) - step-by-step procedures OR describe what needs to be done
    rather than how
-   Serial, parallel or distributed
-   Deterministic or non-deterministic - with exact decision at every step of the algorithm or solve problems
    via guessing although typical guesses are made more accurate through the use of heuristics.
-   Exact or approximate
-   Quantum algorithm


<a id="orgf268ca2"></a>

### By design paradigm

-   **Greedy Method:** makes locally optimal choices at each step to find a global optimum solution. It is used in
    optimization problems where the goal is to find the best solution among a set of possible solutions.
    -   Search and enumeration - Many problems (such as playing chess) can be modeled as problems on graphs.
-   **Non-Greedy or Brute-force or exhaustive search:** considers all possible solutions and chooses the one that
    is globally optimal. often use exhaustive search methods, such as brute force or dynamic programming, to
    evaluate all possible solutions.
    -   **Backtracking:** multiple solutions are built incrementally and abandoned when it is determined that they
        cannot lead to a valid full solution.
-   **Divide and conquer:** If a problem can be solved by combining optimal solutions to non-overlapping
    sub-problems. smaller sub-problems, solves them recursively. sorting, searching, and matrix multiplication
    -   Dynamic Programming (DP) - breaking down a problem into smaller sub-problems and storing the solutions to
        these sub-problems to avoid redundant computation.
-   **Randomized algorithm:** Such algorithms make some choices randomly (or pseudo-randomly).
-   **Reduction of complexity:** solving a difficult problem by transforming it into a better-known problem for
    which we have (hopefully) asymptotically optimal algorithms. also known as transform and conquer.
    -   Reduction (Transform and Conquer)
-   **Linear Programming:** This algorithmic approach involves optimizing a linear objective function
    subject to linear constraints. case of mathematical programming.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">Greedy Approach</th>
<th scope="col" class="org-left">Non-Greedy Approach</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Optimization</td>
<td class="org-left">Local</td>
<td class="org-left">Global</td>
</tr>


<tr>
<td class="org-left">Search method</td>
<td class="org-left">Heuristic</td>
<td class="org-left">Exhaustive</td>
</tr>


<tr>
<td class="org-left">Computational complexity</td>
<td class="org-left">Fast and efficient</td>
<td class="org-left">Computationally expensive</td>
</tr>


<tr>
<td class="org-left">Optimality</td>
<td class="org-left">May not find global optimum</td>
<td class="org-left">Guaranteed to find global optimum</td>
</tr>
</tbody>
</table>


<a id="orge441492"></a>

### Optimization problems

is the problem of finding the best solution from all feasible solutions.

Linear programming - case of Mathematical programming.  Searching for optimal solutions to a linear function
 bound to linear equality and inequality constraints. The constraints of the problem can be used directly in
 producing the optimal solutions.

Dynamic programming - the optimal solution to a problem can be constructed from optimal solutions to
 subproblems. subproblems overlap in dynamic programming. dynamic programming reduces the exponential nature
 of many problems to polynomial complexity.

The greedy method - start with some solution, which may be given or have been constructed in some way, and
 improve it by making small modifications.

The heuristic method - can be used to find a solution close to the optimal solution in cases where finding the
 optimal solution is impractical.


<a id="org3e9050d"></a>

### Adaptive Filters

non-linear estimator - estimate non-linear relationships between variables. designed to handle complex
 relationships between variables,

Adaptive Filters algorithms - estimate unknown parameters of a system based on input and output data.
 designed to adapt to changes in the system over time.

Kalman filter - if probability distributions are assumed Gaussian so that they can be represented by their mean and covariance,


<a id="orgd1eae9e"></a>

### by learning

-   discriminative - SVM, regression
-   generative - GDA, Naive Bayes, Generative Adversarial Networks (GANs) and Variational Autoencoders (VAEs).
-   Nonparametric/parametric Machine Learning Algorithms - use full collected data to make assumption about new
    information, learn parameters to optimizee algorithm. k-Nearest Neighbors/linear regression


<a id="org1fcc315"></a>

## solution:

Heuristic - approximate the exact solution.

Аналитическое решение - a\*x<sup>2</sup> +b\*x+c=0 - математическое выражение с конечным числом стандартных операций.

Arithmetic function -

Numerical analysis -

Randomized algorithms fall into two rough categories

-   Las Vegas algorithms always return precisely the correct answer (or report that they failed). These algorithms consume a random amount

of resources, usually memory or time.

-   Monte Carlo algorithms return answers with a random amount of error.

<https://en.wikipedia.org/wiki/Algorithm>


<a id="orge9b4ec4"></a>

## Teaching


<a id="org2ad65a2"></a>

### Fibonacci sequence

is a sequence in which each number is the sum of the two preceding ones

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144.

creates golden spiral with golden ratio

-   Algebraic form: (1+sqrt(5))/2 = 1.618033988749894
-   Continued fraction: 1 + 1/ (1 + 1/ (1 + 1/ &#x2026; ))

1.  Dynamic programming

        
        # fib(5)
        # fib(4) + fib(3)
        # (fib(3) + fib(2)) + (fib(2) + fib(1))
        def fib(n):
            if n <= 1:
                return n
            return fib(n - 1) + fib(n - 2)
        
        print(fib(5))
        
        
        # memoization technique and top-down approach, O(n) time:
        
        m = {0: 0, 1: 1} # map
        def fib(n):
            if n not in m:
                m[n] = fib(n - 1) + fib(n - 2)
            return m[n]
        print(fib(5))
        
        # O(n) time, but use O(1) space to store map, bottom-up upproach:
        def fib(n):
            if n == 0:
                return 0
            else:
                previousFib = 0
                currentFib = 1
                # repeat n − 1 times // loop is skipped if n = 1
                for _ in range(n-1):
                    newFib = previousFib + currentFib # new
                    previousFib = currentFib
                    currentFib  = newFib
                return currentFib
        print(fib(5))
    
        5
        5
        5


<a id="org92d9fbe"></a>

# sorting algorithms

Google DeepMind create AI model “AlphaDev” in 2023. It generate assembly code.

-   one of algorithm was 70 per cent faster than the best for lists of five pieces of data and 1.7 per cent faster for
    lists of over 250,000 items.
-   DeepMind has made its new algorithms open-source and included them in the commonly used Libc++ library

<https://www.newscientist.com/article/2376512-deepmind-ais-new-way-to-sort-objects-could-speed-up-global-computing/>


<a id="org29c5240"></a>

# Computational complexity


<a id="org138590b"></a>

## terms

-   **asymptotic:** Pertaining to values or properties approached at infinity. Относящийся к значениям или
    свойствам, приближенным к бесконечности. f(n) = n<sup>2</sup>+3n, when n->∞ then 3n->0. f(n) **asymptotically
    equivalent** to n<sup>2</sup>.


<a id="orgd506a2b"></a>

## machines

Interactive proof system - abstract machine that models computation as the exchange of messages between two
 parties: a prover and a verifier.


<a id="org2fc4f5e"></a>

### Finite-state machine

is a mathematical model of computation.

-   can be in exactly one of a finite number of states at any given time
-   **transition** - change from one state to another.


<a id="org013fc56"></a>

### Turing machines

-   deterministic Turing machines - every state has exactly one transition for each possible input
-   probabilistic Turing machines
-   non-deterministic Turing machines - input can lead to one, more than one, or no transition for a given
    state. The **powerset construction algorithm** can transform any nondeterministic automaton into a (usually more
    complex) deterministic automaton with identical functionality.
-   quantum Turing machines - used to model the effects of a quantum computer
-   symmetric Turing machines
-   alternating Turing machines


<a id="org84aee20"></a>

### Circuit models

Circuits are defined by:

-   logic gates - binary AND and OR gates and unary NOT gates.
-   values the gates can produce.

Boolean circuit - mathematical model for combinational digital logic circuits. values in a Boolean circuit are
 boolean values, and the circuit includes conjunction, disjunction, and negation gates.

Circuit - model of computation in which input values proceed through a sequence of gates, each of which
 computes a function. Generalization of Boolean circuits.

Quantum circuit - model for quantum computation


<a id="org39a0db5"></a>

## Complexity class

Most common

-   O(1) - constant time, 10
-   O(n) - linear time
-   O(log n) - logarithmic - regardless of the base. Binary trees
-   O(n<sup>k</sup>) - polynominal, n<sup>2</sup> + n
-   O(2<sup>n</sup>)

**class P** is the set of decision problems solvable by a deterministic Turing machine in polynomial time.

-   2<sup>O</sup>(log n) = poly(n)

space

-   Non-Deterministic
    -   NSPACE(f(n)) 	O(f(n))
    -   NL 		O(log n)
    -   NPSPACE 		O(poly(n))
    -   NEXPSPACE 		O(2poly(n))
-   Deterministic
    -   DSPACE(f(n))	O(f(n))
    -   L			O(log n)
    -   PSPACE		O(poly(n))
    -   EXPSPACE		O(2poly(n))

time

-   Non-Deterministic
    -   NTIME(f(n))	O(f(n))
    -   NP			O(poly(n))
    -   NEXPTIME		O(2poly(n))
-   Deterministic
    -   DTIME(f(n)) 	O(f(n))
    -   P			O(poly(n))
    -   EXPTIME		O(2poly(n))

It turns out that PSPACE = NPSPACE and EXPSPACE = NEXPSPACE by Savitch's theorem.

EXPSPACE > EXPTIME > PSPACE > NP > P > NL > L

-   NL = NPSPACE(log n) - nondeterministic

other classes

-   Boolean circuits: AC and NC
-   probabilistic Turing machines: BPP, ZPP and RP
-   Interactive proof systems: IP and AM
-   decision problems: ALL

Считаются лёгкими: DLOGTIME[en] AC0[en] ACC0[en] TC0[en] L SL[en] RL[en] NL NC SC[en] CC[en] P P-complete[en]
 ZPP RP BPP BQP EQP APX

Предполагаются сложными: UP[en] NP NP-complete co-NP co-NP-complete AM[en] MA[en] QMA PH ⊕P[en] PP #P
 #P-complete[en] IP[en] PSPACE PSPACE-complete[en]

Считаются сложными: EXPTIME NEXPTIME[en] EXPSPACE[en] 2-EXPTIME[en] ELEMENTARY[en] R PR[en] RE[en]
 RE-complete[en] Co-RE[en] Co-RE-complete[en] ALL[en]


<a id="org1eaef60"></a>

## Hardness

A problem X is hard for a class of problems C if every problem in C can be polynomial-time reduced to X. Thus
 no problem in C is harder than X.

NP-hard - problems that are hard for NP.


<a id="org10c5533"></a>

## Completeness

If a problem X is hard for C and is also in C, then X is said to be complete for C. This means that X is the hardest problem in C.

NP-complete problems—the most difficult problems in NP.  only algorithms with exponential worst-case complexity are known


<a id="orga3cbe72"></a>

## NP-трудность

-   NP is the set of decision problems solvable in polynomial time by a nondeterministic Turing machine.
-   NP is the set of decision problems verifiable in polynomial time by a deterministic Turing machine.

the algorithm based on the Turing machine consists of two phases, the first

-   guess about the solution (nondeterministic way)
-   verifies whether the guess is a solution to the problem (deterministic)

P class (all problems solvable, deterministically, in polynomial time) is contained in NP, because a solution
 is also verifiable in polynominal time by simply solving the problem.

-   P - is polynominal time T(n) = O(n<sup>k</sup>) where k is some positive constant. An<sup>2</sup> = O(n<sup>2</sup>)

NP-easy - At most as hard as NP, but not necessarily in NP.

NP-equivalent - Decision problems that are both NP-hard and NP-easy, but not necessarily in NP.

NP-intermediate - If P and NP are different, then there exist decision problems in the region of NP that fall
 between P and the NP-complete problems. (If P and NP are the same class, then NP-intermediate problems do not
 exist because in this case every NP-complete problem would fall in P, and by definition, every problem in NP
 can be reduced to an NP-complete problem.)

      |   NP-Hard   |
      |             |
      |   -------   |
      \--/       \--/
     -/\NP-Complete/\-
    /   \         /   \
    |    -\     /-    |
    /      -----       \
    |                  |
    \  NP              /
    |                 |
    \     -------     /
     -\  /   P   \  /-
       --\       /--
          -------


<a id="org71f2770"></a>

## Orders of growth, time complexity

Big O notation - how their run time or space requirements grow as the input size grows

-   O -  provides an upper bound on the growth rate of the function.
    -   the run-time of that algorithm will never be larger than c × f(n), where c is constant
    -   it can also be used to express the average-case
-   

ex.

-   O(1) - lookup table
-   O(log n) - We read this as "f is big-O of log n"
-   T(n) = O(n100) - T(n) grows asymptotically no faster than n100

f(x) - function to be estimated

Big Theta ϴ: f is bounded both above and below by g asymptotically: f(n) = ϴ(g(n))

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">Theta ϴ</td>
<td class="org-left">lower and upper bound, exact assessment</td>
<td class="org-left">=</td>
</tr>


<tr>
<td class="org-left">Big O</td>
<td class="org-left">upper bound, not exact assesment</td>
<td class="org-left">&lt;=</td>
</tr>


<tr>
<td class="org-left">o small</td>
<td class="org-left">upper bound, not exact assesment</td>
<td class="org-left">&lt;</td>
</tr>


<tr>
<td class="org-left">Big omega Ω</td>
<td class="org-left">lower bound, not exact assesment</td>
<td class="org-left">&gt;=</td>
</tr>


<tr>
<td class="org-left">small omega ω</td>
<td class="org-left">lower bound, not exact assesment</td>
<td class="org-left">&gt;</td>
</tr>
</tbody>
</table>


<a id="org6145069"></a>

## links

-   <https://en.wikipedia.org/wiki/Big_Theta_notation>
-   <https://en.wikipedia.org/wiki/Analysis_of_algorithms>
-   <https://en.wikipedia.org/wiki/Computational_complexity_theory>


<a id="org03ab13a"></a>

# OOP

1.  Все - объекты
2.  Программа - объекты обмениваются сообщениями
3.  Объект владеет блоком памяти состоящим из других объектов
4.  Каждый объект является экземпляром класса
5.  Объекты одного типа могу получать одни и те же сообщения

---

-   **Encapsulation:** [ɪnˈkæpsjʊˌleɪt] скрытие кода и данных. internal data - private
-   **Polymorphism:** [ˌpɒlɪˈmɔːfɪzəm] The ability to write code that can operate on different types. Один
    интерфейс к объектам различных типов. Subtyping - Полиморфизм подтипов - функция работает с множеством
    подтипов(inheritance). This means abstract entities are implemented in multiple ways.
-   **Inheritance:** [ɪnˈhɛrɪtəns] This refers to the hierarchical arrangement of implementation fragments.

Declaration, implementation, extension[ɪkˈstɛnʃən], instantiation[ɪnˌstænʃɪˈeɪʃən], invocation.

parent [ˈpɛərənt]

Почему OOP лучше чем функциональное программирование? Потому что выше уровень абстракции и абстракция ближе к
problem space.

-   LISP "all problems are ultimately lists"
-   APL "all problems are algorithmics"
-   Prolog "all problems are цепь логического доказательства"

Некотоыре авторы считают, что мультипарадигменное программирование есть лучшая абстрация.


<a id="org12f645b"></a>

## late binding

**late binding** or **dynamic linkage** - the method being called upon an object, or the function being called with
 arguments, is looked up by name at runtime.

**early binding**, or **static binding**, in an object-oriented language, the compilation phase fixes all types of
 variables and expressions.


<a id="org50b785b"></a>

## polymorhism

classes:

-   **Ad hoc polymorphism:** common interface for an arbitrary set of individually specified types
-   **Parametric polymorphism:** not specifying concrete types and instead use abstract symbols that can substitute for any type
-   **Subtyping, subtype polymorphism, inclusion polymorphism:** name denotes instances of many different classes
    related by some common superclass

implementation

-   Static - at compile time,
    -   faster
    -   allows greater static analysis by compilers (notably for optimization), source code analysis tools, and human readers
-   dynamic polymorphism - at run time, typically via **virtual function**
    -   slower
    -   allows duck typing, and a dynamically linked library may operate on objects without knowing their full type

**Monomorphization** (in Rust and C++) - compile-time process where **polymorphic functions** are replaced by many
 monomorphic functions for each unique instantiation. The resulting code is generally faster than dynamic
 dispatch, but may require more compilation time and storage space due to duplicating the function body.

**dynamic dispatch** - the process of selecting which implementation of a polymorphic operation (method or
 function) to call at <span class="underline">run time</span>. Contrist with **static dispatch** at compile time.

-   different from **late binding** (also known as **dynamic binding**)

**single dispatch** - choose overloaded or polymorhic function to call based on one argument.

**multiple dispatch** - choose based on severl.


<a id="orgd4f5ca3"></a>

## Multiple dispatch or multimethods

a function or method can be dynamically dispatched based on the run-time (dynamic) type of argumeng or, in the
 more general case, some other attribute of more than one of its arguments.

**overloading a function** - act of creating alternative functions for compile time selection.

**multimethods** - functions whose alternative implementations are selected in languages with **late binding**.

There is some run-time cost associated with dynamically dispatching function calls.

the distinction between **overloading** and **multimethods** can be blurred, with the compiler determining whether
 compile time selection can be applied to a given function call, or whether slower run time dispatch is
 needed.


<a id="org82fedaa"></a>

## subtyping vs inheritance

inheritance is a explicit mechanism to define relations between objects.

Subtyping - value of one type can be used in place of a value of another type. Subtyping is often used to
 achieve polymorphism, where a single function or method can work with values of different types. In C++,
 subtyping is achieved using pointers and references, while in Python, it is achieved using duck typing and
 explicit type annotations.


<a id="org89aa992"></a>

## inheritance vs composition

Composition implements a has-a relationship, in contrast to the is-a relationship of subtyping.


<a id="org842629b"></a>

# Data Oriented (DO) programming

Object Oriented (OO) programming, we model our domain using objects, that consist of some state together with
methods for accessing and manipulating that state

-   We create a class per domain entity type.
-   We say that the methods are *specific*.
-   When data is encapsulated in an object it looses its transparency.  we can no longer easily inspect the data
    or serialize it in a generic way (without writing custom code or using reflection)

Data Oriented programming

-   we made our domain using data collections, that consist of immutable data
-   We manipulate the data via functions that could work with any data collection
-   functions are generic: they work for any data, no matter what the data represent.
-   The basic entities of the DO are **immutable collections**.(like a dictionary) - DO immutability paradigm
-   - guides us to think about data as value. Values never changes.

should avoid:

-   Mutation of data
-   The coupling of code and data

When a programming paradigm allows data to be mutated, developers have to add mechanisms to protect their
data. For instance, when we pass a piece of data (encapsulated in an object or in a hash map) to a function,
we can never be 100% sure that the function won’t modify our data. In multi-threaded systems, we need all kind
of mutexes to prevent other threads to change data at an unexpected time. Mutexes make our code more
complicated and cause performance hit.

it is possible to apply DO main principles to OO programming languages, by adhering to the following
guidelines:

-   Model business entities with immutable data structures (there exists implementation in most languages)
-   Write code mainly in static methods that manipulate those immutable data structures


<a id="org840e12d"></a>

## tendency of OO systems to be complex.

<https://blog.klipse.tech/databook/2020/09/25/data-book-chap1-part1.html>

-   **Code and data are mixed:** Classes tend to be involved in many relations
-   **Objects are mutable:** Extra thinking when reading code that involves state mutation. Explicit
    synchronization on multi-threaded environments
-   **Data is locked in objects:** Data serialization is a nightmare
-   **Code is locked in classes:** Class hierarchies are complex

alleviate this complexity in OO by providing a simpler interface to the developers (e.g. Spring and Jackson in
Java)


<a id="orgdbe421d"></a>

## universal data collections

Customers, products, orders etc…​ are all represented as dictionaries with keys and values. The difference
between them is that the keys have different names and the values are not of the same type. For instance, we
can write a function that validates the email address field of a collection and pass to this function a
customer collection and the name of the field that contains the email address.

We could also change the name of a field in a collection (e.g. renaming email to emailAddress) in a generic
way.


<a id="org227b03c"></a>

## DO vs FP (functional programming)

OO:

-   Write code as methods inside classes - FP rebellion against (e.g. Haskell, Ocaml)
-   Encapsulate data as members inside classes - DO rebellion against
    
    Most programming languages that embrace DO also embrace FP (e.g. Clojure, JavaScript)


<a id="org76dc775"></a>

# functional or purely functional programming

-   described by application and composition of hight-order functions, and as such can be regarded simply as a
    set of mappings between domains and codomains.
-   the evaluation of mathematical functions and avoids changing-state and mutable data.
-   no side effect: subroutine only has visibility of changes of state represented by state variables included in its scope.
-   Many functional programming languages can be viewed as elaborations on the **lambda calculus**.
-   Program state and mutable objects are usually modeled with **temporal logic**.
-   simplifies parallel computing[5] since two purely functional parts of the evaluation never interact.
-   data structures are persistent or immutable, because without it computation could return different results.
    
    languages: Lisp, Haskell, F#, Erlang


<a id="org9ba4847"></a>

## concepts of functional programming, higher-order functions

-   **first-class functions:** language ability for functions to be as 1) arguments to other functions 2)
    return 3) assigning them to variables
    -   anonymous functions
-   **higher-order functions:** a function that use 1) or 2) of first-class functions
    -   map - apply f to each element of l
    -   sort - f should accept (x,y) and return boolean - x > y or x < y.
    -   filter - f should return boolean
    -   fold (reduce, accumulate, aggregate, compress) - f takes two arguments: f( l[0]  f( l[1] f( l[2] ) ) )
    -   apply - form of function call
    -   integration
    -   callback


<a id="org5af40c1"></a>

## Temporal logic

-   значение зависит от того, когда оно проверяется, в конкретный момент времени оно может быть истинным, либо
    ложным, но не одновременно
-   два вида операторов:
    -   first-order logic operators ‘¬’, ‘∧’, ‘∨’, ‘→’, ‘≡’, ‘∀’ and ‘∃’
    -   модальные
        -   P: "It was the case that&#x2026;" (P stands for "past")
        -   F: "It will be the case that&#x2026;" (F stands for "future")
        -   G: "It always will be the case that&#x2026;"
        -   H: "It always was the case that&#x2026;"


<a id="org74bb0de"></a>

## Referential transparency

Выражение называется **ссылочно прозрачным**, если его можно заменить соответствующим значением без изменения
 поведения программы. В результате вычисления ссылочно прозрачной функции **Pure function** дают одно и то же
 значение для одних и тех же аргументов.

pure fuction -     является детерминированной;   не обладает побочными эффектами.


<a id="org2917493"></a>

## map & reduce

-   If you have a sequence and you want a sequence, use **map**.
-   If you have a sequence and you want a single value, use **reduce** (or **fold**).
-   If you have a single value and you want a sequence, use **unfold**.

Notes:

-   Or map and fold/foldl/foldr , depending on your language.
-   The twist comes when you realise that the "single value" that reduce produces can itself be a new sequence.


<a id="orgd2615a0"></a>

# TODO New Language learning

Key questions:

-   Compilation vs. Interpretation
-   Dynamic Typing vs. Static Typing
-   Passing Parameters by Value vs. By Reference
-   Object-Oriented vs. Functional Programming
-   function overloading exist or not?
-   Memory Management: Manual vs. Automatic Garbage Collection
-   one way to solve problem or many ways to solve?
-   How Syntax structured with indentation or some characters?
-   What paradigms supported? (e.g., imperative, declarative, procedural, functional).
-   Event-Driven Concurrency (simple) vs Thread-Based Concurrency (compex)
-   Error Handling: return codes vs handling exception objects

content

-   Fundamentals
    -   keywords
    -   Variables and Data Types
    -   data types - by reference or by value
        -   Objects and Arrays
    -   Control Flow (Conditional Statements and Loops)
    -   Functions
-   Asynchronous Programming
-   Libraries, Modules
-   Error Handling and Debugging
-   Best Practices and Design Patterns
    -   Coding Conventions and Style Guides
    -   Functional Programming Concepts
    -   Design Patterns (e.g., Singleton, Observer, Factory)
    -   Performance Optimization Techniques
-   Ecosystem and Libraries
    -   Frameworks
    -   Package Managers (npm, yarn)
    -   Third-party Libraries and Utility Functions
-   Project Development
    -   Bundling for distribution
    -   Build Automation and Deployment
-   Input and Output Operations
-   configure IDE: LSP and snippets


<a id="org11b90aa"></a>

# Patterns, architect role

-   **Pattern:** common solution to a reoccurring problem in design.
-   **Anti-pattern:** bad solution to a problem.
-   **Architectural Pattern:** is something which solves our problem at sub system level or in short module
    level. It deals with the problem related to architecture of a project. It tells us how we can divide our
    systems and especially why. We make Class libraries, Components, Web services to solve the problem.


<a id="org8c17eb1"></a>

## Bottom-up vs top-down design

style of thinking, teaching, or leadership.

-   Top-down - from an overview of the system (stepwise refinement)
    -   good for tests-first approach - black boxes may fail to clarify elementary mechanisms
-   Bottom-up - create piece by piece -  individual base elements of the system are first specified in great detail.
    -   good for iterative development with great changes. may develop an isolation and lose global purpose
-   Sandwich - Top-down + Bottom-up at the same time
-   Bing bang - everythin at once and then separate


<a id="orgae8cdc3"></a>

## business needs

such as

-   maintainability/reusability
-   testability
-   scalability
-   performance
-   usability
-   security.

see [20.11.2](#org8e974c2)


<a id="org64aeadf"></a>

## architect role

“The goal of software architecture is to minimize the human resources required to build and maintain the
 required system.” ― Robert C. Martin, Clean Architecture

Decisions are made based on desired quality attributes and techniques to achieve them.

**Software architecture** is a representation of a system in which there is a mapping of functionality onto
 hardware and software components.

Архитектура программного обеспечения (англ. software architecture) —

**Enterprise architecture** is a description of the structure and behavior of an organization's processes,
 information flow, personnel, and organizational subunits, aligned with the organization' core goals and
 strategic direction.

-   is concerned with how and enterprise's software systems support the business processes and goals of the
    enterprise.
-   specify data model - rules for how ent. systems interact with external systems
-   sometime software infrastructure for communcations is considered a portition of ent. architecture

Technical. What technical role does the software architecture play in the system or systems o which it's a part?

-   main knowledge artefact
-   allow reasoning about quality such as performance and reliability, power consumption, physical footprint.

Project. How does a software architecture relate to the other phases of a software development life cycle?

Business. How does the presence of a software architecture affect an organization's business environment?

Professional. What is the role of a software architecture in an organization or a development project?

Module structures:

-   **decomposition** - modules, relations "is-a-submodule-of". Modules often have products (interface
    spec, code, test plants, etc..) associated with them. Determines modifiability - changed localized.
-   **user** - modules or classes, relations "uses". Affect functionality - functional subset may be
    extracted. Allow incremental development.
-   **layer** - layer is an abstract "virtual machines" - cohesive set of services through a managed
    interface. Layers allow to use other layers with scricts - to use only layer immediately below. Portability -
    ability to change underlying comput. platform.
-   **Class (or generalization)** - relation "from" or "is-an-instance-of". Reasoning about simular
    behaviour, reuse and incremental functionality. Object-oriented.
-   **Data model** describe static information structure - data entities and relationships.

Component-and-Connector structures - run time view, relation is "attachment".

-   **service** - services interoperate with each other. (SOAP coordination for ex.). independently developed.
-   **concurrent structures** - units is components in logical threads, relationsips is communication mechanism. opportunities for
    concurrency, find resource contention.

Allocation structures: - how modules and C&C are mapped onto things that are not software.

-   **deployment** - software elements, hardware entities and communication pathways. relations is "allocated-to",
    "migrates-to". performance, data integrity, security, availability. distributed and parallel systems
-   **implementation** - modules, file structure. "stored-in". how software elements are mapped to the file
    structure in system development, integration, or software control environment.
-   **assigment** - assignt resonsibilities to the teams/organizational units. "assign-to". project management.

Architectural Styles:

-   **Service-Oriented Architecture (SOA)** - communicate with each other over a network and independently deployed and scaled.
    -   no own data storage, business logic, deployment.
    -   SOA tends to be more homogeneous in terms of technology stack.
    -   SOA services may be deployed using traditional application servers or enterprise service buses.
    -   SOA as a Predecessor to the Microservices.
-   **Microservices Architecture** offers scalability, flexibility, and resilience.
    -   own data storage, business logic, deployment.
    -   deployed using containerization and orchestration tools, such as Docker and Kubernetes

-   **Event-Driven Architecture** - communicate with each other by producing and consuming events. enable loose
    coupling between components and support real-time processing.
-   **Data Pipeline Architecture** - flow through stages
-   **Knowledge Graph.** - Resource Description Framework (RDF)

clean architectures in python

-   <https://github.com/ADGEfficiency/programming-resources/blob/master/python/clean-architectures-in-python.pdf>


<a id="org0251bae"></a>

### RDF approach - data driven

-   Use case	 	Legacy approaches 	RDF approach 						Specifications
-   Domain modeling 	UML models 		Ontologies with classes, properties, instances etc. 	RDFS, OWL
-   Classifications, code lists 	Tables with parent/child keys. Tables with nested sets. 	Taxonomies with broader/narrower concepts. Less strict than ontologies. 	SKOS
-   Constraints 	Relational constraints: Domain, Key, Integrity	Graph validation against patterns/shapes 	SPARQL, SPIN, SHACL
-   Rules 	Stored DB procedures. Custom object-oriented implementations 	Inference using RDFS/OWL reasoners. Explicit pattern-based rules 	SPARQL, SPIN, SHACL


<a id="org93369f5"></a>

## architectural patterns

is form of elements compositions over many different domains

-   **layered** - module type - coherent set of related functionality

C&C type

-   **shared-data (or repository)** -
-   **client-server**

Common allocation

-   **multi-tier**
-   **competence center** and **platform**


<a id="org710e2fb"></a>

## Multitier architecture or client-server architecture or fronted-backed

-   **Presentation layer:** (a.k.a. UI layer, view layer)
-   **Application layer:** (a.k.a. service layer or GRASP Controller Layer)
-   **Business layer:** (a.k.a. business logic layer (BLL), domain logic layer)
-   **Data access layer:** (a.k.a. persistence layer, logging, networking, and other services which are required to
    support a particular business layer)

Three-tier architecture - developed and maintained as independent modules, most often on separate platforms

-   **presentation tier:** user interface
-   **logic tier:** functional process logic ("business rules")
-   **Data tier:** computer data storage and data access

Web:

-   front-end  - content rendered by the browser.
-   A middle dynamic content processing and generation level application server (e.g., Symfony, Spring, ASP.NET, Django, Rails, Node.js).
-   A back-end database or data store


<a id="org7a94754"></a>

### Architectural Patterns MPV, MVC, MVVM

-   **MVC:** контроллер принимает запросы и влияет на Model и View. View зависит от Model.
-   **(MVP)Model-View-Presenter:** MVC где View не зависит от Model, данные передаются от Model через
    Presenter(Controller).
-   **(MVVM)Model-View-ViewModel:** как MVP, только данные привязаны к View и View меняет данные через
    ViewModel(Controller).
-   Presentation-Abstraction-Control.
-   **Naked objects:** domain objects - бизнес логика 2) интерфес прямое представление domain objects 3) interface
    automatically generated from domain objects.

Hierarchical Model-View-Controller.
View-Interactor-Presenter-Entity-Routing (VIPER).

-   **Software bus:** shared communication channel facilitates connections and communication between software modules
-   **Single-page application:** web app-site dynamically rewriting the current page rather than loading entire
    new pages from server. All or major resources loaded once. Javascript, XMLHttpRequest, WebSocket,
    Server-sent events

**Event sourcing** - entities do not track their internal state by means of direct serialization or
 object-relational mapping, but by reading and committing events to an event store.

**Command Query Responsibility Segregation** (CQRS) - separating reading data (a 'query') from writing to data
 (a 'command') see [12.2.1](#org83031fa)

1.  (MVC) Model-View-Controller

    is an architectural pattern which let us develop an application having loosely coupling between
    input logic, business logic and UI logic.
    
    дает:
    
    -   code reuse
    -   разделение разработки между разными специалистами по разным частям
    
    -   **Controller:** receives and dispatches the request in short it handles the user interaction and input
        logic. accepts input and converts it to commands for the Model or View.
    -   **view:** is considered as dumb and is an output representation of model data.
    -   **Model:** Business rules, logic and data.

2.  (MVVM) Model-View-ViewModel

    decouples the controller to minimize code
    
    View <-bind->ViewModel <->Model
    
    -   **Model** -  data access layer
    -   **View** - displays a representation of the **model** and receives the user's interaction with the view (clicks,
        keyboard, gestures, etc.), and it forwards the handling of these to the **view model** via the data **binding**
        (properties, event callbacks, etc.) that is defined to link the view and view model.
    -   **View model** - view model has been described as a state of the data in the model. **View** directly binds to
        properties on the **view model** to send and receive updates.  **view model** does not has a referebce to
        **View**.
    -   data **Binder** - automates communication between the view and its bound properties in the view model

3.  (MVP) model–view–presenter

4.  (MVI) Model-View-Intent

    in Android
    
    -   intent -  is a state which is an input to model
    -   Model - stores state and send the requested state to the View
    -   View - Loads the state from Mode
    
    principles of
    
    -   unidirectional -  data will always flow from the user and end with the user through intent.
    -   cylindrical flow - If the user does one more action the same cycle is repeated
    
    Disadvantages of MVI
    
    -   maintain a state for each user action ->  lots of boilerplate code
    -   lots of objects for all the states -> costly for app memory management
    -   Handling alert states might be challenging while we handle configuration changes.


<a id="org577c6b9"></a>

## Concurrent computing


<a id="org42be6de"></a>

### terms

-   **Actor-based:** Tarant (JavaScript) - "everything is an actor who can send finite amount of messages"
    -   Decoupling the sender from communications sent
    -   control structures as patterns of passing messages
-   process calculi (modern actor-based) -
-   **Choreographic programming:** Choreographic languages are inspired by security protocol notation (also known
    as "Alice and Bob" notation)
-   **Multitier programming:** for distributed software, tiers to be developed in a single compilation unit
-   **Relativistic programming:** Relativistic programming, instead of trying to avoid conflicts between readers
    and writers or writers and writers, algorithm is designed to tolerate them and get a correct result
    regardless of the order of events. Non-blocking algorithm - atomic read-modify-write primitives that the
    hardware must provide, Critical sections are almost always implemented using standard interfaces over these
    primitives.
-   **Structured concurrency:** encapsulation of concurrent threads of execution (here encompassing kernel and
    userland threads and processes) by way of control flow constructs that have clear entry and exit
    points. Ensure all spawned threads have completed before exit.
    -   OpenMP, Swift, Java
-   **context switch:** 


<a id="org009533d"></a>

### theory

multitasking

-   **pre-emptive or preemption:** "context switch" may be initiated at fixed time intervals. with external scheduler
    with no assistance or cooperation from the task.
    -   tend to produce race conditions resulting in deadlock.
-   **cooperative:** the running program may be coded to signal to the supervisory software when it can be
    interrupted.  tasks must be explicitly programmed to **yield** when they do not need system resources.


<a id="org8c38785"></a>

### Linearizability <a id="org4903456"></a>

Linearizability - результат любого параллельного выполнения (операций) эквивалентен некоторому
 последовательному выполнению.

an operation (or set of operations) is **linearizable** if

-   The extended list can be re-expressed as a sequential history (is serializable).
-   That sequential history is a subset of the original unextended list.

this means that the unmodified list of events is linearizable if and only if its invocations were
 serializable, but some of the responses of the serial schedule have yet to return.

Linearizability - constrains what outputs are possible when an object is accessed.

линеаризуемость является локальным - если доказана линеаризуемость операций для нескольких программ в
 отдельности (или для операций работающих с разными объектами одной программы), то программы вместе (операции
 вместе) также будут линеаризуемы.

линеаризуемость является неблокируемым свойством - В линеаризуемой программе запущенные операции не требуют
 для своего завершения запуска других операций.

Часто под **thread-safety** понимают именно линеаризуемость.

way to achieve linearizability

-   running groups of primitive operations in a critical section.
-   to design a linearizable object using the native atomic primitives provided by the hardware.
-   transactional memory abstraction - user marks sequential code that must be run in isolation from other
    threads. implementation then ensures the code executes atomically. Annotate method with @Transactional

Нелинерализуемая последовательность:


<a id="orgd8d420b"></a>

### Concurrency patterns

-   **Message Passing:** .
-   **Pipelines:** Pipelines can be rippin fast but are not suitable for every problem
-   **Event Handling:** The popular approach for GUI applications.
-   **Shared State:** Use locks and shared memory to shoot yourself in the foot in parallel.


<a id="org04f7b31"></a>

### Concurrency approaches

-   Channel - synchronous or asynchronous, buffered or not
-   Coroutine -
-   Futures and promises


<a id="orge5fbed4"></a>

### Class of process interaction

-   **shared memory:** . Asynchronous concurrent access. locks, semaphores and monitors can be used to avoid these
    to avoid race conditions.
-   **message passing:** can be asynchronous, where a message can be sent before the receiver is ready
-   **Partitioned global address space:** middle ground between shared memory and message passing.
-   **Implicit interaction:** no process interaction is visible to the programmer


<a id="org3699725"></a>

### problems

-   **race conditions:** работа системы или приложения зависит от того, в каком порядке выполняются части кода.
    better to avoid race conditions by careful software design.


<a id="orgc8220df"></a>

### Problem decomposition

-   **Task parallelism:** classified as MIMD/MPMD or MISD.
-   **Data parallelism:** MIMD/SPMD or SIMD.
-   **Stream Parallelism:** or pipeline parallelism - focuses on dividing a computation into a sequence of stages,
    where each stage processes a portion of the input data
-   **Implicit parallelism:** reveals nothing to the programmer


<a id="org0fcbf4d"></a>

### parallel programming models

-   **Actor model:** Asynchronous message passing 	Task - Erlang, Scala
-   **Bulk synchronous parallel:** Shared memory 	Task
-   **Communicating sequential processes:** Synchronous message passing 	Task  - Go
-   **Circuits:** Message passing 	Task
-   **Dataflow:** Message passing 	Task - Tensorflow, Apache Flink
-   **Functional:** Message passing 	Task - Concurrent Haskell, Concurrent ML
-   **LogP machine:** Synchronous message passing 	Not specified
-   **Parallel random access machine:** Shared memory 	Data - CUDA, OpenMP
-   **SPMD PGAS:** SPMD PGAS 	Partitioned global address space 	Data  -  Unified Parallel C
-   **Global-view Task parallelism:** Partitioned global address space 	Task 	Chapel, X10


<a id="org882ad16"></a>

### Non-lock concurrency control

**data contention** - read same data by several processes

Use of timestamps on transaction to determine transaction priority:

-   Optimistic concurrency control - good for **low/rare data contention**.
    -   Timestamp-based concurrency control
    -   Validation-based concurrency control
    -   Multiversion concurrency control
        -   Snapshot isolation -  guarantee that all reads made in a transaction will see a consistent snapshot of the database


<a id="org8489fc5"></a>

## Шаблоны проектирования ООП Design Patterns

<http://www.cheat-sheets.org/>

-   (GoF) Gang of Four - authors (Gamma, Helm, Johnson, Vlissides, 1995)

Book - "Design Patterns: Elements of Reusable Object-Oriented Software" (Erich Gamma, Richard Helm, Ralph Johnson and
     John Vlissides)

-   (POSA) Pattern Oriented Software Architecture (Buschmann, et al.; Wiley, 1996)

**Purpose** based classification

-   creational -  hiding the creation logic
-   structural - composition of classes & objects
-   behavioral - characterizes **interaction & responsibility**  of objects & classes

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Creational class</th>
<th scope="col" class="org-left">Cretional object</th>
</tr>


<tr>
<th scope="col" class="org-left">factory method</th>
<th scope="col" class="org-left">abstract factory</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Structural class</td>
<td class="org-left">Structural object</td>
</tr>


<tr>
<td class="org-left">adapter</td>
<td class="org-left">adapter</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">Behavioral class</td>
<td class="org-left">Behavioral object</td>
</tr>


<tr>
<td class="org-left">template</td>
<td class="org-left">iterator</td>
</tr>
</tbody>
</table>

-   factory method (Spring) (@Bean annotation identifies the factory method)
-   Service Locator pattern (Spring)  ( Service Locators )
-   Observer в проекте

selection:
![img](./imgs/oop-design-patterns.jpg)


<a id="orgdd760c0"></a>

### Creational

-   **Abstract Factory.:** The abstract factory pattern is used to provide a client with a set of related or
    dependant objects. The "family" of objects created by the factory are determined at run-time.
-   То же самое что и Factory Method только их несколько со своим конечным Product.
-   **Builder.:** The intent of the Builder design pattern is to separate the construction of a complex object
    from its representation. By doing so the same construction process can create different
    representations.
-   - Director, Builder - A,B -> Complex object
-   - java 8 stream pipeline
-   **Factory Method.:** The factory pattern is used to replace class constructors, abstracting the process of
    object generation so that the type of the object instantiated can be determined at run-time
    -   AbstractCreater: public abstract Product factoryMethod();
    -   Предоставляющий подклассам (дочерним классам) интерфейс для создания экземпляров некоторого
        класса. Creator A Creator B.factoryMethod() ->ProductA or B (Product interface)
-   **Prototype.:** The prototype pattern is used to instantiate a new object by copying all of the properties of
    an existing object, creating an independent clone. This practise is particularly useful when
    the construction of a new object is inefficient.
-   **Singleton.:** The singleton pattern ensures that only one object of a particular class is ever created. All
    further references to objects of the singleton class refer to the same underlying instance.
-   - Singleton.getInstance()

---

-   **Dependency Injection:** a class accepts the objects it requires from an injector instead of creating the
    objects directly.
-   **Lazy initialization:** tactic of delaying the creation of an object, the calculation of a value, or some
    other expensive process until the first time it is needed. For: Many created but rarely
    used. ex. Singleton.getInstance();
-   **Object pool:** avoid expensive acquisition and release of resources by recycling objects that are no longer
    in use. ex. database connection pool.


<a id="org3838e19"></a>

### Structural

-   **Adapter.:** The adapter pattern is used to provide a link between two otherwise incompatible types by
    wrapping the "adaptee" with a class that supports the interface required by the client.

Adaptee - к чему доступ. Adapter.operation() вызывает adaptee.specific operation(). - aggreage in.

-   **Bridge.:** The bridge pattern is used to separate the abstract elements of a class from the implementation
    details, providing the means to replace the implementation details without modifying the
    abstraction.

Два интерфейса - Abstraction с impl ссылкой и Implementatior. AbstrClass.refinedFunction() - вызывает
impl.implementation()

-   **Composite.:** The composite pattern is used to create hierarchical, recursive tree structures of related
    objects where any element of the structure may be accessed and utilised in a standard manner.
-   **Decorator.:** The decorator pattern is used to extend or alter the functionality of objects at run-time by
    wrapping them in an object of a decorator class. This provides a flexible alternative to using
    inheritance to modify behaviour.
-   **Facade.:** The facade pattern is used to define a simplified interface to a more complex subsystem.
-   **Flyweight.:** The flyweight pattern is used to reduce the memory and resource usage for complex models
    containing many hundreds, thousands or hundreds of thousands of similar objects.
-   **Proxy.:** The proxy pattern is used to provide a surrogate or placeholder object, which references an
    underlying object. The proxy provides the same public interface as the underlying subject class,
    adding a level of indirection by accepting requests from a client object and passing these to the
    real subject object as necessary.


<a id="org65f5570"></a>

### Behavioural

-   **Chain of Responsibility.:** The chain of responsibility pattern is used to process varied requests, each of
    which may be dealt with by a different handler.
    -   Abstract class с ссылкой на соседа, и методом, который если нужно вызывает этот же метод соседа
    -   Назначение - для организации в системе уровней ответственности
    -   java.util.logging.Logger#log()
    -   javax.servlet.Filter#doFilter()
-   **Command.:** The command pattern is used to express a request, including the call to be made and all of its
    required parameters, in a command object. The command may then be executed immediately or held
    for later use.
    -   Коллекция хранит объекты комманд, Переключатель сохраняет и вызывает требуемую комманду.
-   **Interpreter.:** The interpreter pattern is used to define the grammar for instructions that form part of a
    language or notation, whilst allowing the grammar to be easily extended.
-   **Iterator.:** The iterator pattern is used to provide a standard interface for traversing a collection of
    items in an aggregate object without the need to understand its underlying structure.
-   **Mediator.:** The mediator pattern is used to reduce coupling between classes that communicate with each
    other. Instead of classes communicating directly, and thus requiring knowledge of their
    implementation, the classes send messages via a mediator object.
-   **Memento.:** The memento pattern is used to capture the current state of an object and store it in such a
    manner that it can be restored at a later time without breaking the rules of encapsulation.
-   **Observer.:** is used to allow an object (subject) to publish changes to its state. Other objects(observers)
    subscribe to be immediately notified of any changes.
    -   Subject.attach(o)detach(o)notify()- o.update() всех.
-   **State.:** The state pattern is used to alter the behaviour of an object as its internal state changes. The
    pattern allows the class for an object to apparently change at run-time.
-   **Strategy.:** The strategy pattern is used to create an interchangeable family of algorithms from which the
    required process is chosen at run-time.
    -   Класс стратегии передается параметром в конструктор
-   **Template Method.:** The template method pattern is used to define the basic steps of an algorithm and allow
    the implementation of the individual steps to be changed.
    -   Абстрактный класс с final методом вызывающим методы из наследника.
    -   Назначение - фиксация логики общей для группы классов.
    -   All non-abstract methods of java.io.InputStream, java.io.OutputStream, java.io.Reader and java.io.Writer.
    -   All non-abstract methods of java.util.AbstractList, java.util.AbstractSet and java.util.AbstractMap.
-   **Visitor.:** The visitor pattern is used to separate a relatively complex set of structured data classes from
    the functionality that may be performed upon the data that they hold.
-   Вместо добавления print(), close() для каждого субклассов, у каждого субкласса создается один метод
    accept(visitor v){v.visit(this)}.


<a id="org366dce7"></a>

### Concurrency

-   **Thread pool:** multiple threads waiting for tasks to be allocated for concurrent execution by the
    supervising program. Size - tunable parameter of the app. Goal - remove creation and
    destruction overhead.
-   **Active object:** decouples method execution from method invocation. method calls = request
    list. Недостаток - динамичный код в там где может быть статичный. see <./java>
-   **Double-checked locking:** to reduce the overhead of acquiring a lock.  see <./java>

    //problem
     public synchronized Helper getHelper() { //lock every time = low performace
            if (helper == null) {
                helper = new Helper();
            }
            return helper;
        }
    //solution java 1.5
    private volatile Helper helper;
        public Helper getHelper() {
            Helper localRef = helper;
            if (localRef == null) {
                synchronized (this) {
                    localRef = helper;
                    if (localRef == null) {
                        helper = localRef = new Helper();
                    }
                }
            }
            return localRef;
        }

-   **Guarded suspension [səˈspɛnʃən] (or <./java> in java):** both a lock to be acquired and a
    precondition to be satisfied.
-   **reentrant** - reentrant procedure can be interrupted in the middle of its execution and then safely be
    called again ("re-entered") before its previous invocations complete execution.


<a id="org5b12b76"></a>

## Clean Architecture

-   <https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html>
-   article <https://betterprogramming.pub/the-clean-architecture-beginners-guide-e4b7058c1165>

guidelines to build scalable, testable, and maintainable software.

“The goal of software architecture is to minimize the human resources required to build and maintain the required system.” ― Robert C. Martin, Clean Architecture

    Flow of User interact and Flow of control(reverse): UI -> Presenters -> Use case

Dependency Rule: “The Dependency Rule states that the source code dependencies can only point inwards”. <a id="orgfa7c63a"></a>


<a id="orgaa7f94e"></a>

### Advantages:

-   Testable
-   Maintainable
-   Changeable
-   Easy to Develop
-   Easy to Deploy
-   Independent


<a id="org09801da"></a>

### Architecture

from outside to inside and from specifig to general:

1.  (blue) **DB, Devices, Web, UI, External Interfaces** - Frameworks & Drivers
2.  (green) **Gateways, Presenters, Controllers** - Interface adapters
3.  (read) **Use Cases** - Application Business Rules - which Controller / Gateway to be called for the particular use case
4.  (yellow) **Entities** - Entrprise Business Rules - core-business rules or domain-specific business rules

Interface Adapters:

-   Presenters (UI Logic, States)
-   Controllers (UI Logic, States) - Interface that holds methods needed by the application which is implemented
    by Web, Devices or External Interfaces
-   Gateways (Interface that holds every CRUD operation performed by the application, implemented by DB)


<a id="org9f09eb7"></a>

### example 1

User ->

-   (blue) UI - inputs
-   (green) Presenter - input to use case and presents the response as user understandable format
-   (red) Translate Use case - which controller / gateway to be called
-   (green) Translate Controller - create request to Web (client) and process response for app
-   (blue) Web - Gets data from API using HTTP client

Violating [11.8](#orgfa7c63a)

-   Translate Usecase → Translate Controller
-   Translate Controller → Web

Solution - Dependency Inversion

-   UI -> Presenter (with web interface)-> Use case (with Controller interface) -> Translate Controller -> Web


<a id="orgeb4f89f"></a>

### example 2

-   (super green) - configuration
-   (green) etrypoints - REST API
-   (read and yellow) core - Entities, Use cases
-   (blue) data providers - Database, file system, network devices


<a id="org8f7495a"></a>

### same to

-   <https://en.wikipedia.org/wiki/Principle_of_least_privilege>
-   <https://en.wikipedia.org/wiki/Discretionary_access_control>


<a id="org36d9a91"></a>

## The Packaged Business Capabilities (PBC) pattern

defines a capability (software components) around a business role or a user. This way the size of a capability
 becomes predictable and recognizable by business users operating digital commerce applications.

Technically, a PBC is a bounded collection of a data schema and a set of services, APIs, and event channels.

-   functionally complete to ensure autonomy (no critical external dependencies, no need for direct external access to its data)

principles of microservices

-   Modulled around business domain
-   culture of automation
-   hide imlementation details
-   highy observable
-   isolate faulure
-   deploy independently
-   decentralise all the things

PBC - one or several microservices

Microservice cons:  business users having to deal with 10 UIs from different vendors within a single commerce application.

-   Microservices are how you design, build, and deploy your application.
-   PBCs are how you bring your application to market and how your users consume it.


<a id="org15b2dd6"></a>

# paradigms

-   Distinct set of concepts or thought patterns, including theories, research methods, postulates, and standards.
-   Way to classify programming languages based on their features.

-   **Gradual typing:** optional typing is checked at compile-time (which is static typing) and some expressions may be
    left untyped and eventual type errors are reported at run-time (which is dynamic typing). TypeScript.
-   **Latent typing or duck typing:** or structural typing. - there is no type, only subset of methods. the type
    or the class of an object is less important than the methods it defines. Using duck typing you do not check
    types at all. Instead you check for the presence of a given method or attribute.


<a id="orgea032ae"></a>

## Reactive programming

declarative, concerned with data streams and the propagation of change. Imerative :
     a=b+c - once. declarative : a=b+c - a will be updated when b or c changed.

Reactive programming employs reactive pipelines, where data flows through a series of transformations and
 operators.

Backpressure optional mechanism: allows consumers to control the pace of data production

language implementation.

-   dedicated languages that are specific to various domain constraints.
-   general-purpose languages that include support for reactivity
-   libraries, or embedded domain-specific languages

for: user events, responding to I/O

principles:

-   Responsive - rapid & consistent response time (have upper bounds to deliver)
-   Resilint - the system remains responsive, even in the face of failure
-   Elasti - A system should remain responsive, even under vaying workload (“auto-scale”)
-   Message-driven - asynchronous message-passing, ensures loose coupling, isolation & location transparency
    between components

Change propagation algorithms:

-   pull: consumer regularly queries source (proactive) (consumer may required to do additional pulls)
-   push: source push value to available consumer (push contains all required information)
-   push-pull: consumer receives notification (consumer may required to do additional pulls)

Observer pattern (OOP) - share a common goal: to manage asynchronous data flows and notifications

-   The Observer pattern is event-driven, where a specific event triggers notifications. Reactive programming,
    on the other hand, is based on streams
-   reactive programming is a broader paradigm


<a id="org3cd0b40"></a>

## Programming paradigms

[ˈprəʊɡræmɪŋ] [ˈpærəˌdaɪm] am [ˈparəˌdīm]


<a id="orgbb70815"></a>

### imperative [ɪmˈpɛrətɪv]

statements that change state

-   Procedural (early Perl, JavaScript)
-   Object-oriented

Command-query separation (<a id="org83031fa"></a>) principle - every *method* should either be a **command** that performs an action, or
 a **query** that returns data to the caller, but not both.

-   introduce complexity if you want to implement **reentrant** in concurrent programming.


<a id="org27beec5"></a>

### declarative [dɪˈklærətɪv]

expresses the logic of a computation without describing its control flow. [kənˈtrəʊl] [fləʊ] - what the
 program should accomplish without specifying how the program should achieve the result.

Fnctional programming is type of declarative

1.  logic

    -   is based on relations (formal logic) - **Prolog**


<a id="orgcaa1365"></a>

### Structured

-   if then else
-   **non-structured** - unstructured jumps to labels or instruction addresses. The lines are usually

numbered or may have labels: this allows the flow of execution to jump to any line in the program. (**ASM**)


<a id="orgbda3e90"></a>

### state in all paradigs

-   **Object-Oriented:** Modifying a lot of state at once is hard to get correct; encapsulate subsets of state into
    separate objects and allow limited manipulation of the encapsulated sub-state via methods.
-   **Functional:** Modifying state is hard to get correct; keep it at the boundaries and keep logic pure so that
    it is easier to verify the logic is correct.
-   **Declarative:** Modifying state is hard to get correct; use a language to describe how state should be
    manipulated and allow the machine to determine the steps required.
-   **Imperative:** Modifying state is hard to get correct; minimize the number of conceptual layers between how
    the computer operates and how the code is written.
-   **Monolith:** Modifying state distributed among many services is hard to get correct; keep it centralized.
-   **Service-Oriented-Architecture:** Modifying all of the state in one service is hard to get correct; distribute
    it among multiple services.
-   **MicroServices:** Modifying any state in a service is hard to get correct; have many services that are
    primarily stateless.


<a id="orgbe8ceda"></a>

### Aspect-oriented programming

Adding behavior to existing code (an advice) **without** modifying the code itself. (increase modularity)

-   separation of cross-cutting concerns.
-   reflection and metaobject protocols, subject-oriented programming, etc.

cluttering [/ˈklədər/] - загромождение.

breaking down program logic into distinct parts - **concerns**, cohesive areas of functionality.

cross-cutting concerns or horizontal concerns - Logging, crosscuts all logged classes and methods.

**aspects** - express cross-cutting concerns in stand-alone modules, can contain:

-   **advice** (code joined to specified points in the program) and **inter-type declarations**
    (structural members added to other classes).
-   and **pointcut** is a set of join points, specifies where exactly to apply advice.


<a id="org6e5acd7"></a>

### Literate programming

1.  Write source file in abstract language called **macros**
2.  generate two things from this file:
    -   ("to tangle" / "tangled code") - one understandable by a compiler or interpreter,
    -   ("weave" / "woven") - documentation.

Documentation generator – the inverse on literate programming where documentation is embedded in and generated from source code

Self-documenting code – source code that can be easily understood without documentation

Web/WEB is a computer programming system created by Donald E. Knuth in 1987 - "literate programming" by
 embedding source code inside descriptive text. (looks like Jupyter.)


<a id="org7237aea"></a>

## Stream processing or dataflow programming or event stream processing or reactive programming

<https://spring.io/blog/2016/06/07/notes-on-reactive-programming-part-i-the-reactive-landscape#reactive-use-cases>

-   Dataflow programming languages share some features of functional languages
-   That allows some applications to more easily exploit a limited form of parallel processing

Suitable for:

-   Compute Intensity. Arithmetic operations per I/O
-   Data Parallelims.  same function is applied to all records
-   Data Locality.

**Reactive programming** - a=c+b in reactive pr-ing

-   user interface
-   in MVC facilitate changes from Model to View and vice versa

**Reactive Streams** - is an initiative to provide a standard for asynchronous stream processing with
 non-blocking back pressure. Introduced in Java 9 - class Flow.


<a id="orga51f951"></a>

# data structures

<https://github.com/jwasham/coding-interview-university#tries>

1.  Built-in Data Type
2.  Derived Data Type

Data types:

-   Uninterpreted: Bit Byte Trit Tryte Word Bit array
-   Numeric
-   Pointer
-   Text
-   Composite
-   Other

Well-known Abstract data types - defined by its behavior

-   Collection - shared significance to the problem being solved: lists, sets, multisets, trees and graphs.
-   Container - whose instances are collections of other objects
-   Abstract:
    -   Associative array
        -   Multimap
        -   Retrieval Data Structure
    -   List
    -   Stack
    -   Queue
        -   Double-ended queue
    -   Priority queue
        -   Double-ended priority queue
    -   Set
        -   Multiset
        -   Disjoint-set
-   Arrays
    -   Bit array
    -   Circular buffer
    -   Dynamic array
    -   Hash table
    -   Hashed array tree
    -   Sparse matrix
-   Linked
    -   Association list
    -   Linked list
    -   Skip list
    -   Unrolled linked list
    -   XOR linked list
-   Trees
    -   B-tree
    -   Binary search tree - rooted binary tree, the key of each internal node
        -   AA tree
        -   AVL tree
        -   Red–black tree
        -   Self-balancing tree
        -   Splay tree
    -   Heap
        -   Binary heap
        -   Binomial heap
        -   Fibonacci heap
    -   R-tree
        -   R\* tree
        -   R+ tree
        -   Hilbert
        -   R-tree
    -   Trie
        -   Hash tree
-   Graphs
    -   Binary decision diagram
    -   Directed acyclic graph
    -   Directed acyclic word graph

other

-   List
-   String
-   Set
-   Multiset
-   Map
-   Multimap
-   Graph
-   Tree
-   Stack
-   Queue - item -> [1,2,3,4,5,6] -> get max
-   Priority queue - (item,priority) -> [5,5,3,7,7,3] -> get max  - peek: O(1), insert: O(log n), delete: O(log n)
-   Double-ended queue
-   Double-ended priority queue

-   Arrays - collection of elements, each selected by one or more indices. a[1][2]
    -   Associative array - collection of (key, value) pairs.
        -   Hash table
        -   Self-balancing binary search tree
        -   unbalanced binary search tree
        -   Sequential container of key–value pairs (e.g. association list)
    -   Dynamic array - allocates all elements contiguously in memory, and keeps a count of the current number of elements
-   List - finite number of ordered values, where the same value may occur more than once.
    -   Linked Lists - linear collection of data elements whose order is not given by their physical placement in memory.
        -   Singly linked list - each points to the next node
        -   Doubly linked list - each points to the next and previous node
        -   Multiply linked list
        -   Circular linked list
-   Stack
-   Queue
-   Hash table
-   Tries - digital tree or prefix tree
-   Treap -  randomized binary search tree


<a id="org4ee2ac6"></a>

## Binary search tree

rooted binary tree, the key of each internal node being greater than all the keys in the respective node's
 left subtree and  equal to less than the ones in its right subtree.

the nodes with keys greater than any particular node is stored on the right sub-trees and the ones with equal
 to or less than are stored on the left sub-tree satisfying the binary search property.

basic operations include: search, traversal, insert and delete

the insert, delete and search

-   on average takes O(log⁡(n)) for n nodes
-   the worst case O(n)

Without **rebalancing**, insertions or deletions in a binary search tree may lead to degeneration


<a id="org7f8bec8"></a>

# Architectural style (design ideom)

-   Pipe
-   Filter
-   Layered
-   Push Based

Types by time

-   Batch Processing
-   Stream processing - often Event-Driven Architecture.  Apache Flink and Apache Kafka with window aggregations
    (e.g., 1-minute, 1-second windows).

Types by coupling and user experience.

-   Synchronous - where a near-immediate response is required.
    -   Blocking - The caller is locked in the interaction until a response is received.
    -   implementation: REST APIs or  Standard HTTP request/response.
-   Asynchronous - do not return data immediately, but may provide callback or notification (event driven).
    -   Non-Blocking
    -   implementation: web sockets, MQTT. Message Brokers: Kafka, RabbitMQ, or Azure Service Bus.
-   Hybrid
    -   implementation: GraphQL, integrating Kafka with a distributed Redis cluster.

Which when to use?

see [20.11](#org35b27ee)


<a id="org945c8fd"></a>

## API-Based Integration (ChatGPT answer)

-   REST (Representational State Transfer)
-   SOAP (Simple Object Access Protocol)
-   GraphQL APIs
-   RPC - gRPC (Google Remote Procedure Call)
-   Webhooks: Event-based solutions that send real-time information between applications, though limited to
    sending status updates.
-   Pre-built Connectors (Snaps): Pre-configured connectors that simplify the integration process by providing a
    fast and easy way to connect popular applications without custom coding.
-   Microservices APIs
-   Hypermedia APIs - HATEOAS (Hypermedia as the Engine of Application State)


<a id="orgecf67a7"></a>

## microservices vs SOA

SOA is an enterprise-wide approach, while microservices is a more granular, application-level strategy.

SOA typically uses an ESB, whereas microservices often communicate directly through language-agnostic APIs.


<a id="orgba0a47b"></a>

## Monolithic Architecture

Entire application is built as a single, self-contained unit.


<a id="org8c61e4d"></a>

## Serverless Architecture

Cloud providers to manage the infrastructure, and developers only need to write and deploy code without
 worrying about the underlying servers.


<a id="orgab87916"></a>

## Domain-Driven Design (DDD)

Key Concepts: Bounded Contexts, Entities, Value Objects, and Aggregates.


<a id="org854762a"></a>

## Layered Architecture (N-Tier Architecture)


<a id="orga618db2"></a>

## Space-Based Architecture (SBA)

Key Components: event-driven processing, Processing Units, Virtualized Middleware, and Data Grids.


<a id="org20a80fa"></a>

## Cell-Based Architecture - extension of microservices

each cell represents a group of related microservices that share common resources and are managed together.

-   Pros: Improves resource utilization, simplifies management, and enhances fault isolation.
-   Cons: Can add complexity in terms of cell management and communication between cells.


<a id="org679d31b"></a>

## (EDA) Event-driven architecture

is a software architecture paradigm

Event-driven architectures often being designed atop message-driven architectures

for applications and systems that transmit events among loosely coupled software components and services

An event-driven system typically consists of

-   event emitters (or agents) - detect, gather, and transfer events ( does not know the consumers of the event)
-   event consumers (or sinks) - applying a reaction as soon as an event is presented (may transform and forward
    the event to another component)
-   event channels - events are transmitted from event emitters to event consumers. knowledge of the correct
    distribution of events is exclusively present here

simplifies horizontal scalability in distributed computing models and makes them more resilient to failure

-   application state can be copied across multiple parallel snapshots for high-availability

Dispatch callbacks from those sources. - отправить вызов на прикрепленную функцию для события.


<a id="org65ef766"></a>

## (REST) Representational State Transfer

-   RESTful web services
-   stateless operations! HTTP common with URI = web based.

REST is an service-based architectural style, while SOAP is a protocol. No standard. But make use of
 standards, such as HTTP, URI, JSON, and XML.

REST **endpoint** is a resource located on a server. has URL. Must return HTTP response code:
 <https://en.wikipedia.org/wiki/List_of_HTTP_status_codes>

Both the request and response may or may not contain a **payload** (JSON or XML) wrapped in the request response
 body.

**Idempotence** means that applying an operation once or applying it multiple times has the same
 effect. **POST** - non-idempotent [ˈaɪdəmˌpəʊtənt]

**nullipotent** no side effect on requested data.


<a id="org8d8a2ce"></a>

### pros

-   robustness (anarchic scalability)
-   independent deployment of components
-   large-grain data transfer
-   a low entry-barrier for content readers, content authors and developers alike.
-   creating a layered architecture to promote caching to reduce user-perceived latency,
-   


<a id="org429bea5"></a>

### terms

-   stateless -  The server won’t maintain any state between requests from the client.
-   endpoints or entry points - the resource identifier (URI) of one or several resources used as starting points
-   


<a id="orgf1693b2"></a>

### HTTP <a id="org57a4832"></a>

-   application-layer (OSI model)
-   intermediate network elements
-   require reliable protocol like TCP
-   since HTTP/1.1 can requse a connection multiple times = HTTP session
-   plain-text(ASCII) messages - in urls non-ASCII characters must be percent-encoded.
-   <CR><LF> - line separator
    
    Request
    
    -   **request line:** e.g.,  GET /images/logo.png HTTP/1.1
    -   verb GET POST DELETE PUT
    -   URI
    -   HTTP Version
    -   Header fields - key-value (e.g., Accept-Language: en ) all header fields except Host are optional
    -   an empty line - only <CR><LF>
    -   Body - optional
    
    Response: (e.g., HTTP/1.1 200 OK)
    
    -   Status/Response Code
    -   HTTP Version
    -   Header - key-value
    -   Body - optional
    
    URI: <protocol>://<service-name>/<ResourceType>/<ResourceID>
    
    Get user of Id 1: <http://localhost:8080/UserManagement/rest/UserService/users/1>

---

**POST**
Starting with HTML 4.0, forms can also submit data in multipart/form-data as defined in RFC 2388

<https://en.wikipedia.org/wiki/MIME#Form-Data>
**Content-Transfer-Encoding**

In June 1992, MIME (RFC 1341, since
made obsolete by RFC 2045) defined a set of methods for representing binary data in formats other than ASCII
text format.

Suitable for use with SMTP servers that support the BINARYMIME SMTP extension (RFC 3030):
**binary** – any sequence of octets.


<a id="org5419688"></a>

### guidelines

Unlike SOAP-based web services, which have a standard vocabulary to describe the web service interface through
WSDL, RESTful web services currently have no such grammar.

-   Make the XML schemas available to service consumers and package them with the WAR file.
-   Clearly document the expected input, output, and error conditions that may arise as result of invocation.
-   or use WADL


<a id="org2015335"></a>

### CRUD methods:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Operation</th>
<th scope="col" class="org-left">RESTful WS</th>
<th scope="col" class="org-left">idempotence</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Create</td>
<td class="org-left">POST</td>
<td class="org-left">non-idempotent</td>
</tr>


<tr>
<td class="org-left">Read (Retrieve)</td>
<td class="org-left">GET</td>
<td class="org-left">nullipotent</td>
</tr>


<tr>
<td class="org-left">Update (Modify)</td>
<td class="org-left">PUT</td>
<td class="org-left">idempotent</td>
</tr>


<tr>
<td class="org-left">Delete (Destroy)</td>
<td class="org-left">DELETE</td>
<td class="org-left">idempotent</td>
</tr>
</tbody>
</table>

PATCH 	Partially update an existing resourc


<a id="orge014de4"></a>

### Architectural constrains:

-   **client-server:** Separating the user interface concerns from the data storage concerns. Resource providers
    and requesters.
-   **Stateless:** no client context being stored on the server between requests. Session state is held in the client.
-   **Cacheability:** clients and intermediaries can cache responses. Responses must therefore,
    implicitly or explicitly, define themselves as cacheable
-   **Layered system:** A client cannot ordinarily tell whether it is connected directly to the end
    server, or to an intermediary along the way.
-   **Code on demand (optional):** Servers can temporarily extend or customize the functionality of a
    client by transferring executable code. such as JavaScript.

**Uniform interface** - most important:

-   **Resource identification in requests:** The resources themselves are conceptually separate from
    the representations that are returned to the client.
-   **Resource manipulation through representations:** When a client holds a representation of a
    resource, including any metadata attached, it has enough information to modify or delete the
    resource.
-   **Self-descriptive messages:** For example, which parser to invoke can be specified by a media type.
-   **Hypermedia as the engine of application state (HATEOAS):** As access proceeds, the server
    responds with text that includes hyperlinks to other actions that are currently
    available. There is no need for the client to be hard-coded with information regarding the
    structure or dynamics of the REST service.


<a id="orge15d967"></a>

### Advantages:

-   No expensive tools require to interact with the Web service
-   Smaller learning curve
-   Efficient (SOAP uses XML for all messages, REST can use smaller message formats)
-   Fast (no extensive processing required)
-   Closer to other Web technologies in design philosophy


<a id="org0b1521c"></a>

### Error handeling

-   <https://blog.restcase.com/rest-api-error-codes-101/>

-   400 Bad Request – client sent an invalid request, such as lacking required request body or parameter
-   401 Unauthorized – client failed to authenticate with the server
-   403 Forbidden – client authenticated but does not have permission to access the requested resource
-   404 Not Found – the requested resource does not exist
-   412 Precondition Failed – one or more conditions in the request header fields evaluated to false
-   500 Internal Server Error – a generic error occurred on the server
-   503 Service Unavailable – the requested service is not available
-   415 	Unsupported Media Type 	The request data format is not supported by the server.
-   422 	Unprocessable Entity 	The request data was properly formatted but contained invalid or missing data.
-   429 Too Many Requests - When a request is rejected due to rate limiting
-   410 Gone - Indicates that the resource at this end point is no longer available. Useful as a blanket
    response for old API versions

good responses

-   200 	OK 	The requested action was successful.
-   201 	Created 	A new resource was created.
-   202 	Accepted 	The request was received, but no modification has been made yet.
-   204 	No Content 	The request was successful, but the response has no content.

code ranges

-   2xx 	Successful operation
-   3xx 	Redirection
-   4xx 	Client error - запрос не принят к обработке, сущности не создаются
-   5xx 	Server error - техническая ошибка сервера

ex

-   400 - ошибка проверки аргументов запроса или предварительной проверки правил его использования
-   401,403 - авторизация недействительна или не обладает достаточными правилами
-   


<a id="orgd3c8143"></a>

### Design

<https://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api#restful>

1.  common template of URL

    HTTP<sub>METHOD</sub> domin/api<sub>version</sub>/entities/id/action
    
    -   domain - предметная область, определяет DDD Bounded Context
    -   version - версия API, использует только major (v1,v2)
    -   entities - наимерование коллекций сущностей (payments)
    -   id - id of сущсности
    -   action
    
    GET - идемпотентны, к ним применятеся кэширование
    
    PUT and PATCH
    
    -   для обновления файлов (документов) на сервере
    -   тело PUT содержит полный документ, тело PATCH - diff документа
    -   GET запрос на тот же URL должен вернуть весь документ

2.  basic

    -   <https://docs.microsoft.com/ru-ru/azure/architecture/best-practices/api-design>
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <tbody>
    <tr>
    <td class="org-left">GET</td>
    <td class="org-left">/customers</td>
    <td class="org-left">Get a list of customers.</td>
    </tr>
    
    
    <tr>
    <td class="org-left">GET</td>
    <td class="org-left">/customers/&lt;customer<sub>id</sub>&gt;</td>
    <td class="org-left">Get a single customer.</td>
    </tr>
    
    
    <tr>
    <td class="org-left">POST</td>
    <td class="org-left">/customers</td>
    <td class="org-left">Create a new customer.</td>
    </tr>
    
    
    <tr>
    <td class="org-left">PUT</td>
    <td class="org-left">/customers/&lt;customer<sub>id</sub>&gt;</td>
    <td class="org-left">Update a customer.</td>
    </tr>
    
    
    <tr>
    <td class="org-left">PATCH</td>
    <td class="org-left">/customers/&lt;customer<sub>id</sub>&gt;</td>
    <td class="org-left">Partially update a customer.</td>
    </tr>
    
    
    <tr>
    <td class="org-left">DELETE</td>
    <td class="org-left">/customers/&lt;customer<sub>id</sub>&gt;</td>
    <td class="org-left">Delete a customer.</td>
    </tr>
    </tbody>
    </table>
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-left">Resource</th>
    <th scope="col" class="org-left">POST</th>
    <th scope="col" class="org-left">GET</th>
    <th scope="col" class="org-left">PUT</th>
    <th scope="col" class="org-left">DELETE</th>
    </tr>
    </thead>
    
    <tbody>
    <tr>
    <td class="org-left">/customers</td>
    <td class="org-left">Create a new customer</td>
    <td class="org-left">Retrieve all customers</td>
    <td class="org-left">Bulk update of customers</td>
    <td class="org-left">Remove all customers</td>
    </tr>
    
    
    <tr>
    <td class="org-left">/customers/1</td>
    <td class="org-left">Error</td>
    <td class="org-left">Retrieve the details for customer 1</td>
    <td class="org-left">Update the details of customer 1 if it exists</td>
    <td class="org-left">Remove customer 1</td>
    </tr>
    
    
    <tr>
    <td class="org-left">/customers/1/orders</td>
    <td class="org-left">Create a new order for customer 1</td>
    <td class="org-left">Retrieve all orders for customer 1</td>
    <td class="org-left">Bulk update of orders for customer 1</td>
    <td class="org-left">Remove all orders for customer 1</td>
    </tr>
    </tbody>
    </table>
    
    <https://learn.microsoft.com/en-us/azure/architecture/best-practices/api-design>

3.  limit the amount of data returned by any single request

    -   /orders?limit=25&offset=50
    -   /orders?fields=ProductID,Quantity.
    -   ?pretty=true - prettify

4.  partial results

    -   clint:
    
        GET https://adventure-works.com/products/10?fields=productImage HTTP/1.1
        Range: bytes=0-2499
    
    server:
    
        HTTP/1.1 206 Partial Content
        
        Accept-Ranges: bytes
        Content-Type: image/jpeg
        Content-Length: 2500
        Content-Range: bytes 0-2499/4580
        ...

5.  versioning

    Custom-Header: api-version=1

6.  Changing the server state

    -   GET <http://><admin-endpoint-IP:port>/ima/v1/service/status
    -   POST <http://><admin-endpoint-IP:port>/ima/v1/service/status/Server
    -   POST <http://><admin-endpoint-IP:port>/ima/v1/service/restart
    
    approaches:
    
    1.  activate action could be mapped to a boolean activated field and updated via a PATCH to the resource.
    2.  star with PUT *gists*:id/star and unstar with DELETE *gists*:id/star.

7.  naming converntions

    camelCase for field names - If you're using JSON (JavaScript Object Notation) as your primary representation
     format, the "right" thing to do is to follow JavaScript naming conventions - and that means camelCase for
     field names
    
    camelCase for C# & Java, snake<sub>case</sub> for python & ruby
    
    path examples
    
    -   api.example.com/device-management/managed-devices/{device-id}
    -   api.example.com/user-management/users/{id}
    -   api.example.com/user-management/users/admin


<a id="orgda79f33"></a>

### model: Richardson Maturity Model (RMM)

Maturity model - framework for measuring an organization's maturity.

-   Big data maturity model
-   Cybersecurity Maturity Model Certification (CMMC)
-   People Capability Maturity Model (PCMM)
-   Open Information Security Maturity Model (O-ISM3)

RMS three steps: resource identification (URI), HTTP verbs, and hypermedia controls (e.g. hyperlinks).

RMS - classifies Web APIs based on their adherence and conformity to each of the model's **four levels**:

-   Level 0: The Swamp of POX
    -   single URI (typically POST over HTTP)
-   Level 1: Resources
    -   Introduces resources with URI (still all typically POST)
-   Level 2: HTTP verbs
-   Level 3: Hypermedia controls or HATEOAS (Hypermedia As The Engine of Application State),
    
    -   GET request to a hotel reservation system might return a number of available rooms along with hypermedia
    
    links (these would be html hyperlink controls in the early days of the model) allowing the client to book
    specific rooms.

Request:

    GET /room/?customerId=1&date=10-11-2020&hotelCode=ASTORIA HTTP/1.1

Response:

    {
       customerId: "1",
       reservations: [{room: "102", checkin: "10-11-2020", checkout: "11-14-2020", price: "100", href: "https://localhost:8080/room/102"}]
    }

1.  links

    <https://en.wikipedia.org/wiki/Maturity_model>
    <https://en.wikipedia.org/wiki/Richardson_Maturity_Model>


<a id="org136f843"></a>

### model: <https://algermissen.io/classification_of_http_apis.html>


<a id="org41a4445"></a>

### model: <https://www.researchgate.net/publication/281287283_A_Maturity_Model_for_Semantic_RESTful_Web_APIs>


<a id="org28c9532"></a>

### The Open API Initiative

was created by an industry consortium to standardize REST API descriptions across vendors.

-   the Swagger 2.0 specification was renamed the OpenAPI Specification (OAS) and brought under the Open API Initiative.
-   OpenAPI Specification comes with a set of opinionated guidelines on how a REST API should be designed

-   <https://www.openapis.org/>


<a id="org776e826"></a>

### links

design <https://github.com/stickfigure/blog/wiki/How-to-%28and-how-not-to%29-design-REST-APIs>


<a id="org520a6b1"></a>

## (SOA) Service-oriented architecture [ˈɔːrɪənt] [ˈɑːkɪˌtɛktʃə]

**style of software design** where services are provided to the other components by app components, through a
  communication protocol over a network.

SOA prevents developers from having to perform integration from scratch, no metter what protocol used.
 Instead, they can use patterns called **enterprise service buses (ESBs)**, which perform the integration
 between a centralized component and backend systems and then make them available as service interfaces.

Service:

1.  logically represents a business activity with a specified outcome.
2.  self-contained. независимы
3.  a black box for its consumers.
4.  may consist of other underlying services.

обычно реализуются как набор веб-служб

A manifesto was published for service-oriented architecture in October, 2009.

-   **Business value** > **technical strategy**.
-   **Strategic goals** > **project-specific benefits**. [strəˈtējik]
-   **Intrinsic inter-operability** > **custom integration**. Свойственный ɪntrɪnsɪk
-   **Shared services** > **specific-purpose implementations**. [ˈpɜːpəs] назначение
-   **Flexibility** > **optimization**.
-   **Evolutionary refinement** > **pursuit of initial perfection**. [rɪˈfaɪnmənt ] утонченность [pəʳsjuːt] преследование


<a id="org0015ae1"></a>

### Principles

-   **Service granularity:** A principle to ensure services have an adequate size and scope. The functionality
    provided by the service to the user must be relevant.


<a id="org500fddf"></a>

### Roles

Roles:

-   **Service provider:** It creates a web service and provides its information to the service registry.  Each
    provider debates upon a lot of hows and whys like which service to expose, which to give more importance:
    security or easy availability, what price to offer the service for and many more.
-   **Service broker, service registry or service repository:** Its main functionality is to make the information
    regarding the web service available to any potential requester. Whoever implements the broker decides the
    scope of the broker. UDDI no longer active
-   **Service requester/consumer:** ??


<a id="orgf9aa05d"></a>

## plugin-based architecture

-   core system
-   plugins - independent components providing a specialized functionality

pros: great for apps that have to be expanded over time like IDEs.

cons: changing core is difficult


<a id="org3d7b4cd"></a>

## Hexagonal architecture (or ports and adapters)

abstraction layer that protects the core of an application and isolates it from external integrations for better modularity.

-   core with ports
-   adapters layers
-   external communication


<a id="org8feee4e"></a>

## API design

Golden Rule of API Design: It's not enough to write tests for an API; you have to write unit tests for code
 that uses your API. Michael Feathers.


<a id="orgf27afa5"></a>

# Design principles


<a id="orga0382bd"></a>

## SOLID

to make designs  more understandable, flexible and maintainable.

-   **Single responsibility principel:** a class should have only a single responsibility in whole software
    specification
-   **Open/closed principle:** "software entities … should be open for extension, but closed for modification."
-   **Liskov substitution principle:** объекты Субтипа должны без проблем работать как и объекты Супертипа.
    -   A subclass should override the parent class methods in a way that does not break functionality from a
        client’s point of view
    -   software modules that use base type should be able to use subtypes of the base type without changing the code.
-   **Interface segregation principle:** many client-specific interfaces are better than one general-purpose
    interface
    -   Software modules should not be forced to depend upon interfaces that they do not use
-   **Dependency inversion principle **Принцип инверсии зависимостей**:** Используемый для уменьшения зацепления в
    компьютерных программах.
    -   High-level modules should not depend on low-level modules. Both should depend on
        abstractions. Abstractions should not depend on details. Details should depend on abstractions.
    -   interface is a kind of abstraction

Модули верхних уровней не должны зависеть от модулей нижних уровней. Оба типа модулей должны зависеть от абстракци.

one should "depend upon abstractions, [not] concretions

**substitutability** ['sʌbstɪtjutə'bɪlɪtɪ] - an object (such as a class) may be replaced by a sub-object (such as a class that extends
 the first class.

examples <https://medium.com/better-programming/5-problems-faced-when-using-solid-design-principles-and-how-to-fix-them-df6dbf3699fb>


<a id="orgfbc2115"></a>

## variance, covariance and contravariance

**Variance** refers to how subtyping between more complex types relates to subtyping between their components.

-   how should a list of Cats relate to a list of Animals?
-   how should a function that returns Cat relate to a function that returns Animal?

**Type constructor** - builds new types from old ones. Basic types are considered to be built using nullary type
 constructors.

-   **primitive data types** or **basic data types** - from which all other data types are constructed

List type constructor is **covariant** -  subtyping relation of the simple types are preserved for the complex
 types.

-   "list of Cat" is a subtype of "list of Animal".

Function type constructor is **contravariant** in the parameter type - subtyping relation of the simple types is
 reversed for the complex types.

-   "function from Animal to String" is a subtype of "function from Cat to String"

**invariant** construction - don't allow substitutability

in Python is Tuple[bool] a subtype of Tuple[int]?

-   Tuple is **covariant**. This means that it preserves the type hierarchy of its item types: Tuple[bool] is a
    subtype of Tuple[int] because bool is a subtype of int.
-   List is **invariant**. Invariant types give no guarantee about subtypes. While all values of List[bool] are
    values of List[int], you can append an int to List[int] and not to List[bool]. In other words, the second
    condition for subtypes does not hold, and List[bool] is not a subtype of List[int].
-   Callable is **contravariant** in its arguments. This means that it reverses the type hierarchy. Callable[[T],
    &#x2026;] as a function with its only argument being of type T. An example of a Callable[[int], &#x2026;] is the
    double() function defined above. Being contravariant means that if a function operating on a bool is
    expected, then a function operating on an int would be acceptable.


<a id="orgd1fecde"></a>

### links

-   <https://en.wikipedia.org/wiki/Covariance_and_contravariance_(computer_science)>
-   


<a id="orgac2f932"></a>

## Liskov substitution principle imposes some standard requirements on signatures:

**Contravariance of method parameter types in the subtype.** - overriding method should accept more general type.

**Covariance of method return types in the subtype.** - overriding method should return a more specific type

**New exceptions cannot be thrown by the methods in the subtype, except if they are subtypes of exceptions
 thrown by the methods of the supertype.**


<a id="org2040859"></a>

## Inversion of Control (IoC) Инверсия управления

Dependency injection is a principle that helps to decrease coupling(зацепления) and increase cohesion и
архетиктурное решение интеграции - контроль над потоком управления программы остаётся за каркасом.

Objects do not create each other anymore. They provide a way to inject the dependencies instead.

Внедрение зависимостей (англ. **dependency injection**) - одна из реализаций. используется во многих
 фреймворках, которые называются **IoC-контейнерами**.

Методы реализации:

-   Шаблон "Фабрика" (англ. Factory pattern) ??
-   service locator pattern Локатор служб
-   dependency injection Внедрение зависимости:
    -   Constructor injection
    -   Parameter injection
    -   Setter injection
    -   Interface injection
-   Контекстный поиск contextualized lookup
-   template method design pattern
-   strategy design pattern

Opposed to Monkey-patching (modification at runtime)


<a id="org126446e"></a>

## separation of concerns

Separating a computer program into distinct sections. Each section addresses a separate concern.
Concert - is a particular set of information that has an effect on the code.

-   for: more degrees of freedom for design, deployment, usage, upgrade, reuse, and independent development.

**cross-cutting concerns** are **aspects** (a feature linked to many other parts of the program, but is not
 related to the program's primary function) of a program that affect several modules, without the possibility
 of being encapsulated in any of them.

-   can result in:
    -   scattering (code duplication)
    -   tangling (significant dependencies between systems), or both.


<a id="org5e8e0e2"></a>

## links

<https://en.wikipedia.org/wiki/Category:Programming_principles>


<a id="org06e99a1"></a>

# Methodologies and frameworks - frequent updates

ASD DevOps DAD DSDM FDD IID Kanban Lean SD LeSS MDD MSF PSP RAD RUP SAFe Scrum SEMAT TSP OpenUP UP XP


<a id="org4fb1f48"></a>

## Twelve-Factor App methodology

for building software-as-a-service applications

-   I 	Codebase 	There should be exactly one codebase for a deployed service with the codebase being used for many deployments.
-   II 	Dependencies 	All dependencies should be declared, with no implicit reliance on system tools or libraries.
-   III 	Config 		Configuration that varies between deployments should be stored in the environment.
-   IV 	Backing services 	All backing services[1] are treated as attached resources and attached and detached by the execution environment.
-   V 	Build, release, run 	The delivery pipeline should strictly consist of build, release, run.
-   VI 	Processes 	Applications should be deployed as one or more stateless processes with persisted data stored on a backing service.
-   VII 	Port binding 	Self-contained services should make themselves available to other services by specified ports.
-   VIII 	Concurrency 	Concurrency is advocated by scaling individual processes.
-   IX 	Disposability 	Fast startup and shutdown are advocated for a more robust and resilient system.
-   X 	Dev/Prod parity 	All environments should be as similar as possible.
-   XI 	Logs 		Applications should produce logs as event streams and leave the execution environment to aggregate.
-   XII 	Admin Processes 	Any needed admin tasks should be kept in source control and packaged with the application.

notes

1.  A backing service is any service on which your application relies for its functionality over network.


<a id="orgc38686d"></a>

## Security Development Lifecycle (SDL) (Microsoft)

It is based on the classical spiral model.

The Microsoft Security Development Lifecycle (SDL)

Practices:

1.  Provide Training: Security is everyone’s job
2.  Define Security Requirements:
    -   the optimal time to define the security requirements is during the initial design
    -   These requirements should be tracked through either a work-tracking system or through telemetry derived from the engineering pipeline.
3.  Define Metrics and Compliance Reporting. It is essential to define the minimum acceptable
    levels of security quality and to hold engineering teams accountable to meeting that criteria.
    -   allow security bugs
4.  Perform Threat Modeling
    -   can be applied at the component, application, or system level.
5.  Establish Design Requirements
6.  Define and Use Cryptography Standards
7.  Manage the Security Risk of Using Third-Party Components
8.  Use Approved Tools
9.  Perform Static Analysis Security Testing (SAST)

pr

-   Защита от раскрытия информации;
-   Защита от изменения;
-   Защита от разрушения;
-   Аутентификация;
-   Какие права и привилегии пользователя;
-   Управление конфигурацией, сеансами и ошибками / исключениями.


<a id="orgfd6bd09"></a>

### Этапы SDL

-   Планирование(Training)
-   Требования(Requirements)
-   Проектирование(Design)
-   Реализация(Implementation)
-   Верификация (Verification)
-   Выпуск(Release)
-   Реагирование(Response)


<a id="orga300135"></a>

### training

-   Безопасный дизайн;
-   Моделирование угроз;
-   Безопасное кодирование;
-   Тестирование безопасности;
-   Обеспечение приватности.


<a id="org4c24750"></a>

### requirements

1.  определении и интеграции требований безопасности и конфиденциальности;
2.  определении минимально допустимых уровней безопасности и конфиденциальности;
3.  оценке безопасности и конфиденциальности, изучении разработки программного обеспечения на основе затрат и нормативных требований.


<a id="orged725d7"></a>

### links

-   <https://www.microsoft.com/en-us/securityengineering/sdl/>
-   <https://learn.microsoft.com/en-us/previous-versions/ms995349(v=msdn.10)?redirectedfrom=MSDN>


<a id="orgd4c14a5"></a>

### SDLC

Цикл

-   Анализ - Моделирование угроз
-   План - Оценка рисков
-   Архитектура - Аритектруры ревью
-   Разработка - Статический анализ кода
-   Тестирование - Тестирование безопасности
-   Постановка

OWASP Top Ten

Совместная работа с кодом - Единая система хранения кода

Code Review

-   Linting
-   Code Smells - problems patterns
-   Code Coverage - tests (80%)
-   SCA Software Component Analysis - external dependencies
    -   Sonotype Nexus Repository
    -   Snyk Open Source
    -   Gitlab DevSecOpes platform
    -   Checknmarx SCA
    -   CodeScoring
    -   Dependency Track - ЮMoney uses
-   SAST - static code analysis
    -   Positive Technologies Application Inspector
    -   Solar AppScreener
    -   Checkmarx
    -   Semgrep - ЮMoney uses

Platform - sonarqube - comunity edition

-   SonarQube Community Branch plugin
-   Dependency Check plugin for SonarQube
-   SonarQube SQL Plugin
-   YAML SonarQube Plugin
-   SonarQube Detekt1 Plugin
-   SonarQube plugin for Groovy


<a id="org8eb9093"></a>

## Operational Security (Microsoft)

uses:

-   Microsoft Security Development Lifecycle (SDL)
-   the Microsoft Security Response Center program
-   a deep awareness of the cybersecurity threat landscape
-   data from industry standard tools

practices:

-   Provide Training
-   Use Multi-Factor Authentication
-   Enforce Least Privilege
-   Protect Secrets
-   Minimize Attack Surface
-   Encrypt Data in Transit and at Rest
-   Implement Security Monitoring
-   Implement A Security Update Strategy
-   Protect Against DDOS Attacks
-   Validate the Configuration of Web Applications and Sites
-   Perform Penetration Testing

<https://www.microsoft.com/en-us/securityengineering/osa>


<a id="orgca64332"></a>

## SRE vs ITIL vs DevOps

DevOps, SRE, and ITIL share common goals of improving efficiency, reliability, and service quality in IT operations.

-   DevOps focuses on integrating development and operations (Efficiency)
-   SRE targets system reliability and availability (Reliability, Service Quality)
-   ITIL provides a structured framework for service management (Reliability)

ITIL(1998), SRE (2003), DevOps(2008)

ITIL

-   набор практик
-   Компоненты:
    -   стратегия,
    -   проектирование,
    -   развитие,
    -   эксплуатация,
    -   постоянное улучшение


<a id="org52bda55"></a>

## SRE

SRE:

-   практика использованя ПО
-   в условиях частого обновления
-   Надежность больших систем

Принципы:

-   принятие риска
    -   pain-индекс
    -   тех. долг
    -   психологическая безопасность
-   мониторинг
-   автоматизация
-   инжерения


<a id="org5a4f9fd"></a>

## ITIL

framework designed to help organizations manage their IT services effectively, service management frameworks.

release of the ITIL 4 Foundation Edition in February 2019,

-   34 management practices in ITIL 4
-   split into three main areas:
    -   General Management Practices
    -   Service Management Practices
    -   Technology Management Practices


<a id="org563a042"></a>

### ITIL Service Desk Framework

-   the desk is recognized as a team of people
    -   offers all IT users a solitary, central point of contact
    -   incident management and request fulfillment operations to swiftly return users to normal service

duties:

-   Logging, classifying and ranking every call.
-   Performing initial research and problem diagnosis
-   Whenever feasible and resolving complaints or service requests as soon as they are received.
-   Incidents and service requests that are not resolved within the predetermined time frame are escalated.
-   Putting an end to completed requests, incidents, and other calls keeping users aware of developments,
    upcoming changes, scheduled outages, and other similar announcements.

Types of Service Desk

-   Centralized, for: Settlement of tickets quickly, Simple ticket management, Consolidation
-   Local - meets the needs of small and medium-sized businesses in terms of customer service
    -   resolving challenges at the business location
    -   taking care of a small number of support tickets
    -   Easy ticket resolution, but only for a small number of tickets
-   Virtual


<a id="org4a77d54"></a>

## DevOps CALMS - IT transformation

1.  Culture - empathy, trust
2.  Automation - everythin repetitive
3.  Lean - continues improvement,  minimizing work-in-progress (WIP), making work visible, and reducing hand-off complexity and wait times.
4.  Measurement - data-driven continuous decisions
5.  Sharing - sharing of knowledge


<a id="org26665ce"></a>

## SLO and SLI

-   Service Level Objectives (SLOs) - specific targets for service performance.  to measure the reliability and
    availability.
-   Service Level Indicators (SLIs) - performance of service - ex. the percentage of requests that are answered
    within a certain latency threshold.

practices:

-   Упарвление авариями
-   Контроль исправлений
-   Workaround's
-   Управление доступностью
-   Управление производительностью
-   Реакция на события


<a id="org2954a64"></a>

# low level operations

-   **pooling** or polled operation - actively sampling the status of an external device by a client program as a
    synchronous activity. Used in Watchdog timer.
    -   busy bit - of the controller
    -   command-ready bit - of the controller
    -


<a id="org8b43e3b"></a>

# areas, a patterns, des pattern

<https://en.wikipedia.org/wiki/Architectural_pattern>

1.  Data integration/SOA
    -   ETL (data extraction transformation and loading)
    -   Managed file transfer ("MFT")
    -   EAI/ESB Enterprise application integration (API)/ Enterprise service bus (implementation pattern above SOA)
        -   Publish/subscribe
        -   Request/reply
        -   Message exchange patterns
    -   Middleware - RPC, Object Request Broker, (Message-oriented middleware (MOM) support protocols).
    -   Message broker - translates a message from sender to reciever formats
        -   hub-and-spoke - центр и спицы
        -   message bus
2.  Data architecture
    -   Transaction data stores (TDS/OLTP)
    -   Master data store - is the effort made by an organization to create one single master reference source
    -   Operational data store - old
    -   Data warehouse
    -   Data mart
3.  Analytics and business intelligence
    -   Advanced analytics
    -   NLP Natural language processing
4.  Master data management
5.  Data modeling
6.  Artificial intelligence
7.  Big data
    -   analyzing data
        -   A/B testing
        -   machine learning
        -   NLP natural language processing
    -   business intelligence, cloud computing and databases
        -   MapReduce prog-ing model
    -   Visualization, such as charts, graphs and other displays of the data


<a id="orgb384ec6"></a>

# Software development methodology


<a id="org4c19862"></a>

## Extreme programming (XP)

type of agile software development - intended to improve software quality and responsiveness to changing customer requirements

-   advocates frequent releases in short development cycles
-   Code:
    -   programming in pairs or doing extensive **code review**, code can be reviewed continuously
-   Testing:
    
    -   unit testing of all code (Code the unit test first)
    -   **Acceptance tests** verify that the requirements as understood by the programmers satisfy the customer's
    
    (Acceptance tests are run often and the results are published)
    
    -   Leave optimization until last
    -   All code must have unit tests
    -   When a bug is found, tests are created before the bug is addressed
    
    actual requirements.
-   Listening:
    -   not programming features until they are actually needed
    -   expecting changes in the customer's requirements as time passes and the problem is better understood
    -   frequent communication with the customer and among programmers.

-   a flat management structure
-   code simplicity and clarity


<a id="org7aa844f"></a>

# Software development

Инженерный подход к разработке <https://habr.com/en/company/yandex/blog/457810/>


<a id="org643ddbb"></a>

## waterfall Разработка ПО – полный цикл

-   **Бизнес-анализ:** Анализ задач проекта, стоящих за ними бизнес-процессов и создание детализированного технического задания
-   **Создание дизайна и архитектуры программного обеспечения:** Определение того, какие бизнес-процессы будут
    реализованы; какие алгоритмы будут использоваться для вычислений; какие технологии (платформы, языки
    программирования и т.д.) будут наилучшим образом соответствовать поставленным задачам
-   **Заказная разработка программного обеспечения:** Реализация технического задания в виде программного кода,
    пользовательских интерфейсов и баз данных с использованием выбранных технологий
-   **Тестирование:** Проверка надежности, стабильности, дружественности интерфейса и других аспектов качества
    программного продукта с использованием специальных технологий тестирования
-   **Внедрение:** Внедрение программного продукта и обучение пользователей клиента
-   **Поддержка:** Быстрое реагирование на непредвиденные ситуации и требования пользователей, а также на новые
    запросы и задачи, требующие изменений в бизнес-процессах и программном обеспечении


<a id="org29177c6"></a>

## Заказная разработка программного обеспечения


<a id="org28ce1a3"></a>

## продуктовый подход

это короткий цикл, в рамках которого весь фокус специалиста, предпринимателя или product-менеджера направлен
 на продукт.

Продукт может быть бизнес, карьера, личное время, финансовая грамотность.

пирамида «продукты-процессы-люди»

Чаще всего продуктовый подход имеет смысл на растущих рынках: высокая степень неопределенности и конкуренции
 предполагает работу над усовершенствованием продукта. Российский рынок практически всегда растет.

Первые результаты уже через 3 недели:

-   Описываем концепт в соответствии со спецификой задач проекта;
-   Определяем KPI и те средства аналитики, которые будем использовать для измерения успеха проекта;
-   Создаем базовую версию продукта с минимальной требуемой функциональностью (MVP за три недели);
-   Тестируем на реальных пользователях;
-   Короткими циклами улучшаем продукт;

Запад - особенности

-   **огромный доступ к свободному капиталу:** Большие бюджеты на маркетинг, привлечение
    клиентов и на покупку лояльных игроков компании могут быть реинвестированы на развитие.
-   **высокий налог на коммуникацию, взаимодействие и осуществление процессов.:** .


<a id="orga964d96"></a>

## Ontology engineering <a id="org425c3f5"></a>

information science and systems engineering is a field which studies the methods and methodologies for
building **ontologies:** formal representations of a set of concepts within a domain and the relationships between
those concepts.

Domain knowledge - предметная область -  часть реального мира, рассматриваемая в пределах данного контексат.

-   **Problem domain:** area of expertise or application that needs to be examined to solve a problem
-   **Mental model:** captures ideas in a problem domain.
-   **Conceptual model or domain model:** represents 'concepts' (entities) and relationships between them. independent of design
    or implementation concerns. The aim to express the meaning of terms and concepts used by domain experts
    to discuss the problem, and to find the correct relationships between different concepts.


<a id="org5d1dff2"></a>

## Formal representation or visualize the design


<a id="org0c025da"></a>

### Unified Modeling Language (UML)

1.  TODO Use case


<a id="orgfcf3bc1"></a>

## Formal methods, Formal verification techniques

techniques for the specification, development, analysis, and verification of software and hardware systems.

-   can contribute to the reliability and robustness of a design

Formal verification techniques [50] are a collection of techniques that can be used to provide strong
 guarantees of cor- rectness and security for software.


<a id="org306ec87"></a>

### terms

-   **Refinement [rɪ'faɪnmənt]:** изысканность; изящество.
-   **Program refinement:** verifiable transformation of an abstract (high-level) formal specification into a
    concrete (low-level) executable program.
-   **functional correctness:** for each input it produces an output satisfying the specification
-   **partial correctness:** if an answer is returned it will be correct
-   **total correctness:** additionally requires that an answer is eventually returned
-   **proof theory:** branch of mathematical logic and theoretical computer science. represents proofs as formal
    mathematical objects, facilitating their analysis by mathematical techniques.


<a id="orgf55627a"></a>

### applyed to:

-   logic calculi - разные исчисления логики
-   formal languages
-   automata theory - теории автоматов
-   control theory -
-   program semantics - формальной семантики
-   type systems - системы типов
-   type theory - теория типов

when:

-   Specification - to give a description of the system to be developed
-   Development - as an integrated part of a tool-supported system development process.
-   Verification - **formal verification** is the use of software tools to prove properties of a formal
    specification, or to prove that a formal model of a system implementation satisfies its specification.
-   


<a id="org717977f"></a>

### can be used at a number of levels

-   Level 0: **Formal specification** may be undertaken and then a program developed from this informally.
-   Level 1: **Formal development** and **formal verification**
-   Level 2: **Theorem provers** may be used to undertake fully formal machine-checked proofs.

styles of formal methods may be roughly classified as meaning of a system is expressed:

-   **Denotational semantics:** in the mathematical theory of domains.
-   **Operational semantics:** as a sequence of actions of a (presumably) simpler computational model.
-   **Axiomatic semantics:** in terms of **preconditions** and **postconditions** which are true before and after the
    system performs a task, respectively.


<a id="orgf1ca515"></a>

### Hoare logic or Floyd–Hoare logic or Hoare rules - Логика Хоара

Used for simple imperative programming language + concurrency, procedures, jumps, and pointers.

-   uses axiomatic techniques to define programming language semantics
-   argue about the correctness of programs through assertions known as Hoare triples.

Hoare triple - describes how the execution of a piece of code changes the state

-   {P}C{Q}
-   P and Q are assertions: precondition and postcondition - formulae in predicate logic.
    -   P - describing the condition the function relies on for correct operation
    -   Q - describing the condition the function establishes after correctly running
-   C is a command
-   If we start in a state where P is true and execute S, then S will terminate in a state where Q is true.
-   if program variables satisfy the condition P and the program S is executed, then the program variables
    satisfy the condition Q provided the program terminates.
-   We may extend it to total correctness with the additional assertion that the program will terminate when
    starting at a variable state satisfying P

Hoare logic provides axioms and inference rules. Only partial correctness can be proven.

Hoare Triple is still valid if the precondition is stronger than necessary, but not if it is too weak.

1.  compositional semantic parsing of natural language assertions

    **Shallow semantic parsing** techniques such as semantic role labelling aims to identify semantic roles (such as
     agent or location) associated with the events specified in a sentence.
    
    **deep semantic parsing** aims to extract a rich representation of meaning known as logical forms in a formal
     system such as the λ- calculus.
    
    **λ-calculus** is preferred over first order logic for logical forms since it allows us to define semantics
     compositionally using function composition and function application, from logic forms representing meanings
     of constituents.
    
    Compositional semantics is originally due to Richard Montague and hence is broadly called Montague semantics.
    
    Combinatory categorial grammar

2.  ex

        /*@ requires len >= 0 && array.length = len
        @
        @ ensures \result ==
        @ (\sum int j; 0 <= j && j < len; array[j])
        @*/
        float sum(int array[], int len) {
        float sum = 0.0;
        int i = 0;
        while (i < length) {
        sum = sum + array[i];
        i = i + 1;
        }
        return sum;
        }

3.  links

    -   <https://www.cs.cmu.edu/~aldrich/courses/413/slides/24-hoare.pdf>
    -   <https://arxiv.org/abs/2103.05779>


<a id="org3f268c3"></a>

### B-Method - software development

depends on

-   set theory
-   first order logic - Логика первого порядка -

more focused on refinement  -  easier to correctly implement a specification written in B

Mechanisms include encapsulation and data locality.

The Rodin Platform is a tool that supports Event-B.

-   based on an Eclipse software IDE
-   ProB - plug-in for Robin. - Animation and Model-checking of Event-B models; Counterexamples for false proof
    goals, in particular, proof obligations

cycle of project development :

1.  Translation from an informal or semi-formal specification into the Abstract Machine Notation.This step is
    not machine-checked, so it’s extremely important that this translation can be read and accepted by the
    “client”.
2.  A sequence of (machine-checked) refinements : each version of the software is proved to be consistent with
    the previous one.
3.  Possible translation into some classical programming language : Ada, C, C++.

1.  components:

    Abstract machine - first and the most abstract version
    
    -   describes a reactive system.
    
    Refinement
    
    -   refinement step
    -   new version - should be proven to be coherent and including all the properties of the abstract machine.
    
    Implementation - deterministic version - the last version may be translated to a programming language for compilation.
    
    Structure of an abstract machine
    
    -   Constants and axioms are imported from contexts (SEES clauses).
    -   The state of the machine is describe by a set of variables,
    -   the consistency of the state is defined by a set of invariants : i.e. formulae that the variables must satisfy.
    -   A set of events describe the possible evolutions of the machine’s state.

2.  Event-B

    based on the B-Method.
    
    aimed at system-level modelling and analysis.
    
    set theory for modelling
    
    refinement to represent systems at different levels of abstraction. mathematical proof for verifying
     consistency between these refinement levels.
    
    A context is a first-order theory that contains
    
    -   I declarations of constants,
    -   I axioms about these constants
    
    The description language is **first order logic + arithmetics + simple set theory**.
    
    I typing is expressed through set membership.
    
    Recomendations:
    
    -   Give axioms systems that are consistent (that have somemodel)
    -   I Try to get minimal sets of axioms : if some property can be inferred from the other axioms, mark it as
        theorem.
        -   axm1 : n ∈ N1
        -   thm1 : ∀i ·i ∈ 0 .. n − 1 ⇒ i > 0 ∨ i < n
    
    Event-B’s description language is quite big, including :
    
    -   I First Order Logic : connective, quantifiers,
    -   I Na ̈ıve set theory : sets, relations, functions,
    -   I Arithmetics (on Z). N and N1 are subsets of Z.
    
    1.  ex1
    
        The “type” of this constant is expressed through an axiom (with the language of set theory)
        
        The symbol N1 denotes the set of strictly positive integers.
        
            CONTEXT  Maximum
            CONSTANTS:
            
            maxi Maximum number of cars in the island
            (bridge included)
            
            AXIOMS
            
            axm1 : maxi ∈ N1
            
            END
    
    2.  ex2
    
            CONTEXT AxiomsBad
            
            CONSTANTS
            f
            AXIOMS
            axm1 : f ∈ N → N
            axm2 : ∀n·(n ∈ N ⇒ f (n) < n)
            
            END

3.  links

    <https://www.labri.fr/perso/casteran/FM/Rodin/Slides.pdf>


<a id="orga036adf"></a>

## Practices


<a id="org4ffaf0e"></a>

### (TDD) Test-driven development

Разработка через тестирование

-   программисты, пишущие больше тестов, склонны быть более продуктивными
-   менее связанный дизайн, с простой инициализацией
-   четкие и небольшие интерфейсы


<a id="orgdaed881"></a>

### (BDD) Behavior-driven development

Set of practices to test behavior not implementation.
test counter - bad input 0 test 1. good input counter current test current+1
may be improved unit testing.

Behaviour-driven Development (BDD) is a software development technique that has evolved from TDD (Test Driven
 Development), which is an approach or programming practice where the developers write new code only when the
 automated test case fails.

-   Focuses on defining ‘behavior’ rather than defining ‘tests’
-   usage of non-technical language

Describe Behaviour -> write steps -> run and fail tests -> apply update code -> Describe Behavior


<a id="orgf62c56a"></a>

### (DDD) Domain-driven design

Проблемно-ориентированное проектирование

-   **Domain:** A sphere of knowledge (ontology), influence, or activity. The subject area to which the user
    applies a program is the domain of the software;
-   **Context:** the setting in which a word or statement appears that determines its meaning
-   **Model:** A system of abstractions that describes selected aspects of a domain and can be used to solve
    problems related to that domain;
-   **Ubiquitous Language или язык описания:** [juːˈbɪkwɪtəs] вездесущий. A language structured around the domain
    model and used by all team members to connect all the activities of the team with the software.
    -   используется для единого стиля описания домена и модели.
    -   used in the domain model and for describing system requirements

Microsoft recommends that it be applied only to complex domains where the model and the linguistic processes
 provide clear benefits in the communication of complex information, and in the formulation of a common
 understanding of the domain.

Under domain-driven design, the structure and language of software code (class names, class methods, class
variables) should match the business domain.

1.  templates

    -   Entity
    -   Value-object
    -   Aggregation-root
    -   **repository**, is an object with methods for retrieving domain objects from a data store (e.g. a database)
    -   **factory** is an object with methods for directly creating domain objects.
    -   **service** - When part of a program's functionality does not conceptually belong to any object

2.  сложность системы

    количество сценариев использования вашей системы. Если их в районе 10-15, значит бизнес-логика не такая
     сложная, и вы можете не париться, никакого DDD не применять.
    
    Если у вас 30-50 и более UX-кейсов, и они очень сильно пересекаются, имеет смысл задуматься над применением
     DDD хотя бы в какой-то части системы.

3.  цели

    1.  создать наименьшие из возможных микрослужб.
    2.  избежать "многословного" обмена данными между микрослужбами.

4.  Specification By Example

5.  links

    -   red <https://www.ozon.ru/context/detail/id/147927649/>
        -   red2 <https://www.ozon.ru/context/detail/id/141189036/>
    -   blue <https://www.ozon.ru/context/detail/id/147107976/>
    -   green <https://www.ozon.ru/context/detail/id/140145967/>


<a id="org996288d"></a>

### Design by contract (DbC) or contract programming

Components with each other on the basis of mutual **obligations** and **benefits**.

Assumes all **client components** that invoke an operation on a server component will meet the preconditions
 specified as required for that operation.

Where this assumption is considered too risky (as in multi-channel or distributed computing):

-   server component tests that all relevant preconditions hold true (before, or while, processing the client
    component's request) and replies with a suitable error message if not.

extend the ordinary definition of **abstract data types** with

-   preconditions, postconditions and invariants.

the contract for method:

-   Acceptable and unacceptable input values or types, and their meanings
-   Return values or types, and their meanings
-   Error and exception condition values or types that can occur, and their meanings
-   Side effects
-   Preconditions
-   Postconditions
-   Invariants
-   (more rarely) Performance guarantees, e.g. for time or space used

in an inheritance hierarchy

-   Subclasses are allowed to weaken preconditions (but not strengthen them)
-   strengthen postconditions and invariants (but not weaken them)

                    *preconditions*
                     input values
                          |
                          V
                  +---------------------+
                  |                     |
    (Side effects)|(errors/expcetions)  |
                  |                     |
                  |                     |
                  |   *postcondition*   |
                  +---------------------+
                          |
                          V
                    output values


<a id="org734db03"></a>

## Software Testing

terms:

-   Автотесты - автоматизированные функциональные тесты, выполняющиеся на полностью развернутом продукте в
    окружении, максимально приближенном к боевому. Удовлетворительно работающая система автоматизированных
    тестов зачастую сложнее самого тестируемого продукта и она сама по себе является программнымx
    продуктом. Трудоемкость автотестов обычно составляет 10-20% от трудоемкости истории, но потраченное время
    потом многократно окупается. Надо сделать так, чтобы прогон автотестов (по крайней мере, части из них) стал
    внутренним делом команды программистов. Это означает, что тестировщики получают в тестирование только те
    сборки, на которых полностью прошли автотесты.
-   Application Under Test (AUC)

Дымовые Smoke Testing

1.  критически важные части AUT работают как положено
2.  Цель — проверить «стабильность» системы в целом, чтобы дать зелёный свет проведению более тщательного
    тестирования
3.  выполняется перед регрессионным
4.  запуск автомат или вручную
5.  Является подмножеством регрессионного тестирования

Санити Sanity Testing

1.  определённые части AUT всё так же работают как положено после минорных изменений или исправлений багов
2.  проверить общее состояние системы в деталях, чтобы приступить к более тщательному тестированию
3.  перед регрессионным и после smoke-тестов
4.  чаще вручную
5.  Подмножество приёмочного тестирования

Регрессионные Regression Testing

1.  изменения в коде или приложении в целом не оказали негативного влияния на уже существующую
    функциональность/набор функций
2.  убедиться что свежие изменения в коде не оказали побочных эффектов на устоявшуюся работающую
    функциональностьx
3.  Проводится на основании требований проекта и доступности ресурсов. (закрывается автотестами). Может
    проводиться в параллели с ре-тестами
4.  авто или вручную
5.  Выполняется при любой модификации или изменениях в уже существующем проекте

Ре-тест (Re-test)

1.  проверяет что после исправления дефектов ранее проваленные тесты теперь проходят
2.  проверяет что дефект исправлен
3.  перед sanity-тестированием и перед Регрессионными (выше приоритет)
4.  только вручную
5.  на исправленной сборке с использованием тех же данных, на том же окружении, но с различным набором входных
    данных

Smoke tests can be functional tests or unit tests.

-   Functional tests exercise the complete program with various inputs
-   Unit tests exercise individual functions, subroutines, or object methods.


<a id="orgd61662a"></a>

### function tests

Most functional tests follow the Arrange-Act-Assert model:

-   **Arrange**, or set up, the conditions for the test
-   **Act** by calling some function or method
-   **Assert** that some end condition is true
-   **Cleanup** (optional)


<a id="orge87d36c"></a>

### web-app testing

-   Capybara
-   Jasmine - for javascript

1.  selenium

    for
    
    -   regression testing
    -   database testing using SQL
    -   Cross-browser testing - that web application behaves in various web browsers identically
    
    components
    
    -   Selenium WebDriver - interface to write instructions that work interchangeably across browsers, like a
        headless browser
    -   Selenium RC
    -   Selenium IDE -
    -   Selenium Grid
    
    -   <https://en.m.wikipedia.org/wiki/Selenium_(software)>
    -   <https://en.m.wikipedia.org/wiki/Comparison_of_GUI_testing_tools>

2.  <https://en.m.wikipedia.org/wiki/Headless_browser>

    useful for
    
    -   testing web pages
    -   web scraping -  extracting data from websites
    -   Perform DDoS attacks on web sites.
    -   Increase advertisement impressions
    -   Automate web sites in unintended ways[10] e.g. for credential stuffing.
    
    tools:
    
    -   Selenium WebDriver
    -   Playwright - a Node.js library to automate Chromium, Firefox and WebKit[13]
    -   Puppeteer - a Node.js library to automate Chrome
    -   PhantomJS - obsolate


<a id="orgcaf5068"></a>

## Service testing

-   **Smoke Testing:** This is done after API development is complete. Simply validate if the APIs are working and
    nothing breaks.
-   **Functional Testing:** This creates a test plan based on the functional requirements and compares the results
    with the expected results.
-   **Integration Testing:** This test combines several API calls to perform end-to-end tests. The intra-service
    communications and data transmissions are tested.
-   **Regression Testing:** This test ensures that bug fixes or new features shouldn’t break the existing
    behaviors of APIs.
-   **Load Testing:** This tests applications’ performance by simulating different loads. Then we can calculate
    the capacity of the application.
-   **Stress Testing:** We deliberately create high loads to the APIs and test if the APIs are able to function normally.
-   **Security Testing:** This tests the APIs against all possible external threats.
-   **UI Testing:** This tests the UI interactions with the APIs to make sure the data can be displayed properly.
-   **Fuzz Testing:** This injects invalid or unexpected input data into the API and tries to crash the API. In
    this way, it identifies the API vulnerabilities.

![img](/home/u/docsmy_short/modified/imgs/api-testing.gif)


<a id="org11b63cd"></a>

## TODO Technique tɛkˈniːk


<a id="org35b27ee"></a>

## Microservices

-   variant of the service-oriented architecture (SOA)
-   loosely coupled services
-   protocols are lightweight
-   not a layer within a monolithic application
-   Unix philosophy of "Do one thing and do it well"

Pros

-   дешевле выкинуть если не нужна
-   баланс нагрузки удобнее
-   decomposing = modularity
-   easier to understand, develop, test, and become more resilient to architecture erosion
-   parallelizes development
-   refactoring

Cons

-   Services form information barriers
-   Testing and deployment are more complicated
-   Moving responsibilities between services is more difficult
-   Viewing the size of services as the primary structuring mechanism can lead to too many services when the
    alternative of internal modularization may lead to a simpler design.
-   Development and support of many services is more challenging if they are built with different tools and
    technologies - this is especially a problem if engineers move between projects frequently

ПО Confluence. Там есть плагин Gliffy


<a id="org17afd6f"></a>

### async vs sync

Syncrhonous queries - is simplier and is better for backend and for client.

Async - requre queue for context of operation with request.

Если бизнес процесс длительный - то лучше асинхронный


<a id="orgf064e17"></a>

### Quality <a id="org8e974c2"></a>

Software Architecture in practice (3rd):

-   availability
-   interoperability - to work with other products or systems
-   maintainability
-   performance
-   security
-   testability
-   usability

ISO/IEC 25000 models:

-   Data Quality -
-   Quality in Use -
-   Product Quality - static and dynamic 8 characteristics

Abstract Pyramid:

1.  Process quality - process
2.  Inner quality - program
3.  Interface quality - program
4.  Quality in Use (many contexts) - program products

Metrics models: ISO/IEC 5055, which is compatible with ISO/IEC 25010

-   Reliability (Надежность)
-   Performance Efficiency (Эффективность работы)
-   Security
-   Maintainability (Сопровождаемость)

For every metric:

-   Description
-   justification (обоснование)
-   (решение) - How can we increase this metic
-   rating scale  (Шкала оценки) - ex. ABCD, A(4) good, B(3), C(2) - bad, D(1) - very bad, NA - unknown

Types of metrics: (separately for libraries, and for services)

-   Dynamic
-   Static
-   Experimentic - the new one

Dynamic metrics:

-   quantity error-logs entries
-   quantity of Incoming Failed
-   quantity of Outgoing Failed
-   Speed of BD requests
-   Speed of release
-   Success rate of releases

Static metrics:

-   existence of Sonar Issues? with "Critical"?
-   Documentation completeness (полнота документации)
-   For tests, is PostgreSQL running in Docker for them?
-   do tests run in several threads?

YooMoney merics collection software:

-   Sonar
-   Grafana
-   Source code of service itself
-   others..

Question of rating scale normalization for every service &#x2026;&#x2026;&#x2026;&#x2026;&#x2026;..


<a id="orgb2f346c"></a>

### Updating

It is much easier to update microservices if "standrad"  of the best service exist.

1.  Equal instruments: ex. for frontend: Node.JS, NPM, React, Nest.JS.
2.  Equal architecture of code:
    1.  Tool or framework
    2.  One documentation
3.  Equal style of code: linter

Tools:

-   Service template
-   "Automic updater"
-   Modernizer - for atomic applying patches to services.

Steps:

1.  calc diff from versions
2.  create patch on diff: package.json, configs, dependencies

Automatization "Automic updater":

1.  Jeninks scan services and calc diff
2.  Create task in Jira
3.  Try to automatic update and make pull request to Git repository
4.  if success: move task in Jira to tesing, test and release to production.

Notes: template update after quartal or at new project only.


<a id="org3285652"></a>

### Compatibility problem

-   Direct: независимо от версии нет конфликтов
-   Backward compatibility - if two version of one service is compatible with environment

steps of update on prod:

1.  update one Node "test"
2.  update DB
3.  allow node "test" 5% of traffic

Problem: Node "test" update DB and old nodes can not read from DB

Solution:

-   emulate this on tests, cover this case in autotests

ways simple

-   autotests
-   swagger-diff
-   minimization of difference between versions test-prod
-   prepare BD with scripts for rallback imergence

Ways fundamental:

-   Контрактное тестирование - методология проверки совместимости двух сервисов
-   средства зеркалирования трафика
-   Добавление нескольких экземпляров одного сервиса на тестовую среду
-   Статический анализ кода на изменения в БД


<a id="org9543289"></a>

### load testing

tools:

-   k6 - allow scripts, have RestAPI, have prometheus format
-   Gatling - allow scripts, no RestAPI, no prometheus format
-   Yandex Tank + pandora - allow scripts, have RestAPI, no prometheus format

Prometheus - defacto standard in keeping and visualization of metrics (event monitoring and alerting)

-   **exporters** - run on monitored host to export local metrics
-   central storage
-   Alermanager - to trigger alerts based on metrics
-   Grafana - for dashboards
-   PromQL - query language to create dashboards and alerts.

Victorie Metrics for storage.


<a id="orgddfd936"></a>

### API architecture

-   Сущность - из предметной области - Первичны! всегда объектно ориентированный подход
-   Атрибуты -
-   Действия - действия бизнес процессов над ними

Больше одного слова в наименовании - признак ошибок декомпозиции всегда!

Сущность правила иментования

-   в единственном числе
-   отражают объекты реального мира тоесть предметной области
-   Сущность всегда находится в рамках контекста предметной области (domain)

-   ex. Payment, Refund, Card, Wallet

Опасности иерархий

-   Вложенная сущнось, действительно ли у нее общее состояние с той в которую она входит. Не может обладать
    собственным состоянием.
-   Нетривиальные зависимости состояния сущностей
-   Часто иерархи я является частным представление одного типа клиентов
-   Можно сознательно создавать агрегаты (aggregates) но у такой сущности нет собственного состояния и операций

Атрибут правила именования - свойства или факт об объекте

-   существительными или прилагательными, НЕ ГЛАГОЛАМИ
-   для enum используйте стандартизированные справочники: ISO-4217, ISO-3166, ISO-639
-   пример: amount, currency, country, moc, refundable, paid

Действия (операции) - отражает бизнес-процесс, жизненный цикл его сущсности

-   действия всегда выполняются над сущностями
-   именуются глаголами
-   Наименование действия сочетается с наименовантем сущности
-   избегать императивов: когда глаголы первичны
-   Пример: capture, cancel, suspend, close


<a id="org4065e8f"></a>

### service mesh

Istio, linkerd2, avito-tech/netramesh

Providing observability to your distributed system

1.  intercept all TCP traffic


<a id="orgbbff1de"></a>

### Guaranteed delivery patterns - Consistency.

**Transactional outbox**

-   main database table + Outbox table - one transaction to two table.
-   outbox worker 1) read Outbox table 2) send message 3) set “sent” flag per record

**Transactional inbox**

-   


<a id="orgdbf5c6e"></a>

## principle

Extensibility

-   White-Box
-   Black-Box


<a id="orgc82a1db"></a>

## Continuous integration (CI) & Continuous delivery (CD) & Continuous deployment

-   deployment [dɪˈplɔɪmənt] - развертывание

merge to a shared mainline several times a day.

-   для скорейшего выявления потенциальных дефектов и решения интеграционных проблем.
-   сокращение стоимости исправления дефекта, за счёт раннего его выявления
-   постоянное наличие текущей стабильной версии вместе с продуктами сборок — для тестирования, демонстрации, и
    т. п.
-   user feedback more quickly

include:

-   application release automation
-   build automation
-   application lifecycle management

на выделенном сервере запускается служба:

-   получение исходного кода из репозитория;
-   сборка проекта;
-   выполнение тестов;
-   развёртывание готового проекта;
-   отправка отчетов.

принципы CI/CD.

1.  сегрегация ответственности заинтересованных сторон.
2.  снижение риска.
3.  короткий цикл обратной связи.

CD and DevOps are similar. But DevOps has a broader scope involved in software delivery (developers,
operations, quality assurance, management, etc.)

continuous deployment requires continuous delivery

Участники:

-   Разработчики и дизайнеры (Devs) -  работающий функций, доказывая это через модульные тесты
-   Инженеры по качеству (QE) - приемочные тесты
-   Бизнес-аналитики (BAs) и владельцы продуктов (POs) - взаимодействием с фактическими пользователями и
    созданием пользовательских историй. стоимость бизнеса
-   Оперативный отдел (Ops)/ DevOps-инженеры - ответственность за доступность продукта пользователям

Tools: Jenkins


<a id="org9f81725"></a>

## TODO DevOps

Automation and collaboration are considered central points in DevOps.


<a id="org0fe2328"></a>

## Infrastructure-as-Code (marketing use case) <a id="org03538aa"></a>

with help of **infrastructure automation tools**.

Types of IaC: подходы 'что' / 'как' / 'почему'

-   декларативный (функциональный)
-   императивный (процедурный)
-   интеллектуальный

Methods: 'push' и 'pull' кто инициирует изменение в конфигурации целевого хоста.

-   pull режиме целевой хост сам инициирует получение своей конфигурации.
-   push режиме конфигурацию ему присылает управляющий сервер.

examples:

-   SaltStack - Push and Pull - Declarative and imperative - Python
-   Ansible - push and pull - Declarative and imperative - Python
-   Teraform - push - Declarative and imperative - go

Pros:

-   Infrastructure lifecycle management
-   Version control commits
-   State-based approach to track resource changes throughout deployments
-   stack-based deployments, and with cloud providers such as AWS, GCP, Azure, K8S…
-   developers more involved in defining configuration and Ops teams get involved earlier
-   Automation - less errors

In DDD **event sourcing** may be combined with CQRS, then aggregate roots are responsible for validating and
 applying commands (often by having their instance methods invoked from a Command Handler), and then
 publishing events.

-   the input is a command and the output is one or many events which are saved to an event store, and then
    often published on a message broker for those interested (such as an application's view).


<a id="orga6ee6a4"></a>

## Library development

library is a collection of non-volatile resources.

-   well-defined interface, user only needs to know the interface and not the internal details of the library

**object libraries** or **distributed objects** - Microsoft COM and DCOM.

-   enables a Cocoa application to call an object in a different Cocoa application (or a different thread in
    the same application). The applications can even be running on different computers on a network.
-   an application or browser can determine which interfaces an object supports, and invoke an object's
    interface methods. This can occur even if the object and client applications were written in different
    programming languages.
-   to provide automatic cross-apartment, cross-process, and cross-machine marshaling for interfaces described
    in type libraries.
-   Distributed objects operates by having the server process “vend,” or make public, an object to which other
    client processes can connect.
-   use Remote Procedure Calls (RPC) to enable distributed component objects to communicate with each other.

Remote libraries - used in **distributed architecture** that makes heavy use of such remote calls, notably
 client-server systems and **application servers** such as Enterprise JavaBeans.


<a id="org58789f3"></a>

### linkding

the names and entry points of the code located within. for OOP: objects they depend on.


<a id="org8b76d2b"></a>

## remote procedure call (RPC)

Implemented via a request–response message-passing system. form of inter-process communication (IPC)

In OOP: RPCs are represented by remote method invocation (RMI)


<a id="org8e5e412"></a>

## Framework development

abstraction in which software, providing generic functionality.

key distinguishing features that separate them from normal libraries:

-   **inversion of control:** overall program order of statements (flow of control) is dictated, usually achieved
    with the **Template Method Pattern**.
-   **extensibility:** A user can extend the framework – usually by selective overriding, usually achieved by a
    hook method in a subclass that overrides a template method in the superclass.
-   **non-modifiable framework code:** users can extend the framework, but cannot modify its code.


<a id="orgb4929f8"></a>

## links

<https://learn.microsoft.com/ru-ru/dotnet/architecture/microservices/microservice-ddd-cqrs-patterns/ddd-oriented-microservice>


<a id="orgf7cf7ed"></a>

# Documentation Engineering

<https://blog.ego.team/programming/documentation-engineering.html>

<https://en.wikipedia.org/wiki/Requirements_analysis>

**Docs as Code** a philosophy that you should be writing documentation with the same tools as code:

-   <https://www.writethedocs.org/guide/docs-as-code/>
-   Sites build as Docs-as-Cods:
    -   Bootstrap
    -   Beegit
    -   Stack Overflow Blog


<a id="orgca7ce75"></a>

# structured systems engineering methodologies

AI Guide for Government <https://coe.gsa.gov/coe/ai-guide-for-government/print-all/index.html>


<a id="orgcc2b425"></a>

## integrated product team (IPT)

popular term for describing diverse groups of people brought together for any number of purposes.

“The essence of the IPT approach is to concentrate in a single organization the different areas of expertise
 needed to develop a product, together with the authority and responsibility to design, develop, test, and
 manufacture the product.

old way of developing a product, with one organizational stovepipe (e.g., engineering, marketing,
 manufacturing, etc.)

specific:

-   difficult dynamics inherent in such a diverse collection of team members
-   because the team’s capacity for consensus building is crucial.

<https://www.mitre.org/sites/default/files/pdf/08_1645.pdf>


<a id="org94f4625"></a>

# Programming Languages Evolution

ways: safe, efficient

-   C++ -> Rust, Carbon
-   Python -> Julia
-   Java -> Kotlin
-   JavaScript -> TypeScript
-   C# -> F#
-   R -> Python
-   PHP -> Node.js, Erlang, Python
-   Swift -> Rust
-   Go -> Python
-   C -> Go


<a id="org811aa50"></a>

## Rust vs C

Rust, C++ - “kitchen sink” programming languages, "jack of all trades, master of none", with the obvious
 implication. These languages solve problems by adding more language features. A language like C solves
 problems by writing more C code.

C runs on almost everything.

C has a spec. No spec means there’s nothing keeping rustc honest. Any behavior it exhibits could change
 tomorrow. Some weird thing it does could be a feature or a bug. There’s no way to know until your code
 breaks. That they can’t slow down to pin down exactly what defines Rust is also indicative of an immature
 language.

Cargo is mandatory - compiler flags are not stable.

Go better for parallelism.

“9 times out of 10.” concurrency is a bad idea for software design.

C cons:

-   for new greenfied project, easy to introduce new undefined behavior and memory unsafety


<a id="org060cec6"></a>

## Rust

-   strong ecosystem
-   Fast and safe
-   fearless concurrency - no warry about data races
-   high performance: IO (non-copy I/O), regex


<a id="orgbccd851"></a>

# TODO SSO/IAM

-   identity and access management (IAM)
-   What is Single Sign On (SSO)

YooMoney: SSO on Keycloak, same as SberID. OpenID connect protocol as SSO protocol.
   Kerbros for ActiveDirectory and Keyclock authentification.


<a id="org3f8eb50"></a>

# TODO (RFP) Request for Proposal

limits, blockers, enterprise security, solution complexity in terms of reporting, maintenance, technology stack, roadmap, vision, etc.

A request for information (RFI) is typically precedes an RFP. are used to pinpoint potential vendors, are
 about collecting information.


<a id="org2cfb084"></a>

## RFP Template and Sample

-   Define your project, scope, and budget.
-   Provide background and introductory information.
-   Describe the services you’re looking for.
-   Detail your selection criteria and timelines.
-   Proofread your RFP and go live.

o

1.  Write your background and introduction.
2.  Define your project goals and scope of services.
3.  Detail your anticipated selection schedule.
4.  Describe the time and place for the submission of proposals.
5.  Clearly define your timeline.

&#x2026;

<https://blog.hubspot.com/marketing/rfp-template>


<a id="org55ad126"></a>

# DevOps

Under the DevOps approach, software engineers work in a well-defined shared codebase. Once an incremental
 change is ready for deployment, the engineer checks it into a version control system. A Continuous
 Integration/Delivery (CI/CD) pipeline picks up the latest changes, runs unit tests, builds the software
 artifacts, runs integration tests, and eventually rolls out the change to production in a controlled fashion
 or stages the release for distribution.


<a id="org485a602"></a>

## Cultural Philosophy

DevOps is about removing the barriers between two traditionally siloed teams, development and operations.


<a id="org65cc1e4"></a>

## benefits of DevOps

-   Software engineers own their code end-to-end
-   Teams are able to iterate rapidly
-   Performance and reliability issues can be identified and addressed quickly


<a id="org96d1385"></a>

## concepts

-   Continuous Integration and Continuous Delivery (CI/CD)
-   Cattle vs Pets - Pets are carefully tended servers with names. Cattle - containerising and orchistration.
    -   Config Management (CM) vs Container Orchestration (CO) - pets and cattle.
-   Infrastructure as Code


<a id="orga78dc68"></a>

## project management and issue tracking tool

-   Redmine - free and open source
-   Jira - proprietary


<a id="org1e833a7"></a>

## automation server and platforms

-   Gitlab
-   Github
-   Azure DevOps
-   Jenkins


<a id="org6d147d4"></a>

## corporate wiki

-   Confluence - proprietary - built-in Tomcat web server and hsql database
    -   no wiki markup?


<a id="orgef22019"></a>

## deploy

-   Дэйв Фарли (Dave Farley) и Джез Хамбл (Jez Humble) заканчивают книгу "Непрерывная доставка" (Continuous Delivery)

stages:

-   build
-   deploy
-   test
-   release

Виды

-   Сине-зеленый деплой Blue-Green Deployment
-   канареечный деплой (релиз)

TODO: Фактор репликации


<a id="orgabb29b3"></a>

## lean thinking

management framework made up of a philosophy, practices and principles.

The basic insight of lean thinking is that if you train every person to **identify wasted time** and effort in
 their own job and to better **work together** to improve processes by eliminating such waste, the resulting
 culture (basic thinking, mindset and assumptions) will deliver more value at less expense while developing
 every employee's confidence, competence and ability to work with others.

**people's reasoning abilities** rather than pushing them to execute **specialist-derived systems**.

principles

-   Value - The workplace, Value through built-in quality
-   Value streams - Value streams through understanding "takt" time.
-   Flow - Flow through reducing batch sizes,
-   Pull - Pull to visualize takt time through the flow:
-   Perfection


<a id="orgbc0ddd4"></a>

## principles

YAGNI (“You Aren’t Gonna Need It”) principle says developers should build features only when they’re needed,
 instead of trying to predict future needs. The idea is to save developers time, energy and resources.

-   planning too far in advance only serves to make projects harder.
-   a balance between trial and error and planning in software development.


<a id="org31faba0"></a>

## practices

1.  Continuous Delivery - perform very frequent but small updates - faster to market, less risky development
2.  microservices architecture - for more flexible and enable quicker innovation
3.  CI - to solve raiseed operational challenges from 1) and 2). Developers regularly merge their code changes
    into a central repository, after which automated builds and tests are run.
4.  Infrastructure automation - infrastructure as code and configuration management, help to keep computing
    resources elastic and responsive to frequent changes.
5.  monitoring and logging - helps engineers track the performance of applications and infrastructure so they
    can react quickly to problems.
6.  Communication and Collaboration - by development and operations, around information sharing and facilitating
    communication through the use of chat applications, issue or project tracking systems, and wikis.


<a id="orgdb454cc"></a>

## paradigms

**immutable infrastructure** is servers are never modified after they’re deployed. If something needs to be
 updated, fixed, or modified in any way, new servers built from a common image with the appropriate changes
 are provisioned to replace the old ones.

-   Servers in a virtualized environment (like containers)
-   Full automation of your entire deployment pipeline
-   service-oriented architecture
-   A stateless, volatile application layer - Anything here can get destroyed and rebuilt quickly at any time
    (volatile) without any loss of data (stateless).
-   persistent data layer: Centralized logging, External data stores
-   Dedication from engineering and operations teams


<a id="org2f9d6db"></a>

## TODO digital transformation

<https://cio-wiki.org/wiki/Digital_Transformation_(DX)>


<a id="orgbd0bf91"></a>

## CI/CD lifecycle

-   C. Delivery
    -   **configure:** Configuration Management
    -   **relese:** Deployment Automation and Release Orchestration
    -   **package:** Provisioning/Packaging
-   C. Integration
    -   **verify:** Functional/Integration Testing
    -   **create:** App Delvelopment and Build Automation
-   plan - Alige Planning and Management
-   monitor - Infrastructure, APM, Analytics and Log Management

![img](./imgs/devops-lifecycle.png)


<a id="orgaf8a990"></a>

# Management accounting

Net income(Чистая прибыль) - (gross) income minus taxes and other deductions over a period

Return on investment (ROI) or return on costs (ROC) - ratio between net income (over a period) and investment
(costs resulting from an investment of some resources at a point in time)


<a id="org092d67c"></a>

## Total cost of ownership (TCO), TCO analysis

product/process comparison tool

-   total cost of acquisition -  all the costs associated with buying (net price + other)
-   operating costs
    -   fixed costs - have to be paid regardless of what state the business is in
    -   variable costs -
    -   semi variable, the expenses necessary to keep the business in proper condition.
-   costs related to replacement or upgrades at the end of the life cycle


<a id="org77e602e"></a>

# Corporate law

legal status

-   Limited liability - status in which person's financial liability is limited to a fixed sum, most commonly
    the value of a person's investment in a corporation, company or joint venture. if sued - then the claimants
    are collect only against the assets of the company, not the assets of its shareholders or other investors.
-   unlimited liability - is type of statues: general partnerships and Sole proprietorship (personal guarantees)


<a id="org05a307f"></a>

# Outsourcing

-   **Offshoring:** moving the work to a distant country.
-   ::

How:

-   Near-shore location
-   common time zone
-   adequate IT work force


<a id="org350a15d"></a>

# Marketing


<a id="orgee1b3f1"></a>

## job to be done (job-to-be-done)

Drill makers (company perspective) and hole makers (customer perspective).

products to get job done:

-   accomplish tasks
-   achieve goals or objectives
-   resolve and avoid problems
-   make progress in their lives

Focuse on innovative research rather than on products on a customer.

Problem and market space rather than solution space.

Wrong : **Markets** are defined around products, verticals, demographics, etc.

-   Markets is a group of people and the job they are trying to get done.

Wrong: **Customer needs** are solutions, benefits, requirements, gains, exciters, specs, latent, etc.

-   **Needs** are the measurable outcomes that people want to achieve when getting a job done:

**Unmet needs** -  the important, measurable outcomes that people struggle to achieve

Market's Segments

-   wrong: Segments are persons, use cases, people with different attitudes, demographics, etc.
-   Segments are subset of people in a market, each with a different set of unmet needs.

Innovation is the process of devising a solution that gets a job done better / more cheaply.

Outcome-Driven Innocation (ODI) - formalized strategy and innovation process (predictable success).

-   Grow through innovation: 1) define market 2) customer needs 3) unmet 4) discover hidden segments 5)
    formulate and deploy a strategy
-   


<a id="org48bbd3b"></a>

## NBO/NBA Next Best Offer and Next Best Action

**Next Best Action (NBA)** ) methodology adopts a customer-centric behavioral approach

-   Sending a birthday message
-   Initiating a proactive service quality improvement
-   Asking for service evaluation
-   Emailing onboarding instructions, etc.


<a id="org22f4824"></a>

# Advertising

terms

-   рекламная слепота - при прочтении фразы «Подпишись на ТГ канал»  никто не будет читать дальше.
-   байт - ссылка на канал с рекламой.

telegram

-   анализировать каналы под закуп
-   продавать рекламу
-   как писать рекламные посты

контент - актуальная тематика на рынке

1.  Найти человека контенщика
2.  использовать информацию из проверенных источников

риски, например:

-   мошенники
-   неактуальная тематика
-   поверхностный анализ, а самый главный — человеческая лень

tg:telega:-1001552974510
Discussion Group: (Ч)[Человек без профессии - Чат             👤190]
<https://t.me/+HAxbyCJuPeQ3YTZi>
Channel "Человек без профессии"
@blog<sub>artur</sub>


<a id="org50cc937"></a>

# workflow automation

Robotic process automation (RPA) - automation to improve business efficiency. supports workers by pushing
 certain tasks off to software robots to perform.  automating simple, highly repetitive task

key components:

-   Process Mapping and Analysis
-   Integration of Multiple Bots
-   Exception Handling Mechanisms
-   Real-Time Monitoring and Analytics
-   Security Measures
-   Scalability and Flexibility

CWL standards <https://www.commonwl.org/> implementations:

-   <https://github.com/common-workflow-language/cwltool>
-   for hybrid cloud ifrastructures <https://streamflow.di.unito.it/>
-   for hybernaties <https://github.com/Duke-GCB/calrissian>


<a id="org3434578"></a>

## steps of RPA

Шаг 1. Целеполагание и почему оно важно

Многие начинают процесс роботизации с выбора платформы, а это ошибка. Прежде чем приступать к выбору
 инструментов роботизации, важно задать себе вопрос: какие бизнес-задачи мы хотим решить с помощью RPA?

-   Оптимизация рутинных операций для снижения трудозатрат;
-   Ускорение выполнения процессов, замедляющих ключевые бизнес-функции;
-   Решение проблем с нехваткой сотрудников на критических участках;
-   Снижение риска ошибок в процессах за счет автоматизации;
-   Повышение эффективности работы за счет устранения "узких мест" в бизнес-процессах.

Шаг 2. Экспертная группа и кого туда пригласить

Шаг 3. Стратегия внедрения и кто будет отвечать за роботизацию

После того как цели определены и собрана экспертная группа, важным этапом становится выбор подхода к внедрению
 RPA.

-   Подход: Центр компетенций - IT-команда +  Бизнес-заказчик

Шаг 4. Выбор платформы

-   Оценка совокупной стоимости владения (TCO)
    -   Стоимость лицензий платформы
    -   Стоимость разработки - может составлять до 70% TCO
    -   Поддержка и доработка
    -   Дополнительные расходы
-   фишки: BPM, и BI, и Task Mining, OCR и IDP (обработка документов)
-   Соответствие бизнес-целям
-   Гибкость и адаптивность

Шаг 5. Пилотный проект


<a id="org55717cf"></a>

## Primo RPA ROM (Robotic Operational Model) - методология

ценности RPA:

-   Видимые изменения. Результаты автоматизации должны быть заметны всем участникам процесса. Это необходимо для того, чтобы компания и ее сотрудники понимали эффективность инструмента и были настроены на его применение.
-   Быстрые изменения. Современный бизнес требует быстрых решений, поэтому автоматизация должна приносить результаты в кратчайшие сроки. Результаты, полученные поздно, теряют свою ценность.
-   Гибкие изменения. Процессы и технологии постоянно меняются, поэтому автоматизация должна быть легко адаптируемой и поддающейся доработкам.
-   Значимые изменения. Основной задачей команды роботизации является то, чтобы эффект от ее внедрения был существенен, в масштабах всей ли компании или хотя бы одного подразделения. Если с ОЦО трудится тысяча человек, то 1-2 FTE (Full-Time Equivalent, количество сотрудников, которое может быть освобождено благодаря внедрению роботов) экономии на этом фоне останутся незамеченными и вряд ли воодушевят кого-то, а вот эквивалент 50-100 FTE станет значимым и будет оценен гораздо выше


<a id="org5d62810"></a>

# Clear code

Donald Knuth has said, “Premature optimization is the root of all evil (or at least most of it) in programming.”


<a id="org10e2490"></a>

# file formats YAML

.yaml / .yml


<a id="orgd670ddc"></a>

## theory

As of 1.2, YAML is a strict superset of JSON. Any valid JSON can be parsed in the same structure with a YAML 1.2 parser.

**two primary goals:**

-   to support encoding any arbitrary data structure
-   to be easily read and written by humans (much of YAML’s syntax is optional)

diractives:

-   %YAML specifies the YAML version of the document
-   %TAG is used for tag shorthand

A YAML document is a graph of values, called **nodes** of kinds:

-   **Scalars:** are individual values;
-   **sequences:** are ordered collections;
-   **mappings:** are unordered associations.


<a id="org3c7e041"></a>

### ex

    %YAML 1.2
    ---
    !!map {
      ? !!str "Not indented"
      : !!map {
          ? !!str "By one space"
          : !!str "By four\n  spaces\n",
          ? !!str "Flow style"
          : !!seq [
              !!str "By two",
              !!str "Also by two",
              !!str "Still by two",
            ]
        }
    }


<a id="org7833b1a"></a>

## terms

-   **node:** native data structure that have content of kind: scalar, sequence or mapping. Each node have a Tag,
    that serves like type.
-   **block notation:** same indentation
-   **block collections:** list or dict.
-   **Block sequences or just sequence:** indicate each entry with a dash and space (“- ”)
-   **Mappings:** use a colon and space (“: ”) key/value pair.
-   **flow styles:** [Mark McGwire, 65, 0.278], {hr: 65, avg: 0.278}
-   **sequence:** 


<a id="org0f98f6a"></a>

## scalars

-   integers (!!int). Leading 0, 0b, and 0x
-   !!float: .inf, -.inf, and .nan.
-   true and false become booleans (!!bool). y, n, yes, no, on, and off are allowed as synonyms. Uppercase and
    title case are also recognized.
-   ~ and null become nulls (!!null), which is None in Python. A completely empty value also becomes null.
-   !!timestamp
-   = is a special value (!!value) used as a key in mappings
-   << is another special value (!!merge) used as a key in mappings

for a plain scalar to be a string, it must meet these restrictions: many


<a id="org3ba7e79"></a>

## indentation

-   tab characters must not be used in indentation
-   no metter how many spaces


<a id="orgc230b22"></a>

## comments

-   \# comment - can start anywhere, white space before # required
-   don’t affect indentation level
-   comment on its own line is the same as a blank line
-   can’t have a comment between the key and colon in key:.


<a id="org80539e5"></a>

## sequence or list or type !!seq

**ordered**

-   '- ' : Nested series entry indicator.
-   ', ' : Separate in-line branch entries."flow sequence" ex. Fruits: Apple, Banana, Orange
-   '[]' : Surround in-line series branch. "block sequence" ex. Fruits: [Apple, Banana, Orange]

    # block style:
    - l1
    - l2
    - l3
    # flow style
    - [name        , hr, avg  ]
    - [Mark McGwire, 65, 0.278]
    - [Sammy Sosa  , 63, 0.288]


<a id="orgda075f7"></a>

## mappings or dict or !!map


<a id="org206a2a6"></a>

### basic or simple mapping

unordered

-   '{}' : Surround in-line keyed branch.
-   '? ' : Key indicator.

-   key-value: '  k1: v1\n  k2: v2\n' - colon MUST be followed by the space
-   flow style: '{k1: v1, k2: v2}'
-   ? - allow leading #[]  ?#key
-   True False in several forms
-   keep new lines
    -   | or > before text
    -   "aa\naa\n"
-   123 - integer , 123.0 - float, Yes - boolean
-   {{AA}} - something external
-   %YAML 1.1 - version
-   **repeated nodes** - & and \*
    -   k: &target 80  - target is a 80 - copy
    -   k2: \*target  - paste
    -   << : \*target - paste

    hr:  65    # Home runs
    avg: 0.278 # Batting average
    rbi: 147   # Runs Batted In
    
    # canonical form:
    ? x
    : 1
    ? y
    : 2
    
    american: # dict with list
    - Boston Red Sox
    - Detroit Tigers
    - New York Yankees
    national:
    - New York Mets
    - Chicago Cubs
    - Atlanta Braves
    
    
    # Sequence of Mappings
    -
      name: Mark McGwire
      hr:   65
      avg:  0.278
    -
      name: Sammy Sosa
      hr:   63
      avg:  0.288
    
    # Compact Nested Mapping
    ---
    # Products purchased
    - item    : Super Hoop
      quantity: 1
    - item    : Basketball
      quantity: 4
    - item    : Big Shoes
      quantity: 1


<a id="orge94693c"></a>

### Mapping with complex keys (canonical form)

    person:
      ? name
      : John
      ? age
      : 30


<a id="orgea6062e"></a>

### flow style

    # mapping of mappings
    Mark McGwire: {hr: 65, avg: 0.278}
    Sammy Sosa: {
        hr: 63,
        avg: 0.288,
     }


<a id="org5bd4bda"></a>

## sequance + mappings

    people: # map
      - name: John # list mapping_element1
        age: 30 # mapping_element2

    people: # map
        name: John # element1 mapping1
        age: 30 # mapping2

    - people: # map
      - name: John # element1 mapping1
        age: 30 # mapping2

    people: [{name: John, age: 30, interests: [Reading, Hiking, Coding]}]

    people:
      -
        name: John
        age: 30
        interests:
          - Reading
          - Hiking
          - Coding
      -
        name: Jane
        age: 25
        interests:
          - Music
          - Dancing
          - Traveling


<a id="org8ccb314"></a>

## documents separator

-   &#x2014; semparate multimple documents inside one
-   &#x2026; optionally end a document without starting a new one

    # some shit here (leading comment for a document)
    ---
    # some other shit (leading comment for a document)
    ---
    #
    ...
    # another piece o crap
    ---
    #


<a id="orgf6e9f0d"></a>

## repeated nodes

**Repeated nodes** (objects) are first identified by an **anchor** (marked with the ampersand - “&”) and are then
 **aliased** (referenced with an asterisk - “\*”) thereafter.

    ---
    hr:
    - Mark McGwire
    # Following node labeled SS
    - &SS Sammy Sosa
    rbi:
    - *SS # Subsequent occurrence
    - Ken Griffey


<a id="orgfd00282"></a>

## scalars or strings


<a id="orge6e4fe3"></a>

### flow scalar styles

two stypes:

-   plain style (unquoted) - provides no form of escaping
-   double-quaoted style - provides escape sequences.
-   single-quoted style - useful when escaping is not needed

    unicode: "Sosa did fine.\u263A"
    control: "\b1998\t1999\t2000\n"
    hex esc: "\x0d\x0a is \r\n"
    
    single: '"Howdy!" he cried.'
    quoted: ' # Not a ''comment''.'
    tie-fighter: '|\-*-/|'
    ...
    # Multi-line Flow Scalars - plain style
    ---
    plain:
      This unquoted scalar
      spans many lines.
    
    quoted: "So does this
      quoted scalar.\n"


<a id="org3d07712"></a>

### multiline

two types:

-   ("|") - preserve line breaks (ends with an empty or a more-indented line?)
-   (">") - line break is folded to a space. Folded newlines are preserved for “more indented” and blank lines.

    # ASCII Art
    --- |
      \//||\/||
      // ||  ||__
    
    
    --- >
     Sammy Sosa completed another
     fine season with great stats.
    
       63 Home Runs
       0.288 Batting Average
    
     What a year!
    ---
    name: Mark McGwire
    accomplishment: >
      Mark set a major league
      home run record in 1998.
    stats: |
      65 Home Runs
      0.278 Batting Average


<a id="orgc196f51"></a>

## merge keys or type !!merge

A **merge key** should have another mapping (or sequence of mappings) as its value.

-   '&'  : Anchor property.
-   "<<" : Merge keys from another mapping.

Can be changed after merge only.

    defaults: &DEFAULTS
        use-tls: true
        verify-host: true
        volumes:
          - "a:/b"
    host1:
        <<: *DEFAULTS
        hostname: example.com
        use-tls: false
    host3:
        <<: *DEFAULTS
        hostname: example3.com
        # we have a really, really good reason for doing this, really
        verify-host: false
        volumes:
          - "g:/g"


<a id="orgb29d172"></a>

## aliases and anchors

Anchor names act somewhat like variable assignments.

-   This is not a copy. The exact same value is reused.
-   Can not be changed in aliases.

Alias indicators:

-   '&'  : Anchor property.
-   '\*'  : Alias indicator.

    host1: &common-host
      os: linux
      arch: x86_64
    host2: *common-host
    host3: *common-host
      os: windows

    { "First occurrence": &A "Foo",
      "Override anchor": &B "Bar",
      "Second occurrence": *A,
      "Reuse anchor": *B }


<a id="orga6f3de5"></a>

## tags

-   Explicit Tags: !!null, !!str !!foo (by convention, means "tag:yaml.org,2002:foo" (Domain names can change
    hands over time, hence the inclusion of a year.))
-   Implicit (none): v: 12.3015e+02
-   “local” tag: !foo/. used for some custom type that’s specific to the document. Non-specific tag (by default, "!!map"*"!!seq"*"!!str").
-   '!h!foo': Requires "%TAG !h! <prefix>" (and then means "<prefix>foo").
-   '!<foo>': Verbatim tag (always means "foo").

Tag names are actually URIs, using UTF-8 percent-encoding.

    !!str 23 is equel to "23"


<a id="org441a3f5"></a>

### tags table

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">YAML tag</th>
<th scope="col" class="org-left">Python type</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left"><b>Standard YAML tags</b></td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">!!null</td>
<td class="org-left">None</td>
</tr>


<tr>
<td class="org-left">!!bool</td>
<td class="org-left">bool</td>
</tr>


<tr>
<td class="org-left">!!int</td>
<td class="org-left">int or long (int in Python 3)</td>
</tr>


<tr>
<td class="org-left">!!float</td>
<td class="org-left">float</td>
</tr>


<tr>
<td class="org-left">!!binary</td>
<td class="org-left">str (bytes in Python 3)</td>
</tr>


<tr>
<td class="org-left">!!timestamp</td>
<td class="org-left">datetime.datetime</td>
</tr>


<tr>
<td class="org-left">!!omap, !!pairs</td>
<td class="org-left">list of pairs</td>
</tr>


<tr>
<td class="org-left">!!set</td>
<td class="org-left">set</td>
</tr>


<tr>
<td class="org-left">!!str</td>
<td class="org-left">str or unicode (str in Python 3)</td>
</tr>


<tr>
<td class="org-left">!!seq</td>
<td class="org-left">list</td>
</tr>


<tr>
<td class="org-left">!!map</td>
<td class="org-left">dict</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left"><b>Python-specific tags</b></td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">!!python/none</td>
<td class="org-left">None</td>
</tr>


<tr>
<td class="org-left">!!python/bool</td>
<td class="org-left">bool</td>
</tr>


<tr>
<td class="org-left">!!python/bytes</td>
<td class="org-left">(bytes in Python 3)</td>
</tr>


<tr>
<td class="org-left">!!python/str</td>
<td class="org-left">str (str in Python 3)</td>
</tr>


<tr>
<td class="org-left">!!python/unicode</td>
<td class="org-left">unicode (str in Python 3)</td>
</tr>


<tr>
<td class="org-left">!!python/int</td>
<td class="org-left">int</td>
</tr>


<tr>
<td class="org-left">!!python/long</td>
<td class="org-left">long (int in Python 3)</td>
</tr>


<tr>
<td class="org-left">!!python/float</td>
<td class="org-left">float</td>
</tr>


<tr>
<td class="org-left">!!python/complex</td>
<td class="org-left">complex</td>
</tr>


<tr>
<td class="org-left">!!python/list</td>
<td class="org-left">list</td>
</tr>


<tr>
<td class="org-left">!!python/tuple</td>
<td class="org-left">tuple</td>
</tr>


<tr>
<td class="org-left">!!python/dict</td>
<td class="org-left">dict</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left"><b>Complex Python tags</b></td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">!!python/name:module.name</td>
<td class="org-left">module.name</td>
</tr>


<tr>
<td class="org-left">!!python/module:package.module</td>
<td class="org-left">package.module</td>
</tr>


<tr>
<td class="org-left">!!python/object:module.cls</td>
<td class="org-left">module.cls instance</td>
</tr>


<tr>
<td class="org-left">!!python/object/new:module.cls</td>
<td class="org-left">module.cls instance</td>
</tr>


<tr>
<td class="org-left">!!python/object/apply:module.f</td>
<td class="org-left">value of f(&#x2026;)</td>
</tr>
</tbody>
</table>

!!binary aGVsbG8= would parse as the bytestring hello.


<a id="orgcd185df"></a>

### Names and modules

In order to represent static Python objects like functions or classes, you need to use a complex !!python/name tag. For instance, the function yaml.dump can be represented as

    !!python/name:yaml.dump

Similarly, modules are represented using the tag !python/module:

    !!python/module:yaml


<a id="org39d1752"></a>

### Objects

Any pickleable object can be serialized using the !!python/object tag:

    !!python/object:module.Class { attribute: value, ... }

In order to support the pickle protocol, two additional forms of the !!python/object tag are provided:

    !!python/object/new:module.Class
    args: [argument, ...]
    kwds: {key: value, ...}
    state: ...
    listitems: [item, ...]
    dictitems: [key: value, ...]
    
    !!python/object/apply:module.function
    args: [argument, ...]
    kwds: {key: value, ...}
    state: ...
    listitems: [item, ...]
    dictitems: [key: value, ...]

If only the args field is non-empty, the above records can be shortened:

    !!python/object/new:module.Class [argument, ...]
    
    !!python/object/apply:module.function [argument, ...]


<a id="orgcd4a5ed"></a>

### Named tag handles

Named tag handles must be defined by a %TAG directive before the document.

    %TAG !foo! tag:example.com,2015:app/
    !foo!bar would then resolve to tag:example.com,2015:app/bar

the URI tags are useful if we are using YAML as a data store for an application we are creating.

1.  tag alias:

        %TAG !foo! tag:yaml.org,2002:
        ---
        - !!str asd
        - !<tag:yaml.org,2002:str> aa
        - !foo!str as
        - !!python/none
        - !local 23

2.  ex

    PHP tag - PHL ( we will call it tag:hostsdata:phl:PHL)
    
        %TAG ! tag:hostsdata:phl:
        ---
        host: phl-42
        datacenter:
          location: ! PHL Philadelphia
          cab: "13"
          cab_unit: "3"
        roles:
          - webserver
          - wp_database


<a id="org313756a"></a>

## style

1.  indent to have colons

    - [name        , hr, avg  ]
    - [Mark McGwire, 65, 0.278]
    - [Sammy Sosa  , 63, 0.288]


<a id="orgd7b6915"></a>

## tools


<a id="org4ad95ce"></a>

### checkers

YAMLlint - The YAML Validator


<a id="orgf8c3282"></a>

### formatters

<https://github.com/devopyio/yamlfmt>

require gopkg.in/yaml.v2

-   <https://gpo.zugaina.org/dev-go/yaml>


<a id="org1353bcc"></a>

### parser and emitter for Python

<https://pyyaml.org/wiki/PyYAML>

from file:

    python -c "import yaml ; f = open('a.yml', 'r') ; print(yaml.load(f, yaml.SafeLoader))"

from source code block:

    aa:
      - b
      - 'c"as"c'
    
    ---
    s: asd

    "asssss"

    asssss

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

    print(zzz)
    # import yaml
    # for data in yaml.load_all(zzz, yaml.SafeLoader):
        # print(data)

    asssss

    import yaml
    
    x = yaml.load(zzz, yaml.SafeLoader)
    print(x)


<a id="orga18c26b"></a>

## links

-   specification <https://yaml.org/spec/1.2.2/>
-   reference <https://yaml.org/refcard.html>
-   Brief YAML reference <https://camel.readthedocs.io/en/latest/yamlref.html>
-   <https://learnxinyminutes.com/docs/yaml/>


<a id="orgeed75db"></a>

# ORM object-relational mapping

object-relational mapping [rɪˈleɪʃənəl] [ˈmæpɪŋ]. ORM - programming technique.

-   pro: offer a lot of flexibility
-   con: too easy to insert complexity


<a id="org7195692"></a>

## object-relational impedance mismatch (imˈpēdns)

Объекты в ОП следуют ООП принципам, а
объекты в RDBMS следуют принципам нормализации

Alternative to ORM is use of the native procedural languages provided with every major database. The Data
Access Object (DAO) design pattern is used to abstract these statements and offer a lightweight
object-oriented interface to the rest of the application.


<a id="org188ee4a"></a>

## Misconceptions

1.  you don’t need to know SQL
    -   When you do anything complex, you need to know what SQL can do
    -   debugging, tuning for performance, or collating complex data
2.  The only function an ORM offers is writing SQL code
    -   ORM is how data moves between the database and that model, this is orthogonal to actually writing SQL
        queries. the object-oriented model and how data moves between the database and that model
    -   ORMs also promote code maintainability and reuse, as they enable the developer to think in terms of
        objects instead of atomized pieces of data.
3.  If you use ORMs, you don’t have to worry about database security
    -   ORMs are more effective in shielding applications from SQL injection attacks
    -   The primary way ORMs shield against SQL injection attacks is by using parameterized queries. However, not
        all ORMs work this way. Before you assume a particular ORM is safe, you should at least verify how it
        translates your actions into SQL.
    -   For better protection, implement all the database security techniques you would employ if the code was
        written by hand. No matter how the application is created, make sure that your software QA process
        includes a full security test suite


<a id="org46f8a2a"></a>

# Database


<a id="org975174c"></a>

## Standards

share data:

-   SQL
-   **Open Database Connectivity (ODBC)** is a standard application programming interface (API) for accessing
    database management systems (DBMS). by Microsoft.
-   ADO.NET data provider. by Microsot
-   OLE DB provider. by Microsoft
-   **XQuery API for Java (XQJ)** - API specification for XML data sources. Copyright Oracle
-   **JDBC** - for SQL based data sources,  tabular data sources, such as spreadsheets or flat files


<a id="org6f21b2a"></a>

## SQL

<http://www.contrib.andrew.cmu.edu/~shadow/sql/sql1992.txt>
Structured Query Language
columns [ˈkɒləm]
row [rəʊ]

-   **Clauses [klɔːz]:** components of statements and queries. FROM WHERE GROUP BY HAVING
-   **Expressions:** which can produce either scalar values, or tables consisting of columns and rows of data
-   **Predicates:** WHERE predicate
-   **queries:** [ˈkwɪərɪ] select result
-   **statements:** [ˈsteɪtmənt]starts with keyword and end with ";"
-   Insignificant whitespace

**Transaction** unit of work performed within a database management system (or similar system) against a
database, and treated in a coherent[kōˈhi(ə)rənt]  and reliable way independent of other transactions.

**Case-sensivity** Identifiers and reserved words should not be case sensitive. According to SQL-92


<a id="org1a0b2f9"></a>

### History

-   SQL-99 introduced three extensions to the GROUP BY statement: the CUBE, ROLLUP and GROUPING SETS operator.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-right">Year</th>
<th scope="col" class="org-left">Name</th>
<th scope="col" class="org-left">Alias</th>
<th scope="col" class="org-left">Comments</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-right">1986</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">SQL-86</td>
<td class="org-left">SQL-87 	First formalized by ANSI</td>
</tr>


<tr>
<td class="org-right">1989</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">SQL-89</td>
<td class="org-left">FIPS 127-1 	Minor revision that added integrity constraints adopted as FIPS 127-1</td>
</tr>


<tr>
<td class="org-right">1992</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">SQL-92</td>
<td class="org-left">SQL2, FIPS 127-2 	Major revision (ISO 9075), Entry Level SQL-92 adopted as FIPS 127-2</td>
</tr>


<tr>
<td class="org-right">1999</td>
<td class="org-left">SQL:1999</td>
<td class="org-left">SQL3</td>
<td class="org-left">Added regular expression matching, recursive queries (e.g. transitive closure), triggers, support for procedural and control-of-flow statements, nonscalar types (arrays), and some object-oriented features (e.g. structured types), support for embedding SQL in Java (SQL/OLB) and vice versa (SQL/JRT)</td>
</tr>


<tr>
<td class="org-right">2003</td>
<td class="org-left">SQL:2003</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Introduced XML-related features (SQL/XML), window functions, standardized sequences, and columns with autogenerated values (including identity columns)</td>
</tr>


<tr>
<td class="org-right">2006</td>
<td class="org-left">SQL:2006</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">ISO/IEC 9075-14:2006 defines ways that SQL can be used with XML. It defines ways of importing and storing XML data in an SQL database, manipulating it within the database, and publishing both XML and conventional SQL data in XML form. In addition, it lets applications integrate queries into their SQL code with XQuery, the XML Query Language published by the World Wide Web Consortium (W3C), to concurrently access ordinary SQL-data and XML documents.[34]</td>
</tr>


<tr>
<td class="org-right">2008</td>
<td class="org-left">SQL:2008</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Legalizes ORDER BY outside cursor definitions. Adds INSTEAD OF triggers, TRUNCATE statement,[35] FETCH clause</td>
</tr>


<tr>
<td class="org-right">2011</td>
<td class="org-left">SQL:2011</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Adds temporal data (PERIOD FOR)[36] (more information at Temporal database#History). Enhancements for window functions and FETCH clause.[37]</td>
</tr>


<tr>
<td class="org-right">2016</td>
<td class="org-left">SQL:2016</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Adds row pattern matching, polymorphic table functions, JSON</td>
</tr>


<tr>
<td class="org-right">2019</td>
<td class="org-left">SQL:2019</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Adds Part 15, multidimensional arrays (MDarray type and operators)</td>
</tr>
</tbody>
</table>


<a id="org3937ad4"></a>

### Comments

single line: &#x2013; at any place

Multi-line Comments: *\* \**
![img](./imgs/sql-commands-map.jpg)


<a id="orgf491ed3"></a>

### Null

UNKNOWN - special mark which is not TRUE and not FALSE.

null or NULL - value does not exist in the database.

    'Fish ' || NULL || 'Chips'   -- Result is NULL
    SELECT 10 = NULL       -- Results in Unknown
    SELECT NULL OR TRUE   -- Results in True

**Effect of Unknown in WHERE clauses** - comparison of the i column with Null always returns Unknown

    SELECT * FROM t WHERE i = NULL;


<a id="org4b4c360"></a>

### String concatenation

    'Fish ' || 'Chips'


<a id="orgfd69826"></a>

### data types

1.  DATE

    ANSI default string literal format for date i.e. YYYY-MM-DD like below.
    
        INSERT INTO EMP_TF1605 VALUES(1, '1980-12-17');
    
    It will insert your data successfully in most rdbms i.e. MySQL, PostgreSQL, SQL Server.
    
    In Oracle, you need to convert it to date using function to<sub>date</sub>([value],[format] prior to insertion as below.
    
        INSERT INTO EMP_TF1605 VALUES(1, TO_DATE('1980-12-17', 'yyyy-mm-dd'));

2.  select month from DATE

    EXTRACT() function is a SQL standard function supported by MySQL, Oracle, and PostgreSQL.
    
        EXTRACT(MONTH FROM date)
    
    MONTH()
    
    -   **SQL Server**, you can use the MONTH() or DATEPART() function to extract the month from a date.
    -   Similar to SQL Server, **MySQL** also supports the MONTH() function to return the month from a date.
    
    **SQLite** does not support EXTRACT(), MONTH() or DATEPART() function

3.  group by DATE

        -- MySQL
        GROUP BY year(datefield), month(datefield), day(datefield)
        GROUP BY date(datefield)
        -- SQL Server
        GROUP BY datepart(year, datefield),
            datepart(month, datefield),
            datepart(day, datefield)
        -- or faster (from Q8-Coder):
        GROUP BY dateadd(DAY, 0, datediff(day, 0, created))
        
        -- MS SQL 2008
        SELECT
            CAST(created AS date) AS saledate,
            SUM(amount)
        FROM
            Sales
        GROUP BY
            CAST(created AS date)
        
        -- PostgreSQL
        GROUP BY to_char(timestampfield, 'yyyy-mm-dd')
        GROUP BY timestampfield::date
        
        -- Oracle
        GROUP BY to_char(datefield, 'yyyy-mm-dd')
        GROUP BY trunc(created);
        
        -- Informix
        GROUP BY date_column
        GROUP BY EXTEND(datetime_column, YEAR TO DAY)


<a id="org700ce2f"></a>

### Task 1) - get records from 1 table with 2 table by foreign-key with records count > 2

-   взять все записи из первой таблицы, у которых во второй таблицы по внешнему ключу имеют количество

строк больше 2.

    SELECT * FROM Customers WHERE EXISTS (
      SELECT CustomerID, COUNT(EmployeeID)
      FROM Orders
      WHERE CustomerID = Customers.CustomerID --обязательное
      GROUP BY CustomerID
      HAVING COUNT(EmployeeID) > 2 )


<a id="org6714f2c"></a>

### Task 2) -

1.  definition

    MySQL
    
    tables:
    
    1.  clients<sub>table</sub>
        -   client<sub>id</sub>
        -   gender
    2.  loans<sub>table</sub> (docs)
        -   loan<sub>id</sub>
        -   client<sub>id</sub>
        -   loan<sub>date</sub>
    
    Task to select count of first, second, thirst counts of loans in october of 2022
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-left">&#xa0;</th>
    <th scope="col" class="org-left">count of first docs</th>
    <th scope="col" class="org-left">count of second docs</th>
    </tr>
    
    
    <tr>
    <th scope="col" class="org-left">&#xa0;</th>
    <th scope="col" class="org-left">in october of 2022</th>
    <th scope="col" class="org-left">in october of 2022</th>
    </tr>
    </thead>
    
    <tbody>
    <tr>
    <td class="org-left">male</td>
    <td class="org-left">?</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    
    <tr>
    <td class="org-left">female</td>
    <td class="org-left">?</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    </tbody>
    </table>
    
        -- DROP TABLE clients_table;
        
        CREATE TABLE clients_table (
        client_id INTEGER PRIMARY KEY,
        gender VARCHAR(10)
        );
        
        INSERT INTO clients_table VALUES(NULL, 'male');
        INSERT INTO clients_table VALUES(NULL, 'male');
        INSERT INTO clients_table VALUES(NULL, 'female');
        INSERT INTO clients_table VALUES(NULL, 'male');
        INSERT INTO clients_table VALUES(NULL, 'female');
        
        SELECT * FROM clients_table;
    
        -- DROP TABLE loans_table;
        
        CREATE TABLE loans_table (
        loan_id INTEGER PRIMARY KEY,
        client_id INTEGER,
        loan_date DATE
        );
        
        INSERT INTO loans_table VALUES(NULL, 1, '2022-10-01');
        INSERT INTO loans_table VALUES(NULL, 2, '2022-10-02');
        INSERT INTO loans_table VALUES(NULL, 2, '2022-10-09');
        INSERT INTO loans_table VALUES(NULL, 2, '2022-10-11');
        INSERT INTO loans_table VALUES(NULL, 2, '2022-10-12');
        INSERT INTO loans_table VALUES(NULL, 2, '2022-10-13');
        INSERT INTO loans_table VALUES(NULL, 3, '2022-10-02');
        INSERT INTO loans_table VALUES(NULL, 3, '2022-10-03');
        INSERT INTO loans_table VALUES(NULL, 3, '2022-10-04');
        INSERT INTO loans_table VALUES(NULL, 4, '2022-10-04');
        INSERT INTO loans_table VALUES(NULL, 4, '2022-10-08');
        INSERT INTO loans_table VALUES(NULL, 5, '2023-10-08');
        
        SELECT * FROM loans_table;
    
        SELECT * from loans_table as l
        LEFT JOIN clients_table as c ON l.client_id = c.client_id
        WHERE l.loan_date BETWEEN '2022-10-01' AND '2022-11-01'
        ;
        -- select NULL;

2.  Solution 1 "CASE WHEN"

        SELECT c.gender, COUNT(l.client_id) lc, l.client_id from loans_table as l
        LEFT JOIN clients_table as c ON l.client_id = c.client_id
        WHERE l.loan_date BETWEEN '2022-10-01' AND '2022-11-01'
        GROUP BY gender, l.client_id;
        select NULL;
    
        select fff.gender,
        SUM(case when lc > 0 then 1 else 0 end) c_first_202210,
        SUM(case when lc > 1 then 1 else 0 end) c_second_202210,
        SUM(case when lc > 2 then 1 else 0 end) c_third_202210,
        SUM(case when lc > 3 then 1 else 0 end) c_forth_202210
        from
        ( SELECT c.gender, COUNT(l.client_id) lc, l.client_id from loans_table as l
        LEFT JOIN clients_table as c ON l.client_id = c.client_id
        WHERE l.loan_date BETWEEN '2022-10-01' AND '2022-11-01'
        GROUP BY gender, l.client_id) as fff
        group by gender;

3.  Solution 2 "CTE and subquery"

        WITH RECURSIVE  cte_pre AS (
        SELECT * from loans_table as l
        LEFT JOIN clients_table as c ON l.client_id = c.client_id
        WHERE l.loan_date BETWEEN '2022-10-01' AND '2022-11-01'
        ), cte_first AS (
          SELECT gender, COUNT(*) cc FROM (
            SELECT COUNT(*) fc, gender from cte_pre
            GROUP BY client_id
          --HAVING fc >=1
          )
          GROUP BY gender
        
        ), cte_second AS (
          SELECT gender, COUNT(*) cc FROM (
            SELECT COUNT(*) fc, gender from cte_pre
            GROUP BY client_id
            HAVING fc >=2
          )
          GROUP BY gender
        
        ), cte_third AS (
          SELECT gender, COUNT(*) cc FROM (
            SELECT COUNT(*) fc, gender from cte_pre
            GROUP BY client_id
            HAVING fc >=3
          )
          GROUP BY gender
        
        )
        select cf1.gender, cf1.cc c_first_202210, cf2.cc c_second_202210, cf3.cc c_third_202210 from cte_first cf1
        JOIN cte_second cf2 ON cf1.gender = cf2.gender
        JOIN cte_third cf3 ON cf1.gender = cf3.gender
        
        ;

4.  Solution 3 Python

        import pandas as pd
        import sqlite3
        con = sqlite3.connect("/tmp/test-sqlite.db")
        cur = con.cursor()
        res = cur.execute("""SELECT * from loans_table as l
        LEFT JOIN clients_table as c ON l.client_id = c.client_id
        WHERE l.loan_date BETWEEN '2022-10-01' AND '2022-11-01'
        ;""")
        # print(cur.description())
        # print(len(cur))
        a = res.fetchall()
        field_names = [x[0] for x in cur.description]
        # print(field_names)
        
        df = pd.DataFrame(a, columns = ['loan_id', 'client_id1', 'loan_date', 'client_id2', 'gender'])
        # print(df)
        # print()
        # for x in df:
        #     first = 0
        v = df.groupby(['gender', 'client_id1'],as_index=False).count()
        # v.groupby('gender').
        male = v[v['gender'] == 'male']
        female = v[v['gender'] == 'female']
        
        res_male = []
        res_female = []
        for i, c in enumerate(['first', 'second', 'third']):
            rm = (v[v['gender'] == 'male']['loan_id'] >= i).sum()
            rf = (v[v['gender'] == 'female']['loan_id'] >= i).sum()
            res_male.append(rm)
            res_female.append(rf)
        
        
        print('female', res_female)
        print('male', res_male)


<a id="org2c89fee"></a>

### JOIN объединение столбцов

    SELECT Book.title
    FROM Book
    JOIN Book_author
    ON Book.id = Book_author.fid
    
    -- or
    
    SELECT column_list
    FROM table1, table2....
    WHERE table1.column_name =
    table2.column_name;

-   **(INNER) JOIN:** пересечение (Equi Join)

-   **LEFT (OUTER) JOIN:** пересечение и левая таблица
-   **RIGHT (OUTER) JOIN:** 

-   **FULL (OUTER) JOIN:** объединение двух с перечечением по полю. сначала совпадающие, потом где не совпали:
    сначала левая таблица с null, потом null с правой таблицей
-   **CROSS JOIN:** декартово произведение Cartesian product[kɑːˈtiːzɪən] для каждой строки левой таблицы
    перебирается правая таблица, то же самое что и:

    SELECT *
    FROM employee, department;

-   **NATURAL JOIN:** select \* inner join on. will produce two identical columns. Natural - one.


<a id="org0b54033"></a>

### UNION объединение строк - UNION ALL, INTERSECT, EXCEPT

-   must have the same number of columns and same order
-   columns must also have similar data types
-   UNION - distinct
-   UNION ALL - all
-   INTERSECT - A
-   column names in the result-set are usually equal to the column names in the first SELECT

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />

<col  class="org-right" />

<col  class="org-right" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-right">SELECT A</th>
<th scope="col" class="org-right">SELECT B</th>
<th scope="col" class="org-right">UNION</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-right">1</td>
<td class="org-right">3</td>
<td class="org-right">1</td>
</tr>


<tr>
<td class="org-right">2</td>
<td class="org-right">4</td>
<td class="org-right">2</td>
</tr>


<tr>
<td class="org-right">3</td>
<td class="org-right">5</td>
<td class="org-right">3</td>
</tr>


<tr>
<td class="org-right">&#xa0;</td>
<td class="org-right">&#xa0;</td>
<td class="org-right">4</td>
</tr>


<tr>
<td class="org-right">&#xa0;</td>
<td class="org-right">&#xa0;</td>
<td class="org-right">5</td>
</tr>
</tbody>
</table>

    SELECT column_name(s) FROM table1
    UNION
    SELECT column_name(s) FROM table2;
    UNION ALL
    SELECT column_name(s) FROM table2;


<a id="org349d9c6"></a>

### GROUP BY heaving  group distinct

-   **SELECT DISTINCT** CustomerName FROM Sales - недостаток, нельзя с aggregate
-   **GROUP BY** often used with aggregate functions to group by colums
-   **HAVING** - becouse WHERE could no be used with aggregate functions.

    SELECT COUNT(Id), Country
      FROM Customer
     GROUP BY Country
    HAVING COUNT(Id) > 10


<a id="org24c3b26"></a>

### Autoincrement

**SQLite**

-   INTEGER PRIMARY KEY  - 64-bits
-   insert (null) OR insert into table (field2) values ('val2');

alg:

-   empty = 1
-   largest is reached -> random find empty and remember as current ROWID

**PostgreSQL**

-   Integer = 32-bits not autoincrement
-   serial = 32-bits, bigserial = 64-bits
-   insert into table (field2) values ('val2');

alg nextval()

-   empty = 1
-   on conflict - mark used = gaps
-   DEFAULT any calls to nextval after the sequence has reached its maximum value will return an error

solutions:

1.  добавить CYCLE в эквивалент serial

    CREATE SEQUENCE tablename_colname_seq CYCLE;
    CREATE TABLE tablename (
        colname integer NOT NULL DEFAULT nextval('tablename_colname_seq')
    );
    ALTER SEQUENCE tablename_colname_seq OWNED BY tablename.colname;

1.  JDBC

    private int genId() throws SQLException{
    		// Generate id
    		int id;
    		Random r = new Random();
    		ResultSet rs;
    		do{
    			id = r.nextInt(ID_LENGHT);//16^x-1
    			pstmtGetId.setInt(1, id);
    			rs = pstmtGetId.executeQuery(); //rs is not closed....
    		}while(rs.next()); // Check if exist
    		return id;
    	}


<a id="orge1cf650"></a>

### Subqueries

1.  correlated suqueries

        DROP TABLE streaming_data;
        
        CREATE TABLE streaming_data (
        id INTEGER PRIMARY KEY,
        artist VARCHAR(10),
        song_name VARCHAR(10),
        number_of_streams INTEGER
        );
        
        INSERT INTO streaming_data VALUES(NULL, 'Jobby', 'my love', 34);
        INSERT INTO streaming_data VALUES(NULL, 'Jobby', 'my ', 33);
        INSERT INTO streaming_data VALUES(NULL, 'Jobby', 'love', 334);
        INSERT INTO streaming_data VALUES(NULL, 'Jobby2', 'my love2', 29);
        INSERT INTO streaming_data VALUES(NULL, 'Jobby3', 'my love2', 88);
        INSERT INTO streaming_data VALUES(NULL, 'Jobby4', 'my love', 234);
        INSERT INTO streaming_data VALUES(NULL, 'Jobby5', 'my love', 345);
        select * from streaming_data;
    
        SELECT  artist,
              song_name,
              number_of_streams
        FROM streaming_data st_outer
        WHERE number_of_streams = (SELECT MIN(number_of_streams)
                                   FROM streaming_data
                                   WHERE artist = st_outer.artist)
        GROUP BY artist, song_name, number_of_streams;


<a id="orgeac667c"></a>

### Window functions + common table expressions (CTE).

1.  definition

    Window functions ( or analytical functions) were introduced in SQL:2003 and had functionality expanded in later
     specifications.
    
    In standard SQL:1999 hierarchical queries are implemented by way of recursive common table expressions (CTEs)
    
    CTE is temporary named result set.
    
    CTEs can be thought of as alternatives to derived tables (subquery), views, and inline user-defined functions.
    
    hierarchies of data like employee-manager, part-subpart, or parent-child. To traverse these hierarchies in any
     direction (from top to bottom or from bottom to top)
    
        WITH [RECURSIVE] with_query [, ...]
        SELECT ...
    
    where **with<sub>query</sub>‘s** syntax is:
    
        query_name [ (column_name [,...]) ] AS (SELECT ...)

2.  CTE rules

    -   In your inner SELECT statement, your columns must all have unique names.
    -   You can’t have an ORDER BY clause in your inner SELECT statement. The only exception to this rule is if
        there was also TOP or OFFSET-FETCH used in your SELECT list.

3.  Recursive Queries

    To traverse hierarchies in any direction (from top to bottom or from bottom to top), for
     traversing a recursive data structure.
    
        WITH RECURSIVE  cte_name AS (
             CTE_query_definition  -- non recursive query term
        UNION ALL
             CTE_query_definition  -- recursive query term
        )
        SELECT * FROM cte_name;

4.  ex

        WITH recursive temp (n, fact) AS
        (
               SELECT 0,
                      1 -- Initial Subquery
               UNION ALL
               SELECT n+1,
                      (n+1)*fact
               FROM   temp -- Recursive Subquery
               WHERE  n < 9)
        SELECT *
        FROM   temp;

5.  PostgreSQL

    функция OVER окно AS num
    
    sum(change) OVER () as result<sub>balance</sub>
    
    row<sub>number</sub>() OVER (ORDER BY score DESC)  AS rating
    
    подсчет в каждой группе отдельно:
    row<sub>number</sub>() OVER (PARTITION BY section ORDER BY score DESC)  AS rating<sub>in</sub><sub>section</sub>


<a id="orgc9a8551"></a>

### ?????? examples

    WITH my_cte AS (
      SELECT a,b,c
      FROM T1
    )
    SELECT a,c
    FROM my_cte
    WHERE ....
    
    <!-- -->
    SELECT inc AS max_sum, type, date, point
    FROM (
      SELECT 1
      UNION ALL
      SELECT 2
    )
    WHERE inc >= ALL(SELECT inc FROM Income
           UNION ALL
           SELECT inc FROM Income_o
    # ИЛИ в два запроса
    CREATE VIEW Inc_Out AS
      SELECT 1
      UNION ALL
      SELECT 2;
    
    SELECT inc AS max_sum, type, date, point
    FROM Inc_Out WHERE inc >= ALL( SELECT inc FROM Inc_Out);
    
    # CTE вариант:
        WITH Inc_Out AS (
          SELECT inc, 'inc' type, date, point
          FROM Income
          UNION ALL
          SELECT inc, 'inc' type, date, point
          FROM Income_o
          UNION ALL
          SELECT out, 'out' type, date, point
          FROM Outcome_o
          UNION ALL
          SELECT out, 'out' type,date, point FROM Outcome )
        SELECT inc AS max_sum, type, date, point
        FROM Inc_Out WHERE inc >= ALL ( SELECT inc FROM Inc_Out);


<a id="org65ece0f"></a>

### TODO grouping set


<a id="org3d5bf53"></a>

### json

SQL:2016 or ISO/IEC 9075:2016

-   SQL/JSON path language (specified in [ISO9075-2])
    -   adopts many features of ECMAScript
-   in standard SQL JSON strings should be stored in one of the old familiar data types: VARCHAR, CLOB, etc.

1.  SQL/JSON query operators

    -   json<sub>value</sub> - pass a JSON string and a JavaScript-like expression, get back an SQL value
        -   SELECT JSON<sub>VALUE</sub>(json<sub>column</sub><sub>name</sub>, 'lax $.c') AS c FROM t;
            -   'lax $.c' - path string
    -   JSON<sub>EXTRACT</sub>(@json, @path<sub>string</sub>) - MySQL way, return type is JSON
    -   JSON<sub>QUERY</sub>(first, path<sub>expression</sub>) - used in SELECT clause
        -   first - SQL expression that returns an instance of a scalar SQL data type - VARCHAR, CLOB or table, view
        -   path<sub>expression</sub> - can target any number of JSON values.
            -   followed by optional clauses RETURNING, WRAPPER, ON ERROR, and ON EMPTY
                -   RETURNING -  specify data type VARCHAR2, CLOB, or BLOB
                -   EMPTY ON ERROR - empty array ([]) is returned in case of error (no error is raised)
                -   WITH WRAPPER - [{"id": 38327}]
                -   WITHOUT WRAPPER - {"id": 38327} - Raise an error if the path expression matches either a scalar value
                    (not an object or array) or more than one value.
                -   WITH CONDITIONAL WRAPPER - For zero values, a single scalar value, or multiple values, WITH
                    CONDITIONAL WRAPPER is the same as WITH WRAPPER.  For a single JSON object or array value, it is the
                    same as WITHOUT WRAPPER.
    -   JSON<sub>TABLE</sub> - convert (part of) a JSON document into a relational table - used in FROM clause

2.  SQL/JSON path language

    has two modes, strict and lax, which govern structural errors, as follows:
    
    -   lax -  result is an empty SQL/JSON sequence
    -   strict - unhandled errors, ON ERROR clause to specify the behavior in case of an input conversion error
    
    elements
    
    -   $ - root
    -   property selection:
        -   .property
        -   [‘property’]
    -   [n]/[index1, index2, …]/[start:end] - n-th element from an array elements group and its index value is 0-based.
    -   [:n] - first n elements of the array
    -   [-n:] - last n elements of the array.
    -   ..property - search for the specified property name recursively and returns an array of values with the
        property name specifically.
    -   Star symbol \* -
    -   [?(expression)] - selects all elements in an object or array list that match the stated or specified
        filter. And it returns a list called a Filter expression.
    -   [(expression)] -
        -   example [(@.length-1)] by this expression we will select the last items of an array. JSON field named
            length here and it represents the length of the current array.
    -   @ - used in a filter expression to hint at the current node being processed.

3.  links

    -   <https://cwiki.apache.org/confluence/pages/viewpage.action?pageId=148638662>
    
    <https://ocelot.ca/blog/blog/2015/11/26/standard-sqljson-and-mysql-5-7-json/>


<a id="org9148367"></a>

## GraphQL

powerful query language and runtime that offers several advantages over traditional RESTful APIs.

-   "declarative data fetching"
-   the results in a unified graph.

For implementing important to plan Schema main entities for requests.


<a id="org9801a14"></a>

### REST vs GraphQL

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">REST</th>
<th scope="col" class="org-left">GraphQL</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">N endpoint</td>
<td class="org-left">single endpoint</td>
</tr>


<tr>
<td class="org-left">Backend decide what to return</td>
<td class="org-left">Client decide what to return</td>
</tr>


<tr>
<td class="org-left">No contract</td>
<td class="org-left">There is contract by schema</td>
</tr>


<tr>
<td class="org-left">Errors returned by separate code</td>
<td class="org-left">Errors returned in body</td>
</tr>


<tr>
<td class="org-left">Versioning support</td>
<td class="org-left">No versioning</td>
</tr>
</tbody>
</table>

It is possible to wrap GraphQL with REST


<a id="org42aa26b"></a>

### solve REST problems

-   advanced queries - good for frontend, good when you have many data sources
    -   reducing the amount of data transferred over the network.
    -   nested queries - **fetch data from multiple sources**
-   no need to change versions of API - if frequent changes in count of fields
-   more than CRUD


<a id="org2992792"></a>

### drawbacks

-   no limits: big query may cause overload of server
-   idempotency of request
    -   harder errors handlings
-   One endpoint require caching and requiests monitoring
-   Not recommended to use for:
    -   unlimited binary data
    -   multi-user writing with versioning
    -   authentification services: cookies and redirect is problematic


<a id="org5f6ec15"></a>

### Ops:

-   reading
-   writing (mutating)
-   subscribing to changes


<a id="orgd74612e"></a>

### alternatives

-   gRPC by Google.
-   REST APIs
-   OData by Microsoft
-   Deepr - lightweight alternative. It uses JSON for all interactions


<a id="org2ec08ba"></a>

## Oracle

different types of database objects:

-   **Tables:** This is a set of elements organized in vertical and horizontal fashion.
-   **Tablespaces:** This is a logical storage unit in Oracle. An Oracle database contains one or more logical
    storage units called tablespaces. These tablespaces collectively store whole data of
    databases and each tablespace in Oracle database consists of one or more files called
    datafiles. These datafiles are physical structure that confirm with the operating system in
    which Oracle is running.
-   **Views:** It is virtual table derived from one or more tables.
-   **Indexes:** This is a performance tuning method to process the records.
-   **Synonyms:** This is a name for tables.

Oracle database consist of

-   one **database** - set of files on disk
-   at least one **database instance** - set of memory structures that manage database files - system global area
    (SGA), and a set of background processes

**Tablespace** - A tablespace is a set of related logical structures. Actually a tablespace groups related
logical structures together.  in Oracle database consists of one or more files called datafiles.

Components of physical database structure of Oracle database:

-   One or more **data files**. - all the database data. The data of logical database structures, such as tables and
    indexes
-   Two or more **redo log files**. - online redo log - made up of redo entries (also called redo log records),
    which record all changes made to data.
-   One or more **control files**. Metadata specifying the physical structure of the database, including the
    database name and the names and locations of the database files.
-   parameter files and networking files. Backup files and archived redo log files are offline files important for backup and recovery.


<a id="org9b3f1ee"></a>

## PL/SQL (Procedural Language for SQL)

-   Oracle Database
-   TimesTen in-memory database
-   IBM DB2

90's to enhance the capabilities of SQL

-   block-structured language
-   integrated with the Oracle data dictionary
-   

Pros:

-   Better Performance
-   Tight Security
-   flexibility and easier to write
-   Reduced Network Traffic
-   group SQL statements together into executable blocks

Cons:

-   only for Oracle, database specific
-   Poor I/O Features
-   potential for performance degradation


<a id="orgefc5fb7"></a>

### feauters

-   conditions
-   loops
-   types and variables of those types
-   procedures and functions
-   triggers ?
-   exceptions handling
-   PL/SQL collections - arrays
-   object-orientation
-   stored in the database for reuse by applications

---

-   comment &#x2013; signle line *\* \** multiline
-   identifiers -  letter with numbers, $, \_, 30-chars. - not case-sensitive
-   "delimiters" :
    -   +, -, \*, /
    -   'aasdas' - character string
    -   "customers" - Quoted identifier delimiter
    -   :=  Assignment operator
    -   || Concatenation operator
    -   = < > <= >= Relational operators
    -   <>, '`, ~`, ^= != - different versions of not equal
    -   NOT , AND, OR - logical
-   Comparison - result TRUE, FALSE or NULL
    -   'Zara Ali' LIKE 'Zara Ali' - pattern . Used for character, string, or CLOB
    -   BETWEEN  5 and 20
    -   IN ('a', 'b', 'c')
    -   IS NULL - Comparisons involving NULL values always yield NULL.
    -   EXISTS - Returns TRUE if a subquery returns at least one row.
    -   ANY, SOME - Compares a value to each value in a list or returned by a subquery and yields TRUE if any of
        the individual comparisons yields TRUE.
    -   ALL - Compares a value to each value in a list or returned by a subquery and yields TRUE if all of the
        individual comparisons yield TRUE.
-   Data Types: - has subtypes
    -   Scalar - NUMBER, DATE, or BOOLEAN, strings
    -   Large Object (LOB) -
        -   BFILE - stored in files outside the database - system dependent
        -   BLOB - Binary large object in database - 8 to 128 TB
        -   CLOB - large blocks of character data - 8 to 128 TB
        -   NCLOB - NCHAR data  (national character)- 8 to 128 TB
    -   Composite - collections and records
    -   Reference
    -   NULL values represent **missing** or **unknown data** and they are not an integer, a character, or any other
        specific data type - that NULL is not the same as an empty data string or the null character value '\\0'
-   '' = '

The precedence of operators goes as follows: `, <, >, <`, >=, <>, !=, ~=, ^=, IS NULL, LIKE, BETWEEN, IN.

    DECLARE
       message  varchar2(20):= 'Hello, World!';
    BEGIN
       dbms_output.put_line(message);
    END;
    / -- for CLI
    
    --varible
    variable_name [CONSTANT] datatype [NOT NULL] [:= | DEFAULT initial_value] ;
    name varchar2(25); --constrained declaration
    
    --select into clause
    declare
      v_authName author.author_last_name%type; --author - table
    begin
      select author_last_name into v_authName -- в переменную
      from author
      where author_key = 'A103';
    
    v_author author%rowtype; -- USED LIKE VARRAY - СТРУКТУРА
    begin
      select * into v_author
      from author
      where author_key = 'A103';
    
    --IF--
    IF (a <= 20) THEN
       c:= c+1;
    ELSE
    ELSIF( boolean_expression 2) THEN
    END IF;
    --LOOPS--
    LOOP --infinity
       Sequence of statements;
    END LOOP;
    
    << outer_loop >>
    FOR i IN 1..3 LOOP -- for
    EXIT; CONTINUE; GOTO label;
    END loop outer_loop;
    
    WHILE condition LOOP
    -- VARRAY
    CREATE OR REPLACE TYPE varray_type_name IS VARRAY(n) of <element_type>
    type namesarray IS VARRAY(5) OF VARCHAR2(10);
    names namesarray;
    -- PL/SQL table


<a id="orgca6c099"></a>

### varibles

VAR[IABLE] [variable [type] ]

DEF[INE] [variable] | [variable = text]

**Predefined Variables**

-   \_CONNECT<sub>IDENTIFIER</sub> Connection identifier used to make connection, where available.
-   \_DATE Current date, or a user defined fixed string.
-   \_EDITOR Specifies the editor used by the EDIT command.
-   \_O<sub>VERSION</sub> Current version of the installed Oracle Database.
-   \_O<sub>RELEASE</sub> Full release number of the installed Oracle Database.
-   \_PRIVILEGE Privilege level of the current connection.
-   \_SQLPLUS<sub>RELEASE</sub> Full release number of installed SQL\*Plus component.
-   \_USER User name used to make connection.

    VARIABLE ret_val NUMBER
    
    exec :ret_val := 'SALES'
    EXECUTE DBMS_LOB.FREETEMPORARY(:ret_val)
    
    OPEN :emp_cv FOR SELECT * FROM employees; -- declare as cursor varible


<a id="orgf5bbbe7"></a>

### Cursor

active set - set of rows the cursor holds

-   Implicit cursors - name: "sql".  UPDATE and DELETE - rows that would be affected. INSERT - what. No need to
    close.
-   Explicit cursors

Attributes:

-   sql%FOUND - one or more rows
-   sql%NOTFOUND
-   sql%ISOPEN - Always returns FALSE for implicit cursors.
-   sql%ROWCOUNT

---

    CURSOR cursor_name [ ( [ parameter_1 [, parameter_2 ...] ) ]
          [ RETURN return_specification ]
    IS sql_select_statements
    [FOR UPDATE [OF [column_list]]; -- lock record for modification
    
    DECLARE
       c_id customers.id%type;
       c_name customerS.No.ame%type;
       c_addr customers.address%type;
       CURSOR c_customers is --declare
          SELECT id, name, address FROM customers;
    BEGIN
       OPEN c_customers; --allocate memory
       LOOP
         FETCH c_customers into c_id, c_name, c_addr; --execute SELECT
         EXIT WHEN c_customers%notfound;
         dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr);
       END LOOP;
       CLOSE c_customers;
    END;
    
    CURSOR c1
    IS
      SELECT course_number, instructor
      FROM courses_tbl
      FOR UPDATE OF instructor; -- lock record for modification


<a id="org0cb2fdc"></a>

### Record - Структура

-   Table-based
-   Cursor-based records
-   User-defined records

    -- Table-based --
    DECLARE    customer_rec customers%rowtype;
    
    -- Cursor-based records --
    DECLARE
       CURSOR customer_cur is
          SELECT id, name, address
          FROM customers;
       customer_rec customer_cur%rowtype;
    BEGIN
       OPEN customer_cur;
       LOOP
          FETCH customer_cur into customer_rec;
          EXIT WHEN customer_cur%notfound;
          DBMS_OUTPUT.put_line(customer_rec.id || ' ' || customer_rec.name);
       END LOOP;
    END;
    -- User-Defined Records --
    TYPE
    type_name IS RECORD
      ( field_name1  datatype1  [NOT NULL]  [:= DEFAULT EXPRESSION],
       field_name2   datatype2   [NOT NULL]  [:= DEFAULT EXPRESSION],
       ...
       field_nameN  datatypeN  [NOT NULL]  [:= DEFAULT EXPRESSION);
    record-name  type_name;
    
    DECLARE
       type books is record
          (title varchar(50),
          author varchar(50),
          subject varchar(100),
          book_id number);
       book1 books;
       book2 books;
    BEGIN
       -- Book 1 specification
       book1.title  := 'C Programming';
       book1.author := 'Nuha Ali ';
       book1.subject := 'C Programming Tutorial';
       book1.book_id := 6495407;


<a id="org8b1c117"></a>

### Package

**Package specification** - interface. all abjects here are public other - private

you can invoke from PL/SQL, SQL, Java, and other programming environments:

-   **DBMS<sub>ALERT</sub>** - triggers to alert an application when specific database values change. Ex.  to update the value
    of its investment portfolio as new stock and bond quotes arrive.
-   **DBMS<sub>OUTPUT</sub>** - displaying PL/SQL debugging information. You display the information by invoking the procedure
    GET<sub>LINE</sub> or by setting SERVEROUTPUT ON in SQL\*Plus
-   **HTF and HTP**  - HTF and HTP packages enable your PL/SQL programs to generate HTML tags.
-   **UTL<sub>FILE</sub>**  - read and write operating system text files
-   **UTL<sub>HTTP</sub>** - callouts
-   **UTL<sub>SMTP</sub>**
-   DBMS<sub>PIPE</sub> and DBMS<sub>CONNECTION</sub><sub>POOL</sub>

    CREATE OR REPLACE PACKAGE c_package AS
       PRAGMA SERIALLY_REUSABLE; -- memory is returned to the pool cannot be accessed from database triggers or
    			     -- other PL/SQL subprograms that are called from SQL statements.  Adds a customer
       PROCEDURE addCustomer(c_id   customers.id%type,
       c_name  customerS.No.ame%type,
       c_age  customers.age%type,
       c_addr customers.address%type,
       c_sal  customers.salary%type);
    
       -- Removes a customer
       PROCEDURE delCustomer(c_id  customers.id%TYPE);
       --Lists all customers
       PROCEDURE listCustomer; x
    END c_package;
    --Package created.
    
    CREATE OR REPLACE PACKAGE BODY c_package AS
       PROCEDURE addCustomer(c_id  customers.id%type,
          c_name customerS.No.ame%type,
          c_age  customers.age%type,
          c_addr  customers.address%type,
          c_sal   customers.salary%type)
       IS
       BEGIN
          INSERT INTO customers (id,name,age,address,salary)
    	 VALUES(c_id, c_name, c_age, c_addr, c_sal);
       END addCustomer;
    
       PROCEDURE delCustomer(c_id   customers.id%type) IS
       BEGIN
          DELETE FROM customers
          WHERE id = c_id;
       END delCustomer;
    
       PROCEDURE listCustomer IS
       CURSOR c_customers is
          SELECT  name FROM customers;
       TYPE c_list is TABLE OF customerS.No.ame%type;
       name_list c_list := c_list();
       counter integer :=0;
       BEGIN
          FOR n IN c_customers LOOP
          counter := counter +1;
          name_list.extend;
          name_list(counter) := n.name;
          dbms_output.put_line('Customer(' ||counter|| ')'||name_list(counter));
          END LOOP;
       END listCustomer;
    
    END c_package;
    --Package body created.
    
    DECLARE
       code customers.id%type:= 8;
    BEGIN
       c_package.delcustomer(code); -- procedure from package
    END;
    
    DROP PACKAGE c_package;


<a id="org848d31f"></a>

### Procedures [prəˈsiːʤə] and functions  [fʌŋkʃnz]

A **function** is same as a procedure except that it returns a value.

May be stand alone or packaged.

Shema level:

-   CREATE PROCEDURE / FUNCTION
-   DROP PROCEDURE / FUNCTION

-   IN - default -  by reference.
-   OUT - The actual parameter must be variable and it is passed by value.
-   IN OUT - by value.
-   AS for stand alone?

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">Positional notation</td>
<td class="org-left">findMin(a, b, c, d);</td>
</tr>


<tr>
<td class="org-left">Named notation</td>
<td class="org-left">findMin(x =&gt; a, y =&gt; b, z =&gt; c, m =&gt; d);</td>
</tr>


<tr>
<td class="org-left">Mixed notation</td>
<td class="org-left">findMin(a, b, c, m =&gt; d);</td>
</tr>
</tbody>
</table>

OVERLOADING

    CREATE [OR REPLACE] PROCEDURE procedure_name
    [(parameter_name [IN | OUT | IN OUT] type [, ...])]
    {IS | AS}
    BEGIN
      < procedure_body >
    END procedure_name;
    
    EXECUTE greetings;
    BEGIN
       greetings;
    END;
    
    CREATE [OR REPLACE] FUNCTION function_name
    [(parameter_name [IN | OUT | IN OUT] type [, ...])]
    RETURN return_datatype
    {IS | AS}
    BEGIN
       < function_body >
    END [function_name];


<a id="org20b3278"></a>

### Triggers

programs, which are automatically executed or fired when some events occur

-   database manipulation (DML) statement (DELETE, INSERT, or UPDATE)
-   A database definition (DDL) statement (CREATE, ALTER, or DROP).
-   A database operation  (SERVERERROR, LOGON, LOGOFF, STARTUP, or SHUTDOWN)
-   associated on the table, view, schema, or database

Purpose:

-   Generating some derived column values automatically
-   Enforcing referential integrity
-   Event logging and storing information on table access
-   Auditing
-   Synchronous replication of tables
-   Imposing security authorizations
-   Preventing invalid transactions

      CREATE [OR REPLACE ] TRIGGER trigger_name
      {BEFORE | AFTER | INSTEAD OF }   --INSTEAD OF clause is used for creating trigger on a view.
      {INSERT [OR] | UPDATE [OR] | DELETE}  --1 условие
      [OF col_name]  --2
      ON table_name  --3
      [REFERENCING OLD AS o NEW AS n]
      [FOR EACH ROW]  --  for each row, or  table level
      WHEN (condition)  -- for row level - condition for rows for which the trigger would fire
      DECLARE
         Declaration-statements
      BEGIN
         Executable-statements
      EXCEPTION
         Exception-handling-statements
      END;
    
    
    CREATE OR REPLACE TRIGGER display_salary_changes
    BEFORE DELETE OR INSERT OR UPDATE ON customers
    FOR EACH ROW
    WHEN (NEW.ID > 0)
    DECLARE
       sal_diff number;
    BEGIN
       sal_diff := :NEW.salary  - :OLD.salary;
       dbms_output.put_line('Old salary: ' || :OLD.salary);
       dbms_output.put_line('New salary: ' || :NEW.salary);
       dbms_output.put_line('Salary difference: ' || sal_diff);
    END;


<a id="org46af7ca"></a>

### Collections

subscript - index.

collection types:

-   Index-by tables or Associative array - dynamic- dense - Only in PL/SQL block
-   Nested table - dense initially, but it can become sparse when elements are deleted from it
-   varray - fixed size

PL/SQL tables:

-   index-by tables- key-value - key -integer or string - can be
-   the nested tables -  can be stored in a database column

build-in operation for collections:

-   EXISTS(n) - TRUE if the nth element in a collection exists
-   COUNT
-   LIMIT
-   FIRST
-   LAST
-   PRIOR(n)
-   NEXT(n)
-   EXTEND - Appends one null element to a collection
-   EXTEND(n)
-   EXTEND(n,i) - Appends n copies of the ith element to a collection.
-   TRIM - Removes one element from the end of a collection.
-   TRIM(n)
-   DELETE - Removes all elements from a collection, setting COUNT to 0.
-   DELETE(n) - remove nth element
-   DELETE(m,n) - Removes all elements in the range m..n

Exceptions:

-   COLLECTION<sub>IS</sub><sub>NULL</sub> - You try to operate on an atomically null collection.
-   NO<sub>DATA</sub><sub>FOUND</sub> -  element that was deleted
-   SUBSCRIPT<sub>BEYOND</sub><sub>COUNT</sub>
-   SUBSCRIPT<sub>OUTSIDE</sub><sub>LIMIT</sub>
-   VALUE<sub>ERROR</sub> - subscript is null or not convertible to the key type

    TYPE type_name IS TABLE OF element_type [NOT NULL] INDEX BY subscript_type;
    -- subscript_type - key, element_type - value
    table_name type_name; -- table_name - name of Associative array
    
    -- adding elements to the table
       salary_list('Rajnish') := 62000;
       salary_list('Minakshi') := 75000;
       salary_list('Martin') := 100000;
       salary_list('James') := 78000;
    -- printing the table
       name := salary_list.FIRST;
       WHILE name IS NOT null LOOP
          dbms_output.put_line
          ('Salary of ' || name || ' is ' || TO_CHAR(salary_list(name)));
          name := salary_list.NEXT(name);
       END LOOP;
    
    -- NESTED
    TYPE type_name IS TABLE OF element_type [NOT NULL];
    table_name type_name;
    
    DECLARE
       CURSOR c_customers is
          SELECT  name FROM customers;
       TYPE c_list IS TABLE of customerS.No.ame%type;
       name_list c_list := c_list();
       counter integer :=0;
    BEGIN
       FOR n IN c_customers LOOP
          counter := counter +1;
          name_list.extend;
          name_list(counter)  := n.name;
          dbms_output.put_line('Customer('||counter||'):'||name_list(counter));
       END LOOP;
    END;


<a id="org1ed24ae"></a>

### Exceptions

-   ACCESS<sub>INTO</sub><sub>NULL</sub> - when a null object is automatically assigned a value
-   CASE<sub>NOT</sub><sub>FOUND</sub> - when none of the choices is selected
-   COLLECTION<sub>IS</sub><sub>NULL</sub> - program attempts to apply collection methods other than EXISTS to an uninitialized
    nested table or varray
-   DUP<sub>VAL</sub><sub>ON</sub><sub>INDEX</sub> -  column with unique index
-   INVALID<sub>CURSOR</sub> - closing an unopened cursor
-   INVALID<sub>NUMBER</sub> - conversion of a character string into a number fails
-   LOGIN<sub>DENIED</sub> - program attempts to log on to the database with an invalid username or password
-   NO<sub>DATA</sub><sub>FOUND</sub> - raised when a SELECT INTO statement returns no rows.
-   NOT<sub>LOGGED</sub><sub>ON</sub> - when a database call is issued without being connected to the database
-   PROGRAM<sub>ERROR</sub> - PL/SQL has an internal problem
-   ROWTYPE<sub>MISMATCH</sub> - incompatible data type
-   SELF<sub>IS</sub><sub>NULL</sub> - member method is invoked, but the instance of the object type was not initialized
-   STORAGE<sub>ERROR</sub> - PL/SQL ran out of memory or memory was corrupted
-   TOO<sub>MANY</sub><sub>ROWS</sub> - when a SELECT INTO statement returns more than one row.
-   VALUE<sub>ERROR</sub> - arithmetic, conversion, truncation, or sizeconstraint error occurs.
-   ZERO<sub>DIVIDE</sub> - divide a number by zero

    DECLARE
       <declarations section>
    BEGIN
       <executable command(s)>
       RAISE exception_name;
    EXCEPTION
       <exception handling goes here >
       WHEN exception1 THEN
          exception1-handling-statements
       WHEN exception2  THEN
          exception2-handling-statements
       WHEN exception3 THEN
          exception3-handling-statements
       ........
       WHEN others THEN -- others - keyword
          exception3-handling-statements
    END;


<a id="org0beb3fb"></a>

### Transaction

-   automatically starts
-   ends when one of the following events take place:
    -   COMMIT or a ROLLBACK
    -   DDL statement, such as CREATE TABLE
    -   DCL statement, such as a GRANT
    -   User disconnects from the database.
    -   SQL\*PLUS exited
    -   DML statement fails  - ROLLBACK

SAVEPOINT Statement - names and marks the current point in the processing of a transaction. let you roll back
part of a transaction

-   SAVEPOINT < savepoint<sub>name</sub> >;
-   ROLLBACK [TO SAVEPOINT < savepoint<sub>name</sub>>];
-   ROLLBACK;
-   SET AUTOCOMMIT ON;
-   SET AUTOCOMMIT OFF;


<a id="org6b57896"></a>

### Shema - структура для БД

Each user account owns a single schema.

-   **Tables**
-   **Indexes** - indexed row - есть несколько типов индексов
-   **Partitions** - Partitions are pieces of large tables and indexes. Each partition has its own name and may
    optionally have its own storage characteristics.
-   **Views** - stored queries. metadata
-   **Sequences** - user-created object that can be shared by multiple users to generate integers. Typically, you
    use sequences to generate primary key values. metadata
-   **Dimensions** - parent-child relationship between columns from the same table. Commonly used to categorize
    data such as customers, products, and time.
-   **Synonyms** - for another schema object
-   **PL/SQL subprograms and packages**

Тon-schema objects may include:

-   user account
-   roles
-   contexts
-   directory objects

**SYS and SYSTEM Schemas** - SYS and SYSTEM administrative account is automatically created when a database is
 created. <span class="underline">SYS - admin аккаунт.</span> SYS schema stores the base tables and views for the **data dictionary** - A read-only collection of
 database tables and views containing reference information about the database, its structures, and its users.

SYSTEM schema stores additional tables and views that display administrative information, and internal tables
and views used by various Oracle Database options and tools.


<a id="orgf31b85d"></a>

### program units:

-   anonymous block
-   procedure
-   function
-   package specification
-   package body
-   trigger -  **stored procedure** that Oracle Database invokes automatically whenever a specified event occurs
-   type specification
-   type body
-   library


<a id="org789318c"></a>

### Object oriented

[ORDER | MAP] MEMBER PROCEDURE | FUNCTION

Member Methods

-   **Constructors** are functions that return a new object as its value. Every object has a system defined
    constructor method. The name of the constructor is same as the object type.
-   MAP - called when we compare two objects a > b =   a.map() > b.map()
-   ORDER -

    CREATE OR REPLACE TYPE customer AS OBJECT
    (code number(5),
     name varchar2(30),
     contact_no varchar2(12),
     addr address,
     member procedure display
    );
    
    CREATE OR REPLACE TYPE rectangle AS OBJECT
    (length number,
     width number,
     member function enlarge( inc number) return rectangle,
     member procedure display,
     map member function measure return number
    );
    -- Instantiating an Object
    
    DECLARE
       residence address;
    BEGIN
       residence := address('103A', 'M.G.Road', 'Jaipur', 'Rajasthan','201301');
    END;
    
    CREATE OR REPLACE TYPE BODY rectangle AS
       MEMBER FUNCTION enlarge(inc number) return rectangle IS
       BEGIN
          return rectangle(self.length + inc, self.width + inc);
       END enlarge;
       MEMBER PROCEDURE display IS
       BEGIN
          dbms_output.put_line('Length: '|| length);
          dbms_output.put_line('Width: '|| width);
       END display;
       MAP MEMBER FUNCTION measure return number IS
       BEGIN
          return (sqrt(length*length + width*width));
       END measure;
    END;
    
    -- order
    CREATE OR REPLACE TYPE rectangle AS OBJECT
    (length number,
     width number,
     member procedure display,
     order member function measure(r rectangle) return number
    );


<a id="org1d8afbc"></a>

### SQL Pseudocolumns

-   CURRVAL and NEXTVAL sequence<sub>name.CURRVAL</sub>   sequence<sub>name.NEXTVAL</sub>
-   LEVEL - SELECT CONNECT BY - to organize rows from a database table into a tree structurex
-   ROWID - binary address) of a row in a database table
-   ROWNUM - indicating the order in which a row was selected from a table.


<a id="orge729169"></a>

## OLTP vs OLAP

**Online transaction processing (OLTP)** - operational side

Термин введен Эдгаром Коддом. Цель OLAP - облегчение решения задач анализа данных.  В противовес
транзакционной системе OLTP, **OLAP online analytical processing** хранит исторические данные, гибкая и
ориентирована на вывод данных. - amalytical side


<a id="orgc48d72e"></a>

## ACID (atomicity, consistency, isolation, durability)

intended to guarantee **data validity** despite errors, power failures, and other mishaps.

**transaction** - unit of work (a sequence of database operations) which must comply with ACID characteristics

идеальные характеристики транзакций и гарантирующие валидность данных в случае сбоев

-   **Atomicity:** [ˌætəˈmɪsɪtɪ] success completele or fail completely. Atomic [əˈtɒmɪk]
-   **Consistency:** [kənˈsɪstənsɪ] from one valid state to another
-   **Isolation:** [ˌaɪsəˈleɪʃən] concurrency control (Multiversion concurrency control MVCC)
-   **Durability:** [d(y)o͝orəˈbilitē] completed transactions recorded in non-volatile memory


<a id="orgd3475a4"></a>

## уровни изоляции транзакций

Read Uncommitted
Read Committed
Repeatable Read
Serializable

not Seiralizable phenomena:

-   **Phantom reads** - becouse of no **read locks**. Two reads return different results.
-   **Serialization Anomaly** (PostgreSQL) - резултат выполнения двух транзакий зависит от их порядка, но порядка
    нет, так как однавременны. Одну из них PostgreSQL недопустит - read/write dependencies among transactions.

it is important that any data read from a permanent user table not be considered valid until the transaction
which read it has successfully committed

SQLite - Serializable для разных соединений.


<a id="org90e42e9"></a>

## in-memory databases

ACID требует сохранение состояния DURABILITY.
Durable of ACID - delayed commit (SAP ASE)

Все СУБД максимально используют RAM для оптимизации READ.

**delayed commits** and **relaxed latency databases** - less ACID.

-   column sotes with compression.

HANA have no delayed commits but robust recovery system

In-memory databases don't use disk for non-change operations.
In-memory databases do use disk for data change operations — but they use it in the fastest possible way.


<a id="org192241d"></a>

## column-oriented DBMS and Wide-column store

Wide-column store and column-oriented is type of NoSQL database.


<a id="org02cae0c"></a>

## Data medelling

1.  Activity model/ Detailed data requirements - > Update Logical Data Model - > Conceptual data model ->
2.  Technical environment/ Performance considerations - > Update Physical Data Model ->
3.  Business data - > Update data - > Data

Conceptual data model (**domain model**):

-   Entities/Subtypes
-   Attributes
-   Relationships
-   Integrity rules

Physical data model:

-   Tables
-   Columns
-   Key/Indexes
-   Triggers


<a id="orge72ef09"></a>

## Embedded databases

-   HSQL –
-   H2 –
-   DERBY –
-   BerkleyDB


<a id="org22982d2"></a>

### SQLight - not java based

    <dependency>
    		<groupId>org.xerial</groupId>
    		<artifactId>sqlite-jdbc</artifactId>
    		<version>3.7.2</version>
    	</dependency>
    Class.forName("org.sqlite.JDBC");
    
    	    Connection connection = null;
    	    try
    	    {
    	      // create a database connection
    	      connection = DriverManager.getConnection("jdbc:sqlite:sample.db");
    	      Statement statement = connection.createStatement();
    	      statement.setQueryTimeout(30);  // set timeout to 30 sec.
    
    	      statement.executeUpdate("drop table if exists person");
    	      statement.executeUpdate("create table person (id integer, name string)");

rowid - по умолчанию все таблицы имеют 64 ключ, оптимизированный для сортировки и автоинкрементный
<https://www.sqlite.org/lang_createtable.html#rowid>

    create table contact (id INTEGER PRIMARY KEY

id - alias for rowid. вставить запись с автоинкрементом:

    insert into contact values(null,

-   TEXT as ISO8601 strings ("YYYY-MM-DD HH:MM:SS.SSS").
-   REAL as Julian day numbers, the number of days since noon in Greenwich on November 24, 4714 B.C. according
    to the proleptic Gregorian calendar.
-   INTEGER as Unix Time, the number of seconds since 1970-01-01 00:00:00 UTC.


<a id="orga356b1f"></a>

## PostgreSQL

id serial - autoincrement, automatically: NOT NULL. If Primary key - unique.

    INSERT INTO teams  (name) VALUES ('asd');
    --OR INSERT INTO teams VALUES (DEFAULT, 'Manchester City');
    SELECT LASTVAL();


<a id="org17f14fe"></a>

## triplestore or Resource Description Framework (RDF) store

RDF is data model. subject–predicate–object or semantic triple, like "Bob is 35" or "Bob knows Fred".

-   similar to the classical notation of an entity–attribute–value model within object-oriented design,

storage and retrieval of triples[1] through semantic queries

Unlike a relational database, a triplestore is optimized for the storage and retrieval of triples.

triples can usually be imported and exported using Resource Description Framework (RDF)

While ontologies make RDF data “smarter” in the sense that they advertise a processing model for that data,
 there’s no guarantee that a SPARQL query will ever terminate.


<a id="orgc2144aa"></a>

## Property graph

nodes, relationships, and properties.

-   Nodes are tagged with one or more labels
-   Nodes can also store any number of properties as key-value pairs.
-   Relationships always have a direction, a type, a start node, and an end node, and they can have properties,
    just like nodes

Graph databases might provide index-free adjacency, meaning every element contains a direct pointer to its
 adjacent elements, and no index lookups are necessary.


<a id="org459fc70"></a>

## RDF vs PG Property graph

Query language

-   RDF: SPARQL
-   PG: Cypher (most widely used implementation), PGQL, GCore, GQL (ISO standard)

Serialization format

-   RDF: multimple
-   PG: none

Schema language

-   RDF: RDFS, OWL, Shapes
-   PG: none

Standrardizatin

-   W3C
-   different competing vendords

Expressivity

-   RDF: no properties on edges
-   PG: all

Database

-   RDF: triplestore
-   PG: property graph database

links

-   <https://neo4j.com/blog/rdf-vs-property-graphs-knowledge-graphs/>
-   <https://www.ontotext.com/knowledgehub/fundamentals/rdf-vs-property-graphs/>
    -   <https://www.slideshare.net/slideshow/embed_code/key/Ndz0T5UQS8e4sM>


<a id="orgdb67d15"></a>

## Atomic commit

-   two-phase commit protocol - requires a coordinator to maintain all the information needed to recover the
    original state of the database if something goes wrong.
-   three-phase commit protocol


<a id="org8c45964"></a>

### Задача двух генералов Two Generals' Problem:

Предположим, первый генерал отправляет второму сообщение «Атакуем
 завтра в девять часов утра». Отправив посыльного, первый генерал не знает, добрался ли посыльный до второго
 генерала. Не зная, поддержит ли второй генерал его действия, первый может отложить штурм. Зная это, второй
 генерал может отправить подтверждающее сообщение «Я получил Ваше сообщение и атакую завтра в девять часов
 утра». Но это сообщение также может быть перехвачено противником. Зная, что первый генерал не начнёт штурм
 без подтверждения, второй генерал также может отложить атаку. Первый генерал может отправить сообщение «Я
 получил Ваше подтверждение о времени начала штурма», но оно также может быть перехвачено. Быстро становится
 очевидным, что, сколько бы ни было циклов обмена сообщениями, нет способа гарантированно уведомить обоих
 генералов о том, что их сообщения получены. Таким образом, задача не имеет решения.

часто рассматривается в рамках курса компьютерных сетей

First general can send a marking on each message saying it is message 1, 2, 3 &#x2026; of n. This method will allow
 the second general to know how reliable the channel is and send an appropriate number of messages back to
 ensure a high probability of at least one message being received. each assume: "I have not received an
 additional message for 200 minutes; either 200 messengers failed to cross the danger zone, or it means the
 other general has confirmed and committed to the attack and has confidence I will too"


<a id="orged2fd50"></a>

# telecommunications


<a id="orgbd70403"></a>

## terms

-   **Multiplexing:** multiple signals are combined into one signal over a **shared medium**.  multiplexer (MUX)->
    demultiplexer (DEMUX or DMX).
-   **Bit rate:** number of bits that are conveyed or processed per unit of time. bit/s, kbit/s(1000),
    Mbit/s(10<sup>6</sup>), Kibit/s(1024). byte per second B/s == 8 bit/s.
-   **Symbol rate:** modulation rate or baud rate. is the number of symbol changes, waveform changes, or signaling
    events per unit of time.  baud (Bd) or symbols per second.
-   **Gross bit rate:** total number of physically transferred bits per second over a communication link
-   **Information rate:** net bitrate, information rate, useful bit rate, payload rate, net data transfer rate,
    coded transmission rate, effective data rate - the capacity excluding the physical layer protocol overhead
-   **data transfer rate:** Goodput - the achieved average net bit rate that is delivered to the application
    layer, exclusive of all protocol overhead, data packets retransmissions, etc. goodput ≤ throughput ≤ maximum
    throughput ≤ net bit rate

OSS/BSS -

-   operations support system
-   business support system


<a id="orgf352cc1"></a>

## error detection and correction (EDAC) or error control

Error detection + Error correction - reliable delivery of digital data over unreliable communication channels.

-   redundancy Избыточность информации - the fractional difference between the entropy H(X) of an ensemble X,
    and its maximum possible value log(|Ax|)


<a id="org3b3ab35"></a>

# networks


<a id="orgbd510e4"></a>

## proxy types

-   Web proxy servers - full URL is passed
    -   HTTP CONNECT - Some web proxies allow to set up forwarding of arbitrary data through the connection.
    -   HTTPS Proxy & SSL Proxy - ?
-   SOCKS proxy - similar to HTTP CONNECT in web proxies
-   transparent proxy (intercepting proxy, inline proxy, forced proxies)
    -   servers hosting the service recognize that the proxied traffic is coming from a proxy and not directly
        from the user.
    -   performing some of the functions of a gateway or router
    -   no client browser configuration is required
-   CGI proxy - web form
-   Suffix proxy - e.g. "en.wikipedia.org.SuffixProxy.com"
    -   or bypassing web filters.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">Transparent Proxy</th>
<th scope="col" class="org-left">Anonymous Proxy</th>
<th scope="col" class="org-left">Elite Anonymous Proxy</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">HTTP<sub>VIA</sub></td>
<td class="org-left">proxy<sub>ip</sub></td>
<td class="org-left">proxy<sub>ip</sub></td>
<td class="org-left">blank</td>
</tr>


<tr>
<td class="org-left">HTTP<sub>X</sub><sub>FORWARDED</sub><sub>FOR</sub></td>
<td class="org-left">user<sub>ip</sub></td>
<td class="org-left">proxy<sub>ip</sub><sub>or</sub><sub>random</sub></td>
<td class="org-left">blank</td>
</tr>


<tr>
<td class="org-left">REMOTE<sub>ADDR</sub></td>
<td class="org-left">proxy<sub>ip</sub></td>
<td class="org-left">proxy<sub>ip</sub></td>
<td class="org-left">proxy<sub>ip</sub></td>
</tr>
</tbody>
</table>

<https://www.bestproxyreviews.com/different-types-of-proxies/>


<a id="orgf2aed55"></a>

## ipv4

0.0.0.0 server - reserved as a source address only/ TCP/IP software applications use 0.0.0.0 as a programming
technique to monitor network traffic across all the IP addresses currently assigned to the interfaces on that
multi-homed device.


<a id="org508ac87"></a>

## ipv6

128 bits long and is divided into 8 groups with 4 of 0-F digits(16 bits each).

-   Consecutive sections of zeroes replaced with “::” may be used only once (0:0:0 -> ::)

Simplification:

-   Initial address: 2001:0db8:0000:0000:0000:ff00:0042:8329.
-   After removing all leading zeros in each group: 2001:db8:0:0:0:ff00:42:8329. (0:0:0 -> ::)
-   After omitting consecutive sections of zeros: 2001:db8::ff00:42:8329.

parts

-   Network Part (Site Prefix)
-   Subnet Part (Subnet ID) -  typically 16 bits long.
-   Interface Part (Interface ID)
    
    CIDR (Classless Inter-Domain Routing) notation to specify the prefix length
-   Example: 2001:db8:1234::/48 indicates that the first 48 bits (2001:db8:1234) are the network prefix

Router Advertisments or Announcements
/proc/sys/net/ipv6/conf/eth0/accept<sub>ra</sub> = 1

net.ipv6.conf.default.accept<sub>ra</sub> =1
net.ipv6.conf.lo.accept<sub>ra</sub> =1

config<sub>eth0</sub>="192.168.0.zyx/24
2001:aaa:bbbb:cc::zyx/64"

128 bit long
hex 32 char

sep by 16 bits
1111:2222:3333:4444:5555:6666:7777:8888

leading zeros in 16 bits can be omitted  0011 -> 11

1111:0000:1111 -> 1111::1111

1.  localhost - > ::1
2.  ANY -> ::
3.  127.0.0.1 -> ::ffff:127.0.0.1 - the IPv4-mapped IPv6 addresses
    -   ::127.0.0.1 - deprecated "IPv4-compatible IPv6 address"


<a id="orgb756031"></a>

### multicast

-   **ff02::1:** link-local all nodes. analogous to IPv4 multicasting to address 224.0.0.1
-   **ff02::2:** all routers on the local link. It is useful for discovering the IPv6 addresses of routers in the local network.
-   **ff02::5:** All OSPF (Open Shortest Path First) routers.
-   **ff02::9:** All RIP (Routing Information Protocol) routers.
-   **ff02::d:** All PIM (Protocol Independent Multicast) routers.
-   **ff02::16:** All MLDv2-capable routers.

addresses start with FF02::1:FF /104 and are used for Neighbor Discovery Protocol (NDP).

-   FF02::1:FF prefix. + Ipv6 - This is efficient for discovering the layer two address of a specific IPv6 host without broadcasting to all hosts.

may be usefull

    sudo tcpdump -n -i en0 icmp6


<a id="org1d96326"></a>

## OSI model

-   HTTP (Application layer)
-   TLS (Presentation Layer)
-   TCP (Transport Layer)
-   IP (Network Layer)
-   Ethernet (Data Link Layer)
-   Ethernet physical layer (Physical Layer)

Each layer consists of units. They are called **Protocol Data Units**.


<a id="org909929d"></a>

## MTU, MRU, PDU

Maximum Transmission Unit is the maximum size of a unit that can be successfully sent over a network to the
 other end.

Maximum Receive Unit, is the maximum size of a unit can be received from the other end. (This term is mostly used for PPP connections)

Protocol Data Units - in OSI model, each layer consist of units, if unit does not get fully received, it must
 be dropped.

**Packets** are the PDUs that travel over a link on the netwrok layer.

limits

-   IPv4: 576 bytes - 64KiB
-   IPv6: 1280 bytes - 4 freaking GiB!
-   default upper limit for most OS’s and NIC drivers: 1500 bytes

Sometimes lower layers (e.g data link), append some extra headers to their own unit, making less space
 available to their payload

WAN change MTU of transferred packages, due to things like Dynamic Routing even your MTU to a single server
 might change over time.

router do **IP Fragmentation** if packet exceeds size

The first router that determines its next-hop5 could handle the full packet size, would **defragment** it on the
 spot.

on IPv6, fragmentation on router level is not allowed anymore and hosts are solely responsible for
 (de)fragmenting their own packets.

IPv4 packets header **Don’t Fragment flag,** is to tell the routers along the way that the packet should not be
 fragmented.

-   for optimize the packet size themselves
-   for identifying the MTU of a path.

Path MTU Discovery (PMTUD) - is now a needed feature for every client OS.

[rfc1191 Path MTU Discovery](https://tools.ietf.org/html/rfc1191) explains:

<https://hamy.io/post/000b/understanding-network-ip-fragmentation/>


<a id="orgb8da6fd"></a>

## CIDR (Classless Inter-Domain Routing) prefix or slash notation

"/24" in "127.0.0.1/24", the first 24 bits of 32 are used to identify the network.

-   10.0.0.0/8 - 16,777,216 addresses

tool:

    emerge --ask net-misc/ipcalc

in IPv6 : total 128 bits

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">/128</td>
<td class="org-left">1 IPv6 address</td>
<td class="org-left">A network interface</td>
</tr>


<tr>
<td class="org-left">/64</td>
<td class="org-left">1 IPv6 subnet</td>
<td class="org-left">18,446,744,073,709,551,616 IPv6 addresses</td>
</tr>


<tr>
<td class="org-left">/56</td>
<td class="org-left">256 LAN segments</td>
<td class="org-left">Popular prefix size for one subscriber site</td>
</tr>


<tr>
<td class="org-left">/48</td>
<td class="org-left">65,536 LAN segments</td>
<td class="org-left">Popular prefix size for one subscriber site</td>
</tr>


<tr>
<td class="org-left">/32</td>
<td class="org-left">65,536 /48 subscriber sites</td>
<td class="org-left">Minimum IPv6 allocation</td>
</tr>


<tr>
<td class="org-left">/24</td>
<td class="org-left">16,777,216 subscriber sites</td>
<td class="org-left">256 times larger than the minimum IPv6 allocation</td>
</tr>
</tbody>
</table>


<a id="orga9b533b"></a>

### python ip range to slash notation

    import ipaddress
    def ip_range_to_cidr(start_ip, end_ip):
        """
        Convert IP address range to CIDR notation.
    
        Args:
            start_ip (str): Starting IP address of the range.
            end_ip (str): Ending IP address of the range.
    
        Returns:
            str: CIDR notation of the IP address range.
        """
        start_ip = ipaddress.ip_address(start_ip)
        end_ip = ipaddress.ip_address(end_ip)
        num_addresses = int(end_ip) - int(start_ip) + 1
        bits = 32 - (num_addresses - 1).bit_length()
        return f"{start_ip}/{bits}"
    print(ip_range_to_cidr('103.1.80.0', '103.1.83.255'))
    # def main():
    #     with open("input.txt", "r") as f:
    #         for line in f:
    #             start_ip, end_ip, _ = line.strip().split("\t")
    #             cidr_notation = ip_range_to_cidr(start_ip, end_ip)
    #             print(cidr_notation)

    103.1.80.0/22


<a id="org000b7b7"></a>

## regional Internet registry (RIR)

manage IP addresses and autonomous system (AS) numbers.

five regional registries:

-   AFRINIC - African Network Information Centre (Africa)
-   ARIN - American Registry for Internet Numbers (South America)
-   APNIC - Asia Pacific Network Information Centre (Australia and China)
-   LACNIC - Latin America and Caribbean Network Information Centre (North America)
-   RIPE NCC - Réseaux IP Européens Network Coordination Centre (Europe and Russia)


<a id="orgd28c3ca"></a>

## TODO TLS


<a id="org397038b"></a>

## Socks - intermediary in TLS

The client establishes a connection to the SOCKS5 proxy. The proxy then establishes a connection to the
 destination server.

For HTTPS connections, the proxy acts as an intermediary in the TLS handshake. This means the proxy decrypts
 the incoming TLS traffic, inspects or modifies it if necessary, and then re-encrypts it before forwarding it
 to the destination server[2][4].

Pros:

-   dont show true IP of clinet
-   TCP and UDP connections and support a wider range of protocols

Cons:

-   May be recognized and blocked by firewalls or security software.
-   For authentification because of lack of built-in encryption, password may vulnerable for MITM.

    curl -v -A Mozilla -x socks5h://1.79.2.5:1080 https://rust.com


<a id="org3e1dad4"></a>

## Explicit Proxy with CONNECT Method - not intermediary in TLS

The proxy establishes a TCP connection between the client and the server but does not participate in the TLS
 handshake.

Cons:

-   you should trust that proxy will not decrypt your traffic.
-   don't show true IP of client, but may. It should be checked.
-   DNS requests don't go through proxy.
-   TCP connections and are primarily used for HTTPS and similar TCP-based traffic

    curl -v -A Mozilla -x 1.79.2.5:1080 https://rust.com
    * Proxy replied OK to CONNECT request


<a id="org9058f8e"></a>

## VPN

L2TP/IPsec, while generally secure, can be vulnerable if not properly configured.


<a id="orge44069d"></a>

# software characteristics

-   Approachability	Ease of getting started with for typical tasks, and contribution friendliness
-   Doing one thing well	Unix philosophy, fitting into an ecosystem
-   Editing efficiency	Fewer interactions, mnemonics, composable keystrokes, etc.
-   Extensibility	The degree to which behavior and appearance can be changed
-   Freedom	Embraces free software, rejects proprietary software
-   Integration	Cohesive core and concerted third-party functionality
-   Introspectability	Capable of being understood and inspected ad-hoc
-   Keyboard centrism	Focus on keyboard interactions
-   Maintainability	The degree to which it can be modified without introducing faults
-   Progressiveness	A measure of eagerness to make progress and leverage modern technology
-   Stability	Things that worked before continue to work the same way
-   Text centrism	Text as a universal interface
-   Velocity	Short and focused release cycles, aligned personpower, leveraging the community effectively


<a id="org31a63a4"></a>

# performance boosting, code optimization, speed up

-   **Cache<sub>prefetching</sub>** - fetching data from original slow memory to a faster before it is actually
    needed. (used in CPU)
-   **Unity build** - speed up the compilation of projects by combining multiple units in single one usualy by
    transclusion. (used in C and C++ - c files combined to one big with #include)
-   **vectorization** - designing sturctures for easier vectorization - applying vecter instructions of processor.
-   **Loop unrolling** or **loop unwinding** - space–time tradeoff. by reducing instructions that control the loop.
-   **Inline expansion** - replaces a function call site with the body of the called function.  excess inlining will hurt speed
-   **Loop unswitching** - moves a conditional inside a loop outside of it by duplicating the loop's body, and
    placing a version of it inside each of the if and else clauses of the conditional. can improve the
    parallelization of the loop. may double the amount of code written, each of these new loops may now be
    separately optimized.


<a id="org09a0871"></a>

## links

-   <https://en.wikipedia.org/wiki/Compiler_optimization>


<a id="orgd4859e7"></a>

# Markup languages

-   TeX LaTeX - Academic documents, Multi-purpose
    -   Unicode mathematics - unicode used for fonts in LaTeX
-   Math Markup Language (MathML) - tags - part of HTML5
-   Markdown
-   GNU TeXmacs - WYSIWYG for stupid macOS users

glyphs - ŷ Ŷ ũ Ũ ẽ Ẽ ĩ Ĩ


<a id="org47ff977"></a>

# Blockchain


<a id="org9d12bdd"></a>

## TODO A from-scratch tour of Bitcoin in Python

<https://karpathy.github.io/2021/06/21/blockchain/>


<a id="org504a1d9"></a>

## terms

-   **digital asset [ˈdɪʤɪtl ˈæset]:** цифровой актив
-   **redeeming [rɪˈdiːmɪŋ]:** выкуп
-   **on behalf of:** от имени
-   **Custodian:** Попечитель  in charge of guarding or maintaining a property.
-   **Commodity [kəˈmɒdɪtɪ]:** товар
-   **pegged exchange:** fixed exchange rate, value is fixed or pegged by the value of another currency
-   **collateral [kəˈlæt(ə)rəl]:** обеспечение


<a id="org5357634"></a>

## stablecoin <a id="orgc8bc7e2"></a>

cryptocurrency where the value of the digital asset is supposed to be pegged to a reference asset, which is
 either fiat money, exchange-traded commodities (such as precious metals or industrial metals), or another
 cryptocurrency.

необходимый для поддержания курса уровень доверия к централизованному механизму обмена противоречит
 децентрализованной природе криптовалют.

types:

-   **Backed stablecoins:** stabilized by other assets(backing asset).
-   **Fiat-backed:** by backing currency
-   **Commodity-backed:** .
-   **Cryptocurrency-backed:** as fiat-backed, but crypto asset used to back this type of stablecoins is done on
    the blockchain, using smart contracts in a more decentralized fashion.  allow users to take out a loan
    against a smart contract via locking up collateral
-   **Seigniorage-style coins, algorithmic stablecoins:** utilize algorithms to control the stablecoin's money
    supply, similar to a central bank's approach to printing and destroying currency. Seigniorage-based
    stablecoins are a less popular form of stablecoin.

BitGo - multisignature bitcoin wallet service


<a id="orgccc28b9"></a>

## criptocurrencies

index of cypto decentralization <https://arxiv.org/abs/2211.01291>


<a id="orga45ce22"></a>

### currencies by market cap

Market Cap - The total market value of a cryptocurrency's **circulating supply**. It is analogous to the
 free-float capitalization in the stock market. Market Cap = Current Price x Circulating Supply

rating at 2023-03-30:

-   Bitcoin	BTC	$537,894,522,662
-   Ethereum	ETH	$218,204,943,358
-   Tether	USDT	$79,644,704,771
-   BNB		BNB	$50,011,463,543
-   USD Coin	USDC	$32,849,897,095
-   XRP		XRP	$27,801,186,083
-   Cardano	ADA	$13,114,264,849
-   Dogecoin	DOGE	$10,320,418,090
-   Polygon	MATIC	$9,909,970,844
-   Solana	SOL	$7,895,004,987
-   Binance USD	BUSD	$7,611,302,222


<a id="orgebc250b"></a>

## sybil attack

A Sybil attack is a type of attack on a computer network service in which an attacker subverts the service's
 reputation system by creating a large number of pseudonymous identities and uses them to gain a
 disproportionately large influence.

Sybil resilience mechanisms or sybil control mechanisms:

-   **Proof of Work (PoW):** to validate blocks for the network, nodes have to solve hard mathematical problems in
    a competitive setting.(original sybil control mechanism for Bitcoin, established by Satoshi Nakamoto). PoW
    adds security by its naturally random selection process of the winning block producer.
-   **Proof of Stake (PoS):** block producer rights are assigned in proportion to a node’s holdings of the
    network’s native token. This mechanism binds block producers to the network’s value and ideally keeps them
    from acting against collective interest.
-   **Proof of Elapsed Time (POET):** in a POET system, nodes go to sleep for a random amount of time. The first
    node to wake up obtains the right to produce the next block. POET systems have to ensure that nodes do indeed
    select a random sleep time, and that they do indeed wait for the said amount of time before waking up again.
-   **Proof of Space and Time (PoST):** this sybil control mechanism asks block producers to provide a certain
    amount of storage space to the system as a proof of their engagement. Block production time is factored into
    the chain’s weight to prevent cheap storage attacks on the historical chain.
-   **Proof of Authority (PoA):** here, the right to produce a block is assigned to a number of known nodes. This
    highly centralized approach is used for private blockchains, or during the startup phase of new public
    consensus mechanisms.
-   **Proof of Diversity (PoD):** PoD uses IPV4 as a scarce resource limiting network participation.


<a id="orga750f85"></a>

## dapps

The two most common mechanisms to establish consensus are proof-of-work (POW) and proof-of-stake (POS).


<a id="org61f602c"></a>

### gas

DApps incur gas, that is fees paid to the validators of the block chain, due to the cost of deploying and
 executing the DApp's smart contracts.


<a id="org3182738"></a>

### classification

1.  operate on their own block chain. Block chains such as Bitcoin and Ethereum can be classified as Type I
    DApps.
2.  operate on the block chain of a Type I DApp. These protocols themselves have tokens that are required for
    their function.
3.  DApps are protocols that operate using the protocols of a Type II DApp. Similar to Type II DApps, Type III
    DApps also have tokens that are required for their function.


<a id="orgde4a271"></a>

### links

<https://ethereum.org/en/developers/docs/dapps/>


<a id="org846fa83"></a>

## ipfs

<https://ipfs.tech>


<a id="orgced76d9"></a>

## Ethereum


<a id="org4570589"></a>

### terms

stake Ether -


<a id="orgfd22c13"></a>

### two different client software:

-   "execution" (Execution Engine, EL client or formerly the Eth1 client) - listens to new transactions
    broadcasted in the network, executes them in EVM, and holds the latest state and database of all current
    Ethereum data.
    
    -   Full nodes
    -   Archive nodes are nodes that store all of the information that a full node does and builds an archive of
    
    historical blockchain states.
-   "consensus" (Beacon Node, CL client or formerly the Eth2 client) - implements the proof-of-stake consensus
    algorithm, which enables the network to achieve agreement based on validated data from the execution client.
-   Light (nodes? wtf) - low-capacity devices like smartphones - can access the Ethereum blockchain with the same
    functionality and security guarantees as a full node.

1.  light

    -   Nimbus
    -   Helios
    -   LodeStar


<a id="org5512235"></a>

## staking - proof of stake (PoS)

Staking is a new method of securing blockchain.

Staking is locking up currency for a period of time in order to gain a reward.

you show your commitment to the network by staking, or locking up, a deposit of ETH to participate as a
 validator of the network. (and getting paid for it)

becoming a validator required setting up (and running) your own Ethereum node, with a minimum stake of 32 ETH


<a id="orgaca2ada"></a>

## (DAOs) Decentralized Autonomous Organizations

-   Standard DAO Framework allows people to create DAOs <https://github.com/blockchainsllc/DAO>

transparent organization where governance and decision making systems are immutably programmed in the Ethereum
 blockchain.

files:

-   DAO.sol - Standard smart contract
-   Token.sol - functions to check token balances, send tokens, send tokens on behalf of a 3rd party and its corresponding approval process.
-   TokenCreation.sol - Token Creation contract, used by the DAO generated by the framework to sell its tokens and initialize its ether.
-   SampleOffer.sol
-   ManagedAccount.sol
-   DAOTokenCreationProxyTransferer.sol


<a id="orgb37a413"></a>

## bitcoin basic

<https://michaelnielsen.org/ddi/how-the-bitcoin-protocol-actually-works/>


<a id="org2413501"></a>

## competitions

-   Personal - CEX (Centralised exchanges like Binance/Coinbase/Kraken etc)
-   Personal - DeFi (Decentralised protocols/Chains - like BNB Chain, Uniswap, PancakeSwap etc)
-   Professional - CEX
-   Professional - DeFi


<a id="org2461a56"></a>

# Problem Solving and Information Gathering


<a id="orgad9ab34"></a>

## Five Ws

often mentioned in journalism (cf. news style), research, and police investigations

a report can only be considered complete if it answers these questions starting with an interrogative word:

-   Who
-   What
-   When
-   Where
-   Why
-   How (optional)

None of these questions can be answered with a simple "yes" or "no".


<a id="org68086a4"></a>

# version control systems


<a id="org8c4e687"></a>

## terms

-   Centralized version control - stores the history of the code base on a separate server from which copied can be provided to all developers.


<a id="orge3a22d3"></a>

## soft

-   CVS (Concurrent Versioning System) - 1990 - replaced by CVSNT and Subversion
    -   central serve
    -   allow to rollback any commit
-   Subversion (SVN) - 2000 - tomic commit allows the user to either apply a commit either fully or not at all
    -   central server
    -   based on relational database
    -   many advantages but repository like binary and does not have access
    -   allow to attack to file attributes
    -   does not allow to rollback any commit
    -   track file and directory creation, deletion, renaming
    -   no time of modification
-   Git -
-   Mercurial


<a id="org6d66722"></a>

## notes

One of the reasons why Subversion was chosen instead of CVS is that it supports atomic commits, does not
 expand keywords (like $Header: $) and so we can use it without using a two-step commit for manifests.


<a id="orgb90aaec"></a>

## links

<https://en.wikipedia.org/wiki/Comparison_of_version-control_software>


<a id="org7b6161f"></a>

# Software licenses

-   source-available - as long its source code is distributed along with it.
-   Source-available software - from allowing code to be viewed for reference to allowing code to be modified and
    redistributed for both commercial and non-commercial purposes.
-   free software
-   open-source software
-   non-free licenses - no legal rights to use, share, modify or compile it.
-   public domain - no one holds the exclusive rights, anyone can legally use or reference those works without
    permission. Grand all rights. “Unlicense”
-   Copyleft - Grants use rights, forbids proprietization. is the legal technique of granting certain freedoms
    over copies of copyrighted works with the requirement that the same rights be preserved in derivative
    works. “GPL, AGPL”
-   Permissive license - Grants use rights, including right to relicense (allows proprietization, license
    compatibility). “MIT, Apache, MPL, BSD licenses”
-   Noncommercial license - for noncommercial use only. May be combined with copyleft. “JRL, AFPL”
-   Copyright - exclusive legal right to copy, distribute, adapt, display, usually for a limited time. “All rights reversed”.
-   Proprietary license - copyright. no rights need to be granted
-   Trade secret - No information is made public. Private, internal software.
-   Multi-licensing or dual-licensed - recipients can typically choose the terms under which they want to use or
    distribute the software.
-   Shareware - type of proprietary software, initially shared by the owner for trial use at little or no cost,
    limited until the user sends payment to the software developer.
    -   Freemium - free of charge, while charging a premium for advanced features, functionality, or related
        products and services.
    -   Adware - renders advertisements in order to generate revenue for its author.
    -   Crippleware - vital features disabled
    -   Donationware - full operational, optional donation.
    -   Nagware - persistently reminds the user to purchase a license

<https://en.wikipedia.org/wiki/Free-software_license>


<a id="org9a4324a"></a>

## GPLv3

Tivoization - practice of using hardware restrictions or digital rights management (DRM) to prevent users from
 running modified versions of software on a device, even though the software is licensed under a copyleft
 license like the GNU GPL.  The GPLv3 explicitly prohibits this practice by requiring distributors to provide
 users with the necessary information and tools to install modified software versions, thereby protecting the
 users' freedom to modify and control their software.

Limits:

-   You must include a copy of the full GPLv3 license text and the original copyright notice with each
    distribution of the modified software. You must also state all significant changes made to the original
    software.
-   you must indicate the changes made to the code. This includes adding prominent notices stating that you
    modified the software and giving a relevant date.
-   The source code must be provided in a format that allows recipients to modify and compile the software.

Allow:

-   You are allowed to use and distribute the software for commercial purposes, but you must still comply with
    all the terms of the GPLv3.
-   You can sell copies of the software.


<a id="org980b194"></a>

# Opensource


<a id="orgd697f7f"></a>

## FSF, GNU, open source license

four essential freedoms FSF:

-   (0) to run the program,
-   (1) to study and change the program in source code form,
-   (2) to redistribute exact copies
-   (3) to distribute modified versions.


<a id="orgc30b243"></a>

## Russian

Russia Open Source Foundation, а позже — АНО «Открытый код»

history of opensource in Russia <https://nplus1.ru/material/2023/12/20/russian-open-source>

Шесть заметных и важных опенсорс-проектов <https://nplus1.ru/material/2024/01/30/outstanding-op-software>

1.  Postgres Pro
2.  ARENADATA: первые среди контрибьюторов в Greenplum
3.  Lacmus: разрабатывают социально значимый опенсорс
4.  FEDOT - ITMO AIM.CLUB
5.  Angie: Nginx fork - отслеживание статистики через API, поддержка http/3 в сторону клиента и проксируемых
    серверов, а также режим привязки сессий и расширение поддержки протокола mqtt

see <data_science>


<a id="orgbef4da2"></a>

## Russian terms

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">ГК РФ</th>
<th scope="col" class="org-left">GPLv3</th>
<th scope="col" class="org-left">Apachev2</th>
<th scope="col" class="org-left">MIT</th>
<th scope="col" class="org-left">BSD-3</th>
<th scope="col" class="org-left">MPLv2</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Исходный текст</td>
<td class="org-left">Source code</td>
<td class="org-left">Source form</td>
<td class="org-left">-</td>
<td class="org-left">Source form</td>
<td class="org-left">Source Code Form</td>
</tr>


<tr>
<td class="org-left">Объектный код</td>
<td class="org-left">Object code</td>
<td class="org-left">Object form</td>
<td class="org-left">-</td>
<td class="org-left">Binary form</td>
<td class="org-left">Executable Form</td>
</tr>


<tr>
<td class="org-left">Распространение (1)</td>
<td class="org-left">Propagation</td>
<td class="org-left">Redistribution</td>
<td class="org-left">Distribution</td>
<td class="org-left">Redistribution</td>
<td class="org-left">Distribution</td>
</tr>


<tr>
<td class="org-left">Правообладатель</td>
<td class="org-left">Copyright holder</td>
<td class="org-left">Licensor</td>
<td class="org-left">Copyright holder</td>
<td class="org-left">Copyright holder</td>
<td class="org-left">Licensor</td>
</tr>


<tr>
<td class="org-left">Автор</td>
<td class="org-left">Contributor</td>
<td class="org-left">Contributor</td>
<td class="org-left">-</td>
<td class="org-left">Contributor</td>
<td class="org-left">Contributor</td>
</tr>


<tr>
<td class="org-left">Переработка &#x2026; (2)</td>
<td class="org-left">Modification</td>
<td class="org-left">making  modifications</td>
<td class="org-left">Right to modify</td>
<td class="org-left">Modification</td>
<td class="org-left">Right to modify</td>
</tr>


<tr>
<td class="org-left">Произведение (3)</td>
<td class="org-left">Program</td>
<td class="org-left">Work</td>
<td class="org-left">Software</td>
<td class="org-left">Software</td>
<td class="org-left">Contribution/Covered Software</td>
</tr>


<tr>
<td class="org-left">Производное про-ние</td>
<td class="org-left">Work based   (4)</td>
<td class="org-left">Derivative</td>
<td class="org-left">-</td>
<td class="org-left">-</td>
<td class="org-left">Modifications</td>
</tr>


<tr>
<td class="org-left">Воспр-дение пр-я</td>
<td class="org-left">Copying</td>
<td class="org-left">Reproduction</td>
<td class="org-left">-</td>
<td class="org-left">-</td>
<td class="org-left">Reproduce</td>
</tr>


<tr>
<td class="org-left">Составное пр-ние</td>
<td class="org-left">Aggregate</td>
<td class="org-left">-</td>
<td class="org-left">-</td>
<td class="org-left">-</td>
<td class="org-left">Larger Work</td>
</tr>
</tbody>
</table>

1.  Распространение произведения и (или) доведение произведения до всеобщего сведения (зависит от конкретного способа) source
2.  Переработка (модификация) произведения
3.  Программа для ЭВМ
4.  Work based on the Program
    
    <https://russiaos.ru/materials>


<a id="org24747f2"></a>

## opensource sponsorship

-   for individuals  <https://www.outreachy.org>
    -   Internships run early December 2024 to early March 2025
    -   at least 2-3 weeks before the Outreachy application deadline. (Internships run early December 2024 to early March 2025)
    -   applications:
        -   May 2024 internships: Intern applications are accepted from mid-January to late-January
        -   December 2024 internships: early August to mid August
    -   <https://www.outreachy.org/apply/>
-   for projects <https://summerofcode.withgoogle.com/>
-   Russia for individuals <https://foss.kruzhok.org/code-for-all>
-   we-are-ols.org
    -   June 1, 2023 : Call for Application opens
    -   September 18, 2023: Start of the program
-   science <https://www.tudelft.nl/en/open-science>


<a id="org416c578"></a>

## opensource events

<https://fosdem.org>


<a id="org5555d37"></a>

## project management

github.com/aimclub/open-source-ops


<a id="org075c54a"></a>

# WEB 1,2,3

Web 1.0 - static pages without ability to storage. 1989 to 2004

Web 2.0 - interactive. "move from personal websites to blogs and blog site aggregation, from publishing to
 participation, from content management systems to links based on "tagging" website content using keywords
 (folksonomy)."

-   Rich web application — defines the experience brought from desktop to browser
-   Web-oriented architecture (WOA) — defines how Web 2.0 applications expose their functionality so that other
    applications can leverage and integrate the functionality providing a set of much richer
    applications. Examples are feeds, RSS feeds, web services, mashups.
-   Social Web — defines how Web 2.0 websites tend to interact much more with the end user and make the end user
    an integral part of the website, either by adding his or her profile, adding comments on content, uploading
    new content, or adding user-generated content (e.g., personal digital photos).
-   SLATES - Search, Links to other websites, Authoring, Tags, Extensions(browser), Signals.

Web 3.0

-   Semantic Web - a web of content where the meaning can be processed by machines.
-   Blockchain technology
-   3D graphics
-   Metaverse
-   AI-Powered
-   individual oriented

![img](https://static.tildacdn.com/tild6333-3263-4130-b534-353939636536/web3-5.png)


<a id="orgd22f588"></a>

# IoT

MQTT (originally an initialism of MQ Telemetry Transport) - connectivity protocol on top of TCP/IP.

Apache License 2.0 <https://github.com/home-assistant/core>


<a id="org25b9239"></a>

# Quantum computing


<a id="orge1f460c"></a>

## theory

allowing coherent superpositions of informational states, which, following the quantum principle of
 complementarity, can be thought of as being both corpuscular (particle-like) and undular (wave-like).

exponential speedup or proven quadratically superior

<https://arxiv.org/pdf/2302.08666.pdf>


<a id="org7d3b532"></a>

## Grover's algorithm

-   f:{0..N} -> {0,1} only one index of N gives f(x) = 1, Our goal is to identify N.
-   provides a quadratic speedup O(√N), in classical computation cannot be solved in fewer than O(N).


<a id="org8b40468"></a>

# Quantum cryptography

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Cryptographic Algorithm</th>
<th scope="col" class="org-left">Type</th>
<th scope="col" class="org-left">Purpose</th>
<th scope="col" class="org-left">Quantum Computer Impact</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">AES-256</td>
<td class="org-left">Symmetric Key</td>
<td class="org-left">Encryption</td>
<td class="org-left">Larger Key Sizes Needed</td>
</tr>


<tr>
<td class="org-left">SHA-256. SHA-3</td>
<td class="org-left">-</td>
<td class="org-left">Hash Functions</td>
<td class="org-left">Larger Output Needed</td>
</tr>


<tr>
<td class="org-left">RSA</td>
<td class="org-left">Public Key</td>
<td class="org-left">Signatures, Key Establishment</td>
<td class="org-left">No Longer Secure</td>
</tr>


<tr>
<td class="org-left">ECDSA, ECDH [5]</td>
<td class="org-left">Public Key</td>
<td class="org-left">Signatures, Key Exchange</td>
<td class="org-left">No Longer Secure</td>
</tr>


<tr>
<td class="org-left">DSA [6]</td>
<td class="org-left">Public Key</td>
<td class="org-left">Signatures, Key Exchange</td>
<td class="org-left">No Longer Secure</td>
</tr>
</tbody>
</table>

one-time pad (OTP)  is unbreakable

quantum-resistant or Post-quantum cryptography - public-key algorithms mostly vulnerable.

Now cryptography rely on one of three hard mathematical problems:

-   the integer factorization problem
-   the discrete logarithm problem
-   the elliptic-curve discrete logarithm problem.

Most current symmetric cryptographic algorithms and hash functions are considered to be relatively secure
 against attacks by quantum computers. - doubling the key size can effectively block these attacks.


<a id="org79ab7cd"></a>

## links

-   <https://michaelnielsen.org/>
-   <https://www.kicksecure.com/wiki/PQCrypto>


<a id="orgb089acd"></a>

# AI tools for code

**Daikon** is a computer program that detects likely invariants of programs. C, C++, Java, Perl, and IOA
 programs, as well as spreadsheet files or other data sources.

Facebook **SapFix** auto find and fix bugs, steps:

1.  Auto triage (bug detected)
2.  Trigger patch generator (Triggers)
3.  Fix Patch Generator
    -   Revert Full Diff
    -   Revert partial diff
    -   Template
    -   Mutation
4.  Validated revision


<a id="org7c50f62"></a>

# How to Read a Paper <a id="orga308f5d"></a>

3 pass approach:

1.  general idea 5-10 minutes
    -   carefully read: the title, abstract and introduction.
    -   read: section and sub-section headings. But ignore everythong else.
    -   read the conclusion.
    -   glance over the references, mentally ticking off the ones you've already read.
2.  to grasp the paper's content, but not its details. Ignore details like proofs.
    -   look carefully at the figures, diagrams, especially graphs.
    -   Are results shown with error bars, so that conclusion are statistically significant?
    -   Remember to mark relevant unread references for further reading (this is a good way to learn more about the background of the paper)
3.  in depth

At the end of 1) you should be able to answer the five Cs:

1.  Category: What type of peper: measurement paper, an analysis of an existing system, a description of a research prototype?
2.  Context: Which other papers is it related to? Which theoretical bases where used to analyze the problem?
3.  Correctness: Do the assumptions appear to be valid?
4.  Contributions: What are the paper's main contributions?
5.  Clarity: Is the paper well written?

link <http://ccr.sigcomm.org/online/files/p83-keshavA.pdf>


<a id="orge0faa5c"></a>

# knowledge management

<https://github.com/docmost/docmost>


<a id="org22d82d7"></a>

## terms

-   **semantic constrains:** not just keep the data clean, but also allow logical reasoning on the data. Ex:
    classes cannot have any instances in common, relation comes with a domain and range constraint, meaning that
    a relation such as birthPlace can apply only to a person and a place, people can have only two parent,
    relations such as capitalOf or headquarter or population are not applicable to instances of the class
    Person.
-   **ontologies:** a formal representation of the entities and their relationships.
-   **Semantic enrichment processes:** involve NLP to identifying individual objects and understanding the
    relationships between them.
-   **Entity alignment:** to connect different knowledge graphs together, resolving which entities from disparate
    graphs correspond to the same real world subject.  use these structural similarities between generally
    non-isomorphic graphs to predict which nodes corresponds to the same entity.
-   **Graph Representation:** items of graph for ML learning.
    -   for node-level representations, it is possible to obtain edge or graph-level information.
    -   For edge-level information, you  can concatenate node pair representations or do a dot product.
    -   For graph-level information, it is possible to do a global pooling (average, sum, etc.) on the
        concatenated tensor of all the node-level representations.


<a id="org9cfcb3c"></a>

## problems

what made knowledge sharing?

-   solution: knewledge management at personal level first


<a id="orgb3214f4"></a>

## Knowledge - Nonaka & Takeuchi spiral

**Explicit knowledge** is the type of knowledge that can be easily articulated, written down, and shared with
 others. It is objective, logical, and technical in nature.

**Tacit knowledge** (silent) - embedded in the human mind. It is subjective, cognitive, and experiential.

Spiral - interaction between explicit knowledge (right) and tacit knowledge (left).

-   Internalization - team building, dialogue
-   Combination - team building, learning by duing
-   Externalization - linking explicit knowledge, dialogue
-   Socialization - linking explicit knowledge, team building

![img](imgs/knowledge-spiral.png)


<a id="org822c8db"></a>

## Self notes


<a id="org3bf1669"></a>

### Zettelkasten in obsidian

Zettelkasten in German means “slip box” - all notes are contained within ONE slip box, and are linked between
 them. Designed to spart new insights.

Has been democratized with “How to Take Smart Notes”, by Sönke Ahrens. Types of notes:

-   **Fleeting notes:** raw, unfiltered reminders of things we want to remember.  only useful if you change them
    into something else. **Have not context.** No connections. Don't expire should be deleted manually.
-   **Permanent notes:** “connected” notes.  Each note should be useful in isolation and linked to other notes in
    the system. These notes should be revisited and reorganized to ensure that they are well-connected to other
    relevant notes and that they remain relevant and useful.
-   **Literature notes:** “connected” notes, notes while reading, turn every idea I take from the book into a
    stand-alone note.

At the end of every day to go through the fleeting notes and refactor at least one or two.

Folder structure: Start with a FLAT structure. Ditch folders.

Create connections between notes by asking questions such as:

-   How does this idea fit into what I already know?
-   Can this be explained by something else?
-   What does X mean for Y?
-   How can I use this idea to explain Z?

**Distillation**: The process of revisiting and reorganizing notes involves distilling the main ideas and
 concepts from fleeting notes and literature notes. This helps to refine and develop ideas, making them more
 coherent and interconnected.


<a id="orgc1eafb9"></a>

### PARA Method

PARA allows you to not only sort out your notes, but also your files on your cloud or computer.

Designed to organizing files and information for a specific project.

**just-in-time linking** - practice of creating links between notes and other digital information as needed,
 rather than creating a complex network of links upfront.

Organizing Information into Four Categories:

-   Projects: Active projects with specific goals and deadlines.
-   Areas: Ongoing areas of responsibility without set deadlines.
-   Resources: Topical interests and general knowledge.
-   Archives: Inactive items from the other three categories. (not actionable at all.)


<a id="org39e8715"></a>

## LLMs stored knowledge

Interconnected maps.

concepts and features that are represented across many neurons.

Millions of Concepts: Researchers have identified millions of concepts represented inside LLMs, such as
 entities, attributes, and relationships.

Features may be images, names, and descriptions, etc and **abstract features** that respond to higher-level
 concepts, such as bugs in computer code, discussions of gender bias, and conversations about keeping secrets.

Each concept is represented across many neurons, and each neuron is involved in representing many concepts.


<a id="orga0c01e0"></a>

## knowledge graph

Knowledge graphs are one of the best ways to connect and make sense out of information from
 different data sources, following the motto of one of the vendors— “It’s about things not strings”.

Fundamental features:

-   permutation invariance - entities not ordered

Consist of:

-   thesaurus or dictonary
-   taxonomy
-   ontology

Concepts have CUI (Concept Unique Identifiers) and those will be primary keys in nodes.

Knowledge graphs may make use of ontologies as a **schema layer**, this allow logical inference for
 retrieving implicit knowledge rather than only allowing queries requesting explicit knowledge.


<a id="orgdd12d98"></a>

### implementations

-   embeddings
-   tensor or adjacency matrix of entities and relations.
-   Graph Neural Networks (GNNs) - node embedding and edge prediction

<https://huggingface.co/blog/intro-graphml>


<a id="orgc9cbd1f"></a>

### semantic network

just like KG, but KG is more advanced, have properties and attributes of the entities.


<a id="org7c72c07"></a>

### example YAGO

large general knowledge base on RDF.

-   has a taxonomy and a predefined schema, predefined and non-redundant relations, and logical constraints.
-   50 million instances.
-   have human-readable identifiers, clean top-level taxonomy,
-   top-level taxonomy of YAGO is taken from schema.org

<https://suchanek.name/work/publications/eswc-2020-yago.pdf>


<a id="orgdc5dae9"></a>

### example Unified Medical Language System (UMLS)

compendium of many controlled vocabularies

Medical Text Indexer (MTI)


<a id="org3d07564"></a>

### GNNs

designed to learn and reason over graph-structured data, aggregate information from neighboring nodes and
 edges, allowing them to capture intricate relationships within the graph

-   handle complex reasoning tasks over large-scale KGs,
-   reduces the complexity of matching the right KG elements to a user prompt.

Comparison to other models: A CNN can be seen as a GNN with fixed neighbour sizes (through the sliding window)
 and ordering (it is not permutation equivariant). A Transformer without positional embeddings can be seen as
 a GNN on a fully-connected input graph.


<a id="orgfa83f8a"></a>

## knowledge organization systems, concept system or concept scheme

For knowledge management (creating, sharing, using) and retrival.

interaction between explicit knowledge and tacit knowledge:

The Knowledge Spiral as described by Nonaka & Takeuchi.


<a id="org81bd05e"></a>

### links

-   retrival <https://en.wikipedia.org/wiki/Knowledge_retrieval>
-   <https://en.wikipedia.org/wiki/Knowledge_management>


<a id="org76c1d86"></a>

# подбор персонала

1.  нет ни хороших не плохих - есть кто подходит и те кто не подходит
2.  в большинстве методов нет правильных ответов, но есть подходящие и не одходящие ответы
3.  чтобы сделать вывод об интервью нужно его првоерить минимум три раза и использвать разные подходв во время интеврью
4.  нет идеальных = важно устанавливать приоритеты
5.  знание и навых принципильно разные вещи
6.  адаптировать определенную мелодику к конкретной компании
7.  понять стратегические и тактические цели предприятия и оценивать исходя их них


<a id="orgbfe81b9"></a>

## узнать насколько специалист хороший

-   какими профессиональными качествами гордится, и главное, где они используются, для чего
-   уровень знания английского
-   рабочая операционная система
-   текстовы редактор, наличие собственных записей, публикаций


<a id="org2933fda"></a>

# ораторство


<a id="org3a74956"></a>

## my

Ted-talks
Вам не нужно будет переживать как начинать, вести и заканчивать беседу или выступление

-   Чувствовать уверенность при выступлениях и коммуникации.
-   Говорить убедительно и выразительно.
-   Удерживать внимание слушателей.
-   Раскрыть внутренние резервы и трансформировать ограничивающие установки.
-   Настроить звучание голоса .

в формате «Ted-talks» <https://www.ted.com/talks>

what
  • Развитие ощущения самодостаточности при общении.
  • Снятие телесных "зажимов", обретение достаточного уровня мышечной свободы, достижение спонтанного движения.
  • Постановка правильного речевого дыхания,
  • Развитие тембра голоса, полётности звучания, речевой активности, звучания на опоре.
  • Поза и жесты выступающего,
  • Зрительный контакт,
  • Перемещение по сцене.
  • Развитие навыков речевой импровизации - как говорить о чём угодно и делать это интересно.
  • Как "разогнать" мышление и достичь необходимой фокусировки.

параметров харизматичного оратора как:

-   • Артистизм, состояние позволения.

• Повышение чувства уверенности в себе,
• Управление своим эмоциональным состоянием во время публичной речи.
• Развитие креативности, выразительности речи.
• Повышение энергетики и убедительности.
• Выразительность речи, воздействие на зрителя,
• Удержание внимания зрителя.
• Творческого мышления.
• Мастерство ответов на вопросы аудитории, ответы в формате интервью
• Генерирование аргументации,

Мастерство презентаций, структура выступления.


<a id="org99ee0e8"></a>

## Пётр Безруков — тренер по ораторскому искусству


<a id="org7ed46d8"></a>

### sell

petrruha@yandex.ru

Добрый день!
Ссылки на видео в ютуб:

1.  

<https://youtu.be/hF4958I4XFc>
1.2
<https://youtu.be/HPDqgao4qNs>

1.  

<https://youtu.be/rEXb09fWX2Y>

1.  

​​​​​​​<https://youtu.be/FuFysH2My68>

1.  

​​​​​​​<https://youtu.be/NRuYrTggyww>

1.  

​​​​​​​<https://youtu.be/IfuvXZ8a3xA>

1.  

​​​​​​​<https://youtu.be/xtwUvmv1m4o>

Конспекты и чек-листы
<https://disk.yandex.ru/d/vqQd6t-4-mtRVA>

Так как этот пакет включает контроль выполнения заданий (но это по желанию), выполненные задания присылайте в телеграм по номеру 89205557141
Энтузиазма и впечатляющих результатов Вам в этом путешествии в мир ораторского искусства!


<a id="orgbf52717"></a>

## wikihow

-   изучить тему - знать аргументы обоих сторон
-   знать цель
-   подходы убеждения - нравстенность, эмоции\\чувству, логика
    -   мотивировать людей тем, что их уже мотивирует
    -   знать аудиторию - отталкиваться от их позиции
-   вступление - захват внимания, общее с аудиторией, я крутой, моя цель, шутка?
-   доказательства и коментарии контраргументов
-   завершение речи - призыв к действию
-   отрепетировать перед зеркалом или друзьями
-   расслабься - дружелюбно, зрительный контакт, перемещаться но не ерзать,

поведение

-   осанка
-   невозмутимость
-   членораздельность! не спеша
-   скороговорки - подчеркивать слова
    -   «Во дворе трава, на траве дрова». (Повторите).
    -   «Карл у Клары украл кораллы, а Клара у Карла украла клорнет».
    -   «Шла Саша по Осташковскому шоссе и сосала сушку»
-   Читайте вслух
-   <https://ru.wikihow.com/%D1%83%D0%BB%D1%83%D1%87%D1%88%D0%B8%D1%82%D1%8C-%D1%87%D0%B5%D1%82%D0%BA%D0%BE%D1%81%D1%82%D1%8C-%D1%80%D0%B5%D1%87%D0%B8>
-   <https://ru.wikihow.com/%D0%BD%D0%B0%D0%BF%D0%B8%D1%81%D0%B0%D1%82%D1%8C-%D1%83%D0%B1%D0%B5%D0%B4%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%83%D1%8E-%D1%80%D0%B5%D1%87%D1%8C>
-   <https://ru.wikihow.com/%D0%BF%D0%B5%D1%80%D0%B5%D1%81%D1%82%D0%B0%D1%82%D1%8C-%D0%BC%D1%8F%D0%BC%D0%BB%D0%B8%D1%82%D1%8C-%D0%B8-%D0%BD%D0%B0%D1%87%D0%B0%D1%82%D1%8C-%D0%B3%D0%BE%D0%B2%D0%BE%D1%80%D0%B8%D1%82%D1%8C-%D0%BE%D1%82%D1%87%D0%B5%D1%82%D0%BB%D0%B8%D0%B2%D0%BE>


<a id="org7259b50"></a>

## споры, переговоры


<a id="org47a6f8a"></a>

### переговорщик

1.  перейти на язык оппонента
    -   проблему эффективной коммуникации
2.  продемонстировать уважение к его требованиям
    -   анализу существующих интересов
    -   свои интересы следует сформулировать и показать их важность для вас
3.  предложить вариант решения проблемы, учитывает интересы оппонента

Участники выбирают сигналы, а не переговоры, как путь наименьшего риска и наименьших обязательств.

-   Помните о тех позитивных целях, которые привели вас за стол переговоров.
-   наглядно демонстируйте партнеру готовность совместно искать приемлемое для всех решение
-   Вовлекайте партнера в процесс выработки решения
-   выразите готовность признать точку зрения оппонента.
-   Делайте разграничение между участниками и предметом переговоров.
-   Сосредоточьтесь на интересах, а не на позициях.
-   Разрабатывайте взаимовыгодные варианты.
-   Настаивайте на использовании объективных критериев.
-   сбить первые требования террористов, чтобы в дальнейшем не следовать их сценарию. Зато последнее требование
    нужно постараться удовлетворить, тогда террористу психологически будет легче сдаваться. ("спасение лица
    противника")
-   Будьте тверды, говоря о проблеме, но мягки с людьми.
-   Станьте на их сторону, Переформулируйте, Постройте золотой мост, Используйте силу для воспитания.
-   чаще: "Да, здесь вы правы", "Да, здесь с вами следует согласиться". Это же "да" должно присутствовать и в
    невербальной форме.

урок Путина: переговоры могут раскрыть планы и упустить эффект неожиданности

Эффективная тактика - завышение требований в начале.

Проблемы переговоров:

-   Люди часто говорят непонятно.
-   Люди часто не обращают внимания на ваши слова.
-   Люди часто понимают не то, что на самом деле было сказано.
-   пять возможных барьеров на пути к сотрудничеству: Ваша реакция, Их эмоции, Их позиция, Их неудовлетворенность, Ихсила.
-   Люди не любят высказывать свои соображения, но очень любят критиковать чужие.
-   люди не идут на уступки, боясь показаться проигравшими. Решения:
    -   покажите, что изменились обстоятельства
    -   обратитесь за рекомендацией к третьей стороне (общий начальник, общий друг;)
    -   укажите на справедливый стандарт

Ошибки:

-   Посредник - ненужный человек
-   Не я здесь главный
-   не оскорблять и не уничтожать что-либо относящееся к против. стороне


<a id="orgaf87c86"></a>

### техника контейнирования

например: «я вижу, что тебя это расстраивает» или «похоже, тебя сильно злит, что…». Это поможет человеку
почувствовать себя услышанным и выпустить пар, после чего он будет более расположен к дальнейшему диалогу.


<a id="orgb0471a5"></a>

## war


<a id="orgd9dddfa"></a>

### 4 подготовительных пункта

1.  Смиритесь со всеми исходами, как успешными, так и нет. Если у вас не получится переубедить

конкретного человека — ничего страшного не случится.

1.  Помните, что ваш собеседник — человек. Его жизнь уникальна и бесценна. В людях, не

поддерживающих борьбу с войной и диктатурой, слишком легко увидеть монстра и врага. Но с таких
позиций разговор не пойдет. Держите в голове, что вы оба — люди, а значит — союзники.

1.  Не надейтесь, что тщательно подобранные железные аргументы сразу переубедят собеседника. Если

он не убежденный рационалист, то на подсознательном уровне ценит свои убеждения больше, чем
правду. Поэтому процесс будет постепенным. Если вы видитесь редко или единожды — вы максимум
посеете зерно. Если это ваш друг или родственник, то будьте готовы переубеждать его месяцами.

1.  Ни в коем случае нельзя эмоционировать, тем более — быть агрессивным. Если чувствуете, что не

получится — лучше отложить разговор. Победить безумие можно разумом, но не криками или
обвинениями.


<a id="orgb87d2f6"></a>

### беседы 1

1.  Найдите точки соприкосновения.

Они гарантировано есть, и их, скорее всего, много. Это может быть ценность жизни, плохое
руководство, коррупция или низкие зарплаты. Мы все живем в одной реальности, и проблемы у нас
общие. Так вы покажете, что не очень-то уж отличаетесь друг от друга.

1.  Попросите собеседника как можно короче и точнее сформулировать его позицию.

"Война плохо, но если бы не мы, то нас", "во всем виновата Америка", "не будь наивным, это просто
деньги". Важно, чтобы вы четко поняли эту позицию и чтобы собеседник закрепился на ней, а не
плавал. После этого говорите, отталкиваясь именно от нее. Если виновата Америка, то говорим про
вину, если "они первые"  — то только про готовящееся нападение и т.д.

1.  Спросите у собеседника, какие факты и данные смогли бы убедить его в том, что он ошибся. И

наоборот: какие события в будущем он ожидает увидеть, если верна именно его точка зрения.

Если собеседник не смог ответить — все нормально. Эти вопросы задают себе ученые, когда строят
гипотезы, а гипотеза "Путин — хороший" ненаучна. Так вот, если он не смог ответить, вы можете
мягко указать на эту странность.

Если же вам четко ответили, то ответ должен задать вектор беседы. Ведь теперь вы знаете, какие
подобрать аргументы для разрушения гипотезы собеседника и какой дать другой прогноз на ближайшее
будущее. И если сбудется ваш прогноз, а не его, то вы получите еще один хороший аргумент для
дальнейшего переубеждения оппонента.

Продолжение инструкции после того, как вы обсудили направление разговора — в следующем, финальном
посте!


<a id="orgd01eb1f"></a>

### беседы 2

1.  Меньше утверждайте, чаще спрашивайте.
    
    "А откуда это известно?", "почему ты веришь им?", "это точно именно так работает?" Главное —
    постараться задавать их искренне, без издевки (хотя она и может напрашиваться). Рано или поздно
    человек начнет противоречить сам себе, тогда укажите на это. Схема, кстати, работает со всеми,
    кто верит в чушь с научной и логической точек зрения.
    
    1.  Ссылайтесь на факты, упомянутые кем-то.
    
    Причем в идеале не "Медузой" и Кацем, а знакомыми. И неважно, если сами знакомые тоже смотрели
    именно Каца или вообще выдуманные.
    Здесь и вообще в процессе стоит упоминать, что так же, как вы, думает много людей. В идеале —
    кумиры или знакомые собеседника, но можно приводить просто уважаемых многими людей.
    
    1.  Если вдруг собеседник сошлется на то, что показания очевидцев, просто знакомых и кумиров —
    
    ненадежны, поздравляем! Тогда уже можно начать ссылаться на нормальные авторитетные источники. Но
    только в такой последовательности.
    
    1.  Если собеседник сам спросит вас о чем-то.
    
    Будьте готовы ответить четко, коротко и убедительно. Особенно проработайте такие частые запросы,
    как: "Путин Россию поднял", "Россия же не может проиграть", "мы станем сверхдержавой", "в других
    странах все так же" и "а как ты видишь будущее".
    
    1.  Если собеседник — ваш знакомый, будьте готовы повторять такую беседу много раз. Если нет —
    
    смиритесь, что, скорее всего, никогда не узнаете, был ли у ваших трудов результат.
    
    Дополнение:
    
    Если беседа проходит публично, приводить авторитетные источники стоит вне зависимости от
    готовности собеседника их принять. А свидетельства знакомых и очевидцев стоит приводить с
    оговоркой о том, что они не являются вескими свидетельствами.


<a id="orgc1bd91c"></a>

# Тимлид Team Leader & Техлид Technical Leader

**Резкие движения у чекистов — дурной тон**. Леонид Парфенов.

**хамство** - выражение пренебрежения, неуважения, превосходства по отношению к речевому партнеру.

Техлид — роль, инженер оказывается в команде самым **опытным и инициативным**, становится
 **неформальным лидером** и начинает продвигать совершенствование инженерых практик.

-   Она может быть формальной, и может быть и номинальной, все зависит от проекта и команды.
-   в классическом Scrum, например, нет роли техлида.
-   Технический долг — это несделанная в проекте работа, которая будет мешать его развитию в будущем, если так
    и не будет выполнена.
-   Управление техническим долгом — это его постоянный поиск, подсчёт стоимости и постепенное устранение.
-   60% времени уходит на управление, а 40% на ревью и ресерчи.
-   Техлид — это упор на Hard-скиллс, а тимлид — на Soft-скиллс,

тимлид

-   создает **продуктивную атмосферу** эффективного взаимодействия
-   **достижения бизнес-результатов**.
-   слаженную работу
-   служит связующим звеном
-   работает в связке c PM
-   самоощущение, ответственность, внутренняя культура, естественная мотивация

Базовый набор Soft-скиллс:

-   Поиск и подбор кандидата, собеседование.
-   Постановка личных целей.
-   Стратегическое видение развития.
-   Отношения с людьми: эмпатия и эмоциональный интеллект.

Базовый набор Hard-скиллс:

-   Знание языков разработки и опыт программирования. Знание сопутствующих и окружающих этот стек технологий.
-   Понимание архитектуры проекта: принципы проектирования архитектуры, паттерны и инструменты.
-   Процессы и инструменты тестирования. Оптимизация тестирования, метрики и мониторинг.
-   Управление инцидентами.

Принимать решения по:

-   Текстовые редакторы и интегрированные среды разработки.
-   Инструменты для создания схем в разных графических нотациях и офисные программы.
-   Системы управления задачами и проектом.
-   Системы управления знаниями и документаций.
-   Системы управления версиями кода и инструменты CI/CD.
-   Системы контейнеризации и инструменты DevOps.
-   Системы мониторинга и управления инцидентами.
-   Серверные операционные системы и их сервисы.
-   Скрипты и собственные наработки кода.

Личные качества

-   самостоятельность,
-   ответственность,
-   гибкость,
-   трудолюбие,
-   целеустремленность,
-   пунктуальность,
-   терпеливость,
-   стрессоустойчивость,
-   коммуникативность,
-   дипломатичность,
-   креативность,
-   инициативность,
-   адаптивность.


<a id="orga2bccc1"></a>

## Шаги к тимлид

1.  Инженер: дают одного ученика
2.  Руководитель группы: Дают чать проекта, которую вы полностью понимаете: 3 бэкэнд, 1 фронтенд, 1 тестирование людей
3.  Руководитель отдела: бэкэнда или фронтенда, человек 10-20 ревью кода, 50 человек - не трогать год.
4.  Руководитель департамента: например разработки - бэкэнда, фронтенда, мобельная разработка, тестирования
    нагрузочное и интеграционное.
    
    -   нужно понимать во всех: в мобильности и тестировании
    -   нужно сделать компоненты повторно испольуемыми
    -   бизнес-логика - как связаны компаоненты фротенда и бэкэнда
    -   системный архитектор - оперирует понятиями програмно аппаратного комплекса - добавляется инфраструктура:
    
    масштабирование, отказоустойчивость, производительность
5.  Технический директор (СТО: chief technical/technology officer) -
6.  ИТ директор (CIO: Chief Information Officer) - топ-менеджер, который отвечает за информационные технологии (ИТ)

исполнительный директор (CEO, Chief Executive Officer) - ключевое должностное лицо в организации, которое
 несет ответственность за построение бизнес-концепций. топ-менеджер: председатель правления, генеральный
 директор, главный администратор или иной руководитель, ответственный за управление всей организацией.


<a id="orge7b6067"></a>

## hackhaton x5 tech ai hack teamlead

1.  если оставить человека без четкой задачи он все равно не будет генерировать идеи, нужно раздавать задачи раньше
2.  если человек не успевает, он сильно комплексует и не дает обратную связь и отчет.
3.  правила которые ты ждешь от них лучше доносить пресонально с подтверждением и всеми возможными вариантами событий.
4.  Со временем люди работают меньше, а не больше. Поэтому нужно оценивать по первичной работоспособности.
5.  Человек с пустым гитхаб аккаунтом не программист

Перед началом нужно подготовить рабочий компьютер у каждого участника. Удаленная разработка слишком медленная.

Недостатки хакатонов:

-   датасеты с ошибками, нужно повторить ошибки чтобы победить
-   организаторы дают свой подход и если не следовать ему это почти 100% самоубийство
-   заходить на хакатон нужно только с полной коммандой и в первые дни после объявления
-   важна только скорость любой ценой, чем не контер страйк?
-   в угоду скорости приходится жертвовать безопасностью, а это имеет долгосрочный характер.
-   главная сложность это понять что вообще организаторы ожидают что должно быть сделано.


<a id="orgf503462"></a>

## Tips from womans leaders

-   Balancing approachability and authority: actively listening, culture where you are approachable because it
    is authentic, creating safe place for people where they can come and say what they think freely.
-   Mentorship relationships don't need to be formalized
-   menopause


<a id="org5865280"></a>

## links

<https://habr.com/ru/company/agima/blog/566908/>
<https://habr.com/ru/company/agima/blog/558060/>


<a id="org4281776"></a>

# Team - работа на заказ

\#ПРОМО #Услуга #Developer #Frontend #Backend #QA #Fullstack #Solidity #Crypto

Команда профессионалов ищет проект мечты, чтобы строить будущее вместе

Мы — три профессионала, которые хотят помочь создать следующий большой проект, способный стать единорогом. У нас есть опыт, амбиции и драйв, чтобы вместе с вами реализовать мощный продукт.

Кто мы?

▪️Влад — Team Lead, Senior Backend + Solidity Dev.
▫️Умею проектировать сложные системы, администрировать сервера, настраивать CI/CD, писать смарт-контракты и даже работать с ИИ.
▫️В прошлом — CEO международного проекта. Разбираюсь в бизнес-процессах, умею считать юнит-экономику и оптимизировать бюджеты.
▫️Английский: Fluent (C1-C2)

▪️Никита — Senior Frontend Dev.
▫️Специалист по созданию красивых, удобных и высокопроизводительных интерфейсов.
▫️Мастерски владею Next.js, Nuxt.js и другими современными инструментами, чтобы превратить идеи в вау-результат.
▫️Английский: Intermediate (B1)

▪️Сергей — QC/QA инженер.
▫️Профессионал в тестировании криптопроектов, P2P-сервисов и биржевых решений.
▫️Глубоко понимаю механику транзакций и криптоинфраструктуры, что позволяет находить слабые места до того, как их найдут пользователи.
▫️Английский: Intermediate (B1)

▪️В нашем пуле есть дизайнер на part-time, чтобы проект выглядел ярко и современно.

▪️Наш стэк:
▫️Языки и бэкенд: Python, JavaScript, Rust, Node.js.
▫️Фреймворки: Django, FastAPI, Celery, Next.js, Nuxt.js.
▫️Базы данных: SQL, NoSQL.
▫️Смарт-контракты и блокчейн: Solidity, Foundry.
▫️DevOps и инфраструктура: GitLab, CI/CD, Unix, AWS.
▫️Процессы: Jira/Confluence.

▪️Почему мы?
Мы не просто команда, которая хочет что-то “сделать на заказ”. Мы ищем единомышленников, чтобы вместе с вами создать продукт, который станет большой историей успеха.

▫️Готовая слаженная команда: нас трое, мы идеально понимаем друг друга и готовы сразу включаться в работу.
▫️Строим процессы: agile-спринты, контроль бюджетов, разработка и поддержка — все возьмем на себя.
▫️Быстро учимся: подхватываем новые технологии и легко адаптируемся к вызовам проекта.

▪️Мы рассматриваем проекты только:
▫️С подтверждаемой финансовой моделью.
▫️Или с выходом на VC и четкой стратегией масштабирования.

Контакты: @vlad<sub>problockchain</sub>


<a id="org35cc5a5"></a>

# управление проектом - мэнеджмент - Project Management - product manager

человек от которого бизнес ждет денег - человек выскочка

-   planning
-   procurement (снабжение, покровительство)
-   execution of a project or any undertaking that has a defined scope, defined start and a defined finish

also

-   first point of contact for any issues
-   reduces the risk of overall failure, maximizes benefits, and minimizes costs
-   main: accomplishing the project objectives

stakeholders - the party with the most direct and obvious interest at stake (person or organization that has a
 legitimate interest in a project or entity)


<a id="org6d126a7"></a>

## beginers steps and advices for june:

-   предсказуемость команды - отвечать на вопрос когда - убрать стенку между с бизнесом / командой и делать
    совместный конвеер
-   область отвественности, за что отвечает. Для чего он и его команда существуют?
    -   время или безопасность или внешний вид - что нужно для конкурентного преимущества?
    -   для чего нужен менеджер, может: собрать команду, выстраивать процессы, антикризисный менеджмент
    -   выяснить все обещания, все дедлайны, планы. Выполнить их или закричать, что несогласны! Менять через 3 месяца.
    -   обещания внутри команды, которые вам не передали.
-   помогать людям - главная задача менеджера.
-   культура - в зависимости от места нужны разные люди. У людей разные ценностные ориентиры. Нужно праваильно
    подобрать людей под культуру компании под ценности. Если подобрать неправильно, то чтобы людей “залайнить”
    между собой будет уходить много времени и люди будут переступать через себя и будут несчастливы.
-   научиться пользоваться календарем.
-   научиться говорить нет - не делать то что ты не должен делать, ценить свое время.
    -   говорить нет любя, ругать не поднимая голос и не оскорбляя и не унижая.
-   Не потерять доверие - команды и кому ты репортишь.
    -   репортишь - быть прозрачным: проблемы рассказал, планы визуализировал. Понятность и прозрачность рождает доверие.
    -   команды - ты пообещал ты сделал, пообещал должен этим руководствоваться. Могут улыбаться потому что нет доверия!
-   научись играть по правилам, потом придумывай свои

Метрики для людей: перформативность и доверие.

-   хорошие тимлиды - на доверии. Понятность и прозрачность рождает доверие.
-   источник авторитета-доверия - что вы выяснили у кого какие проблемы и смогли оперативно их решить.

Проблемы

-   нехватка времени - делегирование, приоритеты. Обращиться за помощью к ментору, что можно не делать. Не
    скатываться в задачи которые понятны.
-   как понять что все хорошо идет - если тебе люди в коридоре улымаются. Регулярно спрашивать-синхронизироваться обратную связь.

Советы:

-   Доверяй команде, не забивай, но жди.
-   Если вас выбрали, значит вы были достойны.
-   Не стисняйся спрашивать совета у всех, переложить проблемы в первое время на руководителя.
-   Не заставлияй других писать код так как ты пишешь, важно только достич результата.
-   Объяснить команде свои решения, чтобы быть прозрачным.
-   Очень много из того что ты знаешь как менеджер нужно транслировать и делиться с командой.
-   Всегда искать круче себя менеджера и ждать когда он будет в состоянии чтобы поделить советом.


<a id="orgcb8fb41"></a>

## guide

seldom participates directly in the activities that produce the result


<a id="orgdef6619"></a>

## Project management triangle or triple constraint, iron triangle and project triangle Тройственная ограниченность

-   The quality of work is constrained by the project's cost(budget), time(deadlines) and scope (features).
-   The project manager can trade between constraints.
-   Changes in one constraint necessitate changes in others to compensate or quality will suffer. Изменения в
    одном ограничении требуют изменений в других для компенсации, иначе пострадает качество.

**The common law of business balance**, usually expressed as "you get what you pay for", is the principle that
 one cannot pay a little and get a lot.

-   STR Model - Scope = f(Time × Resources)
-   Scope - complexity (which can also mean quality or performance)

    
               scope, quality
             /       \
            /         \
           /           \
          /             \
         /               \
    cost  -------------- time, delivery
    
    
               scope
             /       \
    quality-/-------- \-----risk
           \           \/
          / \          /\
         /   \        /  \
    cost  ----\------/-- time
              resources
    
    
    
    
    
    Fast --------  Bad ---------- Cheap
        \                         /-
         \-                     /-
           \-   impossible    /-
        Expensive          Slow
               \-         /-
                 \-     /-
                   \   /
                   Good


<a id="org3f86a40"></a>

## Feedback, shit sandwich, как сказать человеку необидев


<a id="org2c334ac"></a>

### модель SCARF - нейролидерства

-   статус - нельзя принижать статус, чтобы не наказывать, подробная задача показывает внимание к личности
-   определенность - лучше повторить известные факты по времени и данным и какие последствия
-   автономность - давать немного воздуха подышать, чтобы была свобода выбора, делай как хочешь
-   принадлежность - мы тебя любим, ты делаешь что-то ценное для компании, команды, ты часть команды
-   справедливость - справедливая нужная задача, в которой я тоже что-то решил

Пример как говорить:

-   положительный: Вася, когда ты опоздал всера на стендап и не предупредил, вся команда ждала тебя и не могла
    обсудить вопрос.

В следующий раз предупреди, если задерживаешься, мы оставим тебе стикер с вопросами.

-   отрицательный: Аня, молодец. Я впечатлен отчетом. Этот отчет теперь нужен каждый месяц 5го числа. Если не
    будет&#x2026; лучше чтобы он был. Мы с Петей представим его на совете директоров.
    
    -   аня классный отчет там отличный ввывод по компании, не сможем ли мы получить эти данные к 5 числу, как нам
    
    получить эти данные? Отчет будет представлен на совете директоров.

дофамин - удовольствие, картезол - стрес

справедливость: все так делают, это в твоей обязанности, пети тоже это говорили

автономность: если тебя не затруднит

статус:

-   good boy, good girl - обращение к собаке. А кто ты такой, чтобы меня оценивать?
-   good job - похвала
-   спасибо - говорить, если делал это по заказу, если для себя - спасибо как будто забираешь.

**Давай вместе покрутим** - полезная фраза.

чтобы обратная связь не была не "*ногов в дверь*" - нужно прогреть 10 минут - раскажи что там было, что
 делал. 11 минут на обратную связь. Остается прогретой в районе 6 часов.


<a id="orge942247"></a>

### ip picnic

-   получите разрешение на обратную связь
-   закончить похволой, перечислить несколько достоинств
-   концентрация на главном
-   хвалить публично, отрицательное - в узком кругу
-   тщательно подготовить meeting agenda (latin. agenda (pl.) “things to be discussed/done”)
-   говорить только на языке фактов, приводить конкретные примеры
-   держать баланс "прямота-поддержка"
-   обратная связь - всегда диалог. Предложите оппоненту высказаться.
-   ищите то, в чем вы можете с ним согласиться
-   найдите общее решение, проговорите его и убедитесь, что оно устраивает обе стороны
-   поблагодарите за встречу и отправьте рекап с договоренностями


<a id="org378f0cc"></a>

## управление ходом проекта

-   Яндекс трекер
    -   у каждой таски есть чеклист - DO

Delivery and Descover отдельно удобнее


<a id="org28f4dc4"></a>

## Task assignment

SMART

-   **Specific:** avoiding ambiguity.
-   **Measurable:** This helps in evaluating whether the goal is being met.
-   **Achievable:** check available resources and constraints
-   **Relevant:** align with other business objectives and be worthwhile
-   **Time-bound:** deadline or timeframe for completion. Urgent or not? Requre focusing or not?

CLEAR:

-   **Collaborative:** Involve relevant team members in the task definition.
-   **Limited:** Define the scope and boundaries of the task.
-   **Emotional:** Consider the emotional impact of the task on team members.
-   **Achievable:** Ensure the task is realistic and attainable.
-   **Refinable:** Allow for adjustments and refinements as needed.

OKRs (Objectives and Key Results):

-   **Objectives:** Define what you want to achieve.
-   **Key Results:** Quantify the objectives with specific, measurable outcomes.


<a id="orgd9d459e"></a>

## project vs product vs scrum-master &#x2026;. roles.

project manager - что? зачем?
product manager - как? когда?

roles:

-   аналитик - знает архитектуру, декомпозирует, следит за техдолгом, следит за документацией
-   инцидент менеджер - следит за процессами, смотрит логи
-   проектный менеджер - управляет стекхолдерами, составляет план, обеспечивает согласования, обеспечивает прозначность
-   scrum master - строит процессы, меняет процессы
-   лидер - строит команду, наставляет, задает цели, мотивирует

Scrum-Master
delivery-manager
project-manager
team lead
technical PM


<a id="org5d8290b"></a>

## цели бизнеса

1.  рост доходов - чтобы направление приносило больше денег
2.  снижение расходов - резать издержки
3.  увеличение продаж - улучние показателей присейла
4.  увеличение лояльности клиента - выполнение обещаний и превосходство ожиданий, чтобы клиенты покупали чаще,
    больше и вели новых клиентов

подцели

1.  Сбор и мотивация команды победителей, а не трухлявых пней
    -   ты должен открыто заявить, что с этим кадром результатов не будет
    -   сам должен найти людей лучше и продвинуть их
    -   уметь договариваться и вести за собой
2.  Иновации и развитие - наше сегодняшнее понимание рынка может быть уже устарело и завтра нас выкинет с рынка

решение

-   


<a id="org7a05d2f"></a>

## как диагностировать проблему

1.  ненужная суета
2.  постоянные переработки или большие затраты на исправление тех вещей, которые изначально должны работать как надо
3.  уровень доходности, не превышающий среднего уровня по отрасти более чем в 2-3 раза


<a id="org3844e87"></a>

## этапы проекта

-   инициация
-   планирование
-   внедрение
-   мониторинг и контроль
-   закрытие проекта


<a id="org182cd5c"></a>

## структура проекта

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-right" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-right">номер задачи</th>
<th scope="col" class="org-left">название</th>
<th scope="col" class="org-left">дедлайн план</th>
<th scope="col" class="org-right">трудозатраты план</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-right">1</td>
<td class="org-left">работа 1</td>
<td class="org-left">не готово</td>
<td class="org-right">&#xa0;</td>
</tr>


<tr>
<td class="org-right">2</td>
<td class="org-left">Контрольная точка 1 "результат подчасти 1"</td>
<td class="org-left">не готово</td>
<td class="org-right">15</td>
</tr>


<tr>
<td class="org-right">3</td>
<td class="org-left">работа 1</td>
<td class="org-left">не готово</td>
<td class="org-right">&#xa0;</td>
</tr>
</tbody>
</table>


<a id="org53d7d5b"></a>

## инструменты управления

junior или middle - не понадобятся все

1.  Стратегические - Карта цели
2.  Тактические
    1.  таблица руководителей с мини целями на спринт
    2.  планирование задач команды на месяц
    3.  доска задач для себя и команды
    4.  Брифинги
    5.  Задачи по SMART - ориентированные на результат (формула делегирование)
    6.  Встречи: ретроспектива
    7.  Устав нетипового проекта
    8.  Обсуждение в облаке
    9.  Инструкции для типовых задач
    10. Бизнес-процессы
    11. Оценки сотрудников


<a id="org94c3a46"></a>

## pm require

-   понимание принципов создания и продвижения продукта
-   опыт проведения клиентских интервью и создания CJM
-   опыт работы с программными продуктами и/или аппаратными устройствами, связанными с акустическим анализом, будет преимуществом
-   знание основ маркетинга и стратегий продвижения продуктов на рынке


<a id="org3ebf8fc"></a>

## AI Guide for Government - AI CoE

3/5/2024 describe "How to structure an organization to embrace AI" for director, managers of AI programs, from
 USA goverment The Centers of Excellence. <https://coe.gsa.gov/coe/ai-guide-for-government/print-all/index.html>

-   business units should innovative technologies to enhance and
    streamline their operations
-   AI is a new tool for tasks, not replacement for jobs.
-   There is a trade-off between performance and generality. The
    more tasks we want a single machine to perform, the weaker its
    general performance becomes.
-   AI should not be approached in a silo: 1) specialized
    integrated product teams that include AI talent as the basic
    unit of operations.
    
    1.  AI workforce should be spread - don't creating central team
    
    of data scientinsts.
-   create \\"Cantral AI technical resource\\" - a hub of AI expertise.
    Information, Security, Data, etc. should support AI resource
    for AI professionals. Used for coordinate.
-   Evolution: 1) AI capabilities with ad hoc infrastructure at most
    required places in organization, 2) several AI centers
    1.  move the AI infrastructure provider to a more accessible part
-   DEIA stands for diversity, equity, inclusion, and accessibility
-   A variety of open source tools are available.
-   Five Vs of data: Volume, Velocity, Veracity, Variety, Variability


<a id="org0987b89"></a>

## методологии

Agile, Scrum, Waterfall, Lean, Kanban


<a id="org723821e"></a>

## tools

Figma, Asana, Notion, Jira, Miro, MS Project

Т-Банк <https://unidraw.io/login> - аналог Miro, интерактивная онлайн-доска, на которой можно разрабатывать стратегии,
 планировать рабочую неделю, вести конспект встречи и работать всей командой удаленно. Для этого в ней
 предусмотрены инструменты для создания графиков, диаграмм, стикеров и пр.


<a id="org18272ad"></a>

## course - eduson academy

1.  Погружение в проектную деятельность
    -   Какой жизненный цикл проходит проект
    -   Какие бывают проекты
    -   В чем заключается проектная деятельность
    -   описать опыт по модели STAR
    -   Как устроена работа продакт- проджект-менеджеров в IT
2.  Методологии управления проектами
    -   Kanban-метод для управления проектами
    -   Введение в SCRUM
    -   Введение в Agile
    -   Принципы бережливого производства
    -   управлять изменениями в проекте
    -   Как выбрать метод управления проектом
3.  Инициирование проекта
    -   Как работать с заинтересованными сторонами
    -   Как ставить цели по проекту
    -   Как инициировать проект
4.  Планирование проекта
    -   Как собрать требования к проекту
    -   план проекта
    -   Как сформировать команду проекта
    -   оценить сроки проекта
    -   бюджет проекта
5.  Управление рисками
    -   Как управлять операционными рисками
    -   Способы оценки и работы с рисками
    -   Введение в риск-менеджмент
    -   способы оценки и работы с рисками
    -   частые риски продакт менеджмента
    -   как отследить прогресс по проекта - какие выбрать метрики
6.  Исполнение проекта - Как управлять командой и процессом реализации проекта
    -   ставить и контролировать задачи в распределенной команде
    -   Как декомпозировать задачи
    -   правильно делегировать задачи
    -   как принять задачу, давать обратную связь
    -   как управлять конфликтами в команде и извлекать пользу из них
    -   Как синхронизировать работу распределенной команды
    -   как вести коммуникацию вне команды
    -   как подготовиться к переговорам
    -   переговоры с заказчиком и работа с подрядчиком
7.  Коммуникация в проекте
    -   Практический кейс: как обсудить перенос сроков с заказчиком
    -   Как вести переговоры с заказчиком
    -   Как подготовиться к переговорам
8.  Контроль и мониторинг проекта
    -   Как вести отчетность по проекту
    -   Как управлять сроками и качеством проекта
    -   Как контролировать проект и управлять рисками
9.  Закрытие проекта
    -   Как защищать проект перед заказчиком
    -   Как правильно закрыть проект для заказчика и команды
    -   Как закрыть проект и подвести итог
10. Работа с инструментами
    -   Как использовать программу MS Project
    -   Таск-менеджеры: Trello, Asana, Jira
    -   Приложение Notion в управлении проектами
    -   Онлайн доска Miro
    -   Интерфейс Figma
11. Особенности проектной деятельности в разных сферах
    -   Как устроена работа проджект-менеджера в
        -   маркетинге и PR
        -   event-индустрии
        -   дата-проектах
        -   GameDev
12. Soft skills
    -   Как создать команду лидеров
    -   Как преодолеть страх публичных выступлений
    -   Серия курсов по тайм-менеджменту
13. Управление инновациями Управление инновациями Управление инновациями Управление инновациями Управление
    инновациями Управление инновациями Управление инновациями Управление инновациями Управление инновациями
    Управление инновациями Управление инновациями Управление инновациями Управление инновациями Управление
    инновациями Управление инновациями Управление инновациями
    -   Цифровая трансформация производства
    -   AI и нейросети: что такое искусственный интеллект и чем он полезен бизнесу
    -   Big Data: что такое большие данные и чем они полезны бизнесу
14. Лидерство
    -   Как использовать критическое мышление
    -   Как развить в себе потенциал лидера
    -   Как быть успешным лидером
15. Классический менеджмент и стратегия
    -   Как управлять людьми, задачами и информацией
    -   Эффективные стили менеджмента
    -   Жизненный цикл организации
16. Финансовый менеджмент
    -   Введение в корпоративные финансы
    -   Как посчитать NPV проекта
    -   Как использовать финансовый показатель EBITDA

asdasd asd asd asd asd asd assssssssssssssssssssssssssssss ssssssssssssssssssssssssssssssssssssssss asdasd asd
 asd asd asd asd assssssssssssssssssssssssssssss ssssssssssssssssssssssssssssssssssssssss asdasd asd asd asd
 asd asd assssssssssssssssssssssssssssss ssssssssssssssssssssssssssssssssssssssss


<a id="org2e676f8"></a>

## Проектные артефакты

план-график, статус-отчет, ПМИ, матрица рисков, change request, протоколы и др.

Supply planning, demand planning, delivery management, inventory optimization


<a id="org8f20abe"></a>

## wiki How to Be a Leader

1.  Qualities
    1.  confident - Acknowledge that you don't know everything, and avoid acting like you're superior to everyone.
    2.  learn abount your field
    3.  find mentor
    4.  manage conflicts - each person's perspective, and remain objective
2.  Effective Leadership
    1.  Be firm, but be kind -  enforce clear rules and boundaries - balance authority with compassion
    2.  Stand by your decisions
        -   Does a decision have to be made right now, or do I have time to discuss this with everyone else?
        -   Will a snap decision compromise morale?
    3.  Delegate tasks and explain roles clearly. - gently correct them
3.  Earning Your Team's Trust.
    1.  Treat your team with respect
        -   Hear them out when they express their opinions, praise them for their hard work, and never use
            inappropriate language.
        -   Remember, you set the tone
    2.  Keep your promises. -  know what's doable and what's not - you're 100% certain you have room in the budget
        -   Ask for feedback from those you lead.
        -   Hold yourself accountable. - When things don't work out as planned, a good leader perseveres.
        -   Dress in a way that's consistent with your role.
    3.  Dress in a way that's consistent with your role.
        -   difference between dressing to impress and dressing to influence.
        -   fit in environment


<a id="orgc129f13"></a>

## Conflicts

это столкновение между сторонами - противоречий, различий, интересов. Эмоциональные сцены - это проявление конфликта.

-   выгодное всем участникам, а не когда одного обижают.

Причины:

-   внутриличностный конфликт - выгорела на работе, не понимаю что со мной происходит.
-   микс различий + разные ценности
-   отсутствие навыков эффективной коммуникации

Большинство конфликтов начинается с борьбы за ограниченный ресурс: автиритет в команде, деньги, интересные задачи.

Сложные конфликты - 1) за правоту 2) страх и агрессия как ответ

Инициатора конфликта что-то не устраивает либо он бунтует, либо пытается сделать лучшее, но не может донести
 свои мысли.

Конфликты это всегда путь обратить внимение на тут точку котоаря болит у людей.

Минусы конфликтов:

-   отнимают энергии и времени
-   всем неприятно, особенно если частые.
-   могут негативно заканчиваться
-   положительное разрешение, когда обе стороны поняли друг друга это очень большая редкость. Как правило это
    компромис, который неудобен никому.
-   межличностный конфликт оставляет осадок.
-   Может привести к микроменеджменту.

Плюсы:

-   являются точкой роста.
-   на стыке мнений рождаются самые правильные решения
-   может сближать - если конфликт разрешился положительно или сближать тех кто на одной стороне против кого-то

Solution:

-   **метод пирога:** озвучивается что объекты/интересы разные и когда обе стороны это поняли нужно поднести что
    каждая сторона, должна помочь другой достигнуть ее цель.
-   **метод волшебника:** а что если бы все это происходило в волшебном мире, где нет никаких ограничений. Найти
    решение. Второй этап - преземление, применить решение учитывая ограничения.
-   профилактика - контракт на взаимодействие, обучать техникам саморегуляции, обучать эффективной коммуникации,
    эмоциональному интеллекту. Практиковать культуру открытости.


<a id="org80c5cd7"></a>

## leader features

-   hidden eyes
-   how you look is more important than what you do
-   never give bad feedback directly

chatgpt says:

-   Compassion: Showing sympathy and concern for others, which builds trust and promotes collaboration.

![img](./imgs/leader-boss.jpg)


<a id="org6ee6e94"></a>

## motivation

-   incentivizing - стимулирующий
-   intrinsic *inˈtrinzik* - внутренний

m

-   **Autonomy:** give employees autonomy over some or all aspect of work. Our business should become a results-only work environment.
-   **Mastery:** “Goldilocks tasks” - neither extremely complex nor simplistic, but they allow workers to stretch themselves and advance their abilities.
-   **Purpose:** to contributing to something more significant than themselves. ex. aligning people's personal goals with organizational goals using OKRs.

![img](./imgs/motivation.jpg)


<a id="org392fa55"></a>

## effective teams

-   **Psychological safety:** environment where members feel safe taking risks, expressing their thoughs and sharing ideas. Open discussions.
-   **Dependability:** team members meet expectations, deliver high-quality work on time, and trust that their colleagues will do the same.
-   **Structure and clarity:** who deas what. without stepping on each other's toes.
-   **Meaningful work:** why, align individual purpose with team goals.
-   **Impact on others:** importants of their work's impact on others, within organization or in the broader community.


<a id="org752118c"></a>

## link

<https://live.skillbox.ru/webinars/management/kak-za-1-5-chasa-nauchitsya-upravlyat-proektom130922/>


<a id="org4263126"></a>

# IT audit

контрольная процедура - проводить тренировки по восстановлению, запускать резервный контур, тестирование

всегда должен быть независимый дублирующий контур: разные ЦОДы, магистральные провайдыре, бэкапы на отчуждаемых носителях


<a id="org8c79533"></a>

## COSO internal control framework

модель COSO - внутренний контроль орг-и как процесс, осущ-й персоналом орг-ии, предн-ый для обуспеч. разум-й уверенности касательно целей


<a id="orgaa2e1d8"></a>

### history

Commission 1985:

-   American Accounting Association
-   American Institute of Certified Public Accountants
-   Financial Executives International
-   The Association of Accountants and Financial Professionals in Business
-   The Institute of Internal Auditors

to help organizations design and implement a system of

-   internal control
-   enterprise risk management
-   fraud deterrence


<a id="orgdd9f771"></a>

# TODO agile and extreme development(XP)

в феврале 2001 года в штате Юта (США) был выпущен <https://ru.wikipedia.org/wiki/Agile_Manifesto>

Гибкая методология (Agile) — это модель процесса разработки ПО с гибким возвратом к любому этапу: если тест
спроектированной модели не дал нужного результата, то разработчик может начать с самого начала.

-   ряд коротких временных отрезков — спринтов, на каждом из которых прогоняются все этапы.

steps:

-   Analysis of requirements -> design or engineering
-   development
-   testing -> deployment
-   feedback from customer -> design or engineering

особенности

-   В конце каждой итерации промежуточный результат демонстрируется заказчику. Итерации заканчиваются, когда
    готов финальный продукт и он устраивает заказчика.
-   Проект планируется только на один спринт. Длительность спринтов — от одной до четырёх недель. То есть вам
    необходимо продумать задачи только на короткий промежуток времени, что сильно повышает точность
    планирования.
-   **Если что-то не получается - просто переходите на новую итерацию и теряете только время, потраченное на один
    спринт, а не на весь проект в целом.**
-   Agile не предусматривает множества формальных документов, в отличие от Waterfall.
-   Главный принцип — люди важнее процессов и инструментов.
-   Agile используется в тех случаях, когда в проекте есть неопределённость. Ни заказчик, ни пользователи, ни
    разработчики пока что полностью не представляют, что должно получиться в итоге.
-   Agile помогает сплотить команду, повысить её эффективность.


<a id="org39f27b7"></a>

## roles


<a id="orgd5d23e6"></a>

## TODO scrum process (image)

Product backlog
Sprint planning meeting
Sprint backlog

Finished wok


<a id="orgf644bed"></a>

## links

-   agile fails: <https://vc.ru/flood/20942-agile-victims>


<a id="orge0016b7"></a>

## TODO Agile+ Lean


<a id="orgcd4c040"></a>

# Kanban - methodologies

introduced by Taiichi Ohno on the floor of the Toyota factory


<a id="org3ec46fc"></a>

## kanban cards

is a visual representation of a work item on a Kanban board.

**Kanban Board**


<a id="orgf6d1791"></a>

# news theory

consent is been manufactured
5 enemy of news
manufactorung consent

lives

-   aljazeera.com  (Qatar) <https://www.youtube.com/watch?v=GEumHK0hfdo>
-   <https://www.channelnewsasia.com/watch> (Singapore)
-   euronews.com/live
-   <https://www.france24.com/en/live-news/>
-   <https://www.indiatoday.in/livetv>
-   <https://www.wionews.com/>  (India) <https://www.youtube.com/watch?v=3JlVqzNSYys>
-   <https://news.sky.com/watch-live> (British) <https://www.youtube.com/watch?v=9Auq9mYxFEE>
-   <https://www.rt.com/on-air/> (Russia)

Russia <https://www.kommersant.ru/>


<a id="orga093f67"></a>

# Company culture


<a id="org65d9072"></a>

## bad company culture:

1.  Poor communication
2.  Ambiguity, lack of transparency, or delayed responses

3.  High employee turnover
4.  Frequent departures signal dissatisfaction

5.  Excessive office politics
6.  Cliques, gossip, and power struggles hinder collaboration

7.  Lack of work-life balance
8.  Persistent overtime and burnout due to unrealistic expectations

9.  Low employee engagement
10. Disinterest, disconnection, and lack of motivation

11. Inadequate recognition
12. Absence of appreciation for employees' efforts and achievements


<a id="orgf193fb8"></a>

## Деловой этикет

Профессионализм программиста:

-   точно оценивать сроки
    -   свое физическое состояние
    -   навыки которые потребуются

Задача от руководства

-   теперь ты руководитель - не зависимо от других
-   должен знать все! - Заранее изнасилуй всем мозг
-   деллигируй ответственность

Твой сервис

-   знать какие сервисы зависят от него
-   риски отключения, некорректности
-   знать возможные периодические процессы обновления
-   как мониторить сервис
-   как протестировать сервисиы от когорых зависит мой

Сделал выводы.
1 Буду сразу жаловаться на все свои пробелы в знаниях обстановки
2 Всегда использовать максимальный звук звонка на телефоне и ноутбуке, и всегда подтверждать получение критичной информации
3 Держать тебя в курсе абсолютно всех задержек
4 Если от меня кто-то получает просьбу, я всегда сообщаю приоритность и сроки. Если не знаю то уточняю у тебя.
5 Внешние задачи всегда самые приоритетные особенно внешние к партнерской организации
6 Нужно решать приоритетные задачи хорошо понимая их требования - скоросить или качество или сторож


<a id="org489e384"></a>

## outreachy.org Standards

Examples of behavior that contributes to creating a positive environment include:

-   Using welcoming and inclusive language
-   Being respectful of differing viewpoints and experiences
-   Gracefully accepting constructive criticism
-   Focusing on what is best for the community
-   Showing empathy towards other community members

Examples of unacceptable behavior by Outreachy community members include:

-   Insulting/derogatory comments
-   Trolling
-   Statements or jokes that exclude based on the demographic groups in the "Diversity is encouraged" section
-   Deliberate intimidation, stalking, or following
-   Public or private harassment
-   Publishing others’ private information, such as a physical or electronic address, without explicit permission
-   Sexual language and imagery
-   Sexual attention or advances towards people under 18 years of age
-   Unwelcome sexual attention or behavior that contributes to a sexualized environment
-   Violence directed against another person, including violent threats and violent language
-   Providing false information on the Outreachy mentor or intern agreement, the internship application, W-9 or W8-BEN forms, third-party payment authorization, or payment authorization request

Outreachy prioritizes marginalized people's safety over privileged people's comfort. The Outreachy organizers will not act on complaints regarding:

-   "Reverse"-isms, including "reverse racism," "reverse sexism," and "cisphobia"
-   The tone or writing style used when responding to harassment, racism, sexism, transphobia, or otherwise oppressive behavior or assumptions
-   Reasonable communication of boundaries, such as "leave me alone," "go away," or "I'm not discussing this with you."


<a id="orge03d424"></a>

# other


<a id="org25b3a26"></a>

## решение задач

-   проверка что задача действительно нужна: например прежде чем улучшать модель, проверить, что старая действительно не идеальна
-   собрать контакты людей от которых зависит задача
-   убедиться, что собрал всю информацию, которая будет нужна от людей.


<a id="org0b4a38b"></a>

## mya

публичный человек никогда не показывает свои тараканы в голове - он идеален и прост

опыт и профессионализм - качества претендента на руководящую позицию. - прорыв - инициатива

Чтобы не было притензий, нужно составить список того, за что я ответственен и дергать всех, кто имеет к этому отношение в цикле.

У руководителя приоритет смещен в область того, что у всех на слуху. Руководитель должен знать аббравиатуры и имена/фамилии.

Если кто-то что-то просить или требует, не важно как, задай вопросы почему и зачем, не отмахивайся.

кредо: гик, халерик, паранок, неудачник, предсказание, нормальный

Никогда не делай прогноз по срокам. Иначе обманешь.

Требуй/жалуйся только чтобы получить руководителя.

Все что ты делашь должно приносить положительный результат и контакты, делай только мэйнстрим.

Не задавай вопрос ради вопроса, а для чего???? Наверное чтобы показать чужие ошибки.

Люди любят пунктуальных, постоянных, надежных, ухоженных, дальновидных.

Когда тебе делают плохо, то потом ищут оправдания в твоих ошибках.

Думай что подумают дураки, а не умные.

Не закапывайся в задачи если хочешь повышение.

В маленьких компаниях получить повышение легко, в больших сложно.

Лень обращаться к кому-то за решением проблемы - основная проблема совместной работы.

В реальности побеждает наиболее экономчиная компания. В цифровой сфере побеждает наиболее выполняющая желания
с наименьшей отрицательной стороной duckduckgo

Должна быть централизованная документация - чтобы каждый сотрудник знал где она

-   потому что при изменении того как пользуемся полем нужно изменить комментарий к полю

Ultimately, building software is a complex and deeply human activity. Everything is contextual and there are
rarely easy answers. Most meaningful progress happens through consensus, compromise, luck, and lots of hard
work. Murilo Pereira ( software engineer working on self-driving technology at Argo AI)

Действовать нужно конструктивно - конечная польза для всех важнее борьбы со злом.

Не бери на себя задачи - раздай указания коллегам создав план действий.

Руководитель должен сразу выбирать лучший вариант - нет места для попыток.

Офис-коворкин - как институт культуры

Презенцацию нужно готовить без посредников


<a id="org6118723"></a>

## Вайна с шаповаловым

**Идет постоянная война всех со всеми. Правила и нормы нравственности борятся с войной**

**Средства войны**

-   собирание контактов, налаживание дружественных и равных отношений с руководством
-   замалчивание информации
-   пользуются тем, что мы погружены в работу, чтобы перехватить инициативу
-   задавать вопросы с целью найти ошибки врага и постоянно на них жаловаться.(не говорить того, что не относится
    к их работе)

**Грань между эгоизмом и правилами**

-   общая выгода, если получаемая выгода больше наносимого вреда

**Слабость**

-   в отсутствии нравственного ориентира и обоснованной позиции


<a id="org6bc1ec7"></a>

## Моя практика общения

-   говорить размеренно и доброжелательно
-   никогда не говорить о своих слабостях
-   У споров самый низкий приоритет
-   Они пытаются вывести тебя из равновесия - не допускать ни одно обидное и резкое слово - смягчать
    -   Никаких эмоций только конценрация на поиске решения для всех


<a id="orgab9d53c"></a>

## нейролингвистическое программирование

Роберт Дилтс -  пирамида логических уровней

-   окружение, то есть среда обитания человека, все явления, люди и обстоятельства, которые его окружают.
-   поведение: все, что связано с действиями, которые человек привык совершать.
-   способности, то есть то, что определяет опыт и навыки человека, его внутренний ресурс и умение им
    пользоваться.
-   убеждения и ценности: уровень, затрагивающий комплекс внутренних правил человека, определяющих его поступки.
-   идентичность: ответ на философский вопрос «кто я?».
-   миссия: этот уровень описывает сверхличностные ориентиры человека, такие как отношение к жизни и смерти, и
    понимание того, как наши действия влияют на других людей.


<a id="org9e7a22c"></a>

## методом Блеза Паскаля

уясните себе, с какой стороны он подходит к предмету спора, ибо эту сторону он обычно видит правильно, затем
признайте его правоту и тут же покажите, что при подходе с другой стороны правота сразу превратится в
неправоту,

люди сердятся не на то, что не все успели разглядеть, а на то, что ошиблись

-   Задавайте оппоненту вопросы: почему он считает именно так, а не иначе, на чем основывает свое убеждение,
    видит ли альтернативы ему?

Когда мы ставим под сомнение эти убеждения и непротиворечивую картину мира, это может вызвать неприятные
переживания. Важно поддержать человека, не переходить на какие-то личные обвинения.


<a id="org5027988"></a>

## Сократический диалог

шаг за шагом проведите собеседника по землям его понимания до ограды привычного, по дорожке мысленных
 экспериментов, через речку сомнений - до границы его познаний. Ваша главная задача - подвести его к этой
 границе с нужной стороны: там где его убеждения прилегают к территориям вашего понимания мира.


<a id="orgdccf063"></a>

## трудные людли

-   Агрессивные -
    -   Танки - диалог на повышенных тонах - не тушеваться и стоять на своем, давать им выпустить пар.
    -   Снайперы - используют подколки - переводить разговор в конструктивное русло
    -   Взрывники - ведут спор, сопровождая его приступами гнева - позвольте им выпустить эмоции
-   Жалобщики - видят личное оскорбление - дать понять, что его слышат, и просить рационализировать все, что он
    говорит
-   Нерешительные -
-   Тревожные - Они отличаются мнительностью и склонностью к подозрениям - проявить к ним теплое отношение и
    участие
-   Всезнайки -
    -   истинные - показать, что вы считаетесь с его мнением
    -   мнимые или эрудиты - поставить на место через прямое доказательство несостоятельности их аргументов

<https://trends.rbc.ru/trends/social/624590819a7947d29d52520a?from=mainpage>


<a id="org25ca0c7"></a>

## развитие харизмы

-   Будьте внимательным слушателем
-   «Отражайте» собеседника
-   Работайте над ораторскими навыками
    -   Харизматичные люди говорят спокойно, но увлеченно, с паузами, но достаточным темпом, чтобы удерживать
        внимание слушателей
    -   записывая себя на диктофон и практикуясь у зеркала, представляя перед собой аудиторию
    -   личные истории, метафоры и сравнения делают речь более живой
-   перед презентациями и важными встречами заранее представлять, как вы будете себя вести — вплоть до улыбки и
    рукопожатия
-   Человек может заряжать других энергией и вдохновлять идти за собой, только если он сам «горит» каким-то
    делом или идеей

<https://trends.rbc.ru/trends/social/61f8f4dc9a79475d8b89c267>


<a id="org49e13bb"></a>

## soft skills

коммуникабелен, позитивен, ответственен, дружелюбен, энергичен.

-   Способность работать в команде и быстро обучаться;
-   Способность внимательно читать и понимать большие объемы нормативной документации;
-   Умение вести деловую переписку;
-   Внимательность, ответственность, самостоятельность, высокая работоспособность.

85% успеха

1.  анал мышление и внедрение инноваций
2.  уровень самообучения и умения учиться
3.  решение сложных, комплексных задач
4.  критическое мышление и анализ информации
5.  креативность, оригинальность и умение проявлять инициативу
6.  лидерство и влияние на окружающих
7.  умение пользоваться  современными тех средствами
8.  психическая устойчивость, справляться со стрессом, гибкость
9.  аргументация, создание идей и решений


<a id="org9eb3368"></a>

## personal brand Личный Бренд

-   максимально соответствовать дресс-коду, предусмотренному в компании, а в случае его отсутствия помнить об
    универсальных правилах делового стиля.
-   какой может быть спрос от человека, который с первого раза не может объяснить суть проблемы и поставить
    задачу перед подчиненными
-   Человек, который невнятно, нелогично говорит, никогда не займет руководящей должности

ЛБ = мечта + знание себя + правильное мышление + персональна интеграция + тяга к учебе + страсть + помощь окружающим + любовь


<a id="orgf21649a"></a>

## ИТ-евангелист Technology evangelist

продвигает технологии и продукты путём написания статей, ведения блогов, проведения семинаров и вебинаров,
демонстраций и презентаций, ведения переговоров.


<a id="orga5fce9f"></a>

## tactichnost


<a id="orgcf6ad0b"></a>

### Нетактичность

-   Привычка шептаться с кем-то в присутствии других людей.
-   Повышенный интерес к чужой жизни (подслушивание, подглядывание, чтение чужих писем).
-   Назойливое выражение собственных чувств.
-   Привычка напоминать другим о их оплошностях и неприятных ситуациях.
-   Желание похвастаться, продемонстрировать собственное превосходство.
-   Установка «Есть мнение мое и неправильное».
-   Привычка громко разговаривать в общественных местах, выяснять отношения прилюдно.
-   Прямое указание на недостатки собеседника («Ты набрала вес, тебе
    следует похудеть» или «Что-то ты сегодня неважно выглядишь, опять с
    женой поссорился?»).


<a id="org662e9d3"></a>

### Тактчность:

-   Не лезет в душу. Тактичные люди заботятся о чужом комфорте, не нарушают их личные границы.
-   Думает об окружающих. Вежливый собеседник не поднимает неловких тем,
    не задает неуместных вопросов, не заставляет никого краснеть.
-   Не хвастается. Ему просто незачем выпячивать свое превосходство.
-   Не навязывает мнение оппоненту. Тактичный человек знает, что есть разные точки зрения, принимает их во внимание.
-   Его речь чиста. В разговоре не допускает слов-паразитов, просторечий, нецензурной брани.
-   Не посягает на чужое. Если человеку присуще чувство такта, он не
    будет читать чужую переписку, подслушивать разговоры. Если нечто
    секретное случилось на его глазах, то сохранит тайну.
-   Не сплетничает. Подробности чужой личной жизни его не касаются. Также он не станет вещать о своей.
-   Не поднимает спорных тем. Тонко чувствует собеседника и знает, какие вопросы могут сделать ему больно или неприятно.
-   Не делает акцент на недостатках собеседника. Люди чувствуют себя в обществе такого человека комфортно и уверенно.
-   Проявляет толерантность. Чужие слабости и недостатки не являются для него проблемой.
-   Делает вид, что не замечает чужих оплошностей. В обществе тактичного человека не страшно быть самим собой.


<a id="org067144e"></a>

### Тактчность2

-   Откажитесь от категоричных слов и указаний.
-   разбавляйте критику положительными моментами
-   Дожидайтесь подходящих моментов
-   Демонстрируйте, что вы заинтересованы в вашем собеседнике


<a id="orga0f2fa4"></a>

### В отношениях

-   Советоваться, а не обвинять. Благополучие семейных отношений – общая задача. В ее решении нет места конфликтам.
-   Отказаться от бурного проявления негативных эмоций. Если в моменте сделать это сложно, то лучше предложить поговорить попозже.
-   Не молчать, говорить близкому человеку о своих переживаниях. Важно
    избегать категоричности. Не «Ты безответственный», а «Мне было очень
    неприятно, что ты забыл о моей просьбе».
-   Говорить от своего имени. Не «Ты меня бесишь», а «Я огорчен, мне нужно время, чтобы прийти в норму».
-   Научиться слушать друг друга. Не перебивать, даже если супруг/супруга говорят что-то неприятное.
-   Признавать за партнером право на собственную точку зрения. Лучше
    находить компромиссы в процессе диалога. Например, «Как, по твоему
    мнению, мы можем решить эту проблему?».
-   Быть готовым на взаимные уступки, так как без них невозможны гармоничные отношения.


<a id="org82d76c2"></a>

### В конфликтах

-   Давать собеседнику высказаться полностью. Внимательно выслушивать, не перебивать (даже если очень хочется). Только потом высказывать свою точку зрения.
-   Переходить к обсуждению сути конфликта, когда человек полностью выговорится.
-   Проявлять заинтересованность к сказанному другим человеком.
-   Предлагать свою помощь в решении конфликта.
-   Даже если собеседник не прав, не стоит сообщать ему это в лицо.
-   Следить за своими высказываниями и интонациями. Не допускать неуважительного отношения к собеседнику.
-   Не врать, отказаться от недомолвок. Лучше всегда оставаться честным.
-   Вместе искать компромиссы и пути решения.
-   Не искать виноватых, не обвинять собеседника.
-   Найти схожесть во мнениях с собеседником. Это станет началом сотрудничества.
-   Говорить по существу, не отвлекаться на посторонние темы.
-   Никогда не опускаться до мата и оскорблений.


<a id="orgcf7f7a8"></a>

### Тактично сказать правду

-   Выбрать подходящий момент. Желательно разговаривать лично, а не по телефону или переписке.
-   Зайти издалека. Рассказать несколько отвлеченных фактов, поинтересоваться делами собеседника. Чтобы настроить его на позитивный лад, можно рассказать забавную историю.
-   Подводить разговор к основной теме постепенно, а не выпаливать правду сразу.
-   Найти позитивные причины для сказанного. Например, «Мы давно дружим, у меня от тебя нет секретов, поэтому…». Или «Надеюсь, ты не осудишь меня, но мне важно сказать тебе…».
-   Быть готовым к негативной реакции собеседника.
-   Если присутствует чувство вины, попросить прощения.


<a id="orgf09c0d4"></a>

### Сделать коммуникацию приятной

-   Всегда стоит следить за своей речью. Говорить спокойным голосом, с

доброжелательными интонациями. Тактичные люди часто улыбаются,
обращаются к собеседникам по имени.

-   Стараться избегать конфликтных, спорных ситуаций. Лучше остаться при своем мнение, но не провоцировать ссору.
-   Придется навсегда забыть о колких, язвительных выражениях, попытках задеть собеседника.
-   В разговоре тактичных человек соблюдает чувство меры. Это касается буквально всего, особенно – юмора.


<a id="orgdb90ced"></a>

### Когда тактичность не нужна:

-   когда нужен зеркальный ответ обидчику


<a id="org61d69c2"></a>

### Развитие тактичности

-   Упражнение «Продолжи мысль». Хорошо помогает человеку учиться
    ставить себя на место собеседника. Стоит включить любое разговорное
    видео в Интернете. Несколько минут послушать говорящего, а затем
    поставить на паузу и попытаться развить мысль спикера с его точки
    зрения.
-   Упражнение «Долой категоричность». Помогает отказаться от колких
    фраз в диалогах. Важно постоянно следить за своей речью, учиться
    выбирать мягкие выражения. От фраз «Ты не прав», «Твоя идея
    бредовая» или «Никогда больше не…», придется отказаться.
-   Нужно научиться использовать мягкие формулировки, например,
    «Интересная точка зрения, но, на мой взгляд, стоит
    подкорректировать…» или «Мне неприятно, когда меня
    перебивают. Постарайся, пожалуйста, больше так не делать».
-   Игра «Шпион». Актуальна для излишне разговорчивых людей, которые
    часто выбалтывают чужие секреты. Стоит представить себя шпионом на
    особо важном задании. Оно будет провалено, если человек кому-то
    расскажет какой-либо чужой секрет.
-   Тренировки перед зеркалом. Если предстоит серьезный разговор или
    решение конфликта, то в говорении тактичных фраз уверенным голосом
    можно потренироваться перед зеркалом. Это поможет оценить себя со
    стороны, скорректировать мимику.


<a id="org4ffb668"></a>

### Дневник

-   Опишите, на каком уровне у вас тактичность сейчас.
-   Напишите цель, а именно какой вы хотите видеть свою тактичность.
-   Составьте план из упражнений и приемов, описанных выше. Возможно
    хотите обратить внимание на коммуникацию с конкретным человечком.
-   Можете составить словарь. Пример списка и замены слов в таблице.

Записывайте в течении 30 дней все наблюдения о своей тактичности и
изменения в жизни, в конце дня. Обязательно напишите о выгодах,
которые вы получили.

\*
Объяснение

25.10.2022 года в ТЦ "Сомбреро" у меня произошел словестный конфликт с неизвестным в результате которого
неизвестный гражданин который задел мой ноутбук после чего ушел, телесных повреждений не наносил.
По данному факту проверку прошу не проводить.

03.11.2022

89647167563


<a id="org0474c06"></a>

## girls

Женщина ученик, помошник опционально. Нельзя от ученика требовать помощь.


<a id="orgaceb07f"></a>

## To swap the values of two variables without using a third variable

when you do x = x ^ y, you are essentially encoding the information of both x and y into x. Then, when you do
 y = x ^ y, you are extracting the original value of x from the encoded value and storing it in y. Finally,
 when you do x = x ^ y, you are extracting the original value of y from the encoded value and storing it in x,
 thus completing the swap.

-   a ^ a = 0 (any number XORed with itself is 0)
-   a ^ 0 = a (any number XORed with 0 is itself)
-   a ^ b ^ b = a (associative property)

    int x = 10, y = 50;
    x = x + y; // x = 60
    y = x - y; // y = 10
    x = x - y; // x = 50
    
    x = x * y; // x = 500
    y = x / y; // y = 10
    x = x / y; // x = 50
    
    x = x ^ y; // x = 40 (binary: 00101000 ^ 00110010)
    y = x ^ y; // y = 10 (binary: 00101000 ^ 00110010)
    x = x ^ y; // x = 50 (binary: 00101000 ^ 00110010)
    
    let a = 3, b = 2;
    [a, b] = [b, a];


<a id="org616b08c"></a>

# HR common questions

-   Tell me about yourself.
-   What is your greatest strength?
-   What is your greatest weakness?
-   Why should we hire you?
-   Why do you want to work here?
-   Tell me about a time you showed leadership.
-   Tell me about a time you were successful on a team.
-   What would your co-workers say about you?
-   Why do you want to leave your current role?
-   Describe your most challenging project.
-   Tell me about something you’ve accomplished that you are proud of.
-   Can you explain your employment gap?
-   What are your salary expectations?
-   What do you like to do outside of work?
-   Tell me about a time you had to manage conflicting priorities.
-   Where do you see yourself in 5 years?
-   Describe your leadership style.
-   Tell me about a time you failed or made a mistake.
-   Tell me about a time you worked with a difficult person.
-   Tell me about a time you had to persuade someone.
-   Tell me about a time you disagreed with someone.
-   Tell me about a time you created a goal and achieved it.
-   Tell me about a time you surpassed people’s expectations.
-   Tell me about a time you had to handle pressure.
-   Tell me about a time you had to learn something quickly.
-   Do you have any questions for me?


<a id="orgcd5bde4"></a>

# HR mistakes

Первая девушка собеседник:

1.  Анализирую как говорит программист, слаженность изложения, знание английского по разговору. Не понимая что
    они экстраверты, а анализируют интравертов. Интраверты считаются педантами и занудами. Но программист это
    по определению интраверт. Интраверты умники и мыслители, экстраверты это адаптированные собачки гавкающие в
    такт.

Профессионал:

1.  ЧСВ это плохо, cоискатель должен себя занижать. ЧСВ хорошо, может вы думаете что каждый человек умен по
    своему? Я не настолько верю в людей.
2.  Получить работу это выиграть суперкубок. Это не так, так как всегда можно оказаться уволенным и начать поиск
    заново. Трудоустройство это обоюдное решение, а не односторонее. Соискатель это не “чмонька заискивающая”.
3.  Интервью - это тест. Инрервью - это знакомство.
4.  Тесты, хакатоны, сертификаты, нетворкинг - достижения.  Это потеря времени. Знания это ошибки и
    нестандартное мышление.
5.  Чательное вслушивание в слова и акценты. Нужно вслушиваться в основные смыслы прямых ответов на вопросы и
    игнорировать шумы: фразы без уверенности, шутки для поддержания разговора, любезности, перечисления
    малозначительных фактов.
6.  Мало говорит и не проявляет желание, это странно. Это адекватно, так как первое собеседование чаще всего
    просто для галочки, и лучшая стратегия это короткие сухие ответы. После десятка таких приучиваешься
    молчать.
7.  Ожидаете, что я прочитаю все о вашей компании, и каким-то образом проявлю себя и докажу вам, что я лучше
    других. Тем самым вы перекладываете на меня вашу главную ответственность - сделать выбор. За меня говорит
    мой год, опыт, вылаженные знания и ежедневный отчет.

8.  обучить можно любого - все друг друга учат
9.  программист живет в сети - программисты больше всех нелюбят современные технологии, потому что они извращены


<a id="org2d899b3"></a>

# HR questions my

-   Как и когда можно будет вам напомнить о необходимости дать обратную связь.
-   Читали мое резюме?
-   Как вы оцениваете грейд junior/middle/senior?
-   Какие действия вы предприняли для того чтобы оценить меня как программиста, а не как оратора?
-   Какой IT бизнес может создать спец по машинному обучению в одиночку в России?
-   Где вы берете заказы?
-   Как создавали компанию?
-   Ваши принципы, как руководителя, которыми вы руководствуетесь в работе? Самые важные уроки, приоритеты,
    которые вы для себя поняли?

организационные

-   сколько этапов?
-   смотрели ли мое резюме, какие ссылки в нем смотрели
-   почему меня выбрали - как оцениваете мой опыт, переходили ли по ссылкам? Что отметили?
-   чем буду заниматься и как ведется разработка у вас, бюрократия
-   испытательный срок?
-   формат работы - удаленка, гибрид
-   сколько человек в компании.
-   для какой задачи набираете, кто уже есть в команде

мои вопросы:

-   через сколько месяцев повторная попытка на собеседование
-   с кем следующее собеседование
-   а вы знаете, что лучше всех отвечают на вопросы собеседования те, больше всего их провалил до этого.
-   сколько получают программисты моей специализации
-   Проекты с открытым исходным кодом.

после офера

-   На какие задачи вас нанимают и каких результатов от вас ожидают в период испытательного срока и в будущем?
-   Чему вы отдаете приоритет - четкому выполнению ваших задач или общий успех проектов?

Белая ли зп. Если не вся, то какая сумма в договоре прописывается и считается официальной. От какой суммы
 рассчитываются отпускные и больничные?

Как организовано управление знаниями в компании? Как поощряется управление, есть ли ответственные?

Почему проявили ко мне интерес? Как вы оцениваете кандидатов, по каким критериям выбираете?

-   какие еще есть кандидаты, что видели интересного в резюме? Чем другие лучше?


<a id="orge5a7e1f"></a>

# HR check company

-   Сайт компании. Есть ли полная контактная информация, нет ли ошибок и неясностей в описании деятельности?
-   Госреестры. Проверьте ИНН в ЕГРЮЛ. Давно ли компания зарегистрирована? Чем занимается?
-   Финансовое состояние. Нет ли долгов и судебных исков на «Федресурсе»?
-   «Чёрные списки». Проверьте компанию на сайте Роструда и платформе «Знай своего клиента».
-   Лицензии. Если нужны для работы – проверьте их наличие.
-   Отзывы. Ищите информацию на форумах и в соцсетях.


<a id="orgfaa25fa"></a>

# HR dialog plan

Хочу сэкономить вам время: мне нужны деньги и мне все равно что вы делаете и чем я буду заниматься.

В середине, видите что я делаю? Я показываю
 любознательность, уважение и терпеливость, важные качества программиста, и мне
 абсолютно похую на ваши собственные неверные оценки.


<a id="org054ae11"></a>

# HR linkedin lecture

<https://hellonewjob.org/post/400-companies-from-hellonewjob>

➤  Мониторьте вакансии на Wellfound, Otta, Remote OK, We Work Remotely.
➤  Первый опыт на глобальном рынке иногда проще и быстрее получить через фриланс или контрактную работу. Присмотритесь к платформам Toptal и Upwork.

HR
<https://www.youtube.com/@newhr>

UK, germany - glassglory, agencies

hubr career
geeksjobs

в третьем лице - нет гендера и персонализации, рюме для целевой вакансии жестко структурированный формат. 0
 воды. Быстро ознакомиться, короткий формат не больше 2 страниц. В резюме ссылка на линкедин, для подробностей.

networking

-   hot - sublings, who can really healp
-   warm - friends
-   cold - strangers - require interest for something, prove why you are professional.

Network-network - 1 hot 2 very good post at linkedin

-   Hellow how are? You have amazing post recently.
-   Please can you support me
-   PS: If you cannot, don't warry.
-   Sorry to ping you, but I need it.
-   Thank you for &#x2026; [:heart:]

linkedin shows:

-   first round
-   sencond - first round of who liked from first round

leave 400 people who really can help in your first course - decision makers. - hr manager, senior team (as you are)
 members, external HR, internal HR, ex-team, your teams, authoritive experts (opinion leaders), mentors with
 experience

-   quality is more important than amount

Spli

Create a good quality post that you need a job. “AI-post”

-   gender
-   1) for what job/roles: &#x2026;
    -   I am looking for role: &#x2026; in what companies.
-   I specialize how
-   for what types of companies: ,,,
-   in what countries, locations: &#x2026;
-   format of work - relocation, hybrid with russian companies
-   add tags of your specialization.
-   thank you for all recomendatins and ,,,
-   attach resume
-   text splits to paragraphs
-   HOw you can help: make repost, set like, comment, if we worked together leave comment, make intro to your company
-   10 facts about my experience and skills: - what - results
-   add erony or emotion feedback
-   lower grade
-   post should have a photo!

in resume must have (template for garvard, multinational template):

-   professional summary
-   key skills
-   experience

who + dowing what + for how long + &#x2026;


<a id="org6f073de"></a>

# HR work search Вопросы для работодателя:

1.  Как вы выбираете? Что нужно сделать чтобы не отсеиться? Нужно шоу? Нужно гугл колаб?
2.  Смотрели ли резюме? Переходили ли по ссылкам?

Задачи:

1.  На какие задачи вас нанимают и каких результатов от вас ожидают в период испытательного срока и в будущем?
2.  Как будет происходить передача дел или обучение?
3.  Какая ответственность передается для выполнения задач, какие есть инструменты и ресурсы у компании для выполнения поставленных задач?
4.  Какие профессиональные знания должны быть обязательно, и чему можно доучиться в процессе работы?

Заработная плата:

1.  Из чего складывается заработная плата, какой оклад и премиальная часть. По каким показателям рассчитывается премия? К личным или командным результатам она привязана? Проценты или фиксированные бонусы?
2.  Сколько зарабатывает в среднем по году сотрудник на этой должности? Каких при этом результатов он достигает? (например, при какой прибыли и рентабельности такая зп у менеджера по продажам).
3.  Белая ли зп. Если не вся, то какая сумма в договоре прописывается и считается официальной. От какой суммы рассчитываются отпускные и больничные?

График работы:

1.  Есть ли командировки. Если да, то длительность и частота. Сколько за последние три месяца и на какой срок съездил сотрудник на этой должности?
2.  Используется ли для работы личный автомобиль. Если да, то есть ли компенсация ГСМ и амортизации автомобиля. Сколько?
3.  График работы, оплачиваются ли переработки?

Положение компании на рынке:

1.  Много ли конкурентов и в чем преимущества компании перед конкурентами?
2.  Как компания развивает, прирастает год от году (динамика развития)?
3.  Какие планы у компании на ближайшие годы?

Принципы, ценности, корпоративная культура, команда:

1.  Какие внутренние правила, стандарты, ценности внутри компании? Какие особенности корпоративной культуры?
2.  Как давно работают сотрудники в отделе/компании? Что они ценят в компании как в работодателе?


<a id="org51cbee4"></a>

# projects full stack


<a id="orgecc583d"></a>

## облачной платформы менеджмента цифровых двойников ГИС-объектов, предоставляющую профильные аналитические и информационные сервисы

О проекте:
Платформа работает с множеством различных слоев данных, в том числе с данными лазерного сканирования, фотограмметрическими и 3Д-моделями (BIM) и предоставляет сопутствующую аналитику в морских, строительных и диагностических отраслях. Мы разрабатываем собственные сервисы анализа и визуализации больших данных, как в плоскостном, так и в пространственном представлении, включая AR/VR. У нас есть собственный парк беспилотных летательных, надводных и подводных аппаратов, обеспечивающих накопление собственного банка данных. Сейчас на проекте работает 11 человек.

Текущий технологический стэк:

Front: Vue 3 (composition API) + vite.js; Three.js; Openlayers; devextreme.js; MVC ООП-style
Back: Nest.js (Typescript) REST+ WebSocket, Camunda BPM Engine, Serverless containers (Python)
Auth: Keycloak, OpenID, OAuth2
Database: PostgreSQL/PostGIS
Object Storage: Minio on-prem, Yandex Object Storage
Virtualization: OpenShift on-prem, Yandex Managed Kubernetes
Message Brokers: Kafka
AR/VR: AR.JS / WebXR
Project Management: Gitlab, Enterprise Architect, Asana
Общая архитектура: SOA, EDA

Одним из центральных направлений развития нашего IT продукта - разработка не только облачного хранилища но и полного цикла обработки и глубокой аналитики данных лазерного сканирования (LiDAR) и других форматов геопространственных данных. Для этих целей мы развиваем собственный, полностью облачный пайплайн сервисов и платформу обработки.


<a id="orge0f2b4a"></a>

# burning lead meetup 11

<https://www.youtube.com/watch?v=dtNSGpmVDss>


<a id="org5a7e3d4"></a>

# договор услуг, подряда, ГПХ, самозанятые, ИП

Основные части договоров:

-   Стороны договора.
-   Условия использования товаров.
-   Предмет договора.
-   Срок действия.

**трудовой договор** (контракт) — нормами Трудового кодекса РФ.

-   принцип защиты более слабого
-   Стороны трудового договора именуют: работодателем и работником.
-   Предмет трудового договора — процесс, в котором работник выполняет должностные обязанности по внутреннему
    графику работы.
-   За свой труд работник получает заработную плату
-   Трудовые договоры бывают срочными и бессрочными.
-   Если нет даты, когда работнику приступать к своим обязанностям, он должен выйти на работу на следующий день.
-   Расторжение трудового договора всегда оформляется приказом работодателя с подписью работника.
-   понадобятся:
    -   трудовая книжка;
    -   ИНН;
    -   военный билет;
    -   диплом, аттестат, сертификат об уровне образования;
    -   дополнительные документы (например, справка об отсутствии судимости при оформлении на педагогическую должность).

**ГПХ** гражданско-правовые отношения - **заключается на определенный срок**

-   достаточно предоставить заказчику паспорт, ИНН и СНИЛС.
-   Исполнитель –физлицо выполняет работу по договору самостоятельно и не является индивидуальным предпринимателем.
-   Особенно удобно, когда специалисту комфортнее выполнить небольшой объем работ и срочно получить оплату за
    него.
-   Обязательным условием является только указание сроков начала и окончания производства работ (оказания услуг).
-   Оплата может быть как предварительной, так и поэтапной (если этапы прописаны в договоре).
-   бывают двух видов:
    
    -   договор подряда (ст.616 ГК РК); - подрядчик выполняет определенный объем работы в установленный срок своими силами и
    
    из собственных материалов. - подразумевает оказание исполнителем услуг заказчику на возмездной основе в
    установленный срок. Применяется при оказании услуг обучения, связи, консультационных, аудиторских и т.д.
    
    -   договор возмездного оказания услуг (ст.683 ГК РК).
-   pros:
    -   заказчик не обязан уплачивать в бюджет от суммы доходов работника СО, СН и ОСМС
    -   исполнителю учитывается страховой стаж
    -   **свободный график**, в срок предоставить результат
-   cons:
    
    -   нет возможности взять оплачиваемый отпуск или уйти на больничный
    -   труднее подтвердить свой трудовой опыт
    -   Если выяснится, что в момент выплаты исполнитель не зарегистрирован как самозанятый, заказчику придется
    
    удержать НДФЛ и заплатить страховые взносы, как при сотрудничестве с обычным человеком.
    
    -   Заказчик с суммы начисления исполнителю удерживает следующие виды налогов и взносов:
        -   ОПВ 10%;
        -   ИПН у источника выплаты 10%;
        -   ВОСМС -2 %.
-   пункты договора
    -   предмет соглашения
    -   обязанности
    -   ответственность и права сторон
    -   условия оплаты
    -   условия и порядок изменения договора
    -   условия расторжения
    -   реквизиты сторон.

НПД налоговый режим

**Договор подряда** регулируется нормами Гражданского кодекса РФ.

-   базовые принципы о свободе договора и равноправии сторон-участников.
-   Стороны договора подряда именуют: подрядчиком и заказчиком.
-   Предмет договора подряда — это результат с выполненными действиями, созданной или измененной вещью.
-   договор является взаимным, двусторонним, возмездным, консенсуальным.
-   Подрядчик получает вознаграждение
-   срок действия договора
-   действует с момента подписания или с другой согласованной даты.
-   вправе расторгнуть договор по обоюдному согласию в любой момент.
-   Заказчик в любой момент вправе отказаться от договора и компенсировать подрядчику все расходы. Он также
    может отказаться от договора, если подрядчик работает очень медленно, и потребовать от него компенсации
    убытков.
-   Регистрировать договоры нигде не нужно
-   Если обе стороны — физические лица, просто покажите друг другу паспорта.
    
    -   паспорт или иной документ, удостоверяющий личность;
    -   страховое свидетельство обязательного пенсионного страхования;
    -   документ об образовании, квалификации или наличии специальных знаний, если выполнение работ по ГПД
    
    требует специальных знаний или специальной подготовки.
-   У подписывающего договор руководителя юридического лица должна быть доверенность или приказ на право
    действовать без доверенности. От юридического лица также необходимы свидетельства о государственной
    регистрации и постановке на налоговый учет.
-   желательно проверить устав подрядчика, наличие у него лицензий и допусков: может ли он заниматься подрядными работами.
-   pros:
    -   нет расходов на взносы в фонды, поэтому оплата подрядчику может быть выше.
    -   Свободный график работы без надзора руководства.
    -   Если подрядчик работает быстро, ему не добавят дополнительных обязанностей без увеличения оплаты.
-   cons:
    
    -   Отсутствие социального обеспечения на случай болезни, беременности, учебы. Нет оплачиваемого отпуска.
    -   Не будет трудового стажа.
    -   Оплачивается только достигнутый результат, независимо от затрат времени.
    -   Убытки заказчика по вине подрядчика последний возмещает полностью,
    -   Если нарушаются права, исполнитель может обратиться только в суд. Это дольше, чем жалоба в трудинспекцию
    
    или прокуратуру

**договор поставки**

-   является одним из видов договоров купли-продажи, что прямо закреплено пунктом 5 статьи 406 Гражданского кодекса РК.
-   поставщик (продавец), занимающийся предпринимательской деятельностью, принимает обязательство по передаче в
    оговоренный срок произведённых или закупленных товаров покупателю
-   Сторонами договора поставки являются юридические лица или индивидуальные предприниматели, тогда как
    сторонами договора купли-продажи могут являться любые лица.
-   является возмездным и консенсуальным, (от лат. consensus — согласие) — гражданско-правовой договор, который
    признаётся заключенным с момента согласования существенных условий сторонами.
-   может быть заключен в пользу третьего лица (получателя товаров), не являющегося стороной в договоре.
-   поставка товаров осуществляется поставщиком путем отгрузки (передачи) товаров покупателю по договору или
    лицу, указанному в договоре в качестве получателя. (Согласно статье 462 Гражданского кодекса РК,)
-   Статья 473 ГК РК: «Если поставщик не поставил предусмотренное договором количество товара либо не выполнил требования покупателя о замене товара ненадлежащего качества или о доукомплектовании товаров в установленный срок, покупатель вправе приобрести непоставленные товары у других лиц, с отнесением всех необходимых и разумных расходов по их приобретению на поставщика»


<a id="org5fe3297"></a>

# TODO Академия иноваторов

Модуль 1. создание стартапа
  <http://www.youtube.com/watch?v=yXLdBYvRTXk&list=UULF4JuvVZbXJl7M-fV4F0FLSQ>

Модуль 2. Привлечение инвестиций в стартап

Модуль 3. Цифровые технологии

Модуль 4. Основы проектной работы


<a id="org6699df0"></a>

## topics

-   CustDev и
-   CJM-исследования

-   🟣Что такое CJM-исследование, глубинные и JTBD-интервью? Почему их нельзя путать с Customer Development.
-   🟣Конкурентный анализ. Хорошо ли это, если конкурентов нет?
-   🟣MVP-проекта. Что это и как реализовать? Не отпугнет ли это потребителя?
-   🟣Системный подход к определению MVP
-   🟣Матрица жизнеспособности продукта — 9 ключевых продуктовых гипотез
-   🟣Критерии успеха продукта
-   🟣Исследования рабочего стартапа: почему нужно продолжать исследовать постоянно?
-   🟣Стратегия и новые продукты, рынок и технологии, продукт и команда
-   🟣Кейсы


<a id="orga53ee7b"></a>

# Clean code book

Problem: productivity of patches decreased for all projects.

Solution: With clean code procudctivity decrease slower.


<a id="org97a5fda"></a>

## Meaningful Names

-   searchable
-   don't use member prefix


<a id="org61782b4"></a>

# распределенная или разделенная система <https://habr.com/ru/articles/322876/>

distributed computing and multi-agent systems.

**Распределенная система** - это система с общим состоянием и коммуникацией между частями.

**Шардинг** - Разбить очередь A-Z на блоки A-D, D-K, K-P, P-Q&#x2026;

Самая популярная проблема, которая случается с сетью – это NETSPLIT. Потеря пакетов или связи.

заложить отказы в дизайн системы.

Jepsen – ое-фреймворк для тестирования распределённых систем. имитирует сетевые ошибки, потом генерирует
 случайные операции к вашей распределённой системе.

ZooKeeper allows distributed processes to coordinate with each other through a shared hierarchical name space
 of data registers (we call these registers znodes), much like a file system.

-   These machines maintain an in-memory image of the data tree along with a transaction logs and snapshots in
    a persistent store.

                      Leader Server
                      ------+-<----
               ---->-/      ^      \-<--
           Server         Server      Server   - ZooKeeper Service.
        /---+--<             ^
      -->-        \--           ---
    Client         Clint         Client

**etcd** - consensus establishment using the Raft algorithm. . etcd favors consistency over availability in the
 event of a network partition (CAP theorem).

Many tasks that we would like to automate by using a computer are of question–answer type: **computational
 problems** consists of **instances** together with a **solution** for each instance.

-   Parallel algorithms in shared-memory model
-   Parallel algorithms in message-passing model
-   Distributed algorithms in message-passing model


<a id="org18ac300"></a>

## Consensus консенсус or agreement

это соглашение об общем состоянии с возможностью ещё-то как пережить сбои, если они случились.

-   Если большинство нод согласилось, что мы должны это всё записать, то вроде как всё хорошо. То же самое с
    чтением. Если у нас меньшинство нод отвалилось, 1-2-3, то ничего страшного.

-   Paxos - family of protocols, traditional single-value consensus protocols
-   binary consensus - Multi-Paxos and Raft, the goal is to agree on not just a single value but a series of
    values over time, forming a progressively-growing history

2PC - Two-phase commit protocol

Gossip protocol -  to ensure that data is disseminated to all members of a group

Quorum - is the minimum number of votes that a distributed transaction has to obtain in order to be allowed to
 perform an operation.  technique is implemented to enforce consistent operation in a distributed system.


<a id="org06a887d"></a>

## challenges

-   dining philosophers problem
-   mutual exclusion problems

fault-tolerance

-   consensus problems
-   Byzantine fault tolerance
-   self-stabilisation

asynchronous

-   **Synchronizers** can be used to run synchronous algorithms in asynchronous systems.
-   **Logical clocks** provide a causal happened-before ordering of events
-   **Clock synchronization** algorithms provide globally consistent physical time stamps.

**Election**  or Coordinator election (or leader election) -


<a id="orge42fe29"></a>

## Architetcures

-   Client–server: permanent change on server only
-   Three-tier:   stateless clients can be used
-   n-tier:
-   Peer-to-peer:

shared-nothing architecture (SN) - each update request is satisfied by a single node (processor/memory/storage unit) in a computer cluster.

-   no contention
-   typically partitions its data among many nodes
-   for data warehousing applications

shared everything


<a id="org54355f8"></a>

## CAP Theorem, Brewer's theorem

**distributed data store** can provide only two of the following three guarantees:

-   **(C)onsistency:** Every read receives the most recent write or an error.
-   **(A)vailability:** Every request receives a (non-error) response, without the guarantee that it contains the
    most recent write.
-   **(P)artition tolerance:** The system continues to operate despite an arbitrary number of messages being dropped
    (or delayed) by the network between nodes.

When a **network partition** failure happens, it must be decided whether to do one of the following:

-   cancel the operation and thus decrease the availability but ensure **consistency**
-   proceed with the operation and thus provide **availability** but risk inconsistency.

В Non-Transactional Distributed Storage Systems порядка 50 разных видов **consistency**

В CAP Theorem consistency - Linearizability.

Databases:

-   CA: RDBMS
-   CP: MongoDB, HBase, Redis
-   AP: CouchDB, Cassandra, DynamoDB, Riak


<a id="org5b9b518"></a>

## notes

классическая реляционная СУБД или подойдет noSQL-решение? or

-   key-value-хранилища: вам не придется тратить время на
    настройку, а время отклика такой системы будет в разы
    меньше, что положительно скажется на скорости работы
    приложения

KVS? Aerospike? Redis? Couchbase? Memcached? Может быть, вам
 нужно рассмотреть еще и HBase в этом классе? Вы должны
 знать о существовании всех этих типов хранилищ, их основные
 отличия и области применения, чтобы уметь делать разумный
 выбор.

Memcached используется для хранения персистентных данных, а
в Redis в перспективе (через несколько лет жизни проекта)
потребуется хранить несколько терабайт относительно редко
изменяемых данных — нам важнее свойства и предоставляемые
системой гарантии, чем конкретное название.


<a id="orgc11c9b5"></a>

## links

-   <https://en.wikipedia.org/wiki/CAP_theorem>
-   <https://en.wikipedia.org/wiki/Consensus_(computer_science)>
-   <https://habr.com/ru/articles/322876/>
-   How to design large-scale systems: <https://github.com/donnemartin/system-design-primer>


<a id="orge72ed96"></a>

# own business

-   Откуда ты взял **компетенции руководителя** и менеджера проекта, чтобы организовывать и контролировать других
    людей, участвующих в проекте, если ты простой разработчик?
-   Как ты решил вопросы, связанные с формированием **продукта, маркетингом и монетизацией**?
-   Как ты решил правовые вопросы и вопросы **взаимодействия с госструктурами**?
-   Если днем ты работаешь в офисе, а вечерами пишешь код для своего проекта, когда ты успеваешь **встречаться с
    инвесторами**, заказчиками/клиентами?
-   Ты должен быть **очень харизматичным и компетентным** в области своего продукта, а также иметь хорошие материалы
    (презентации, бизнес-план, бюджетную оценку), чтобы продать инвесторам или клиентам свой продукт.


<a id="org0e876c7"></a>

# publicity theory

-   **YOU NEVER FAILURE AND NEVER STRUGGLE** tell about your success only, never tell about failures.
-   **ALWAYS DO WHAT THEY EXPECT FROM YOU** always fast answer even if you are busy you should answer it.
    -   good looking: postive
    -   busy
    -   body language: standing tall and making eye contact
    -   Be mindful of your facial expressions: smiling, positive.


<a id="orge23f99c"></a>

# DNS domen registration


<a id="org8051635"></a>

## terms

-   Registrant - who will own
-   Registrar - who registre - a company accredited by ICANN (nonprofit organization responsible for coordinating the global DNS )
-   Registry - databases of DNS names under each top-level domain (TLD).


<a id="orge5c0b65"></a>

# Neuroscience

-   Thinking and memory involve the activation of neural groups in the
    brain. Something new is the activation of several groups +
    a few very active new neurons.
-   To better think and remember, you should:
    1.  Connect your knowledge to what you already know.
    2.  Repeat or replay it.
    3.  Use special techniques surprise and chaose.
-   Multimodal information - vision and language:
    -   Speach and images are forms of information. Language
        better allows logical thinking, while images better
        represent spatial relationships.
    -   They should be combined as needed to split tasks into
        proper forms.
-   Future androids will never try to look like humans:
    
    -   The "Uncanny Valley" diagram shows that androids will always be
    
    be scary because they are smart. <https://en.wikipedia.org/wiki/Uncanny_valley>


<a id="org9e3e5b0"></a>

## Social behavior

Two systems:

-   In empathy, "mirrored neurons" (MNS) play a role -
    understanding the emotions of others through the mirror
    mechanism
-   Система ментализации - моделирование того объема знаний который есть у другого человека.
    -   Mentalization is the ability to attribute mental states—such as thoughts, feelings, and intentions—to
        oneself and others.


<a id="org8950878"></a>

## imagination

Внутренняя модель внешнего мира, как способ взаимодействия с этой моделью.

imagination is способность формировать мысленные образы

Ментальная практика может приносить результат аналогичный физическому.

Воображение - произвольная способность человека к воспроизведению сенсорных характеристик в отсутствии внешних
 стимуляций.

-   Воображение может лежать в основе расстройсв или же быть когнитивным инструментом.
-   бывает сознательной и бессознательной (когда образы сами лезут)
-   фантазия бывает сильная или слабая.
-   любая сенсорная система может воображать

Фантазия - воображение в творческом ключе

дискриптивый или пиктографический сопособ вображения ?

нейроинтерефес - способность управлять внешними командами с помощью намерений мозга


<a id="org8fb9a94"></a>

# science tools

-   A language and editor for scientific computation <https://github.com/JohnDTill/Forscape>


<a id="org443f0d3"></a>

# Psychology, Linguistic


<a id="orgc0776e1"></a>

## Эвристика Heuristics

-   Эвристические техники - приблизительные техники основанные на прошлом опыте.
-   Эвристика -  heuristic (*hjʊəˈrɪstɪk*) - ментальный багаж накопленных навыков.
-   Эвристика - то, что отличает человека от AI - совокупность приёмов и методов, облегчающих и упрощающих решение

познавательных, конструктивных, практических задач. Машинные эвристики в полтора раза хуже чем машиннео обучение
Извесные:

-   Similarity heuristic - сравнение нового со старым чтобы сделать решение - learning from past
-   Take-the-best heuristic or Satisficing(threashold)
-   Fast-and-frugal trees
-   Fluency heuristic - if one object is processed more fluently, faster, or more smoothly than another, the
    mind infers that this object has the higher value with respect to the question being considered
-   Gaze heuristic - эвристика взгляда - как у охотника
-   recognition heuristic - If one of two objects is recognized and the other is not, then infer that the recognized object has the higher value with respect to the criterion.

Гештальт - целостная структура, отличная от суммы его частей

-   характерная тенденция психики к организации опыта в доступное пониманию целое
-   Целое может быть важным, члены — неважными, и наоборот. Фигура всегда важнее основы — фона.
-   Эффект Зейгарник - человек лучше запоминает прерванные действия, чем завершённые
-   примеров, по Кёлеру, является мелодия, которая узнаётся даже в случае, если она транспонируется в другие тональности.

Availability heuristic - reason why advertising exist.

Fallacies:

-   by structure (formal fallacies)
-   by content (informal fallacies).
    -   improper presumption
    -   faulty generalization
    -   error in assigning causation, and relevance

Links

-   <https://en.wikipedia.org/wiki/Law_of_thought>
-   <https://en.wikipedia.org/wiki/List_of_fallacies>
-   <https://en.wikipedia.org/wiki/List_of_cognitive_biases>
-   <https://en.wikipedia.org/wiki/Availability_heuristic>


<a id="org08fba6c"></a>

## Linguistic

<https://en.wikipedia.org/wiki/Linguistic_relativity>


<a id="orgad80460"></a>

# Physics

The wave-particle duality.

Does particles exist in many states at the same time or we just don't know in which state it is before
 measurement?


<a id="org50bbfad"></a>

## general Interactions between particles

-   gravity
-   electromagnetism
-   weak interaction
-   strong interaction

Electromagnetism - occurs between particles with electric charge via electromagnetic fields. Electric charge
 can be positive or negative.

Gravitation - mutual attraction between all things that have mass.


<a id="org1edbc8d"></a>

## ΛCDM–MOND debate

Lambda Cold Dark Matter (ΛCDM) model - The standard model of cosmology, the current received view within the
 cosmology and astrophysics community.

-   inclusion of dark matter - cannot be directly observed at any electromagnetic wavelength, and has only been
    detected via its gravitational interactions. makes up 24% of the mass-energy content of the universe

Modified Newtonian Dynamics (MOND)

-   Abandoning general relativity
-   supperior for describing structural dynamics in the universe

<https://www.sciencedirect.com/science/article/abs/pii/S003936812100100X>


<a id="orge6674d9"></a>

## String theory

theoretical framework

One-dimensional objects called “strings”.

Vibrational state of the string.

graviton - one of the many vibrational states of the string.


<a id="orgce6a3a7"></a>

## quantum mechanics (QM)

Heisenberg uncertainty principle (uncertainty principle) - limit on pairs of physical properties measurement - one
 property is measured, the less accurately the other property can be known.

principles:

-   Wave-particle duality:
-   Superposition: Quantum objects can exist in multiple states simultaneously, which is known as a
    superposition of states.
-   Entanglement: Quantum objects can become "entangled" in a way that the state of one object is dependent on
    the state of the other, even when they are separated by large distances.


<a id="org263dbdd"></a>

### ground state

of a quantum-mechanical system is its stationary state of lowest energy; the energy of the ground state is
 known as the zero-point energy of the system.


<a id="org975e06e"></a>

## General Relativity (GR)

principles

-   **Gravity as curvature:** Gravity is not a force that acts between objects, but rather a curvature of spacetime
    caused by the presence of mass and energy.
-   **Equivalence principle:** The effects of gravity are equivalent to the effects of acceleration, which means
    that an observer in a gravitational field will experience the same effects as an observer who is
    accelerating.
-   **Geodesic equation:** The shortest path through spacetime, called a geodesic, is a straight line in flat
    spacetime, but a curved line in curved spacetime.


<a id="org7c03192"></a>

## QM vs GR

The progress of modern physics towards General Relativity and the Standard Model of Particle Physics can be
 attributed to a large extent to a continual ’enhancement of symmetry', which is also hoped to herald a
 further unification of the laws of physics.  However, attempts to merge the two fundamental theories into a
 single unified theory of quantum gravity have stalled, due to mathematical difficulties and the absence of
 clear observational evidence in favour of any of the ansätze proposed so far.


<a id="org40c2e50"></a>

## quantum entanglement

-   EPR Paradox (1935)
-   Bell's Theorem (1964) - proved that local hidden variable theories, which aim to explain entanglement
    through classical means, are incompatible with the predictions of quantum mechanics. This theorem provided a
    framework for testing entanglement experimentally.

steps

-   particles interact, they become "entangled," meaning their properties, such as spin (up or down) or
    polarization (left or right). become connected
-   If you measure the state of particle A (e.g., its spin), you'll instantly affect the state of particle B,
    even if it's on the other side of the universe.

properites

-   Quantum superposition: Entangled particles can exist in multiple states simultaneously, which is a
    fundamental aspect of quantum mechanics.
-   Entanglement monogamy: Entangled particles can only be entangled with a limited number of other particles,
    which is known as entanglement monogamy.
    -   To understand entanglement monogamy, consider a scenario where you have three particles: A, B, and C. If
        particles A and B are maximally entangled, the principle of entanglement monogamy suggests that particle A
        cannot be maximally entangled with particle C at the same time. The entanglement between A and C would be
        limited by the entanglement already existing between A and B. This does not mean that A and C cannot be
        entangled at all, but rather that the degree of entanglement between them is constrained by the existing
        entanglement between A and B.
-   Entanglement swapping: Entanglement can be transferred from one particle to another without physical
    transport of the particles.
    -   The process of entanglement swapping can be described as follows: Suppose you have two pairs of entangled
        particles, (A-B) and (C-D). If you perform a joint measurement on particles B and C, you can entangle
        particles A and D, even if they have never interacted before. This effectively "swaps" the entanglement
        from the (A-B) and (C-D) pairs to create an entangled (A-D) pair. This process does not require the
        physical movement of particles A and D towards each other; the entanglement is transferred through the
        measurement process on particles B and C.


<a id="orgafcb86e"></a>

### Entanglement swapping

Suppose you have two friends, Alice and Bob, who are separated by a large distance. They each have a pair of
 entangled particles:

   Alice has particles A and B, which are entangled in such a way that if A is spinning clockwise, B is
spinning counterclockwise, and vice versa.  Bob has particles C and D, which are also entangled in the same
way.

Alice and Bob want to entangle particles A and D, but they can't physically move them closer to each other. To
 do this, they perform a joint measurement on particles B and C. Alice measures the spin of particle B and
 finds that it's spinning clockwise. At the same time, Bob measures the spin of particle C and finds that it's
 spinning counterclockwise. Instantly, particles A and D become entangled, meaning that if A is spinning
 counterclockwise, D is spinning clockwise, and vice versa. This entanglement is created without any physical
 movement of particles A and D towards each other.


<a id="orge62d73d"></a>

## what can be entanglement?

-   Spin: The intrinsic angular momentum of a particle, which can be thought of as the particle's intrinsic rotation.
-   Polarization: The orientation of a particle's electric or magnetic field, which can be thought of as the direction of the particle's oscillations.
-   Momentum: The particle's momentum, which is a measure of its mass and velocity.
-   Energy: The particle's energy, which can be thought of as its ability to do work.
-   Phase: The phase of a particle's wave function, which is a measure of its relative position in a wave.


<a id="orgf11b198"></a>

## Hidden-variable theory теории скрытых параметров

is a deterministic physical model which seeks to explain the probabilistic nature of quantum mechanics by
 introducing additional (possibly inaccessible) variables.

Вселенная не может быть разложена на отдельно существующие «элементы реальности», тогда теории скрытых
 параметров нет.

полной в том смысле, что сможет сопоставить каждому элементу реальности определённую математическую величину,
 но эта величина будет связью между элементами, а не самим элементом.

две группы теорий скрытых параметров: одна предполагает ненаблюдаемую материю за пределами трёх
 пространственных измерений, увеличивая число измерений физического мира, как это сделано в теории струн;
 вторая группа указывает на то, что время по сути является достаточным дополнительным измерением, которое при
 неравномерности его течения может приводить к квантовым эффектам.


<a id="orga6deb7d"></a>

## cosmology: space-time created

-   The Big Bang Theory: The most widely accepted theory is that the universe began as a singularity, an infinitely hot and dense point, around 13.8 billion years ago. This singularity expanded rapidly, and as it did, space and time emerged. The universe cooled and particles began to form, eventually giving rise to the structure we see today.
-   Quantum Fluctuations: Another idea is that space and time arose from quantum fluctuations in the vacuum energy of the universe. These fluctuations can create tiny, temporary universes, which could have given rise to our own universe.
-   String Theory: String theory proposes that the universe has more than the four dimensions we experience (three dimensions of space and one of time). The additional dimensions are "compactified" or "curled up" so tightly that we can't observe them directly. The vibrations of strings in these higher dimensions could have created the universe we see.
-   Brane Cosmology: This theory suggests that our universe is a four-dimensional brane, or membrane, floating in a higher-dimensional space called the "bulk." The collision of our brane with another brane could have created the Big Bang and the universe we experience.
-   Causal Dynamical Triangulation: This quantum gravity theory proposes that space and time are made up of simple geometric building blocks called simplices. The universe emerged from a random, fluctuating network of these simplices, which eventually gave rise to the smooth, continuous space-time we experience.
-   Eternal Inflation: This theory suggests that our universe is just one of many bubbles in a vast multidimensional space. Each bubble represents a separate universe, and our universe is just one of many that arose from an eternally inflating multiverse.
-   Simulated Reality: A more speculative idea is that our universe is a simulation created by a more advanced civilization. This raises questions about the nature of reality and the possibility of a "creator" or "simulator."

These theories and hypotheses are not mutually exclusive, and it's possible that the creation of space and time involves a combination of these ideas. However, the origins of the universe remain one of the greatest mysteries of modern science, and a complete understanding may require further advances in our understanding of the universe and its underlying laws. As for the dimensions themselves, there are several theories about how they could have emerged:

-   Kaluza-Klein Theory: This theory proposes that the universe has more than four dimensions, but the extra dimensions are compactified or curled up so tightly that we can't observe them directly.
-   Fractal Theory: This theory suggests that the universe is made up of self-similar patterns at different scales, which could give rise to the emergence of dimensions.
-   Geometric Algebra: This mathematical framework provides a way to describe the geometry of space-time and the emergence of dimensions in a more unified and consistent way.


<a id="orgc3b2ff8"></a>

## distance versus local action (aether)

In the 17th to 19th centuries, there were intense debates among physicists about the nature of space and how
 objects interact with each other.

**quantum vacuum** may be the equivalent in modern physics of a particulate aether.

The word 'ether' has extremely negative connotations in theoretical physics because of its past association
 with opposition to relativity.

Relativity actually says nothing about the existence or nonexistence of matter pervading the universe, only
 that any such matter must have relativistic symmetry.


<a id="org6b70eed"></a>

# startup

-   Питч-дек (pitch deck) — презентация бизнес-проекта для инвесторов со слайдами.


<a id="orgbaca5e8"></a>

# Company common tools:

BPM (business process management) - modeling, analyzing, measuring, improving, and optimizing business
 processes to achieve strategic goals.

-   Modeling: flowcharts or using Business Process Model and Notation (BPMN).
-   Use data and metrics to optimize the processes over time.
-   Types:
    -   Integration-Centric: with HRMS, CRM, ERP and with minimal human intervention.
    -   Human-Centric: have approvals and notifications, efficient task tracking.
    -   Document-Centric:  facilitate routing, formatting, verification, and signing of documents as tasks progress.

HRMS

CRM

ERP (Customer Relationship Management) - customer interactions and data throughout the customer (current and
 potential) lifecycle.

-   Data Collection and Centralization: contacts, history of interactions, information.
-   Process Automation: such as sending automated emails.
-   Analytics and report about customer behavior
-   Types: On-Premise, Cloud-Based, Industry-Specific, All-in-One,


<a id="org6906b9a"></a>

# anon smartphone

1.  Выбор устройства
    -   Новый телефон: Лучше всего начать с нового устройства, чтобы избежать предустановленных программ и утечек данных.
    -   Б/У телефон: Если вы покупаете б/у устройство, убедитесь, что оно сброшено до заводских настроек.
2.  Операционная система
    -   Используйте кастомные прошивки: Рассмотрите возможность установки кастомной прошивки, такой как LineageOS или GrapheneOS. Эти системы обычно более безопасны и менее подвержены слежке.
    -   Удалите предустановленные приложения: Удалите все приложения, которые вы не используете, особенно те, которые могут собирать данные.
3.  Настройки конфиденциальности
    -   Отключите службы геолокации: Отключите GPS и другие службы определения местоположения.
    -   Настройте разрешения приложений: Ограничьте доступ приложений к вашим данным, таким как контакты, камера и микрофон.
    -   Используйте режим "Не беспокоить": Это поможет избежать ненужных уведомлений и слежки.
4.  Анонимная SIM-карта
    -   Покупка SIM-карты без идентификации: В некоторых странах возможно приобрести SIM-карту без предоставления личных данных. Используйте такие возможности для повышения анонимности.
    -   Использование виртуальных номеров: Рассмотрите возможность использования виртуальных номеров для регистрации в мессенджерах и других сервисах.
5.  Безопасные приложения
    -   Мессенджеры: Используйте мессенджеры с сквозным шифрованием, такие как Signal или Telegram (в режиме секретного чата).
    -   Браузеры: Используйте браузеры, ориентированные на конфиденциальность, такие как Tor Browser или DuckDuckGo Privacy Browser.
    -   VPN: Подключайтесь к виртуальной частной сети (VPN) для шифрования интернет-трафика и скрытия вашего IP-адреса.
6.  Защита данных
    -   Шифрование устройства: Включите шифрование данных на устройстве, чтобы защитить их в случае потери или кражи.
    -   Регулярные обновления: Обновляйте операционную систему и приложения для защиты от уязвимостей.
7.  Использование анонимных сервисов
    -   Анонимные поисковые системы: Используйте поисковые системы, которые не отслеживают пользователей (например, DuckDuckGo).
    -   Анонимные электронные почты: Создайте анонимный почтовый ящик (например, ProtonMail или Tutanota) для регистрации на сервисах.


<a id="org302eebd"></a>

# freelance

<https://www.data-mania.com/blog/how-this-marketing-data-scientist-made-370k-in-18-months/>

1.  online training courses
2.  He started taking contract work as an independent marketing data scientist
    -   His offers were not differentiated from market competitors
    -   His ideal customer profiles were not clear, and
    -   He was not clearly presenting the monetary value of the results his services could generate.
3.  He invested in taking his data business to the next level
    
    -   Market research. - He developed a concrete customer research study that helped him validate his minimum
    
    viable product. Also, he built a competitor matrix, and established clarity on his ideal customer profile. He
    then used that profile to clearly define his circle of influence. In other words, the influencers, team
    members, and other close associates who have the ability to influence his outcomes. Additionally, he
    clarified the true Total Addressable Market (TAM). TAM is the total market demand for his offers, expressed
    as an annual revenue estimate. After estimating his TAM, he crafted and executed a plan for meeting
    individuals within that market where they are.
    
    -   Offer development and positioning. He also made sure he was demonstrating his value to his growing audience.
    -   Operations optimization.


<a id="orgbeedaaa"></a>

## answer

There are several successful Python Data Scientists who have become freelancers and made money in the recent past. Here are some examples:

The author of the article "What I Learned in my First 3 Months as a Freelance Data Scientist" shares their experience of transitioning from a traditional data science job to freelancing. They discuss the benefits of working as a freelancer, such as having more control over the projects they work on and the ability to specialize in their areas of interest, such as natural language processing and graph theory.
In the YouTube video "I Spent $675.92 Talking to Top Data Scientists on Upwork—Here's what I Learned", the host interviews 10 top data science freelancers on Upwork and shares their insights on the freelance data science market. The freelancers discuss their experiences, strategies for finding clients, and the benefits of freelancing, such as the ability to work on diverse projects and the potential for higher earning potential.
In the article "I Spent $675.92 Talking to Top Data Scientists on Upwork — Here's what I learned", the author shares their experience of finding mentors on Upwork and the benefits of working with experienced data scientists. They discuss the importance of finding the right mentors and the value of learning from others' experiences.
In the blog post "How this marketing data scientist made $370k in less than 18 months", the author shares the story of a marketing data scientist who made $370,000 in less than 18 months by using the methods taught in a course and mentorship. The post highlights the potential for high earning potential in freelance data science.
In the Reddit post "6 months as a Data Science freelancer", the author shares their experience of being a freelance data scientist for 6 months and having more job offers than they can manage. They discuss their strategies for finding clients, such as using Upwork, LinkedIn, and online communities, and the importance of building a strong online presence.

These examples demonstrate the potential for Python Data Scientists to earn money and be successful as freelancers. They highlight the benefits of freelancing, such as the ability to work on diverse projects, the potential for higher earning potential, and the importance of building a strong online presence and network.

