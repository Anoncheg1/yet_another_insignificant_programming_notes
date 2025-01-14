
# Table of Contents

1.  [communities](#org44dcc54)
2.  [english terms](#org298e028)
3.  [Основные определения](#orgf468c31)
4.  [level of sophistication of a Data Warehouse](#org286fee0)
5.  [History](#orgfe5e767)
6.  [Teory](#orgc613c58)
    1.  [evolution](#org41e6cba)
    2.  [DW Development Approaches](#org6698111)
    3.  [Architecture - Организационная зрелость](#org2be559b)
        1.  [Data operations per Users by Steps:](#orge8bbe21)
        2.  [Feature store](#org4224cad)
    4.  [ML Data challenges:](#org51dc744)
    5.  [Operational vs analytical machine learning](#orgb231971)
    6.  [Best Practices](#org4ad58f6)
    7.  [Dimensional modeling](#org776a761)
    8.  [Loading](#org68d1052)
    9.  [Data management approaches](#org41e5b0c)
7.  [OLAP](#orgcf0e096)
    1.  [OLAP terms:](#org0488198)
    2.  [Типы OLAP ](#org21ddafc)
    3.  [SQL OLAP extension](#org2ff336a)
    4.  [Oracle OLAP](#org8fdab5e)
        1.  [links](#org5e683e9)
    5.  [API](#orgb0d89f2)
    6.  [features](#orgce9e387)
8.  [data warehouse and any data intergration system modeling](#org7a80b23)
    1.  [Normalization vs. denormalization](#org8f471b7)
    2.  [star schema - best data warehouse model  ](#orgc40a651)
    3.  [Data Model](#org941eeff)
    4.  [data mart](#org122ca99)
    5.  [Dimensional modeling](#orgf3fdb19)
        1.  [Моделирование многомерных кубов на реляционной модели данных:](#orgf0b31ce)
        2.  [виды fact table](#org3fc1ffa)
    6.  [links](#org73c09b2)
9.  [Predictive analytics](#org9c545db)
10. [виды софта](#org851f577)
11. [Types of database management software](#org8f80b06)
    1.  [Модели данных и языки запросов для баз данных](#org7087ead)
12. [problem Change-Data Capture (DELETE UPDATE)](#orgae001e8)
13. [time-to-market](#orga5c9898)
14. [выбор 2019](#orgf3d76cc)
15. [SQL builder tools](#orgcb8709b)
16. [APEX Oracle](#orgf6d2457)
    1.  [upload Excel file](#org849751e)
    2.  [create app upload from file](#org1b6f805)
    3.  [https://docs.oracle.com/en/database/oracle/application-express/18/data\_load\_wizard/](#org26e53ff)
    4.  [plugin](#org6148f1a)
17. [Oracle](#orgced45e0)
    1.  [column names and comments](#org3686f44)
    2.  [column info](#orga956f1c)
    3.  [psql](#org0b6dd4d)
    4.  [all available tables](#org51e0e43)
    5.  [get tables description](#org16a4990)
18. [Report and Dashboard (Data visualization)](#org116f844)
    1.  [terms](#org52b4e0c)
    2.  [Design best practives](#org85abb63)
    3.  [design tradeoff Generalist and Specialist](#org5b5c6fb)
    4.  [Excel Power Pivot](#org7b27317)
    5.  [Power BI Desktop](#orgf49e982)
        1.  [connection types](#orgf75b94e)
        2.  [features](#orgb4be0da)
        3.  [Power Query](#orgbdcba47)
        4.  [Data Analysis Expressions (DAX)](#orgefa6c75)
        5.  [dataflow](#org0931ffe)
        6.  [power query язык M](#org8d082c4)
        7.  [report as one string but no OFFSET and LIMIT:](#org53cac9d)
        8.  [custom visal apps](#org3e0f710)
    6.  [Tableau Public (Desktop Windows, mac)](#orgbfa4d3f)
    7.  [Metabase](#org615296a)
    8.  [Redash](#orgcdd51fe)
    9.  [Qlik Sense Desktop](#orgaf5c3bb)
    10. [SuperSet](#orga0d221e)
        1.  [create dashboard](#orgb86e6ea)
        2.  [feature:](#org30551f4)
        3.  [install 1.4](#org5448e5f)
        4.  [config](#org9bf74b3)
        5.  [install old](#org51adf0d)
        6.  [architecture](#org90b9cab)
        7.  [docker-compose](#org55d6372)
        8.  [pros and cons](#org801dd7e)
        9.  [links](#org74fce95)
        10. [security](#org6ab54d2)
        11. [semantic layer](#org2cf23c4)
    11. [Google Data Studio](#org41c2e25)
    12. [Looker](#orgbf47dbb)
    13. [как выбирать:](#org74af2f6)
    14. [4 качества хорошего дашборда](#org5fc1c30)
    15. [Виды отчетов и дашбордов⁣⁣](#org7e88338)
    16. [советы 20](#org6894ff4)
    17. [этапы построения](#org13d0c37)
    18. [дашборды на смартфоне](#org0bc6bcd)
19. [report commercial](#org2384a49)
    1.  [SAP Crystal Reports](#org774be59)
20. [Data Warehouse producsts](#orga6f4872)
    1.  [Clickhouse](#org489b051)
        1.  [Управление данными](#org250bc67)
        2.  [sql](#org81ba0b9)
        3.  [error ssl](#org33c5f90)
        4.  [Aiflow](#org05bfc8c)
        5.  [Power BI](#orgc48316e)
        6.  [compilation](#org5139197)
    2.  [MariaDB](#org2253895)
        1.  [install](#orgf54e742)
    3.  [PostgreSQL](#orgccca8c3)
    4.  [Greenplum BD](#org3548a8e)
        1.  [MPP](#org9df6fa8)
        2.  [Append-only tables](#orgfcd2939)
        3.  [install for kubernetes](#orgd445839)
        4.  [psql](#org568b8b6)
        5.  [Tablespaces not needed](#orgd1d98d6)
        6.  [Create Tables](#org3a6c06f)
        7.  [data types](#orgc324ab4)
        8.  [ROLE](#org13f34db)
        9.  [Greenplum ETL](#orgc7fa219)
        10. [Power BI](#org076588a)
        11. [Serial](#orgccc063a)
        12. [userful SQL](#orgc1b8cc8)
    5.  [Apache Druid](#org3a373c8)
    6.  [in memory additional DB with replication](#org8286f4f)
    7.  [DB vertica community edition](#org826016d)
21. [Oracle](#org0e6f9f3)
    1.  [Oracle Instant Client](#orgd2af3c5)
    2.  [SQL\* plus](#orgbeb5eb0)
    3.  [Constraints](#orgeb0b65a)
    4.  [SQL useful](#orgfc72aeb)
    5.  [Memory Architecture](#org2fa1349)
    6.  [cx<sub>Oracle</sub> python](#orgb837e36)
    7.  [characters](#org8866071)
22. [ETL vs. ELT](#orgde26766)
23. [ETL Extract, Transform, Load- traditional ETL paradigm - batch-driven](#org88e7789)
    1.  [targets](#org4552e74)
    2.  [process](#orgd2e04f0)
    3.  [Full and Incremental Loading](#orgbec99d1)
    4.  [CDC](#org57906e6)
    5.  [Spring Cloud Data Flow](#org8a4c3c5)
    6.  [Talend Open Studio](#org17d369c)
    7.  [staging tables Промежуточные таблицы](#orgac818a9)
    8.  [concurrent vs sequential](#org82a0ba5)
24. [Apache Airflow](#org37a33b9)
    1.  [terms](#orge3f3dd9)
    2.  [theory](#org16e9d60)
    3.  [variables](#orgd1fb291)
    4.  [Hooks](#org4f4e24a)
    5.  [components](#orgee557e4)
    6.  [scheduler](#org4646af8)
    7.  [dag](#org3ae11b0)
        1.  [create dag:](#org9f6d5c2)
    8.  [Operator](#org9149db2)
        1.  [Pipeline difinition:](#org60e281f)
        2.  [OracleOperator](#org2084c1a)
        3.  [PythonOperator](#org347f590)
        4.  [PythonOperator context](#orgbda1db8)
    9.  [Tasks](#org21d20ba)
        1.  [trigger<sub>rule</sub>](#orgc37460b)
    10. [TaskGroup](#org7f17d42)
    11. [airflow.cfg](#org041817d)
    12. [best practives](#org849bc3f)
        1.  [UPSERT in postgresql](#org8511be6)
    13. [local server](#org355822d)
    14. [Incremental Record Filtering](#org1521682)
    15. [deployment](#org3bd510a)
        1.  [docker-compose](#org777748c)
        2.  [Dockerfile](#orgcd91850)
        3.  [ferenet.py](#org77fba8e)
        4.  [mysqlconnect.py](#orgbcb1b76)
        5.  [airflow.sh](#orgcbc4be4)
    16. [test](#orgb10b2d8)
        1.  [operator](#orgbd966fa)
        2.  [dag test](#org368691b)
        3.  [task.execute](#orgf38f6d2)
    17. [dynamic dag](#orgfdcbb43)
    18. [pass data between operators](#org9d15195)
    19. [макросы Jinja в Airflow](#orgabfc2ee)
    20. [parallism config](#org9726854)
    21. [skip task](#org7a7798d)
    22. [stop dag](#org1f6a10d)
    23. [Executors](#orge390e92)
    24. [Cross-DAG Dependencies (subdags)](#org25f8a74)
        1.  [ExternalTaskSensor](#org3a5b50f)
        2.  [TriggerDagRunOperator](#orge327fb4)
        3.  [dag.implicit<sub>dependencies</sub> = ['dag<sub>1</sub>', 'dag<sub>2</sub>']](#orge0cb2a8)
        4.  [SubDagOperator](#org4997343)
    25. [Trigger Dag - JSON](#org6be5259)
    26. [update 2.0.2](#orgcba95d6)
    27. [create connection](#org649dc58)
    28. [create user](#org2abed3e)
    29. [restart](#orgebdfa5c)
    30. [problems](#org51280c4)
    31. [how to change config:](#orgc12782a)
    32. [rest API](#org658a767)
    33. [logs](#orgec426ef)
    34. [Database of Airflow](#org403e880)
25. [dbt - ETL](#orgd1141b0)
26. [Data Lake (Озеро данных)](#org6ce0f9a)
    1.  [критика](#orgd83dca4)
27. [Управленческий учет](#org1c79d4a)
28. [Юнит-экономика (unit-экономика, unit economics)](#org8fb5866)
    1.  [Зачем считать юнит-экономику](#orge1e037c)
    2.  [Когда](#org887a96a)
    3.  [Как](#orgd4921e5)
    4.  [Когортный анализ](#orgaa5ca49)
    5.  [links](#orgbc8a656)
29. [mail](#orgd01e814)
30. [Congos](#org85eb333)
31. [цфт разаботка](#orgd13d25e)
32. [Data Science](#org7c6055a)
33. [BI Platform video](#orgd97c072)
34. [Big Data ](#org3e76814)
    1.  [frameworks:](#org849d231)
        1.  [Apache: Hadoop vs Hive vs Spark](#org095fccf)
        2.  [Apache Spark](#orgd08cd6d)
        3.  [Hadoop](#orgb709ea9)
        4.  [Apache Hive](#org717ba57)
    2.  [tools](#org583761d)
    3.  [кодекс этики](#org59e20d7)
    4.  [MapReduce](#orgd8b8c4b)
    5.  [news](#org7bb54e8)
35. [Аналитическая платформа - система принятия решений](#org0516d05)
36. [система управления активами (ITAM)](#org7d276d8)
37. [Digital Marketing metrics](#orgbd53038)
    1.  [terms](#org78a3402)
38. [Data Strategy](#org29801f1)
39. [Data Management Plan](#org4be9c10)
40. [Data masking](#org83f1186)
    1.  [Terms:](#org0d5a432)
    2.  [For](#orga22bcd0)
    3.  [Проблемы:](#org3c23d87)
    4.  [Варианты решения](#org0f010ef)
    5.  [Open source tools](#orge216b70)
        1.  [Delphix - not open](#org21ea928)
        2.  [Fogger - PHP](#orgd3b2880)
        3.  [Masked-AI -  Python SDK + CLi](#orgc72f64c)
        4.  [Percona Server](#org0cc7e68)
        5.  [RAGFlow](#orga382e75)
        6.  [Verba](#org0af7915)
    6.  [LLMs](#org2a98bdd)
41. [Distributed Database System or Distributed DBMS](#org06d33de)
    1.  [Concurrency Control](#orgc613e63)
    2.  [links](#orgf64a982)
42. [Analytics Engineering, DataOps - DBT tool](#orgc70cfcf)
    1.  [features](#orgea56566)
    2.  [terms](#orgd7a9d5d)
43. [SQLite](#org8e7846a)
    1.  [features](#orgc619271)
44. [Redis vs MongoDB](#orge35e148)
45. [YDB](#orgb67b835)
    1.  [provide](#org6a0b3bb)
    2.  [cases](#org47a8d14)
    3.  [links](#org940476c)
46. [Business analysis](#org792a786)
47. [tmp](#orgae0b564)
    1.  [resume BI](#orgb18244a)
    2.  [my review](#orgdee84bb)
    3.  [my review2](#org0508d2b)
48. [links](#org76a7689)

-**- mode: Org; fill-column: 110; coding: utf-8; -**-


<a id="org44dcc54"></a>

# communities

-   издательство «Открытые системы» <https://> www.osp.ru
-   


<a id="org298e028"></a>

# english terms

executives [ɪgˈzekjʊtɪv] - руководители

-   wrangling [ˈræŋglə] that data into well-formed, actionable information - уменьшать


<a id="orgf468c31"></a>

# Основные определения

-   **Data warehouse:** ['weə] склад, system used for reporting and data analysis, and is considered a
    core component of business intelligence - long time horizon (up to 10 years)
-   **Data mart:** [mɑːt] a subset of the data warehouse (срез)
-   **Dimensional modeling:** is part of the **Business Dimensional Lifecycle** methodology developed by
    **Ralph Kimball**
-   **Lake:** One spot to work with data in work with data from applications like Salesforce, Hubspot, Jira, and
    Zendesk
    -   sources -> Lake -> Warehouse -> mart
    -   single SQL syntax
-   **data mesh:** децентрализованная сеть данных, выходы разделены на домены
-   **semi-structured data:** CSV, логи, XML, JSON
-   **wide-column store:** two-dimensional key–value store. Apache Cassandra.
-   **storage platform:** object storage or block storage or file storage built on a common distributed cluster
    foundation. Ceph, Hadoop Distributed File System (HDFS), Apache Spark.

levels:

1.  **Business intelligence** as it is understood today is said to have evolved from the **decision support systems** (DSS)
    
    -   several types of applications and technologies for acquiring, storing, analyzing, and providing
    
    access to information to help users make more sound business decisions
    
    -   include decision support systems, query and reporting, online analytical processing (OLAP), statistical analysis, and data mining
2.  **decision support system**
    -   model-oriented -
    -   data-oriented - adhoc queries and reporting
    -   executive information system (EIS), supports the strategic information needs of executive management
3.  **online analytical processing (OLAP) programs**

Roles:

-   Business Analyst - занимается поиском узких мест в бизнес процессах, формирует задачи, отслеживает
    эффективность процессов  - бизнес задачи:
    -   Автоматизация маркетинговых кампаний
    -   Накопление информации по клиентам из всех возможных источников и ее использование
    -   Автоматизация принятия на страхование, cкорингна предстраховойпроверкепо всем продуктам
    -   Скорингна жизненном пути клиента в компании
        -   Рост конверсии
        -   Увеличение проникновения дополнительных продуктов на клиента
        -   Принятие решений при урегулировании
        -   Мошенничество
        -   Отток
    -   Нестандартные задачи:
        -   Оценка взаимодействиясотрудников и подразделений SAS SNA
-   Data miner - адаптирует и тиражирует шаблоны наработки Data Scientist
-   Data Scientist - строит шаблоны / алгоритмы анализа - сложные задачи
    -   Python для точечных исследований

Consolidation database -  TODO


<a id="org286fee0"></a>

# level of sophistication of a Data Warehouse

-   **Offline operational data warehouse:** daily, weekly or monthly - integrated reporting-oriented data
-   **Offline data warehouse:** regular basis - data structure designed
-   **On time data warehouse:** for every transaction
-   **Integrated data warehouse:** different areas of business


<a id="orgfe5e767"></a>

# History

master file -> database -> online apps & central online database
batch -> online transaction processing

Extract file - exctracted by one app from database and shipped to another app.

Lot of them - spiderweb problem. Realization that there were different data - **operational** ( daily operations
of a business) and **informational**.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Operational systems</th>
<th scope="col" class="org-left">Informational/DSS</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Detailed</td>
<td class="org-left">Summarized</td>
</tr>


<tr>
<td class="org-left">Can be updated</td>
<td class="org-left">Snapshit records; no up</td>
</tr>


<tr>
<td class="org-left">Accurate up to the second</td>
<td class="org-left">Timestamp on each record</td>
</tr>


<tr>
<td class="org-left">for clerks</td>
<td class="org-left">used by management</td>
</tr>


<tr>
<td class="org-left">built based on requirements</td>
<td class="org-left">built without knowing reqs</td>
</tr>


<tr>
<td class="org-left">support small uniform tr-s</td>
<td class="org-left">support mixed workload</td>
</tr>


<tr>
<td class="org-left">yields 2-3-sec resp time</td>
<td class="org-left">yields 30-24-hour resp time</td>
</tr>


<tr>
<td class="org-left">Data designed for optimal storage(size)</td>
<td class="org-left">Data designed for optimal access(speed)</td>
</tr>


<tr>
<td class="org-left">data designed around functional usage</td>
<td class="org-left">data designed around subject areas</td>
</tr>


<tr>
<td class="org-left">very current data</td>
<td class="org-left">mainly historical data</td>
</tr>


<tr>
<td class="org-left">data is application oriented</td>
<td class="org-left">data is integrated</td>
</tr>


<tr>
<td class="org-left">referential integrity is useful</td>
<td class="org-left">referential integrity is not useful</td>
</tr>


<tr>
<td class="org-left">high availability is normal</td>
<td class="org-left">high availability is nice to have</td>
</tr>
</tbody>
</table>

Decision support system (DSS)

Operational processing was done out of an ERP systems like SAP. Information processing was done out of a data warehouse.


<a id="orgc613c58"></a>

# Teory

data -> data warehouse (information) -> analytical tools (knowledge) -> rules&model (insights) -> experience

help to two main kinds of decisions:

-   strategic decisions - direction of the company
-   operational decisions - routine and tactical decisions, for greater efficiency


<a id="org41e6cba"></a>

## evolution

steps:

1.  AWARE: Primary batched reports -  70% batch, 30% OLAP
2.  DEVELOPING: ad-hoc queries and an-al data mining - 55% batch, OLAP 40%, 15% predictive modeling & data
    mining
3.  PRACTICING: predictive - 30% batch, 45 OLAP, 30 mining
4.  OPTIMIZING: predictive - 20% batch, 30 OLAP, 30 mining, 10 event-based triggering
5.  LEADING: 20 20 20 20

stems 2:

-   manual spreadsheets - reports
-   data marts - KPIs
-   enterprise data warehouse
-   OLAP
-   propensity modeling - risk management
-   enterprise dashboard - events detection
-   relationship optimization

data -> Data Lake -> transfrom -> DW and marts

data lakehouse - single repository for all your data (structured, semi-structured, and unstructured) while
 enabling best-in-class machine learning, business intelligence, and streaming capabilities.

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
<th scope="col" class="org-left">Data Warehouse</th>
<th scope="col" class="org-left">Data Lake</th>
<th scope="col" class="org-left">Data Lakehouse</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Storage Data Type</td>
<td class="org-left">Works well with</td>
<td class="org-left">Works well with semi-structured</td>
<td class="org-left">Can handle structured,</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">structured data</td>
<td class="org-left">and unstructured data</td>
<td class="org-left">semi-structured, and unstructured data</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Purpose</td>
<td class="org-left">Optimal for data analytics</td>
<td class="org-left">Suitable for machine learning (ML)</td>
<td class="org-left">Suitable for both data analytics and</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">and business intelligence (BI) use-cases</td>
<td class="org-left">and artificial intelligence (AI) workloads</td>
<td class="org-left">machine learning workloads</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Cost</td>
<td class="org-left">Storage is costly and time-consuming</td>
<td class="org-left">Storage is cost-effective, fast,</td>
<td class="org-left">Storage is cost-effective, fast, and flexible</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">and flexible</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">ACID Compliance</td>
<td class="org-left">Records data in an ACID-compliant manner</td>
<td class="org-left">Non-ACID compliance: updates and</td>
<td class="org-left">ACID-compliant to ensure consistency as</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">to ensure the highest levels of integrity</td>
<td class="org-left">deletes are complex operations</td>
<td class="org-left">multiple parties concurrently read or write data</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>

<https://cinchy.com/blog/modern-data-architectures-a-guide>


<a id="org6698111"></a>

## DW Development Approaches

-   **top-down:** Bill Inmon - Date Warehouse first
-   **bottom-up:** Kimball - Data Mart created first

Disadvantages Of Top Down Design :

-   It represents a very large project and the cost of implementing the project is significant.
-   It is time consuming and more time required for initial set up
-   Highly skilled people required for set up

Disadvantage of Bottom Up Design  :

-   Initial cost is low but each subsequent phase will cost same
-   The positions of the data warehouse and the data marts are reversed in the bottom-up approach design.
-   It is difficult to maintain and often redundant and subject to revisions

Стандарт де факто, две базы (Data Warehouse and OLAP):

-   компактное хранение детализированных данных и поддержка очень больших БД, обеспечиваемые реляционными СУБД;
-   простота настройки и хорошие времена отклика, при работе с агрегированными данными, обеспечиваемые многомерными СУБД.


<a id="org2be559b"></a>

## Architecture - Организационная зрелость

1.  sources -> Warehouse -> Users
2.  sources -> Staging<sub>area</sub> -> Warehouse -> Users
    -   Staging area - когда много источников и нужно несколько стадий комбинации данных
3.  sources -> Staging<sub>area</sub> -> Warehouse -> Data Marts -> Users
    -   Data Marts - ускоренный слой - раздление данных по сферам деятельности
4.  sources -> Staging<sub>area</sub> and data lake -> Warehouse -> (Feature Store -> models), (data martes -> users)
    -   sources -> Kafka, Kinesis -> models, users

terms:

-   **Data Lake:** centralized repository that stores large volumes of raw, unprocessed data from various sources,
    including structured, semi-structured, and unstructured data. In raw form. For data exploration,
    manipulation, and analysis, for big data analytics.
-   **Data Warehouse:** stores integrated data in structured and formatted way. For to support standardized
    business intelligence activities such as reporting, data analysis, and data mining.
-   **Feature Store:** stores features or variables derived from raw data, which are used to train machine
    learning models or serve predictions in real-time applications. For monitoring features in production. For
    operational machine learning and analytical (
-   **Feature Server (type of feature store):** serving the latest feature values in production.

sources

-   batches
    -   Data warehouses / lakes
    -   Transactional data sources
-   streams - Kafka, Kinesis
-   Prediction request data - events (e.g. the query a user just entered into the search box)

requirements:

-   Data scientist: Build, Train, Deploy
-   Data Engineer: Can you give me access to this raw data? Can you put these features into production?
-   ML Engineer: put model in production automatic?
-   Lawyer: can I use this data for this model?
-   Product Enginer: Can you integrate this model and app?
-   Site Reliability Engineer: Can you set up monitoring?


<a id="orge8bbe21"></a>

### Data operations per Users by Steps:

1.  Data Scientist
    -   1# Discover raw data
    -   2# Develop features
    -   3# Train model
2.  Data Engineer
    -   4# Productionize Data Pipeline
3.  ML Engineer
    -   5# Deploy model
4.  Product Engineer
    -   6# Integrate service
5.  Site Reliability Engineer:
    -   7# Set Up Monitoring


<a id="org4224cad"></a>

### Feature store

-   Feature engineering
-   Automate feature computation, backfills, and logging
-   Share and reuse feature pipelines across teams
-   Track feature versions, lineage, and metadata
-   Achieve consistency between training and serving data
-   Monitor the health of feature pipelines in production

<https://feastsite.wpenginepowered.com/blog/what-is-a-feature-store/>


<a id="org51dc744"></a>

## ML Data challenges:

1.  Accessing the right raw data source
    -   Data discovery - where data?
    -   Access approval
    -   Raw data access - universal interface to all sources
2.  Building features from raw data
3.  Combining features into training data
4.  Calculating and serving features in production
5.  Monitoring features in production


<a id="orgb231971"></a>

## Operational vs analytical machine learning

-   **operational machine learning:** which directly impact the end-user experience. when an application uses an
    ML model to autonomously and continuously make decisions that impact the business in real time.  run
    “online” in production on a company’s operational stack.
    -   recommendation systems
    -   search ranking
    -   dynamic pricing
    -   fraud detection
    -   loan application approvals
    -   Product recommendations
    -   Traffic prediction
    -   Real-time pricing
-   **analytical machine learning:** use cases, which power analytical decision-making. Typically feed directly
    into reports, dashboards, and business intelligence tools.
    -   sales forecasting
    -   Lead scoring
    -   churn predictions
    -   customer segmentation.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">Analytical ML</th>
<th scope="col" class="org-left">Operational ML</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Decision Automation</td>
<td class="org-left">Human-in-the-loop</td>
<td class="org-left">Fully autonomous</td>
</tr>


<tr>
<td class="org-left">Decision Speed</td>
<td class="org-left">Human speed</td>
<td class="org-left">Real time</td>
</tr>


<tr>
<td class="org-left">Optimized For</td>
<td class="org-left">Large-scale batch processing</td>
<td class="org-left">Low latency and high availability</td>
</tr>


<tr>
<td class="org-left">Primary Audience</td>
<td class="org-left">Internal business user</td>
<td class="org-left">Customer</td>
</tr>


<tr>
<td class="org-left">Powers</td>
<td class="org-left">Reports &amp; dashboards</td>
<td class="org-left">Production applications</td>
</tr>
</tbody>
</table>


<a id="org4ad58f6"></a>

## Best Practices

1.  project must be managed by both IT and business professionals. DW design must be tested, redesign is much
    more expensive.
2.  should be built incrementally - with users respond. Users must be trained and absorb features of the system.
3.  Only cleansed and high-quality data should be loaded. Quality and adaptability from the start.


<a id="org776a761"></a>

## Dimensional modeling

for data warehouse design -  entity-relationship modeling (ER)

-   facts (measures) - numeric values that can be aggregated
-   dimensions (context) - descriptors that define the facts, date

For example, sales amount is a fact; timestamp, product, register#, store#, etc. are elements of dimensions

it is usually a good idea to split **date and time** into two or more separate dimensions.


<a id="org68d1052"></a>

## Loading

-   Full load - completely replaced, no timestamp
-   Incremental load
    -   streaming incremental load - load only new.
    -   batch incremental load - not easy to re-run the entire load if there's an error

Challenges:

-   monitoring errors
-   compatibility - когда меняется тип поля с integer на float
-   order and dependencies
-   reconcilation - ensure data in an ETL Data Warehouse is correct and consistent - continuous process


<a id="org41e5b0c"></a>

## Data management approaches

**Data Platform** - broad term include: infrastructure, tools, and services necessary to manage, process, and
 analyze data.

**Data Mesh** - decentralized data architecture.

-   organizes data by specific business domains, such as marketing, sales, or customer service.
-   Principles:
    -   Domain Ownership - teams who produce the data are also responsible for its quality, documentation, and
        access policies.
    -   Data as a Product - data have lifecycle, ensuring it meets the needs of various consumers (other domains).
    -   “Self-Service Data Infrastructure Platform” - create, manage, and use data products autonomously.
        -   support for various types of storage such as relational databases (RDBMS), NoSQL databases, object storage, data warehouses, and data lakes.
    -   Federated Governance - ensures interoperability and standardization across the organization through
        centralized governance. promotes adherence to organizational rules and industry regulations, ensuring data
        quality and accessibility.

**Data Lakes**

**Data Fabric**


<a id="orgcf0e096"></a>

# OLAP

SQL and relational database reporting tools can certainly query, report on, and analyze multidimensional data
stored in tables, but performance slows down as the data volumes increase. And it requires a lot of work to
reorganize the results to focus on different dimensions.

An OLAP server returns new data to Excel every time that you change the layout of the report.

OLAP databases contain two basic types of data:

-   measures - the quantities and averages that you use to make informed business decisions
-   dimensions - which are the categories that you use to organize these measures


<a id="org0488198"></a>

## OLAP terms:

-   cube - data structure
-   Measure - central value in cube
-   Member - item in a hierarchy representing one or more occurrences of data.
    -   For example, 2007 and 2008 represent unique members in the year level of a time dimension, whereas January
        represents nonunique members in the month level because there can be more than one January in the time
        dimension if it contains data for more than one year.
-   Calculated member - A member of a dimension whose value is calculated at run time by using an expression.
    -   For example, a calculated member, Profit, can be determined by subtracting the value of the member, Costs,
        from the value of the member, Sales.
-   Dimension - A set of one or more organized hierarchies of levels in a cube that a user understands and uses
    as the base for data analysis.
-   Hierarchy - A logical tree structure that organizes the members of a dimension such that each member has one
    parent member and zero or more child members.
    -   ex. Time hierarchy containing the levels Quarter, Month, and Day, January is a child of Qtr
-   Level - Year, Quarter, Month, and Day levels in a Time hierarchy.


<a id="org21ddafc"></a>

## Типы OLAP <a id="org1b09dab"></a>

**MOLAP (Multidimensional OLAP)** содержит детальные и агрегированные данные
Преимущества:

-   Высокая производительность
-   Структура и интерфейсы наилучшим образом соответствуют структуре аналитических запросов.
-   есть разные встроенные функции

Недостатки:

-   Дороги, патентованные технологии
-   неэффективно используется внешняя памятью. Плохие механизмы транзакций
-   Отстутствие единых стандартов
-   Не поддерживают репликацию данные, часто используемую для загрузки данных

**ROLAP (Relational OLAP)** гиперкуб эмулируется из таблиц на логическом уровне
Преимущества:

-   размер хранилища не является критичным, развитые средства администрирования
-   так как источники обычно в реляционных СУБД то это более совместимо
-   частые изменения структуры измерений легче чем в MOLAP
-   менее требовательны к выч мощности

Недостатки:

-   ограниченные возможности с точки зрения расчета значений функционального типа????
-   меньшая производительность

**HOLAP (Hybrid OLAP)** детальные данные остаются в реляционной базе, агрегатные данные хранятся в многомерной


<a id="org2ff336a"></a>

## SQL OLAP extension

-   SQL-99 introduced three extensions to the GROUP BY statement: the CUBE, ROLLUP and GROUPING SETS operator.
    <https://www.kdnuggets.com/2018/09/olap-queries-sql-refresher.html>


<a id="org8fdab5e"></a>

## Oracle OLAP

Oracle Database 11g, the Oracle database optimizer can transparently redirect SQL queries to levels within the
OLAP Option cubes. The cubes are managed and can take the place of multi-dimensional materialized views,
simplifying Oracle data-warehouse management and speeding up query response.

-   OLAP DML for DDL and DML
-   an interface from SQL


<a id="org5e683e9"></a>

### links

-   <https://www.kdnuggets.com/2018/09/olap-queries-sql-refresher.html>


<a id="orgb0d89f2"></a>

## API

-   OLE DB for OLAP - 1997
-   MDX query language - became the de facto standard
-   XML for Analysis - In 2001 Microsoft and Hyperion announced
-   LINQ - used to query SSAS OLAP cubes from Microsoft .NET.


<a id="orgce9e387"></a>

## features

-   query on raw data
-   “connect live” model


<a id="org7a80b23"></a>

# data warehouse and any data intergration system modeling

-   staging database - reduce the number of reads from the source operational system.
    -   load data as-is from the data source into the staging database on a regular schedule.
    -   separated your transformation dataflows from the staging dataflows
-   Layered architecture - staging and transformation dataflows can be two layers of a multilayered dataflow -
    separate tables


<a id="org8f471b7"></a>

## TODO Normalization vs. denormalization


<a id="orgc40a651"></a>

## star schema - best data warehouse model  <a id="org3470ce9"></a>

pros

-   to minimize the amount of time to query the data from the model
-   easy to understand for the data visualizer
-   простая структура и запросы
-   некоторые промышленные СУБД имею инструменты класса OLAP/Reporting работающие со звездой

Недостатки:

-   Денормализация вносит избыточность данных
-   Если агрегаты с исходными данными то в таблицах измерений дополнительный параметр  level ????

The data tables should be remodeled

-   dimension tables, which keeps the descriptive information
    -   Entities can include products, people, places, and concepts including time itself.
    -   date dimension table - most consistent table
    -   for filtering and grouping
-   one fact table, to keep the aggregable data
    -   observations or events
    -   сильно денормализована. Большое кол во строк
    -   for summarization

terms

-   dimensionality - dimension key columns
-   granularity - dimension key values

**Снежинка Snowflake Schema** - то же самаое, только у каждой dimensional table может быть еще dimensional table

То же что и звезда, только одно измерение может быть в нескольких таблицах - так реализуется многоуровневость.
Дополнительные таблицы измерений называют outrigger table. Например категоря для продуктов - измерения для
прода.  Преимущество: минимизация избыточности измерений и более эффективно выполнять запросы со структурой
измерений Недостаток - за нормализацию платить временем выполнения


<a id="org941eeff"></a>

## Data Model

-   design of data warehouse.

At highest level, the data model is an **Entry relationship diagram(ERD)** - represents only granular data and no derived data.
**ERD** - consist of <span class="underline">Entities</span> and relationships.
Entities is futher detailed in **data item set(DIS)** - keys and attributes and futher at **physical design** for database management system.
**physical aspects** - partitioning, loading, indexing, storage media, timestamping.

One table relates to another by means of shared key or foreign key relationship.
Table represent **subject area** or subset of **subject area**.

-   Customer
-   Product    [ˈprɒdʌkt]
-   Shipment [ˈʃɪpmənt]
-   Vendor     [ˈvɛndɔː] продавец
-   Order       [ˈɔːdə]

It is patently a mistake to build the data warehouse in an all-at-once or "big bang" approach.

**Extract/transfer/load ETL** software - create interface to bring the data into the world of data warehouse.
In SAP BW it is so-called <span class="underline">Staging Engine</span> to perform simple transformation and conversion.


<a id="org122ca99"></a>

## data mart

Reasons to create a Data Mart from a Data Warehouse

-   To create a passive copy of a few fact tables that does not change frequently for the purpose of analysis.
-   To decrease the query load on a data warehouse. A copy of the fact table is created in a separate database
    located on a different server, and the reports are pointed to this server.
-   To simulate the critical business scenarios by changing the data in a data mart. The data in a data
    warehouse cannot be manipulated without affecting the performance.

<https://www.wideskills.com/data-warehousing/data-marts>

cons

-   The continuous implementation of data marts poses a problem of tracking.
-   The numerous activities of data extractions, administration, and environmental impacts increase the hardware
    and software expenses


<a id="orgf3fdb19"></a>

## Dimensional modeling

-   <https://www.intuit.ru/studies/courses/1145/214/lecture/5508?page=1>
-   <https://www.intuit.ru/studies/courses/1145/214/lecture/5508?page=2>

Data modelling is mainly about providing organization and understanding to the data. The advantages you stated
hold true regardless of the database platform you use.

columnar [kəˈlʌmnə] database:

    About the only design decision that changes when using a columnar database is what to do with row level free
    form comments that one occasionally runs into. In a row oriented database the best practice is to put them in
    a junk dimension so the physical size of the data doesn't impead performance of queries that don't need the
    data. That is not the case with a columnar arrangement. In such a database, all it means is more vectors which
    are ignored if queries don't need the data. And, in fact, the number and size of such vectors would be the
    same had you created a separate dimension anyway... so there is no point in breaking such data out.

Типы OLAP [7.2](#org1b09dab)


<a id="orgf0b31ce"></a>

### Моделирование многомерных кубов на реляционной модели данных:

**Звезда Star Schema**
**Снежинка Snowflake Schema** - то же самаое, только у каждой dimensional table может быть еще dimensional table
see [8.2](#org3470ce9)


<a id="org3fc1ffa"></a>

### виды fact table

-   Transactional
    -   by product
    -   в отчете нужно вычислять сумму или на дату
-   Snapshot
    -   count after month - range of dates
    -   в отчете нужно находить промежуточные значения
-   Accumulater
    -   by phases/stages of product
    -   в отчете столбцы прикрепляются


<a id="org73c09b2"></a>

## TODO links

<https://docs.microsoft.com/en-us/power-query/dataflows/best-practices-for-data-warehouse-using-dataflows>
draw ER diagrams online <http://dbdiagram.io>


<a id="org9c545db"></a>

# TODO Predictive analytics

-   <https://en.wikipedia.org/wiki/Predictive_analytics>


<a id="org851f577"></a>

# виды софта

-   data visualization tools
    -   Apache Superset
    -   Apache Zeppelin
    -   Power BI (Windows)
    -   Grafana
    -   Redash
    -   Metabase
    -   Tableau
-   Spreadsheets
-   Reporting and querying software: applications that extract, sort, summarize, and present selected data
-   Online analytical processing (OLAP)
-   Digital dashboards
-   Data mining
-   Business activity monitoring
-   Data warehouse[7]
-   Local information systems
-   Data cleansing[8]
-   Dashboards - at-a-glance views of key performance indicators (KPIs). displayed on a web page which is linked

to a database that allows the report to be constantly updated


<a id="org8f80b06"></a>

# Types of database management software

-   traditional relational database management systems
-   analytic database management software
    -   in-memory database
    -   parallel database seeks to improve performance through parallelization for tasks such as loading data,
        building indexes and evaluating queries.
        -   Shared memory architecture
        -   Shared disk architecture
        -   Shared-nothing architecture
    -   Column-oriented DBMS - more efficient access to data when only querying a subset of columns and more
        options for data compression,  less efficient for inserting new data
    -   online analytical processing (OLAP) - support SQL OLAP extensions or realize own OLAP operations. Data is
        organazed in such way to form OLAP cubes.
-   active database - includes an event-driven architecture - Possible uses include security monitoring,
    alerting, statistics gathering and authorization
-   in-memory database
-   document-oriented database is designed for storing, retrieving, and managing document-oriented
-   graph database is a kind of NoSQL database that uses graph structures with nodes, edges, and properties to
    represent and store information
-   Vector Stores (such as Pinecone or Weaviate) - efficient storage/retrieval/similarity search or other
    vector-based operations of high-dimensional numerical vectors. Used for LLM embedding vectors of
    queries. Search Performance is critical. **pgvector** SQL extension commonly used. <a id="org4a99d36"></a>


<a id="org7087ead"></a>

## Модели данных и языки запросов для баз данных

Майкл Стоунбрейкер и Эндрю Павло

Модели данных и языки запросов

-   **MapReduce**
    -   Hadoop проложил дорогу для других платформ обработки данных: Spark, Flink (stream/batch-processing framework), начинавшихся как лучшие
        реализации MapReduce с процедурными API, но добавивших себе поддержку SQL.
-   **Ключ-значение**
    -   недостаток, что все операции нужно самому реализовывать
    -   Redis, RocksDB
-   **Документоориентированные системы.**
    -   JSON (MongoDB, Couchbase)
    -   это такие же объектно-ориентированные СУБД
-   **column-family, wide-column**
    -   разновидность систем NoSQL: BigTable, Cassandra и HBase.
-   **Текстовые поисковые системы**
    -   Elasticsearch, Solr - они хорошо поддерживают хранение и индексирование текстовых данных, хотя почти не
        предоставляют возможностей для транзакций
-   **СУБД массивов**
    -   HDF5, Rasdaman, kdb+ и очередное изобретение Стоунбрейкера — SciDB, хранят данные в виде двумерных матриц.
    -   обработка изображений со спутников, сетки данных научных экспериментов и т. п.
-   **Векторные СУБД**
    -   Pineone, Milvus, Weaviate
    -   РСУБД (Oracle Database, Rockset и ClickНouse) уже обзавелись векторными индексами. Тем не менее поисковые
        системы, включая Elasticsearch и Solr
-   **Графовые СУБД.**
    -   Neo4j, TigerGraph -  OLTP и OLAP на связанных данных
    -   В стандарт SQL:2023 включены запросы графов свойств (SQL/PGQ) для определения и поддержки прохода графов в
        реляционной СУБД.

Системные архитектуры

-   Столбцовые системы
-   Облачные СУБД, Open Source СУБД попадут в орбиту крупных облачных провайдеров
    -   MongoDB, Elasticsearch и DynamoDB
    -   DBaaS и PaaS - Amazone Aurora либо Google Cloud SQL, - экономическая ценность (value proposition) этих
        сервисов заключалась лишь в автоматизации развертывания и обработке
-   «Дома» и озера данных. - объектные хранилищама.
    -   lakehouse (гибрид хранилища данных и озера данных) - выполняют запросы SQL- и NoSQL, API Pandas DataFrame
    -   архетип OLAP-СУБД на ближайшие десять лет
    -   Табличные форматы (Apache Iceberg, Apache Hudi, Databricks Delta Lake) позволили любому приложению записывать в централизованное хранилище произвольные данные.
    -   Databricks, Dremio, PrestoDB и Trino.
-   Системы NewSQL - NoSQL, горизонтально масштабироваться при соблюдении требований ACID - не прижился
-   Аппаратные ускорители. - OLAP-нагрузок
-   Системы баз данных на основе блокчейна. - одноранговых приложений, когда доверять никому нельзя
    
    -   Эта технология сегодня работает, но главным образом в сфере криптовалют
    
    перспективны тематические чат-боты, которые уточнят запрос и сформируют действие.

<https://www.osp.ru/os/2024/03/13058759>


<a id="orgae001e8"></a>

# TODO problem Change-Data Capture (DELETE UPDATE)

MariaDB Platform - two Transactional + Analitical DB with replication
Update:

-   Oracle: PLSQL with row versions


<a id="orga5c9898"></a>

# time-to-market

In a market with 20% annual growth and 12% price-drop per annum,
technological products which arrive on the market six months late but
on budget generate 33% less profit over five years, whereas getting
the product to market on time but 50% over budget only reduces profits
by 4%.  (Ali et al., 1995).

На рынке с 20% годовым ростом и 12% падением цены.
Продукты которые прибывают с опозданием на 6 месяцев генерируют на 33% меньше прибыли в течении 5 лет.
В то время как продукты с 50% over budget приходящие вовремя генерируют прибыль только на 4% меньше.


<a id="orgf3d76cc"></a>

# выбор 2019

**OLAP** <https://en.wikipedia.org/wiki/Comparison_of_OLAP_servers>

-   Apache Kylin - Hadoop required
-   Druid -  Java - OLAP загрузка из всего, поддержка Kafka + Apache Superset- business intelligence web application
    <https://www.youtube.com/watch?v=24mvzMTdYXQ>
    -   платная поддержка <https://imply.io/services> <https://hortonworks.com/open-source/druid/>
    -   require:
        -   MySQL or PostgreSQL or Derby(test) - есть предсказуемый запас времени при отказе - можно заменить на
            Cassandra-based DB
        -   ZooKeeper
        -   В организации есть эксперты по Java
    -   pros
        -   быстро
        -   масштабируемость - distributed data store - Большой кластер
        -   open-source
        -   предагрегация
        -   Apache Superset GUI native support
            -   LDAP
            -   высокая интерактивность
-   ClickHouse OLAP (yandex) - C++ - <https://clickhouse.yandex> <https://www.youtube.com/watch?v=w1-XsL3nbRg>
    <https://www.youtube.com/watch?v=PLMSA_gDdyM>
    -   GUI
        -   tabix <https://www.youtube.com/watch?v=w1-XsL3nbRg>
        -   Apache Superset
        -   Apache Zeppelin - Web-based notebook that enables data-driven, interactive data analytics and
            collaborative documents
        -   Grafana
    -   платная поддержка <https://www.altinity.com/>
    -   pros
        -   Linear scalability. It's possible to extend a cluster by adding servers. - Малый кластер
    -   cons:
        -   no transactions.
        -   В организации есть эксперты по C++
-   Apache Pinot - OLAP
-   Jedox OLAP Server - in-Memory Database - не хранит offline
-   Apache Pinot (Incubating)
-   Pentaho BI Suite - OLAP - есть CE но поменялась компания 2017. 2017 stable
    -   Mondrian - 2017
    -   cons - много ограничений. Сравнение EE и CΕ <https://youtu.be/Z9gSDaQQscE?t=2467>
-   JasperReports
    -   JasperReports Server
    -   Jaspersoft® Studio - design and run report templates Eclipse-based
    -   JasperReports Library
    -   Jaspersoft ETL - 2016
    -   pros:
        -   OLAP
        -   богатый GUI
        -   ювелирный построитель отчетов для A4 HTML, PDF, Excel, OpenOffice and Word.
        -   история начиная с 2001 года.
        -   Ability to make modifications to underlying data cube
    -   cons:
        -   серьезные ограничения по функционалу в каждом продукте, но без лимитов
        -   мало стороннего софта поддерживающего JasperReports Server
        -   закрытый код

Data Science:

-   Metabase - simple but friendly
-   <https://reportserver.net> ‐ EN only
-   BIRT Project - OLAP - Eclipse Public License - устарел


<a id="orgcb8709b"></a>

# SQL builder tools

-   DBeaver
-   aginity.com


<a id="orgf6d2457"></a>

# APEX Oracle

Oracle Application Express (APEX) - low-code development platform to build complex web applications
which can be used in most modern web browsers.

-   web-based
-   shipped with Oracle database, installed by default

**Workspace** is a logical domain where you define APEX applications

-   associated with one or more database schemas (database users) which are used to store

Has:

-   App Builder
-   SQL Workshop - create and maintain database objects
-   App Gallery - apps samples

<https://explorer.co.uk/loading-excel-into-apex-19-1/>

-   APEX<sub>DATA</sub><sub>PARSER</sub> API package <https://blogs.oracle.com/apex/super-easy-csv-xlsx-json-or-xml-parsing-about-the-apex_data_parser-package>

upload methods <https://www.slideshare.net/JeffreyKemp1/apex-data-loading-ausoug-2018>

-   External Table / SQL\*Loader ( from file on server)
-   XML – native SQL using XMLType
-   APEX Data Workshop (SQL Workshop - Utils - Data Workshop) (App Builder - Create - From File)
-   APEX Data Loader Wizard (Create App with page Data Loader) ( Fixed!)
-   Alexandria CSV<sub>UTIL</sub><sub>PKG</sub> (Fixed)
-   LOB2Table
-   Excel2Collection (plug-in)


<a id="org849751e"></a>

## upload Excel file

<https://oracle.github.io/learning-library/developer-library/apex/spreadsheet/?page=README&lab=lab-1-create-app-spreadsheet>
<https://blogs.oracle.com/apex/quick-and-easy-data-loading-with-apex-191>


<a id="org1b6f805"></a>

## create app upload from file

1.  Create new Workspace в INTERNAL workspace
    -   create schema
    -   schema password
    -   create user of workspace
2.  Посмотреть название схемы и имя пользоватяля
3.  Залогиниться под ним в workspace
4.  Create Applicateion - Upload from file
    -   upload file
    -   ввсети название для Таблицы


<a id="org26e53ff"></a>

## <https://docs.oracle.com/en/database/oracle/application-express/18/data_load_wizard/>

Creating a Data Load Wizard


<a id="org6148f1a"></a>

## plugin

<https://github.com/gopalmallya/csv2table>


<a id="orgced45e0"></a>

# Oracle


<a id="org3686f44"></a>

## column names and comments

    SELECT * FROM  all_tab_columns "
                             "LEFT JOIN all_col_comments cc ON all_tab_columns.table_name = cc.table_name "
                             "AND cc.column_name = all_tab_columns.column_name "
                             "WHERE all_tab_columns.table_name = 'MART_NORMA_AUTO' "
                             "ORDER BY all_tab_columns.column_id


<a id="orga956f1c"></a>

## column info

"SELECT column<sub>id</sub>, column<sub>name</sub>, data<sub>type</sub>, nullable, data<sub>length</sub>, data<sub>precision</sub>, data<sub>scale</sub>, avg<sub>col</sub><sub>len</sub> "
      "FROM user<sub>tab</sub><sub>columns</sub> WHERE table<sub>name</sub> = '"

-   target<sub>table</sub>
-   "' ORDER BY column<sub>id</sub>"


<a id="org0b6dd4d"></a>

## psql

Psql -U superset - вход в коносль под определенным пользователем

-   \conninfo - информация о соединении
-   \q - выход из меню
-   \d - список таблиц

psql -U superset superset < /home/backups.sql - восстановление из бэкапа


<a id="org51e0e43"></a>

## all available tables

oc.cur.execute("SELECT distinct table<sub>name</sub> FROM all<sub>col</sub><sub>comments</sub>")
oc.cur.execute("SELECT distinct table<sub>name</sub> FROM all<sub>tab</sub><sub>columns</sub>")
oc.cur.execute("SELECT owner, table<sub>name</sub> FROM sys.all<sub>tables</sub>")


<a id="org16a4990"></a>

## get tables description

-   SELECT table<sub>name</sub>, comments FROM dba<sub>tab</sub><sub>comments</sub> WHERE owner='OE' AND table<sub>name</sub>='INVENTORIES';
-   SELECT table<sub>name</sub>, column<sub>name</sub>, comments FROM dba<sub>col</sub><sub>comments</sub> WHERE owner `'OE' AND table_name`'INVENTORIES';


<a id="org116f844"></a>

# Report and Dashboard (Data visualization)

Метаданные -  показывает BI системе каким образом организована система хранения данных источника или OLAP кубы


<a id="org52b4e0c"></a>

## terms

-   dashboard [ˈdæʃbɔːd] - приборная панель
-   план-факт - отчет о результатах по целям, три колонки: план, фактическое, выполнение в процентах, опционально дельта


<a id="org85abb63"></a>

## Design best practives

-   5-9 visualizations for each dashboard
-   answer business questions
-   visuals must be correct for business( in proper sequence)
-   reveals details as needed


<a id="org5b5c6fb"></a>

## design tradeoff Generalist and Specialist

is it better to be all-around or highly specialized?

-   **generalist species:** is able to thrive in a wide variety of environmental conditions and can make use of a
    variety of different resources.
-   **A specialist species:** can thrive only in a narrow range of environmental conditions or has a limited diet,
    but optimized for that.


<a id="org7b27317"></a>

## Excel Power Pivot

build a ROLAP model in Power Pivot, and use pivot tables to explore


<a id="orgf49e982"></a>

## Power BI Desktop

Опирается на тип поля в запросе

Иерархия - Matrix with

-   Row headers - Stepped layout indentation


<a id="orgf75b94e"></a>

### connection types

-   Import Data (or some call it Scheduled Refresh) - full load of source tables to memory and disk
    -   there is compression engine of Power BI - xVelocity and works on a Column-store in-memory technology
    -   no limitation in the functionality
    -   for web: it is fastest: Data loaded into the memory of the server, and reports queries will be evaluated from the data
        loaded into the memory.
-   DirectQuery - Power BI will be a visualization layer, then query the data from the data source every time.
    -   no data stored in the model.
    -   limited amount of RDBMS: SAP HANA, Snowflake, Spark,SQL Server, Teradata Database, Impala &#x2026; etc.
    -   Limited Functionality - Few Power Query Operations
        -   can still configure relationships in some cases
    -   with slicing and dicing every time you are sending queries to the data source (OLAP)
    -   work slow if table is not prepared with Clustered Column Store Index
    -   tuning for every RDBMS is special
    -   no DAX or MDX as the analytical language to help
-   Live Connection - very similar to DirectQuery.
    -   better modeling features than DirectQuery
    -   No Power Query. Just Visualization
    -   only supported for these data sources:
        -   Azure Analysis Services
        -   SQL Server Analysis Services (SSAS) Tabular
        -   SQL Server Analysis Services (SSAS) Multi-Dimensional
        -   Power BI Dataset in the Service
-   Composite Model - DirectQuery sources and Import Data sources combined in one dataset.

Import Data or Scheduled Refresh

-   Advantages
    -   Fastest Possible Connection
    -   Power BI Fully Functional
    -   Combining Data from different sources
    -   Full DAX expressions
    -   Full Power Query transformations
-   Disadvantages
    -   Power BI file size limitation (It is different for Premium and Pro)

DirectQuery

-   Advantages
    -   Large Scale data sources supported. No size limitation.
    -   Pre-Built models in some data sources can be used instantly
-   Disadvantages
    -   Very Limited Power Query functionality
    -   Slower Connection type: Performance Tuning in the data source is MUST DO

Live Connection

-   Advantages
    -   Large Scale data sources supported. No size limitation as far as SSAS Supports.
    -   Many organizations already have SSAS models built. So they can use it as a Live Connection without the need to replicate that into Power BI.
    -   Report Level Measures
    -   MDX or DAX analytical engines in the data source of SSAS can be a great asset for modeling compared to DirectQuery
-   Disadvantages
    -   No Power Query
    -   Cannot combine data from multiple sources
    -   Slower Connection type: Performance Tuning in the data source is MUST DO

arch

-   Import Data for Agility and Performance
-   Live Connection for Enterprise Solution
-   Live Connection for Team Development
-   Direct Query for Non-Microsoft Sources

Gateway -  if the data source is located on-premises, you would need a gateway for it. otherwise not.


<a id="orgb4be0da"></a>

### features

-   rich features - преобразования и очистка
-   использование R и Python для  очистки
-   in-memory работа с данными
-   интекрактивные визуализации 150

cons

-   все остальыне функции платные


<a id="orgbdcba47"></a>

### Power Query

Home

-   Edit Queries -old
-   Transform data - now


<a id="orgefa6c75"></a>

### Data Analysis Expressions (DAX)

<https://docs.microsoft.com/en-us/dax/>


<a id="org0931ffe"></a>

### dataflow

DWH of microsoft


<a id="org8d082c4"></a>

### power query язык M

-   <https://needfordata.ru/blog/operator-let-v-power-bi-i-power-query>
-   <https://blog.crossjoin.co.uk/2016/05/22/understanding-let-expressions-in-m-for-power-bi-and-power-query/>
-   1 <https://finalytics.pro/inform/m-for-powerquery/>
-   2 <https://finalytics.pro/inform/m-powerquery2/>
-   parameters in query <https://www.biinsight.com/power-bi-desktop-query-parameters-part-1/>
-   trick Excel <https://www.youtube.com/watch?v=iiNDq2VrZPY>
-   set parameter at start <https://www.youtube.com/watch?v=YiKtgTkj8wk>

-   чувствителен к регистру
-   комментари:
    -   одна строка //
    -   несколько *\* \**
-   логические = < <= > >= <>
-   if [Sales] > 1000 then "более 1000" else if [Sales] > 500 then "более 500" else "500 или меньше"
-   let позволяет вычислять набор значений, назначить имена, а затем используется в следующем выражении, которое
    записывается в in.  let a = 2 in a+1


<a id="org53cac9d"></a>

### report as one string but no OFFSET and LIMIT:

    let
      q = "select * from main LEFT JOIN main_date ON main.dateID = main_date.id where main_date.end_date = '" & Date.ToText(Дата, "yyyy-MM-dd") & "' ;",
      Source = Odbc.Query("DRIVER={PostgreSQL Unicode(x64)};Server=10.77.51.121;Port=32232;DATABASE=obor;", q)
    in
      Source


<a id="org3e0f710"></a>

### custom visal apps

-   <https://docs.microsoft.com/ru-ru/power-bi/developer/custom-visual-develop-tutorial>


<a id="orgbfa4d3f"></a>

## Tableau Public (Desktop Windows, mac)

cons:

-   Distribution: Cloud (you can not save Tableau Public workbooks locally)
-   Tableau Public has a limit of 10 million rows of data that is allowed in any single connection
-   Account Space: Each account holder will be able to save up to 10 gigabytes (GB) of content to Tableau Public


<a id="org615296a"></a>

## Metabase

-   java -jar
-   localhost:3000

cons:

-   slicer в виде фильтров без кнопок

pros:

-   можно изменять названия любых столбцов и меток
-   configuration is pretty straightforward and can be done within the tool UI once.
-   Easy and intuitive setup.

requires

-   only a DB connection that it uses for storing state.
-   one pod in your cluster

Cloud-based and on-premise platform for businesses of all sizes that helps with KPI monitoring, database
management, bug tracking, record filtering, debugging, query builder and more.


<a id="orgcdd51fe"></a>

## Redash

pros:

-   работа с SQL в первую очередь
-   можно именовать столбцы
-   No extra work is needed for the alert and schedulers as those are spun by default

cons:

-   мало возможностей и slicer нету
-   No official helm chart, however, the community one is part of the main redash repo, hence closely evolves
    with redash itself.
-   you again end up with a bunch of worker pods.
-   The UI is buggy at places

Dependencies are redis and a database that are also spinnable through the chart.


<a id="orgaf5c3bb"></a>

## Qlik Sense Desktop

-   Section Access is not supported - When loading a QlikView App with Section Access an error message will be displayed.
-   Hidden Script is not supported - Saving an App with hidden script will NOT save the hidden script - Data of hidden script will be lost in the next reload.


<a id="orga0d221e"></a>

## SuperSet

web-based stack application, Apache License 2.0

-   acts as a thin layer above your underlying databases or data engines
-   can execute queries and return results in a time frame that is acceptable to your users


<a id="orgb86e6ea"></a>

### create dashboard

1.  create database
2.  Data - Dataset - add table
3.  Edit Dataset
    -   Columns -
        -   Is the column temporal? (should it be used for slicing & dicing in time series charts?)
        -   Should the column be filterable? - numbers?
        -   Is the column dimensional? - regions?
    -   metrics - agregates - SUM(recovered) / SUM(confirmed))
    -   calculated columns - CAST(recovery<sub>rate</sub> as float); - customize the appearance and behavior of a specific
        column
4.  Creating charts
    -   Explore: no-code viz builder. Select your dataset, select the chart, customize the appearance, and publish.
    -   SQL Lab: SQL IDE for cleaning, joining, and preparing data for Explore workflow
5.  create dashboard


<a id="org30551f4"></a>

### feature:

-   Dashboard creation
    -   Drag and Drop crafting
    -   ways of sharing your dashboard/charts (JSON, email, URL)

-   Enterprise authentication (OpenID, LDAP, OAuth&#x2026;)
-   Integration with Apache ECharts - Open Source JavaScript Visualization Library (diagrams)
-   Lightweight semantic layer - ?
-   Visualization plugin support - ?
-   Compatible with most SQL-speaking datasources
-   in-memory asynchronous caching and queries

features2:

-   Comes with official support for helm.
-   Alerts, Reports and extra data source connectors - from interface
-   Dependencies are redis and a database, and it does provide you with an option to spin those up for you.
-   ends up with a bunch of pods, some of which workers other for scheduling.
-   control over custom granularity roles and row-level security filters
-   Data Exploration (Slice & Dice):
    -   Code-free visualization builder to extract and present datasets
    -   Intuitive interface
    -   Apply dozens of preset and custom visualization plugins instantly
    -   User-defined metrics with scalable semantic layering
    -   Lets you view the SQL statement for each visualization
-   SQL Lab:
    -   A feature-rich SQL IDE written in React
    -   A multi-tab environment lets you work on multiple queries at once
    -   Metadata browsing of tables, columns, indexes, and partitions
    -   Supports long-running queries by persisting query results and dispatching handlers to workers (Celery)
    -   Equipped with interactive querying, autocomplete, scheduling, query history, user-defined parameters (with JINJA templating through dbt CLI and dbt Cloud), etc.

cons:

-   нельзя изменить названия полей
-   Requires helm tweaking to spin up its scheduler workers.
-   tables have to be joined beforehand either at a database level or in the SQL Lab as a virtual table
-   Cross-filtering between charts isn’t fully supported
-   doesn’t support NoSQL
-   Version control isn’t an explicit feature - of dashboards and chards

1.  TODO Time series forecasting. Prophet lib

    Prophet is a procedure for forecasting time series data based on an additive model where non-linear trends are
    fit with yearly, weekly, and daily seasonality, plus holiday effects
    
    -   <https://facebook.github.io/prophet/>

2.  Data sharing.

    -   share the dashboard page as live dashboard through email or by sharing the page link.
    -   You can also share individual chart through email or sharing the link, exporting data through csv or sharing
        the visualization as image after downloading it. In addition you can export the visualization data as json
        formats or you can embed the entire chart to your external website.


<a id="org5448e5f"></a>

### install 1.4

-   git clone &#x2013;depth=1 <https://github.com/apache/superset.git> &#x2013;branch 1.4
-   edit docker-compose-non-dev.yaml
    -   L87 after in RUM mkdir &#x2026; in # Final lean image - add:
        -   apt-get install -y libaio1 \\
    -   in L107 in section # Final lean image add:
        -   && pip install cx<sub>Oracle</sub>
    -   in L114 section # Final lean image after COPY ./docker/docker-entrypoint.sh /usr/bin add:
        -   COPY instantclient<sub>18</sub><sub>5</sub> /lib/oracle<sub>instantclient</sub><sub>18</sub><sub>5</sub>
        -   ENV LD<sub>LIBRARY</sub><sub>PATH</sub>="/lib/oracle<sub>instantclient</sub><sub>18</sub><sub>5</sub>:${LD<sub>LIBRARY</sub><sub>PATH</sub>}"
    -   x-superset-image: &superset-image apache/superset:${TAG:-latest-dev}
    -   comment section # Dev image&#x2026; for speed
-   

-   docker build &#x2013;force-rm -t apache/superset:1.4 .
-   TAG=1.4 docker-compose build -f docker-compose-non-dev.yaml &#x2013;force-rm
-   TAG=1.4 docker-compose -f docker-compose-non-dev.yaml down -v
-   TAG=1.4 docker-compose -f docker-compose-non-dev.yaml up -d

Language support:

-   /superset<sub>config.py</sub>:
    -   LANGUAGES = {'en': {'flag':'us', 'name': 'English'}, 'ru':{'flag': 'ru', 'name': "Russian"}}
-   COPY ./superset<sub>config.py</sub> ${PYTHONPATH}/

<https://stackoverflow.com/questions/68182176/how-to-install-oracle-driver-on-apache-superset-without-internet-access>


<a id="org9bf74b3"></a>

### config

-   главный конфиг superset/config.py - грузит ${PYTHONPATH}/superset<sub>config.py</sub>
-   Dockerfile: COPY ./superset<sub>config.py</sub> ${PYTHONPATH}/
-   Docker Compose settings: docker/.env and docker/.env-non-dev
-   pythonpath<sub>dev</sub>/superset<sub>config.py</sub> and pythonpath<sub>dev</sub>/superset<sub>config</sub><sub>docker.py</sub>

-   First you need to download oracle client with libraries and put them into superset image
-   install cx<sub>Oracle</sub> and libaio1 inside container
    -   apt update; apt install -y libaio1; pip install cx<sub>Oracle</sub>
-   For normal language support set env variable in the docker/.env
    -   NLS<sub>LANG</sub>=RUSSIAN<sub>RUSSIA.AL32UTF8</sub> # for Russian with UTF-8
-   Superset does not detect oracle and uses postgres specs for that datasource. So you need to comment this
    line to fix SQL Lab error
    -   superset/db<sub>engine</sub><sub>specs</sub>/postgres.py +52
    -   \# cursor.tzinfo<sub>factory</sub> = FixedOffsetTimezone

superset-websocket - bidirectual channel

-   "GLOBAL<sub>ASYNC</sub><sub>QUERIES</sub>": True - to enable

1.  TODO RuntimeWarning:You're running the worker with superuser privileges:this is absolutely not recommended

    <https://stackoverflow.com/questions/59651428/runtimewarningyoure-running-the-worker-with-superuser-privilegesthis-is-absol>

2.  TODO theme superset/statis/assets/stylessheets/less/cosmo/variables.less

    theme <https://debaatobiee.wordpress.com/2019/08/04/customizing-apache-superset-ui-config-theme-changes/>


<a id="org51adf0d"></a>

### install old

-   Filter and Slicer <https://www.youtube.com/watch?v=fpNj72aQn8M>
-   python3.6 -m virtualenv venv
-   pip install &#x2013;upgrade setuptools pip
-   cd venv
-   (optional) chmod +x bin/activate
-   . bin/activate
-   pip uninstall pandas
-   pip install pandas==0.23.4
-   use pip install sqlalchemy==1.2.18
-   fabmanager create-admin &#x2013;app superset
-   superset db upgrade
-   superset init
-   superset runserver

<https://github.com/cloudflare/sqlalchemy-clickhouse>

-   pip install sqlalchemy-clickhouse
-   export https<sub>proxy</sub>= && export http<sub>proxy</sub>=
-   superset runserver
-   chromium <http://0.0.0.0:8088>
-   admin admin
-   clickhouse://default:@localhost:8123/default


<a id="org90b9cab"></a>

### architecture

-   Web server (can run multiple instances) - flask python app, using sqlalchemy ORM to connect to any database
-   Metadata database - SQLite - to store databese connection info
-   Cache layer
-   Message queue for async queries
-   Results backend

<https://www.startdataengineering.com/post/apache-superset-tutorial/>


<a id="org55d6372"></a>

### docker-compose

-   services:
    -   redis
    -   db - postgres
    -   superset
    -   superset-init
    -   superset-websocket - web-frontend
    -   superset-worker
    -   superset-worker-beat
-   volumes
    -   superset<sub>home</sub>
    -   db<sub>home</sub>
    -   redis


<a id="org801dd7e"></a>

### pros and cons

Pros and Cons
Pros

Open source.
Large number of pre built visualizations.
Leverage Apache Superset to embed the dashboards into your data applications.
Amazing community (I was able to get super fast support on a weekend).
Simple web server architecture.
Granular user access control.
Rest API based on OpenAPI specification.

Cons

Cannot do joins in charts and exploration sections. The dataset has to be pre joined or be a view.
Users will need to know SQL. Engineers can help with creation of views, etc. But to be a fully self serve BI tool, end users will need to know SQL.
Without a good dev ops and data team, management can be difficult. Unless you get the managed version from preset.


<a id="org74fce95"></a>

### links

-   doc <https://superset.apache.org/docs/intro>
-   <https://www.startdataengineering.com/post/apache-superset-tutorial/>


<a id="org6ab54d2"></a>

### security

-   Flask AppBuilder (FAB) - framework on top of Flask
    -   authentication, user management, permissions and roles

You can:

-   create roles
-   create user and assign role or multiple roles
-   union roles to existing one
-   assign tables to roles
-   per model or view (can<sub>add</sub>, can<sub>delete</sub>, can<sub>show</sub>, can<sub>edit</sub> &#x2026;)
-   permissions:
    -   Model & Action - models are Dashboard, Slice, or User;
    -   Views: views are individual web pages, like the Explore view or the SQL Lab view.
    -   Data source - Slices or explore the data sources
    -   Database: Granting access to a database allows for the user to access all data sources within that database
-   Row Level Security - filter or clause (column = "calue" or column > DATE<sub>SUB</sub>(NOW(), INTERVAL 30 DAY))
    -   can be assigned to role - all tables accessed by role
    -   clauses combined using AND
-   Beyond FAB supported providers (Github, Twitter, LinkedIn, Google, Azure, etc), its easy to connect Superset
    with other OAuth2

recommends:

-   We do not recommend altering the 3 base roles as there are a set of assumptions that Superset is built upon
-   give a user the Gamma role plus any other roles that would add access to specific data sources

Provided Roles:

-   Admin
-   Alpha - cannot grant or revoke access from other users.  limited to altering the objects that they own
-   Gamma - view the slices and dashboards made from data sources that they have access to
-   sql<sub>lab</sub>
-   Public

1.  links

    <https://flask-appbuilder.readthedocs.io/en/latest/security.html>
    <https://superset.apache.org/docs/security/>


<a id="org2cf23c4"></a>

### semantic layer

physical datasets - table or view in your database

-   automatically pull in relevant information from the database (like schema and column types)
-   If a change to the underlying database table occurs, you can click **Sync Columns from Source** to force
    Superset to update its internal data model.
-   

virtual datasets -

-   column types (inferred from results of running the query)
-   ability to define metrics
-   ability to define calculated columns
-   ability to certify metrics or calculated columns
-   setting a cache timeout

virtual datasets - use cases:

-   Joining multiple tables (or self-joining against the same table)
-   Ad-hoc, one-off exploratory analysis
-   Transforming data in more nuanced ways than currently what Explore

features

-   Virtual Datasets
-   Metrics - line in select MAX, SUM, AVG, COUNT(\*)
    1.  select a Time-series visualization type while in the Explore workflow. Then, you can quickly try a
        few different metrics.
    2.  save in dataset
-   Calculated Columns -


<a id="org41c2e25"></a>

## TODO Google Data Studio


<a id="orgbf47dbb"></a>

## TODO Looker

proprietary


<a id="org74af2f6"></a>

## как выбирать:

-   собрать все и самые популярные
-   выписать критерии
    -   Price
    -   Datasource support
    -   Deployment&Support
    -   Popularity
    -   functionality
    -   Alerting and reporting capabilities
    -   Single sign-on setup
    -   UX and Dashboarding experience
    -   Deployment - helm chart - own deployment methods and stack needs(Kubernetes, AWS Athena etc.)
-   проверить что


<a id="org5fc1c30"></a>

## 4 качества хорошего дашборда

Цель дашборда - представить сложную информацию в удобном для понимания формате для пользователей.

Удобная информационная панель должна обладать такими качествами:

1.  Ясность

Хороший дашборд четко отображает необходимую информацию. Его назначение должно быть понятно пользователю уже через 5 секунд после того, как он в-первые увидел панель.

1.  Значимость

Полезный дашборд содержит значимую, важную для принятия решений информацию.
Пользователь должен уловить историю, что стоит за дизайном.

1.  Согласованность

Стиль, макет, содержание и организация дашборда должны быть согласованы между собой.

1.  Простота

Если информационная панель сложна в восприятии, то она бесполезна. Дашборд нужен, чтобы подавать массивы информации в простом виде.

Как спроектировать такой дашборд?

Самый первый и важный шаг — понять кто и для чего будет пользоваться дашбордом.

Дашборд получается полезным, когда мы сосредоточиваем внимание на потребностях пользователя. Это помогает нам понять какие данные аудитории важно видеть.

Иногда пользователей у дашборда несколько. И им нужен разный уровень информации. В этом случае сегментируем аудиторию и разделяем информацию на базовый и расширенный контент.

Второй шаг - выбор правильных показателей (KPI)
Выбор правильных метрик является ключевым шагом в разработке удобных информационных панелей.

Резюме.
Создаём дашборд в соответствии с потребностями пользователей. При необходимости разделяем информацию по уровням пользования.
Выбираем правильные метрики исходя из потребностей аудитории.

Какие пункты вы бы добавили?


<a id="org7e88338"></a>

## Виды отчетов и дашбордов⁣⁣

По аналогии с документами, отчеты бывают оперативные, аналитические и стратегические.⁣⁣

-   Оперативный отчет – это текущие данные по состоянию на сегодня. Для него не нужна красота, он просто
    показывает состояние дел на сегодня. В нем не обязательны графики и визуализации: достаточно обычной
    таблички.⁣⁣
    -   план-факт
    -   динамика выполнения плана - line chart
    -   выполнение по каналам - план факт в виде bar plot
    -   выбор: года месяца
-   Аналитический отчет – содержит большой объем информации, которая трудно воспринимается в таблице.  Ее нужно
    визуализировать. Поэтому нужен дашборд. Он показывает тренды, сводки по конкретной ситуации.
    -   количество и прирост чего-то в процентах
    -   товарооборот по брендам - scatter plot с разным размером точек (средний чек - ). Выбор-год, квартал, месяц
    -   товарооборот по лицам или брендам - line plot заказчик гипермаркет Выбор - магазины клиенты визиты
    -   таблица с вкладками - постоянные клиенты, клиенты притока, клиенты оттока
-   Стратегический отчет предназначен для управленцев, предоставляется периодически, помогает принять
    долгосрочные решения. Этому помогает визуализация данных, которая упрощает принятие решений. Поэтому
    дашборды для управленцев очень нужны⁣⁣
    -   вверху числа,
    -   воронка чего-то
    -   динамика этапов lineplot
    -   средний срок barplot

Важно: информация на управленческих дашбордах должна быть подана максимально просто. На панели показывают
основные данные и убирают лишнюю информацию.


<a id="org6894ff4"></a>

## советы 20

2 положительные значения зеленым, отрицательные красным
3 усечение числовой оси y в искажает информацию особенно в стобчатой диаграмме
4 для линейных диаграмм лучше усекать ось y, чтобы лучше видеть динамику
5 линейная диаграмма - толстые сглаженные линии скрывают реальные позиции, что плохо
6 круговая диаграмма - подписи рядом с долями, а не в стороне сами по себе, цвета разные
7 круговая диаграмма - не наносите подписи поверх кусков пирога, если они длинные
8 круговая диаграмма - отсортируйте куски от большего к меньшему
10 круговая диаграмма - если в центре что-то писать, то жертвуешь четкостью
11/12 сортировать столбчатую диаграмму (гистограмму)
13 горизонтальную столбчатую диаграмму для правильного отображения меток
14 линейная диаграмма хороша для коротких интервалов. На больших лучше заменить на столбчатую

F - паттерн - движение глаз
1 -> 2
3 -> 4
5 &#x2013;

<https://vk.com/analyst_ba>


<a id="org13d0c37"></a>

## этапы построения

1.  тех задание на салфетке
2.  эскиз для себя
3.  дизайн макетов для заказчика
4.  список доработок
5.  финальный макет


<a id="org0bc6bcd"></a>

## дашборды на смартфоне

должен давать ответы на основные вопросы пользователя

-   юзер в полевых условиях - только основное
-   упрощайте - исключить лишние метки осей
-   несколько маленьких диаграмм лучше одной большой
-   учитывайте ориентацию экрана. Для горизонтальной версии можно показать детализацию
-   выделите важное с помощью цвета
-   как диаграмма будет смотреться в темноте?


<a id="org2384a49"></a>

# report commercial


<a id="org774be59"></a>

## SAP Crystal Reports

from  USD 495.00  per named user license


<a id="orga6f4872"></a>

# Data Warehouse producsts


<a id="org489b051"></a>

## Clickhouse

-   yandex <https://habr.com/ru/company/yandex/blog/429956/>
-   Александр зайцев "переезжаем на yandex.clickhouse"
-   VK <https://www.youtube.com/watch?v=pbbcMcrQoXw>
-   <https://habr.com/ru/company/smi2/blog/314558/>

cons:

-   специфический SQL, join только по колонкам с одинаковыми названиями
-   недокументированный UPDATE/DELETE

install debian:

-   deb <http://repo.yandex.ru/clickhouse/deb/testing/> main/ or deb <http://repo.yandex.ru/clickhouse/deb/stable/> main/
-   apt-get install dirmngr
-   <http://keyserver.ubuntu.com/>   string: 0xE0C56BD4  Search for a key
-   create file\_ with &#x2013;&#x2014;BEGIN PGP PUBLI .. EY BLOCK&#x2013;&#x2014;
-   apt-key add file\_
-   apt-get update
-   apt-get install clickhouse-client clickhouse-server
-   systemctl start clickhouse-server

Типа данных: <https://clickhouse.yandex/docs/ru/interfaces/formats/#sootvetstvie-tipov-dannykh>

-   list databases: SHOW DATABASES;
-   выбрать текущую базу: USE db;
-   список таблиц: SHOW TABLES FROM system;
-   описание таблицы: DESCRIBE TABLE system.numbers;
-   UPDATE/DELETE: <https://clickhouse.yandex/docs/ru/query_language/alter/#alter-mutations>
-   выполняющиеся запросы: SHOW PROCESSLIST; or: watch -n1 "clickhouse-client &#x2013;query='SHOW PROCESSLIST'"


<a id="org250bc67"></a>

### Управление данными

В ClickHouse нет «сегментов», содержащих данные, попадающие в конкретные временные диапазоны. В нем нет
«глубокого хранения» для данных, узлы в кластере ClickHouse также отвечают и за обработку запросов, и
запостоянство/устойчивость данных, хранящихся на них. Так что вам **не потребуется HDFS** или облачное хранилище
данных вроде Amazon S3.

В ClickHouse имеются секционированные таблицы, состоящие из указанного набора узлов. Здесь нет «центральной
власти» или сервера метаданных. Все узлы, между которыми разделена та или иная таблица, содержат полные,
идентичные копии метаданных, включая адреса всех остальных узлов, на которых хранятся секции этой таблицы.

Метаданные секционированной таблицы включают «весы» узлов для распределения свежезаписываемых данных — к
примеру, 40% данных должны идти на узел A, 30% на узел B и 30% на C. Обычно же распределение должно
происходить равномерно, «перекоос», как в этом примере, требуется только тогда, когда к секционированной
таблице добавляется новый узел и нужно побыстрее заполнитьего какими-либо данными. **Обновления этих «весов»
должны выполняться вручную** администраторами кластера ClickHouse, или же автоматизированной системой,
построенной поверх ClickHouse.


<a id="org81ba0b9"></a>

### sql

    CREATE DATABASE test;
    CREATE TABLE test.t2 ( a Int32, b String ) ENGINE = MergeTree() PRIMARY KEY a ORDER BY a;
    
    # update
    ALTER TABLE test.t2 UPDATE b = 'new text' WHERE a = 1;
    
    # delete
    ALTER TABLE test.t2 DELETE WHERE a = 101;


<a id="org33c5f90"></a>

### error ssl

140272112277136:error:25FFF06C:DSO support routines:CRYPTO<sub>internal</sub>:functionality not supported:../contrib/ssl/crypto/dso/dso<sub>lib.c</sub>:224:
140272112277136:error:0EFFF06E:configuration file routines:CRYPTO<sub>internal</sub>:error loading dso:../contrib/ssl/crypto/conf/conf<sub>mod.c</sub>:273:module=ssl<sub>conf</sub>, path=ssl<sub>conf</sub>
140272112277136:error:0EFFF071:configuration file routines:CRYPTO<sub>internal</sub>:unknown module name:../contrib/ssl/crypto/conf/conf<sub>mod.c</sub>:214:module=ssl<sub>conf</sub>

-   I don't have a proper fix, but a workaround is to comment the ssl<sub>conf</sub> = ssl<sub>sect</sub> line you may have in your /etc/ssl/openssl.cnf under [default<sub>conf</sub>]


<a id="org05bfc8c"></a>

### Aiflow

pip install clickhouse-driver

-   doc <https://clickhouse-driver.readthedocs.io/en/latest/>
-   git <https://github.com/mymarilyn/clickhouse-driver>
-   Hook <https://github.com/WesleyBatista/clickhouse_plugin>


<a id="orgc48316e"></a>

### Power BI

-   SQL URL <https://renta.im/ru/blog/clickhouse/>
-   ODBC <https://github.com/yandex/clickhouse-odbc/releases>
-   Строка подключения: "Driver=ClickHouse Unicode;Database=default;Server=localhost;Port=8123;"


<a id="org5139197"></a>

### TODO compilation

<https://clickhouse.com/docs/en/development/build>
<https://github.com/kmeaw/clickhouse-overlay/blob/master/dev-db/clickhouse/clickhouse-18.16.1.ebuild>
<https://github.com/Perlovka/portage-overlay/tree/master/dev-db/clickhouse-bin>


<a id="org2253895"></a>

## MariaDB

for a wide variety of use cases as replacement for MySQL
<https://mariadb.com/kb/en/library/installing-and-configuring-a-single-server-columnstore-system-12x/>
cons:

-   на основе MySQL

pros:

-   single server or multi-server
-   columnar storage optimized for interactive
-   ad hoc analytics
-   scaling out as needed

create database classicmodels;

mysql -p 'classicmodels' < my.sql

GRANT ALL PRIVILEGES ON classicmodels.\* TO 'u'@'%' IDENTIFIED BY '123' WITH GRANT OPTION;

CREATE TABLE tmp.ta (
    id INT PRIMARY KEY,
);


<a id="orgf54e742"></a>

### install

-   <https://mariadb.com/kb/en/library/7758/#debian-9>
-   apt-get install libdbi-perl rsync libboost-all-dev libreadline5 expect tcl-expect libjemalloc1
-   скачать вручную deb <https://packages.debian.org/ru/stretch/libjemalloc1>
-   libboost<sub>system.so.1.62.0</sub>


<a id="orgccca8c3"></a>

## PostgreSQL

PostgreSQL - cstore<sub>fdw</sub>, vops


<a id="org3548a8e"></a>

## Greenplum BD

-   Опыт внедрения <https://pgconf.ru/2017/94499>

official links:

-   ODBC driver <https://network.pivotal.io/products/pivotal-gpdb/#/releases/396409/file_groups/1829>

articles:

-   tinkoff <https://habr.com/en/company/tinkoff/blog/267733/>
-   tinkoff repl
-   <https://github.com/gtoonstra/etl-with-airflow/blob/master/examples/etl-example/dags/orders_staging.py>

Forked from the main PostgreSQL line at version 8.2.15

designed to manage large-scale analytic data warehouses and business intelligence workloads.

-   на основе PostgreSQL - лучше MySQL
-   massively parallel processing (MPP)
-   PostgreSQL interface
-   performs best with a denormalized schema design
-   Greenplum provides both row-oriented and **column-oriented** table types
-   logically partition table data, either by range or by a list of values - each partition of a single table
    can utilize its own storage method (row vs. column orientation)

Ограничения:

-   нельзя обновлять поле колонка которого есть ключ дистрибуции
-   column-tables обновляются чуть меньше

Рекомендации:

-   предназначенная для небольшого числа одновременных запросов. Большое число (более 600 queries per second)
    лёгких запросов/транзакций, выполняющих одну операцию, негативно сказывается на производительности
    базы. Хорошей практикой является агрегация большого числа update/insert в батчи.
-   один CPU на сегмент, поэтому на одну ноду от 6-8 сегментов, чтобы задействовать многопроцессорность - но это не точно
-   10 гигабит interconnection
-   чем больше дисков тем лучше
-   на серверах лучше вырубить swap. потому что он его слишком юзает
-   автовакум выключен, вакум раз в сутка, а то заблоутится буть здоров

продукт InfluxDB собирает метрики

Агрегаторы - таблицы сум по которым опять делаются выборки - от них можно отказаться


<a id="org9df6fa8"></a>

### MPP

-   data is distributed in chunks to all the nodes in the cluster - **xsegments**
-   master/worker MPP architecture
-   Only metadata is stored on the master


<a id="orgfcd2939"></a>

### Append-only tables

-   <https://it.toolbox.com/blogs/omerbrandis/working-with-append-only-tables-part-i-061112>
-   <https://it.toolbox.com/blogs/omerbrandis/working-with-append-only-tables-part-ii-061812>

create table table t1 ( id int,  value<sub>col</sub> int).

insert into t1 select id,(:new<sub>value</sub> - t1.value<sub>col</sub>) from t1 where id = 11). # 11 - id

Update as insert of delta value.Drawbacks:

-   Each "object" is stored using multiple rows.
-   You may not be able to perform the insert on in parallel on multiple rows.
-   This method doesn't support non numerical types as non key columns
-   You may not be able to perform the insert on in parallel on multiple rows.


<a id="orgd445839"></a>

### install for kubernetes

После деплоя в кубер, в манифесте кубера нужно добавить в ДНС строки с правильными адресами


<a id="org568b8b6"></a>

### psql

<https://gpdb.docs.pivotal.io/530/utility_guide/client_utilities/psql.html>
-\\?
-\h - sql

-   list of databases - \l or SELECT datname from pg<sub>database</sub>;
-   change database - \c test - REQUIRED
-   list tables - \dt
-   table definition \d+ t<sub>name</sub>
-   change password - \password or ALTER user gpadmin with password '123';
-   количество столбцов в таблице - select count(\*) from information<sub>schema.columns</sub> where table<sub>name</sub>='test';
-   roles -


<a id="orgd1d98d6"></a>

### Tablespaces not needed

SELECT spcname as tblspc, fsname as filespc,
          fsedbid as seg<sub>dbid</sub>, fselocation as datadir
   FROM   pg<sub>tablespace</sub> pgts, pg<sub>filespace</sub> pgfs,
          pg<sub>filespace</sub><sub>entry</sub> pgfse
   WHERE  pgts.spcfsoid=pgfse.fsefsoid
          AND pgfse.fsefsoid=pgfs.oid
   ORDER BY tblspc, seg<sub>dbid</sub>;

-   pg<sub>global</sub> for shared system catalogs
-   pg<sub>default</sub>, the default tablespace. Used by the template1 and template0 databases.
-   pg<sub>system</sub> -  data directory location created at system initialization


<a id="org3a6c06f"></a>

### Create Tables

Two major types of table **storage techniques**:

-   HEAP - default
    -   MVCC)
    -   CREATE TABLE c(a int PRIMARY KEY, b text)  DISTRIBUTED BY(a);
    -   good for dimension tables often UPDATE/DELETE - Compression not available
    -   UNIQUE - table must be hash-distributed (not DISTRIBUTED RANDOMLY) and constraint columns must be the same
        as (or a superset of) the table's distribution key columns
-   Append Only or Append Optimized starting with 4.3
-   -   allow UPDATE
    -   CREATE TABLE bar (a int, b text)  WITH (appendonly=true, orientation=column) DISTRIBUTED BY(a)
    -   UNIQUE and PRIMARY KEY constraints are not allowed on append-optimized tables
    -   Allow Column-level Compression (default -  no compression):
        -   WITH (appendonly=true, compresstype=zlib, compresslevel=5);
        -   Table Orientation:
            -   Row: ZLIB and QUICKLZ
            -   Column: RLE<sub>TYPE</sub>,
                -   ZLIB - лучше сжимает  compresslevel=1 - 9
                -   QUICKLZ - быстрее на compresslevel=1 (1 - default)
        -   column<sub>name</sub> data<sub>type</sub> ENCODING (compresstype=zlib, compresslevel=6) - specifies for individual columns

**Append Optimized**:

-   Insert:
    1.  INSERT INTO &#x2026;
    2.  ANALYZE ao<sub>table</sub>; - собирает статистическую информацию Впоследствии планировщик запросов будет использовать эту статистику для выбора
        наиболее эффективных планов выполнения запросов.
-   works best with denormalized fact tables

All tables

-   are distributed - table rows
    -   DISTRIBUTED BY field (hash distribution) - default - p key or first field
    -   DISTRIBUTED RANDOMLY (round-robin distribution)  - no unique field(s)
-   primary key is distribution key for the table by default
-   Choose a distribution key that is unique for each record, such as the primary key
-   Foreign keys are not supported. You can declare them, but referential integrity is not enforced.

-   default - Row-oriented heap tables
-   append-optimized - UPDATE and DELETE are not allowed.
    -   Column-oriented storage - aggregations over a small number of columns, or for single columns that require
        regular updates without modifying other column data. - many columns where you access a small subset of
        columns in your queries
-   Compression - greater adjacent compression achieved, the more difficult random access can become


<a id="orgc324ab4"></a>

### data types

-   Use the smallest numeric data type
-   int smalles as possible for dimensions -  appropriate for fact
-   text - VARCHAR or TEXT, (CHAR is not recommended)

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
<th scope="col" class="org-left">Name</th>
<th scope="col" class="org-left">Alias</th>
<th scope="col" class="org-left">Size</th>
<th scope="col" class="org-left">Desc</th>
<th scope="col" class="org-left">&#xa0;</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">bigint</td>
<td class="org-left">int8</td>
<td class="org-left">8 bytes</td>
<td class="org-left">large range integer</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">bigserial</td>
<td class="org-left">serial8</td>
<td class="org-left">8 bytes</td>
<td class="org-left">large autoincrementing integer</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">bit [ (n) ]</td>
<td class="org-left">n bits</td>
<td class="org-left">bit string</td>
<td class="org-left">fixed-length bit string</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">bit varying [ (n) ]</td>
<td class="org-left">varbit</td>
<td class="org-left">actual number of bits</td>
<td class="org-left">variable-length bit string</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">boolean</td>
<td class="org-left">bool</td>
<td class="org-left">1 byte</td>
<td class="org-left">true/false</td>
<td class="org-left">logical boolean (true/false)</td>
</tr>
</tbody>
</table>

box 	  	32 bytes 	((x1,y1),(x2,y2)) 	rectangular box in the plane - not allowed in distribution key columns.
bytea1 	  	1 byte + binary string 	sequence of octets 	variable-length binary string
character [ (n) ]1 	char [ (n) ] 	1 byte + n 	strings up to n characters in length 	fixed-length, blank padded

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">character varying[(n)]</td>
<td class="org-left">varchar[(n)]</td>
<td class="org-left">1 byte + string size</td>
<td class="org-left">variable-length with limit</td>
</tr>
</tbody>
</table>

cidr 	  	12 or 24 bytes 	  	IPv4 and IPv6 networks
circle 	  	24 bytes 	<(x,y),r> (center and radius) 	circle in the plane - not allowed in distribution key columns.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">date</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">4 bytes</td>
<td class="org-left">calendar date (year, month, day)</td>
</tr>
</tbody>
</table>

decimal [ (p, s) ]1 	numeric [ (p, s) ] 	variable 	no limit 	user-specified precision, exact
double precision 	float8

float
	8 bytes 	15 decimal digits precision 	variable-precision, inexact
inet 	  	12 or 24 bytes 	  	IPv4 and IPv6 hosts and networks
integer 	int, int4 	4 bytes 	-2147483648 to +2147483647 	usual choice for integer
interval [ (p) ] 	  	12 bytes 	-178000000 years - 178000000 years 	time span
json 	  	1 byte + json size 	json of any length 	variable unlimited length
lseg 	  	32 bytes 	((x1,y1),(x2,y2)) 	line segment in the plane - not allowed in distribution key columns.
macaddr 	  	6 bytes 	  	MAC addresses

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">money</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">8 bytes</td>
<td class="org-left">currency amount</td>
</tr>
</tbody>
</table>

path1 	  	16+16n bytes 	[(x1,y1),&#x2026;] 	geometric path in the plane - not allowed in distribution key columns.
point 	  	16 bytes 	(x,y) 	geometric point in the plane - not allowed in distribution key columns.
polygon 	  	40+16n bytes 	((x1,y1),&#x2026;) 	closed geometric path in the plane - not allowed in distribution key columns.
real 	float4 	4 bytes 	6 decimal digits precision 	variable-precision, inexact
serial 	serial4 	4 bytes 	1 to 2147483647 	autoincrementing integer
smallint 	int2 	2 bytes 	-32768 to +32767 	small range integer

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">text</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">1 byte + string size</td>
<td class="org-left">variable unlimited length</td>
</tr>
</tbody>
</table>

time [ (p) ] [ without time zone ] 	  	8 bytes 	00:00:00[.000000] - 24:00:00[.000000] 	time of day only
time [ (p) ] with time zone 	timetz 	12 bytes 	00:00:00+1359 - 24:00:00-1359 	time of day only, with time zone
timestamp [ (p) ] [ without time zone ] 	  	8 bytes 	4713 BC - 294,277 AD 	both date and time
timestamp [ (p) ] with time zone 	timestamptz 	8 bytes 	4713 BC - 294,277 AD 	both date and time, with time zone
uuid 	  	32 bytes 	  	Universally Unique Identifiers according to RFC 4122, ISO/IEC 9834-8:2005
xml1 	  	1 byte + xml size 	xml of any length 	variable unlimited length
txid<sub>snapshot</sub>


<a id="org13f34db"></a>

### ROLE

create role

-   CREATE ROLE gpuser WITH NOSUPERUSER LOGIN PASSWORD '123';
-   \c db
-   GRANT CONNECT ON DATABASE obor to gpuser;
-   GRANT SELECT ON table TO user1;

drop role:

1.  DROP OWNED BY doomed<sub>role</sub>;
2.  DROP ROLE doomed<sub>role</sub>;


<a id="orgc7fa219"></a>

### Greenplum ETL

-   <https://greenplum.org/greenplum-etl/>
-   directly to master
-   Pg<sub>dump</sub> -  command line tool that can extract data from a table to a file and restore
-   copy - SQL command of Postgres and Greenplum
-   SDK interface:  libpq, ODBC and JDBC
-   Gpfdist - can load data in parallel on every segment directly without bothering the master


<a id="org076588a"></a>

### Power BI

-   <https://www.postgresql.org/ftp/odbc/versions/msi/>
-   Driver={PostgreSQL ANSI(x64)};Server=10.77.51.121 address;Port=31412;Database=test;
-   DRIVER={PostgreSQL Unicode(x64)};Server=10.77.51.121;Port=32232;DATABASE=obor;


<a id="orgccc063a"></a>

### Serial


<a id="orgc1b8cc8"></a>

### userful SQL

-   SELECT \* FROM pg<sub>stat</sub><sub>activity</sub> - Viewing current PostgreSQL queries


<a id="org3a373c8"></a>

## Apache Druid

-   <https://druid.apache.org/docs/latest/design/index.html>


<a id="org8286f4f"></a>

## in memory additional DB with replication

move database files to tmpfs


<a id="org826016d"></a>

## DB vertica community edition

limited to 1TB of data and 3 database nodes


<a id="org0e6f9f3"></a>

# Oracle


<a id="orgd2af3c5"></a>

## Oracle Instant Client

set of libraries and utilites to connecto to Oracle database
 <https://www.oracle.com/database/technologies/instant-client.html>


<a id="orgbeb5eb0"></a>

## SQL\* plus

-   export NLS<sub>LANG</sub>=AMERICAN<sub>AMERICA.AL32UTF8</sub>;
-   set colsep '|' set linesize 167 set pagesize 30 set pagesize 1000
-   connection:
    -   sqlplus username/password@host:port/servicex
    -   or username/password@'(DESCRIPTION = (ADDRESS<sub>LIST</sub> = (ADDRESS = (PROTOCOL = TCP)(HOST = ip<sub>or</sub><sub>dns</sub>)(PORT = p))) (CONNECT<sub>DATA</sub> = (SERVICE<sub>NAME</sub> = s)))
    -   or with /opt/oracle/instantclient<sub>19</sub><sub>3</sub>/network/admin/tnsnames.ora - sqlplus x/y@myDb

-   DBever <https://github.com/dbeaver>
    -   Небходим instance client и несколько дополнительных jar библиотек с оф сайта

    myDb  =
     (DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)(Host = c)(Port =a))
       )
     (CONNECT_DATA =
       (SERVICE_NAME =b)
     )
    )

**SID and SERVICE<sub>NAME</sub>**

-   <https://www.erpgreat.com/oracle-database/finding-oracle-sid-of-a-database.htm>
-   <http://qaru.site/questions/44184/how-sid-is-different-from-service-name-in-oracle-tnsnamesora>


<a id="orgeb0b65a"></a>

## Constraints

-   **C:** Check on a table - Column
-   **O:** Read Only on a view - Object
-   **P:** Primary Key - Object
-   **R:** Referential AKA Foreign Key - Column
-   **U:** Unique Key - Column
-   **V:** Check Option on a view - Object


<a id="orgfc72aeb"></a>

## SQL useful

-   <http://sql.fliplinux.com/oracle-5.html>
-   <https://en.wikipedia.org/wiki/Oracle_metadata>
-   dependencies - select \* from dba<sub>dependencies</sub> where referenced<sub>type</sub>='TABLE' and referenced<sub>name</sub>='Z#POOLING';
-   constrains - SELECT table<sub>name</sub>, constraint<sub>name</sub>, constraint<sub>type</sub> FROM user<sub>constraints</sub>;
-   поля таблицы - DESC tbname;

    -- All foregn keys:
    SELECT
    	c_list.CONSTRAINT_NAME as NAME,
    	c_src.TABLE_NAME as SRC_TABLE,
    	c_src.COLUMN_NAME as SRC_COLUMN,
    	c_dest.TABLE_NAME as DEST_TABLE, -- primary key table
    	c_dest.COLUMN_NAME as DEST_COLUMN
    FROM ALL_CONSTRAINTS c_list,
         ALL_CONS_COLUMNS c_src,
         ALL_CONS_COLUMNS c_dest
    WHERE c_list.CONSTRAINT_NAME = c_src.CONSTRAINT_NAME
      AND c_list.R_CONSTRAINT_NAME = c_dest.CONSTRAINT_NAME
      AND c_list.CONSTRAINT_TYPE = 'R'
      AND c_src.TABLE_NAME = 'Z#NU_AT_DEP_PRC' -- table with foreign keys
    GROUP BY c_list.CONSTRAINT_NAME,
    	  c_src.TABLE_NAME,
             c_src.COLUMN_NAME,
             c_dest.TABLE_NAME,
             c_dest.COLUMN_NAME;


<a id="org2fa1349"></a>

## Memory Architecture

-   <https://docs.oracle.com/database/121/CNCPT/memory.htm>
-   

-   System global area (SGA) - for one Oracle Database instance - All server and background processes share the
    SGA
    -   Database Buffer Cache
    -   In-Memory Column Store
    -   Redo Log Buffer
    -   Shared Pool
    -   Large Pool
    -   Java Pool
    -   Streams Pool
    -   Fixed SGA
-   Program global area (PGA) - exists for each server process and background process. The collection of
    individual PGAs is the total instance PGA, or instance PGA.
    -   пространство стека - это память, хранящая переменные сеансов, массивы сеансов и т.д.
    -   информация сеанса - если Oracle работает не в мультинитевом режиме, то информация сеанса хранится в PGA. В
        противном случае, информация сеанса хранится в SGA.
    -   приватная SQL-область - это часть PGA, где хранятся связанные переменные и буферы реального времени
-   User global area (UGA) - user session
-   Software code areas - areas are portions of memory used to store code that is being run or can be run

Процессы:

-   пользовательские процессы - управляет вводом и взаимодействует с серверными процессами
-   процессы Oracle
    -   серверные процессы (выполняющие функции для активных процессов)
    -   фоновые процессы (выполняют функции СУРБД в целом).


<a id="orgb837e36"></a>

## cx<sub>Oracle</sub> python

<https://www.oracle.com/technetwork/articles/dsl/prez-python-queries-101587.html>

**INSTALL**

-   bashrc:
    -   export LD<sub>LIBRARY</sub><sub>PATH</sub>=/opt/oracle/instantclient<sub>19</sub><sub>3</sub>:$LD<sub>LIBRARY</sub><sub>PATH</sub>
    -   export PATH=/opt/oracle/instantclient<sub>19</sub><sub>3</sub>:$PATH


<a id="org8866071"></a>

## characters

-   если создать таблицу с именами полей в кавычках, то к ним можно обращаться только в кавычках
-   By default, Oracle identifiers (table names, column names, etc.) are case- insensitive.
-   You can make them case-sensitive by using quotes around them (eg: SELECT \* FROM "My<sub>Table</sub>" WHERE
    "my<sub>field</sub>" = 1 )


<a id="orgde26766"></a>

# ETL vs. ELT

-   ETL (Extract, Transform, Load) - Extract -> Staging<sub>Area</sub> -> T&L
-   ELT (Extract, Load, Transform) - Extract&Load -> Hadoop -> Transform -> PureData System for analysisn and analisys


<a id="org88e7789"></a>

# ETL Extract, Transform, Load- traditional ETL paradigm - batch-driven

-   new ETL paradigm - Kafka - Change Data Capture(CDC) - stream - event-driven


<a id="org4552e74"></a>

## targets

-   Привести все данные к единой системе значений и детализации, попутно обеспечив их качество и
    надежность;
-   после преобразования можно было понять, из каких именно исходных данных и сумм собралась каждая
    строчка преобразованных данных.


<a id="orgd2e04f0"></a>

## process

-   загрузка
-   очистка от ошибок - проверяются на корректность и полноту, составляется отчет об ошибках для
    исправления; -> валидационная таблица
-   мэппинг со справочниками целевой системы
-   консолидация от транзакций до агрегатов - Процесс агрегации данных -
-   drill-down из целевой системы


<a id="orgbec99d1"></a>

## Full and Incremental Loading

incrementa:

-   streaming incremental load
-   batch incremental load


<a id="org57906e6"></a>

## CDC

-   Triggers attached to tables -  significant performance impact
-   logical Replication - feature of RDBMS


<a id="org8a4c3c5"></a>

## Spring Cloud Data Flow

for building real-time data pipelines and batch processes


<a id="org17d369c"></a>

## Talend Open Studio

limits: <https://www.talend.com/products/application-integration/application-integration-compare-all/?_ga=2.8246066.1816291292.1561098962-859926622.1561098962>

-   Open Source ETL and Free Data Integration

cons:

-   windows, mac


<a id="orgac818a9"></a>

## staging tables Промежуточные таблицы

лучше в отдельной базе данных или схеме


<a id="org82a0ba5"></a>

## concurrent vs sequential

1.  нет ли зависимостей между тасками-сессиями
2.  поддерживает ли источник и таргет паралельную загрузку. Concurrent capability
3.  restartability - насколько проблематично будет рестартовать, все ли
    таски будут перестартовывать или только та что упала


<a id="org37a33b9"></a>

# Apache Airflow

-   <https://airflow.readthedocs.io/en/stable/>
-   <https://airflow.apache.org/docs/stable/start.html>
-   <https://github.com/apache/airflow>


<a id="orge3f3dd9"></a>

## terms

-   **upstream tasks** t1 >> t2 - t1 upstream for t2
-   Dag - graph of tasks-operators - code, define tasks - (no data processing) must executed quickly - seconds
-   task - implementation of operator - inherit arguments from dag
    -   task<sub>id</sub>
    -   dag - a reference to the dag the task is attached to (if any)
    -   start<sub>date</sub> (not required)
-   Operator - create object that became node in the dag
-   Hooks - keep authentication code and information out of pipelines


<a id="org16e9d60"></a>

## theory

-   <https://habr.com/ru/company/mailru/blog/339392/>
-   practice <https://github.com/DerekWaiFuChung/DerekWiki/wiki/airflow>
-   pro <https://medium.com/datareply/airflow-lesser-known-tips-tricks-and-best-practises-cf4d4a90f8f>

cons:

-   is not a data streaming solution. Tasks do not move data from one to the other (though tasks can exchange
    metadata!)
-   Workflows are expected to be mostly static or slowly changing

Проблемы:

-   limited memory for load of task - чаще, динамический DAG(не ясно), резервированные таски, staging
-   сохранять данные которые свалили таску - logging

-   find out Hooks to store connection information
-   look at hooks and install required libraries
-   just write ETL code (separate connections-conn!)
-   create operator with test
-   write DAG

quick:

-   pip install 'apache-airflow[mysql]' &#x2013;user
-   add export PATH=$PATH:~/.local/bin
-   airflow initdb
-   airflow webserver -p 8080
-   airflow scheduler ???????

25 дней назад

-   Возобновление дага после завершения по dag<sub>timeout</sub> возможно, а после принудительной остановки - нет
-   чтобы возобновить даг с нужной таски нужнос сначала выставить его статус - Success
-   у тасок завершившихся по таймауту дага нет никаких отличий - нужно проверить лог каждой таски


<a id="orgd1fb291"></a>

## variables

<https://airflow.apache.org/docs/apache-airflow/stable/howto/variable.html>
<https://airflow.apache.org/docs/apache-airflow/stable/concepts.html#concepts-variables>

from airflow.models import Variable
foo = Variable.get("foo")


<a id="org4f4e24a"></a>

## Hooks

<https://pacuna.io/data-engineering/etl/2018/07/29/etl-postgres-to-postgres.html>

-   PostgresqlHook <- DbApiHook <- BaseHook
-   airflow.hooks.postgres<sub>hook.PostgresHook</sub> <https://airflow.apache.org/_api/airflow/hooks/postgres_hook/index.html>
-   airflow/hooks/dbapi<sub>hook.py</sub> <https://github.com/apache/airflow/blob/master/airflow/hooks/dbapi_hook.py>
-   airflow/hooks/base<sub>hook.py</sub> <https://github.com/apache/airflow/blob/master/airflow/hooks/base_hook.py>


<a id="orgee557e4"></a>

## components

webserver -
scheduler -
database - may be any

Airflow CLI doesn’t depend on the Webserver or Scheduler, but it depends on the DB backend.


<a id="org4646af8"></a>

## scheduler

-   scheduler runs your job one **schedule<sub>interval</sub>** AFTER the start date, at the END of the period
-   first run created based on start<sub>date</sub>, next on schedule<sub>interval</sub>

catchup - запуск дага за интервал, если даг был выключен какое-то время.

-   используется для инкрементальной загрузки по датам, например.
-   если  "depends<sub>on</sub><sub>past</sub>": False, - запуск будет запущен и тут же остановлен


<a id="org3ae11b0"></a>

## dag

required

-   dag<sub>id</sub>

not required:

-   start<sub>date</sub> - начала отсчета
-   schedule<sub>interval</sub> - start<sub>date</sub>+schedule<sub>interval</sub> - первый запуск.  - None - @once - @hourly - @daily -
    @weekly - @monthly - @yearly
-   max<sub>active</sub><sub>runs</sub>
-   end<sub>date</sub> - прекратить запуски
-   default<sub>args</sub>: dict - used as constructor keyword parameters when
    initialising operators.
-   params (dict) – a dictionary of DAG level parameters that are made accessible in templates,
    namespaced under params. These params can be overridden at the task level.

-   concurrency (int) – the number of task instances allowed to run concurrently
-   max<sub>active</sub><sub>runs</sub> (int) – maximum number of active DAG runs

task dependency
op1 >> [op2,op3] >> op4

1 определить связи - выдилить блоки которые имеют одну зависимость и блоки которые имеют несколько зависимостей
2 построить без отношения многие ко многим
3 реализовать отношение многие ко многим путем повторения связей


<a id="org9f6d5c2"></a>

### create dag:

-   mdir ~/airflow/dags
-   touch /airflow/dags/hello.py
-   pkill -F ~/airflow/airflow-webserver.pid ; rm ~/airflow/airflow-webserver.pid
-   airflow initdb
-   airflow webserver -p 8080
-   airflow scheduler


<a id="org9149db2"></a>

## Operator

-   BaseOperator <https://github.com/apache/airflow/blob/master/airflow/models/baseoperator.py>
-   Custom operator <https://airflow.apache.org/docs/stable/howto/custom-operator.html>

Operators:

-   BashOperator - bash command
-   PythonOperator - PythonOperator
-   EmailOperator
-   SimpleHttpOperator - HTTP request
-   MySqlOperator, PostgresOperator, JdbcOperator - wrappers for hooks


<a id="org60e281f"></a>

### Pipeline difinition:

t1>>[t2,t3]

-   t2 is downstream of t1

-   depends<sub>on</sub><sub>past</sub> = False - a task should not be triggered unless the previous instance of a task completed successfully
-   wait<sub>for</sub><sub>downstream</sub> = False - wait for preview instance this instance downstream instance! Becouse
    downstrem one may change same data of our task.


<a id="org2084c1a"></a>

### OracleOperator

<https://stackoverflow.com/questions/59785674/airflow-oracle-operator>
<https://airflow.apache.org/docs/stable/_modules/airflow/operators/oracle_operator.html>


<a id="org347f590"></a>

### PythonOperator

    def my_sleeping_function(random_base):
        """This is a function that will run within the DAG execution"""
        time.sleep(random_base)
    
    task = PythonOperator(
            task_id='sleep_for_' + str(i),
            python_callable=my_sleeping_function,
            op_kwargs={'random_base': float(i) / 10},
            dag=dag,
        )


<a id="orgbda1db8"></a>

### PythonOperator context

    
    {
                'dag': task.dag,
                'ds': ds,
                'next_ds': next_ds,
                'next_ds_nodash': next_ds_nodash,
                'prev_ds': prev_ds,
                'prev_ds_nodash': prev_ds_nodash,
                'ds_nodash': ds_nodash,
                'ts': ts,
                'ts_nodash': ts_nodash,
                'ts_nodash_with_tz': ts_nodash_with_tz,
                'yesterday_ds': yesterday_ds,
                'yesterday_ds_nodash': yesterday_ds_nodash,
                'tomorrow_ds': tomorrow_ds,
                'tomorrow_ds_nodash': tomorrow_ds_nodash,
                'END_DATE': ds,
                'end_date': ds,
                'dag_run': dag_run,
                'run_id': run_id,
                'execution_date': self.execution_date,
                'prev_execution_date': prev_execution_date,
                'next_execution_date': next_execution_date,
                'latest_date': ds,
                'macros': macros,
                'params': params,
                'tables': tables,
                'task': task,
                'task_instance': self,
                'ti': self,
                'task_instance_key_str': ti_key_str,
                'conf': configuration,
                'test_mode': self.test_mode,
                'var': {
                    'value': VariableAccessor(),
                    'json': VariableJsonAccessor()
                },
                'inlets': task.inlets,
                'outlets': task.outlets,
    }

{'conf': <airflow.configuration.AirflowConfigParser object at 0x7fd577193b20>,
'dag': <DAG: t2>,
'ds': '2021-04-07',
'next<sub>ds</sub>':
'2021-04-07',
'next<sub>ds</sub><sub>nodash</sub>': '20210407',
'prev<sub>ds</sub>': '2021-04-07',
'prev<sub>ds</sub><sub>nodash</sub>': '20210407',
'ds<sub>nodash</sub>': '20210407',
'ts': '2021-04-07T01:20:00+00:00',
'ts<sub>nodash</sub>': '20210407T012000',
'ts<sub>nodash</sub><sub>with</sub><sub>tz</sub>': '20210407T012000+0000',
'yesterday<sub>ds</sub>': '2021-04-06',
 'yesterday<sub>ds</sub><sub>nodash</sub>': '20210406',
'tomorrow<sub>ds</sub>': '2021-04-08',
'tomorrow<sub>ds</sub><sub>nodash</sub>': '20210408',
'END<sub>DATE</sub>': '2021-04-07',
'end<sub>date</sub>':
'2021-04-07',
'dag<sub>run</sub>': <DagRun t2 @ 2021-04-07 01:20:00+00:00: scheduled\_<sub>2021</sub>-04-07T01:20:00+00:00, externally triggered: False>,

'run<sub>id</sub>': 'scheduled\_<sub>2021</sub>-04-07T01:20:00+00:00',
'execution<sub>date</sub>': <Pendulum [2021-04-07T01:20:00+00:00]>,
'prev<sub>execution</sub><sub>date</sub>': <Pendulum [2021-04-07T01:15:00+00:00]>,
'prev<sub>execution</sub><sub>date</sub><sub>success</sub>': <Proxy at 0x7fd5723666c0 with factory <function TaskInstance.get<sub>template</sub><sub>context</sub>.<locals>.<lambda> at 0x7fd5723c1f70>>,
 'prev<sub>start</sub><sub>date</sub><sub>success</sub>': <Proxy at 0x7fd572368c80 with factory <function TaskInstance.get<sub>template</sub><sub>context</sub>.<locals>.<lambda> at 0x7fd5723750d0>>,
 'next<sub>execution</sub><sub>date</sub>': <Pendulum [2021-04-07T01:25:00+00:00]>,
'latest<sub>date</sub>': '2021-04-07',
'macros': <module 'airflow.macros' from '*home/u2*.local/lib/python3.8/site-packages/airflow/macros/\_<sub>init</sub>\_<sub>.py</sub>'>,
'params': {},
'tables': None,
'task': <Task(BranchPythonOperator): branc<sub>op</sub>>,
'task<sub>instance</sub>': <TaskInstance: t2.branc<sub>op</sub> 2021-04-07T01:20:00+00:00 [running]>,
'ti': <TaskInstance: t2.branc<sub>op</sub> 2021-04-07T01:20:00+00:00 [running]>,
'task<sub>instance</sub><sub>key</sub><sub>str</sub>': 't2\_<sub>branc</sub><sub>op</sub>\_<sub>20210407</sub>',
'test<sub>mode</sub>': False,
'var': {'value': None, 'json': None},
'inlets': [],
'outlets': [],
'templates<sub>dict</sub>': None}


<a id="org21d20ba"></a>

## Tasks

<https://airflow.apache.org/docs/apache-airflow/stable/concepts.html#trigger-rules>


<a id="orgc37460b"></a>

### trigger<sub>rule</sub>

all<sub>success</sub>: (default) all parents have succeeded

all<sub>failed</sub>: all parents are in a failed or upstream<sub>failed</sub> state

all<sub>done</sub>: all parents are done with their execution

one<sub>failed</sub>: fires as soon as at least one parent has failed, it does not wait for all parents to be done

one<sub>success</sub>: fires as soon as at least one parent succeeds, it does not wait for all parents to be done

none<sub>failed</sub>: all parents have not failed (failed or upstream<sub>failed</sub>) i.e. all parents have succeeded or been skipped

none<sub>failed</sub><sub>or</sub><sub>skipped</sub>: all parents have not failed (failed or upstream<sub>failed</sub>) and at least one parent has succeeded.

none<sub>skipped</sub>: no parent is in a skipped state, i.e. all parents are in a success, failed, or upstream<sub>failed</sub> state

dummy: dependencies are just for show, trigger at will


<a id="org7f17d42"></a>

## TaskGroup

from airflow.utils.task<sub>group</sub> import TaskGroup

with TaskGroup("group1") as group1:
    task1 = DummyOperator(task<sub>id</sub>="task1")
    task2 = DummyOperator(task<sub>id</sub>="task2")

task3 = DummyOperator(task<sub>id</sub>="task3")

group1 >> task3


<a id="org041817d"></a>

## airflow.cfg

Executors:

-   SequentialExecutor
-   LocalExecutor - good for single node, use parallelism
-   CeleryExecutor - distributed
-   KubernetesExecutor - temporary pod for each task to run


<a id="org849bc3f"></a>

## best practives

-   example dag <https://github.com/apache/airflow/tree/master/airflow/example_dags>
-   <https://gtoonstra.github.io/etl-with-airflow/principles.html>
    -   <https://github.com/gtoonstra/etl-with-airflow/tree/master/examples>
-   <https://github.com/astronomer/airflow-guides/blob/master/guides/dag-best-practices.md>

-   provide atomicy inside task (Airflow can retry a task if it fails)
-   tasks should produce the same outcome on every re-run
    -   replace INSERT with UPSER
    -   Never read the latest available data in a task. Read and write in a specific partition.
    -   datetime.now() - should never be used inside a task

**start<sub>date</sub>** parameter in a DAG - reexecution of historical data


<a id="org8511be6"></a>

### UPSERT in postgresql

    INSERT INTO customers (NAME, email)
    VALUES('Microsoft','hotline@microsoft.com')
    ON CONFLICT ON CONSTRAINT customers_name_key
    DO NOTHING;


<a id="org355822d"></a>

## local server

pip3 install apache-airflow &#x2013;user
cd ~/airflow
airflow initdb # only first time
airflow scheduler &
airflow webserver -p 8080 &
wait


<a id="org1521682"></a>

## Incremental Record Filtering

-   break out your pipelines into incremental extracts and loads
    -   Last Modified Date - each record in your source system contains a column containing the last time the
        record was modified
    -   Sequence IDs - last modified date is not available
        -   when the source records are only being appended to and never updated


<a id="org3bd510a"></a>

## deployment

-   <https://towardsdatascience.com/getting-started-with-airflow-locally-and-remotely-d068df7fcb4>
-   pycharm + docker <https://medium.com/ninjavan-tech/setting-up-a-complete-local-development-environment-for-airflow-docker-pycharm-and-tests-3577ddb4ca94>
    -   <https://github.com/ninja-van/airflow-boilerplate>

-   <https://www.gradiant.org/en/blog/apache-airflow-docker-en/>
-   <https://airflow.apache.org/docs/apache-airflow/2.0.2/start/docker.html>

cd /home/airflow && docker-compose down && docker-compose up -d


<a id="org777748c"></a>

### docker-compose

&#x2014;
version: "3.7"

services:

backend:
  image: mysql:latest
  restart: unless-stopped
  command: &#x2013;default-authentication-plugin=mysql<sub>native</sub><sub>password</sub>
  networks:

-   internal

volumes:

-   "backend:/var/lib/mysql"

env<sub>file</sub>:

-   mysql.env

engine:
  restart: unless-stopped
  build: ./airflow-engine
  depends<sub>on</sub>:

-   backend

init: true
networks:

-   internal

volumes:

-   "engine:/root/airflow/"
-   ./dags:/root/airflow/dags

ports:

-   "8080:8080"

env<sub>file</sub>:

-   mysql.env

networks:
  internal:

volumes:
  engine:
  backend:


<a id="orgcd91850"></a>

### Dockerfile

FROM python:3.7

RUN pip3 install 'apache-airflow[mysql,crypto]' mysql-connector-python

WORKDIR *root/airflow*
COPY airflow.sh airflow.sh
RUN chmod +x airflow.sh
COPY fernet.py fernet.py
COPY mysqlconnect.py mysqlconnect.py
CMD ./airflow.sh


<a id="org77fba8e"></a>

### ferenet.py

from cryptography.fernet import Fernet
import configparser

fernet<sub>key</sub> = Fernet.generate<sub>key</sub>().decode()

config = configparser.ConfigParser()
config.read('/root/airflow/airflow.cfg')
config['core']['fernet<sub>key</sub>'] = fernet<sub>key</sub>
with open('/root/airflow/airflow.cfg', 'w') as f:
   config.write(f)


<a id="orgbcb1b76"></a>

### mysqlconnect.py

from os import environ as env
import configparser

config = configparser.ConfigParser()
config.read('/root/airflow/airflow.cfg')

config['core']['sql<sub>alchemy</sub><sub>conn</sub>'] = 'mysql://{user}:{password}@backend/{db}'.format(user=env.get('MYSQL<sub>USER</sub>'), password=env.get('MYSQL<sub>PASSWORD</sub>'), db=env.get('MYSQL<sub>DATABASE</sub>'))
config['core']['executor'] = 'LocalExecutor'
with open('/root/airflow/airflow.cfg', 'w') as f:
     config.write(f)


<a id="orgcbc4be4"></a>

### airflow.sh

INIT<sub>FILE</sub>=.airflowinitialized
if [ ! -f "$INIT<sub>FILE</sub>" ]; then

airflow initdb
rm /root/airflow/airflow.db

python fernet.py

sleep 20

python mysqlconnect.py
airflow initdb

apt update && apt install -y default-mysql-client
echo 'ALTER TABLE xcom MODIFY value LONGBLOB;' | mysql –h backend –u root –p$MYSQL<sub>ROOT</sub><sub>PASSWORD</sub> airflowdb
apt remove -y default-mysql-client

    touch "$INIT<sub>FILE</sub>"
fi

airflow scheduler &
airflow webserver &
wait


<a id="orgb10b2d8"></a>

## test

<https://blog.usejournal.com/testing-in-airflow-part-1-dag-validation-tests-dag-definition-tests-and-unit-tests-2aa94970570c>

airflow list<sub>dags</sub> - show errors


<a id="orgbd966fa"></a>

### operator

    import logging
    
    from airflow.hooks.postgres_hook import PostgresHook
    from airflow.hooks.oracle_hook import OracleHook
    from airflow.models import BaseOperator
    from airflow.utils.decorators import apply_defaults
    
    
    class PostgresToOracleOperator(BaseOperator):
        @apply_defaults
        def __init__(self, task_id, *args, **kwargs):
            super().__init__(task_id=task_id, *args, **kwargs)
    
        def execute(self, context):
            print("ok")
    
    
    
    
    # Operator Test
    if __name__ == '__main__':
        from airflow import DAG
        from datetime import datetime
        from airflow.models import TaskInstance
    
        dag = DAG(dag_id='anydag', start_date=datetime.now())
        task = PostgresToOracleOperator(dag=dag, task_id='s')
        ti = TaskInstance(task=task, execution_date=datetime.now())
        task.execute(ti.get_template_context())


<a id="org368691b"></a>

### dag test

1.  DAG Validation Test

    test for import errors


<a id="orgf38f6d2"></a>

### task.execute

-   reqire database initialized
-   $airflow config get-value core sql<sub>alchemy</sub><sub>conn</sub> - path to database


<a id="orgfdcbb43"></a>

## dynamic dag

-   <https://habr.com/en/company/mailru/blog/344398/>
-   <https://stackoverflow.com/questions/39133376/airflow-dynamic-dag-and-task-ids>


<a id="org9d15195"></a>

## pass data between operators

**Variables**

-   <https://github.com/gtoonstra/etl-with-airflow/blob/master/examples/etl-example/dags/orders_staging.py>
-   Admin-Variables
-   baz = Variable.get("baz", default<sub>var</sub>=None)


<a id="orgabfc2ee"></a>

## макросы Jinja в Airflow

-   <https://habr.com/ru/company/mailru/blog/344398/>

Defined in context of BaseOperator.execute(self, context: Any)

-   get<sub>template</sub><sub>context</sub>  <https://github.com/apache/airflow/blob/main/airflow/models/taskinstance.py>
-   reference <https://airflow.apache.org/docs/apache-airflow/stable/macros-ref.html>

-   "{{ ds }}" - execution date
-   task.render<sub>template</sub>("{{ ds }}")

dates:

-   start<sub>date</sub> - от чего вообще начинаем
-   end<sub>date</sub> - когда больше не будем
-   execution<sub>date</sub> - как и ds показывается для какой даты сейчас запущен


<a id="org9726854"></a>

## parallism config

**dag parameters**:

-   max<sub>active</sub><sub>runs</sub>=1 - не больше одного дага паралельно запущенного

**config parameters**:

parallelism = 32

dag<sub>concurrency</sub> = 16

dags<sub>are</sub><sub>paused</sub><sub>at</sub><sub>creation</sub> = True

non<sub>pooled</sub><sub>task</sub><sub>slot</sub><sub>count</sub> = 128

max<sub>active</sub><sub>runs</sub><sub>per</sub><sub>dag</sub> = 16


<a id="org7a7798d"></a>

## skip task

You can leverage a SensorOperator more specifically the FileSensorOperator to check if a file exists. You can
then use the soft<sub>fail</sub> arg to mark the tasks as "skipped" when the file does not exist. This will allow the
DAG to succeed while maintaining the proper history of what occurred on the file check.


<a id="org1f6a10d"></a>

## stop dag

1.  kwargs['dag'].set<sub>dag</sub><sub>runs</sub><sub>state</sub>(State.FAILED) # without retry
2.  raise AirflowException("asdas!") or ValueError("")


<a id="orge390e92"></a>

## Executors

Are the mechanism by which task instances get run.

-   default - SequentialExecutor


<a id="org25f8a74"></a>

## Cross-DAG Dependencies (subdags)

-   visualize <https://github.com/ms32035/airflow-dag-dependencies>


<a id="org3a5b50f"></a>

### ExternalTaskSensor

-   <https://towardsdatascience.com/dependencies-between-dags-in-apache-airflow-2f5935cde3f0>
-   <https://airflow.apache.org/docs/apache-airflow/stable/howto/operator/external_task_sensor.html>

ExternalTaskSensor
ExternalTaskMarker

trigger<sub>dagrun</sub>


<a id="orge327fb4"></a>

### TODO TriggerDagRunOperator


<a id="orge0cb2a8"></a>

### TODO dag.implicit<sub>dependencies</sub> = ['dag<sub>1</sub>', 'dag<sub>2</sub>']


<a id="org4997343"></a>

### SubDagOperator

Astronomer highly recommends staying away from SubDags. Airflow 1.10 has changed the default SubDag
execution method to use the Sequential Executor to work around deadlocks caused by SubDags

Since SubDAGs have been deprecated, the best practice is to use other Airflow features:

-   TaskGroups:
-   Cross-DAG dependencies - TriggerDagRunOperator, ExternalTaskSensor

<https://www.astronomer.io/guides/subdags/>
<https://www.adoclib.com/blog/airflow-subdagoperator-deadlock.html>
<https://medium.com/gumgum-tech/implement-dag-dependencies-using-triggerdagrun-operator-318b46036347>


<a id="org6be5259"></a>

## Trigger Dag - JSON

{'kay':'value'}

PythonOperator
has property - provide<sub>context</sub> (deafult False)

two ways in which one can access the parameters:

-   kwargs['dag<sub>run</sub>'].conf - None or {'key':'123'}
-   .get('key')
-   {{ dag<sub>run.conf</sub>['key'] }}


<a id="orgcba95d6"></a>

## update 2.0.2

<https://airflow.apache.org/docs/apache-airflow/stable/upgrading-to-2.html>
3.6+ not 3.9

1.  airflow initdb -> airflow db init
2.  

[webserver] rbac = True

1.  airflow users create \\
    &#x2013;role Admin \\
    &#x2013;username admin \\
    &#x2013;firstname FIRST<sub>NAME</sub> \\
    &#x2013;lastname LAST<sub>NAME</sub> \\
    &#x2013;email EMAIL@example.org
2.  add "airflow db init" to airflow.sh
3.  run once
4.  remove "airflow db init" from airflow.sh


<a id="org649dc58"></a>

## create connection

   from airflow.models import Connection
from airflow import settings

def create<sub>conn</sub>(username, password, host=None):
    new<sub>conn</sub> = Connection(conn<sub>id</sub>=f'{username}<sub>connection</sub>',
                                  login=username,
                                  host=host if host else None)
    new<sub>conn.set</sub><sub>password</sub>(password)

session = settings.Session()
session.add(new<sub>conn</sub>)
session.commit()


<a id="org2abed3e"></a>

## create user

docker exec -it airflow<sub>engine</sub> bash -c 'airflow user create &#x2013;role Admin &#x2013;username admin &#x2013;firstname V
&#x2013;lastname C &#x2013;email cv@r.ru'


<a id="orgebdfa5c"></a>

## restart

docker-compose down && docker-compose up -d


<a id="org51280c4"></a>

## problems

-   execution<sub>timeout</sub> is not working
-   Own Operators require hard testing
-   all Python dependencies from each workflow need to be installed on each Airflow Worker


<a id="orgc12782a"></a>

## how to change config:

-   connect to running airflow<sub>engine</sub> and cat airflow.cfg
-   change config


<a id="org658a767"></a>

## rest API

-   authentication <https://airflow.apache.org/docs/apache-airflow/stable/security/api.html>
-   <https://airflow.apache.org/docs/apache-airflow/stable/stable-rest-api-ref.html>
-   <https://airflow.apache.org/docs/apache-airflow/1.10.2/api.html>

    [api]
    auth_backends = airflow.api.auth.backend.basic_auth

check:

    $ airflow config get-value api auth_backends
    airflow.api.auth.backend.basic_auth

Необходимо подождать некоторое время, авторизация возможно не сразу включается.

    ENDPOINT_URL="http://localhost:8080/"
    curl -X GET --insecure --user "username:password" \
        "${ENDPOINT_URL}/api/v1/pools"


<a id="orgec426ef"></a>

## logs

logging.Logger - 4 loggers by default:

-   root
-   flask<sub>appbuilder</sub>
-   airflow.processor
-   airflow.task

logging.Formatter

-   airflow<sub>colored</sub>
-   airflow

locations:

-   Scheduler logs: /usr/local/airflow/logs/scheduler
-   Webserver logs appear in the console by default: docker logs <webserver<sub>container</sub><sub>id</sub>>
-   Metadata database logs: docker logs <postgres<sub>container</sub><sub>id</sub>>
-   docker logs <triggerer<sub>container</sub><sub>id</sub>>
-   Task logs are in *usr/local/airflow/logs*

links:

-   <https://www.astronomer.io/guides/logging/>
-   <https://airflow.apache.org/docs/apache-airflow/stable/logging-monitoring/logging-architecture.html>
-   <https://airflow.apache.org/docs/apache-airflow/stable/logging-monitoring/logging-tasks.html#serving-logs-from-workers>


<a id="org403e880"></a>

## Database of Airflow

recent runs

    SELECT
        dag_run.dag_id,
        dag_run.state
    FROM dag_run
    INNER JOIN (SELECT
                    dag_id,
                    MAX(execution_date) AS date
                FROM dag_run
                GROUP BY dag_id) mx
        ON
        dag_run.dag_id = mx.dag_id
        AND dag_run.execution_date = mx.date
    JOIN dag ON dag.dag_id = dag_run.dag_id AND is_active = 1 AND is_paused = 0


<a id="orgd1141b0"></a>

# TODO dbt - ETL

-   writing test
-   generate documentation
-   SQL, yaml

A dbt model is basically a .sql file with a SELECT statement.


<a id="org6ce0f9a"></a>

# Data Lake (Озеро данных)

это система или репозиторий данных , хранящихся в естественном / необработанном формате

A болото данных - это испорченное и неуправляемое озеро данных, которое либо недоступно для предполагаемых пользователей, либо представляет небольшую ценность. Википедия  site:wikichi.ru

Джеймс Диксон Pentaho, придумал этот термин, чтобы противопоставить его витрине данных , который
представляет собой небольшое хранилище интересных атрибутов

использование

-   Озеро данных было помечено как резервуар необработанных данных или хаб для разгрузки ETL
-   Озеро данных было определено как центральный узел для самообслуживания.

может включать

-   структурированные данные из реляционных баз данных (строки и столбцы)
-   полуструктурированные данные (CSV , журналы, XML , JSON )
-   неструктурированные данные (электронные письма, документы, PDF-файлы)
-   двоичные данные (изображения, аудио , видео)

terms

-   источники — sources;
-   настройки каналов — pipelines;
-   регулярность обновлений — schedulers;
-   владельцы — custodians;
-   время хранения — retention time;
-   метаданные — другие «данные о данных».

хранилища данных (HDFS, EDW, IMDG, Cloud и т.д.)

-   Google Cloud Storage и Amazon S3
-   распределенную файловую систему, такую ​​как Apache Хадуп


<a id="orgd83dca4"></a>

## критика

Мы видим, как заказчики создают кладбища больших данных, сбрасывают все в распределенную файловую
систему Hadoop (HDFS) и надеются что-то с этим сделать в будущем. Но затем они просто теряют из виду
то, что там есть


<a id="org1c79d4a"></a>

# Управленческий учет

-   <https://en.wikipedia.org/wiki/Management_accounting>

areas:

-   Strategic management
-   Performance management
-   Risk management


<a id="org8fb5866"></a>

# TODO Юнит-экономика (unit-экономика, unit economics)

метод экономического моделирования, который помогает определить прибыльность бизнеса через расчет прибыльности
бизнес-юнита (единицы товара или одного клиента). Эффективен для digital-проектов.

позволяет увидеть, сколько вы зарабатываете с потока клиентов — поток состоит из юнитов


<a id="orge1e037c"></a>

## Зачем считать юнит-экономику

-   Определить эффективность основных каналов продаж.
-   Оценить перспективы компании, понять, куда она движется.
-   Чтобы определить прибыльность бизнеса на этапе идеи.
-   Найти точку безубыточности и просчитать доходность инвестиций.
-   Понять, сколько нужно привлечь клиентов; узнать, сколько будет стоить каждый из них.
-   Объективно рассказать инвесторам о перспективах бизнеса.

С помощью юнит-экономики вы можете рассчитать, сколько единиц товара нужно продать, чтобы покрыть постоянные затраты.


<a id="org887a96a"></a>

## Когда

-   Вы хотите привлечь инвесторов.
-   Вы планируете масштабировать бизнес.
-   Вы запускаете стартап.
-   Основные затраты на привлечение клиента и совершение сделки — продвижение и реклама.


<a id="orgd4921e5"></a>

## Как

Юнит-экономика основана на принципах управленческого учета и микроэкономики

формула прибыли:

-   Прибыль = Маржинальная прибыль - Постоянные затраты
-   Маржинальная прибыль = Выручка - Переменные затраты
-   Прибыль = Выручка - Переменные затраты - Постоянные

Если маржинальная прибыль выше постоянных затрат, бизнес успешен

совокупная маржинальная прибыль определяется как общее число проданных товаров, умноженное на их цену за вычетом себестоимости.

прибыль или убыток с одной единицы товара

-   Цена продажи - Расходы = Прибыль (Убыток)

расчета точки безубыточности используется

-   Постоянные затраты / Прибыль с 1 продажи = Необходимое

COGS (Cost of Good Sold) - Затраты на каждую продажу, ее себестоимость. Это переменные затраты, которые
увеличиваются пропорционально объемам продаж. Например, сюда относится доставка.

1sCOGS (First sale COGS) - Дополнительные расходы, которые приходится нести, чтобы совершить первую продажу.


<a id="orgaa5ca49"></a>

## Когортный анализ

инструмент аналитики, при котором пользователи рассматриваются в группах, связанных по определенному признаку.


<a id="orgbc8a656"></a>

## links

-   <https://www.uplab.ru/blog/unit-economics-how-to-evaluate-the-success-of-the-business/>


<a id="orgd01e814"></a>

# mail

Data warehouse:

-   Greenplum BD

designed to manage large-scale analytic data warehouses and business intelligence workloads.

-   на основе PostgreSQL - лучше MySQL
-   massively parallel processing (MPP)
-   PostgreSQL interface
-   performs best with a denormalized schema design
-   Greenplum provides both row-oriented and **column-oriented** table types
-   logically partition table data, either by range or by a list of values - each partition of a single table
    can utilize its own storage method (row vs. column orientation)

-   MariaBD

for a wide variety of use cases as replacement for MySQL

-   single server or multi-server
-   columnar storage optimized for interactive
-   ad hoc analytics
-   scaling out as needed

Bad:  Vertica CE (limited to 1TB of data and 3 database nodes), Clickhouse (сырая, недокум-ные Upd/Del),

Report system:

-   Power BI Desktop

один из лучших, отчет сохраняется в виде файла и открывается в том виде как был создан.
-cons:

-   Windows на одном рабочем месте, нужно предварительно установить и проверить соединение с базой

-   Metabase

можно развернуть в докере и дать доступ через веб.

-   cons: мало инструментов и нет Slicer

-   Microstrategy Desktop Free - аналог Power BI, требует изучение

-   Saiku Analytics - нужно присмотреться, есть ограничения <https://www.meteorite.bi/saiku-product-comparison>

Bad: Apahce SuperSet (нельзя изменить названия полей),
Pentaho BI Suite (много ограничений по функционалу, поменялась компания 2017. 2017 stable),
Vertica CE (limited to 1TB of data and 3 database nodes),
Exasol CE(Can store up to 200 GB or raw data, single machine)


<a id="org85eb333"></a>

# Congos

IBM® Cognos Business Intelligence - комплект программ для бизнес-аналитики
IBM Cognos Analytics - инструмент бизнес-аналитики
IBM Cognos


<a id="orgd13d25e"></a>

# цфт разаботка

-   EXEC ibs.EXECUTOR.SET<sub>CONTEXT</sub>('DATE<sub>SLEPOK</sub><sub>BEGIN</sub>', to<sub>char</sub>(trunc(sysdate),'dd/mm/yyyy'));
-   EXEC ibs.EXECUTOR.SET<sub>CONTEXT</sub>('DATE<sub>SLEPOK</sub><sub>BEGIN</sub>', '01/01/2019');
-   EXEC ibs.EXECUTOR.SET<sub>CONTEXT</sub>('DATE<sub>SLEPOK</sub><sub>END</sub>', '03/07/2019');
-   SELECT SYS<sub>CONTEXT</sub>('IBS<sub>USER</sub>','DATE<sub>SLEPOK</sub><sub>BEGIN</sub>') FROM DUAL;

    begin
    ibs.EXECUTOR.SET_CONTEXT('DATE_SLEPOK_BEGIN', to_char(trunc(sysdate),'dd/mm/yyyy'));
    END;
    
    begin
    ibs.EXECUTOR.SET_CONTEXT('DATE_SLEPOK_END', to_char(trunc(sysdate),'dd/mm/yyyy'));
    END;
    
    SELECT * FROM VW_RPT_RNB_UU_ACF_BAL_OB;

    
    SELECT
    -- ID -- 0 NUMBER
    CLI_ID, -- NUMBER Номер клиента
    CLI_INN, -- VARCHAR2(12) ИНН
    BS1, -- VARCHAR2(12) БС1
    BS2, -- VARCHAR2(5) БС2
    BSS, -- VARCHAR2(10) БСС
    ACC, -- VARCHAR2(25) ЛС
    ACC_FIL, -- VARCHAR2(26) ЛСФ
    ACC_NAME, -- VARCHAR2(160) НаименованиеСчета
    CLI_NAME, -- VARCHAR2(160) НаименованиеКлиента
    CLI_CLASS, -- VARCHAR2(128) ТипКлиента
    CUR, -- VARCHAR2(3) ВалютаСчета
    VAL, -- VARCHAR2(3) Валюта
    FILIAL, -- VARCHAR2(3) Филиал
    DEPART, -- VARCHAR2(20) Отделение
    MARKET, -- VARCHAR2(300) Рынок
    BLOCK, -- VARCHAR2(300) Бизнес блок
    -- SEC_UL VARCHAR2(300) СегментЮЛ -
    -- SEC_FL VARCHAR2(300) СегментФЛ -
    ACC_OTV, -- VARCHAR2(100) Менеджер
    ATTR, -- VARCHAR2(300) АктивПассив
    ZNAK, -- VARCHAR2(300) ЗНАК
    NAME_CB, -- VARCHAR2(300) НаименованиеЦБ
    KOD_PROC, -- VARCHAR2(300) КОД_ПРОЦ
    SROK1, -- VARCHAR2(300) Срочность1
    SROK2, -- VARCHAR2(300) Срочность1
    SROK3, -- VARCHAR2(300) Срочность1
    REZIDENT, -- VARCHAR2(300) Резидентность
    VID_SOBSTV, -- VARCHAR2(300) ВидСобственности
    ACC_AMORT, -- VARCHAR2(300) СчетаАмортизации
    ACC_RESERV, -- VARCHAR2(300) СчетаРезервов
    ACC_REVAL, -- VARCHAR2(300) СчетаПереоценки
    RAZDEL, -- VARCHAR2(300) РАЗДЕЛ
    SUBRAZD, -- VARCHAR2(300) ПОДРАЗДЕЛ
    ARTICLE, -- VARCHAR2(300) СТАТЬЯ
    SUBENTRY, -- VARCHAR2(300) ПОДСТАТЬЯ
    GRUPPA, -- VARCHAR2(300) ГРУППА
    -- SUBGRUP, -- VARCHAR2(300)
    PRODUCT, -- VARCHAR2(300) Продукт
    VID_PROD, -- ТиповойДоговор VARCHAR2(300),  -- (text) Null, - 12312
    NUM_DOG, -- VARCHAR2 НомерДоговора
    DATE_BEG, -- DATE Дата_Н
    DATE_END, -- DATE Дата_О
    SM_NT_BEG, -- NUMBER 01/01/2019
    OB_NT_DEB, -- NUMBER ОБОРОТ_Дб_РУБ
    OB_NT_CRED, -- NUMBER ОБОРОТ_Кт_РУБ
    SM_END, -- NUMBER ИСХОД_ВАЛ
    SM_NT_END -- NUMBER ИСХОД_РУБ
    -- DELTA NUMBER
    FROM VW_RPT_RNB_UU_ACF_BAL_OB;

q

    SELECT
    -- ID -- 0 NUMBER
    CLI_ID as НомерКлиента, -- NUMBER
    CLI_INN as ИНН, -- VARCHAR2(12)
    BS1 as БС1, -- VARCHAR2(12)
    BS2 as БС2, -- VARCHAR2(5)
    BSS as БСС, -- VARCHAR2(10)
    ACC as ЛС, -- VARCHAR2(25)
    ACC_FIL as ЛСФ, -- VARCHAR2(26)
    ACC_NAME as НаименованиеСчета, -- VARCHAR2(160)
    CLI_NAME as НаименованиеКлиента, -- VARCHAR2(160)
    CLI_CLASS as ТипКлиента, -- VARCHAR2(128)
    CUR as ВалютаСчета, -- VARCHAR2(3)
    VAL as Валюта, -- VARCHAR2(3)
    FILIAL as Филиал, -- VARCHAR2(3)
    DEPART as Отделение, -- VARCHAR2(20)
    MARKET as Рынок, -- VARCHAR2(300)
    BLOCK as БизнесБлок, -- VARCHAR2(300)
    -- SEC_UL VARCHAR2(300) СегментЮЛ -
    -- SEC_FL VARCHAR2(300) СегментФЛ -
    ACC_OTV as Менеджер,  -- VARCHAR2(100)
    ATTR as АктивПассив, -- VARCHAR2(300)
    ZNAK as ЗНАК, -- VARCHAR2(300)
    NAME_CB as НаименованиеЦБ, -- VARCHAR2(300)
    KOD_PROC as КОД_ПРОЦ, -- VARCHAR2(300)
    SROK1 as Срочность1, -- VARCHAR2(300)
    SROK2 as Срочность2, -- VARCHAR2(300)
    SROK3 as Срочность3, -- VARCHAR2(300)
    REZIDENT as Резидентность, -- VARCHAR2(300)
    VID_SOBSTV as ВидСобственности, -- VARCHAR2(300)
    ACC_AMORT as СчетаАмортизации, -- VARCHAR2(300)
    ACC_RESERV as СчетаРезервов, -- VARCHAR2(300)
    ACC_REVAL as СчетаПереоценки, -- VARCHAR2(300)
    RAZDEL as РАЗДЕЛ, -- VARCHAR2(300)
    SUBRAZD as ПОДРАЗДЕЛ, -- VARCHAR2(300)
    ARTICLE as СТАТЬЯ, -- VARCHAR2(300)
    SUBENTRY as ПОДСТАТЬЯ, -- VARCHAR2(300)
    GRUPPA as ГРУППА, -- VARCHAR2(300)
    -- SUBGRUP, -- VARCHAR2(300)
    PRODUCT as Продукт, -- VARCHAR2(300)
    VID_PROD as ТиповойДоговор, -- VARCHAR2(300),  -- (text) Null, - 12312
    NUM_DOG as НомерДоговора, -- VARCHAR2
    DATE_BEG as Дата_Н, -- DATE
    DATE_END as Дата_О, -- DATE
    SM_NT_BEG as 01/01/2019, -- NUMBER
    OB_NT_DEB as ОБОРОТ_Дб_РУБ, -- NUMBER
    OB_NT_CRED as ОБОРОТ_Кт_РУБ, -- NUMBER
    SM_END as ИСХОД_ВАЛ, -- NUMBER
    SM_NT_END as ИСХОД_РУБ -- NUMBER
    -- DELTA NUMBER
    FROM VW_RPT_RNB_UU_ACF_BAL_OB;

green create

    -- CREATE TABLE c(a int PRIMARY KEY, b text)  DISTRIBUTED BY(a);
    CREATE TABLE test (
    Дата date,
    НомерКлиента bigint, -- NUMBER
    ИНН varchar(12), -- VARCHAR2(12)
    БС1 varchar(12), -- VARCHAR2(12)
    БС2 varchar(5), -- VARCHAR2(5)
    БСС varchar(10), -- VARCHAR2(10)
    ЛС varchar(12), -- VARCHAR2(25)
    ЛСФ varchar(26), -- VARCHAR2(26)
    НаименованиеСчета varchar(160), -- VARCHAR2(160)
    НаименованиеКлиента varchar(160), -- VARCHAR2(160)
    ТипКлиента varchar(128), -- VARCHAR2(128)
    ВалютаСчета varchar(3), -- VARCHAR2(3)
    Валюта varchar(3), -- VARCHAR2(3)
    Филиал varchar(3), -- VARCHAR2(3)
    Отделение varchar(20), -- VARCHAR2(20)
    Рынок varchar(300), -- VARCHAR2(300)
    БизнесБлок varchar(300), -- VARCHAR2(300)
    -- SEC_UL VARCHAR2(300) СегментЮЛ -
    -- SEC_FL VARCHAR2(300) СегментФЛ -
    Менеджер varchar(100),  -- VARCHAR2(100)
    АктивПассив varchar(300), -- VARCHAR2(300)
    ЗНАК varchar(300), -- VARCHAR2(300)
    НаименованиеЦБ varchar(300), -- VARCHAR2(300)
    КОД_ПРОЦ varchar(300), -- VARCHAR2(300)
    Срочность1 varchar(300), -- VARCHAR2(300)
    Срочность2 varchar(300), -- VARCHAR2(300)
    Срочность3 varchar(300), -- VARCHAR2(300)
    Резидентность varchar(300), -- VARCHAR2(300)
    ВидСобственности varchar(300), -- VARCHAR2(300)
    СчетаАмортизации varchar(300), -- VARCHAR2(300)
    СчетаРезервов varchar(300), -- VARCHAR2(300)
    СчетаПереоценки varchar(300), -- VARCHAR2(300)
    РАЗДЕЛ varchar(300), -- VARCHAR2(300)
    ПОДРАЗДЕЛ varchar(300), -- VARCHAR2(300)
    СТАТЬЯ varchar(300), -- VARCHAR2(300)
    ПОДСТАТЬЯ varchar(300), -- VARCHAR2(300)
    ГРУППА varchar(300), -- VARCHAR2(300)
    -- SUBGRUP, -- VARCHAR2(300)
    Продукт varchar(300), -- VARCHAR2(300)
    ТиповойДоговор varchar(300), -- VARCHAR2(300),  -- (text) Null, - 12312
    НомерДоговора varchar, -- VARCHAR2
    Дата_Н date, -- DATE
    Дата_О date, -- DATE
    main money, -- NUMBER
    ОБОРОТ_Дб_РУБ money, -- NUMBER
    ОБОРОТ_Кт_РУБ money, -- NUMBER
    ИСХОД_ВАЛ money, -- NUMBER
    ИСХОД_РУБ money -- NUMBER
    )
    WITH (appendonly=true, orientation=column) DISTRIBUTED BY(a)


<a id="org7c6055a"></a>

# Data Science

-<https://www.kdnuggets.com/2018/06/data-science-predicting-future.html>

When and Why:

-   When: after BI reports
-   Why you need it: reports and dashboards business insights, Predictive Analytics

Fraud detection: machine learning, specifically supervised learning. When these models detect even the
slightest probability of theft, they flag the transactions, and prevent the fraud in real time.

Client retention: ‘personal touch’ - minimizing marketing costs and maximizing profits


<a id="orgd97c072"></a>

# BI Platform video

У BI платформы - Когда больше 1000? пользовтелей и 1000? строк - Внезапная деградация производительности

1.  Разрозненные источники
2.  Информационно-аналитическая система
3.  Аналитические отчеты

Самывй крутой подход:
BI Platform (ROLAM Engine) -sql> DataWarehouse

-   медленно
-   низкое использование кэши

Другой подход:
До террабайта данные поднимаются в in-Memory OLAP Engine

Ентерпрайс - оба подхода - горячие данные в InMemory холодные из DataWarehouse

-   необходимо разделить данные на холодные горячие

тестирование аналитической нагрузки
TPC-H - типовые запросы

Способы оптимизации под аналитические запросы

-   колоночное хранение
    -   эффективное использование кэша процессора
-   сжатие в IN-NEMORY OLAP
    -   LZ4
    -   RLE RUN-LENGTH ENCODING - на данных с низкой кординальностью(повторяется одно и то же)
        -   все данные отсортировать не возможно и не нужно
-   векторные инструкции процессоров
-   поздняя материализация - при выполнении SQL - поздный JOIN столбцов
-   Эвристические оптимизаци BI платформы:
    -   автоматическая нормализация-денормализация таблиц
    -   сортировка по календарному измерению - НЕ ИСПОЛЬЗОВАТЬ ДАТУ В ВИДЕ СТРОКИ
    -   разделяемый пользовательский кэш - несолько позователей у BI
    -   разделяемый кэш подзапросов
    -   обратные индексы для строковых полей

Как убить IN-MEMORY OLAP

-   Применять выражения, на которых плохо работает векторизация(нелинейное вырожение используещее много строк)
-   Использовать вложенные запросы с большим промежуточным результатом (заставляет ранюю материализацию)
-   часто обновлять данные, не используя специальные инструменты для Real-time(заст частую инвалидацию и низ эфф кэша)
-   оставлять маленький запас свободной RAM
-   Грузить в BI поля с высокой кардинальностью - комментарии к заказу, сообщения

Реалтайм если нужен его лучше выделить в отдельный виджет - за отдельный час там

Было бы здорово - Измерить прямую заполнения кэша у BI платформы - редка позволяют

медленно изменяющиеся измерения - один сотрудник меняет должность что-то

-   срезы - по квартально (когда меняется структура статей финансовых и локаций)
-   таблицы фактов с именениями - каждый переход сотрудника - это факт

INMEMORY better then MOLAP

BI имеющие in-memory
visiolagy
ploimatic

для мониторинга событий - SCADA - специальные системы

пределы in-memory

-   сотен тысяч записей - начинаются проблемы
-   единиц милионов - проблемы

GPU для in-memory - неочень эффекивно есть вероятность потерять быстродейтвие для ряда задач

в ClickHouse есть специализация под разные виды запросов это и дает оптимизацию


<a id="org3e76814"></a>

# Big Data <a id="org5683661"></a>


<a id="org849d231"></a>

## frameworks:

big data framework -  manipulate datasets on top of a distributed processing system

Pandas and Dask - for small companies


<a id="org095fccf"></a>

### Apache: Hadoop vs Hive vs Spark

-   **Hadoop:** обеспечивает основу для хранения и обработки данных
-   **Hive:** упрощает доступ к данным (Hadoop) с помощью SQL. Преобразует запросы в MapReduce
-   **Spark:** обеспечивает высокопроизводительную обработку данных.


<a id="orgd08cd6d"></a>

### Apache Spark

faster than libraries like Pandas and Dask, and can handle larger amounts of data than these frameworks.

-   training algorithms for machine learning systems - orientation

**resilient distributed dataset (RDD)** - a read-only multiset of data items distributed over a cluster of
 machines, that is maintained in a fault-tolerant way.

Spark's RDDs function as a working set for distributed programs that offers a (deliberately) restricted form
 of distributed shared memory.??????

workflow is managed as a directed acyclic graph (DAG). Nodes represent RDDs while edges represent the
 operations on the RDDs. (in contrast, MapReduce is linear)

Dataframe API

For cluster management, Spark supports:

-   testing cluster - native Spark cluster
-   Hadoop YARN, Apache Mesos or Kubernetes

For distributed storage:

-   Alluxio, Hadoop Distributed File System (HDFS),[12] MapR File System (MapR-FS),[13] Cassandra,[14] OpenStack
    Swift, Amazon S3, Kudu, Lustre file system

programming style:

-   RDD-oriented functional style of programming
-   two restricted forms of shared variables: **broadcast variables** reference read-only data that needs to be
    available on all nodes, while **accumulators** can be used to program reductions in an imperative style.


<a id="orgb709ea9"></a>

### Hadoop

distributed system

Apache Hadoop's MapReduce and HDFS components were inspired by Google papers on MapReduce and Google File
 System.

Open-source distributed data warehousing database which operates on Hadoop Distributed File System.

-   data is stored in the form of tables (just like RDBMS)
-   specially built for data warehousing operations and is not an option for OLTP or OLAP.
-   It is an RDBMS-like database, but is not 100% RDBMS ( support for ANSI SQL standards)
-   database which scales horizontally

<https://en.wikipedia.org/wiki/MapReduce>


<a id="org717ba57"></a>

### Apache Hive

Hive uses Hadoop as its storage engine and only runs on HDFS.

-   for providing data query and analysis
-   gives an SQL-like interface (HiveQL) to query data stored in various databases and file systems that integrate with
    Hadoop. Traditional SQL queries must be implemented in the MapReduce Java API to execute SQL applications and
    queries over distributed data. it reduces the complexity of MapReduce frameworks

Hive can also be integrated with data streaming tools such as Spark, Kafka and Flume.

-   is not an option for unstructured data.
-   is not an ideal for OLTP or OLAP kinds of operations.


<a id="org583761d"></a>

## tools

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


<a id="org59e20d7"></a>

## кодекс этики

<https://ac.gov.ru/projects/project/kodeks-etiki-ispolzovania-dannyh-5>

«Яндекс», Mail.ru Group, Сбербанк, Газпромбанк, «МегаФон», «Ростелеком» и другие компании


<a id="orgd8b8c4b"></a>

## MapReduce

programming model - for processing and generating big data sets with a parallel, distributed algorithm on a
 cluster.

-   orchestrates the processing by **marshalling** the distributed servers, running the various tasks in parallel,
    managing all communications and data transfers between the various parts of the system, and providing for
    **redundancy** and **fault tolerance**.

procedures:

-   **Map:** filtering and sorting
-   **Reduce:** summary operation

cons:

-   forces a particular linear dataflow structure on distributed programs: MapReduce programs read input data
    from disk, map a function across the data, reduce the results of the map, and store reduction results on disk.


<a id="org7bb54e8"></a>

## news

По оценке АБД, российский рынок больших данных на данный момент составляет 10–30 млрд рублей в год, а к 2024 году он достигнет 300 млрд рублей.


<a id="org0516d05"></a>

# Аналитическая платформа - система принятия решений

-   numerical-analysis software <https://en.wikipedia.org/wiki/List_of_numerical-analysis_software>
-   <https://en.wikipedia.org/wiki/Automated_machine_learning>
-   <https://en.wikipedia.org/wiki/Business_intelligence>

Aналитическая платформа Loginom

-   хранилище данных
-   стетистический анализ
-   репозиторий моделей

Weka (machine learning)

-   data mining tasks, more specifically, data preprocessing, clustering, classification, regression,
    visualization, and feature selection
-   access to SQL databases using Java Database Connectivity
-   provides access to deep learning with Deeplearning4j


<a id="org7d276d8"></a>

# система управления активами (ITAM)

ИТ-активы — это и оборудование, и лицензии на программное обеспечение.

-   собрать все сведения об ИТ-ресурсах в одном месте, установить связи между активами, услугами, договорами, задачами


<a id="orgbd53038"></a>

# Digital Marketing metrics

-   CLV - customer lifetime value - is a prognostication of the net profit contributed to the whole future
    relationship with a customer.
-   ARPU - Average revenue per account/user/customer - total revenue divided by the number of subscribers. per
    unit time, typically per year or month.
-   ARPDAU or ARPAU (Average Revenue Per Daily Active User) - how much revenue is generated from daily active users over
    a 24-hour period. To see how some changes or events are affecting your revenue.
-   Conversion Rate (CR) - Number of conversions / Total number of visitors × 100%
-   Click-Through Rate (CTR) - Number of clicks / Number of impressions × 100%
-   Cost per Click (CPC) -  = Ad costs / Number of clicks
-   Cost per Action (CPA) - = number of actions completed / Ad costs . see "CPA case study"
-   Cost per Lead (CPL) - Ad costs / Number of acquired leads - you pay for the contact information of a person
    potentially interested in your offer.
-   Customer Acquisition Cost (CAC) - is the cost of convincing someone to buy. = cost + cost + cost
-   Abandon Rate - calls/carts = Abandoned calls / Total number of inbound calls × 100%
-   Return on Ad Spend (ROAS) - measuring ad performance = Revenue derived from the ad / Cost of the ad
-   Return on Investment (ROI, or ROMI for marketing) = ((Gain from investment — Cost of investment) / Cost of
    investment )× 100%
    -   for almost every process
-   Time to Payback CAC - how long it’ll take to earn back marketing costs spent on acquiring a customer
    -   = Customer acquisition cost (CAC) / (Average revenue per account (ARPA) × Gross profit)
    -   Gross Profit = Revenue — Cost of goods/services sold
-   Monthly Recurring Revenue (MRR)
    -   = Total fees paid by customers monthly
    -   or = ARPA per month × Total number of customers per month
-   Churn Rate - percentage of customers or subscribers who discontinue their subscriptions during a given
    period.
    -   Customer Churn - percentage of customers that stopped using your company's product
    -   = number of churned customers in the given period / total number of customers at the start of the perion
-   Revenue Churn (MRR) - monthly recurring revenue = (Churned MRR in the period / MRR at the start of the
    period) × 100%
-   Share of Market (SOM) - how big your share of the market is. = (Company sales / Sales in the entire market)
    × 100%
-   Share of Wallet (SOW) - percentage of dollars in customers’ pockets that they spend on you
    -   = (Total cost of purchases a customer has made from your company / Total cost of purchases the customer
        has made in the same product or service class) × 100%
-   Customer Retention Rate (CRR) or reversed customer churn - percentage of customers retained over a period of
    time. Though a 100% customer retention rate is idea.
    -   = (Total customers at end of period - new customers acquired) / customers at begining of period \* 100
    -   = (Number of customers at the start of the period - number of customers acquired during the period) /
        number of customers at the end of the period \* 100 - ?????7
-   DAU/MAU ratio (stickiness) - daily active users to monthly active users ratio, measures the number of days
    per month that users engage with an application. For example, if the DAU/MAU ratio is 75%, users are
    engaging with an app 75% of the time or 22.5 days per month, on average. A 100% DAU/MAU score means users
    are visiting an app every day.
    -   active user is a customer that completes one or more actions on an app
    -   Average DAU - Sum of each day's unique users / Number of days in the month
    -   Average MAU = Sum of each month's unique users / 12
-   Cohort retention -
-   Customer acquisition cost - how much money, resources, time and effort it takes to attract prospects and turn them into paying customers
-   Customer churn rate - rate at which customers cease subscribing to a service or supporting a business
-   Conversion rate - rate at which a user who is visiting a website becomes a paying customer by making a purchase


<a id="org78a3402"></a>

## terms

-   marketing/purchase/customer/sales/conversion funnel - consumer-focused: Awareness -> Interest -> Desire ->
    Action -> Loyalty


<a id="org29801f1"></a>

# Data Strategy

outlines the people, processes, and technology your organization needs to achieve its business goals

-   How can you use data to support your business goals and solve business problems?
-   Will the data sourced provide insights that will allow you to better understand your customers and their needs?
-   What processes are required to ensure the data is of high quality?
-   What technology will enable the storage, sharing, and analysis of data?


<a id="org4be9c10"></a>

# Data Management Plan

eliminating data silos and reducing data quality issues

-   to Define how to manage, secure, and use your data throughout its full lifecycle
-   Enable business users to have access to meaningful data

No matter the type or size of your company, Data helps you innovate digitally while mitigating risks.


<a id="org83f1186"></a>

# Data masking

<https://codeberg.org/h5hackathon>


<a id="org0d5a432"></a>

## Terms:

-   Masking
-   Process Private Data
-   Обезличивание данных
-   discovering - поиск приватных данных в маскированных, определение типа путем сопоставления с частью открытой базы
-   стратегии - таблица: приватный тип -> способ для правдоподобного маскирования
-   seed-таблица - хэш таблица замены.
-   Personally Identifiable Information (PII)

Sensitive data identification

-   **Column-level profiling:** REGEX expressions to scan the column names (metadata) of the selected data sources
-   **data-level profiling:** REGEX expressions, but to scan the actual data instead of the metadata.

Securing

-   masking (anonymization) - replacing values with realistic yet fictitious data
-   tokenization (pseudonymization) - reversible algorithms so that the data can be returned to its original
    state. form of encryption.


<a id="orga22bcd0"></a>

## For

Для чего? PCI DSS требования Центробанка и законы о персональных данных. Отдел разработки не может просто взять персональные данные (ПДн) и проверить на них новую фичу, обучить Machine Learning-модель. Этот момент регулируют законы и отраслевые стандарты.

152-ФЗ, персональные данные — это любая информация, которая относится к физическому лицу (или юридическому), в том числе его ФИО, дата и место рождения, семейное положение, образование, профессия и другая информация.

Две цели: скрыть данные и пройти проверку корректности данных


<a id="org3c23d87"></a>

## Проблемы:

-   если есть хэш таблица замены, то можно это все взломать
-   генерация правдоподобной замены для обучения AI

Зарекомендовал себя ETL-процесс, который считывает данные с базы в продакшн, на лету модифицирует значения
 полей с критичной информацией и записывает результат в базу-приёмник.

-   seed-таблица <https://habr.com/ru/companies/T1Holding/articles/490740/>
-   поиску ПД <https://habr.com/ru/companies/T1Holding/articles/706870/>


<a id="org0f010ef"></a>

## Варианты решения

Варианты решения: ПОИСК ПРИВАТНЫХ ДАННЫ:

-   разметка резулярными выражениями + ручная доразметка. Поиск сущностей, векторизация и классификация.

Варианты решения: ГЕНЕРАЦИЯ ПРАВДОПОДЫБНЫХ ДАННЫХ:

-   <https://en.wikipedia.org/wiki/Format-preserving_encryption> + с понижением размерности алфавита и
    постобработкой. Берем используемый алфавит и вычисляем хеш-суммы всех его символов. Для этого используем
    AES-hash с неким ключом. Полученные хеш-суммы используем для сортировки символов и получения таблицы
    подстановки. удалением из «целевого» алфавита части символов. Тогда шифрование становится шифрованием с
    потерей данных — то есть необратимым. добавили beautify-функцию, которая делает слова более приятными для
    слуха.


<a id="orge216b70"></a>

## Open source tools


<a id="org21ea928"></a>

### Delphix - not open

the main data masking engine and many of its connectors are proprietary and not open source.

Data Masking Tool <https://www.delphix.com/>

-   pull this data from production, scrub it, and mask some of the confidential components of it, and easily
    deploy that through our ecosystem

Multicloud data automation, compliance, and governance for the application lifecycle.

Data sources apps:

-   SaaS/PaaS/IaaS
-   On-Prem/Private Cloud
-   Legacy/Mainframe

Data target environments:

-   Dev/Test
-   Production support
-   Analytics

Data privacy laws:

-   GLBA - the Gramm-Leach-Bliley Act
-   PCI DSS
-   GDPR - General Data Protection Regulation
-   HIPAA
-   LGPD
-   CCPA
-   152-ФЗ, персональные данные


<a id="orgd3b2880"></a>

### Fogger - PHP

[<https://github.com/TheSoftwareHouse/fogger>]


<a id="orgc72f64c"></a>

### Masked-AI -  Python SDK + CLi

-   [<https://github.com/cado-security/masked-ai>]
-   [<https://www.cadosecurity.com/blog/introducing-masked-ai-an-open-source-library-that-enables-the-usage-of-llm-apis-more-securely>]

features:

-   masking - persons names, credit card numbers, email addresses, phone numbers, web links and IP addresses,
    using either Regex or the NLTK library.
-   reversing - Storing a lookup table for the placeholders  -> data, to be used later to reconstruct the response
-   allow to send and receive request to OpenAI
-   easely extension by regex

requirements:

-   nltk==3.8.1
-   numpy==1.24.2


<a id="org0cc7e68"></a>

### TODO Percona Server


<a id="orga382e75"></a>

### RAGFlow

<https://github.com/infiniflow/ragflow>

crazy dependencies


<a id="org0af7915"></a>

### Verba

**"weaviate-client==3.23.1",**
"python-dotenv==1.0.0",
**"openai==0.27.9",**
"wasabi==1.1.2",
"fastapi==0.102.0",
"uvicorn[standard]==0.29.0",
"click==8.1.7",
"asyncio==3.4.3",
"tiktoken==0.6.0",
"requests==2.31.0",
"pypdf==4.2.0",
"python-docx==1.1.2",

<https://github.com/weaviate/Verba>
<https://github.com/openai/openai-python>


<a id="org2a98bdd"></a>

## LLMs

<https://huggingface.co/iiiorg/piiranha-v1-detect-personal-information>


<a id="org06d33de"></a>

# Distributed Database System or Distributed DBMS

Types: Homogeneous/ Heterogeneous Database - OS, DBMS and data structures all the same or different

Types: Replication/Fragmentation -

-   Horizontal fragmentation - Splitting by rows
-   Vertical fragmentation - Splitting by columns

Partially Replicated (caching) - distribution of the tables is done in accordance to the frequency of access.

Mixed Distribution - a combination of fragmentation and partial replications.

Architectures:

-   client-server
-   Peer-to-peer - each to all other
-   Federated - integrated through a middleware layer providing interface (master nodes).

Distribution Transparency - details hidden from the users.

-   Location transparency - user can query on any table(s) or fragment(s) of a table as if they were stored locally
-   Fragmentation transparency -  enables users to query upon any table as if it were unfragmented
-   Replication transparency - to query upon a table as if only a single copy of the table exists.

styles of table distribution:

-   **Hash Distribution or Distributed Key:** the values of the fields used to determine how data is distributed.
    -   if 80% of records have the same value, 80% values being stored in the same node.
-   **Round-Robin Distribution:** .
    -   identical values may get stored on different nodes - may slow down some queries.


<a id="orgc613e63"></a>

## Concurrency Control

-   Distributed Two-phase Locking Algorithm
    -   Centralized two-phase locking
    -   Primary copy two-phase locking
    -   Distributed two-phase locking
-   Distributed Timestamp Concurrency Control
-   Conflict Graphs
-   Distributed Optimistic Concurrency Control Algorithm


<a id="orgf64a982"></a>

## links

<https://www.tutorialspoint.com/distributed_dbms/distributed_dbms_quick_guide.htm>


<a id="orgc70cfcf"></a>

# Analytics Engineering, DataOps - DBT tool

-   <https://handbook.gitlab.com/handbook/enterprise-data/platform/dbt-guide/>

**dbt** is the T in ELT. For:

-   Redshift, Snowflake, and BigQuery - popular Data Warehouse databases that scallable and performant.
    -   So data transformation use cases with them can be much more effectively handled in-database.

How: dbt code (SQL and Jinja), compiled it to SQL, and then run against your database.


<a id="orgea56566"></a>

## features

automated testing, documentation, extensibility, CI/CD, data governance


<a id="orgd7a9d5d"></a>

## terms

-   model: a data transformation, expressed in a single SELECT statement.
-   materialization: the strategy by which a data model is built in the warehouse.


<a id="org8e7846a"></a>

# SQLite

License: public domain


<a id="orgc619271"></a>

## features

-   json
-   R-Tree structure for geospatial systems.
-   CSV virtual table - directly read and query RFC 4180 formatted files.
-   FTS5 table -  full-text search (FTS5 Extension)
-   Partial Indexes


<a id="orge35e148"></a>

# Redis vs MongoDB

-   MongoDB: scalability, reliability, and handling large volumes of data
    -   JSON-like documents (BSON - Binary JSON) in collections.
    -   multi-document atomic, consistent, isolated, and durable (ACID) transactions, ensuring data consistency
        across multiple operations
    -   MongoDB Query Language (MQL).
-   Redis: performance, especially for real-time data processing and caching scenarios.
    -   key-value store model
    -   single atomic operations. Rollbacks must be managed in the application code.
    -   commands for querying data


<a id="orgb67b835"></a>

# YDB

обладает доступностью 99,99%, способна обрабатывать более 7 млн транзакций в секунду и позволяет создавать как
 транзакционные приложения, так и корпоративные хранилища данных для аналитических сценариев.


<a id="org6a0b3bb"></a>

## provide

-   Apache License 2.0
-   Strict consistency which can be relaxed to increase performance.
-   Support for queries written in YQL (an SQL dialect for working with big data).
-   Automatic data replication.
-   High availability with automatic failover in case a server, rack, or availability zone goes offline.
-   Automatic data partitioning as data or load grows.
-   relational data model and manages row-oriented and column-oriented tables with a predefined schema.
-   YDB natively supports different processing options, such as OLTP and OLAP
-   Client applications interact with YDB based on gRPC that has an open specification.


<a id="org47a8d14"></a>

## cases

-   When using NoSQL systems, if strong data consistency is required.
-   When using NoSQL systems, if you need to make transactional updates to data stored in different rows of one or more tables.
-   In systems that need to process and store large amounts of data and allow for virtually unlimited horizontal
    scalability (using industrial clusters of 5000+ nodes, processing millions of RPS, and storing petabytes of
    data).
-   In low-load systems, when supporting a separate DB instance would be a waste of money (consider using YDB in
    serverless mode instead).
-   In systems with unpredictable or seasonally fluctuating load (you can add/reduce computing resources on
    request and/or in serverless mode).
-   In high-load systems that shard load across relational DB instances.
-   When developing a new product with no reliable load forecast or with an expected high load beyond the
    capabilities of conventional relational databases.
-   In projects where the simultaneous handling of transactional and analytical workloads is required.


<a id="org940476c"></a>

## links

<https://github.com/ydb-platform>


<a id="org792a786"></a>

# Business analysis

цели:

-   снизить затраты - выявить причины и предложить способы
-   найти решение проблемы - найти причину, решения, выбрать лучшее
-   вовремя закончить проект - спланировать, сформулировать ресурсы рисик зависимости, контролировать выполнение и соответствие тредованиям
-   повысить эффективность - проанализировать текущие бизнес процессы, выявить узкие мести и решения
-   найти новые возможности для роста - изучить внешнюю и внутреннюю среду, выявить сильные и слабые стороны, определить потребности рынка, предложить новые продукты.

виды

-   анализ предприятия
-   анализ области или нарпавления
-   анализ бизнес процесса или правила
-   анализ требований

принципы

-   **целевая ориентированность:** конкретное намерение, измеримое, реалистичное и сответствующее стратегии компании
-   **системный подход:** аналитик должен рассмотривать все факторы как систему учитывая все связи.
-   **критическое мышление:** основываться только на фактах, а не на мнениях. проверять достоверность и актуальность источников. сравнивать разные решения
-   **коммуникабельность:** четко и понятно излагать свои мысли и предложения.
-   **гибкость:** адаптироваться к изменениям бизнес планов

методы

-   **моделирование:** .
-   **аналитическая отчетность:** показать основные показатели, тенденции или закономерности в бизнесе.
-   **Оперативная аналитическая обработка данных (OLAP):** использовать в работе
-   **Интеллектуальный анализ данных (Data Mining):** чтобы прогнозировать будущее поведение или результаты,
    определять аномалии или отклонения в данных.

шаги

1.  Определение проблемы или потребности.
2.  Сбор данных и информации.
3.  Анализ данных и информации.
4.  Предложение решений или рекомендаций.
5.  Объявление результатов анализа.
6.  Оценка и проверка правильности решения.


<a id="orgae0b564"></a>

# tmp


<a id="orgb18244a"></a>

## resume BI

Technology:
PostgreSQL, Pentaho data integration, Pentaho report designer, apachesuperset, MS power BI.

автоматизация ETL процедур посредством Apache Airflow
разработка и внедрение дашбордов с использованием ApacheSuperset

Корпоративноехранилищеданных(PostgreSQL, Pentaho BI, ApacheSuperset)

Рабочий процесс: Airflow Apache, Superset, Doсker

Технологии: PostgreSQL,PentahoDI, HP Vertica

Генерация гипотез о поведении пользователей и факторах влияющих на ключевые метрики (LTV, ARPU, ARPAU, Retention, ROMI и т.п.);

Разработка процессов извлечения, обработки и хранения данных (ETL) с использованием Python и Ruby скриптов. Оптимизация запросов к БД (Redshift, Vertica) и проектирование структуры хранения данных из разных источников (логи сервера, события из web и мобильных приложений, данные из production базы).

Пилотное внедрениехранилищданныхна основе Clickhouse и Exasol.

ETL Инструментарий: Oracle 11gR2, Informatica PowerCenter 9.x, Perl, Python 2.x, AIX shell,PentahoData Integration.

Внедрение аналитической системы прототипированием, перевод и рефакторинг всей имевшейся производственной отчетности за 3 мес (Oracle BI +PentahoDI + MS)

• разработка отчётов для одного из крупнейших интеграторов в РФ (Pentaho, Saiku);

Ашан: Используемые инструменты: Microstrategy, Oracle PL\SQL, SQL, Sparx EA, Talend Studio

(vertica, clickhouse, exasol, python, qlikview).

Работа с : Greenplum, Aginity

<https://habr.com/ru/post/444758/>

<https://arenadata.tech/products/aaw/>


<a id="orgdee84bb"></a>

## my review

**Data warehouse:**

-   <span class="underline">Greenplum BD</span>

designed to manage large-scale analytic data warehouses and business intelligence workloads.

-   на основе PostgreSQL
-   massively parallel processing (MPP)
-   PostgreSQL interface
-   performs best with a denormalized schema design
-   Greenplum provides both row-oriented and **column-oriented** table types
-   logically partition table data, either by range or by a list of values - each partition of a single table
    can utilize its own storage method (row vs. column orientation)

-   <span class="underline">MariaBD</span>

for a wide variety of use cases as replacement for MySQL

-   single server or multi-server
-   columnar storage optimized for interactive
-   ad hoc analytics
-   scaling out as needed

Bad:  Vertica CE (limited to 1TB of data and 3 database nodes), Clickhouse (сырая, недокум-ные Upd/Del),

**Report system:**

-   <span class="underline">Power BI Desktop</span>

один из лучших, отчет сохраняется в виде файла и открывается в том виде как был создан.
-cons:

-   Windows на одном рабочем месте, нужно предварительно установить и проверить соединение с базой

-   <span class="underline">Metabase</span>

можно развернуть в докере и дать доступ через веб.
-cons: мало средств визуализации, неудобный фильтр

-   <span class="underline">Microstrategy</span> Desktop Free - аналог Power BI, требует изучение

-   <span class="underline">Saiku Analytics</span> - web c ограничениями <https://www.meteorite.bi/saiku-product-comparison>

Bad: Apahce <span class="underline">SuperSet</span> (нельзя изменить названия полей),
<span class="underline">Pentaho</span> BI Suite (много ограничений по функционалу, поменялась компания 2017. 2017 stable),
<span class="underline">Vertica</span> CE (limited to 1TB of data and 3 database nodes),
<span class="underline">Exasol</span> CE(Can store up to 200 GB or raw data, single machine)

Отметил ELT интсрументы Apache Airflow и Talend Open Studio


<a id="org0508d2b"></a>

## my review2

Qlik Sense Desktop (Windows) аналог Power BI

-   limits:
-   Section Access is not supported - When loading a QlikView App with Section Access an error message will be displayed.
-   Hidden Script is not supported - Saving an App with hidden script will NOT save the hidden script - Data of hidden script will be lost in the next reload.

Tableau Public (Desktop Windows, mac)
 cons:

-   Distribution: Cloud (you can not save Tableau Public workbooks locally)
-   Tableau Public has a limit of 10 million rows of data that is allowed in any single connection
-   Account Space: Each account holder will be able to save up to 10 gigabytes (GB) of content to Tableau Public

IBM Cognos платный инструмент с многообещающими особенностями. Лицензированием специалистов.


<a id="org76a7689"></a>

# links

<https://dataschool.com/data-governance/>

