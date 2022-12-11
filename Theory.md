
# Table of Contents

1.  [OOP](#org532b85a)
2.  [Data Oriented (DO) programming](#org895171e)
    1.  [tendency of OO systems to be complex.](#orgc011848)
    2.  [universal data collections](#orgd965e43)
    3.  [DO vs FP](#org20ed700)
3.  [New Language learning](#org3298199)
4.  [Patterns](#orge503b7b)
    1.  [Architectural Patterns](#org80692be)
        1.  [(MVC) Model-View-Controller](#org1ae3911)
        2.  [(MVVM) Model-View-ViewModel](#org5532819)
    2.  [Шаблоны проектирования ООП Design Patterns](#orgbe6bdd5)
        1.  [Creational](#org0057484)
        2.  [Structural](#org96d11d2)
        3.  [Behavioural](#org34b7765)
        4.  [Concurrency](#org6a0a462)
5.  [paradigms](#org2465528)
    1.  [Programming paradigms](#org453ad62)
        1.  [imperative [ɪmˈpɛrətɪv]](#orge118a98)
        2.  [declarative [dɪˈklærətɪv]](#org94016d9)
        3.  [Structured](#org82848d2)
    2.  [Stream processing or dataflow programming or event stream processing or reactive programming](#orgbed2f12)
6.  [data structures](#org61eb4cd)
7.  [Architectural style (design ideom)](#orgf3e1d09)
    1.  [(REST) Representational State Transfer](#org203bf31)
        1.  [HTTP ](#org6dc3ddc)
        2.  [guidelines](#orgdf15d65)
        3.  [CRUD methods:](#org70a3694)
        4.  [Architectural constrains:](#org83fb108)
        5.  [Advantages:](#org9e235b3)
        6.  [Error handeling](#orge1f09b8)
        7.  [Design](#org682b28c)
    2.  [(SOA) Service-oriented architecture [ˈɔːrɪənt] [ˈɑːkɪˌtɛktʃə]](#org8156cc0)
        1.  [Principles](#org1231564)
        2.  [Roles](#org6fe8fdc)
8.  [Design principles](#org7d2b665)
    1.  [SOLID](#orga4513be)
        1.  [examples](#orgbbf9b1a)
    2.  [Inversion of Control (IoC) Инверсия управления](#org879c9c9)
9.  [Methodologies and frameworks](#org4bfb64c)
    1.  [Twelve-Factor App methodology](#org911180f)
10. [areas, a patterns, des pattern](#org82d51c6)
11. [Software development](#org40203a1)
    1.  [Ontology engineering](#org244085e)
    2.  [Formal representation or visualize the design](#org5548c8d)
        1.  [Unified Modeling Language (UML)](#orga9fa9da)
    3.  [Practices](#org20c4ef1)
        1.  [(TDD) Test-driven development](#orgc566c94)
        2.  [(BDD) Behavior-driven development](#org2b641d8)
        3.  [(DDD) Domain-driven design](#orga8b91d1)
    4.  [Software Testing](#org45b4f25)
        1.  [web-app testing](#orgf1f4f57)
    5.  [Technique tɛkˈniːk](#orgaa25fab)
    6.  [Microservices](#orge3fc34e)
    7.  [principle](#org4d2f229)
        1.  [Extensibility](#org23efa58)
    8.  [Continuous integration (CI) & Continuous delivery (CD) & Continuous deployment](#orgc9ef2e2)
    9.  [DevOps](#org716f44d)
    10. [Infrastructure-as-Code](#org59229ab)
12. [deploy](#orgdf6bb29)
13. [Management accounting](#org9f492fe)
    1.  [Total cost of ownership (TCO), TCO analysis](#org40efa9b)
14. [information theory](#org4007abf)
    1.  [Entropy (information theory) or Shannon entropy](#org7e67193)
    2.  [Redundancy - Избыточность информации](#orgadce6bc)
    3.  [Homogeneity and heterogeneity](#org599a40b)
15. [file formats YAML](#org474613e)
    1.  [YAML](#org65e8316)
16. [ORM](#orgfee6d24)
    1.  [object-relational impedance mismatch (imˈpēdns)](#orgbe48c37)
17. [Database](#org647812d)
    1.  [Standards](#org361dca9)
    2.  [SQL](#org6a3f6d0)
        1.  [Задача](#orgd0daa29)
        2.  [JOIN объединение столбцов](#org8dd99f3)
        3.  [UNION объединение строк](#org7f295a9)
        4.  [heaving  group distinct](#orgeaa570c)
        5.  [Autoincrement](#orgc250620)
        6.  [CTE](#org997feb7)
        7.  [Оконные функции PostgreSQL](#orgc3ea537)
        8.  [grouping set](#orgd55d9ec)
        9.  [json](#org7d74400)
    3.  [Oracle](#org2444abc)
    4.  [PL/SQL (Procedural Language for SQL)](#org729a652)
        1.  [feauters](#org4d038d4)
        2.  [varibles](#orgb24ea01)
        3.  [Cursor](#org897a718)
        4.  [Record - Структура](#org37b43e2)
        5.  [Package](#org8650299)
        6.  [Procedures [prəˈsiːʤə] and functions  [fʌŋkʃnz]](#orgbeaee3b)
        7.  [Triggers](#org1d49473)
        8.  [Collections](#orgf0c322e)
        9.  [Exceptions](#org5de4877)
        10. [Transaction](#org1848d7f)
        11. [Shema - структура для БД](#orgf5e6cc3)
        12. [program units:](#org2dae498)
        13. [Object oriented](#org264ec0e)
        14. [SQL Pseudocolumns](#org30c8803)
    5.  [OLTP vs OLAP](#org72c1aad)
    6.  [ACID](#org2b94c15)
    7.  [уровни изоляции транзакций](#org72625c0)
    8.  [in-memory databases](#orgf8af888)
    9.  [Data medelling](#orgc8cc3fa)
    10. [Embedded databases](#org488e3c9)
        1.  [SQLight - not java based](#orgdf1f82f)
    11. [PostgreSQL](#orgcbe6f2e)
18. [Rare terms](#org6b54de5)
19. [network](#orgab7ef23)
    1.  [proxy types](#org4955215)
    2.  [ipv4](#org53f3971)
    3.  [ipv6](#org821b54c)
20. [software characteristics](#org2ce97be)
21. [тимлид](#org47a8ff7)
22. [подбор персонала](#org1749833)
23. [ораторство](#orgc6e58e4)
    1.  [my](#org562e650)
    2.  [Пётр Безруков — тренер по ораторскому искусству](#orga7d3751)
        1.  [sell](#org8aa9fc1)
    3.  [wikihow](#org391f359)
24. [управление проектом - мэнеджмент - Project Management](#org81a47bc)
    1.  [цели бизнеса](#org5b43f17)
    2.  [как диагностировать проблему](#org49d628d)
    3.  [этапы проекта](#org3b03928)
    4.  [структура проекта](#org0a0f47b)
    5.  [инструменты управления](#orgdd0db94)
    6.  [link](#orga1f61c7)
25. [IT audit](#org56df2f3)
    1.  [COSO internal control framework](#org65acc6c)
        1.  [history](#orga32bc74)
26. [agile and extreme development methodologies](#org0cc4a6f)
27. [news theory](#orgd508847)
28. [Деловой этикет](#org312ee8a)
29. [что я понял](#orgd483693)
    1.  [mya](#org38eb1f0)
    2.  [Вайна с шаповаловым](#org45b2e08)
    3.  [Моя практика общения](#org38de693)
    4.  [переговорщик](#org1ed6426)
    5.  [нейролингвистическое программирование](#org9a98f4c)
    6.  [методом Блеза Паскаля](#orgc527a3e)
    7.  [Сократический диалог](#org218a02c)
    8.  [трудные людли](#orga52fcba)
    9.  [техника контейнирования](#org2d278fb)
    10. [развитие харизмы](#org0ddc377)
    11. [wiki How to Be a Leader](#orgc64c676)
    12. [узнать насколько специалист хороший](#orgf82d5f7)
    13. [soft skills](#orgb4cffe4)
    14. [personal brand Личный Бренд](#org23985c3)
    15. [ИТ-евангелист Technology evangelist](#orge655ec0)

-**- mode: Org; fill-column: 110; coding: utf-8; -**-

модульный дезайт vs лоскутная автоматизация  <https://bstudy.net/654982/informatika/arhitektura_predpriyatiya>\_
java
<http://harmful.cat-v.org/software/java>

Такое ощущение, что все парадигмы созданы чтобы реже делать рефакторинг. Если его вообще не делать, то рано
или позна это всеравно приведет к окостенению.

<https://events.cnews.ru/materials>


<a id="org532b85a"></a>

# OOP

1.  Все - объекты
2.  Программа - объекты обмениваются сообщениями
3.  Объект владеет блоком памяти состоящим из других объектов
4.  Каждый объект является экземпляром класса
5.  Объекты одного типа могу получать одни и те же сообщения

---

-   **Encapsulation:** [ɪnˈkæpsjʊˌleɪt] скрытие кода и данных. internal data - private
-   **Polymorphism:** [ˌpɒlɪˈmɔːfɪzəm] Один интерфейс к объектам различных типов. Subtyping - Полиморфизм
    подтипов - функция работает с множеством подтипов(inheritance). This means abstract
    entities are implemented in multiple ways.
-   **Inheritance:** [ɪnˈhɛrɪtəns] This refers to the hierarchical arrangement of implementation fragments.

Declaration, implementation, extension[ɪkˈstɛnʃən], instantiation[ɪnˌstænʃɪˈeɪʃən], invocation.

parent [ˈpɛərənt]

Почему OOP лучше чем функциональное программирование? Потому что выше уровень абстракции и абстракция ближе к
problem space.

-   LISP "all problems are ultimately lists"
-   APL "all problems are algorithmics"
-   Prolog "all problems are цепь логического доказательства"

Некотоыре авторы считают, что мультипарадигменное программирование есть лучшая абстрация.


<a id="org895171e"></a>

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


<a id="orgc011848"></a>

## tendency of OO systems to be complex.

<https://blog.klipse.tech/databook/2020/09/25/data-book-chap1-part1.html>

-   **Code and data are mixed:** Classes tend to be involved in many relations
-   **Objects are mutable:** Extra thinking when reading code that involves state mutation. Explicit
    synchronization on multi-threaded environments
-   **Data is locked in objects:** Data serialization is a nightmare
-   **Code is locked in classes:** Class hierarchies are complex

alleviate this complexity in OO by providing a simpler interface to the developers (e.g. Spring and Jackson in
Java)


<a id="orgd965e43"></a>

## universal data collections

Customers, products, orders etc…​ are all represented as dictionaries with keys and values. The difference
between them is that the keys have different names and the values are not of the same type. For instance, we
can write a function that validates the email address field of a collection and pass to this function a
customer collection and the name of the field that contains the email address.

We could also change the name of a field in a collection (e.g. renaming email to emailAddress) in a generic
way.


<a id="org20ed700"></a>

## DO vs FP

OO:

-   Write code as methods inside classes - FP rebellion against (e.g. Haskell, Ocaml)
-   Encapsulate data as members inside classes - DO rebellion against

    Most programming languages that embrace DO also embrace FP (e.g. Clojure, JavaScript)


<a id="org3298199"></a>

# New Language learning

-   function overloading exist or not?
-   keywords
-   data types - by reference or by value


<a id="orge503b7b"></a>

# Patterns

-   **Pattern:** common solution to a reoccurring problem in design.
-   **Anti-pattern:** bad solution to a problem.
-   **Architectural Pattern:** is something which solves our problem at sub system level or in short module
    level. It deals with the problem related to architecture of a project. It tells us how we can divide our
    systems and especially why. We make Class libraries, Components, Web services to solve the problem.


<a id="org80692be"></a>

## Architectural Patterns

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


<a id="org1ae3911"></a>

### (MVC) Model-View-Controller

is an architectural pattern which let us develop an application having loosely coupling between
input logic, business logic and UI logic.

дает:

-   code reuse
-   разделение разработки между разными специалистами по разным частям

-   **Controller:** receives and dispatches the request in short it handles the user interaction and input
    logic. accepts input and converts it to commands for the Model or View.
-   **view:** is considered as dumb and is an output representation of model data.
-   **Model:** Business rules, logic and data.


<a id="org5532819"></a>

### (MVVM) Model-View-ViewModel

decouples the controller to minimize code

View <-bind->ViewModel <->Model

-   Model
-   View - displays a representation of the **model** and receives the user's interaction with the view (clicks,
    keyboard, gestures, etc.), and it forwards the handling of these to the **view model** via the data **binding**
    (properties, event callbacks, etc.) that is defined to link the view and view model.
-   **View model** - view model has been described as a state of the data in the model. **View** directly binds to
    properties on the **view model** to send and receive updates.  **view model** does not has a referebce to
    **View**.
-   Binder - automates communication between the view and its bound properties in the view model


<a id="orgbe6bdd5"></a>

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


<a id="org0057484"></a>

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


<a id="org96d11d2"></a>

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


<a id="org34b7765"></a>

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


<a id="org6a0a462"></a>

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

-   **Guarded suspension [səˈspɛnʃən] (or <./java> in java):** both a lock to be acquired and a precondition to be satisfied.


<a id="org2465528"></a>

# paradigms

-   Distinct set of concepts or thought patterns, including theories, research methods, postulates, and standards.
-   Way to classify programming languages based on their features.

-   **Gradual typing:** optional typing is checked at compile-time (which is static typing) and some expressions may be
    left untyped and eventual type errors are reported at run-time (which is dynamic typing). TypeScript.
-   **Latent typing or duck typing:** or structural typing. - there is no type, only subset of methods.
-   **Reactive programming:** declarative, concerned with data streams and the propagation of change. Imerative :
    a=b+c - once. declarative : a=b+c - a will be updated when b or c changed.


<a id="org453ad62"></a>

## Programming paradigms

[ˈprəʊɡræmɪŋ] [ˈpærəˌdaɪm] am [ˈparəˌdīm]


<a id="orge118a98"></a>

### imperative [ɪmˈpɛrətɪv]

statements that change state

-   Procedural (early Perl, JavaScript)
-   Object-oriented
-


<a id="org94016d9"></a>

### declarative [dɪˈklærətɪv]

expresses the logic of a computation without describing its control flow. [kənˈtrəʊl] [fləʊ] - what the
program should accomplish without specifying how the program should achieve the result.

1.  functional

    -   the evaluation of mathematical functions and avoids changing-state and mutable data.
    -   no side effect
    -   Many functional programming languages can be viewed as elaborations on the **lambda calculus**.
    -   Lisp, Haskell, F#, Erlang

2.  logic

    -   is based on relations (formal logic) - **Prolog**


<a id="org82848d2"></a>

### Structured

-   if then else
-   **non-structured** - unstructured jumps to labels or instruction addresses. The lines are usually

numbered or may have labels: this allows the flow of execution to jump to any line in the program. (**ASM**)


<a id="orgbed2f12"></a>

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


<a id="org61eb4cd"></a>

# data structures

<https://github.com/jwasham/coding-interview-university#tries>

1.  Built-in Data Type
2.  Derived Data Type

-   Arrays
-   Linked Lists
-   Stack
-   Queue
-   Hash table
-   Tries - digital tree or prefix tree
-   Treap -  randomized binary search tree


<a id="orgf3e1d09"></a>

# Architectural style (design ideom)

-   Pipe
-   Filter
-   Layered
-   Push Based


<a id="org203bf31"></a>

## (REST) Representational State Transfer

-   RESTful web services
-   stateless operations! HTTP common with URI = web based.

    REST is an service-based architectural style, while SOAP is a protocol. No standard. But make use of standards,
     such as HTTP, URI, JSON, and XML.

    REST **endpoint** is a resource located on a server. has URL. Must return HTTP response code:
    <https://en.wikipedia.org/wiki/List_of_HTTP_status_codes>

    Both the request and response may or may not contain a **payload** (JSON or XML) wrapped in the request response
    body.

    **Idempotence** means that applying an operation once or applying it multiple times has the same
    effect. **POST** - non-idempotent [ˈaɪdəmˌpəʊtənt]

    **nullipotent** no side effect on requested data.


<a id="org6dc3ddc"></a>

### HTTP <a id="orgb654d97"></a>

-   stateless
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


<a id="orgdf15d65"></a>

### guidelines

Unlike SOAP-based web services, which have a standard vocabulary to describe the web service interface through
WSDL, RESTful web services currently have no such grammar.

-   Make the XML schemas available to service consumers and package them with the WAR file.
-   Clearly document the expected input, output, and error conditions that may arise as result of invocation.
-   or use WADL


<a id="org70a3694"></a>

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


<a id="org83fb108"></a>

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


<a id="org9e235b3"></a>

### Advantages:

-   No expensive tools require to interact with the Web service
-   Smaller learning curve
-   Efficient (SOAP uses XML for all messages, REST can use smaller message formats)
-   Fast (no extensive processing required)
-   Closer to other Web technologies in design philosophy


<a id="orge1f09b8"></a>

### Error handeling

-   <https://blog.restcase.com/rest-api-error-codes-101/>


<a id="org682b28c"></a>

### Design

-   <https://docs.microsoft.com/ru-ru/azure/architecture/best-practices/api-design>


<a id="org8156cc0"></a>

## (SOA) Service-oriented architecture [ˈɔːrɪənt] [ˈɑːkɪˌtɛktʃə]

**style of software design** where services are provided to the other components by app components, through a
  communication protocol over a network.

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


<a id="org1231564"></a>

### Principles

-   **Service granularity:** A principle to ensure services have an adequate size and scope. The functionality
    provided by the service to the user must be relevant.


<a id="org6fe8fdc"></a>

### Roles

Roles:

-   **Service provider:** It creates a web service and provides its information to the service registry.  Each
    provider debates upon a lot of hows and whys like which service to expose, which to give more importance:
    security or easy availability, what price to offer the service for and many more.
-   **Service broker, service registry or service repository:** Its main functionality is to make the information
    regarding the web service available to any potential requester. Whoever implements the broker decides the
    scope of the broker. UDDI no longer active
-   **Service requester/consumer:** ??


<a id="org7d2b665"></a>

# Design principles


<a id="orga4513be"></a>

## SOLID

tomake designs  more understandable, flexible and maintainable.

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


<a id="orgbbf9b1a"></a>

### examples

<https://medium.com/better-programming/5-problems-faced-when-using-solid-design-principles-and-how-to-fix-them-df6dbf3699fb>


<a id="org879c9c9"></a>

## Inversion of Control (IoC) Инверсия управления

Принцип для уменьшения зацепления(coupling) и архетиктурное решение интеграции - контроль над потоком
управления программы остаётся за каркасом.

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


<a id="org4bfb64c"></a>

# Methodologies and frameworks

ASD DevOps DAD DSDM FDD IID Kanban Lean SD LeSS MDD MSF PSP RAD RUP SAFe Scrum SEMAT TSP OpenUP UP XP


<a id="org911180f"></a>

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


<a id="org82d51c6"></a>

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


<a id="org40203a1"></a>

# Software development

Инженерный подход к разработке <https://habr.com/en/company/yandex/blog/457810/>


<a id="org244085e"></a>

## Ontology engineering

information science and systems engineering is a field which studies the methods and methodologies for
building **ontologies:** formal representations of a set of concepts within a domain and the relationships between
those concepts.

Domain knowledge - предметная область -  часть реального мира, рассматриваемая в пределах данного контексат.

-   **Problem domain:** area of expertise or application that needs to be examined to solve a problem
-   **Mental model:** captures ideas in a problem domain.
-   **Conceptual model or domain model:** represents 'concepts' (entities) and relationships between them. independent of design
    or implementation concerns. The aim to express the meaning of terms and concepts used by domain experts
    to discuss the problem, and to find the correct relationships between different concepts.


<a id="org5548c8d"></a>

## Formal representation or visualize the design


<a id="orga9fa9da"></a>

### Unified Modeling Language (UML)

1.  TODO Use case


<a id="org20c4ef1"></a>

## Practices


<a id="orgc566c94"></a>

### (TDD) Test-driven development

Разработка через тестирование

-   программисты, пишущие больше тестов, склонны быть более продуктивными
-   менее связанный дизайн, с простой инициализацией
-   четкие и небольшие интерфейсы


<a id="org2b641d8"></a>

### (BDD) Behavior-driven development

Set of practices to test behavior not implementation.
test counter - bad input 0 test 1. good input counter current test current+1
may be improved unit testing.


<a id="orga8b91d1"></a>

### (DDD) Domain-driven design

Проблемно-ориентированное проектирование

-   **Context:**

-   **Domain:** A sphere of knowledge (ontology), influence, or activity. The subject area to which the user
    applies a program is the domain of the software;
-   **Model:** A system of abstractions that describes selected aspects of a domain and can be used to solve
    problems related to that domain;
-   **Ubiquitous Language или язык описания:** [juːˈbɪkwɪtəs] вездесущий. A language structured around the domain model and used by
    all team members to connect all the activities of the team with the software. используется для единого
    стиля описания домена и модели.

    Microsoft recommends that it be applied only to complex domains where the model and the linguistic processes
        provide clear benefits in the communication of complex information, and in the formulation of a common
        understanding of the domain.


<a id="org45b4f25"></a>

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


<a id="orgf1f4f57"></a>

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


<a id="orgaa25fab"></a>

## Technique tɛkˈniːk


<a id="orge3fc34e"></a>

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


<a id="org4d2f229"></a>

## principle


<a id="org23efa58"></a>

### Extensibility

-   White-Box
-   Black-Box


<a id="orgc9ef2e2"></a>

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


<a id="org716f44d"></a>

## TODO DevOps


<a id="org59229ab"></a>

## Infrastructure-as-Code

подходы 'что' / 'как' / 'почему'

-   декларативный (функциональный)
-   императивный (процедурный)
-   интеллектуальный

'push' и 'pull' кто инициирует изменение в конфигурации целевого хоста.

-   pull режиме целевой хост сам инициирует получение своей конфигурации.
-   push режиме конфигурацию ему присылает управляющий сервер.

SaltStack - Push and Pull - Declarative and imperative - Python
Ansible - push - Declarative and imperative


<a id="orgdf6bb29"></a>

# deploy

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


<a id="org9f492fe"></a>

# Management accounting

Net income(Чистая прибыль) - (gross) income minus taxes and other deductions over a period

Return on investment (ROI) or return on costs (ROC) - ratio between net income (over a period) and investment
(costs resulting from an investment of some resources at a point in time)


<a id="org40efa9b"></a>

## Total cost of ownership (TCO), TCO analysis

product/process comparison tool

-   total cost of acquisition -  all the costs associated with buying (net price + other)
-   operating costs
    -   fixed costs - have to be paid regardless of what state the business is in
    -   variable costs -
    -   semi variable, the expenses necessary to keep the business in proper condition.
-   costs related to replacement or upgrades at the end of the life cycle


<a id="org4007abf"></a>

# information theory


<a id="org7e67193"></a>

## Entropy (information theory) or Shannon entropy

-   Information fluctuation complexity
-   Average level of "information", "surprise", or "uncertainty" inherent in the variable's possible outcomes.
-   мера неопределённости некоторой системы (в статистической физике или теории информации), в частности
    непредсказуемость появления какого-либо символа первичного алфавита
-   равна количеству информации на символ передаваемого сообщения.

двоичная энтропия, при отсутствии информационных потерь, рассчитывается по формуле Хартли:

-   i = log2(N)
-   i - количество информации в каждом символе сообщения
-   N — мощность алфавита
-   выбор основания логарифма определяет единицу измерения энтропии, принято использовать 2.

    Для случайной величины x , принимающей n независимых случайных значений xi с вероятностями pi (i=1,&#x2026;,n}, формула Хартли переходит в формулу Шеннона:
-   H(x) = − ∑i pi\*log2(pi)
-   Величина Hi = −log2\*pi называется частной энтропией, характеризующей только i-e состояние.
-   В общем случае, основание логарифма в определении энтропии может быть любым, большим 1 (так как алфавитом,
    состоящим только из одного символа, нельзя передавать информацию);

-   I total information from N occurrences(алфавита):
-   I = − ∑i (N\*pi)\*log2(pi)
-   N\*pi - Approximated number that the certain result will come out in N occurrence
-   I/N = Entropy
-   Entropy is the average(expected) amount of information in a certain event

Примеры:

-   Кидание монеты имеет энтропию -2(1/2\*log2(1/2)) = log2(2) = 1 бит на одно кидание, 2<sup>1</sup>=2 возможных состояний
-   У источника генерирующего строку AAA -suminf(log2(1)) = 0, а количество возможных состояний равно: 2<sup>0</sup> = 1
-   4 красных, 2 желтых, 3 зеленых, посчитать этропию выбора шарика
    -   3 варианта событий n=3,
    -   -(4/9)\*log2(4/9)-(2/9)\*log2(2/9)-(3/9)\*log2(3/9)=1.53


<a id="orgadce6bc"></a>

## Redundancy - Избыточность информации

-   превышение количества информации, используемой для передачи или хранения сообщения, над его информационной энтропией
-   fractional difference between the entropy H(X) of an ensemble X, and its maximum possible value log (|Ax|)

Для

-   сжатие данных без потерь
-   контрольная сумма применяется для внесения дополнительной избыточности в поток


<a id="org599a40b"></a>

## Homogeneity and heterogeneity

-   homos, “same”
-   heteros, “other, another, different”
-   genos, “kind”

что-то одинаковое по каким то характеристикам и что-то разное по какой-то характеристике


<a id="org474613e"></a>

# file formats YAML


<a id="org65e8316"></a>

## YAML

.yaml / .yml

-   \# comment - can start anywhere, white space before # required
-   list:  '- l1\n- l2\n- l3\n'
-   list:  '[l1, l2, l3]'
-   &#x2014; semparate multimple documents inside one
-   &#x2026; optionally end a document
-   key-value: '  k1: v1\n  k2: v2\n' - colon MUST be followed by the space
-   key-value: '{k1: v1, k2: v2}'
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


<a id="orgfee6d24"></a>

# ORM

object-relational mapping [rɪˈleɪʃənəl] [ˈmæpɪŋ]. ORM - programming technique.


<a id="orgbe48c37"></a>

## object-relational impedance mismatch (imˈpēdns)

Объекты в ОП следуют ООП принципам, а
объекты в RDBMS следуют принципам нормализации

Alternative to ORM is use of the native procedural languages provided with every major database. The Data
Access Object (DAO) design pattern is used to abstract these statements and offer a lightweight
object-oriented interface to the rest of the application.


<a id="org647812d"></a>

# Database


<a id="org361dca9"></a>

## Standards

share data:

-   SQL
-   **Open Database Connectivity (ODBC)** is a standard application programming interface (API) for accessing
    database management systems (DBMS). by Microsoft.
-   ADO.NET data provider. by Microsot
-   OLE DB provider. by Microsoft
-   **XQuery API for Java (XQJ)** - API specification for XML data sources. Copyright Oracle
-   **JDBC** - for SQL based data sources,  tabular data sources, such as spreadsheets or flat files


<a id="org6a3f6d0"></a>

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


<a id="orgd0daa29"></a>

### Задача

-   взять все записи из первой таблицы, у которых во второй таблицы по внешнему ключу имеют количество

строк больше 2.

    SELECT * FROM Customers WHERE EXISTS (
      SELECT CustomerID, COUNT(EmployeeID)
      FROM Orders
      WHERE CustomerID = Customers.CustomerID --обязательное
      GROUP BY CustomerID
      HAVING COUNT(EmployeeID) > 2 )


<a id="org8dd99f3"></a>

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


<a id="org7f295a9"></a>

### UNION объединение строк

-   must have the same number of columns and same order
-   columns must also have similar data types
-   UNION - distinct
-   UNION ALL - all
-   column names in the result-set are usually equal to the column names in the first SELECT

    SELECT column_name(s) FROM table1
    UNION
    SELECT column_name(s) FROM table2;
    UNION ALL
    SELECT column_name(s) FROM table2;


<a id="orgeaa570c"></a>

### heaving  group distinct

-   **SELECT DISTINCT** CustomerName FROM Sales - недостаток, нельзя с aggregate
-   **GROUP BY** often used with aggregate functions to group by colums
-   **HAVING** - becouse WHERE could no be used with aggregate functions.

    SELECT COUNT(Id), Country
      FROM Customer
     GROUP BY Country
    HAVING COUNT(Id) > 10


<a id="orgc250620"></a>

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


<a id="org997feb7"></a>

### CTE

Common Table Expressions

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


<a id="orgc3ea537"></a>

### Оконные функции PostgreSQL

функция OVER окно AS num

sum(change) OVER () as result<sub>balance</sub>

row<sub>number</sub>() OVER (ORDER BY score DESC)  AS rating

подсчет в каждой группе отдельно:
row<sub>number</sub>() OVER (PARTITION BY section ORDER BY score DESC)  AS rating<sub>in</sub><sub>section</sub>


<a id="orgd55d9ec"></a>

### TODO grouping set


<a id="org7d74400"></a>

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


<a id="org2444abc"></a>

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


<a id="org729a652"></a>

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


<a id="org4d038d4"></a>

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


<a id="orgb24ea01"></a>

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


<a id="org897a718"></a>

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


<a id="org37b43e2"></a>

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


<a id="org8650299"></a>

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


<a id="orgbeaee3b"></a>

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
<td class="org-left">findMin(x => a, y => b, z => c, m => d);</td>
</tr>


<tr>
<td class="org-left">Mixed notation</td>
<td class="org-left">findMin(a, b, c, m => d);</td>
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


<a id="org1d49473"></a>

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


<a id="orgf0c322e"></a>

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


<a id="org5de4877"></a>

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


<a id="org1848d7f"></a>

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


<a id="orgf5e6cc3"></a>

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


<a id="org2dae498"></a>

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


<a id="org264ec0e"></a>

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


<a id="org30c8803"></a>

### SQL Pseudocolumns

-   CURRVAL and NEXTVAL sequence<sub>name.CURRVAL</sub>   sequence<sub>name.NEXTVAL</sub>
-   LEVEL - SELECT CONNECT BY - to organize rows from a database table into a tree structurex
-   ROWID - binary address) of a row in a database table
-   ROWNUM - indicating the order in which a row was selected from a table.


<a id="org72c1aad"></a>

## OLTP vs OLAP

**Online transaction processing (OLTP)** - operational side

Термин введен Эдгаром Коддом. Цель OLAP - облегчение решения задач анализа данных.  В противовес
транзакционной системе OLTP, **OLAP online analytical processing** хранит исторические данные, гибкая и
ориентирована на вывод данных. - amalytical side


<a id="org2b94c15"></a>

## ACID

идеальные характеристики транзакций и гарантирующие валидность данных в случае сбоев

-   **Atomicity:** [ˌætəˈmɪsɪtɪ] success completele or fail completely. Atomic [əˈtɒmɪk]
-   **Consistency:** [kənˈsɪstənsɪ] from one valid state to another
-   **Isolation:** [ˌaɪsəˈleɪʃən] concurrency control (Multiversion concurrency control MVCC)
-   **Durability:** [d(y)o͝orəˈbilitē] completed transactions recorded in non-volatile memory


<a id="org72625c0"></a>

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


<a id="orgf8af888"></a>

## in-memory databases

ACID требует сохранение состояния DURABILITY.
Durable of ACID - delayed commit (SAP ASE)

Все СУБД максимально используют RAM для оптимизации READ.

**delayed commits** and **relaxed latency databases** - less ACID.

-   column sotes with compression.

HANA have no delayed commits but robust recovery system

In-memory databases don't use disk for non-change operations.
In-memory databases do use disk for data change operations — but they use it in the fastest possible way.


<a id="orgc8cc3fa"></a>

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


<a id="org488e3c9"></a>

## Embedded databases

-   HSQL –
-   H2 –
-   DERBY –
-   BerkleyDB


<a id="orgdf1f82f"></a>

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


<a id="orgcbe6f2e"></a>

## PostgreSQL

id serial - autoincrement, automatically: NOT NULL. If Primary key - unique.

    INSERT INTO teams  (name) VALUES ('asd');
    --OR INSERT INTO teams VALUES (DEFAULT, 'Manchester City');
    SELECT LASTVAL();


<a id="org6b54de5"></a>

# Rare terms

-   **Closure [ˈkləʊʒə]:** is a callable object that retain information from the scope in which it was created. (inner
    class in java, отчасти lambda expressions) in JavaScript - функция которая возвращает другую
    функцию обращающуюся к её объектам.
-   **mutative:** modify the underlying collection
-   **immutable object:** whose state cannot be modified after it is created. String - every time new string created.
-   **coupling:** [ˈkʌplɪŋ] зацепление, мера того, насколько взаимозависимы разные подпрограммы или
    модули. Больше - хуже **low coupling**. coupling between objects (CBO) e.g. зависимости между
    классами будут снижаться, а зацепление повышаться.
-   **cohesion [kəʊˈhiːʒən]:** связанность relationship within module, **high cohesion** Правило: вызывать методы
    параметров и объектов котоыре создаются внутри метода.
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


<a id="orgab7ef23"></a>

# network


<a id="org4955215"></a>

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


<a id="org53f3971"></a>

## ipv4

0.0.0.0 server - reserved as a source address only/ TCP/IP software applications use 0.0.0.0 as a programming
technique to monitor network traffic across all the IP addresses currently assigned to the interfaces on that
multi-homed device.


<a id="org821b54c"></a>

## ipv6

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


<a id="org2ce97be"></a>

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


<a id="org47a8ff7"></a>

# тимлид

-   Техлид — это технический руководитель продукта. не специальность, а роль.
    -   Она может быть формальной, и может быть и номинальной, все зависит от проекта и команды.
    -   в классическом Scrum, например, нет роли техлида.
    -   Технический долг — это несделанная в проекте работа, которая будет мешать его развитию в будущем, если так
        и не будет выполнена.
    -   Управление техническим долгом — это его постоянный поиск, подсчёт стоимости и постепенное устранение.
-   60% времени уходит на управление, а 40% на ревью и ресерчи.
-   Техлид — это упор на Hard-скиллс, а тимлид — на Soft-скиллс.

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

<https://habr.com/ru/company/agima/blog/566908/>
<https://habr.com/ru/company/agima/blog/558060/>


<a id="org1749833"></a>

# подбор персонала

1.  нет ни хороших не плохих - есть кто подходит и те кто не подходит
2.  в большинстве методов нет правильных ответов, но есть подходящие и не одходящие ответы
3.  чтобы сделать вывод об интервью нужно его првоерить минимум три раза и использвать разные подходв во время интеврью
4.  нет идеальных = важно устанавливать приоритеты
5.  знание и навых принципильно разные вещи
6.  адаптировать определенную мелодику к конкретной компании
7.  понять стратегические и тактические цели предприятия и оценивать исходя их них


<a id="orgc6e58e4"></a>

# ораторство


<a id="org562e650"></a>

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


<a id="orga7d3751"></a>

## Пётр Безруков — тренер по ораторскому искусству


<a id="org8aa9fc1"></a>

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


<a id="org391f359"></a>

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


<a id="org81a47bc"></a>

# управление проектом - мэнеджмент - Project Management

человек от которого бизнес ждет денег - человек выскочка


<a id="org5b43f17"></a>

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


<a id="org49d628d"></a>

## как диагностировать проблему

1.  ненужная суета
2.  постоянные переработки или большие затраты на исправление тех вещей, которые изначально должны работать как надо
3.  уровень доходности, не превышающий среднего уровня по отрасти более чем в 2-3 раза


<a id="org3b03928"></a>

## этапы проекта

-   инициация
-   планирование
-   внедрение
-   мониторинг и контроль
-   закрытие проекта


<a id="org0a0f47b"></a>

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


<a id="orgdd0db94"></a>

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


<a id="orga1f61c7"></a>

## link

<https://live.skillbox.ru/webinars/management/kak-za-1-5-chasa-nauchitsya-upravlyat-proektom130922/>


<a id="org56df2f3"></a>

# IT audit

контрольная процедура - проводить тренировки по восстановлению, запускать резервный контур, тестирование

всегда должен быть независимый дублирующий контур: разные ЦОДы, магистральные провайдыре, бэкапы на отчуждаемых носителях


<a id="org65acc6c"></a>

## COSO internal control framework

модель COSO - внутренний контроль орг-и как процесс, осущ-й персоналом орг-ии, предн-ый для обуспеч. разум-й уверенности касательно целей


<a id="orga32bc74"></a>

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


<a id="org0cc4a6f"></a>

# TODO agile and extreme development methodologies


<a id="orgd508847"></a>

# news theory

consent is been manufactured
5 enemy of news
manufactorung consent


<a id="org312ee8a"></a>

# Деловой этикет

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


<a id="orgd483693"></a>

# что я понял


<a id="org38eb1f0"></a>

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


<a id="org45b2e08"></a>

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


<a id="org38de693"></a>

## Моя практика общения

-   говорить размеренно и доброжелательно
-   никогда не говорить о своих слабостях
-   У споров самый низкий приоритет
-   Они пытаются вывести тебя из равновесия - не допускать ни одно обидное и резкое слово - смягчать
    -   Никаких эмоций только конценрация на поиске решения для всех


<a id="org1ed6426"></a>

## переговорщик

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
-   Делайте разграничение между участниками и предме­том переговоров.
-   Сосредоточьтесь на интересах, а не на позициях.
-   Разрабатывайте взаимовыгодные варианты.
-   Настаивайте на использовании объективных критериев.
-   сбить первые требования террористов, чтобы в дальнейшем не следовать их сценарию. Зато последнее требование
    нужно постараться удовлетворить, тогда террористу психологически будет легче сдаваться. ("спасение лица
    противника")
-   Будьте тверды, говоря о проблеме, но мягки с людьми.
-   Станьте на их сторону, Переформулируйте, Постройте золотой мост, Используйте силу для воспитания.
-   чаще: "Да, здесь вы правы", "Да, здесь с вами сле­дует согласиться". Это же "да" должно присутствовать и в
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


<a id="org9a98f4c"></a>

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


<a id="orgc527a3e"></a>

## методом Блеза Паскаля

уясните себе, с какой сто­роны он подходит к предмету спора, ибо эту сторону он обычно видит правильно, затем
признайте его пра­воту и тут же покажите, что при подходе с другой стороны правота сразу превратится в
неправоту,

люди сердятся не на то, что не все успели разглядеть, а на то, что ошиблись

-   Задавайте оппоненту вопросы: почему он считает именно так, а не иначе, на чем основывает свое убеждение,
    видит ли альтернативы ему?

Когда мы ставим под сомнение эти убеждения и непротиворечивую картину мира, это может вызвать неприятные
переживания. Важно поддержать человека, не переходить на какие-то личные обвинения.


<a id="org218a02c"></a>

## Сократический диалог


<a id="orga52fcba"></a>

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


<a id="org2d278fb"></a>

## техника контейнирования

например: «я вижу, что тебя это расстраивает» или «похоже, тебя сильно злит, что…». Это поможет человеку
почувствовать себя услышанным и выпустить пар, после чего он будет более расположен к дальнейшему диалогу.


<a id="org0ddc377"></a>

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


<a id="orgc64c676"></a>

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


<a id="orgf82d5f7"></a>

## узнать насколько специалист хороший

-   какими профессиональными качествами гордится, и главное, где они используются, для чего
-   уровень знания английского
-   рабочая операционная система
-   текстовы редактор, наличие собственных записей, публикаций


<a id="orgb4cffe4"></a>

## soft skills

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


<a id="org23985c3"></a>

## personal brand Личный Бренд

-   максимально соответствовать дресс-коду, предусмотренному в компании, а в случае его отсутствия помнить об
    универсальных правилах делового стиля.
-   какой может быть спрос от человека, который с первого раза не может объяснить суть проблемы и поставить
    задачу перед подчиненными
-   Человек, который невнятно, нелогично говорит, никогда не займет руководящей должности

ЛБ = мечта + знание себя + правильное мышление + персональна интеграция + тяга к учебе + страсть + помощь окружающим + любовь


<a id="orge655ec0"></a>

## ИТ-евангелист Technology evangelist

продвигает технологии и продукты путём написания статей, ведения блогов, проведения семинаров и вебинаров,
демонстраций и презентаций, ведения переговоров.
