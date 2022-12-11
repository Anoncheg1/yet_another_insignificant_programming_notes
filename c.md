
# Table of Contents

1.  [course](#orgecae134)
2.  [naming conventions](#org9ba2456)
3.  [Hello world and compilers, main](#org3c3a0a4)
    1.  [gcc](#org1aeeb8c)
    2.  [hello world](#org8a2be39)
    3.  [main, return type and arguments](#orga5852da)
4.  [history](#orgc1d1d4f)
5.  [features, constants, comments](#org0aee580)
    1.  [Constants](#org12f6c37)
    2.  [Comments](#orgcefc664)
6.  [Keywords](#org64040e4)
7.  [Linkage](#org24d183e)
    1.  [Storage class](#org9a3973c)
        1.  [restrict keyword](#org475cb2f)
        2.  [extern keyword](#orga0011f3)
8.  [dynamic libraries, ldd, ldconfig](#org723e598)
9.  [Operators](#org62b230e)
    1.  [priority](#org04f4f05)
    2.  [cast operator: (type<sub>name</sub>) expression](#org2e76741)
10. [Chained operators](#orgca521a7)
    1.  [links](#org279f406)
11. [Data model](#org3c48c4a)
    1.  [literals](#org3186c8f)
        1.  [integer](#org93aaedf)
        2.  [float](#org8f73121)
        3.  [character](#orgf600902)
        4.  [String Literals](#orgc049ca5)
    2.  [memory allocation](#orged11a92)
    3.  [Numerical](#orgbf072b8)
    4.  [structure](#org4b72122)
    5.  [Union](#orgabb91da)
    6.  [Array](#orga04aca0)
    7.  [Enum](#org7435082)
    8.  [Strings](#orge295130)
    9.  [Pointers](#orgcdd3c8d)
        1.  [ex](#org82d6524)
        2.  [dangers:](#orgdee6937)
        3.  [pointer arithmetic.](#orgc2aa3c2)
    10. [void](#org8b69ca8)
12. [control structures](#org7a9d926)
    1.  [loops](#org83c9823)
13. [functions](#org6012fc6)
    1.  [variable number of arguments](#org50555fd)
14. [header files](#org5e29025)
    1.  [Standart way to prevent "Once-Only Header"](#orgffa4aa5)
    2.  [typedef](#orgcc35830)
15. [C - Preprocessors](#org0721b8d)
    1.  [Macro types](#orgd06dcb9)
    2.  [Directive & Description](#org10be8fc)
    3.  [Predefined Macros](#org9ce3a68)
    4.  [Preprocessor Operators](#org113456d)
    5.  [examples](#org5e6968e)
    6.  [links](#orgeae19aa)
16. [Error Handling ](#orge6b294d)
17. [Libraries theory](#org75263de)
18. [C Standard Library](#orgab3cf01)
    1.  [assert.h](#org3380f27)
    2.  [ctype.h](#org0ec819e)
    3.  [errno.h](#org40d3a94)
    4.  [float.h](#orgd4d71b8)
    5.  [limits.h](#org5aa818e)
    6.  [locale.h](#org7960d0d)
    7.  [math.h](#orgdcae0f0)
    8.  [setjmp.h](#orgdd8b982)
        1.  [examples](#org9b45aa8)
    9.  [signal.h](#org7200ed7)
    10. [links](#org11843b3)
19. [I/O](#orgea026fc)
    1.  [fastest io](#orge279176)
    2.  [printf](#org3c810e3)
20. [GTK](#org5a80128)
    1.  [GLib is the low-level core library that forms the basis for projects such as GTK and GNOME](#org50f9acd)
21. [GCC](#org07cbc41)
    1.  [compilation options](#org2110648)
    2.  [used header files](#org7805505)
22. [toolchain](#org808b620)
    1.  [GNU toolchain](#org2de17cb)
    2.  [LLVM](#org8d1bdbf)
23. [Makefile](#orgbd9d051)
    1.  [get targets from Makefile](#orgc871783)
    2.  [theory](#orgd262d73)
    3.  [Makefile](#orgba5d9a3)
    4.  [Special Built-in Target Names](#orgbc8d6e7)
        1.  ['.SUFFIXES'](#org96707d7)
    5.  [variables](#org564a9c2)
        1.  ["recursively expanded" variable.](#org4e19c3c)
        2.  [simply expanded variables (preffered)](#org513596a)
        3.  [Substitution References](#org4a654ff)
        4.  [Computed Variable Names](#org4dfdee9)
        5.  [automatic variables](#org6d896af)
        6.  [ex](#orgffda1b9)
    6.  [Implicit Rules](#org22296ec)
    7.  [directives](#orgdef1605)
        1.  [Conditional Directives or Conditionals](#org2128437)
    8.  [make.inc](#orga3752b5)
24. [cmake](#org3010776)
25. [pkg-config](#orgd3d4be7)
26. [GNU Libtool](#org8a1d43d)
27. [debug](#org1210f2d)
    1.  [Assertions](#orgff6f44f)
    2.  [gdb](#orgdc7aac9)
    3.  [Valgrind](#org504dfc1)
    4.  [print](#orga89f1e6)
28. [install /usr/local/bin](#org89f6adf)
29. [Difference between C and C++ and Objective-C](#orgc597e44)
    1.  [Objective-C](#orgf98c52e)
30. [C++](#orga746792)
    1.  [operators](#org0899c1a)
    2.  [hello world](#orge0c760b)
    3.  [libs](#org824d482)
31. [Meson](#org315e205)

;-**- mode: Org; fill-column: 110;-**-

<https://www.tutorialspoint.com/cprogramming/index.htm>


<a id="orgecae134"></a>

# course

Course Outline

C Programming


<a id="org9ba2456"></a>

# naming conventions

-   array - array of data
-   type - usualy a enum
-   node - link to other nodes
-   entity - generic networking thing
-   handle - pointer to opaqe data structure
-   func - function pointer or function used as function pointer
-   internal - function internal to a module
-   i, j, k, count, length, found, next, previous, f, vec

php

-   Views - mostly to keep graphical design
-   Models - wrapper around database tables
-   Controllers - Classes where every function is called from a route and returns a http response, like view or redirect or error (404)
-   Brokers - classes to get all the calculation and logic. It is like a black box that takes what you have and gives you back exactly what you wanted. It also serves like a replacement for documentation.
-   Handlers - mostly for Exception Handling and Event handling
-   Services - wrappers around APIs
-   Requests - to describe some inputs, it also can handle validation, authorization, typehinting, and some basic data processing, like get a model by provided id
-   Middleware - to abstract out some common logic from the multiple routes, like authentication and authorization
-   Helpers - some tiny classes and functions used throughout the project, like MoneyHelper or ValidationHelper
-   Factory - some interfaces can have multiple implementations depending on some input parameters, so the factory would give you the right one


<a id="org3c3a0a4"></a>

# Hello world and compilers, main


<a id="org1aeeb8c"></a>

## gcc

    $ gcc hello.c
    $ ./a.out

The default, if no C language dialect options are given, is -std=gnu17.

Published in June 2018, C17 is the current standard for the C programming language.


<a id="org8a2be39"></a>

## hello world

    #include <stdio.h>

    int main() {
       /* my first program in C */
       printf("Hello, World! \n");

       return 0;
    }


<a id="orga5852da"></a>

## main, return type and arguments

C:

-   int main(){
-   int main(int argc, char\* argv[]){
-   int main(int argc, char \*\*argv){

C++:

-   int main(){
-   int main(int argc, char \*\*argv){
-   int main(int argc, char\* argv[]){
-   main(){

arguments

-   argc (ARGument Count) denotes the number of arguments to be passed
-   argv [ ] (ARGument Vector) denotes a pointer array pointing to every argument that has been passed to your program.
-   argv[0] stores the name of your program - argv[0] to argv[argc-1]
-   arguments separate by space


<a id="orgc1d1d4f"></a>

# history

<https://gcc.gnu.org/onlinedocs/gcc/Standards.html>
1972 	Birth
1978 	K&R C
1989/1990 	ANSI C and ISO C
1999 	C99
2011 	C11
2017 	C17
TBD 	C2x


<a id="org0aee580"></a>

# features, constants, comments

**procedural**
supporting:

-   structured programming - n (if/then/else) and repetition (while and for), block structures, and subroutines.
-   lexical variable scope - hide local variables of functions
-   recursion
-   static type system

Functions may not be defined within the lexical scope of other functions.

    typedef int length; // alias for type

member access operator (.)

Procedures - function, with an untyped return type void

A preprocessor performs macro definition, source code file inclusion, and conditional compilation.

modularity: files can be compiled separately and linked together, with control over which functions and data
objects are visible to other files via static and extern attributes.

Declaration and definition


<a id="org12f6c37"></a>

## Constants

\#define LENGTH 10
const int  LENGTH = 10;


<a id="orgcefc664"></a>

## Comments

*/ to end of the line
/\* \** - do not nest, can not be inside string or character literal


<a id="org64040e4"></a>

# Keywords

-   if
-   else
-   switch
-   case
-   for
-   while
-   do
-   break
-   continue

Type qualifiers:

-   volatile - prevents an optimizing compiler from optimizing away subsequent reads or writes and thus
    incorrectly reusing a stale value or omitting writes.
-   const
-   restrict - optimization for pointer when they at distinct memory
-   \_Atomic (C11)

-   signed
-   unsigned
-   typedef
-   long
-   int
-   char
-   float
-   short
-   void
-   sizeof
-   double

-   enum
-   union
-   struct

-   return
-   goto

Storage Classes

-   auto - default (in functions)
-   register - stored in a register instead of RAM - maximum size equal to the register size (usually one word)
-   static - maintain their values between function calls.
-   extern - declare global something that was defined global in another file

-   default
-   \_Packed

C99 reserved five more words:

-   \_Bool
-   \_Complex
-   \_Imaginary
-   inline


<a id="org24d183e"></a>

# Linkage

When we compile a program, the ‘C’ compiler will generate object files (“.o” files. Some compilers will
generate “.obj” files.). After that linker will generate a “.out” file (or some compilers will generate “.exe”
files.). That means, it is a two steps process; one step is to compile the program and another step is to link
the object files and generate the executable file.

-   object file is in binary format and it is a compiled code;
-

types

-   external linkage - throughout the entire program,
-   internal linkage - restricted to one source file
-   no linkage respectively - restricted to one function (or perhaps a single compound statement).

linkage select:

1.  A declaration outside a function (file scope) which contains the static storage class specifier results in internal linkage for that name. (The Standard requires that function declarations which contain static must be at file scope, outside any block)
2.  If a declaration contains the extern storage class specifier, or is the declaration of a function with no storage class specifier (or both), then:
    -   If there is already a visible declaration of that identifier with file scope, the resulting linkage is the same as that of the visible declaration;
    -   otherwise the result is external linkage.
3.  If a file scope declaration is neither the declaration of a function nor contains an explicit storage class specifier, then the result is external linkage.
4.  Any other form of declaration results in no linkage.
5.  In any one source code file, if a given identifer has both internal and external linkage then the result is undefined.

What makes a declaration into a definition?

-   Declarations that result in no linkage are also definitions.
-   Declarations that include an initializer are always definitions; this includes the ‘initialization’ of functions by providing their body. Declarations with block scope may only have initializers if they also have no linkage.
-   Otherwise, the declaration of a name with file scope and with either no storage class specifier or with the static storage class specifier is a tentative definition. If a source code file contains one or more tentative definitions for an object, then if that file contains no actual definitions, a default definition is provided for that object as if it had an initializer of 0. (Structures and arrays have all their elements initialized to 0). Functions do not have tentative definitions.


<a id="org9a3973c"></a>

## Storage class

-   For external declarations the default storage class specifier will be extern and for internal declarations it

will be auto.

-   declaration of functions - default storage class specifier is always extern.


<a id="org475cb2f"></a>

### restrict keyword

hints to the compiler that for the lifetime of the pointer, only the pointer itself or a value directly
derived from it (such as pointer + 1) will be used to access the object to which it points.

-   produce better optimized code

    void updatePtrs(size_t *restrict ptrA, size_t *restrict ptrB, size_t *restrict val);

-   hints to the compiler that for the lifetime of the pointer, only the pointer itself or a value directly
    derived from it (such as pointer + 1) will be used to access the object to which it points.


<a id="orga0011f3"></a>

### extern keyword

-   it is better to put extern functions and variables in header file

    #include <stdio.h>

    int count ;
    extern void write_extern();

    main() {
       count = 5;
       write_extern();
    }

    #include <stdio.h>

    extern int count;

    void write_extern(void) {
       printf("count is %d\n", count);
    }

Here, extern is being used to declare count in the second file, where as it has its definition in the first file, main.c. Now, compile these two files as follows −

    $ gcc main.c support.c
    ./a.out

> count is 5


<a id="org723e598"></a>

# dynamic libraries, ldd, ldconfig

-   man ld.so
-   /etc/ld.so.conf - paths for shared libraries

\#include "<header file name>" - static and dynamic

from .c created .so shared library, static - they are inside executables

LD<sub>LIBRARY</sub><sub>PATH</sub> - used first for search .so files for program, exp. export LD<sub>LIBRARY</sub><sub>PATH</sub>="${LD<sub>LIBRARY</sub><sub>PATH</sub>}:<your path>"

Show .so dependencies:

-   safe: objdump -p /bin/bash | grep NEEDED
-   unsafe: ldd /bin/bash


<a id="org62b230e"></a>

# Operators


<a id="org04f4f05"></a>

## priority

Higher at top

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Category</th>
<th scope="col" class="org-left">Operator</th>
<th scope="col" class="org-left">Associativity</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Postfix</td>
<td class="org-left">() [] -> . ++ --</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Unary</td>
<td class="org-left">+ - ! ~ ++ - - (type)\* & sizeof</td>
<td class="org-left">Right to left</td>
</tr>


<tr>
<td class="org-left">Multiplicative</td>
<td class="org-left">\* / %</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Additive</td>
<td class="org-left">+ -</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Shift</td>
<td class="org-left"><< >></td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Relational</td>
<td class="org-left">< <= > >=</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Equality</td>
<td class="org-left">`= !`</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Bitwise</td>
<td class="org-left">AND &</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Bitwise</td>
<td class="org-left">XOR ^</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Bitwise</td>
<td class="org-left">OR &vert;</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Logical</td>
<td class="org-left">AND &&</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Logical</td>
<td class="org-left">OR &vert;&vert;</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Conditional</td>
<td class="org-left">?:</td>
<td class="org-left">Right to left</td>
</tr>


<tr>
<td class="org-left">Assignment</td>
<td class="org-left">= += -= \*= /= %=>>= <<= &= ^=  &vert;=</td>
<td class="org-left">Right to left</td>
</tr>


<tr>
<td class="org-left">Comma</td>
<td class="org-left">,</td>
<td class="org-left">Left to right</td>
</tr>
</tbody>
</table>

-   arithmetic: +, -, \*, /, %
-   assignment: =
-   augmented assignment: +=, -`, *`, /=, %=, &=, |=, ^=, <<=, >>=
-   bitwise logic: ~, &, |, ^
-   bitwise shifts: <<, >>
-   boolean logic: !, &&, ||
-   conditional evaluation: ? :
-   equality testing: `=, !`
-   calling functions: ( )
-   increment and decrement: ++, &#x2013;
-   member selection: ., ->
-   object size: sizeof
-   order relations: <, <=, >, >=
-   reference and dereference: &, \*, [ ]
-   sequencing: ,
-   subexpression grouping: ( )
-   type conversion: (typename)

if (a = b + 1), which will be evaluated as true if a is not zero after the assignment


<a id="org2e76741"></a>

## cast operator: (type<sub>name</sub>) expression

-   **usual arithmetic conversions** are implicitly performed to cast their values to a common type.
-   Integer Promotion - values of integer type "smaller" than int or unsigned int are converted either to int or
    unsigned int
-   usual arithmetic conversions are not performed for the assignment operators, nor for the logical operators
    && and ||

Compiler first performs integer promotion; if the operands still have different types, then they are converted
to the type that appears highest in the following hierarchy:

1.  char
2.  unsigned char
3.  int
4.  unsigned int
5.  long
6.  unsigned long
7.  long long
8.  unsigned long long
9.  float
10. double
11. long double

inbuilt typecasting functions:

-   atof() Converts a string to float
-   atoi() Converts a string to int
-   atol() Converts a string to long
-   itoa() Converts int to string
-   ltoa() Converts long to string


<a id="orgca521a7"></a>

# Chained operators

-   All languages usually "left associative" - grouping left to right so that 16/4/4 is interpreted as (16/4)/4 =
-   Chained assignment - implemented by having a right-associative assignment.
-   In C, the assignment a = b is an expression that evaluates to the same value as the expression b converted
    to the type of a
-   In C++, the assignment a = b is an expression that evaluates to the same value as the expression a, with the
    side effect of storing the R-value of b into the L-value of a. опреатор = является функцией класса с
    аргументом правого элемента присвоения и всегда возвращает this.

    std::cout << "Its decimal equivalent is: " << n << '\n';

здесь операторы << имеют одинаковый приоритет и выполняются слева направо. Каждый из них бинарный, возвращает
объект count, и так по порядку - слева направо.

    a = (b = c)

can be interpreted as b = c; a = c;

    (a = b) = c

raises an error in C because a = b is not an L-value expression. In C++ can be interpreted as a = b; a = c;

    a=b=c

equal to a = (b = c) in C/C++. In Python tmp=c ; a=tmp; b=tmp

    v = a=1,b=2,c=3

Присвоение имеет приоритет 16, а запятая 17 (ниже),
результат будет v=1 первого оператора, все остальные операторы выполняются только для побочного эффекта

    a= (b++,c++, v++)

a=v++

    (a=b).fun()

в С++ будет вызвана a.fun(), в С вероятно b.fun()

    a>b>c

Из за "left associative" привила, В С/С++ оператор > принимает два аргумента и возвращает int. bool = (a>b) ;
bool>c - что является не тем что хотелось бы. В Python эквивалентно a<b and b<c


<a id="org279f406"></a>

## links

<https://en.wikipedia.org/wiki/Operator_associativity>
<https://en.wikipedia.org/wiki/Assignment_(computer_science)>


<a id="org3c48c4a"></a>

# Data model


<a id="org3186c8f"></a>

## literals


<a id="org93aaedf"></a>

### integer

212         *\* Legal \**
215u        *\* Legal \**
0xFeeL      *\* Legal \**
078         *\* Illegal: 8 is not an octal digit \**
032UU       *\* Illegal: cannot repeat a suffix \**
85         *\* decimal \**
0213       *\* octal \**
0x4b       *\* hexadecimal \**
30         *\* int \**
30u        *\* unsigned int \**
30l        *\* long \**
30ul       *\* unsigned long \**


<a id="org8f73121"></a>

### float

3.14159       *\* Legal \**
314159E-5L    *\* Legal \**
510E          *\* Illegal: incomplete exponent \**
210f          *\* Illegal: no decimal or exponent \**
.e55          *\* Illegal: missing integer or fraction \**


<a id="orgf600902"></a>

### character

single quotes
 'x'
 '\t' */ escape sequence
'\u02C0' /*  universal character

newline (\n) or tab (\t).


<a id="orgc049ca5"></a>

### String Literals

-   double quotes ""
-   You can break a long line into multiple lines using string literals and separating them using white spaces.

"hello, dear" // one

"hello, \\
dear" // one

"hello, " "d" "ear" // one


<a id="orged11a92"></a>

## memory allocation

-   Static memory allocation: space for the object is provided in the binary at compile-time; these objects have
    an extent (or lifetime) as long as the binary which contains them is loaded into memory.
-   Automatic memory allocation: temporary objects can be stored on the stack, and this space is automatically
    freed and reusable after the block in which they are declared is exited.
    -   stack space is typically much more limited and transient than either static memory or heap space
-   Dynamic memory allocation: blocks of memory of arbitrary size can be requested at run-time using library
    functions such as malloc from a region of memory called the heap; these blocks persist until subsequently
    freed for reuse by calling the library function realloc or free


<a id="orgbf072b8"></a>

## TODO Numerical

<https://en.wikipedia.org/wiki/C_data_types>
signed and unsigned

-   char
-   short
-   int
-   long
-   long long
-   float - single-precision floating-point type
-   double
-   long double
-   bool


<a id="org4b72122"></a>

## structure

-   all of its data members are stored in contiguous memory locations
-   A function may directly return a structure, although this is often not efficient at run-time. Since C99, a
    structure may also end with a flexible array member.

    struct birthday {
    	char name[20];
    	int day;
    	int month;
    	int year;
    };

    struct birthday John; // allocation of memory

    // or
     typedef struct {
        int x;           // x and y are separate
        int y;
    } tPoint;

    _Arguments arguments = { 0 }; // initialization
    arguments->config_filepath // access


<a id="orgabb91da"></a>

## Union

-   is a structure with overlapping members; only the last member stored is valid.
-   The memory occupied by a union will be large enough to hold the largest member of the union.
-   Последнее присвоение будет хранить корректные данные
-   great cost of safety: the program logic must ensure that it only reads the field most recently written along
    all possible execution paths.

    union [union tag] {
     member definition;
     member definition;
     &#x2026;
     member definition;

} [one or more union variables];


<a id="orga04aca0"></a>

## Array

store a fixed-size sequential collection of elements of the same type

type arrayName [ arraySize ];

    double balance[5] = {1000.0, 2.0, 3.4, 7.0, 50.0}; # 5 - size
    double balance[] = {1000.0, 2.0, 3.4, 7.0, 50.0};
    int a[10][8];  // array of 10 elements, each of type 'array of 8 int elements'
    double balance[5] = {1000.0}

pass to function:

-   void myFunction(int \*param) - Formal parameters as a pointer
-   void myFunction(int param[10]) - Formal parameters as a sized array
-   void myFunction(int param[]) - Formal parameters as an unsized array

example with size:

    double getAverage(int arr[], int size)

Return from function

-   C programming does not allow to return an entire array as an argument to a function.
-   C does not advocate to return the address of a local variable to outside of the function, so you would have
    to define the local variable as static variable.

    int * myFunction()


<a id="org7435082"></a>

## Enum

enum cardsuit {
    Clubs,
    Diamonds,
    Hearts,
    Spades
};

struct card {
    enum cardsuit suit;
    short int value;
} hand[13];

enum cardsuit trump;

// allow this
enum cardsuit {
    Clubs    = 1,
    Diamonds = 2,
    Hearts   = 4,
    Spades   = 8
};


<a id="orge295130"></a>

## Strings

-   conventionally implemented as null-terminated character arrays
-   one-dimensional array of characters terminated by a null character '\\0'.

define:

-   char greeting[6] = {'H', 'e', 'l', 'l', 'o', '\\0'};
-   char greeting[] = "Hello";
-   ' - for char, " for string

    #include <string.h> //string operations


<a id="orgcdd3c8d"></a>

## Pointers

-   can be dereferenced to access data stored at the address pointed to, or to invoke a pointed-to function
-   Void pointers (void \*) point to objects of unspecified type,
-   ampersand (&) operator - access address of variable
-   \*pointer - access variable at pointer
-   NULL is a constant with value of zero
    -   Dereferencing a null pointer value is undefined - often resulting in a segmentation fault

    int *ptr[MAX]; // array of pointer to int
    char *names[] = { "Zara Ali", "Hina Ali", "Nuha Ali", "Sara Ali" }; // pinters to strings
    name[0], name[1]


<a id="org82d6524"></a>

### ex

    char *square;
    long *circle;
    int *oval;

    int **oval2; // pointer of pointer
    int ***oval3; // pointer of pointer of pointer

    char *pc[10];   // array of 10 elements of 'pointer to char'
    char (*pa)[10]; // pointer to a 10-element array of char

    int (*my_int_f)(int) = &abs; // pointer of function
    // the & operator can be omitted, but makes clear that the "address of" abs is used here


<a id="orgdee6937"></a>

### dangers:

-   point ot unsafe places by using invalid pointer arithmetic;
-   the objects they point to may continue to be used after deallocation (dangling pointers)
-   they may be used without having been initialized (wild pointers)
-   directly assigned an unsafe value using a cast, union, or through another corrupt pointer


<a id="orgc2aa3c2"></a>

### pointer arithmetic.

-   ++, &#x2013;, +, and -
-   int \* p = 1000
-   p++
-   p is now 1004  # Assuming 32-bit integers


<a id="org8b69ca8"></a>

## void

specifies that no value is available

-   Function returns as void
-   Function arguments as void - int rand(void) = int rand()
-   Pointers to void - represents the address of an object, but not its type
    -   void \*malloc( size<sub>t</sub> size ) - returns a pointer to void which can be casted to any data type.


<a id="org7a9d926"></a>

# control structures


<a id="org83c9823"></a>

## loops

    for ( init; condition; increment ) {
       statement(s);
    }

-   init step is executed first, and only once
-   condition - If it is true, the body of the loop is executed
-   increment - executed After the body


<a id="org6012fc6"></a>

# functions

-   by default, the return type of a function is an integer(int) data type.
-   A Function declaration is also known as a function prototype.
-   In function declaration name of parameters are not compulsory, but we must define their datatype. Hence the
    following declaration is also valid.
    -   int getSum(int, int);
-   If function definition is written before the main function then function declaration is not required
    whereas, if function definition is written after the main function then we must write function declaration
    before the main function.

void - without returning a value

pass the parameters by:

-   call by value
-   call by reference
    -   void show(int \*num){}
    -   change(&x);


<a id="org50555fd"></a>

## variable number of arguments

-   \#include <stdarg.h>
-   int func(int, &#x2026; )
-   always an int - total number variable arguments passed
-   ellipses = &#x2026;
-   va<sub>list</sub> valist; // define
-   va<sub>start</sub>(valist, num); // initialize
-   va<sub>arg</sub>(valist, int); // get
-   va<sub>end</sub>(valist); // clean

    #include <stdio.h>
    #include <stdarg.h>

    double average(int num,...) {

       va_list valist;
       double sum = 0.0;
       int i;

       /* initialize valist for num number of arguments */
       va_start(valist, num);

       /* access all the arguments assigned to valist */
       for (i = 0; i < num; i++) {
          sum += va_arg(valist, int);
       }

       /* clean memory reserved for valist */
       va_end(valist);

       return sum/num;
    }

    int main() {
       printf("Average of 2, 3, 4, 5 = %f\n", average(4, 2,3,4,5));
       printf("Average of 5, 10, 15 = %f\n", average(3, 5,10,15));
    }


<a id="org5e29025"></a>

# header files

Including a header file is equal to copying the content of the header file

-   \#include <file> - system files
-   \#include "file" - user-defined or external files.

what:

-   prototypes of the functions contained within the library that may be used by a program, and declarations of
    special data types and macro symbols used with these functions
-   all the constants, macros, system wide global variables
-   function declarations and macro definitions to be shared between several source files
-   -I option while compiling your source code. to instruct directories to search for header files
-   Once-Only Headers - rule - included twice = error

for

-   forward declarations
-   promoting encapsulation and the reuse of code or data

In order for a program to use a library, it must include the library's header file, and the library must be
linked with the program, which in many cases requires compiler flags (e.g., -lm, shorthand for "link the math
library")

    #include <file> // system header files
    #include "file" // own program - in the directory containing the current file


<a id="orgffa4aa5"></a>

## Standart way to prevent "Once-Only Header"

    #ifndef HEADER_FILE
    #define HEADER_FILE

    the entire header file file

    #endif

    #if SYSTEM_1
       # include "system_1.h"
    #elif SYSTEM_2
       # include "system_2.h"
    #elif SYSTEM_3
       ...
    #endif

    #define SYSTEM_H "system_1.h"
    ...
    #include SYSTEM_H
    // SYSTEM_H could be defined by your Makefile with a -D option.


<a id="orgcc35830"></a>

## typedef

typedef int aaa, bbb, ccc;
typedef int ar[15], arr[9][6];
typedef char c, \*cp, carr[100];

*\* now declare some objects \**

*\* all ints \**
aaa     int1;
bbb     int2;
ccc     int3;

ar      yyy;    *\* array of 15 ints \**
arr     xxx;    *\* 9\*6 array of int \**

c       ch;     *\* a char \**
cp      pnt;    *\* pointer to char \**
carr    chry;   *\* array of 100 char \**


<a id="org0721b8d"></a>

# C - Preprocessors

-   text substitution tool  - pre-processing before the actual compilation
-   All preprocessor commands begin with a hash symbol (#). It must be the first nonblank character, and for
    readability, a preprocessor directive should begin in the first column.


<a id="orgd06dcb9"></a>

## Macro types

-   Simple Macros - extend the same way
    -   \#define MAIN
    -   \#define BUFFER<sub>SIZE</sub> 1020
    -   \#define BAR (x) - 1 / (x) - expand into \`(x) - 1 / (x)'
    -   Macro definitions do not have to have balanced parentheses.
    -   multiline with '\\' symbol
-   Macros with Arguments
    -   \#define min(X, Y)  ((X) < (Y) ? (X) : (Y))
    -   use: \`min (1, 2)' and \`min (x + 28, \*p)'
    -   You may not define the same name as both a simple macro and a macro with arguments.
-   Stringification - turning a code into a string constant. ex: \`foo (z)' results in \`"foo (z)"'
    -   \#define WARN<sub>IF</sub>(EXP) fprintf (stderr, "Warning: " #EXP "\n");
-   Concatenation - ## operator
-   Undefining Macros - #undef FOO - cancel its definition
-   \`#if', \`#ifdef' or \`#ifndef
    -   \`#endif' is final macro, good practice to add comment with #if expression after
    -   expression is a C expression of integer type
        -   \`sizeof' operators and enum-type values are not allowed
    -   \#else
    -   \#elif expression
    -   \#if 0 #endif - good alternative to comment code
    -   preprocessor does not understand sizeof, or typedef names, or even the type keywords such as int.
    -   special operator \`defined' is used in \`#if' expressions to test whether a certain name is defined as a
        macro.  Either \`defined name' or \`defined (name)
-   \#PREDICATE (ANSWER)
    -   Значением ANSWER может быть любая последоватльность слов. Здесь все символы являются значимыми, за
        исключением пробелов, расположенных в начале и в конце ANSWER
    -   Большинство проверяемых утверждений являются заранее определенными.
    -   GNU C предоставляет три заранее определенных утверждения: 'system', 'cpu' и 'machine'
        -   \#system (gnu)
        -   \#system (mach)
        -   \#system (unix) &#x2013; most common
    -   deprecated alternative to macros
    -   in practice they are just as unpredictable as the system-specific predefined macros. In addition, they are not part of any standard, and only a few compilers support them.
    -   To test an assertion, you write it in an \`#if'
        -   \#if #machine (vax)
        -   \#if #machine - can test whether any answer is asserted for a predicate by omitting the answer in the conditional
    -   \#assert predicate (answer)
    -   You can also make or cancel assertions using command line options.
        -   -A predicate=answer Make an assertion with the predicate predicate and answer answer.
        -   -A -predicate=answer Cancel an assertion with the predicate predicate and answer answer.
-   \`#error' causes the preprocessor to report a fatal error. #warning - warning and continue
    -   \#error Won't work on Vaxen.  See comments at get<sub>last</sub><sub>object</sub>.
-   \#line alter the results of the \`\_<sub>FILE</sub>\_\_' and \`\_<sub>LINE</sub>\_\_' predefined macros from that point on.
    -   \#line linenum
    -   \#line linenum filename
    -   \#line anything else


<a id="org10be8fc"></a>

## Directive & Description

-   \#define - Substitutes a preprocessor macro. - constants, functions
-   \#include - Inserts a particular header from another file.
-   \#undef - Undefines a preprocessor macro.
-   \#ifdef - Returns true if this macro is defined.
-   \#ifndef - Returns true if this macro is not defined.
-   \#if - Tests if a compile time condition is true.
-   \#else - The alternative for #if.
-   \#elif - #else and #if in one statement.
-   \#endif - Ends preprocessor conditional.
-   \#error - Prints error message on stderr.
-   \#pragma - Issues special commands to the compiler, using a standardized method.


<a id="org9ce3a68"></a>

## Predefined Macros

Standart

-   \_<sub>DATE</sub>\_\_ The current date as a character literal in "MMM DD YYYY" format.
-   \_<sub>TIME</sub>\_\_ The current time as a character literal in "HH:MM:SS" format.
-   \_<sub>FILE</sub>\_\_ This contains the current filename as a string literal.
-   \_<sub>LINE</sub>\_\_ This contains the current line number as a decimal constant.
-   \_<sub>STDC</sub>\_\_ Defined as 1 when the compiler complies with the ANSI standard.

Nonstandard

-   unix    \`unix' is normally predefined on all Unix systems.
-   BSD    \`BSD' is predefined on recent versions of Berkeley Unix (perhaps only in version 4.3).

Other nonstandard predefined macros describe the kind of CPU, with more or less specificity. For example,

-   vax    \`vax' is predefined on Vax computers.
-   mc68000    \`mc68000' is predefined on most computers whose CPU is a Motorola 68000, 68010 or 68020.
-   m68k    \`m68k' is also predefined on most computers whose CPU is a 68000, 68010 or 68020; however, some makers use \`mc68000' and some use \`m68k'. Some predefine both names. What happens in GNU C depends on the system you are using it on.
-   M68020    \`M68020' has been observed to be predefined on some systems that use 68020 CPUs&#x2013;in addition to \`mc68000' and \`m68k', which are less specific.
-   \_AM29K<sub>AM29000</sub>  Both \`<sub>AM29K</sub>' and \`<sub>AM29000</sub>' are predefined for the AMD 29000 CPU family.
-   ns32000    \`ns32000' is predefined on computers which use the National Semiconductor 32000 series CPU.

Yet other nonstandard predefined macros describe the manufacturer of the system. For example,

-   sun    \`sun' is predefined on all models of Sun computers.
-   pyr    \`pyr' is predefined on all models of Pyramid computers.
-   sequent    \`sequent' is predefined on all models of Sequent computers.


<a id="org113456d"></a>

## Preprocessor Operators

-   The Macro Continuation (\\) Operator
-   The Stringize (#) Operator - may be used only in a macro having a specified argument or parameter list
-   The Token Pasting (##) Operator - insert argument to create new one
-   The Defined() Operator -  to determine if an identifier is defined using #define
-   Parameterized Macros


<a id="org5e6968e"></a>

## examples

    #include <stdio.h>
    // The Stringize (#) Operator
    #define  message_for(a, b)  \
       printf(#a " and " #b ": We love you!\n")

    int main(void) {
       message_for(Carole, Debra); // Carole and Debra: We love you!
       return 0;
    }

    // The Token Pasting (##) Operator
    #define tokenpaster(n) printf ("token" #n " = %d", token##n) // printf ("token34 = %d", token34);

    int main(void) {
       int token34 = 40;
       tokenpaster(34); // token34 = 40
       return 0;
    }

    // The Defined() Operator

    #if !defined (MESSAGE)
       #define MESSAGE "You wish!"
    #endif

    int main(void) {
       printf("Here is the message: %s\n", MESSAGE);
       return 0;
    }

    // Parameterized Macros
    #define MAX(x,y) ((x) > (y) ? (x) : (y))
    #define square(x) ((x) * (x))

    int main(void) {
       printf("Max between 20 and 10 is %d\n", MAX(10, 20));
       // Max between 20 and 10 is 20
       return 0;
    }

    #define MAIN
    //code


    #ifndef __G_UNIX_H__
    #define __G_UNIX_H__
    //code
    #endif  /* __G_UNIX_H__ */


<a id="orgeae19aa"></a>

## links

<https://www.math.utah.edu/docs/info/cpp_1.html>


<a id="orge6b294d"></a>

# Error Handling <a id="org62b5168"></a>

-   C does not provide direct support to error handling
-   Most of the C or even Unix function calls return -1 or NULL in case of any error and set an error code

**errno**.

Different methods of Error handling in C

-   Global Variable **errno** - Its a global variable indicating the error occurred during any function call and
    defined in the header file errno.h.
    -   \#include <errno.h>
    -   apt-get install errno
    -   errno -l
-   char \* strerror(int) : printf("The error message is : %s\n", strerror(errno)); - returns textual representation of
    the current errno value.
-   void perror(char\*) : print result of strerror without parameter with custom text before error ( reads errno)
-   The C standard specifies two constants: EXIT<sub>SUCCESS</sub> and EXIT<sub>FAILURE</sub> These are macros defined in stdlib.h.
    -   \#include <stdlib.h>
    -   exit(EXIT<sub>FAILURE</sub>);
    -   exit(EXIT<sub>SUCCESS</sub>);
-   Division by zero leads to undefined behavior, there is no C language construct that can do anything about
    it.


<a id="org75263de"></a>

# Libraries theory

C standard library - most common C library, which is specified by the ISO and ANSI C standards and comes with
every C implementation

-   stream input and output
-   memory allocation
-   mathematics
-   character strings
-   time values

POSIX and the Single UNIX Specification. - libraries


<a id="orgab3cf01"></a>

# C Standard Library


<a id="org3380f27"></a>

## assert.h

macro:

void assert(int expression);

expression − This can be a variable or any C expression. If expression evaluates to TRUE, assert() does
nothing. If expression evaluates to FALSE, assert() displays an error message on stderr (standard error stream
to display error messages and diagnostics) and aborts program execution.


<a id="org0ec819e"></a>

## ctype.h

for testing and mapping characters.

All the functions return non-zero (true) if the argument c satisfies the condition described, and zero(false)
if not.

-   int isalnum(int c) This function checks whether the passed character is alphanumeric.
-   int tolower(int c) This function converts uppercase letters to lowercase.
-   int toupper(int c) This function converts lowercase letters to uppercase.


<a id="org40d3a94"></a>

## errno.h

-   defines the integer variable errno, which is set by system calls and some library functions in the event of
    an error to indicate what went wrong.
-   zero - no error
-   see [16](#org62b5168)

    #include <stdio.h>
    #include <errno.h>
    #include <string.h>

    extern int errno ;

    int main () {
       FILE *fp;

       fp = fopen("file.txt", "r");
       if( fp == NULL ) {
          fprintf(stderr, "Value of errno: %d\n", errno);
          fprintf(stderr, "Error opening file: %s\n", strerror(errno));
       } else {
          fclose(fp);
       }

       return(0);
    }


<a id="orgd4d71b8"></a>

## float.h

floating-point number is composed of following four elements −

-   **S:** sign ( +/- )
-   **b:** base or radix of the exponent representation, 2 for binary, 10 for decimal, 16 for hexadecimal, and so
    on&#x2026;
-   **e:** exponent, an integer between a minimum emin and a maximum emax.
-   **p:** precision, the number of base-b digits in the significand.

    floating-point = ( S ) p x be
    floating-point = (+/-) precision x baseexponent

The following values are implementation-specific. Note that in all instances FLT refers to type float, DBL
refers to double, and LDBL refers to long double.


<a id="org5aa818e"></a>

## limits.h

implementation-specific, determines various properties of the various variable types types like char, int and long.

-   CHAR<sub>BIT</sub>  8 	Defines the number of bits in a byte.
-   SCHAR<sub>MIN</sub>  -128 	Defines the minimum value for a signed char.
-   SCHAR<sub>MAX</sub>  +127 	Defines the maximum value for a signed char.
-   UCHAR<sub>MAX</sub>  255 	Defines the maximum value for an unsigned char.
-   CHAR<sub>MIN</sub>  -128 	Defines the minimum value for type char and its value will be equal to SCHAR<sub>MIN</sub> if char represents negative values, otherwise zero.
-   CHAR<sub>MAX</sub>  +127 	Defines the value for type char and its value will be equal to SCHAR<sub>MAX</sub> if char represents negative values, otherwise UCHAR<sub>MAX</sub>.
-   MB<sub>LEN</sub><sub>MAX</sub>  16 	Defines the maximum number of bytes in a multi-byte character.
-   SHRT<sub>MIN</sub>  -32768 	Defines the minimum value for a short int.
-   SHRT<sub>MAX</sub>  +32767 	Defines the maximum value for a short int.
-   USHRT<sub>MAX</sub>  65535 	Defines the maximum value for an unsigned short int.
-   INT<sub>MIN</sub>  -2147483648 	Defines the minimum value for an int.
-   INT<sub>MAX</sub>  +2147483647 	Defines the maximum value for an int.
-   UINT<sub>MAX</sub>  4294967295 	Defines the maximum value for an unsigned int.
-   LONG<sub>MIN</sub>  -9223372036854775808 	Defines the minimum value for a long int.
-   LONG<sub>MAX</sub>  +9223372036854775807 	Defines the maximum value for a long int.
-   ULONG<sub>MAX</sub>  18446744073709551615 	Defines the maximum value for an unsigned long int.


<a id="org7960d0d"></a>

## locale.h

location specific settings, such as date formats and currency symbols.

-   LC<sub>ALL</sub> Sets everything.
-   LC<sub>COLLATE</sub> Affects strcoll and strxfrm functions.
-   LC<sub>CTYPE</sub> Affects all character functions.
-   LC<sub>MONETARY</sub> Affects the monetary information provided by localeconv function.
-   LC<sub>NUMERIC</sub> Affects decimal-point formatting and the information provided by localeconv function.
-   LC<sub>TIME</sub> Affects the strftime function.

Library Functions

-   char \*setlocale(int category, const char \*locale) Sets or reads location dependent information.
-   struct lconv \*localeconv(void) Sets or reads location dependent information.

Library Structure

    typedef struct {
       char *decimal_point; // Decimal point character used for non-monetary values.
       char *thousands_sep; // Thousands place separator character used for non-monetary values.
       char *grouping;	// A string that indicates the size of each group of digits in non-monetary quantities. Each character represents an integer value, which designates the number of digits in the current group. A value of 0 means that the previous value is to be used for the rest of the groups.
       char *int_curr_symbol;
       char *currency_symbol;
       char *mon_decimal_point;
       char *mon_thousands_sep;
       char *mon_grouping;
       char *positive_sign;
       char *negative_sign;
       char int_frac_digits;
       char frac_digits;
       char p_cs_precedes;
       char p_sep_by_space;
       char n_cs_precedes;
       char n_sep_by_space;
       char p_sign_posn;
       char n_sign_posn;
    } lconv


<a id="orgdcae0f0"></a>

## math.h

All the functions available in this library take double as an argument and return double as the result.

-   HUGE<sub>VAL</sub> - This macro is used when the result of a function may not be representable as a floating point
    number. If magnitude of the correct result is too large to be represented, the function sets errno to ERANGE
    to indicate a range error, and returns a particular, very large value named by the macro HUGE<sub>VAL</sub> or its
    negation (- HUGE<sub>VAL</sub>). If the magnitude of the result is too small, a value of zero is returned instead. In
    this case, errno might or might not be set to ERANGE.

Functions:

-   double acos(double x) Returns the arc cosine of x in radians.
-   etc


<a id="orgdd8b982"></a>

## setjmp.h

These are used in C for exception handling.

variable: jmp<sub>buf</sub> - This is an array type used for holding information for macro setjmp() and function
longjmp().

macro: int setjmp(jmp<sub>buf</sub> environment) - This macro saves the current environment into the variable
**environment** for later use by the function longjmp(). If this macro returns directly from the macro invocation,
it returns zero but if it returns from a longjmp() function call, then a non-zero value is returned.

Functions: void longjmp(jmp<sub>buf</sub> environment, int value) - Go back to place pointed by buf and return i. This
function restores the environment saved by the most recent call to setjmp() macro in the same invocation of
the program with the corresponding jmp<sub>buf</sub> argument.


<a id="org9b45aa8"></a>

### examples

    #include <stdio.h>
    #include <stdlib.h>
    #include <setjmp.h>

    main () {
       int val;
       jmp_buf env_buffer;

       /* save calling environment for longjmp */
       val = setjmp( env_buffer );

       if( val != 0 ) {
          printf("Returned from a longjmp() with value = %s\n", val);
          exit(0);
       }
       printf("Jump function call\n");
       jmpfunction( env_buffer );

       return(0);
    }

    void jmpfunction(jmp_buf env_buf) {
       longjmp(env_buf, "tutorialspoint.com");
    }

    // result:
    // Jump function call
    // Returned from a longjmp() with value = tutorialspoint.com


    #include <stdio.h>
    #include <setjmp.h>
    jmp_buf buf;
    main() {
       int x = 1;
       setjmp(buf); //set the jump position using buf
       printf("5"); // Prints a number
       x++;
       if (x <= 100)
          longjmp(buf, 1); // Jump to the point located by setjmp
    }

    // output
    // 5555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555


<a id="org7200ed7"></a>

## signal.h


<a id="org11843b3"></a>

## links

<https://www.tutorialspoint.com/c_standard_library/>


<a id="orgea026fc"></a>

# I/O


<a id="orge279176"></a>

## fastest io

-

<https://stackoverflow.com/questions/19983148/fastest-output-to-file-in-c-and-c>


<a id="org3c810e3"></a>

## printf

%[parameter][flags][width][.precision][length]type

-   Type field
-   d, i	signed int
-   u	decimal unsigned int
-   f, F	double - normal (fixed-point) notation
-   e, E	double value in standard form (d.ddde±dd)
-   g, G	double in either normal or exponential notation, whichever is more appropriate for its magnitude
-   x, X	unsigned int as  hexadecimal number
-   o 	unsigned int in octal.
-   s 	null-terminated string.
-   c 	char (character).
-   p 	void\* (pointer to void) in an implementation-defined format.
-   a, A	double in hexadecimal notation
-   n 	Print nothing


<a id="org5a80128"></a>

# GTK

Widget toolkit for creating graphical user interfaces (GUIs)

GTK 4 and GTK 3 are maintained


<a id="org50f9acd"></a>

## GLib is the low-level core library that forms the basis for projects such as GTK and GNOME

<https://docs.gtk.org/glib/>

Dependencies

-   GModule 	Portable API for dynamically loading modules
-   GObject 	The base type system library
-   GIO 	GObject Interfaces and Objects, Networking, IPC, and I/O


<a id="org07cbc41"></a>

# GCC

GCC recognizes files with these names and compiles them as C/C++ programs

-   C++:
    -   source:.C, .cc, .cpp, .CPP, .c++, .cp, or .cxx
    -   source not preprocessed:.ii,
    -   headers:.hh, .hpp, .H, or (for shared template code) .tcc
    -   object modules:
-   C:
    -   source preprocessed:.c,
    -   source not preprocessed:.i,
    -   headers:.h
-   Objective-C:
    -   source: .m, .mi
    -   headers: .h

g++ - automatically specifies linking against the C++ library

Language standard C/C++ opetion: -std=

-   gnu17/gnu18 - GNU dialect of ISO C17.  This is the default for C code.
-   gnu++17/gnu++1z - GNU dialect of -std=c++17.  This is the default for C++ code. The name gnu++1z is deprecated.


<a id="org2110648"></a>

## compilation options

We suggest that you use the '-O2' switch in all of your compilations; it increases speed and decreases the
program size at the cost of compilation time.

-   -Wall All of the above '-W' options combined. This enables all the warnings about constructions that some
    users consider questionable, and that are easy to avoid (or modify to prevent the warning), even in
    conjunction with macros.
-   -g Produce debugging information in the operating system's native format (stabs is the default for the
    MC68000). GDB can work with this debugging information. Note that the tigcc frontend defaults to DWARF 2
    debugging information instead, see Options Available in the Command Line Compiler. The following options are
    useful when GCC is generated with the capability for more than one debugging format.
-   -O/-O1 With '-O', the compiler tries to reduce code size and execution time, without performing any
    optimizations that take a great deal of compilation time.
-   -O2 Optimize even more.


<a id="org7805505"></a>

## used header files

C++ header files:

-   \`gcc -print-prog-name=cc1plus\` -v

C header files:

-   \`gcc -print-prog-name=cpp\` -v

    In addition, gcc will look in the directories specified after the -I option.


<a id="org808b620"></a>

# toolchain

set of programming tools that is used to perform a complex software development task or to create a software
product, which is typically another computer program or a set of related programs


<a id="org2de17cb"></a>

## GNU toolchain

-   GNU make: an automation tool for compilation and build
-   GNU Compiler Collection (GCC): a suite of compilers for several programming languages
-   GNU C Library (glibc): core C library including headers, libraries, and dynamic loader
-   GNU Binutils: a suite of tools including linker, assembler and other tools
-   GNU Bison: a parser generator, often used with the Flex lexical analyser
-   GNU m4: an m4 macro processor
-   GNU Debugger (GDB): a code debugging tool
-   GNU Autotools (GNU Build System): Autoconf, Automake and Libtool


<a id="org8d1bdbf"></a>

## LLVM

-   libc++ - implementation of the C++ Standard Library
-   LLVM front ends (compiler) -  Ada, C, C++, D, Delphi, Fortran, Haskell, Julia, Objective-C, Rust
-   Back ends (target platforms) - instruction sets, including IA-32, x86-64, ARM, Qualcomm Hexagon, MIPS,
    Nvidia Parallel Thread Execution (PTX; called NVPTX in LLVM documentation), PowerPC, AMD TeraScale,[39] most
    AMD GPU recent ones (called AMDGPU in LLVM documentation),[40] SPARC, z/Architecture (called SystemZ in LLVM
    documentation), and XCore.
-   lld - Linker
-   LLDB - Debugger


<a id="orgbd9d051"></a>

# Makefile

-   make -n : dry run
-   -k ,tells make to keep going when an error is found
-   -f ,which allows you to tell make which file to use as its makefile

targets without Makefile:
make -p | grep PHONY

    .PHONY: all clean depend install uninstall


<a id="orgc871783"></a>

## get targets from Makefile

-   grep : Makefile | awk -F: '*^[^.]* {print $1;}'

PHONY: list
list:
    @LC<sub>ALL</sub>=C $(MAKE) -pRrq -f $(lastword $(MAKEFILE<sub>LIST</sub>)) : 2>/dev/null | awk -v RS= -F: '*^# File*,/^# Finished Make data base/ {if (\[1 !~ "^[#.]") {print \]1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'


<a id="orgd262d73"></a>

## theory

-   build automation tool
-   "Makefile" are special format files that help build and manage the projects automatically.
-   **make** command - GNU make implementation
-   determine automatically which pieces of a large program need to be recompiled, and issue the commands to
    recompile them
-   POSIX includes standardization of the basic features and operation of the Make utility, and is implemented
    with varying degrees of completeness in Unix-based versions of Make
-   Makefiles use a "line-based" syntax in which the newline character is special and marks the end of a
    statement.

-

-   make updates a target if it depends on prerequisite files that have been modified since the target was last
    modified, or if the target does not exist.
-   '-j' or '&#x2013;jobs' option tells 'make' to execute many recipes simultaneously.

make steps:

-   last-modification times of target and PREREQUISITIES or if TARGET file is not exist
    -   Without arguments, Make builds the first target that appears in its makefile, which is traditionally a
        symbolic "phony" target named **all**.
    -   it fails when a file changes but its modification time stays in the past
-   For each of those files, it issues the recipes recorded in the data base.
-   By default make  starts with first target "default goal"

common expectation of users:

-   make all − It compiles everything so that you can do local testing before installing applications.
-   make install − It installs applications at right places.
-   make clean − It cleans applications, gets rid of the executables, any temporary files, object files, etc.


<a id="orgba5d9a3"></a>

## Makefile

    MAIN_TARGET1 ... : TARGET2 \
    	PREREQUISITES2...

    TARGET2 ... : PREREQUISITES ...
    	      RECIPE
    	      ...
    	      ...
    clean:
          rm MAIN_TARGET1 TARGET2

A Rule consist of:

-   A "target" is usually the name of a file that is generated by a program
-   A "prerequisite" is a file or files that is used as input to create the target. (optional)
-   A "recipe" is an action that 'make' carries out.
    -   you need to put a tab character at the beginning of every recipe line!
    -   Usually a recipe is in a rule with prerequisites and serves to create a target file if any of the
        prerequisites change.
    -   if recipe failed - falt - current target failed and any other that depends on it will not be executed
    -   -RECIPE - "-" to ignore error, but prints out error message
        -   -i or &#x2013;ignore-errors
        -   -k &#x2013;keep-going - to test as many of the changes made in the program as possible
        -   by default corrypted TARGET is not deleted.
        -   When a line starts with '@', the echoing of that line is suppressed.

Split lines:

-   \\ - add white space
-   $\\ - without adding whitespace

comment line - # - at any place


<a id="orgbc8d6e7"></a>

## Special Built-in Target Names

.PHONY: clean - clean target will be executed regardless of existence of file "clear"

'.SUFFIXES'

The prerequisites of the special target '.SUFFIXES' are the list of
suffixes to be used in checking for suffix rules.  \*Note
Old-Fashioned Suffix Rules: Suffix Rules.

'.DEFAULT'

The recipe specified for '.DEFAULT' is used for any target for
which no rules are found (either explicit rules or implicit rules).
\*Note Last Resort::.  If a '.DEFAULT' recipe is specified, every
file mentioned as a prerequisite, but not as a target in a rule,
will have that recipe executed on its behalf.  \*Note Implicit Rule
Search Algorithm: Implicit Rule Search.

'.PRECIOUS'

The targets which '.PRECIOUS' depends on are given the following
special treatment: if 'make' is killed or interrupted during the
execution of their recipes, the target is not deleted.  \*Note
Interrupting or Killing 'make': Interrupts.  Also, if the target is
an intermediate file, it will not be deleted after it is no longer
needed, as is normally done.  \*Note Chains of Implicit Rules:
Chained Rules.  In this latter respect it overlaps with the
'.SECONDARY' special target.

You can also list the target pattern of an implicit rule (such as
'%.o') as a prerequisite file of the special target '.PRECIOUS' to
preserve intermediate files created by rules whose target patterns
match that file's name.

'.INTERMEDIATE'

The targets which '.INTERMEDIATE' depends on are treated as
intermediate files.  \*Note Chains of Implicit Rules: Chained Rules.
'.INTERMEDIATE' with no prerequisites has no effect.

'.SECONDARY'

The targets which '.SECONDARY' depends on are treated as
intermediate files, except that they are never automatically
deleted.  \*Note Chains of Implicit Rules: Chained Rules.

'.SECONDARY' with no prerequisites causes all targets to be treated
as secondary (i.e., no target is removed because it is considered
intermediate).

'.SECONDEXPANSION'

If '.SECONDEXPANSION' is mentioned as a target anywhere in the
makefile, then all prerequisite lists defined <span class="underline">after</span> it appears
will be expanded a second time after all makefiles have been read
in.  \*Note Secondary Expansion: Secondary Expansion.

'.DELETE<sub>ON</sub><sub>ERROR</sub>'

If '.DELETE<sub>ON</sub><sub>ERROR</sub>' is mentioned as a target anywhere in the
makefile, then 'make' will delete the target of a rule if it has
changed and its recipe exits with a nonzero exit status, just as it
does when it receives a signal.  \*Note Errors in Recipes: Errors.

'.IGNORE'

If you specify prerequisites for '.IGNORE', then 'make' will ignore
errors in execution of the recipe for those particular files.  The
recipe for '.IGNORE' (if any) is ignored.

If mentioned as a target with no prerequisites, '.IGNORE' says to
ignore errors in execution of recipes for all files.  This usage of
'.IGNORE' is supported only for historical compatibility.  Since
this affects every recipe in the makefile, it is not very useful;
we recommend you use the more selective ways to ignore errors in
specific recipes.  \*Note Errors in Recipes: Errors.

'.LOW<sub>RESOLUTION</sub><sub>TIME</sub>'

If you specify prerequisites for '.LOW<sub>RESOLUTION</sub><sub>TIME</sub>', 'make'
assumes that these files are created by commands that generate low
resolution time stamps.  The recipe for the '.LOW<sub>RESOLUTION</sub><sub>TIME</sub>'
target are ignored.

The high resolution file time stamps of many modern file systems
lessen the chance of 'make' incorrectly concluding that a file is
up to date.  Unfortunately, some hosts do not provide a way to set
a high resolution file time stamp, so commands like 'cp -p' that
explicitly set a file's time stamp must discard its sub-second
part.  If a file is created by such a command, you should list it
as a prerequisite of '.LOW<sub>RESOLUTION</sub><sub>TIME</sub>' so that 'make' does not
mistakenly conclude that the file is out of date.  For example:

.LOW<sub>RESOLUTION</sub><sub>TIME</sub>: dst
dst: src
	cp -p src dst

Since 'cp -p' discards the sub-second part of 'src''s time stamp,
'dst' is typically slightly older than 'src' even when it is up to
date.  The '.LOW<sub>RESOLUTION</sub><sub>TIME</sub>' line causes 'make' to consider
'dst' to be up to date if its time stamp is at the start of the
same second that 'src''s time stamp is in.

Due to a limitation of the archive format, archive member time
stamps are always low resolution.  You need not list archive
members as prerequisites of '.LOW<sub>RESOLUTION</sub><sub>TIME</sub>', as 'make' does
this automatically.

'.SILENT'

If you specify prerequisites for '.SILENT', then 'make' will not
print the recipe used to remake those particular files before
executing them.  The recipe for '.SILENT' is ignored.

If mentioned as a target with no prerequisites, '.SILENT' says not
to print any recipes before executing them.  You may also use more
selective ways to silence specific recipe command lines.  \*Note
Recipe Echoing: Echoing.  If you want to silence all recipes for a
particular run of 'make', use the '-s' or '&#x2013;silent' option (\*note
Options Summary::).

'.EXPORT<sub>ALL</sub><sub>VARIABLES</sub>'

Simply by being mentioned as a target, this tells 'make' to export
all variables to child processes by default.  \*Note Communicating
Variables to a Sub-'make': Variables/Recursion.

'.NOTPARALLEL'

If '.NOTPARALLEL' is mentioned as a target, then this invocation of
'make' will be run serially, even if the '-j' option is given.  Any
recursively invoked 'make' command will still run recipes in
parallel (unless its makefile also contains this target).  Any
prerequisites on this target are ignored.

'.ONESHELL'

If '.ONESHELL' is mentioned as a target, then when a target is
built all lines of the recipe will be given to a single invocation
of the shell rather than each line being invoked separately (\*note
Recipe Execution: Execution.).

'.POSIX'

If '.POSIX' is mentioned as a target, then the makefile will be
parsed and run in POSIX-conforming mode.  This does <span class="underline">not</span> mean that
only POSIX-conforming makefiles will be accepted: all advanced GNU
'make' features are still available.  Rather, this target causes
'make' to behave as required by POSIX in those areas where 'make''s
default behavior differs.


<a id="org96707d7"></a>

### '.SUFFIXES'

to define own implisit rule:
.SUFFIXES: .foo .bar
.foo.bar:
   tr '[A-Z][a-z]' '[N-Z][A-M][n-z][a-m]' < $< > $@


<a id="org564a9c2"></a>

## variables

-   case sensitive
-   name not contain - not containing ':','#', '=', or whitespace
-   lower names recommended


<a id="org4e19c3c"></a>

### "recursively expanded" variable.

-   foo = b (Setting Variables)
-   (Multi-Line Variables)
-   '+=' operator, the value is appended to the previous value with space
-   cons
    -   makes make run slower
    -   you cannot append something on the end of a variable, as in : CFLAGS = $(CFLAGS) -O

    define newline_character


    endef
    override define two-lines =
    foo
    $(bar)
    endef


<a id="org513596a"></a>

### simply expanded variables (preffered)

-   := or ::=
-   FOO ?= bar - it only has an effect if the variable is not yet defined


<a id="org4a654ff"></a>

### Substitution References

foo := a.o b.o l.a c.o
bar := $(foo:.o=.c)
sets 'bar' to 'a.c b.c l.a c.c'

foo := a.o b.o l.a c.o
bar := $(foo:%.o=%.c)
sets 'bar' to 'a.c b.c l.a c.c'.


<a id="org4dfdee9"></a>

### Computed Variable Names

x = y
y = z
a := \((\)(x))
a will be z


<a id="org6d896af"></a>

### automatic variables

make -p to get default variables

-   '$@' The file name of the target of the rule. In a pattern rule that has multiple targets '$@' is the name
    of whichever target caused the rule's recipe to be run.
-   '$%' The target member name, when the target is an archive member.  \*Note Archives::.  For example, if the
    target is 'foo.a(bar.o)' then '$%' is 'bar.o' and '$@' is 'foo.a'.  '$%' is empty when the target is not an
    archive member.
-   '$<' The name of the first prerequisite. If the target got its recipe from an implicit rule, this will be
    the first prerequisite added by the implicit rule (\*note Implicit Rules::).
-   '$?' The names of all the prerequisites that are newer than the target, with spaces between them. If the
    target does not exist, all prerequisites will be included.  For prerequisites which are archive members,
    only the named member is used
-   '$^' The names of all the prerequisites, with spaces between them.  For prerequisites which are archive
    members, only the named member is used This list does **not** contain any of the order-only prerequisites; for
    those see the '$|' variable, below.
-   '\(+' This is like '\)^', but prerequisites listed more than once are duplicated in the order they were listed
    in the makefile.  This is primarily useful for use in linking commands where it is meaningful to repeat
    library file names in a particular order.
-   '$|' The names of all the order-only prerequisites, with spaces between them.
-   '$\*' The stem with which an implicit rule matches/ If the target is 'dir/a.foo.b' and the target pattern is
    'a.%.b' then the stem is 'dir/foo'.  The stem is useful for constructing names of related files.

'$(@D)' The directory part of the file name of the target, with the trailing slash removed.  If the value of
     '\(@' is 'dir/foo.o' then '\)(@D)' is 'dir'.  This value is '.' if '$@' does not contain a slash.

etc.


<a id="orgffda1b9"></a>

### ex

    objects = main.o kbd.o command.o display.o \
              insert.o search.o files.o utils.o

    edit : $(objects)
            cc -o edit $(objects)


<a id="org22296ec"></a>

## Implicit Rules

-   main.o : defs.h - rule will be executed implisitly: cc -c main.c -o main.o
-   A file that is mentioned only as a prerequisite is considered a target whose rule specifies nothing, so
    implicit rule search happens for it.
-   to prohibit implisit rule create empty recipie with use ";":
    -   target: ;

-   Compiling C programs N.o N.c: '$(CC) $(CPPFLAGS) $(CFLAGS) -c'
-   Compiling C++ programs N.o N.cc N.cpp '$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c'
-   Compiling Pascal programs N.o N.p '$(PC) $(PFLAGS) -c'
-   Compiling Fortran and Ratfor programs N.o N.r N.F N.r
-   Preprocessing Fortran and Ratfor programs N.f N.F N.r
-   Compiling Modula-2 programs
-   Assembling and preprocessing assembler programs N.o N.s '$(AS) $(ASFLAGS)'
    -   N.s N.S '$(CPP) $(CPPFLAGS)'
-   Linking a single object file N N.o '$(CC) $(LDFLAGS) N.o $(LOADLIBES) $(LDLIBS)'
    -   (linker (usually called 'ld') via the C compiler)
-   Yacc for C programs N.c N.y $(YACC) $(YFLAGS)'
-   Lex for C programs N.r N.l '$(LEX) $(LFLAGS)'

    etc.


<a id="orgdef1605"></a>

## directives

-   Reading another makefile
    -   include FILENAMES&#x2026;
-   Deciding (based on the values of variables) whether to use or ignore a part of the makefile.
-   Defining a variable from a verbatim string containing multiple lines.


<a id="org2128437"></a>

### TODO Conditional Directives or Conditionals

<https://www.tutorialspoint.com/makefile/makefile_directives.htm>


<a id="orga3752b5"></a>

## make.inc

TOPSRCDIR = .
include $(TOPSRCDIR)/make.inc

example:

    DESTDIR?=
    PREFIX?=/usr/local
    INSTALLBIN?=$(PREFIX)/bin

    DPREFIX=$(DESTDIR)$(PREFIX)
    DINSTALLBIN=$(DESTDIR)$(INSTALLBIN)


<a id="org3010776"></a>

# cmake

-   <https://cmake.org/cmake/help/latest/guide/tutorial/index.html>
-   commands <https://cmake.org/cmake/help/latest/manual/cmake-commands.7.html>

    CMakeLists.txt

Mainly for C++

-   a cross-platform tool; the idea is to have a single definition of how the project is built - which
    translates into specific build definitions for any supported platform.
-   On Linux, CMake generates Makefiles; on Windows, it can generate Visual Studio projects, and so on.
-   Build behavior is defined in CMakeLists.txt files - one in every directory of the source code
-   CMake commands are case insensitive


<a id="orgd3d4be7"></a>

# pkg-config

-   program is used to retrieve information about installed libraries in the system. It is typically used to
    compile and link against one or more libraries.
-   helper tool which is used to obtain compiler & linker flags when building a package depending on a library.
-   The primary use of pkg-config is to provide the necessary details for compiling and linking a program to a
    library.

-   Without a metadata system such as pkg-config, it can be very difficult to locate and obtain details about
    the services provided on a given computer
-   This metadata is stored in pkg-config files.
-   pkg-config files (.pc) are simple data files which usually will distribute or generate automatically in
    famous packages. They combine with pkg-config command to produce the necessary command line for to compile
    and link.

Here is a typical usage scenario in a Makefile:

    program: program.c
           cc program.c ‘pkg-config --cflags --libs gnomeui‘


<a id="org8a1d43d"></a>

# GNU Libtool

-   works implicitly. pkg-config needs to be used explicitly.
-   is a generic library support script that hides the complexity of using shared libraries behind a consistent,
    portable interface.
-   add the new generic library building commands to your Makefile, Makefile.in, or Makefile.am
-   libtool is used by Autoconf and Automake, two other portability tools in the GNU build system. It can also be used directly.


<a id="org1210f2d"></a>

# debug

<https://www.cs.yale.edu/homes/aspnes/pinewiki/C(2f)>Debugging.html


<a id="orgff6f44f"></a>

## Assertions

-   \#include <assert.h>
-   assert(2+2 == 5);


<a id="orgdc7aac9"></a>

## gdb


<a id="org504dfc1"></a>

## Valgrind


<a id="orga89f1e6"></a>

## print

The problem is :

1.  no built-in test to see if the output is actually what you'd expect
2.  you can't change your mind about what is getting printed out without editing the code
3.  output can be misleading: in particular, printf output is usually buffered, which means that if your
    program dies suddenly there may be output still in the buffer that is never flushed to stdout. This can be
    very confusing, and can lead you to believe that your program fails earlier than it actually does.


<a id="org89f6adf"></a>

# install /usr/local/bin

copy files

install -m 755 -s $(TARGET) *usr/local/bin*


<a id="orgc597e44"></a>

# Difference between C and C++ and Objective-C

-   Major added features in C++ are Object-Oriented Programming, Exception Handling and rich C++ Library.
-   C++ is a superset of C.
-   C contains 32 keywords.	C++ contains 63 keywords.
-   C supports procedural programming. C++ is known as hybrid language because C++ supports both procedural and
    object oriented programming paradigms.
-   C++ supports user-defined data types
-   Function and operator overloading is supported by C++.
-   Namespace is used by C++, which avoid name collisions.
-   Header file used by C is stdio.h.	Header file used by C++ is iostream.h.
-   Reference variables are supported by C++.
-   Virtual and friend functions are supported by C++.
-   C++ provides new operator for memory allocation and delete operator for memory de-allocation.
-   C provides malloc() and calloc() functions for dynamic memory allocation, and free() for memory de-allocation.
-   scanf() and printf() functions are used for input/output in C. cin and cout are used for input/output in
    C++.
-   C structures don’t have access modifiers. C ++ structures have access modifiers.
-   char[] represents string literals in C (mutable). C++ has a variable type called string. As this variable
    type is immutable
-   C++ allows using a function with default arguments, C doesn’t.
-   GUI: C has the GTK tool. C++ supports Qt tools for achieving the same.
-   int f() - in C is a function with arbitrarry number of argumens. In C++ with no arguments.
-   result of assignment a = b - in C evaluates to the same value as the expression b, C++ - as expression a.


<a id="orgf98c52e"></a>

## Objective-C

Objective-C is a general-purpose programming language that enhances C with the Smalltalk-style messaging.

-   for iOS and OS X operating systems for Apple products.
-   object-oriented
-   Objective-C does not offer multiple inheritance
-   C++ uses true and false for bool, while Objective-C works with YES and NO for BOOL.
-   Smalltalk messaging paradigm in which you transfer so-called messages to objects through functions or selectors.
-   C++ manages structs and classes the same, Objective-C treats them completely differently.
-   In theory, Objective-C is slower than C++ because of the dynamic method dispatch.
-


<a id="orga746792"></a>

# C++


<a id="org0899c1a"></a>

## TODO operators


<a id="orge0c760b"></a>

## hello world

    #include <iostream>     // std::cin, std::cout, std::hex

    int main () {
      int n;
      std::cout << "Enter a hexadecimal number: ";
      std::cin >> std::hex >> n;         // manipulator
      std::cout << "Its decimal equivalent is: " << n << '\n';

      return 0;
    }


<a id="org824d482"></a>

## libs

    #include <cstdio> # c library include <stdio.h>


<a id="org315e205"></a>

# Meson

software tool for automating the building (compiling) of software

-   supports the C, C++, CUDA, D, Objective-C, Fortran, Java, C#, Rust, and Vala languages
-   has a mechanism for handling dependencies called Wrap.
-   GNU Compiler Collection, Clang, Microsoft Visual C++ and other compilers, including non-traditional
    compilers such as Emscripten and Cython
-   Written in	Python
-   Facilitate use as an auto-downloadable dependency
