;-*- mode: Org; fill-column: 100;-*-
#+LATEX_HEADER: \usepackage[T1,T2A]{fontenc}
#+TITLE: Java
- Java EE 6 tutorial https://docs.oracle.com/javaee/6/tutorial/doc/index.html
- Language Specification https://docs.oracle.com/javase/specs/jls/se7/html/
- https://javaee.github.io/
* Theory [ˈθɪərɪ]
- Мартин Роберт «Чистая архитектура. Искусство разработки программного обеспечения» Питер, 2018 год
- https://en.wikipedia.org/wiki/Martin_Fowler_(software_engineer)
** Language Java
 Multi-paradigm: object-oriented (class-based), structured, imperative, generic, reflective, concurrent

 Typing discipline:
 - Static :: compile time
 - strong :: stricter typing rules at compile time
 - safe :: do not allow operations or conversions that violate the rules of the type system.
 - nominative [ˈnɒmɪnətɪv] :: compatibility and equivalence of data types is determined by explicit declarations and/or name
                 of the type.
 - manifest ::  explicit identification of each type in code.
-------
 - Simple: Java is easy to learn. The syntax of Java is based on C++.
 - Object-Oriented.
 - Portable: Java supports read-once-write-anywhere approach. bytecode (.class)
 - Platform Independent: Java doesn't depend upon the operating system to be executed.
 - Secured: Java is secured because it doesn't use explicit pointers. Java also provides the concept of
   ByteCode and Exception handling which makes it more secured.
 - Robust: Java is a strong programming language as it uses strong memory management. The concepts like
   Automatic garbage collection, Exception handling, etc. make it more robust.
 - Architecture Neutral: architecture (32 bit or 64 bit) which doesn't exist in Java.
 - Interpreted: Java uses the Just-in-time (JIT) interpreter along with the compiler for the program execution.
 - bytecode is "close" to native code. It is still a little bit slower than a compiled language (e.g., C++).
 - Multithreaded:
 - Distributed: Java is distributed because it facilitates users to create distributed applications in
   Java. RMI and EJB are used for creating distributed applications. This feature of Java makes us able to
   access files by calling the methods from any machine on the internet.
 - Dynamic: Java is a dynamic language. It supports dynamic loading of classes. It means classes are loaded on
   demand. It also supports functions from its native languages, i.e., C and C++.
** History
 - 1996 *Java 1.0*:  Dictionary, Vector, Stack, and Properties before Collections
 - 1998 *J2SE 1.2* and j2ee and j2me:  Collections Framework
 - *SE 4* "assert"
 - 2004 *SE 5* high-level concurrency features.  java.util.concurrent, Iterator, for-each, enum,generics,
   autoboxing
 - 2006 *SE 6* rename ti Java EE, Java ME and Java SE, NavigableMap, @Override in interface
 - *SE 7* - diamonds, ARM, multi-catch, try-with-resources, fork/join framework.
 - 2014 *SE 8* lambda, type annotation
 - *SE 9* Modules, private methods in interfaces
 - *SE 10* Local variable type interface
** Из чего состоит Java
 JVM is an acronym for Java Virtual Machine; it is an abstract machine which provides the runtime environment
 in which Java bytecode can be executed. It is a specification which specifies the working of Java Virtual
 Machine. Its implementation has been provided by Oracle and other companies. Its implementation is known as
 JRE.

  It is a runtime instance which is created when we run the Java class. There are three notions of the JVM: specification, implementation, and instance.

 JRE stands for Java Runtime Environment. It is the implementation of JVM. The Java Runtime Environment is a
 set of software tools which are used for developing Java applications. It is used to provide the runtime
 environment. It is the implementation of JVM. It physically exists. It contains a set of libraries + other
 files that JVM uses at runtime .

 JDK is an acronym for Java Development Kit. It is a software development environment which is used to develop
 Java applications and applets. It physically exists. It contains JRE + development tools. JDK is an
 implementation of any one of the below given Java Platforms released by Oracle Corporation:
*** Java platform editions
 Java Card
 Micro Edition (ME)
 Standard Edition (SE)
 Enterprise Edition (EE)

 Each Java *software-platform* include:
  - Java Virtual Machine
  - Class libraries -  "rt.jar" and others, which is provided with JRE. dynamically loadable libraries
  - Languages
  - JDK - compiler, JRE copy, many tools, class libraries present in the production environment, as
    well as additional libraries only useful to developers

*** Package
 *Unnamed packages* are provided by the Java platform principally for convenience when developing small or
 temporary applications or when just beginning development.

 Java packages can be stored in compressed files called JAR files

*** Class
 Class itself public, or package-private (no explicit modifier).

 Class members - модификаторы доступа (access levels)(access modifiers)
 |           | Класс | Пакет | Подклассы | Все |            |
 | private   | +     |       |           |     | [ˈpraɪvɪt] |
 | default   | +     | +     |           |     | [dɪˈfɔːlt] |
 | protected | +     | +     | +         |     |            |
 | public    | +     | +     | +         | +   | [ˈpʌblɪk]  |

 subclass vs nested class
 sublcass - inheriting, child

*** source .java
  - There can be only one public class per source file.
  - A source file can have multiple non-public classes.
  - The public class name should be the name of the source file
  - If the class is defined inside a package, then the package statement should be the first statement in the source file.
*** JAR file
  Java class files and associated metadata and resources (text, images, etc.) into one file for distribution
 Manifest file - metadata file *META-INF/MANIFEST.MF*
 zip archive with manifest.
 jar - command line utility

*** Memory areas
 - Heap :: It is the runtime data area in which the memory is allocated to the objects
 - Stack :: Java Stack stores frames. It holds local variables and partial results, and plays a part in method
   invocation and return. Each thread has a private JVM stack, created at the same time as the thread. A new
   frame is created each time a method is invoked. A frame is destroyed when its method invocation completes.
- Constant storage :: never change.
- Non-RAM storage :: /serialized objects/ and /persistent objects/. -???
-----
 - Class(Method) Area :: Class Area stores per-class structures such as the runtime constant pool, field, method
   data, and the code for methods.
 - Program Counter Register :: PC (program counter) register contains the address of the Java virtual machine
   instruction currently being executed.
 - Native Method Stack :: It contains all the native methods used in the application.


 Whenever an object is created, it’s always stored in the Heap space and stack memory contains the reference to
 it. Stack memory only contains local primitive variables and reference variables to objects in heap space.

 Objects stored in the heap are globally accessible whereas stack memory can’t be accessed by other threads.

*** JIT
 Just-In-Time(JIT) compiler: It is used to improve the performance. JIT compiles parts of the bytecode that
 have similar functionality at the same time, and hence reduces the amount of time needed for compilation. Here
 the term “compiler” refers to a translator from the instruction set of a Java virtual machine (JVM) to the
 instruction set of a specific CPU.
** AOP Agent-oriented programming
 Зачем?
 1. необходимость преодоления границ операционных сред;
 2. устранение разнородности объектных моделей, вызванных тем, что классы и объекты, построенные в различных инструментальных средах, имеют определённые отличия.

 Распределённые объектные архитектуры (CORBA, DCOM, Java RMI, WEB-services), обладая многими перечисленными
 свойствами, имеют следующие недостатки:
 1) необходимость перекомпиляции программных кодов при внесении изменений в объекты и интерфейсы;
 2) невозможность динамической адаптации поведения программных объектов в зависимости от состояний и поведения среды;
 3) невозможность работы в явной форме с моделями знаний;

 AOP has externally specified *agents* (with interfaces and messaging capabilities) at its core. They can be
  thought of as abstractions of objects. Exchanged messages are interpreted by receiving "agents", in a way
  specific to its class of agents.

 Агентом является всё, что может рассматриваться как воспринимающее свою среду с помощью датчиков и
 воздействующее на эту среду с помощью исполнительных механизмов.

 JADE framework (основана на Java RMI, Java CORBA IDL, Java Serialization и Java Reflection API) придаёт Java
 агентам следующие свойства:

** object-relational mapping
*** (JPA) Java Persistence API.
 https://docs.oracle.com/javaee/7/tutorial/partpersist.htm
 a Java application programming interface specification that describes the management of relational data

 The reference implementation(эталонная реализация) for JPA is EclipseLink. (for JPA 2.0)
 - *javax.persistence*
 -  Java Persistence Query Language (JPQL)
 - object/relational metadata - rerences between entities, specifyed by annotations

**** Entity requirements
 - The entity class must be annotated with the *javax.persistence.Entity* annotation (or be denoted as such in
   XML mapping)
 - The entity class *must have* a public or protected *no-argument constructor*. It may define additional
   constructors as well.
 - The entity class must be a top-level class.
 - An enum or interface may not be designated as an entity.
 - The entity class must *not be final*. No methods or persistent instance variables of the entity class may be
   final.
 - If an entity instance is to be used remotely as a detached object, the entity class must implement the
   Serializable interface.
 - Both abstract and concrete classes can be entities. Entities may extend non-entity classes as well as entity
   classes, and non-entity classes may extend entity classes.
 - The persistent state of an entity is represented by instance variables, which may correspond to
   JavaBean-style properties. An instance variable must be directly accessed only from within the methods of
   the entity by the entity instance itself. The state of the entity is available to clients only through the
   entity’s accessor methods (*getter/setter* methods) *or other business methods*.

** TODO J2EE Patterns
https://www.oracle.com/technetwork/java/catalog-137601.html
*** Service Locator
https://www.dineshonjava.com/service-locator/
These design patterns are specifically concerned with the presentation tier. These patterns are identified by Sun Java Center.
- Service Locator :: central registry known as the "service locator", which on request returns the information
     necessary to perform a certain task
*** (DAO) Data access object
https://www.oracle.com/technetwork/java/dao-138818.html

Is an object that provides an abstract interface to some type of database or other persistence mechanism.

This isolation supports the single responsibility principle. It separates what data access the application
needs, in terms of domain-specific objects and data types (the public interface of the DAO), from how these
needs can be satisfied with a specific DBMS, database schema, etc. (the implementation of the DAO).
#+BEGIN_SRC java
class CloudscapeCatalogDAO implements CatalogDAO{
   public static String GET_CATEGORY_STATEMENT
  = "select name, descn "
  + " from (category a join category_details b on a.catid=b.catid) "
  + " where locale = ? and a.catid = ?";
   protected static DataSource getDataSource() throws CatalogDAOSysException {
       //DataSource отдельно и привязан к конкретной базе
   }
   //implement
   public Category getCategory(String categoryID, Locale l)
      throws CatalogDAOSysException {
      Connection c = null;
      Category ret = null;
      try {
        c = getDataSource().getConnection();
        ret = c.executequery()
        return ret;
     } catch (SQLException se) {
        throw new CatalogDAOSysException("SQLException: " + se.getMessage());
      }
   }
}x
#+END_SRC
** properties of systems
*** Scalability
 to handle a growing amount of work
- scale horizontally scale out/in) :: adding a new computer to a distributed software application
- scale vertically scale up/down :: add resources to  a single node in a system
*** Reliability and fault-tolerant and High availability
*Reliability* - Probability that the system has been up *continuously* during the whole interval.

*Availability* - Fraction of time (часть времени) system is up during the interval [0 t].  appropriate for
applications in which continuous performance is not vital but where it would be expensive to have the system
down for a significant amount of time.

In every hour the website is up for 59 minutes and down for 1 minute. Availability = 59/60 = 0.983

*Fault tolerant systems* are systems where the failure of one or more components does not cause the failure of
the entire system.

*Highly available systems* systems where the level of operational performance is kept constant during a
contractual measurement period.
** java rules
*** no-shared-mutable-data rule
Mutability is OK, sharing is nice, shared mutability is devil's work.
#+BEGIN_SRC java
List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5, 1, 2, 3, 4, 5);
List<Integer> doubleOfEven = new ArrayList<>(); //shared mutable.

numbers.stream()
       .filter(e -> e % 2 == 0)
       .map(e -> e * 2)
       .forEach(e -> doubleOfEven.add(e)); //parallel = no order.

List<Integer> doubleOfEven2 =
      numbers.stream()
             .filter(e -> e % 2 == 0)
             .map(e -> e * 2)
             .collect(toList()); //ok

#+END_SRC

** Database
- database :: [ˈdeɪtəˌbeɪs] is an organized collection of data
- database management system (DBMS) :: app that interacts with end users, other applications, and the database
     itself
- Ссы́лочная це́лостность (англ. referential integrity) :: [ˌrɛfəˈrɛnʃəl] необходимое качество реляционной базы
     данных, заключающееся в отсутствии в любом её отношении внешних ключей, ссылающихся на несуществующие
     кортежи.

Relational databases - most use SQL [rɪˈleɪʃənəl]. NoSQL - any other. (Object-relational database ORD and
object database management systems)

Common logical data models for databases:
- Navigational databases :: Graph database, Network model, Hierarchical database model
- Relational model
- Entity–relationship model ::  Enhanced entity–relationship model
- Object model :: object-oriented
- Document model :: subclass of key-value storage noSQL, XML databases,
- Entity–attribute–value model ::  object–attribute–value model, vertical database model, and open schema. InfinityDB
- Star schema

Таблица из foreign keys - *junction table* (or "link table") - many-to-many

- *Stored procedure* - subroutine available to applications that access a RDBMS
*** Database normalization [nɔːməlaɪˈzeɪʃən]
 - to reduce data redundancy and improve data integrity. [rɪˈdʌndənsɪ] избыточность [ɪnˈtɛɡrɪtɪ] целостность,
   защита от возможных ошибок при операциях
 - не имеет целью уменьшение или увеличение производительности работы или же уменьшение или увеличение физического объёма базы данных.
 - the columns (attribute or field) [ˈætrɪˌbjuːt]
 - tables (relations)
 - row(Tuple or record)
 - domain - тип данных, refers to all the values which a data element may contain.
 - candidate key [ˈkændɪˌdeɪt]
 - multi-value dependency - (X Y Z) X<-Y, X<-Z . YandZ- independent

 Forms:
 - (UNF) Unnormalized form - complex data structures may be stored within a single field or attribute,[2] or
   where fields may be replicated within a single table. (Primary key, no repeating groups)
 - (1NF) only if the domain of each attribute contains only *atomic* (indivisible) values, and the *value of
   each attribute* contains only a single value from that domain. eg [555-861-2025, 192-122-1111] ->
   [555-861-2025] | [192-122-1111] (*Atomic columns*)
 - (2NF) no non-prime attribute is dependent on any proper subset of any candidate key of the relation. *A
   non-prime attribute* of a relation is an attribute that is not a part of any candidate key of the
   relation. (*No partial dependencies* ) в составе потенциального ключа(из нескольких аттрибутов) отсутствует
   меньшее подмножество атрибутов, от которого можно также вывести данную функциональную зависимость
 - (3NF) *No transitive dependencies* отсутствуют транзитивные функциональные зависимости неключевых атрибутов от ключевых.
 - (BCNF) Бойса — Кодда. когда каждая её нетривиальная и неприводимая слева функциональная зависимость имеет в
   качестве своего детерминанта некоторый потенциальный ключ
 - (4NF) *Every non-trivial, multi-value dependency has a superkey*
*** Distributed transaction
*Two-phase commit protocol(2PC) for distributed atomic transaction* specialized type of consensus protocol.
1. *voting phase* coordinator prepare all the transaction's participating participants. yes - commit properly
   or no - abort, problem
2. *commit phase* only if all have voted "Yes" and notifies the result to all the participants

*** Масштабирование баз данных
- партиционирование ::
- репликация ::  синхронное или асинхронное копирование данных между несколькими серверами
- шардинг
** OTHER
Детерминированность системы - отсутствие рандомов.
*** distributed computing and multi-agent systems
- distributed computing :: The networked components interact with one another in order to achieve a common goal.
- multi-agent systems :: computerized system composed of multiple interacting intelligent agents (AI).
----
Consensus - agreement  for a single data value
*** workflow concept
- depicted as a sequence of operations, the work of a person or group
- building block to be combined with information technology, teams, projects and hierarchies
- document, service, or product that is being transferred from one step to another
- workflow is typically a process or collection of processes described in the context of work, such as all
 processes occurring in a machine shop.
- realization of  schedule with loops

 workflow management system (*WfMS*)
- process-centric or data-centric

Workflow engine -> Business process management (BPM)
*** Virtualization
**** Operating-system-level virtualization or *containerization*
 - containers,[1] partitions, virtual environments (VEs) or jails (FreeBSD jail or chroot jail), may look like
   real computers.
 - resource-management features

***** Docker
 tool that can package an application and its dependencies in a lightweight! virtual container

Solve:
- isolation of app
- package code, libraries, settings, into one container
- "Docker compose" to run several services in one command
Cons:
- too many virtualizations
- network latency

 - Сontainers may simplify the creation of highly distributed systems.
 - Containers are created from "images" - read-only template


 myidhehe
 00mortal

 https://docs.docker.com/get-started/part2/

- *Docker Trusted Registry (DTR)* - commercial product, stores and lets you distribute Docker images
- https://hub.docker.com/ a free-to-use - default command -docker pull/ push
*** Оркестрация
*kubernetes*
- из одного места на разные машины деплоить инстанцы микросервисов
- автоскелинг

Другие:
- Ansible
  - Agent-sell(SSH)
  - Minimalistic
  - Simple
- puppet labs
- CF Engine
- C chef
- saltstack
*** Microservices
- lower resource consumption and better flexibility while scalling
- fault isolation - упавший не рушит всю систему
- flexible tech stack - не писать все на одном языке и фреймворке
- API Versioning - однавременно работать разные версии через service_look_up
- Dev process isolation for big teams, clean API constrains between teams

When:
- unbalanced resource usage
- extreme scaling of some narrow functional area
- fault isolation
- High management complexity requires area isolation inside service - что то отдельно делается отдельной
  коммандой
- several languages

Альтернатива - класс Java с Dependency injection и т.д.
*** Reactive approach
- reactive manifest
require:
- elastic services - scallable
- responsive - быстро отвечать
- resilint - если что-то сломалось - не должна ломаться целиком - востанавличаться
- message driven -

Java: Web application in reactive approach:
- Akka
- Play framework
- Netty

Reactive Programming != Reactive System

Pros :
- handle more requests with less threads
cons:
- not comfortable with many blockIO
* Compilation & Execution
- .java :: source code - every public class in separate file.
- .class :: byte-code(platform independent) *binary class file*
- execution :: combination of interpretation and compilation (just-in-time (JIT) compiler). Client or server mode.
executed class with main = *main class*
# public static void main(String[] args) throws InterruptedException

*CLASSPATH environment variable* -  location of user-defined classes and packages.
1) java -cp /home/user/myprogram org.mypackage.HelloWorld
2) export CLASSPATH=/home/appnetix/LOG4J_HOME/log4j-1.2.16.jar
3) manifest file:
   - Main-Class: org.mypackage.HelloWorld
   - Class-Path: lib/supportLib.jar    (outside of main jar)

*Abstract Syntax Tree* -  used by tokenizer and compiler at compiling time to represent code in memory

*Package* - way to collect different parts of a large program together logically

1) *javap -c Main* - tokenizer read file and build AST. all syntax errors come from this stage
2) resolve external dependenies. .class saved.
3) *java*


 * Abstract class && Interface
https://www.javatpoint.com/difference-between-abstract-class-and-interface
Simply, abstract class achieves partial abstraction (0 to 100%) whereas interface achieves fully abstraction (100%).

Abstract
 - It is not possible to instantiate a abstract class .
 - It can have abstract and non-abstract methods.
 - it can have constructors and static methods
- cat have private constants

Interface
 - has fields but implicitly static and final and public
 - can have only abstract methods. Непомеченные. public implicitly
 - Since Java 8, it can have default and static methods also.

* Primitives & wrapper classes классы оболочки
- boolean [ˈbuːlɪən]
- char [tʃɑː] the character type whose values are 16-bit Unicode characters
the integral types(signed):
- byte
- short [ʃɔːt] 2bytes
- int [ˈɪntɪdʒə] 32bits -2^31 +2^31-1
- long 64bits
the floating-point types:
- float [fləʊt] 32bits
- double [ˈdʌb(əl) 64 bits
High-Precision Numbers: [prɪˈsɪʒən]
- BigInteger
- BigDecimal

- Boxing :: is converting primitive values to reference.
- Widening :: type transformation. int -> long *narrowing* - explicit

- You CANNOT widen from one wrapper type to another. (IS-A fails.)
- You CANNOT widen and then box. (An int can't become a Long.)
- You can box and then widen. (An int can become an Object, via Integer.)

* default constructor
https://docs.oracle.com/javase/specs/jls/se7/html/jls-8.html#jls-8.8.9
: access  class{
:     super();
: }
In a class type, if the class is declared public, then the default constructor is implicitly given the access
modifier public (§6.6); if the class is declared protected, then the default constructor is implicitly given
the access modifier protected (§6.6); if the class is declared private, then the default constructor is
implicitly given the access modifier private (§6.6); otherwise, the default constructor has the default access
implied by no access modifier.
* Strings
- String is a Class
- String is immutable and final - thread safe.
** Comparision
1) equals(String str)
   - value
   - Objects.equals() checks for null before calling .equals() so you don't have to (available as of JDK7, also available in Guava).
   - equalsIgnoreCase() - case-insensitive
2) compareTo(String anotherString),  compareToIgnoreCase(String str)
   - lexicographically
   - used for orderding string in a list
   - compare() - by their length
3) == by reference
4) String.contentEquals() compares the content of the String with the content of any CharSequence (available since Java 1.5)
** String pool (String interning)
[ˈɪntɜːn]
Special storage area in Java heap

String object in the string constant pool is called as *String Intern*

intern() - Create an exact copy of heap memory string object in string constant pool.

"" = pool
new or result of method = string object

** StringBuffer and StringBuilder
heap memory
StringBuffer - if you need thread safety
: StringBuffer sb = new StringBuffer("JAVA");
: sb.append("J2EE");
StringBuilder - if you dont need.
: StringBuilder sb1 = new StringBuilder("JAVA");
: sb1.append("J2EE");
** Why Char array is preferred over String for storing password?
string in string pool stored until unless garbage collected. It’s a security risk because anyone having access
to memory dump can find the password as clear text. If we use char array to store password, we can set it to
blank once we are done with it.
* Regex
- https://docs.oracle.com/javase/tutorial/essential/regex/index.html
 Regular [ˈregjʊlə] Expressions [ɪkˈspreʃnz] *java.util.regex* API
** ReplaceAll
** Matcher
- https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html
- https://docs.oracle.com/javase/8/docs/api/java/util/regex/Matcher.html
PatternSyntaxException object is an unchecked exception that indicates a syntax error in a regular expression pattern.

#+BEGIN_SRC java
import java.util.regex.Pattern;
import java.util.regex.Matcher;

String nazn = "за 31/01/2018 никулкин владимир иванович г.барнаул ул.георгия "
                +"исакова,169-17 оплата по сч ак-2083 от 29,01,2018 вознаграждение агента за газ 2705,в т.ч.ндс 1525,42 руб";

        Pattern p = Pattern.compile("[^а-яА-ЯёЁ/-//\\s]");

        Matcher m = p.matcher(nazn);

        String[] arr = m.replaceAll("").split("\\s+");

        System.out.println(Arrays.toString(arr)); Pattern p = Pattern.compile(REGEX);

#+END_SRC


* Overriding
The access level cannot be more restrictive than the overridden method's access level. For example: If the
superclass method is declared public then the overridding method in the sub class cannot be either private or
protected.

An overriding method can throw any uncheck exceptions, regardless of whether the overridden method throws
exceptions or not. However, the overriding method should not throw checked exceptions that are new or broader
than the ones declared by the overridden method. The overriding method can throw narrower or fewer exceptions
than the overridden method.
* Generics
- compile time chechs
- no casts

*generics* enable types (classes and interfaces) to be parameters when defining classes, interfaces and
 methods.

As *formal parameters* used in method declarations, *type parameters* - in generics.

- declaration of generic type :: class Box<T> {
- type parameters :: Interface Pair<K, V> { - here *unbounded* "K, V"
- invocation of generic type or parameterized type :: Box<Integer> a;
- type argument :: [ˈɑːɡjʊmənt] Box<Integer> a; - here "Ineger".
- raw tupes :: invocation of generic type without type argument. Complier warning.
- The Diamond :: [ˈdaɪəmənd] сахар чтобы два раза не писать тип *Type Inference*
: Box<Integer> integerBox = new Box<>();

If Integer is subtype of Number It does not mean *Box<Integer>* is not subtype of *Box<Number>*. Both subtype
of *Object*. That is why wildcards "?" required.
** generic method
Pair with comarator:
#+BEGIN_SRC java
public class Util {
    public static <K, V> boolean compare(Pair<K, V> p1, Pair<K, V> p2) {
        return p1.getKey().equals(p2.getKey()) &&
               p1.getValue().equals(p2.getValue());
    }
}

public class Pair<K, V> {

    private K key;
    private V value;

    public Pair(K key, V value) {
        this.key = key;
        this.value = value;
    }

    public void setKey(K key) { this.key = key; }
    public void setValue(V value) { this.value = value; }
    public K getKey()   { return key; }
    public V getValue() { return value; }
}
Pair<Integer, String> p1 = new Pair<>(1, "apple");
Pair<Integer, String> p2 = new Pair<>(2, "pear");
boolean same = Util.compare(p1, p2);
//OR
boolean same = Util.<Integer, String>compare(p1, p2);
#+END_SRC

** generic construcors
#+BEGIN_SRC java
class MyClass<X> {
  <T> MyClass(T t) {
    // ...
  }
}
new MyClass<Integer>("");// X - Integer, T - String
#+END_SRC
** Bounded Type Parameters
<U extemds Number> - *upper bound*

*Wildcards* - ?
- List<? extends Number> - upper bounded ?
- List<? super Integer> - lower bounded ?
- List<?> - *unbounded wildcards* when we do not depend on type parameter.

*Windcard Guidelines* copy(src, dest) == copy(in, out)
- in varible :: upper bound - extends
- out :: lower bound - super
- In the case where the "in" variable can be accessed using methods defined in the Object class, use an
  unbounded wildcard.
- code need to access the varible both "in" and "out" - do not use a wildcard.
- Using a wildcard as a return type should be avoided.

*** Read-only List with wildcard
#+BEGIN_SRC java
// List<EvenNumber> is a subtype of List<? extends NaturalNumber>
List<EvenNumber> le = new ArrayList<>();
List<? extends NaturalNumber> ln = le;
ln.add(new NaturalNumber(35));  // compile-time error
#+END_SRC

** Restrictions on Generics
 - Cannot Instantiate Generic Types with Primitive Types
 - Cannot Create Instances of Type Parameters
 - Cannot Declare Static Fields Whose Types are Type Parameters
 - Cannot Use Casts or instanceof With Parameterized Types
 - Cannot Create Arrays of Parameterized Types
 - Cannot Create, Catch, or Throw Objects of Parameterized Types
 - Cannot Overload a Method Where the Formal Parameter Types of Each Overload Erase to the Same Raw Type

* Conversion & arithmetic operations
[kənˈvɜːʃən] & adj [ˌærɪθˈmɛtɪk]
- assignment [əˈsaɪnmənt]
- вызов метода
- явное приведение (Long)
- promotion. Числовые операции

Унарные операции + - ~ << >> >>> расширяют byte, short, char до *int*. Сдвиг всегда имеет тип int или long.

В бинарных операциях byte, short, char до *int*.

- арифметические операции +, -, *, /(div если int то без остатка), %(mod остаток от деления) ;
- операции сравнения <, <=, >, >=, ==, != ;
- битовые операции &, |, ^ ;
- тернарый ?:

Logical AND and OR && ||

** Bitwise and Bit Shift Operators
побитовые и сдвиговые
- invert or flip ~
- signed shift << >> - added bit depends on sign.
- unsigned shift >>> <<< - add 0 always
- & AND
- | inclusive OR
- ^ exclusive OR (XOR) 1 1 = 0

*Negative values - two's complement*. Negative numbers are representing by negating
(flipping) all the bits and then adding 1. Still, if the leftmost bit is 0, the number is positive. Otherwise,
it is negative.

>> division by 2^n. Or division by 2^n -1 in case of odd numbers (нечетных)x
** Precedence старшинство
[ˈprɛsɪdəns]
= right to left, others left to right.
1) unary
2) multiplicative 	* / %
3) additive 	+ -
4) shift
5) relational [rɪˈleɪʃənəl] < > <= >= instanceof
7) equality == !=
8) bitwise: (in Preecedence) & ^ | && ||
9) &&
10) ||
11) ?:
12) assignment = += *=
------------
* Exceptions handling
[ɪkˈsɛpʃən] [ˈhændlɪŋ]

- checked exception :: must be catched, except *Error, RuntimeException* and their subclasses
- Error :: external to the application. To catch this exception, and notify user or print a stack trace and exit.
- RuntimeException :: indicate programming bugs, such as logic errors or improper use of an
     API. NullPointerException - no sense to catch, it is better to fix the logic.

Class *Throwable* Can be _trow_
- *Error* _unchecked_
- *Exception*
  - *RuntimeException* _unchecked_
    - NullPointerException
    - EmptyStackException is not a checked, no need to declare.
    - ArithmeticException
    - IndexOutOfBoundsException
  - IOException  - checked, must be declared.

Exceptions Thrown by a Method:
: public void writeList() throws IOException {

#+BEGIN_SRC java
    try{
       return true;
    } catch (IndexOutOfBoundsException e) {
        System.err.println("Caught IndexOutOfBoundsException: "
                           + e.getMessage());
    } catch (IOException e) {
        System.err.println("Caught IOException: " + e.getMessage());
    } finally {
        if (out != null)
            out.close();
    }
    return false;
#+END_SRC

*Logging* java.util.logging

** Stack Trace
#+BEGIN_SRC java
catch (Exception cause) {
    StackTraceElement elements[] = cause.getStackTrace();
    for (int i = 0, n = elements.length; i < n; i++) {
        System.err.println(elements[i].getFileName()
            + ":" + elements[i].getLineNumber()
            + ">> "
            + elements[i].getMethodName() + "()");
    }
}
#+END_SRC
** Create own
if you are a package developer, you might have to create your own set of exception classes to allow users to
differentiate an error that can occur in your package from errors that occur in the Java platform or other
packages.

IF yes for one of questions:
- Do you need an exception type that isn't represented by those in the Java platform?
- Would it help users if they could differentiate your exceptions from those thrown by classes written by other vendors
- Does your code throw more than one related exception?
- If you use someone else's exceptions, will users have access to those exceptions? A similar question is,
  should your package be independent and self-contained?

Good practice to append the string Exception to the names of all classes that inherit (directly or indirectly)
from the Exception class.(e.g LinkedListException)

Errors are normally used for serious, hard errors in the system, such as those that prevent the JVM from running.

* Money & Currency [ˈmʌnɪ] & [ˈkʌrənsɪ] and round
** print
Numbers =>  locale-sensitive String.
123456.78 =>
123 456,78 in France:
123.456,78 in Germany

JSR 354 – “Currency and Money”

java.text.NumberFormat

#+BEGIN_SRC java
  Integer quantity = new Integer(123456);
    Double amount = new Double(345987.246);
    NumberFormat numberFormatter = NumberFormat.getNumberInstance(currentLocale);
    String quantityOut = numberFormatter.format(quantity);
    String amountOut = numberFormatter.format(amount);
    System.out.println(quantityOut + "   " + currentLocale.toString());
    System.out.println(amountOut + "   " + currentLocale.toString());
 NumberFormat currencyFormatter =
        NumberFormat.getCurrencyInstance(currentLocale)

System.out.println(currencyFormatter.format(currencyAmount) );
#+END_SRC
123 456		fr_FR
345 987,246	fr_FR
123.456		de_DE
345.987,246	de_DE
123,456		en_US
345,987.246	en_US

9 876 543,21 € - france
9.876.543,21 € - germany
$9,876,543.21 - US Dollar
** round
Неправильный результат в частных ситуациях:
: i=(int )(n+0.5); // классическое округление
: i=(int )(n+1); //округление до большего целого
: i=(int )(n);// округление до меньшего целого

- Math.round() - до ближайшего целого. 0 < 0,5 или 0 >=0,5 = HALF_UP - default!
- Math.floor() - до нижнего целого
- Math.ceil() - до верхнего целого


BigDecimal c1 = a1.divide(b1, 9, BigDecimal.ROUND_HALF_UP); => 0.666666667

HALF_EVEN - 3,5 = 4 ; 4,5 = 4

*Double*
0.1 + 0.2 - 0.3=5.551115123125783E-17 (becouse of .toString()

Gaussian- , or bankers' rounding(для копеек и рублей)(по правилам арифметики):  0.5->1
: double result = 0.1 + 0.2 - 0.3;
: BigDecimal resultRounded = new BigDecimal(result).setScale(2, BigDecimal.ROUND_HALF_UP);
: System.out.println("0.1 + 0.2 - 0.3=" + resultRounded);
 => 0.1 + 0.2 - 0.3=0.00

When doing complex financial simulations, you don't want to round at all.

https://docs.oracle.com/javase/7/docs/api/java/math/RoundingMode.html
* Date and time
LocalDate to Date:
: Date date = Date.from(localDate.atStartOfDay(ZoneId.systemDefault()).toInstant());
** java.util - old
String to Date and Date to String:
#+BEGIN_SRC java
private static SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
Date d;
try {
	d = ft.parse(rs.getString("birthday"));
        String ds = ft.format(d);
} catch (ParseException e) {
	System.out.println("Unparseable using " + ft);
}
#+END_SRC
** java.time - JDK1.8
- LocalDate - birthday
- LocalTime - nanosecond precision
- LocalDateTime
- ZonedDateTime - it is recommended to use a simpler class without a time-zone. The widespread use of
  time-zones tends to add considerable complexity to an application.
: LocalDate.parse("2007-12-03") //year month day
* Inner Classes and nested classes
[ˈɪnə] [ˈklæsiːz]
- *Nested class* - static inner class
- Inner classes
- - Anonymous Inner classes
- - *Method local inner classes* can be instantiated only within the method.
- - Inner classes
** Anonymouse classes
: AnonymousInner an_inner = new AnonymousInner() {
:   public void my_method() {
:      ........
:   }
: };
May be used as method parameter.
** Inner classes
Можно создать только изнутри того где он, если private. Если public - то извне имея экземпляр ecnlosing
класса.

+ encapsulation, name hiding
+ при создании получает ссылку на класс в котором он и имеет доступ ко всему в нем.

OuterClass.this - ссылка на enclosing class внутри Inner

Cоздать public Inner Class:
: dn.new Inner(); //dn - экземпляр enclosing class

в нестатических методах вызывается OuterClass.InnerClass
*enclosing class* [ɪnˈkləʊz] - в котором он
* Clone and copy.
protected native Object clone() throws CloneNotSupportedException;
Чтобы не было CloneNotSupportedException нужно  implements java.lang,Cloneable, тогда:
: test = (Test)super.clone(); //окружая в try
Это *Shallow copy* копии имею ссылки на одни и те же объекты.
*deep copy* - клонирование всех объектов по ссылкам и в них тоже.

Object.clone() предполагает
 - x.clone() !=x
  -x.clone().equals(x) = true

* Reflection and  RTTI
*Runtime type information* Should be avoided.
Get java.lang.Class for type information:
1) final Class<?> Object.getClass()
2) Class.forName("ClassName")
3) at declaration time. ClassName.class - *class literals* at compile time.
4) Double.TYPE, Void.TYPE = void.class

*java.lang.reflect*

java.lang.reflect.Member	interface
java.lang.reflect.Field	implementation
java.lang.reflect.Method implementation
java.lang.reflect.Constructor	implementation
#+BEGIN_SRC java
Class<?> c = Class.forName(args[0]);
Field f = c.getField(args[1]); //Field class
#+END_SRC

** java.lang.Class<>T
An enum is a kind of class and an annotation is a kind of interface. Every array also belongs to a
class that is reflected as a Class object that is shared by all arrays with the same element type
and number of dimensions. The primitive Java types (boolean, byte, char, short, int, long, float,
and double), and the keyword void are also represented as Class objects.


* JDBC
https://docs.oracle.com/javase/tutorial/jdbc/basics/index.html

*java.sql.*

- Oracle JDBC is threadsafe
- https://jdbc.postgresql.org/documentation/head/thread.html
- The PostgreSQL™ JDBC driver is not thread safe. Any concurrent requests to the connection would have to be
  serialized(??). The driver makes no guarantees that methods on connections are synchronized. It will be up to
  the caller to synchronize calls to the driver.

A ResultSet object is automatically closed when the Statement object that generated it is closed, re-
 executed, or used to retrieve the next result from a sequence of multiple results.
-----
example
#+BEGIN_SRC java
PreparedStatement stmt;
Connection con;
try {
connection = DriverManager.getConnection(String url); //driver dependent //jdbc:subprotocol:subname
stmt = connection.prepareStatement("select");
}catch(SQLException e){
   log(e)
}


try {
  try(ResultSet rs = stmp.executeQuery;
    ResultSet rs2 = stmp.executeQuery;){ //try-with-resources (since SE7) - automatically close stmt
       while (rs.next())
  }
}catch(SQLException e){
   log(e)
}

//without autocommit. if we have several executeQuery.
try {
    con.setAutoCommit(false);
    stmp.executeQuery()
    con.commit();
}catch(SQLException e){
    log(e);
    if (con != null) {
        try {
            System.err.print("Transaction is being rolled back");
            con.rollback();
        } catch(SQLException e) {
            log(e);
        }
    }
    restartConnection(ex); //restart with counter
    return recursiveCall(); //retry
}finally{
  con.setAutoCommit(true);
}


#+END_SRC
-------
Types:
- The Java Date is: ~Tue Aug 18 13:46:02 GMT+04:00 2009~
- The SQL DATE is: ~2009-08-18~
- The SQL TIME is: ~13:46:02~
- The SQL TIMESTAMP is: ~2009-08-18 13:46:02.828~

Null:
1) Avoid using getXXX( ) methods that return primitive data types.
2) *wasNull( )* - test whether the received value was null
#+BEGIN_SRC java
//set
st,t.setNull(1, java.sql.Types.VARCHAR);
//get
ResultSet rs = stmt.executeQuery(sql);
int id = rs.getInt(1);
if( rs.wasNull( ) ) {
   id = 0;
}
#+END_SRC

* Hybernate
 - http://hibernate.org/orm/documentation/5.3/
 - http://docs.jboss.org/hibernate/orm/5.3/quickstart/html_single/
 - http://docs.jboss.org/hibernate/orm/current/userguide/html_single/Hibernate_User_Guide.html
 - tutpoint https://www.tutorialspoint.com/hibernate/hibernate_environment.htm
 - FAQ https://developer.jboss.org/en/hibernate/faq
 - Release http://hibernate.org/orm/releases/5.3/
 - API https://docs.jboss.org/hibernate/orm/5.3/javadocs/
 *Hibernate ORM* - tool for Java. Hibernate is concerned with data persistence as it applies to relational databases (via JDBC)

 - Classes -> tables
 - Java data types -> SQL data types

 Цель: быстрее чем с SQL и JDBC.

 - Hibernate may not be the best solution for data-centric applications that only use stored-procedures to
 implement the business logic in the database.
 - Most useful with object-oriented domain models and business logic in the Java-based middle-tier.

 In addition to its own "native" API, Hibernate is also an implementation of the Java Persistence API (JPA)
 specification. As such, it can be easily used in any environment supporting JPA including Java SE
 applications, Java EE application servers, Enterprise OSGi containers, etc.

 mapping metadata -?
 A technique to interact with transactional objects to perform
 dirty checking, ??
 lazy association fetching, - ??
 and other optimization functions.

 support for:
 - XDoclet Spring
 - J2EE app server with help of JNDI and JTA
 - Eclipse plug-ins
 - Maven

 Type mapping:
 - Hibernate cannot know if the property, which is of type java.util.Date, should map to a SQL DATE, TIME, or
 TIMESTAMP datatype.
 - If startup performance is important, consider explicitly defining the type to use.

 HQL/JPQL в Session.createQuery(

: @Column(name = "starts_at")
: private ZonedDateTime startsAt;
: @Column(name = "`name`") or JPA @Column(name = "\"name\"")
: private String name;
** Tags
*@Id* Идентификатор для Entity хотябы один какой нибудь должент быть

*@GeneratedValue* only integer types (short, int, long) will be portably supported. Hibernate will generate
 the value when the save/persist occurs.
Для portability prefer using the SEQUENCE generator over IDENTITY.

есть ещё JPA javax.persistence.SequenceGenerator

Универсальное решение:
#+BEGIN_SRC
       @Id
	@GenericGenerator(name = "XyzIdGenerator",
	        strategy = "myrest.IdGenerator")
	@GeneratedValue(generator = "XyzIdGenerator")
	private int id;


import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.IdentifierGenerator;

import myrest.entity.Job;
import myrest.entity.Project;

public class IdGenerator implements IdentifierGenerator {


@Override
public Serializable generate(SharedSessionContractImplementor session, Object object) throws HibernateException {

    Connection connection = session.connection();
    try {
    	PreparedStatement ps;
    	if(object instanceof Project) {
    		ps = connection
                    .prepareStatement("SELECT MAX(id) as vlaue from public.project");
    	}else if(object instanceof Job) {
    		ps = connection
                    .prepareStatement("SELECT MAX(id) as vlaue from public.job");
    	}else
    		return null;
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            int id = rs.getInt("vlaue") + 1;
            //String code = prefix + new Integer(id).toString();
            System.out.println("Generated Stock Code: " + id);
            return id;
        }

    } catch (SQLException e) {
        e.printStackTrace();
    }
    return null;
}

}
#+END_SRC
** Maven
Maven *org.hibernate* - groupId

- hibernate-core

- hibernate-entitymanager (3.3.2.GA)
- hibernate-validator (4.1.0.Final)
- hibernate-annotations (3.3.0.GA)

** Hibernate consist of:
- Configuration Object(database connection, Class Mapping Setup) ->
- SessionFactory Object - thread safe, per database ->
- Session Object - not usually thread safe - designed to be instantiated each time an interaction is needed
  with the database - Persistent objects are saved and retrieved through this. which should be thought of as a
  corollary to a "unit of work".
- Transaction Object - optional object - underlying transaction manager and transaction (from JDBC or JTA)
- Query Object - use SQL or Hibernate Query Language (HQL) string = used to bind query parameters, limit the
  number of results returned by the query, and finally to execute the query.
- Criteria Object - criteria queries ???????

** Requirements
- dom4j :: XML parsing
- Xalan :: XSLT Processor
- Xerces :: The Xerces Java Parser
- cglib :: changes to Java classes at runtime
- log4j :: .
- Commons :: Logging, Email etc.
- SLF4J :: Logging Facade for Java
** problems
 - if we need to modify the design of our database after having developed a few pages or our
 application
 - loading and storing objects in a relational database:
   + Granularity :: [ˌɡrænjʊˈlærɪtɪ]
   + Inheritance :: nothing similar
   + Identity :: RDBMS - key, java -  (a==b) and object equality (a.equals(b)).
   + Associations :: java - object references, RDBMS - foreign keys
   + Navigation :: access diff

 HQL (Hibernate Query Language) is the object-oriented version of SQL . It generates database independent queries

*Disabling contextual LOB creation as createClob() method threw error : java.lang.reflect.InvocationTargetException*
:        <property name="hibernate.temp.use_jdbc_metadata_defaults">false</property>
** Examples
- https://github.com/hibernate/hibernate-demos/blob/master/hibernate-orm/core/Basic/src/main/java/org/hibernate/brmeyer/demo/entity/Project.java

*** Hibernate configuration file
resources/hibernate.cfg.xml
#+BEGIN_SRC xml
<?xml version='1.0' encoding='utf-8'?>
<!--
  ~ Hibernate, Relational Persistence for Idiomatic Java
  ~
  ~ License: GNU Lesser General Public License (LGPL), version 2.1 or later.
  ~ See the lgpl.txt file in the root directory or <http://www.gnu.org/licenses/lgpl-2.1.html>.
  -->
<!DOCTYPE hibernate-configuration PUBLIC
        "-//Hibernate/Hibernate Configuration DTD 3.0//EN"
        "http://www.hibernate.org/dtd/hibernate-configuration-3.0.dtd">

<hibernate-configuration>

    <session-factory>

        <!-- Database connection settings -->
        <property name="connection.driver_class">org.h2.Driver</property>
        <property name="connection.url">jdbc:h2:mem:db1;DB_CLOSE_DELAY=-1;MVCC=TRUE</property>
        <property name="connection.username">sa</property>
        <property name="connection.password"></property>

        <!-- JDBC connection pool (use the built-in) -->
        <property name="connection.pool_size">1</property>

        <!-- SQL dialect -->
        <property name="dialect">org.hibernate.dialect.H2Dialect</property>

        <!-- Disable the second-level cache  -->
        <property name="cache.provider_class">org.hibernate.cache.internal.NoCacheProvider</property>

        <!-- Echo all executed SQL to stdout -->
        <property name="show_sql">true</property>

        <!-- Drop and re-create the database schema on startup -->
        <property name="hbm2ddl.auto">create</property>

        <!-- Names the annotated entity class -->
        <mapping class="org.hibernate.tutorial.annotations.Event"/>
        <!-- for xml based -->
        <mapping resource="org/hibernate/tutorial/hbm/Event.hbm.xml"/>

    </session-factory>

</hibernate-configuration>
#+END_SRC

*** XML
 Standard Java properties file called hibernate.properties, or as an XML file named resources/hibernate.cfg.xml:
 - mapping information
 - settings related to database and other related parameters

Main:
#+BEGIN_SRC java
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

	private SessionFactory sessionFactory;

	protected void setUp() throws Exception {
		// A SessionFactory is set up once for an application!
		final StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
				.configure() // configures settings from hibernate.cfg.xml
				.build();
		try {
			sessionFactory = new MetadataSources( registry ).buildMetadata().buildSessionFactory();
		}
		catch (Exception e) {
			// The registry would be destroyed by the SessionFactory, but we had trouble building the SessionFactory
			// so destroy it manually.
			StandardServiceRegistryBuilder.destroy( registry );
		}
	}
#+END_SRC

 java/org/hibernate/tutorial/hbm/Event.hbm.xml
 #+BEGIN_SRC xml
 <hibernate-mapping package="org.hibernate.tutorial.hbm">

     <class name="Event" table="EVENTS"> <!--EVENTS - table in db1  -->
         <id name="id" column="EVENT_ID">
             <generator class="increment"/>
         </id>
         <property name="date" type="timestamp" column="EVENT_DATE"/> <!-- type - Hibernate mapping types -->
         <property name="title"/>   <!-- column="title", type conversion automatically, but slow -->
     </class>

 </hibernate-mapping>
 #+END_SRC

 java/org/hibernate/tutorial/hbm/Event.java
 #+BEGIN_SRC java
 package org.hibernate.tutorial.hbm;

import java.util.Date;

public class Event {
	private Long id;

	private String title;
	private Date date;

	public Event() {
		// this form used by Hibernate
	}

	public Event(String title, Date date) {
		// for application use, to create new events
		this.title = title;
		this.date = date;
	}

	public Long getId() {
		return id;
	}

	private void setId(Long id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
}
 #+END_SRC

*** Example Annotation
resources/hibernate.cfg.xml
:     <mapping class="org.hibernate.tutorial.annotations.Event"/>

Main:
#+BEGIN_SRC java
  final Configuration configuration = new Configuration();
			  configuration.addAnnotatedClass( User.class );
			  configuration.addAnnotatedClass( Tool.class );
			  configuration.addAnnotatedClass( Skill.class );
			  configuration.addAnnotatedClass( Community.class );
			  configuration.addAnnotatedClass( Donation.class );
			  configuration.addAnnotatedClass( Comment.class );
			  configuration.addAnnotatedClass( ServiceEvent.class );
			  configuration.addAnnotatedClass( Project.class );

  SessionFactory sessionFactory = configuration.buildSessionFactory(
         new StandardServiceRegistryBuilder().build() );
#+END_SRC

 java/org/hibernate/tutorial/hbm/Event.java
#+BEGIN_SRC java
package org.hibernate.tutorial.annotations;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table( name = "EVENTS" )
public class Event {
    private Long id;

    private String title;
    private Date date;

	public Event() {
		// this form used by Hibernate
	}

	public Event(String title, Date date) {
		// for application use, to create new events
		this.title = title;
		this.date = date;
	}

	@Id
	@GeneratedValue(generator="increment")
	@GenericGenerator(name="increment", strategy = "increment")
    public Long getId() {
		return id;
    }

    private void setId(Long id) {
		this.id = id;
    }

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "EVENT_DATE")
    public Date getDate() {
		return date;
    }

    public void setDate(Date date) {
		this.date = date;
    }

    public String getTitle() {
		return title;
    }

    public void setTitle(String title) {
		this.title = title;
    }
}
#+END_SRC
** JPA alternative to hibernate.cfg.xml
JPA specification defines a different bootstrap process that uses its own configuration file named *persistence.xml*
entitymanager/src/test/resources/META-INF/persistence.xml

the persistence provider (Hibernate in this case)

persistence.xml files should provide a unique name for each "persistence unit". Applications use this name to
reference the configuration when obtaining an javax.persistence.EntityManagerFactory reference.
#+BEGIN_SRC xml
<persistence xmlns="http://java.sun.com/xml/ns/persistence"
             xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
             xsi:schemaLocation="http://java.sun.com/xml/ns/persistence http://java.sun.com/xml/ns/persistence/persistence_2_0.xsd"
             version="2.0">

    <persistence-unit name="org.hibernate.tutorial.jpa">
        <description>
            Persistence unit for the JPA tutorial of the Hibernate Getting Started Guide
        </description>

        <class>org.hibernate.tutorial.em.Event</class>

        <properties>
            <property name="javax.persistence.jdbc.driver" value="org.h2.Driver" />
            <property name="javax.persistence.jdbc.url" value="jdbc:h2:mem:db1;DB_CLOSE_DELAY=-1;MVCC=TRUE" />
            <property name="javax.persistence.jdbc.user" value="sa" />
            <property name="javax.persistence.jdbc.password" value="" />

            <property name="hibernate.show_sql" value="true" />
            <property name="hibernate.hbm2ddl.auto" value="create" />
        </properties>

    </persistence-unit>

</persistence>
#+END_SRC
#+BEGIN_SRC java
import java.util.Date;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
public class EntityManagerIllustrationTest extends TestCase {
	private EntityManagerFactory entityManagerFactory;

	@Override
	protected void setUp() throws Exception {
		// like discussed with regards to SessionFactory, an EntityManagerFactory is set up once for an application
		// 		IMPORTANT: notice how the name here matches the name we gave the persistence-unit in persistence.xml!
		entityManagerFactory = Persistence.createEntityManagerFactory( "org.hibernate.tutorial.jpa" );
	}

	@Override
	protected void tearDown() throws Exception {
		entityManagerFactory.close();
	}

	public void testBasicUsage() {
		// create a couple of events...
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.persist( new Event( "Our very first event!", new Date() ) );
		entityManager.persist( new Event( "A follow up event", new Date() ) );
		entityManager.getTransaction().commit();
		entityManager.close();

		// now lets pull events from the database and list them
		entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
        List<Event> result = entityManager.createQuery( "from Event", Event.class ).getResultList();
		for ( Event event : result ) {
			System.out.println( "Event (" + event.getDate() + ") : " + event.getTitle() );
		}
        entityManager.getTransaction().commit();
        entityManager.close();
	}
}
#+END_SRC
** Date and time
java.util.Date, should map to a SQL DATE, TIME, or TIMESTAMP datatype
#+BEGIN_SRC java
@Temporal(TemporalType.TIMESTAMP)
@Column(name = "EVENT_DATE")
public Date getDate() {
    return date;
}
#+END_SRC

LocalDate in Java 8
- https://www.thoughts-on-java.org/map-date-time-api-jpa-2-2/
- https://download.oracle.com/otndocs/jcp/jdbc-4_2-mrel2-eval-spec/index.html

| Java Type                | JDBC Type               |
|--------------------------+-------------------------|
| java.time.LocalDate      | DATE                    |
| java.time.LocalTime      | TIME                    |
| java.time.LocalDateTime  | TIMESTAMP               |
| java.time.OffsetTime     | TIME_WITH_TIMEZONE      |
| java.time.OffsetDateTime | TIMESTAMP_WITH_TIMEZONE |

** insert, select, HQL and JPQL
*Hibernate Query Language* (HQL) and *Java Persistence Query Language* (JPQL) - object focused query
 languages.
- JPQL subset of HQL
- non-type-safe, type-safe approach - use *Criteria*

 #+BEGIN_SRC java
 //insert
 Session session = sessionFactory.openSession();
 session.beginTransaction();
 session.save( new Event( "Our very first event!", new Date() ) );
 session.save( new Event( "A follow up event", new Date() ) );
 session.getTransaction().commit();
 session.close();


 //get
 session = sessionFactory.openSession();
 session.beginTransaction();
 List result = session.createQuery( "from Event" ).list(); //HQL Event - mapped class!
 for ( Event event : (List<Event>) result ) {
     System.out.println( "Event (" + event.getDate() + ") : " + event.getTitle() );
 }
 session.getTransaction().commit();
 session.close();
 #+END_SRC
-----------
*Parameters*
: :timestamp" ).setParameter( "timestamp", timestamp, TemporalType.DATE );
: "where p.name like ?1" ).setParameter( 1, "J%" );

--------------------
херня этот JPQL
- *Cannot create TypedQuery for query with more than one return using requested result type [myrest.Model.Project]*
- *org.hibernate.exception.SQLGrammarException: could not extract ResultSet*
** Envers APIs
#+BEGIN_SRC java
@Entity
@Table( name = "EVENTS" )
@Audited  // <--- this tell Envers to audit (track changes to) this entity
public class Event {


AuditReader reader = AuditReaderFactory.get( entityManager );
    Event firstRevision = reader.find( Event.class, 2L, 1 ); //id 1
    ...
    Event secondRevision = reader.find( Event.class, 2L, 2 ); //id2
#+END_SRC
** supported databases( database dialect )
Each database vendor uses a subset and superset of ANSI SQL defined syntax. Determine the proper Dialect to
use by asking some questions of the JDBC Connection during bootstrap.

*org.hibernate.dialect.Dialect*

*hibernate.dialect* - may be set manually

- 7.11 http://docs.jboss.org/hibernate/orm/5.3/userguide/html_single/Hibernate_User_Guide.html
- https://docs.jboss.org/hibernate/orm/5.3/javadocs/org/hibernate/dialect/package-summary.html

org.hibernate.dialect.:
- Caché
- CUBRID
- DB2
- Derby
- Firebird
- Frontbase
- H2
- SAP HANA database
- HyperSQL
- Informix
- Ingres
- Interbase
- JDataStore
- McKoi
- Mimer
- MySQL
- MariaDB
- Oracle
- Pointbaes
- PostgreSQL
- Progress
- SAPDB/MAXDB
- SQLServer
- Sybase
- Teradata
- TimesTen
** Associations
*@ManyToOne*
#+BEGIN_SRC java
class Phone {
        private int id;

	@ManyToOne
	@JoinColumn(name = "person_id",
			foreignKey = @ForeignKey(name = "PERSON_ID_FK")
	)
	private Person person;

ALTER TABLE Phone
ADD CONSTRAINT PERSON_ID_FK
FOREIGN KEY (person_id) REFERENCES Person
#+END_SRC
------------------
*@OneToMany*
: @OneToMany(mappedBy = "project", fetch = FetchType.LAZY) //project
: 	private List<Job> job = new ArrayList<>();
project - field in Job class. which has @ManyToOne - bidirectional mapping
** Thread-safe
- SessionFactory - should be only one. thread-safe.
- Seassin -  single-threaded, short-lived object
- Transaction  - single-threaded,  to demarcate individual physical transaction boundaries

** "junction table" problem
- https://stackoverflow.com/questions/3820897/jpa-entity-without-id
- https://en.wikibooks.org/wiki/Java_Persistence/Identity_and_Sequencing#No_Primary_Key

Solutions:
1) composite, multi-column primary key.
2) Id at any unique field.
3) create id field in class with @Id @GeneratedValue(strategy=GenerationType.NATIVE) ????
4) this code
: Criteria c = session.createCriteria(Product.class, "product");
: c.createAlias("product.categories", "category");
: c.add(Restrictions.eq("category.id", 3));
where Table (product_category) with foreigh keys p_id, c_id

** Common Errors
session.createQuery("from project");
*Immutable collections cannot be modified*
: @Column(name = "id_state", insertable = false, updatable = false)

*relation "hibernate_sequence" does not exist* In Postgres or Oracle, they use sequence tables. Since you
 didn't specify a sequence table name, it will look for a sequence table named hibernate_sequence

*(should be mapped with insert="false" update="false")* - repeated column:
: @Column(name = "id_state", insertable = false, updatable = false)

*5.10. Working with detached data*
- Объекты нужно аттачить к "persistence context".
- Есть несколько способов, но ошибку "reassociated object has dirty collection reference (or an array)" не обойти

* Collections
/Collection/ - subset of library. /Containers/ -more correctly.

*Collection* - object that group multiple *elements* (aggregate data) into a single unit (data items).
Cardinality [ˌkɑːdɪˈnælɪtɪ] - size.
** Basic Data structures and Time Complexity
https://infotechgems.blogspot.com/2011/11/java-collections-performance-time.html
- Sequence(tuple) : linked list, Stack(LIFO), Queue(FIFO)
- Dynamic arrays - imp. ArrayList
- Associative array (or map) (implementation hashtable)
- sorted table - Red-black tree(SortedSet, SortedMap).
- Trees

in java:
|                 | lookup by id | inser t  | remove i | contains   |
| Resizable array | O(1)         | O(1)     | O(n)     | O(n) value |
| Linked list     | O(n)         | O(1)     | O(1)     | O(n) value |
| Hash table      | O(1)         | O(1)     |          | O(1) key   |
| Red-black tree  | O(log n)     | O(log n) | O(log n) |            |
- Resizable array ::  Object[]
- Hash table + Linked list
- Bit Vector (EnumSet)
- Priority Heap
- Skip List

*Red-black tree (set/map)* - kind of Self-balancing binary search tree, fast lookup
- Сбалансированность достигается за счёт - красности или черности узла.
- Двои́чное де́рево - у каждого узла не более двух потомков

*Hash table* алгоритм разрешения коллизий *Метод цепочек* (Separate chaining). Each bucket has list.
- Constructor:
  - initial capacity :: number of buckets [ˈbʌkɪt](хэши). default(16), удваивается.
  - load factor :: measure of how full the hash table is allowed to get before its capacity is automatically
                   increased .default(.75). > - less memory, slow, < - more memory, faster.
** Arrays
fixed size, multidimentional.
: int[] anArray = new int[10]; //declaration and memory allocation
: System.arraycopy(copyFrom, 2, copyTo, 0, 7); //copy
 java.util.Arrays - copying, sorting and searching, comparing, filtering
** Architecture
- Interfaces :: in OOP generally form a hierarchy. to be manupulated independently of the details.
- Implementations :: .
- Algorithms :: searching, sorting on objects that implement interfaces.(*polymorphic*)
*** Interfaces
- Collection :: group of elements
  - Set :: no duplicate
    - SortedSet - natural ordering, полезен для range-view, first, last, и выбор comarator при создании
  - List :: with duplicate, ordered.  ~sequence~ когда нужен доступ по индексу
  - Queue :: [kjuː] ordered, FIFO mostly ~hold prior to processing~ do not allow null(e LinkedList)
    - BlockingQueue - with wait
  - Deque :: same, FIFO & LIFO both ~double-ended queue~ pronounced as deck

- Map :: maps keys to values. No duplicate keys.  	Map.Entry<K,V>
  - SortedMap :: как SortedSet по ключам
    - NavigableMap -  [ˈnævɪɡəbəl] добавлет методы выборки элементов относительно заданного, например выбрать
                      все x что 3<x<10 - subMap()
  - ConcurrentMap :: thread safety and atomicity guarantees.

*** Implementations
+ General-purpose
+ Special-purpose
+ Concurrent - to support high concurrency, typically at the expense of single-threaded performance _java.util.concurrent_
+ Wrappers - often for general-purpose, (e.g. for synchronization).
+ Convenience - convenient, efficient alternatives to general-purpose implementations for special collections
  (e singleton sets)
+ Abstract - skeletons for customs
**** Convenience Implementations
1) List<String> list = *Arrays.asList* (new String[size]); - *list view* - create new container.
OR Collections.nCopies(1000, (Type)null);
fixed size
cannot add or remove.
Very fast loop by index.

2) Immutable Singleton Set, List, Map
c.removeAll(Collections.singleton(e)); - Set.
one element

3) Empty Set, List, and Map Constants
Collections.emptySet()
**** General-purpose implementations
- All permit null elements.
- fail-fast iterators, which detect illegal concurrent modification during iteration
- All are Serializable and all support a public clone method
- Not thread-safe. For: single-threaded use, read-only use, and use as part of a larger data object that does
its own synchronization.

List: ordered, with duplicates ['djuːplɪkɪt]
- ArrayList :: быстро копировать для сортировки, объем увеличивается на 1.5 c JDK 7
- LinkedList :: add elements to the begining or iterate to delete. slow positional access. Doubly-linked list

Set: no duplicates
- HashSet :: best-performing, no order
- TreeSet :: red-black tree - order based on values, slower
- LinkedHashSet :: insertion order, slightly slower.

Map: no duplicates
- HashMap :: все O(1)
- TreeMap ::  все O(log n), ascending oreder
- LinkedHashMap :: все O(1), insert oreder.

of Queue:
- LinkedList - FIFO
- PriorityQueue - order according to their values.

of Deque:
- ArrayDeque
- LinkedList - Doubly-linked list

----
Sorted:
- TreeSet
- TreeMap
**** Wrappers
1) Synchronization wrappers.
 Collection, Set, List, Map, SortedSet, and SortedMap — has one static factory method
2) Unmodifiable Wrappers
another static factory method.
3) Dynamically type-safe.
: Collections.checkedSet(Set<E> s, Class<E> type)
ClassCastException exception if wrong type.
null accepted.
*** Algorithms
*List*:
- sort — sorts a List using a merge sort algorithm, which provides a fast, stable sort. (A stable sort is one
  that does not reorder equal elements.)
- shuffle — randomly permutes the elements in a List.
- reverse — reverses the order of the elements in a List.
- rotate — rotates all the elements in a List by a specified distance.
- swap — swaps the elements at specified positions in a List.
- replaceAll — replaces all occurrences of one specified value with another.
- fill — overwrites every element in a List with the specified value.
- copy — copies the source List into the destination List.
- binarySearch — searches for an element in an ordered List using the binary search algorithm.
- indexOfSubList — returns the index of the first sublist of one List that is equal to another.
- lastIndexOfSubList — returns the index of the last sublist of one List that is equal to another.

** Basic operations
- Collection: size(), isEmpty(), contains(Object), iterator(), add().
- Set:
- List: Positional(access. search), ListIterator(hasPrevious(),  previous(), set(),add())
- Queue: offer() - without exception, poll() - get head, element() - get but does not remove, peek() - get not
  remove without exception.
- Deque: Insert, Remove, Retrive. ~removeFirstOccurence()~
- Map: basic (put, get, remove, containsKey, containsValue), bulk (putAll, clear), views( keySet, entrySet,
  values)
- SortedSet: range-view, first, last, get comparator.
** Traversing Collection [ˈtrævɜːs]
1) for-each
#+BEGIN_SRC java
for (Object o : collection)
    System.out.println(o);
#+END_SRC
2) Iterator<E> Collection.iterator() ~[ˈɪtəˌreɪt]~
#+BEGIN_SRC java
public interface Iterator<E> {
    boolean hasNext(); //условие для продолжения
    E next();  //get
    void remove(); //only safe way to modify a collection during iteration
}
    for (Iterator<?> it = c.iterator(); it.hasNext(); )
        if (!cond(it.next()))
            it.remove();


 while (iter.hasNext()) {
        ? ii = i.next()
        if (ii = 2)
            i.remove()
    }
#+END_SRC
У Linked list есть descendingIterator(). В обратном порядке.x

3) Aggreage Operations (SE 8)
#+BEGIN_SRC java
  myShapesCollection.parallelStream() //or just .stream()
  .forEach(e -> System.out.println(e.getName()));

  String joined = elements.stream()
  .map(Object::toString)
  .collect(Collectors.joining(", "));
#+END_SRC

*Map*
Keys:
: for (Iterator<Type> it = m.keySet().iterator(); it.hasNext(); )
:    if (it.next().isBogus())
:        it.remove();
Key-value:
: for (Map.Entry<KeyType, ValType> e : m.entrySet())
:    System.out.println(e.getKey() + ": " + e.getValue());
** Sort
1.5
- java.util.Arrays.sort(Primitives[])  - *tuned quicksort* n*log(n) - faster
- java.util.Arrays.sort(Object[])  - *modified mergesort* n*log(n)
stable: equal elements will not be reordered as a result of the sort

1.7
- java.util.Arrays.sort(Primitives[])  - *Dual-Pivot Quicksort* O(n log(n))
java.util.Arrays.sort(Object[]) - *stable, adaptive, iterative mergesort*  n lg(n) (десятичный логарифм)
Dual-Pivot Quicksort
- Arrays.binarySearch поиск элемента, List должен быть заранее отсортирован. O(log n)
- Collections.sort(List<T> list)  - n2 log(n)  for linked list

Quicksort - 1) взять элемент 2) все меньше его - до, больше - после, 3) повторить
Merge sort - 1) сортировка пары 2) новая часть пары - из 2 предыдущих 3) повторить

*Comparable* interface - *natural ordering*.
*mutually comparable* - взаимно сравнимы e1.compareTo(e2)
| Class        | 	Natural Ordering                            |
|--------------+-----------------------------------------------------|
| Byte         | 	Signed numerical                            |
| Character    | 	Unsigned numerical                          |
| Long         | 	Signed numerical                            |
| Integer      | 	Signed numerical                            |
| Short        | 	Signed numerical                            |
| Double       | 	Signed numerical                            |
| Float        | 	Signed numerical                            |
| BigInteger   | 	Signed numerical                            |
| BigDecimal   | 	Signed numerical                            |
| Boolean      | 	Boolean.FALSE < Boolean.TRUE                |
| File         | 	System-dependent lexicographic on path name |
| String       | 	Lexicographic                               |
| Date         | 	Chronological                               |
| CollationKey | 	Locale-specific lexicographic               |

It is strongly recommended (though not required) that natural orderings be consistent with equals. Elements
of set or map must be immutable:
- equal() = true когда copareTo = 0.
- hashCode() - Equal objects must have equal hash codes.
#+BEGIN_SRC  java
Collections.sort(list, comparator)

static final Comparator<Employee> SENIORITY_ORDER =
                                        new Comparator<Employee>() {
            public int compare(Employee e1, Employee e2) {
                return e2.hireDate().compareTo(e1.hireDate());
            }
    };
Collections.sort(e, SENIORITY_ORDER);
#+END_SRC
** Collections.binarySearch
: int binarySearch(List<? extends Comparable<? super T>> list, T key)
List must be sorted into ascending order according to the natural ordering of its elements
Разделяя на две части - самый быстрый способ.

if not RandomAccess interface.
O(n) link traversals and O(log n) element comparisons.

good for ArrayList, AttributeList, CopyOnWriteArrayList, RoleList, RoleUnresolvedList, Stack, Vector
** To knew
- conversion constructor :: all general-purpose collection implementations have a constructor that takes a
     Collection argument.
- mutation :: When using the new aggregate operations and lambda expressions, you must take care to avoid mutation so as not
to introduce problems in the future, should your code be run later from a parallel stream.

Always refer to implementation by generic interface.

Set - prohibition is that it is not permissible for a set to contain itself as an element.

Remove duplicates:
: Collection<Type> noDups = new HashSet<Type>(c);

Preserves the order of the original collection while removing duplicate elements:
: Collection<Type> noDups = new LinkedHashSet<Type>(c);

Переопределил equals() должен переопределить и hashcode()

*1 byte в LinkedList.* Node : 3 ссылки- следующий, предыдущий и на объект. 32bits(4 byte)*3=12 + Сам объект
 Node - 8 байт. = 20. Размер каждого объекта в Java кратен 8. = 24. + Упакованный байт = 8 байт = около
 32байт.

*1 byte в ArrayList* = 1байт

**  Desigion making
Rule: you should be thinking about the interfaces, not the implementations.

Primitives? Fixed size? - *Arrays*. Not Primitives? *Convenience Implementations*
Rarely modified but frequently iterated. *CopyOnWriteArraySet* or list - totally unmodifiable.

** TODO multimap
 each key to multiple values
 : Map<String, List<String>> m = new HashMap<String, List<String>>();
 : m.put(alpha, l=new ArrayList<String>()); //List<String> l;
** Tuples or Pairs
intefcace *Map.Entry<K,V>* implementations:
- AbstractMap.SimpleEntry
- AbstractMap.SimpleImmutableEntry

** Симметричная разность
множество элементов, одновременно не принадлежащих обоим исходным коллекциям
: c = ArrayList-A.retainAll(B) // пересечение A и B
: a.addAll(b) //объединяем
: a.removeAll(c).

* Spring
https://docs.spring.io/spring/docs/5.0.x/spring-framework-reference/

** Base
2003 as a response to the complexity of the early J2EE.  It integrates with carefully selected individual
specifications from the EE umbrella.

Spring  family of projects - Pivotal Software.

Spring projects have been built on top of the Spring Framework

*Spring Framework* - *app. framework* and inversion of control *container*.

As addition or replacement to *Enterprise JavaBeans (EJB)* model.

Независимость классов друг от друга нужна для:
to reuse
to test

Early app server. Today, with the help of Spring Boot, applications are created in a *devops*- and *cloud-friendly* way.

The *ApplicationContext* container includes all functionality
: org.springframework.context.ApplicationContext interface
** Core Doc

*managed objects or beans or Spring Beans* - описываются XML или анотацией или in-code - bean definition -
metadata. из POJO.  _Object managed by the Spring IoC container._

Bean создается:
 - dependency lookup :: вызывающий спрашивает контейнер дать bean по имени ил типу (Locator pattern).
 - dependency injection :: контейнер передает объекты по имени другим объектам через конструктор,
      свойство или *Factory method*

*org.springframework.beans*
*org.springframework.context*

org.springframework.beans.factory. *BeanFactory* interface - configuration framework and basic
functionality

org.springframework.context. *ApplicationContext* interface and *WebApplicationContext* - adds more
enterprise-specific functionality.
-  instantiating, configuring, and assembling beans.

** Projects
Spring Boot, Spring Security, Spring Data, Spring Cloud, Spring Batch.
** Used specifications
*** Servlet API (JSR 340)
Java software component that extends the capabilities of a server
*javax.servlet* and javax.servlet.http

 the contracts between a servlet class and the runtime environment provided for an instance of such
 a class by a conforming *servlet container* -  component of a web server for Java servlets
The *Web container* creates servlet instances, handles requests to servlets.
*For hosting web applications on web servers.*

Servlet must implement the *java.servlet.Servlet* interface
or  extend *javax.servlet.GenericServlet* or *javax.servlet.http.HttpServlte* class
**** Generic Servlet
public abstract void service(ServletRequest request, ServletResponse response)
         throws ServletException, java.io.IOException
client -> server -> service ()
**** HTTP Servlet
overrides one or more of methods:
- doGet() - HTTP GET
- doPost()
- init() and destroy()

*** WebSocket API (JSR 356)
WebSocket - protocol - full-duplex over single TCP connection.
Compatible with HTTP. (HTTP - not fill-duplex)

WebSocket protocol enables interaction between a web client (such as a browser) and a web server
with lower overheads, facilitating real-time data transfer from and to the server.
*** Concurrency Utilities (JSR 236)
*** TODO JSON Binding API (JSR 367)
*** Bean Validation (JSR 303)
javax.validation
public class User {
     @NotNull(message = "Name cannot be null")
    private String name;

    @AssertTrue
    private boolean working;

    @Size(min = 10, max = 200, message
      = "About Me must be between 10 and 200 characters")
    private String aboutMe;
}
*** JPA (JSR 338)
Java Persistence AP
 * javax.persistence

 * Java Persistence Query Language (JPQL)
is based on early Hibernate
 * object/relational metadata
*** JMS (JSR 914)
Java Message Service

It allows the communication between different components of a distributed application to be loosely
coupled, *reliable*, and *asynchronous*.

exchange of messages between software components
two models:
    Point-to-point
    Publish-and-subscribe
*** JTA/JCA setups for transaction coordination, if necessary.
The Java Transaction API *javax.transaction*
distributed transactions, that is, transactions that access and update data on two or more networked computer resources

app -> app server -> jdbc -> database

*Java Connector Architecture*
defines a standard architecture (connect?)to external heterogeneous Enterprise Information Systems (EIS)
EISs include Enterprise Resource Planning (ERP) systems, mainframe transaction processing (TP),
databases and messaging systems

Resource adapter is often provided by EIS vendors to allow easy integration of their products with Java EE applications
*** Dependency Injection (JSR 330)
http://www.java-tv.com/2012/08/06/standardized-dependency-injection-in-java/
in JEE 6  its own DI - CDI JSR-299

JSR 330 - to provide standardized DI for Java SE with effectively 100 percent support from all major
players in that space - Guice, Spring, and PicoContainer

*javax.inject* This package specifies a means for obtaining objects in such a way as to maximize
reusability, testability and maintainability compared to traditional approaches such as
constructors, factories, and service locators (e.g., JNDI).

package simply provides an interface and several annotation types. You wouldn’t typically implement
these yourself unless you’re creating your own JSR-330 compatible IoC container

Guice, Spring -  IoC container implementations

hard dependen:
: String a = new String();
no hard dep:
: public MyClass(Logger logger) {
:    this.logger = logger;
: }

| @Named  | @Component |                               |
| @Inject | @Autowired | Constructors, methods, fields |

@Inject что
@Qualifier
@Named specific @Qualifier to qualify injected objects by their namse

- There can only be one constructor in a class with an @Inject annotation.
Avoiding dependency injection on static fields and methods is a good practice.
- Static fields will be injected after the first object of the class was created via DI, which means no access to the static field in the constructor
- Static fields can not be marked as final, otherwise the compiler or the application complains at runtime about them
- Static methods are called only once after the first instance of the class was created

*best practice* to use constructor injection for setting mandatory dependencies for a class and to use
setter injection for nonmandatory dependencies, such as fields that already have sensible defaults.

Inject fields sucks becouse of Unit testing problems.

*** Common Annotations (JSR 250) specifications

** MODULES
 - Spring Core Container :: BeanFactory and ApplicationContext
 - Aspect-oriented programming :
 - Authentication and authorization :: via  Spring Security sub-project
 - Convention over configuration ::  offered in the Spring Roo module
 - Data access :: using JDBC and ORM tools and NoSQL databases
 - Inversion of control container ::
** TODO
– What is the benefit of centralized lifecycle management
to reuse
to test
– Programming to interfaces
– Leveraging the power of proxies
– Understanding the template pattern
* MAVEN
- build automation tool  - фреймворк для автоматизации сборки
- Maven is a plugin execution framework
- we can build and manage any Java based project

Ant имеративная сборка, Maven - декларативная

*Convention over configuration* принцип, редактируется то что не укладывается в соглашение
** Repositories
- Central Maven Repository (effective pom)  - http://search.maven.org/
- Java.Net Maven repositories - http://maven.java.net/
** pom
#+BEGIN_SRC xml
<project xmlns="http://maven.apache.org/POM/4.0.0"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<groupId>org.apache.maven.plugins</groupId> <!-- folder of projects-->
	<artifactId>job1</artifactId> <!-- name of a jar -->
	<version>0.0.1-SNAPSHOT</version>

  <properties>
    <maven.compiler.source>1.8</maven.compiler.source>
    <maven.compiler.target>1.8</maven.compiler.target>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
  </properties>

  <dependencies>
	<dependency>
		<groupId>junit</groupId>
		<artifactId>junit</artifactId>
		<version>4.12</version>
		<scope>test</scope>
	</dependency>
  </dependencies>

  <build>
		<plugins>
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-assembly-plugin</artifactId>
				<version>3.1.0</version>
				<configuration>
					<descriptorRefs>
						<descriptorRef>jar-with-dependencies</descriptorRef>
					</descriptorRefs>
					<archive>
						<manifest>
							<mainClass>org.hibpost.Main</mainClass>
						</manifest>
					</archive>
				</configuration>
				<executions>
					<execution>
						<id>create-my-bundle</id>
						<phase>package</phase>
						<goals>
							<goal>single</goal>
						</goals>
					</execution>
				</executions>
			</plugin>
		</plugins>
	</build>

</project>
#+END_SRC
** Gradle
Направленный ациклический граф или направленный лес

 орграф, в котором отсутствуют направленные циклы, но могут быть «параллельные» пути, выходящие из
 одного узла и разными путями приходящие в конечный узел.

Следит за изменениями файлов

* Testing  JUNIT
 unit testing framework for the Java

- The Surefire Plugin is used during the test phase of the build lifecycle to execute the unit tests of an
  application. (see Effective POM).

*Test suite* - Running a test suite executes all test classes in that suite in the specified order.
** theory [ˈθɪərɪ]
Software test - piece of software thich executes another piece of software
state testuing - result. behavior - expected sequence of events.
*1) Unit testing*
without dependencies (in isolation)

unit - class or method

*test doubles* - replacements for real dependencies:
 - dummy object :: passed around but never used
 - Fake :: objects have working implementations, but are usually simplified
 - stub :: class !partial implementation for an interface or class with the purpose of using an
           instance of this stub class during testing. Also used for recording calls.
 - mock :: object! dummy implementation for an interface or a class in which you define the output
           of certain method calls. May record the interaction with the system. Mock is an English
           word which means to mimic or to imitate.

*TDD Test-Driven Development* - test before code

*2) Integration tests*
component or the integration between a set of components.
test of dependencies.
*3) Performace tests*
are used to benchmark [ˈbɛntʃˌmɑːk] software components repeatedly.
benchmark - тест производительности, система тестирования производительности.
** name convetion and exmaple
Maven Surefire Plugin scan
- \**/Test*.java
- **/*Test.java
- **/*Tests.java
- **/*TestCase.java

for JUNIT 4.12
- use *should* in test - public void ordersShouldBeCreated (){
#+BEGIN_SRC java
package job1;

import static org.junit.Assert.assertEquals;
import java.util.List;
import org.junit.Test;

public class TestMain {

	@Test
	public void RangeToList4Test(){
		List<String> IPs = Main.getListFromRange("192.168.0.1", "192.168.0.3");
		assertEquals(IPs.size(), 3);
		assertEquals(IPs.contains("192.168.0.1"), true);
		assertEquals(IPs.contains("192.168.0.2"), true);
		assertEquals(IPs.contains("192.168.0.3"), true);
	}

	@Test
	public void RangeToList3Test(){
		List<String> IPs = Main.getListFromRange("192.168.0.1", "192.168.1.3");
		assertEquals(IPs.size(), 258);
		assertEquals(IPs.contains("192.168.0.255"), true);
		assertEquals(IPs.contains("192.168.0.2"), true);
		assertEquals(IPs.contains("192.168.1.2"), true);
		assertEquals(IPs.contains("192.168.1.3"), true);
	}

}
#+END_SRC

** assert
- fail([message])
- assertTrue([message,] boolean condition)
- assertFalse([message,] boolean condition)
- Checks that the boolean condition is false.
- assertEquals([message,] expected, actual)
- assertEquals([message,] expected, actual, tolerance) //for float - The tolerance is the number of decimals
  which must be the sam
- assertNull([message,] object)
- assertNotNull([message,] object)
- assertSame([message,] expected, actual) //Checks that both variables refer to the same object.
- assertNotSame([message,] expected, actual)
** mockito
Mockito is a popular mock framework


* Plain Old Java Objects (POJOs), JavaBeans, Enterprise Java Beans(EJB), CDI Bean, Spring Bean
*POJOs* - Java object which does not follow any of the major Java object models, conventions, or frameworks;

*EJB* is a server-side software component that encapsulates business logic of an application. In Application
server with EJB container.
When you need it:
 - you may need to distribute an application’s components across multiple machines.
 - Transactions must ensure data integrity.
 - remote clients can easily locate enterprise beans. These clients can be thin, various, and numerous

** JavaBeans
https://www.oracle.com/technetwork/java/javase/documentation/spec-136004.html

Used in

Architecture.  is a POJO that is serializable, has a no-argument constructor, and allows access to properties
 using getter and setter methods that follow a simple naming convention.

The required conventions are as follows:
- must have a public default constructor (with no arguments).
- The class properties must be accessible using get, set, is (can be used for boolean properties instead of
  get), to and other methods (so-called accessor methods and mutator methods) according to a standard naming
  convention. This allows easy automated inspection and updating of bean state within frameworks, many of
  which include custom editors for various types of properties. Setters can have one or more than one
  argument.
- The class should be serializable.


MUST implement the Serializable interface.
*java.beans* J2SE
Reusable software component written in JAVA that can be manipulated visually in an application builder tool
#+BEGIN_SRC java
public class PersonBean implements java.io.Serializable {
    private String name;
    private boolean deceased;

    // Методы геттеры (get) и сеттеры (set)
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public boolean isDeceased() {
        return deceased;
    }
    public void setDeceased(boolean deceased) {
        this.deceased = deceased;
    }

    //Переопределенные методы equals() и hashCode()
    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }

        if (o == null || getClass() != o.getClass()) {
            return false;
        }

        PersonBean that = (PersonBean) o;

        if (deceased != that.deceased) {
            return false;
        }

        return !(name != null ? !name.equals(that.name) : that.name != null);
    }


    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + (deceased ? 1 : 0);
        return result;
    }

    //Переопределенный метод toString()
    @Override
    public String toString() {
        return "PersonBean{" +
                "name='" + name + '\'' +
                ", deceased=" + deceased +
                '}';
    }
}
#+END_SRC
* Servlet
a Java software component that extends the capabilities of a web server. Run in *Web container*.
Most commonly implement web containers for hosting web applications on web servers.

Аналог PHP, ASP.NET

Tomcat - Java Servlet Container
* Java EE
- Servlet 	3.0 	3.1 	4.0
- JavaServer Pages (JSP) 	2.2 	2.3 	2.3
- Unified Expression Language (EL) 	2.2 	3.0 	3.0
- Debugging Support for Other Languages (JSR-45) 	1.0 	1.0 	1.0
- JavaServer Pages Standard Tag Library (JSTL) 	1.2 	1.2 	1.2
- JavaServer Faces (JSF) 	2.0 	2.2 	2.3
- Java API for RESTful Web Services (JAX-RS) 	1.1 	2.0 	2.1
- Java API for WebSocket (WebSocket) 	n/a 	1.0 	1.1
- Java API for JSON Processing (JSON-P) 	n/a 	1.0 	1.1
- Common Annotations for the Java Platform (JSR-250) 	1.1 	1.2 	1.3
- Enterprise JavaBeans (EJB) 	3.1 Lite 	3.2 Lite 	3.2
- Java Transaction API (JTA) 	1.1 	1.2 	1.2
- Java Persistence API (JPA) 	2.0 	2.1 	2.2
- Bean Validation 	1.0 	1.1 	2.0
- Managed Beans 	1.0 	1.0 	1.0
- Interceptors 	1.1 	1.2 	1.2
- Contexts and Dependency Injection for the Java EE Platform 	1.0 	1.1 	2.0
- Dependency Injection for Java 	1.0 	1.0 	1.0
* Java SE 8 новоe
https://www.tutorialspoint.com/java8/index.htm
https://www.javacodegeeks.com/2014/04/15-must-read-java-8-tutorials.html
https://www.javacodegeeks.com/2014/03/8-new-features-for-java-8.html

Multicore CPUs has separate caches to each core. Locking requires these to be synchronized = slow
cache-coherentcy-protocol intercore communication.

1. The Streams API *java.util.stream*
   - Parallel Array Operations
2. Tech for passing code to methods. Opens Functional-style programming. /behavior parameterization/
   - method reference "::"
   - Lambda Expressions
3. Type Anotations
4. Default methods in interface (List/Collection interface can have a default implementation of forEach method)
5. invokeDynamic to provide JVM-level speed to JavaScript execution
6. new Date/ time APIs
7. LongAccumulator - Concurrent Counters
8. Base64

----
- java.util.Arrays.parallelSort()
- Больше для Concurrency  java.util.concurrent
** Type anotations
- https://checkerframework.org/jsr308/specification/java-annotation-design.html
- https://docs.oracle.com/javase/tutorial/java/annotations/type_annotations.html
Before SE 8 annotations could only be applied to declarations. Now annotations can also be applied to any type
use.

This includes the new operator, type casts, implements clauses and throws clauses. Type Annotations allow
improved analysis of Java code and can ensure even stronger type checking.

Java 8 only provides the ability to define these types of annotations. It is then up to framework and tool
developers to actually make use of it.
** lambda expression - evolution of anonymous classes
- https://www.oracle.com/webfolder/technetwork/tutorials/obe/java/Lambda-QuickStart/index.html
Это более компактная форма single-method class

- Optional type declaration
- Optional parenthesis around single parameter
- Optional curly braces
- Optional return keyword
#+BEGIN_SRC java
@FunctionalInterface //просто показывает всем, что это для лямбд
interface MathOperation { //интерфейс который реализует наша lambda expression
      int operation(int a, int b);
}

 MathOperation multiplication = (int a, int b) -> { return a * b; };
 MathOperation multiplication = a -> a++; //MathOperation - *target type*
#+END_SRC

the Java compiler uses the target type of the context or situation in which the lambda expression was found.

*java.util.function* Предопределенные функциональные интерфейсы:
- Predicate<T> - one argument, return boolean.
- Consumer<T> - one argument, no return.
- Supplier<T> - no argument, return result.
- Function<T,R> - one argument, return result.
- UnaryOperator<T> extends Function<T,T> - one argument, return same type return
- BiConsumer<T,U> - no return.
- BiFunction<T,U,R> - two arguments, return result.
- BinaryOperator<T> extends BiFunction<T,T,T> - two operands of the same type, return same type

*Lambda vs Closure*
Closure It makes it possible for a function to have "private" variables. Lambda is not indendet for that.
** Method reference
- Static methods
- Instance methods
- Constructors using new operator (TreeSet::new)
** defaut method in interface  + static methods
added for backward compatibility so that old interfaces can be used to leverage the lambda expression capability

public interface vehicle {
   default void print() {
      System.out.println("I am a vehicle!");
   }
}

** Collection
  Collection interface: Stream<E> stream() and Stream<E> parallelStream(), for obtaining sequential or
parallel streams from the underlying collection.
Aggregate operations - over collections.

: Collection.sort( comparing(Apple::getWeight));


| filter   | Intermediate | Stream<T> | Predicate<T>   | T -> boolean  |
| map      | Intermediate | Stream<R> | Function<T, R> | T -> R        |
| limit    | Intermediate | Stream<T> |                |               |
| sorted   | Intermediate | Stream<T> | Comparator<T>  | (T, T) -> int |
| distinct | Intermediate | Stream<T> |                |               |

** TODO Functional Programming Patterns
http://www.defmacro.org/2006/06/19/fp.html
https://dzone.com/articles/functional-programming-patterns-with-java-8

* Javadoc
https://www.oracle.com/technetwork/java/javase/documentation/index-137868.html

FAQ https://www.oracle.com/technetwork/java/javase/documentation/index-137483.html

TAGS https://docs.oracle.com/javase/7/docs/technotes/tools/windows/javadoc.html
- API documentation (API docs) or API specifications (API specs) :: On-line or hardcopy descriptions of the API.
- Documentation comments (doc comments) :: /** ... */
- javadoc :: tool for generate

It is made up of two parts -- a description followed by block tags.


** @see
@see #field
@see #Constructor(Type, Type...)
@see #Constructor(Type id, Type id...)
@see #method(Type, Type,...)
@see #method(Type id, Type, id...)
@see Class
@see Class#field
@see Class#Constructor(Type, Type...)
@see Class#Constructor(Type id, Type id)
@see Class#method(Type, Type,...)
@see Class#method(Type id, Type id,...)
@see package.Class
@see package.Class#field
@see package.Class#Constructor(Type, Type...)
@see package.Class#Constructor(Type id, Type id)
@see package.Class#method(Type, Type,...)
@see package.Class#method(Type id, Type, id)
@see package

** {@code text}
Equivalent to <code>{@literal}</code>.
** @throws
should be listed alphabetically by the exception names.
** @author
tags should be listed in chronological order, with the creator of the class listed at the top.
** example
*** method
#+BEGIN_SRC java
/**
 * Returns an Image object that can then be painted on the screen.
 * The url argument must specify an absolute {@link URL}. The name
 * argument is a specifier that is relative to the url argument.
 * <p>
 * This method always returns immediately, whether or not the
 * image exists. When this applet attempts to draw the image on
 * the screen, the data will be loaded. The graphics primitives
 * that draw the image will incrementally paint on the screen.
 *
 * @param  url  an absolute URL giving the base location of the image
 * @param  name the location of the image, relative to the url argument
 * @return      the image at the specified URL
 * @throws      IOException
 *              If the <tt>format</tt> is <tt>null</tt>
 *
 * @return      the image at the specified URL
 * @see         package.Class#method(Type, Type,...)
 */
 public Image getImage(URL url, String name) throws IOException  {
        try {
            return getImage(new URL(url, name));
        } catch (MalformedURLException e) {
            return null;
        }
 }
//OR
/**
 Returns an Image object that can then be painted on the screen.
 <p>
 This method always returns immediately, whether or not the

 @param  url  an absolute URL giving the base location of the image
 */
#+END_SRC
*** class
#+BEGIN_SRC java
/**
 * A class representing a window on the screen.
 * For example:
 * <pre>
 *    Window win = new Window(parent);
 *    win.show();
 * </pre>
 *
 * @author  Sami Shaio
 * @version %I%, %G%
 * @see     java.awt.BaseWindow
 * @see     java.awt.Button
 */
class Window extends BaseWindow {
   ...
}
#+END_SRC
* Web related
** HTML
- HTML 3.2 https://www.w3.org/TR/2018/SPSD-html32-20180315/
- HTML latest spec https://www.w3.org/TR/html/
HTML Hypertext Markup Language (HTML) [ˈhaɪpə,tɛkst] [mɑrkʌp] [ˈlæŋɡwɪdʒ]

 *Hypertext* is text displayed on a computer display or other electronic devices with references (hyperlinks)
 to other text

- *parent* - <div><span></span></div>  - div - parent for span
*** history
- if standard - каждый браузер одинаково отображает
Published:
- HTML 2.0 - 1995 - defines HTML as MIME Content Type called "text/html"
- HTML 3.2 - 1997 -  tables, applets, text flow around images, superscripts and subscripts
- HTML 4.0 - 1997 - Advanced Tables, Frames
- HTML 5.0 - 2008-2014   stable W3C Recommendation
*** terms
- HTML *element* - whole object <a>... </a>
- *tag* - start tag <a>, end tag </a>
- *attribute* - <a href=
- *value* - class="foo" - "foo" - string value!  HTML5 standard does not require quotes. " " - recomended. ' ' -
  required for 'John "ShotGun" Nelson'
- comment  <!-- ... -->
*** Core Attributes
- ID -  uniquely identifies an element
- CLASS - to be a member of one or more classes
- STYLE
- TITLE - "tooltip" on visual browsers - most useful with A, AREA, LINK, and IMG elements
*** HTML site template
#+BEGIN_SRC html
<!DOCTYPE html>
<html>
  <head>
    <title>Page Title</title>
    <meta charset="UTF-8">
    <meta name="Description" content="Well organized and easy to understand Web building tutorials with lots of examples of how to use HTML, CSS, JavaScript, SQL, PHP, and XML.">
    <meta name="Keywords" content="HTML,CSS,JavaScript,SQL,PHP,jQuery,XML,DOM,Bootstrap,Python,Web development,W3C,tutorials,programming,training,learning,quiz,primer,lessons,references,examples,exercises,source code,colors,demos,tips">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="media/css/style.css" />
    <!-- or --> <link rel="stylesheet" href="/w3css/4/w3.css">
    <script async="async" type="text/javascript" src="//static.h-bid.com/w3schools.com/20180525/snhb-w3schools.min.js"></script>
    <style>
    <!-- выше приоритет -->
    </style>
    <script>
    </script>
  </head>

  <body>
    <h1>My First Heading</h1>
    <p>My first paragraph.</p>
    <a href="https://www.w3schools.com">This is a link</a>
    <img src="img_girl.jpg" alt="Girl in a jacket">
  </body>
</html>
#+END_SRC
*** HTML Layouts [ˈleɪaʊt] верстки
Это планировка - Header, Footer, Columns, Rows
1. HTML Tables - not recomended <table> <tr>
2. Семантическая верстка HTML5 <header> <nav> <section> <article> <aside> <footer>
3. Блочная верстка <div>, <span> element is used for grouping elements at an inline level. Использует CSS:
   - CSS float property <div style = "float:left;" >
   - CSS flexbox (new layout mode in CSS3) 2017
   - CSS grid. Page divided into columns
   - CSS framework: W3.CSS, Bootstrap

Major CSS properties:
*1) Position*
- static	Follows the normal flow in a layout. top, right, bottom, and left have no effect. Default.
- relative	Position is offset from the initial position.
- absolute Taken out of the flow and positioned in relation to the containing box.
- fixed	 Taken out of the flow and positioned in relation to the viewport. It will not scroll with the rest of the page’s content.
- inherit
- initial
- unset
*2) CSS overflow* what happens if content overflows an element's box
- visible - Default. The overflow is not clipped. It renders outside the element's box
- hidden - The overflow is clipped, and the rest of the content will be invisible
- scroll - The overflow is clipped, but a scrollbar is added to see the rest of the content
- auto - If overflow is clipped, a scrollbar should be added to see the rest of the content
*3) float and clear*
- float - used with text - left right none inherit
- clear -??
*4) display* с текстом два блока - inline, inline-block, block

*** HTML5 and SPA
HTML5 has both a regular text/html serialization and an XML serialization, which is also known as XHTML5

New:
- user-defined attibutes

 - XMLHttpRequest - object is provided by the browser's JavaScript environment. Transfer data between a web
   browser and a web server
 - WebSocket - HTML5 - communications protocol, providing full-duplex channels over single TCP connection
 - Server-sent events - HTML5 - cross-browser streaming through a JavaScript API called EventSource
*** frames and iframes
Способ отображения нескольких страниц в одном окне

frames - deprecated - API страницы
#+BEGIN_SRC html
<FRAMESET cols="20%, 80%">
  <FRAMESET rows="100, 200">
      <FRAME src="contents_of_frame1.html"> <!--1 -->
      <FRAME src="contents_of_frame2.gif"> <!--2 -->
  </FRAMESET>
  <FRAME src="contents_of_frame3.html">  <!-- 3 -->
  <NOFRAMES>

  </NOFRAMES>
#+END_SRC

iframes - <iframe src="URL"></iframe>

object
#+BEGIN_SRC html
<object type="text/html" width="300" height="300" data="https://www.w3schools.com/tags/tag_object.asp">
</object>
#+END_SRC
*** XHTML
- XHTML is an application of XML, a more restrictive subset of SGML.
- well-formed and may therefore be parsed using standard XML parsers
- XHTML5 is being developed as an XML adaptation of the HTML5 specification
*** <object>  embedded object
#+BEGIN_SRC html
<!--  -->
<object data="flashmovie.swf" width="600" height="800" type="application/x-shockwave-flash">
Please install the Shockwave plugin to watch this movie.
</object>

<!--внедряем в страницу видео с использованием парного тега <object>-->
<object width = "320" height = "240" data = "https://www.youtube.com/embed/d9TpRfDdyU0">
</object>
<!--внедряем в страницу видео с использованием тега <embed>-->
<embed  width = "320" height = "240" src = "https://www.youtube.com/embed/d9TpRfDdyU0">
#+END_SRC
*** forms
input - может быть вне form. Type аттрибут:
- "button|checkbox|file|hidden|image|password|radio|reset|submit|text"

Эллементы в form
- button
- input
- label
- output - Определяет область в которую выводится информация, преимущественно с помощью скриптов.
- select <option - drop-down list
- textarea

Атрибуты:
- method :: "get" or "post" используется в javascript document.forms['form1'].nick.value nick - name аттрибут
            у input
- action :: action="handler.php" - resource in request line GET /images/logo.png HTTP/1.1 see [[./Theory::HTTP]]
- enctype :: (only for method="post") Content-Type: application/x-www-form-urlencoded
- accept-charset :: default - "UNKNOWN" (indicates that the encoding equals the encoding of the document
                    containing the <form> element). список кодировок символов, с которыми может работать
                    серверный обработчик данных формы.  The more widely a character encoding is used, the
                    better the chance that a browser will understand it.
- autocomplete :: (5)on off производит браузер, который запоминает написанные при первом вводе значения
- novalidate :: (5) form novalidate="novalidate" Specifies that the form should not be validated when
                submitted.
- target :: specifies  where to display the response after submitting the form
  - _blank :: The response is displayed in a new window or tab
  - _self :: The response is displayed in the same frame (this is default)
iFrames:
  - _parent :: The response is displayed in the parent frame
  - _top :: The response is displayed in the full body of the window
  - framename :: The response is displayed in a named iframe
#+BEGIN_SRC html
<form action="form_handler.php" method="GET">
   User Name: <input name="firstname" type="text" />
   <input type="submit" value="Submit" />
</form>
#+END_SRC
*** favicon - значок сайта для браузера
: <head><link rel="icon" type="image/png" href="/someimage.png" />
в случае отсутствия, браузер сам запрашивает /favicon.ico
** SOAP WSDI
 *how to access*  *Web service* - machine to machine in *WWW* - information space where документы и
 ресурсы идентифицируются по *Uniform Resource Locators (URLs)* взаимосвязыаны в *hyperlinks* - тест с ссылкамиx
*** (SOAP) Simple Object Access Protocol
 *SOAP*  - messaging protocol specification for exchanging structured
  information in the implementation of web services. Использует XML. создан Microsoft. Не Web так как
  не использует URLs.

  XML *EXtensible Markup Language* - syntax, which we use to mark data

 purpose:
  - extensibility :: расширяемость (security and WS-Addressing are among the extensions under development)
  - neutrality :: SOAP can operate over any protocol such as HTTP, SMTP, TCP, UDP, or JMS)
  - independence :: независимость от language ( programming platform)  и platform (Linux Windows).


 SOAP is the heavyweight choice. iPnone to interface with bank.
  - do not required HTTP
  - Works well in distributed enterprise environments (REST assumes direct point-to-point communication)
  - Standardized
  - Built-in error handling
  - Automation when used with certain language products
  - ACID transactions with WS-AtomicTransaction
  - WS-Security -  security tools. only needed in a few “enterprise” scenarios.
  - WS-ReliableMessaging Rest doesn’t have a standard messaging system and expects clients to deal
    with communication failures by retrying.

*** (WSDL) Web Services Description Language
is an XML-based interface definition language that is used for describing the functionality offered by a web service.

A client program connecting to a Web service can read the WSDL file to determine what operations are available
on the server. Any special datatypes used are embedded in the WSDL file in the form of XML Schema. The client
can then use SOAP to actually call one of the operations listed in the WSDL file using for example XML over
HTTP.

WSDL is often used in combination with SOAP and an XML Schema to provide Web services over the Internet.

WSDL 2.0 specification offers better support for RESTful web services, and is much simpler to implement.
** REST
 JAX-RS: Java API for RESTful Web Services (JAX-RS) - Java API spec

 *javax.ws.rs*

 Implemented:
 - in Java EE to Java EE container
 - jersey.github.io - Oracle, embadded server

*** jersey
 Jersey-enabled jdk http server
 - https://jersey.github.io/
 - Documentation https://jersey.github.io/documentation/latest/index.html
 - article https://geekforum.wordpress.com/2014/06/17/implementing-rest-server-using-jdk-http-server-and-jersey/
 - article https://www.topjavatutorial.com/webservices/rest/restful-crud-operations-using-jersey-and-hibernate/
 - 4.5. Java SE Deployment Environments https://jersey.github.io/documentation/latest/user-guide.html
 - http://www.vogella.com/tutorials/REST/article.html

**** example
 #+BEGIN_SRC xml
 <dependencies>
		 <dependency> <!-- required by jersey-container-jdk-http-->
			 <groupId>org.glassfish.jersey.inject</groupId>
			 <artifactId>jersey-hk2</artifactId>
			 <version>2.27</version>
		 </dependency>
		 <dependency>
			 <groupId>org.glassfish.jersey.containers</groupId>
			 <artifactId>jersey-container-jdk-http</artifactId>
			 <version>2.27</version>
		 </dependency>
	 </dependencies>
 #+END_SRC
 #+BEGIN_SRC java
 package myrest;

 import java.net.URI;
 import javax.ws.rs.core.UriBuilder;
 import org.glassfish.jersey.jdkhttp.JdkHttpServerFactory;
 import org.glassfish.jersey.server.ResourceConfig;
 import com.sun.net.httpserver.HttpServer;

 public class Main {
	 public static void main(String[] args) {
		 URI baseUri = UriBuilder.fromUri("http://localhost/").port(9998).build();
		 ResourceConfig config = new ResourceConfig(TestResource.class);
		 HttpServer server = JdkHttpServerFactory.createHttpServer(baseUri, config);
	 }
 }


 import javax.ws.rs.GET;
 import javax.ws.rs.Path;
 import javax.ws.rs.Produces;

 @Path("hello")
 public class TestResource {
	 public static final String CLICHED_MESSAGE = "Hello World!";

	 @GET
	 @Produces("text/plain") //or @Produces(MediaType.TEXT_XML) @Produces(MediaType.TEXT_PLAIN)
	 public String getHello() {
		 return CLICHED_MESSAGE;
	 }
 }
 #+END_SRC

 http://localhost:9998/hello

**** errors
 *MessageBodyWriter not found for media type=application/json* - required: jersey-media-json-jackson

** GraphQL
- https://developer.github.com/v4/
- https://graphql.org/

- specification. :: The spec determines the validity of the schema on the API server. The schema determines
                    the validity of client calls.
- Strongly typed :: The schema defines an API's type system and all object relationships.
- Introspective :: A client can query the schema for details about the schema.
- Hierarchical :: The shape of a GraphQL call mirrors the shape of the JSON data it returns. Nested fields let
                  you query for and receive only the data you specify in a single round trip.
- App. layer :: GraphQL is not a storage model or a database query language. The graph refers to graph
                structures defined in the schema, where nodes define objects and edges define relationships
                between objects. The API traverses and returns application data based on the schema
                definitions, independent of how the data is stored.

- GraphQL lets you replace multiple REST requests with a single call to fetch the data you specify.
-  you may need to rely on both the docs and the schema validation to successfully call the GraphQL API.

solving two problems:
- scalability - responses were filled with hints in the JSON responses to help people continue to navigate
  through the API. required two or three separate calls to assemble a complete view of a resource.
- We wanted to generate documentation from our code.  type-safety for user-supplied parameters
** JSON
 data serialization format

Object - an unordered collection

 *JavaScript Object Notation*  language-independent data format.
 {
 "name" : " aa"
 }
  - Number :: a signed decimal number that may contain a fractional part and may use exponential E notation
  - String :: a sequence of zero or more Unicode characters. ""
  - Boolean :: either of the values true or false
  - Array :: an ordered list of zero or more values "ar" : [\n],
  - Object :: like array but  associative arrays. Recomendated: all key unique. {
  - null :: An empty value, using the word null. Ex. "spouse": null
  Недостатки: нельзя бинарные объекты
** YAML
superset of JSON

unordered Objects

if order required sequence must be used - []
** URL vs URI
 *Uniform Resource Locator (URL)* is a specific type of *Uniform Resource Identifier (URI)*
 URL - web adress, used in browsers.

Разница:
- URI - может быть URL, а может быть короче
- URL - это всегда URI = scheme:[//authority]path[?query][#fragment] - как минимум http://path

 *Абсолютные URI*
 mailto:John.Doe@example.com
 data:text/plain;charset=iso-8859-7,%be%be%be
 *Относительные URI*
 /relative/URI/with/absolute/path/to/resource.txt
 //example.org/scheme-relative/URI/with/absolute/path/to/resource.txt
 ../../../resource.txt
 /resource.txt#frag01
 #frag01

** XML
  *Extensible Markup Language (XML)* [ɪkˈstɛnsəbəl] is a markup language that defines a set of rules for
  encoding documents in a format that is both human-readable and machine-readable.
** CSS
Cascading Style Sheets (CSS)(.css) - separation of presentation and content, such as layout, colors, and
fonts. =Cascading= comes from the specified priority scheme to determine which style rule applies if more than
one rule matches a particular element.
- more flexibility
- control in the specification of presentation characteristics
- style reusing
- different rendering methods, such as on-screen, in print, by voice, mobile device
- Classes and IDs are case-sensitive - start a-Z, can include 0-9,-,_

*h1 {color: red; text-align: center;} - one rule.*

Consist of *rule-sets*:
- selectors :: which part of the markup a style applies to
- declaration block :: list of declarations in braces - property:value.
- Pseudo-classes :: - h1:hover {}

Not recomended:
- Inline Styles <h1 style="color:red; font-size:30px;">

Всегда в Head:
: <head> <link href="path/to/file.css" rel="stylesheet" type="text/css"> </head>
*** Selectors:
- #myid	id="myid"
- .c		class="c"
- E.warning	<E class="c">
- E,B		E and B
- div p		all <p> elements inside <div> - все <div>
- div > p	<p> elements where the parent is a <div> - первый <div>
- div + p	<p> elements that are placed immediately after <div>
- p ~ ul		every <ul> element that are preceded by a <p> - предшествует
- [target]	all elements with a attribute: target
- [target=_blank] all elements with attribute: target="_blank"
- [title~=flower]	all elements with a title attribute containing the word "flower"
- [lang|=en]	attribute value starting with "en"
- a[href^="https"] every <a> element whose href attribute value begins with "https"
- a[href$=".pdf"] ends
- a[href*="w3schools"] contains the substring "w3schools"
- p::after	p::after {  content: " - Remember this";} - inserts something after
- ::before

sub-casess for <input:
- input:checked		every checked <input> element
- input:default		for radio
- input:disabled	disabled="disabled"
- input:enabled
- input:focus
- input:in-range		 <input type="number" min="5" max="10" value="7" - selected
- input:indeterminate	 checkbox">, <input type="radio">, and <progress> elements
- input:invalid		with min and max attributes, email fields without a legal email, or number fields without a numeric value, etc.
** создание сайта
- from scratch
- WordPress, Drupal, Bitrix, Tumblr or Joomla -  theme, design, and templates -“content management systems” CMS
** TODO Bootstrap
- Bootstrap provides basic style definitions for all HTML elements
- end result is a uniform appearance for prose, tables and form elements across web browsers
- CSS classes in Bootstrap: light- and dark-colored tables, page headings, more prominent pull quotes, and
  text with a highlight.
- JavaScript components in the form of jQuery plugins - dialog boxs, tooltips, and carousels
- *Bootstrap component* consists of an HTML structure, CSS declarations, and in some cases accompanying
  JavaScript code.
- auto-complete function for input fields
- layout components.  basic layout component -  *Container* - other elements in it.
- fixed-width and  fluid-width container
- after container is placed -  *layout components* implement a CSS grid layout
- A precompiled version of Bootstrap - one CSS file and three JavaScript files
- *bootstrap.min.*  как и компилированные «облегченные» файлы
* Groovy
aimed at improving developer productivity thanks to a concise syntax.
- Java-syntax-compatible and interoperates seamlessly with other Java code and libraries
- Paradigm: Object-oriented, imperative, scripting
- Typing: Dynamic, static, strong, duck (“optionally” typed language)

Debian /usr/share/groovy

Main features:
- Domain-Specific Language authoring (разработка языка для конкретного домена)
- Как скрипт
- параметризованные строки "${p} "  и 'обычные'
- неявно генерирует set/get методы

: #!/usr/bin/env groovy

** base
*** closure
: def clos = {println "Hello World"};
: clos.call();
: def clos = {param->println "Hello ${param}"};
: clos.call("World");
*** Строки
- Java Strings — строки в одинарных кавычках
- Groovy Strings, известны как GStrings — в двойных кавычках; используя ${имя_переменной} можно "вставить"
  внутрь строки значение переменной
#+BEGIN_SRC groovy
bigGroovyString = """
  long
   long
    string
""" // Длинная строка с отступами
//a * 5
//===> aaaaa
/*
a = 'abc'
===> abc
groovy:000> a++
===> abd
groovy:000> a--
===> abс
*/
// В groovy есть поодержка регулярных выражений на уровне конструкций языка:
 r =~ '^a$'
===> java.util.regex.Matcher[pattern=^a$ region=0,1 lastmatch=]
// COMPARISION
str2.equalsIgnoreCase( str )
#+END_SRC

*** Regex
==~

alpha ∧ and omega  $
*** Списки
#+BEGIN_SRC groovy
def someList = [1,2,3,4]   // Создание списка
someList[5] = 6            // Добавление элемента в список
someList << 7 << 8         // Добавление элементов в конец списка
someList += [ 9, 10 ]      // "Приклеивание" списка
//range можно сделать из любого объекта, у которого есть методы next() и prev()
someList[1..3]                  // "Срезка" списка - получение подсписка
someList[2..4] = [ 12, 13, 14 ] // Изменение подсписка
def contacts = ['a', 'b', 'c'] as Set // представление списка как интерфейса Set

def (a, b, c) = [1,2,5] // множественное присвоение

for ( e in someList ) { //реализующего интерфейс java.lang.Iterable
	println e          // Распечатываем все элементы списка someList
}
#+END_SRC

*** Maps
#+BEGIN_SRC groovy
def someMap = [ 'a' : 1, 'b' : 2 ]   // Объявление
def emptyMap = [:]
def otherEmptyMap = [:] as HashMap
someMap['a']                         // Доступ к элементу
someMap.a                            // Доступ к элементу как к полю
someMap['a'] = 2                     // Изменение элемент
someMap.a = 2                        // Изменение элемента, как поля
//Для хранения обьектов в качестве ключа можно использовать скобки ():
def map = [(new String("username")):"james", nickname:"jcameron", (new Integer(22)):1234]
//map with Default values
[1:2].get(3, 0) //0 if not exist
[:].withDefault{7}.get(1) //7 if not exist
#+END_SRC

*** Функция и объекты
*Функция*
#+BEGIN_SRC groovy
def functionA(argA) {
    print ArgA
}

int functionB(int argB) {
    print argB
    return argB
}

String fuctionC() {
    "Hello World" //return по умолчанию
}
#+END_SRC

*Closure — это анонимная функция*
#+BEGIN_SRC groovy
def cl = {a, b ->
    println a
    println b
}

cl(1, 2)

//У многих объектов есть методы, в качестве параметров которым передаются closure:
1.upto 10, {
    print it
}

10.times {
    print it
}

'qwerty'.each {
    print it
}
#+END_SRC

*Классы*
- конструктор по умолчанию добавляется автоматически
- геттеры и сеттеры генерируются автоматически
- можно перегружать операторы +, -, * и
#+BEGIN_SRC groovy
// Эта аннотация которая генерирует из данного класса синглетон
@Singleton(lazy=true)
class MySingleton {
    def getHello(){
        "hello world"
    }
}

// Эта аннотация позволяет внедрить в класс Manager поведение метода из класса Employee
class Employee {
    def doWork() { 'my work' }
}
class Manager {
    @Delegate
    Employee slave = new Employee()
}
def worker = new Manager()
println worker.doWork()
//тоже
Manager2.mixin Employee2
ew Manager2().doWork()
#+END_SRC
*** спец операторы
*Elvis operator ?:*
: def b = a ?: "b"
Проверяет переменную a, и если в ней null или false, то берет указанное следом значение. Иначе берется
значение переменной a.

*Safe navigation ?.*
: def posts = user?.posts
Используется для избежания ошибки NullPointerException

*Spread operator *.* Применяет указанный метод для всех элементов какой-либо коллекции. Возвращает
список. Эквивалент следующему:
: parent*.action == parent.collect {ch -> child?.action}


* Keywords
- void :: 1) method return nothing 2) dummy class
- assert :: see assertion
- object *instanceof* Class = boolean , and subclass-object instanceof Parent = true.
- native :: Used in method declarations to specify that the method is not implemented in the same Java source
file, but rather in another language.
- super :: superclass ref. if no extends - equal to this.
- implements :: interface
- extends :: class and abstract class
- this :: current class ref.
- transient [ˈtrænzɪənt]:: disable serialization for field.
- volatile :: [ˈvälətl] Used in field declarations to specify that the variable is modified asynchronously by
              concurrently running threads. Reduces the risk of memory consistency errors.
** Null
null is a keyword in Java. только строчными!
null - default value for any reference type
null - special type without name

can be used with == and !=

java.lang.NullPointerException

** switch
#+BEGIN_SRC java
 switch(grade) {
         case 'A' :
            System.out.println("Excellent!");
            break;
         case 'B' :
         case 'C' :
            System.out.println("Well done");
            break;
         case 'D' :
            System.out.println("You passed");
         case 'F' :
            System.out.println("Better try again");
            break;
         default :
            System.out.println("Invalid grade");
      }
#+END_SRC
** enum
An instance of Enum in Java is created when any Enum constants are first called or referenced in code.
#+BEGIN_SRC java
public class Main {
	public enum C {
		PENNY(1,2), NICKLE(2,3), DIME(3,5), QUARTER(4,0);
		int i;
		   private C(int i, int g) { //must be private
			   this.i=i;
            System.out.println("wtf");
            };

		   public void a() {
			   System.out.println(this.name() + this.i);
		   }
		};
	public static void main(String[] args) {
		C a = C.NICKLE;
		a.a();
	}
}
#+END_SRC
out:
wtf
wtf
wtf
wtf
NICKLE2
** assertion
By default, assertions are disabled at runtime.
Used in developing stage to confirms your assumptions about the behavior of your program
: assert Expression1 ;
if it is false throws an AssertionError with no detail message.
: assert Expression1 : exp2 ;
exp2 - String mesage, or object for _AssertionError_ constructor, cannot be method call that return void

To enable assertions at various granularities, use the -enableassertions, or -ea, switch.
: java -ea package/ MainClass

Examples:
: assert Thread.holdsLock(this); // in private method called by synchonized public one
** final
- varible not modify
- method not override
- class not extend
- inner anonymouse class may access only final varibles
- constructor cannot be final
** abstract
- abstract class
- abstract - метод должен быть марекрован если у него нет реализации в Abstract Class.
* Rare symbols
- semicolon :: [ˌsɛmɪˈkəʊlən] ";"
** colon
[ˈkəʊlən]
1) Jump-out label
#+BEGIN_SRC java
label: for {
    break label;
}
Lbl1: {
    if(x == 0) break Lbl1;
}
Lbl2:{
    if(x > 0) break Lbl1;
}
#+END_SRC
2)  Ternary condition
: = true ? 1 : 0 ;
3) for-each
: for (String s: ss) { print(s);}
4) Asserion
: // throws an AssertionError with the message if the condition evaluates to false
: assert a >= 0: "factorial may not be less than 0";
5) Case in switch statement
#+BEGIN_SRC java
switch (type) {
    case WHITESPACE:
    case RETURN:
        break;
    case NUMBER:
        print("got number: " + value);
        break;
    default:
        print("syntax error");
}
#+END_SRC
6) Method references
: Person::compareByAge //Person - class, compareByAge - static method
** double colon or method reference
Java 8  используется для упрощения lambda выраженийx
: List<String> strings = Arrays.asList("one","two");
: strings.forEach(System.out::println);

: Function<Computer, Integer> getAge = Computer::getAge; //Computer - return
: Integer computerAge = getAge.apply(c1); //call

: Consumer<String> c = System.out::println;
Evolution of "comparator" :
: Comparator c = (Computer c1, Computer c2) -> c1.getAge().compareTo(c2.getAge());
: Comparator c = (c1, c2) -> c1.getAge().compareTo(c2.getAge());
: Comparator c = Comparator.comparing(Computer::getAge);
Constructor reference :
: Supplier aa = Calibreble::new; //java.util.function.Supplier - no arguments
: Function<Integer, Calibreble> aa = Calibreble::new; // - argument int.
: BiFunction<Integer, Integer, Calibreble> //two arguments
* Naming conventions
- *Identifier* [aɪˈdɛntɪˌfaɪə] An identifier is an unlimited-length sequence of Java letters(a-zA-Z_ and $) and Java digits(0-9), the first of
               which must be a Java letter.
- Letters and digits may be drawn from the entire Unicode character set
- $ - should be used only in mechanically generated source code or, rarely, to access pre-existing names on
  legacy systems.
----------
- class name		should start with uppercase letter and be a noun e.g. String, Color, Button, System, Thread etc.
- interface name	should start with uppercase letter and be an adjective e.g. Runnable, Remote, ActionListener etc.
- method name	should start with lowercase letter and be a verb e.g. actionPerformed(), main(), print(), println() etc.
- variable name	should start with lowercase letter e.g. firstName, orderNumber etc.
- package name	should be in lowercase letter e.g. java, lang, sql, util etc.
- constants name	should be in uppercase letter. e.g. RED, YELLOW, MAX_PRIORITY etc.
------
 - CamelCase :: написание CamelCase or camelCase
 - PascalCase :: upper camel case - CamelCase
 - snake_case :: my_const
 - kebab-case :: .
 - Венгерская нотация (Hungarian Notation) ::  имена заранее оговорёнными префиксами, состоящими из одного или
      нескольких символов
** Generics Type parameter
single, uppercase letters
 - E - Element (used extensively by the Java Collections Framework)
 - K - Key
 - N - Number
 - T - Type
 - V - Value
 - S,U,V etc. - 2nd, 3rd, 4th types


* synchronous blocking vs asynchronous non-blocking I/O artchitecture

* Concurrency согласованность in multithreading
[kənˈkʌrənsɪ]
- Busy waiting busy-looping or spinning :: Loop for check resource availability. Anti-patter.
- Mutual exclusion :: property of concurrency control, which is instituted for the purpose of preventing race conditions.
- critical section :: block of code which read and write one memory concurrently

Problems
- Race condition :: potentially concurrent operations on a shared memory location, of which at least one is a
                    write.
- Liveness [ˈlaɪvnəs] :: positive ability for a system to make progress despite critical sections.
  - deadlock :: acquiring lock and waiting for each other
  - resource starvation :: .
    - errors in a scheduling or mutual exclusion algorithm
    - resource leak - program forget to release.
    - denial-of-service attack
  - livelock ::  e.g. people talk to each other as a response, too busy responding to each other to resume work.

mechanisms:
- Critical section [ˈsɛkʃən]
- lock or mutex ::  mutual exclusion. By acquiring the lock before accessing the corresponding data
** Threads
threads mostly
time slicing - разделение CPU между процессами
concurrently of if *multiple* [ˈmʌltɪp] processors are available, actuallly - *simultaneously* [ ˌsaɪməltəˈniːɪtɪ]
begin to *interfere* [ˌɪntəˈfɪə] with each other

*process* [ˈprəʊsɛs] has its own memory space.
between processes(and on dif systems) - _Inter Process Communication_ (IPC) resources, such as pipes and socket
~java.lang.ProcessBuilder~

*threads* [θrɛd] threads share the process's resource - memory and open files

Class *java.lang.Thread* implements Runnable
- has a priority. Initially priority of the creating thread.
- daemon or not. same
- has name(default - generated)
- holds lock on the specific object ???

At start *single non-daemon thread* usually. Until:
- exit() of Runnable and the security manager has permitted the exit (System.
- all not daemon threads by returning or by throwing an exception.

To create:
1) extend Thread
: new Class().start()
2) implement Runnable
: new Thread(new Class()).start()
3) anonymous Runnable
: new Thread(new Runnable() {
:            public void run() { alphonse.bow(gaston); }
 :      }).start();


: Thread.sleep(4000); //4 sec,(static) put current executing thread to sleep.
InterruptedException - if any thread has interrupted the current thread. The interrupted status of the current
thread is cleared when this exception is thrown.

Thread.isAlive() - been started and not yet died

Thread.currentThread() - (static) ref to executing object

Enum Thread.State:
- NEW not alive, never started
- RUNNABLE started, not running, alive
- BLOCKED monitor lock
- WAITING(wait, join,LockSupport.park), TIMED_WAITING, TERMINATED.

*Daemon* Thread.setDaemon() и isDaemon()

*ThreadGroup* class Группа указывается при создании потока. Методы activeCount() и enumerate() возвращают
количество и полный список, соответственно, всех потоков в группе.

** Object wait, notify, notifyAll
Каждый объект в Java имеет не только блокировку для synchronized блоков и методов, но и так называемый
*wait-set*.

MUST be in synchronized блоках на этом объекте или в synchronized методах внутри этого объекта.

It is recommended that applications not use wait, notify, or notifyAll on Thread instances.

- wait :: wait for notify() or notifyAll(). На любом объекте, и поток попадает в его wait-set.
- notify ::  useful only in massively parallel applications — that is, programs with a large number of
            threads, all doing similar chores.
- notifyAll ::
: flag = true;
: notifyAll(); //for guarded blocks
** Interrupts
[ˌɪntəˈrʌpt] - indication to a thread that it should change something.
Thread.interrupt()

Thread.interrupted(),isInterrupted() - check status

1) Thread.checkAccess() executed.
2) If Wait, Join, Sleep - interrupt status cleared, InterruptedException.
    If blocked in a Selector - interrupt status will be set. return immediately from the selection operation
3) else interrupt status will be set. Interrupting a thread that is not alive need not have any effect.
** Joins
wait for the completion of thread.
: t.join(); t.join(4000); //wait forever or loop for this.isAlive
** Synchronization
Errors:
- thread interference :: [ˌɪntəˈfɪərəns] записывают и читают одно и то же
- memory consistency errors :: [kənˈsɪstənsɪ] [ˈerər]  inconsistent views of what should be the same data
- deadlock :: block, waiting for each other.
- Starvation :: e.g. huge synchronized method block object for long time.
- Livelock :: e.g. people talk to each other as a response, too busy responding to each other to resume work.

*happens-before* relationship - guarantee that memory writes by one specific statement are visible to another
 specific statement

1) synchronized methods - *synchronized*
not possible for two invocations to interleave [ˌɪntəˈliːv]
- constructors cannot be synchronized
- lock at method's object that provides the intrinsic lock
- thread can acquire a lock that it already owns - *reentrant synchronization* - prevent selfblock
- two synchronized methods in one object may couse deadlock if call synchonized method of another object from
  synchonized method
2) synchronized statements
- reduce synchonized methods amount and deadlocks
- fine-grained synchronization
: synchronized(this) {
:    }


*intrinsic lock* or *monitor lock* - internal entity for synchronization in every object 1) exclusive access 2) happens-before
 relationship

When a thread releases an intrinsic lock, a *happens-before relationship* is established between that action
and any subsequent acquisition of the same lock.

Rule : Maximum reliance on immutable objects is widely accepted as a sound strategy for creating simple,
reliable code.
** Atomic
*** atomic actions & volatile [ˈvɒləˌtaɪl]
No side effects of an atomic action are visible until the action is complete. no _thread interference_ but _memory
consistency errors_ are still possible.
- Reads and writes are atomic for *reference variables* and for most primitive variables (all types except long
  and double).
- Reads and writes are atomic for all variables declared *volatile* (including long and double variables).

*volatile* eliminates _memory consistency errors_ Lock-free thread-safe programming on single variable:
- value never be cached thread-locally: all reads and writes will go straight to "main memory"
- acts as though it is enclosed in a synchronized block, synchronized on itself.
- it is not suitable for cases where we want to read-update-write as an atomic operation (unless we're
  prepared to "miss an update");
- when a thread reads a volatile variable, it sees not just the latest change to the volatile, but also the side effects of the code that led up the change.

*** atomic varibles
*java.util.concurrent.atomic* -  rely directly on processor CAS instructions

Extend the notion of _volatile_ values, fields, and array elements to those that also provide an atomic
conditional update operation of the form:
:   boolean compareAndSet(expectedValue, updateValue);
: c.incrementAndGet();

** Guarded Blocks
working loop is wasteful while(!joy) {} we need wait
#+BEGIN_SRC java
public volatile boolanen joy;

synchronized(lock) {
    // This guard only loops once for each special event, which may not
    // be the event we're waiting for.
    while(!joy) {
        try {
            lock.wait(); //thanks to synchronized - *wait* uses intrinsic lock = this
        } catch (InterruptedException e) {}
    }
    System.out.println("Joy and efficiency have been achieved!");
}
#+END_SRC
- Always invoke wait inside a loop that tests for the condition being waited for.
- joy readed and writed by separate threads that is why intrinsic lock or synchronization required
** High-level concurrency objects and
 *java.util.concurrent*

http://www.oracle.com/technetwork/articles/javase/index-140767.html
*** Executor
In large-scale applications, separate thread management and creation.
- shutdown() - no new task accepted
-

java.util.concurrent.Executor interface
void 	execute(Runnable command)

subinterfaces:
- ExecutorService :: adds features that help manage the lifecycle, both of the individual tasks and of the
     executor itself.
- ScheduledExecutorService :: supports future and/or periodic execution of tasks

Implementations:
- AbstractExecutorService
- ForkJoinPool ::
- ScheduledThreadPoolExecutor
- ThreadPoolExecutor

*java.util.concurrent.Executors*
- newFixedThreadPool :: simple pool
- newCachedThreadPool ::  suitable for applications that launch many short-lived tasks
- newSingleThreadExecutor :: single task at a time ?
*** Fork/Join framework
ForkJoinPool implementation
ForkJoinTask - abstract class
*work-stealing algorithm* - Worker threads that run out of things to do can steal tasks from other threads
 that are still busy

С таким кодом работает фреймворк (Pseudocode):
: if (my portion of the work is small enough)
:  do the work directly
: else
:  split my work into two pieces
:  invoke the two pieces and wait for the results
Wrap this code in a ForkJoinTask subclass, create object and pass it to the invoke() method of a ForkJoinPool
instance.

------
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.RecursiveAction;

1) Create a task that represents all of the work to be done.
   - myFork fb = new myFork(0);
   - inside:
   - if (my portion of the work is small enough)
     - do the work directly
   - else
   - split my work into two pieces
     - invoke the two pieces and wait for the results:
     - invokeAll(new myFork(1), new myFork(2));
2) ForkJoinPool pool = new ForkJoinPool();
3) pool.invoke(fb);

#+NAME: Active Object pattern example
#+BEGIN_SRC java
public class MyClass {
    private double val;

    // container for tasks
    // decides which request to execute next
    // asyncMode=true means our worker thread processes its local task queue in the FIFO order
    // only single thread may modify internal state
    private final ForkJoinPool fj = new ForkJoinPool(1, ForkJoinPool.defaultForkJoinWorkerThreadFactory, null, true);

    // implementation of active object method
    public void doSomething() throws InterruptedException {
        fj.execute(() -> {val = 1.0;});
    }

    // implementation of active object method
    public void doSomethingElse() throws InterruptedException {
        fj.execute(() -> {val = 2.0;});
    }
}
#+END_SRC

implementations:
- java.util.Arrays class for its parallelSort() methods.
- java.util.streams package, which is part of Project Lambda
*** Semaphore
[ˈsɛməˌfɔːr] java.util.concurrent.Semaphore; solve critical section problems and to achieve process
synchronization.

Usually is referring when is needed to restrict the number of threads that can access a resource. Example,
limit max 10 connections to access a file simultaneously or limit to 10 connections to access a database
query.

: private static Semaphore semaphore = new Semaphore(3); //3 threads limit
: semaphore.acquire(); //FIFO blocking until one is available
: semaphore.release();

** Concurrent data structures
Interfaces:
- BlockingQueue
- ConcurrentMap
- - ConcurrentNavigableMap :: approximate matches feature
** Stop
Default:
- all not daemon threads by returning or by throwing an exception.
- exit() of Runnable and the security manager has permitted the exit (System.exit())

Modifies some variable to indicate that the target thread should stop running. The target thread should check
this variable regularly, and return from its run.
https://docs.oracle.com/javase/7/docs/technotes/guides/concurrency/threadPrimitiveDeprecation.html
#+BEGIN_SRC java
private volatile Thread blinker;

    public void stop() {
        blinker = null;
    }

    public void run() {
        Thread thisThread = Thread.currentThread();
        while (blinker == thisThread) {
            try {
                Thread.sleep(interval);
            } catch (InterruptedException e){
            }
            repaint();
        }
    }
#+END_SRC
** My rules
если private читается только внутки synchronized по объекту, то *volatile* не нужно
* Object
- protected Object *clone()*

- boolean *equals(Object obj)* если не пререопределен, то сравнивает ссылки, как ==

- protected void *finalize()* when no more references to the object
- Class<?> *getClass()* Returns the runtime class of this Object.
- int	*hashCode()*
  + equal objects must have equal hashcode()
  + desirable : unequal object has unequal hashcodes
- String *toString()*  getClass().getName() + '@' + Integer.toHexString(hashCode())
- void *notify()*
- void *notifyAll()* Wakes up all threads that are waiting on this object's monitor
- void *wait()* Causes the current thread to wait until another thread invokes the notify() method or the
  notifyAll() method for this object.
- void *wait(long timeout)*
Causes the current thread to wait until either another thread invokes the notify() method or the notifyAll()
method for this object, or a specified amount of time has elapsed.
- void 	wait(long timeout, int nanos)
Causes the current thread to wait until another thread invokes the notify() method or the notifyAll() method
for this object, or some other thread interrupts the current thread, or a certain amount of real time has
elapsed.
** Equal overriding
/for remove, get, compareTo
#+BEGIN_SRC java
@Override
	public boolean equals(Object o) {
		if (!(o instanceof Contact))
			return false;
		Contact n = (Contact) o;
		return (n.id == this.id);
	}

    public int hashCode() {
        return 31*firstName.hashCode() + lastName.hashCode();
    }
//for sort only
public int compareTo(Name n) {
        int lastCmp = lastName.compareTo(n.lastName);
        return (lastCmp != 0 ? lastCmp : firstName.compareTo(n.firstName));
    }
#+END_SRC
* Use cases
** Singleton with lazy initialization
Private constructor to restrict instantiation of the class from other classes.

used for
- logging
- drivers objects
- caching
- thread pool.
- Abstract Factory, Builder, Prototype, Facade etc.
#+BEGIN_SRC java
public enum EnumSingleton { //does not allow lazy initialization. serializable
    INSTANCE;
    int field; //not serialized http://docs.oracle.com/javase/6/docs/platform/serialization/spec/serial-arch.html#6469
}

private volatile ThreadSafeSingleton instance; //!volatile Java 1.5 (not cached)
public static ThreadSafeSingleton getInstanceUsingDoubleLocking(){
    ThreadSafeSingleton localRef = instance; // не знаю зачем это. это вопрос
    if(localRef == null){ // синхронизация нужна только для первых потоков
        synchronized (ThreadSafeSingleton.class) { //double checked locking principle. (this)-if not singleton
            localRef = instance;
            if(localRef == null){
                instance = localRef = new ThreadSafeSingleton(); //важно чтобы полностью инициализировался
            }
        }
    }
    return localRef;
}
#+END_SRC
** Visitor
The visitor takes the instance reference as input, and implements the goal through double dispatch.
#+BEGIN_SRC java
interface CarElement {
    void accept(CarElementVisitor visitor);
}

interface CarElementVisitor {
    void visit(Body body);
    void visit(Car car);
    void visit(Engine engine);
    void visit(Wheel wheel);
}

class Car implements CarElement {
    CarElement[] elements;

    public Car() {
        this.elements = new CarElement[] {
            new Wheel("front left"), new Wheel("front right"),
            new Wheel("back left"), new Wheel("back right"),
            new Body(), new Engine()
        };
    }

    public void accept(final CarElementVisitor visitor) {
        for (CarElement elem : elements) {
            elem.accept(visitor);
        }
        visitor.visit(this);
    }
}

class Body implements CarElement {
    public void accept(final CarElementVisitor visitor) {
        visitor.visit(this);
    }
}

class Engine implements CarElement {
    public void accept(final CarElementVisitor visitor) {
        visitor.visit(this);
    }
}

class Wheel implements CarElement {

    public void accept(final CarElementVisitor visitor) {
        /*
         * accept(CarElementVisitor) in Wheel implements
         * accept(CarElementVisitor) in CarElement, so the call
         * to accept is bound at run time. This can be considered
         * the *first* dispatch.
        */
        visitor.visit(this);
    }
}

class CarElementDoVisitor implements CarElementVisitor {
    public void visit(final Body body) {
        System.out.println("Moving my body");
    }

    public void visit(final Car car) {
        System.out.println("Starting my car");
    }

    public void visit(final Wheel wheel) {
         /*each implementation of
         * CarElementVisitor implements the visit(Wheel), which is
         * another decision that is made at run time. This can be
         * considered the *second* dispatch.
         */
        System.out.println("Kicking my " + wheel.getName() + " wheel");
    }

    public void visit(final Engine engine) {
        System.out.println("Starting my engine");
    }
}

class CarElementPrintVisitor implements CarElementVisitor {
    public void visit(final Body body) {
        System.out.println("Visiting body");
    }

    public void visit(final Car car) {
        System.out.println("Visiting car");
    }

    public void visit(final Engine engine) {
        System.out.println("Visiting engine");
    }

    public void visit(final Wheel wheel) {
        System.out.println("Visiting " + wheel.getName() + " wheel");
    }
}

public class VisitorDemo {
    public static void main(final String[] args) {
        final Car car = new Car();

        car.accept(new CarElementPrintVisitor());
        car.accept(new CarElementDoVisitor());
    }
}
#+END_SRC
** Sort chapters
#+BEGIN_SRC java
import java.util.Arrays;
import java.util.Comparator;

public class VersionNumberComparator implements Comparator<String> {
    @Override
    public int compare(String version1, String version2) {
        String[] v1 = version1.split("\\.");
        String[] v2 = version2.split("\\.");
        Integer[] i1 = toInt(v1);
        Integer[] i2 = toInt(v2);

        Integer imin = i1.length > i2.length ? i2.length : i1.length;
        int res = 0;
        for (int i = 0; i < imin; i++){
            res = i1[i].compareTo(i2[i]);
            if (res != 0 )
                return res;
            else if (i == imin - 1){ //if 0 and 0.1
                return i1.length > i2.length ? 1 : -1
            }
        }
        return res;
    }

    private Integer[] toInt(String[] version) {
        Integer[] mas = new Integer[version.length];
        for(int i = 0; i < version.length; i++){
            mas[i] = Integer.parseInt(version[i])
        }
        return mas;
    }

}

void main(){
    k1 = ["0.10", "0.2", "0.1", "0", "1.10", "1.2", "1.1", "1",
        "2.10", "2", "2.2", "2.1" ];
    k2 = k1.toArray();
            Arrays.parallelSort(k2, new VersionNumberComparator());
    System.out.println(k2);
}
main();

#+END_SRC
** JSON in Java
- https://www.oracle.com/technetwork/articles/java/json-1973242.html
- JSR 353: JavaTM API for JSON Processing https://jcp.org/en/jsr/detail?id=353
- https://habr.com/en/company/luxoft/blog/280782/
- https://ru.stackoverflow.com/questions/745094/%D0%9A%D0%B0%D0%BA-%D0%B8-%D1%87%D0%B5%D0%BC-%D0%BF%D0%B0%D1%80%D1%81%D0%B8%D1%82%D1%8C-json-%D0%BD%D0%B0-java

libs:
- json-p - JSON with padding - JSR 353 implementation org.glassfish
- json.org
- Jackson
- Google GSON
- json-lib
- javax json
- json-simple
- json-smart
- flexjson
- fastjson

** jsonp
- https://javaee.github.io/jsonp/
- https://search.maven.org/search?q=org.glassfish%20json

API:
- API  Streaming (javax.json.stream),
- JSON API Object Model (javax.json).



#+BEGIN_SRC xml
<dependency>
   <groupId>org.glassfish</groupId>
   <artifactId>javax.json</artifactId>
   <version>1.0.4</version>
</dependency>
#+END_SRC

#+BEGIN_SRC java
InputStream input = new FileInputStream("C:\\Users\\Chepilev_VS\\Desktop\\f\\provodki_1000.json");
//------------------- JSON API Object Model (javax.json) ------------------
        // Create JsonReader object
        JsonReader jsonReader = Json.createReader(input);


        // Get JsonObject (root object).
        JsonArray rootJSON = jsonReader.readArray(); //or readObject()

        // Close resources
        jsonReader.close();
        input.close();

        System.out.println(rootJSON.getJsonObject("address"));

 //------------------- API  Streaming ------------------

InputStream input = new FileInputStream("C:\\Users\\Chepilev_VS\\Desktop\\f\\provodki_1000.json");

        // https://javaee.github.io/javaee-spec/javadocs/javax/json/stream/JsonParser.html
        JsonParser parser = Json.createParser(input);


        // Get JsonObject (root object).
        while (parser.hasNext()) {
            JsonParser.Event event = parser.next();
            if (event == JsonParser.Event.START_OBJECT ) { //provodka
                while (parser.hasNext()) {
                    if (parser.getString().equalsIgnoreCase("naznach")) {
                        String value = parser.getString();
                    }
                }
            }
        }

        // Close resources
        parser.close();
        input.close();
#+END_SRC
** Print Array
Arrays.toString()
* IDE
** windows
- Bash - babun
- emacs
  - emacsrun
  - M-x eval-expression RET (find-file user-init-file) RET

** IntelliJ IDEA
 - main 		Ctrl-j psvm
 - отладка 		Alt+F8
 - find used		Alt+f7
 - autocompletion 	Ctrl+Space
 - suggestions 		Alt+space
 - вставить живой шаблон Ctrl+j
 - инфа 		Ctrl+q or ctrl+Shift+i
 - goto 			Ctrl+b or F4
 - next occurrence 	F3
 - rename varible 	shift+f6
 - *Настройки*	Сtrl+Alt+S
 - Import class		left Alt+Enter
- comment block	Ctrl+Shift+/


Emacs mode:
Ctlr+Shift+ minus	undo
Ctrl+Shift+z		redo
Ctrl+x n/p		next tab



sandbox:
- tarun ideaIC-2018.2.5.tar.gz
- chown -R idea:idea idea-IC-182.4892.20/
- chmod -R o-x idea-IC-182.4892.20/

*** project conf files
 - .idea
 - project.iml
*** installation
 Ctr+Alt+S
 Tools -> Web Browser

Configure->Project Defaults -> Project Structure
- Global SDK and Project - ADD /usr/lib/jvm/java-10-openjdk-amd64
- Global SDK Sourcepath /usr/lib/jvm/openjdk-10/lib/src.zip

 File-> Project Structure
 - /usr/lib/jvm/java-10-openjdk-amd64 or /usr/lib/jvm/java-8-openjdk-amd64
 - Sourcepath /usr/lib/jvm/openjdk-10/lib/src.zip
 - documentation paths https://docs.oracle.com/javase/7/docs/api/

 or for 8-10 https://www.oracle.com/technetwork/java/javase/downloads/index.html#docs

*** Hotkeys
Ctr+Alt+S ->Keymap
- Close tab    close -> Edit tabs, Close -> double click ->Add Keyboard shortcut Alt+4
*** Maven proxy
- https://stackoverflow.com/questions/1784132/intellij-community-cant-use-http-proxy-for-maven

Сtrl+Alt+S  Maven > Importing
- "VM options for importer
- -DproxyHost=srv-proxy -DproxyPort=8080
- Do the same under Maven > Runner
** Eclipse
платформа расширенного клиента (RCP — от англ. rich client platform).
- Ядро платформы (загрузка Eclipse, запуск модулей);
- OSGi (стандартная среда поставки комплектов (англ. bundles));
- SWT (портируемый инструментарий виджетов); - GUI в Eclipse написан с использованием инструментария SWT
- JFace (файловые буфера, работа с текстом, текстовые редакторы);
- Рабочая среда Eclipse (панели, редакторы, проекции, мастера).


- autocmpletion	Ctrl+Space
- F2 quick reference Shift+F2 documentation
- F3 goto
- Ctrl+I Ctrl+Shift+F 		Format
- Ctrl+/	Ctrl+Shift+/	Comment
- F12			Editor window
- Alt+Shift+J		Generate element Comment
*** Dark theme
General->Appearance

Java->Editor->Syntax Coloring-> Disable for:
- Local varibles
- Classes
*** tabs
 - close Ctr+W
 - move Ctrl+ PgUp PgDown
*** installation
 https://www.oracle.com/technetwork/java/javase/downloads/index.html#docs

 Window -> Preferences
    1) Java->Installed JRE
       1) select, Edit
       2) select rt.jar
	  1) Javadoc Location
	     1. default: https://docs.oracle.com/javase/8/docs/api/
	     2. my: /usr/share/doc/icedtea-bin-3.8.0/html/jdk/api/
	     3. file:/usr/share/doc/icedtea-bin-3.8.0/html/api
	  2) Javadoc Location
	     - External location
	     - my: src.zip из JDK SE 8
    2) General -> Web Browser. New: /home/user/torbr_direct_start
    3) General ->Keys.  Preferences - Ctrl+Alt+S, Run Maven Build -Ctrl+Alt+R
       1) Terminate/Disconnect All in console has no shortuc. But set "Show View (Console)" - Alt+C and then
          Preference button and up array
       2) Run Java Application Alt+R
       3) Show View (Problems) Alt+E

/tmp/sqlite-3.25.2-jdbc.so: failed to map segment from shared object
1) java.io.tmpdir system property. java -Djava.io.tmpdir=/tmp/dir
2) java -Djava.io.tmpdir=/home/user/ -jar testsql-0.0.1-SNAPSHOT-jar-with-dependencies.jar
3) $ECLIPSE_HOME/eclipse.ini
4) He работает Run->Run Configuration-> Arguments -> VM Arguments -Djava.io.tmpdir=/mnt1/eclipse_workspace/testsql/target/

* OTHER
** L1/L2/L3 troubleshooting
- L1 :: help desk справочная служба. Predefined steps to resolve problem, technology does not metter. Mark as
        ticket or incident.
- L2 :: require some technical knowledge.  may have read access to java code
- L3 :: They fix the code defects in the application and do small enhancements.
** Oracle
 - Oracle Database
 - MySQL
 - Oracle Fusion Middleware
 - Oracle Cloud
 - Java language since 2010
 - ERP solutions (Oracle Fusion, Oracle E-Business Suite, JD Edwards EnterpriseOne)
 - Oracle Cloud

*** SQL Developer
 - PL/SQL IDE
 - GUI for browsing and managing database objects
 - ad hoc reports
 - database design & data modeling (difference?)
 - database admin
 - migration to oracle
 - deploy and admin Oracle REST Data Services
 - REST Enablement of the Database
 - cli command line interface
*** FMW
  Oracle SOA Suite is a part of the *Oracle Fusion Middleware* family of software products.
 - [ˈfjuːʒən] слияние
 - *Middleware* is computer software that provides services to software applications beyond those available from
   the operating system. It gained popularity in the 1980s as a solution to the problem of how to link newer
   applications to older legacy systems. includes web servers, application servers, content management
   systems, communication and input/output

 Include:
 - Java EE and developer tools - application server
 - business process management (BPM)
 - system integration services
 - business intelligence(BI)
 - collaboration - user interaction
 - content management - collection, managing, and publishing of information in any form or medium
 - identity management

 FMW depends on open standards such as BPEL, SOAP, XML and JMS.

*** Oracle SOA Suite
 Allow set up and manage services and to orchestrate them into composite applications and business processes

  re-use focused, unified application development tooling and end-to-end lifecycle management support further
  reduces development and maintenance cost and complexity.

 Components:
 - connectivity [ˌkɒnɛkˈtɪvɪtɪ] подключения
   - Cloud - Apps, Services, Platform
   - On-premises - Apps, Mainframe, DB
   - Business to Business - EDI, XML, MFT
 - service virtualization & Mediation - Service Bus
 - orchestration - BPLE Process Manager, Business Roles
 - analytics - Business Activity Monitoring, Event Processing
 diagram

 Components 2:
  - Oracle BPEL Process Manager
  - Oracle Service Bus (OSB)
  - Oracle Event Processing
  - Oracle Web Services Manager, a security and monitoring product for web services
  - Oracle Business Rules, contains a JSR 94 Business rules engine
  - Oracle Business Activity Monitoring
  - Oracle Enterprise Service Bus (now known as the Mediator component)
  - Oracle JDeveloper

** OSS/BSS
in telecommunications, stands for
- operations support system :: (Система эксплуатационной поддержки) computer systems used by telecommunications service providers to manage their
     networks
- business support system :: (Биллинг, CRM, ERP) a telecommunications service provider (or telco) uses to run its business
     operations towards customers.

OSS/J - *Инициатива OSS посредством Java* Её основная цель — разработка открытых стандартов на интерфейсы
(API) для интеграции BSS (Систем поддержки бизнеса) и OSS (Систем эксплуатационной поддержки) (OSS/BSS) в
рамках подхода NGOSS.

** PostgreSQL
Удаление зависших процессов
: select * from pg_stat_activity where datname = 'pmpbo-dev' AND state = 'active';
: select pg_cancel_backend(<pid of the process>)
or
: select pg_terminate_backend(<pid of the process>)
** Языки и сферы
масштабировать свой продукт и во сколько вам это обойдётся.
- железо - С
- бизнес-логики облачных сервисов  - PHP, Python
- ERP, eCommerce, CRM - 1C, SAP ABAP, MS Dynamics
- области разработки хранилищ данных - SQL, NoSQL
- фронтенд/бэкенд информационных систем - Java, JavaScript (Spring, Node.js, React, Vue и т. д.)
- SaaS -  серверах/хостинге и софте. Именно они «отъедают» заметную часть бюджета, если технологии были выбраны не совсем удачно
- Mac OS - Swift
** TODO Consensus
https://en.wikipedia.org/wiki/Consensus_(computer_science)
A fundamental problem in distributed computing and multi-agent systems
** Big data
http://www.tadviser.ru/index.php/%D0%A1%D1%82%D0%B0%D1%82%D1%8C%D1%8F:%D0%91%D0%BE%D0%BB%D1%8C%D1%88%D0%B8%D0%B5_%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5_%28Big_Data%29

As compared to traditional technology, big data technology uses commodity hardware instead of expensive hardware.

Large and complex data sets. To extract value from data and seldom to a particular size of data set. опред
размера. => Advanced data analytics methods.
- offer greater *statistical power*
- may lead to a higher *false discovery rate*
- concepts (3 Vs of big data):
  + volume[ˈvɒljuːm]
  + velocity[vɪˈlɒsɪtɪ] (noise, value) - скорость - batch, peruiduc, near Real Time, Real Time or Hot, Warm, Cold
  + variety[vəˈraɪɪtɪ] - разновидности
    * Transactions - database records
    * Files - documents, log files
    * Events - Messages, Data streams.
  + veracity [vɛˈræsɪtɪ] - достоверность

Data science:
- data mining (gather)
- from data to insight (clean)
- from insight to model (model)
- from model to value (deploy) - predicts

*Architecture:* require massively parallel software running on clusters or more.
- Commercial vendors historically offered parallel database management systems.
- physics experiment - high performance computing (supercomputers)
- Google - MapReduce 1. queries are split and distributed across parallel nodes and processed in parallel (the
  Map step). 2. results are then gathered and delivered. Adopted by an Apache project *Hadoop* and *Spark*
- MIKE2.0 methodology -  pilot project for a "framework"
- multiple-layer architecture - inserts data into a parallel DBMS, which implements the use of MapReduce and
  Hadoop frameworks
- data lake - способ управления большими данными, когда все сбрасывается в один репозиторий файлов или blob
  объейктов, а потом уже анализируется.

*Store*
- Records - database
- documents - search?
- files - file store
- messages - Amazon SQS
- streams - Apache Kafka, Amazon shit.

Why stream storage?
- Decouple producers & consumenrs
- Persistent buffer
- Collect multiple streams
- Preserve client ordering
- Parallel consumption
- Streaming MapReduce

Delivery (deduping - data deduplication) guarantees
- at-most-once delivery - message may be lost - hight perfomance
- at-least-once delivery - may be duplicated but not lost
- exactly-once delivery - not lost and not duplicated

Отличия бизнес-аналитики от Big Data
1. формулы по результатам за период
2. данные после чистки ->
   - выдвигается гипотеза
   - строятся статистическая, визуальная и семантическая модели
   - проверяется вероятность гипотезы и выдвигается следующая

Требует от исследователя либо:
- интерпритация визуальных значений
- составление интерактивных запросов на основе знаний
- адаптивные алгоритмы машинного обучения (время жизни может быть коротким)
*** Terms
- *Data lake* - копия корп данных, не создавать нагрузку на продакшн-системы. used for tasks such as
  reporting, visualization, analytics and machine learning
*** Problems
- redeploy and rerun the model
- not actualy streams but batches

*** Applications
- Personalization
- Spam detection
- Recomendations

For
- spot business trends
- prevent diseases, combat crime
- Internet search, fintech, urban informatics, and business informatics
- e-Science - meteorolgy, genomics, connectomics, complex physics simulations

Example *Bank Loan Risk Minimization* Banks want to scrutinize not only the private data but also the public
data available to a customer so that they can minimize the risk while giving loans.

**** VTB против кредитных рисков
- https://habr.com/ru/company/vtb/blog/417739/

предсказательной силы показатель Джини (Gini), по которому мы оцениваем точность прогнозных моделей

- Для хранения больших данных выбрали *Cloudera Hadoop*
- Apache Spark и Apache Hive SQL - для досупа к данным
- Apache Oozie - для координации и запуска потоков загрузки и расчета данных
- (Apache Zeppelin и JupyterHub,)Data Discovery типа - визуализировать и исследовали данные (Data Science
  аналитик) -> Risk Data Mart, Risk analitic workspace
- spagobi BI - Аналитик по мониторингу ФКР по клиентам
Железо:
- 3 master-узла с 64 Гб vRAM и 2 Тб дискового пространства у каждого
- 3 data-узла с 512 Гб vRAM и 8 Тб у каждого
- 1 узел для приложений со 128 Гб vRAM, 2,5 Тб

22 факторов в рамках пилота не рассчитали только два, из-за внешних причин — отсутствия данных необходимого качества.
*** Data sources
Sources:
- Internet of things devices such as mobile devices
- aerial (remote sensing)
- software logs
- cameras, microphones, radio-frequency identification (RFID) readers
- wireless sensor networks

Source strams:
- user clicks
- search queries
- news
- emails
- finance stocks
- credit card transactions
- wikipedia edit logs
- facebook statuses
- twitter updates

*** MapReduce
 programming model, framework

 In Hadoop: highly fault-tolerant distributed processing of the data distributed by HDFS

 Cостоит из *двух шагов: Map и Reduce*, названных так по аналогии с одноименными функциями высшего порядка, map
 и fold.

 Map (higher-order function) - map square [1, 2, 3, 4, 5] = [1, 4, 9, 16, 25]   Clojure: (map func list)

 Fold -  folding of the list [1,2,3,4,5] with the addition operator would result in 15.

 1. Map - nodes do map on input data.
 2. Shuffle - redistribute data based on the output keys (of map) - all data belonging to one key is located on
    the same worker node.
 3. Reduce: worker nodes now process each group of output data, per key, in parallel.
 Ex.
 - Документ разбивается на пары ключ 1 и слово, - MAP
 - слова группируются по ключу - у нас один ключ - отправляются на одну ноду
 - в редюсе наша нода что-то делает с этим набором.
*** Apache Hadoop
 frameworks for big data processing
 - Hadoop uses *HDFS* to distribute the data to multiple machines and *MapReduce* to distribute the process to
   multiple machines
 https://www.simplilearn.com/big-data-overview-apache-storm-tutorial-video

 *HDFS* - default block size of 64 Megabytes. default replication is 3.
 - To store - 320 Megabytes.
 - 64 * 5 where  64 Megabytes - one block
 -  five nodes in cluster
 -  each block is replicated to make 3 copies = 15 blocks


*Cloudera company* - started as a hybrid open-source Apache Hadoop distribution
- CDH- Cloudera’s Distribution including Apache Hadoop
*** real-time big data concept
  real-time means as soon as an event happens

 Example1: A bank wants to indicate the ATM location based on the customer location. Here, again the customer
 location data is received in real-time and recommendation has to be made immediately.

 automated teller machine (ATM) - electronic telecommunications device that enables customers of financial
 institutions to perform financial transactions

 Example 2: A credit card company wants to prevent fraudulent transactions. Here, probably both real-time and
 offline processing may be involved.
*** Zookeeper
Definition 1: distributed coordination service of Apache

Definition 2: centralized service for distributed systems to a hierarchical key-value store, which is used to
provide a:
- distributed configuration service
- synchronization service
- naming registry for large distributed systems

It provides useful recipes to handle common issues in distributed process coordination. Что делать в случае сбоев.

It facilitates building relations between distributed processes and applications. ???
*** Tools SPE Stream processing engines
Real-time Big data Tools

Following are some of the tools to handle big data in real-time:
- Apache Kafka	message system
- Apache Storm	stream-event processing (micro-batching)
- Apache Cassandra	scalable database
- Apache Spark	batch process
- Apache HBase	NoSQL database
- Apache Flink		stream-event processing


*Kafka* is a high-performance real-time messaging system.
- Open source, part of Apache projects
- Distributed and partitioned messaging system
- Highly fault-tolerant
- Can process millions of messages per second and send to many receivers

*Storm* is a real-time data processing system (event processor).
- Trident based on mini-batches exactly-once
- Open source, part of Apache projects
- Fast and reliable processing
- Processes unbounded sequence of data
- Interfaces with queues like Kafka to get data at one end and can store data into Cassandra

*Cassandra* is an Apache open source database with the following characteristics:
- Highly fault tolerant – no SPOF
- Highly available – Ring architecture
- real-time read and write
- Super fast writes with tunable consistency
- Simple SQL interface
- Key-value database
- Highly scalable

*Apache Spark* is considered as the next generation MapReduce.
- mini-batch stream processing
- Apache open source project
- Transforms distributed data
- Provides data transforms beyond the map and reduce
- Faster than Hadoop MapReduce
- Suitable for the batch as well as real-time processing
- Provides Spark-SQL for SQL interface to big data
- Provides built-in libraries for Machine Learning and Graph Processing

*Apache HBase* is another open source NoSQL database.
- Built on top of HDFS
- Distributed database
- Columnar storage
- Real-time read/write random access
- Supports very large databases
- Not relational
- Does not support SQL

*Apache Flink* like Storm

Apache Spark vs Flank

*** pattern
 Hadoop  *paradigm of taking the process to the data* - ???
** Windows 10
- appwiz.cpl - Установка удаление программ
- mstsc - RDP-client
*** Windows Tor Browser
-osint option for Tor Browser to open links

** Компании
- Фриланс - тяжело рости
- Продуктовые компании - возможность роста как повезет
- Маленький аунсорсинг - похож на фриланс, народ залипает, как повезет с професс-ю коллегами
- Большой аутсорсинг - легко менять вид деятельности, ничем не владеете, легко расти
- Enterprise( Бфнки АБВНефть Газ) - очень формальный, формальность отношений, стабильность, конференции
  выставки, движняк

Искать Технологии которые используют большинство аутсорсингов

Лаборатория при университете - плохо

- мобилы - плохо
- игры - плохо
- АСУТП - хорошо но тяжело найти

Заниматься тем, чем хочите
** Github
*** markdown
- online github markdown https://pandao.github.io/editor.md/en.html
- tutorial https://guides.github.com/features/mastering-markdown/#intro
** Secure boot or devil maid attack
https://habr.com/en/post/308032/
защита комьютера от модификации прямого доступа незаметным образом
** mouse click by timer
- apt-get install xdotool
- xdotool getmouselocation
- xdotool mousemove XXX YYY click 1
** SSL, X.509
used in many Internet protocols, including TLS/SSL
* Miltiple stages
Storage decoupled from processing
Data -> {Store} -> !Process! -> {Store} -> !Process! -> Anspwers
Data -> {Kafka} -> !Storm! ->
Interactive & Batch analutics layers.
** TODO Методики анализа большийх данных
- A/B testing :: контрольная выборка поочередно сравнивается с другими. достижения, например, наилучшей
                 ответной реакции потребителей на маркетинговое предложение
- Association rule learning ::

* ZK
- https://www.zkoss.org
- https://techdojo.blogspot.com/2012/04/first-look-at-mvvm-in-zk-6.html
- https://techdojo.blogspot.com/2012/03/jquery-selector-inspired-controller-in.html
- Java API https://www.zkoss.org/javadoc/latest/zk/
- ZUL Components https://www.zkoss.org/wiki/ZK_Component_Reference
- EL https://www.zkoss.org/wiki/ZUML_Reference
- examples https://www.zkoss.org/zkdemo/grid

Ajax framework ZK (Asynchronous JavaScript And XML - web tech on client to create asynchronous app)

- no need to knew JavaScrip
- Bootstrap support ? jetty?
- HTML 5 and CSS 3 support
- supporting multiple event driven GUI design patterns: MVC, MVVM,
- Application components, such as spreadsheet, pivot table, and calendar.
- Has support for Spring and Hibernate.

ZK User Interface Markup Language (ZUML)(or ZUL), an XML-formatted language, to describe UI *.zul* as the name
suffix. */src/main/webapp/index.zul*

 EL expressions is ${expr}

- window - root component
- tags inside window -  child components

Apply аттрибут привязывакт окно к классу контроллера
: <window apply="org.zkoss.bind.BindComposer"

** MVVM
http://books.zkoss.org/zk-mvvm-book/8.0/
ViewModel is an abstraction of Model. It extracts the necessary data to be displayed on the View from one or
more Model classes. Those data are exposed through getter and setter method like JavaBean's property. can not
access any UI components

data binding mechanism synchronize the data automatically. This makes ViewModel and View loosely coupled.

Validation performed before saving data into ViewModel. If validation fails, the data will not be saved to ViewModel.

- @Command - event handling. onClick="@command('insert')"
- @Init - initialization method
- @NotifyChange - update field that have getter. implicit for setters.
  - @DependsOn - notify change for getters
  - dynamic - BindUtils.postNotifyChange(null, null, this, "newcontact");

ViewModel - POJO exposes its properties like JavaBean.  The method's return type can be primitive type (int,
boolean...), or public! JavaBean.

it will create a binder for the ViewModel and instantiate the ViewModel's class. The id is used to reference
ViewModel's properties, e.g. vm.name, whilst the full-qualified class name is used to instantiate the
ViewModel object itself.
: <window apply="org.zkoss.bind.BindComposer"
: 		viewModel="@id('vm')@init('com.foo.mywebapp.MyViewModel')"

Bind value:
: <intbox value="@bind(vm.index)"/>
: <textbox value="@load(vm.name)"/> <!-- string -->
Propery of JavaBean (EL expression
: <label value="@load(vm.address.street)"/>
List collection, field = itemList:
#+BEGIN_SRC xml
private int selectedIndex;
get/set selectedIndex
get List<Class> itemList

<label value="@load(vm.address.street)"/>
<listbox model="@load(vm.itemList)" selectedIndex="@bind(vm.selectedIndex)">
    <template name="model" var="item">
        <listitem label="@load(item.name)"/>
    </template>
</listbox>
#+END_SRC

ZK Bind - data binding(and events) View(ZUL) <-> ViewModel(POJO)
- binding source :: component's attribute
- binding target :: ViewModel's property or Command

in ZUL:
- @load(vm.contacts): loading data to target, id - view mode, contacts - getter
- @save(...): for saving data. - setter
- @bind getter and setter

*Conditional binding* @save(vm.currentBook, before='save') - save after save command.
** TODO FORM
- https://www.zkoss.org/zkdemo/input/form_sample
- spring hibernate https://emrpms.blogspot.com/2013/06/zk-mvvm-form-binding-crud-with-spring.html
** Message Box
#+BEGIN_SRC java
Messagebox.show("Удалить?", null,Messagebox.OK | Messagebox.CANCEL, Messagebox.QUESTION,
   new EventListener<Event>() {
	@Override
	public void onEvent(Event event) throws Exception {
		if (Messagebox.ON_OK.equals(event.getName())){
			DAO.delete(id);
  });
#+END_SRC
** Example MVVM
#+BEGIN_SRC xml
<zk>
	<window apply="org.zkoss.bind.BindComposer"
		viewModel="@id('vm')@init('com.foo.mywebapp.MyViewModel')"
		validationMessages="@id('vmsgs')">
		<hlayout>count: <label value="@load(vm.count)" /></hlayout>
		<button label="add" onClick="@command('cmd')"/>
	</window>
</zk>
#+END_SRC
#+BEGIN_SRC java
import org.zkoss.bind.annotation.Command;
import org.zkoss.bind.annotation.Init;
import org.zkoss.bind.annotation.NotifyChange;

public class MyViewModel {

	private int count;

	@Init
	public void init() {
		count = 100;
	}

	@Command
	@NotifyChange("count")
	public void cmd() {
		++count;
	}

	public int getCount() {
		return count;
	}
}
#+END_SRC
** Example MVC
https://www.zkoss.org/wiki/ZK_Getting_Started/Get_ZK_Up_and_Running_with_MVC
** install
Eclipse: [Window] -> [Preferences] -> [Maven] --> [Archetypes], click Add Remote Catalog
http://mavensync.zkoss.org/maven2/

maven: jetty:stop jetty:run.  jetty:stop не нужно

http://localhost:8080/mywebapp/index.zul
* TODO Application_performance_management