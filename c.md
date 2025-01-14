
# Table of Contents

1.  [course](#org15d3c71)
2.  [terms](#orga1f14ad)
3.  [Hello world and compilers, main](#orgd6e68d1)
    1.  [gcc](#org6ad87fb)
    2.  [hello world](#org82f64e4)
    3.  [compilation stages](#org60f98a1)
    4.  [main, return type and arguments](#org9298523)
4.  [history](#org58bdc34)
5.  [features, constants, comments](#org68bd578)
    1.  [Constants](#org6754002)
    2.  [Comments](#orga9d1244)
6.  [Documentation and comments](#org0ed1ab5)
    1.  [header](#org313b483)
    2.  [.c](#org058ecdf)
7.  [Keywords](#org0ac5008)
8.  [Linkage](#org0017f3e)
    1.  [gcc linker](#org4f30c76)
    2.  [types external internal](#org7749427)
    3.  [linkage select:](#org977843f)
    4.  [What makes a declaration into a definition?](#org7dbb100)
    5.  [Storage class](#org3b95bf1)
        1.  [restrict keyword](#org51e7021)
        2.  [extern keyword](#org26fbd08)
9.  [dynamic libraries, ldd, ldconfig](#orgf5e7cfb)
10. [Operators](#org3cf83dd)
    1.  [priority](#orgb72080e)
    2.  [cast operator: (type<sub>name</sub>) expression](#orge4333c6)
    3.  [Chained operators](#org2462c5f)
        1.  [links](#orgb7d4373)
11. [Data model](#org4161182)
    1.  [literals](#org2f77cec)
        1.  [integer](#org85f00d1)
        2.  [float](#orga6bd832)
        3.  [character](#org3d44c8a)
        4.  [String Literals](#org8d80ec0)
    2.  [memory allocation](#org44a21f1)
    3.  [Numerical](#orgc7e2ce3)
    4.  [structure](#org61acf3f)
        1.  [ex1](#org0e9197a)
        2.  [ex2 access](#orgb36b654)
        3.  [copy by assigment](#orge85c59b)
        4.  [deep copy](#org74c2d00)
    5.  [Union](#orgea11ebb)
    6.  [Array](#orga337b06)
    7.  [Enum](#orgd5c2a85)
        1.  [ex1](#org9f81ae0)
        2.  [ex2](#org6c05f2f)
    8.  [Strings](#orgbb575df)
    9.  [Pointers](#org4cbf9aa)
        1.  [ex](#org54b2f7e)
        2.  [dangers:](#orgbd02c82)
        3.  [pointer arithmetic.](#org1a689f4)
        4.  [function pointers](#org5a50c30)
    10. [void](#orgadeffe3)
12. [control structures](#org8fcfb0a)
    1.  [if](#orgf3609ff)
    2.  [switch](#orge0f407d)
    3.  [loops](#org46d1443)
13. [functions](#org3d12788)
    1.  [variable number of arguments](#org582c9a5)
14. [header files](#orgb14a81e)
    1.  [Standart way to prevent "Once-Only Header"](#org744cb2e)
    2.  [typedef](#org5be95c8)
15. [C - Preprocessors](#orge355330)
    1.  [Macro types](#org5b788d2)
    2.  [Directive & Description](#org39e49d8)
    3.  [Predefined Macros](#org9be7388)
    4.  [Preprocessor Operators](#org66181d8)
    5.  [examples](#orgf95491e)
    6.  [Include guard - Header files ofter format](#org4dfbc70)
    7.  [links](#org171ef55)
16. [Error Handling ](#org0ceb093)
17. [Libraries theory](#orgbfd7124)
    1.  [Minimalist C Libraries - recommendations](#org9faf38a)
18. [C Standard Library](#orgb1e9703)
    1.  [assert.h](#org3932b2e)
    2.  [ctype.h](#orgba3370c)
    3.  [errno.h](#org1727107)
    4.  [float.h](#orgd992ebd)
    5.  [limits.h](#org608cdab)
    6.  [locale.h](#orgb14dc8d)
    7.  [math.h](#org2587e3a)
    8.  [setjmp.h](#org5738872)
        1.  [examples](#orgebdf570)
    9.  [signal.h](#orgf017586)
    10. [links](#orgfc2658f)
19. [Convertions](#org22f5a1d)
    1.  [Naming conventions](#orgd5e1839)
20. [php naming conventions (offtopic)](#orga0fa77b)
21. [I/O](#org2880bc7)
    1.  [fastest io](#orgad2a7ee)
    2.  [printf](#orgd4f93d8)
22. [GTK](#orgbfa83af)
    1.  [GLib is the low-level core library that forms the basis for projects such as GTK and GNOME](#orgab2ba34)
        1.  [GLib Data Structures](#org00cec42)
    2.  [GMainContext](#org8003b77)
    3.  [links](#orgc861ca9)
23. [Qt](#org0ccf813)
24. [GCC](#orgaeee2d8)
    1.  [compilation options](#org582f6bb)
    2.  [used header files](#org183ab54)
    3.  [steps](#org468762e)
    4.  [USECASES](#org10edb0d)
25. [toolchain](#org1997860)
    1.  [GNU toolchain](#orgb1f2c7e)
    2.  [GNU Autotools](#org05a8abc)
        1.  [Components:](#orgeb4943b)
    3.  [LLVM](#org9314002)
    4.  [GNU make and Makefile](#orgbdf0843)
        1.  [theory](#org8c7c780)
        2.  [most important conventions (AI)](#orgbb3ebd6)
        3.  [make](#org113a418)
        4.  [Makefile](#org2f38de5)
        5.  [Special Built-in Target Names](#org986f35f)
        6.  [variables](#org3f0f2e9)
        7.  [Implicit Rules](#orge7a1cc8)
        8.  [get targets from Makefile](#orga0f50af)
        9.  [directives](#org93a7404)
        10. [USECASES](#orgc026fe3)
        11. [best practices](#orge9e94ab)
        12. [make.inc](#orgd02706e)
    5.  [cmake](#org475580d)
        1.  [buils stage](#org50a75a0)
        2.  [usage](#org7664911)
        3.  [errors](#orge5c13d5)
        4.  [links](#org761a8a3)
26. [pkg-config](#org845b738)
27. [ldconfig](#orgf6e52b1)
28. [GNU Libtool](#orgff26741)
29. [debug](#org62d7477)
    1.  [Assertions](#org620d705)
    2.  [gdb](#orgfa95c10)
        1.  [alternatives:](#org0996574)
        2.  [backtrace](#orgf30a82d)
    3.  [Valgrind](#org169b741)
    4.  [print - bad approach](#org51939e0)
        1.  [ex](#orgf5e5df8)
30. [install /usr/local/bin](#orgcfedc18)
31. [Difference between C and C++ and Objective-C](#org533a25a)
    1.  [Objective-C](#orge86d341)
32. [C++](#orgc2181d3)
    1.  [operators](#org68e2321)
    2.  [hello world](#orgc6cd471)
    3.  [libs](#orgb87acf7)
    4.  [RAII ideom (Resource Acquisition is Initialization )](#orgb8f2fb9)
    5.  [links](#org8b2048d)
33. [Meson](#org5e00ae5)
34. [links](#orgfdd1455)

;-**- mode: Org; fill-column: 110;-**-

<https://www.tutorialspoint.com/cprogramming/index.htm>


<a id="org15d3c71"></a>

# course

Course Outline

C Programming


<a id="orga1f14ad"></a>

# terms

Basic

-   **declaration** - informing the compiler of name and the type of the value.
-   **definition** - memory is allocated for the variable, its value should not be assumed to be anything in
    particular or with some default value.
-   **initialization** - assiging value to allocated memory of variable
-   **variable** - named storage location
-   **literal** - a textual representation (notation) of a value as it is written in source code.
-   **Constant** - A value that does not change during program execution
-   **Operators** - Symbols used to perform operations on variables and values, such as arithmetic,
    logical, and relational operators. + -
-   **Arrays** - Contiguous collection of elements of the same data type stored in memory under a
    single name
-   **Strings** - Arrays of characters terminated by a null character ('\\\\0') used to represent text.
-   **Preprocessor directives** - Instructions to the compiler that start with #, used for including header files,
    defining constants, and performing conditional compilation.
-   **Scope** - The visibility and accessibility of variables and functions within different parts of
    a program, determined by where they are declared.
-   

Advanced

-   **translation unit** (or more casually a compilation unit) - the ultimate input to a C or C++ compiler from
    which an object file is generated
-   **transclusion** - inclusion of part or all of an electronic document into one or more other documents by
    reference.
-   **translation unit** is the output of the C preprocessor – a source file after it has been
    preprocessed. header files listed in #include directives are literally included.
-   **include guard** or macro guard, header guard or file guard -  construct used to avoid the problem of double inclusion
-   **lvalue** - an object that has an identifiable location in memory, cannot be a function, expression (like
    a+b) or a constant.  if ptr is a pointer, then \*ptr is a modifiable l-value.
-   **rvalue** - no identifiable location in memory, Anything that is capable of returning a constant expression or value.


<a id="orgd6e68d1"></a>

# Hello world and compilers, main


<a id="org6ad87fb"></a>

## gcc

    $ gcc hello.c
    $ ./a.out

The default, if no C language dialect options are given, is -std=gnu17.

Published in June 2018, C17 is the current standard for the C programming language.


<a id="org82f64e4"></a>

## hello world

    #include <stdio.h>
    
    int main() {
       /* my first program in C */
       printf("Hello, World! \n");
    
       return 0;
    }


<a id="org60f98a1"></a>

## compilation stages

gcc -save-temps hello.c -o hello

-   -save-temps flag is used to save all the intermediate files during compilation.

files

-   hello.i (Generated by Pre-processr) - Lines starting with a # are interpreted by the preprocessor
-   hello.s (Generated by Compiler) - assembly instructions, syntax errors
-   hello.o (Generated by Assembler) - assembly instructions to object code.
-   hello (Generated by Linker) - appending bootstrap code, linker assigned the load address to executable


<a id="org9298523"></a>

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


<a id="org58bdc34"></a>

# history

<https://gcc.gnu.org/onlinedocs/gcc/Standards.html>
1972 	Birth
1978 	K&R C
1989/1990 	ANSI C and ISO C
1999 	C99
2011 	C11
2017 	C17
TBD 	C2x


<a id="org68bd578"></a>

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


<a id="org6754002"></a>

## Constants

\#define LENGTH 10
const int  LENGTH = 10;


<a id="orga9d1244"></a>

## Comments

*/ to end of the line
/\* \** - do not nest, can not be inside string or character literal


<a id="org0ed1ab5"></a>

# Documentation and comments

Sphinx - documentation tool used in Linux kernel (make htmldocs), uses reStructuredText as markup language

one space line between of items


<a id="org313b483"></a>

## header

    /* SPDX-License-Identifier: GPL-2.0-or-later */
    /* audit -- definition of audit_context structure and supporting types
     *
     * Copyright 2003-2004 Red Hat, Inc.
     * Copyright 2005 Hewlett-Packard Development Company, L.P.
     * Copyright 2005 IBM Corporation
     */
    
    /*
     * blk_mq_map_queue_type() - map (hctx_type,cpu) to hardware queue
     * @q: request queue
     * @type: the hctx type index
     * @cpu: CPU
     */
    static inline struct blk_mq_hw_ctx *blk_mq_map_queue_type(struct request_queue *q,
    							  enum hctx_type type,
    							  unsigned int cpu)
    {
    	return q->queue_hw_ctx[q->tag_set->map[type].mq_map[cpu]];
    }
    
    /* At task start time, the audit_state is set in the audit_context using
       a per-task filter.  At syscall entry, the audit_state is augmented by
       the syscall filter. */
    enum audit_state {
    	AUDIT_STATE_DISABLED,	/* Do not create per-task audit_context.
    				 * No syscall-specific audit records can
    				 * be generated. */
    	AUDIT_STATE_BUILD,	/* Create the per-task audit_context,
    				 * and fill it in at syscall
    				 * entry time.  This makes a full
    				 * syscall record available if some
    				 * other part of the kernel decides it
    				 * should be recorded. */
    	AUDIT_STATE_RECORD	/* Create the per-task audit_context,
    				 * always fill it in at syscall entry
    				 * time, and always write out the audit
    				 * record at syscall exit time.  */
    };
    
    
    /*
     * blk_mq_plug() - Get caller context plug
     * @q: request queue
     * @bio : the bio being submitted by the caller context
     *
     * Plugging, by design, may delay the insertion of BIOs into the elevator in
     * order to increase BIO merging opportunities. This however can cause BIO
     * insertion order to change from the order in which submit_bio() is being
     * executed in the case of multiple contexts concurrently issuing BIOs to a
     * device, even if these context are synchronized to tightly control BIO issuing
     * order. While this is not a problem with regular block devices, this ordering
     * change can cause write BIO failures with zoned block devices as these
     * require sequential write patterns to zones. Prevent this from happening by
     * ignoring the plug state of a BIO issuing context if the target request queue
     * is for a zoned block device and the BIO to plug is a write operation.
     *
     * Return current->plug if the bio can be plugged and NULL otherwise
     */
    static inline struct blk_plug *blk_mq_plug(struct request_queue *q,
    					   struct bio *bio)
    {
    	/*
    	 * For regular block devices or read operations, use the context plug
    	 * which may be NULL if blk_start_plug() was not executed.
    	 */
    	if (!blk_queue_is_zoned(q) || !op_is_write(bio_op(bio)))
    		return current->plug;
    
    	/* Zoned block device write operation case: do not plug the BIO */
    	return NULL;
    }


<a id="org058ecdf"></a>

## .c

/usr/src/linux-5.15.80-gentoo/kernel/audit.c

    /**
     * auditd_test_task - Check to see if a given task is an audit daemon
     * @task: the task to check
     *
     * Description:
     * Return 1 if the task is a registered audit daemon, 0 otherwise.
     */
    int auditd_test_task(struct task_struct *task)
    {
    	int rc;
    	struct auditd_connection *ac;
    
    	rcu_read_lock();
    	ac = rcu_dereference(auditd_conn);
    	rc = (ac && ac->pid == task_tgid(task) ? 1 : 0);
    	rcu_read_unlock();
    
    	return rc;
    }


<a id="org0ac5008"></a>

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
-   restrict

ISO C (C11)

-   alignof
-   \_Alignas
-   \_Atomic
-   \_Generic
-   \_Noreturn
-   \_Static<sub>assert</sub>
-   \_Thread<sub>local</sub>

preprocessor operator \_Pragma - an alternate form of the #pragma


<a id="org0017f3e"></a>

# Linkage

When we compile a program, the ‘C’ compiler will generate object files (“.o” files. Some compilers will
generate “.obj” files.). After that linker will generate a “.out” file (or some compilers will generate “.exe”
files.). That means, it is a two steps process; one step is to compile the program and another step is to link
the object files and generate the executable file.

-   object file is in binary format and it is a compiled code;

last step in compiling a program is to run **ld** - ties up symbol references.


<a id="org4f30c76"></a>

## gcc linker

link mylib from /usr/local/lib

    gcc -L/usr/local/lib -lmylib


<a id="org7749427"></a>

## types external internal

-   external linkage - throughout the entire program,
-   internal linkage - restricted to one source file
-   no linkage respectively - restricted to one function (or perhaps a single compound statement).


<a id="org977843f"></a>

## linkage select:

1.  A declaration outside a function (file scope) which contains the static storage class specifier results in
    internal linkage for that name. (The Standard requires that function declarations which contain static must
    be at file scope, outside any block)
2.  If a declaration contains the extern storage class specifier, or is the declaration of a function with no
    storage class specifier (or both), then:
    -   If there is already a visible declaration of that identifier with file scope, the resulting linkage is the same as that of the visible declaration;
    -   otherwise the result is external linkage.
3.  If a file scope declaration is neither the declaration of a function nor contains an explicit storage class specifier, then the result is external linkage.
4.  Any other form of declaration results in no linkage.
5.  In any one source code file, if a given identifer has both internal and external linkage then the result is undefined.


<a id="org7dbb100"></a>

## What makes a declaration into a definition?

-   Declarations that result in no linkage are also definitions.
-   Declarations that include an initializer are always definitions; this includes the ‘initialization’ of functions by providing their body. Declarations with block scope may only have initializers if they also have no linkage.
-   Otherwise, the declaration of a name with file scope and with either no storage class specifier or with the static storage class specifier is a tentative definition. If a source code file contains one or more tentative definitions for an object, then if that file contains no actual definitions, a default definition is provided for that object as if it had an initializer of 0. (Structures and arrays have all their elements initialized to 0). Functions do not have tentative definitions.


<a id="org3b95bf1"></a>

## Storage class

-   For external declarations the default storage class specifier will be extern and for internal declarations it

will be auto.

-   declaration of functions - default storage class specifier is always extern.


<a id="org51e7021"></a>

### restrict keyword

hints to the compiler that for the lifetime of the pointer, only the pointer itself or a value directly
derived from it (such as pointer + 1) will be used to access the object to which it points.

-   produce better optimized code

    void updatePtrs(size_t *restrict ptrA, size_t *restrict ptrB, size_t *restrict val);

-   hints to the compiler that for the lifetime of the pointer, only the pointer itself or a value directly
    derived from it (such as pointer + 1) will be used to access the object to which it points.


<a id="org26fbd08"></a>

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


<a id="orgf5e7cfb"></a>

# dynamic libraries, ldd, ldconfig

-   man ld.so
-   /etc/ld.so.conf - paths for shared libraries

\#include "<header file name>" - static and dynamic

from .c created .so shared library, static - they are inside executables

LD<sub>LIBRARY</sub><sub>PATH</sub> - used first for search .so files for program, exp. export LD<sub>LIBRARY</sub><sub>PATH</sub>="${LD<sub>LIBRARY</sub><sub>PATH</sub>}:<your path>"

Show .so dependencies:

-   safe: objdump -p /bin/bash | grep NEEDED
-   unsafe: ldd /bin/bash


<a id="org3cf83dd"></a>

# Operators


<a id="orgb72080e"></a>

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
<td class="org-left">() [] -&gt; . ++ --</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Unary</td>
<td class="org-left">+ - ! ~ ++ - - (type)* &amp; sizeof</td>
<td class="org-left">Right to left</td>
</tr>


<tr>
<td class="org-left">Multiplicative</td>
<td class="org-left">* / %</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Additive</td>
<td class="org-left">+ -</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Shift</td>
<td class="org-left">&lt;&lt; &gt;&gt;</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Relational</td>
<td class="org-left">&lt; &lt;= &gt; &gt;=</td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Equality</td>
<td class="org-left"><code>= !</code></td>
<td class="org-left">Left to right</td>
</tr>


<tr>
<td class="org-left">Bitwise</td>
<td class="org-left">AND &amp;</td>
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
<td class="org-left">AND &amp;&amp;</td>
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
<td class="org-left">= += -= *= /= %=&gt;&gt;= &lt;&lt;= &amp;= ^=  &vert;=</td>
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


<a id="orge4333c6"></a>

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


<a id="org2462c5f"></a>

## Chained operators

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


<a id="orgb7d4373"></a>

### links

<https://en.wikipedia.org/wiki/Operator_associativity>
<https://en.wikipedia.org/wiki/Assignment_(computer_science)>


<a id="org4161182"></a>

# Data model


<a id="org2f77cec"></a>

## literals


<a id="org85f00d1"></a>

### integer

212         *\* Legal \**
215u        *\* Legal \**
0xFeeL      *\* Legal \**
078         *\* Illegal: 8 is not an octal digit \**
032UU       *\* Illegal: cannot repeat a suffix \**
85         *\* decimal, int \**
0213       *\* octal, int \**
0x4b       *\* hexadecimal \**
30         *\* int \**
30u, 30U   *\* unsigned int \**
30l, 30L   *\* long \**
30ul       *\* unsigned long \**


<a id="orga6bd832"></a>

### float

3.14159       *\* Legal \**
314159E-5L    *\* Legal \**
510E          *\* Illegal: incomplete exponent \**
210f          *\* Illegal: no decimal or exponent \**
.e55          *\* Illegal: missing integer or fraction \**


<a id="org3d44c8a"></a>

### character

single quotes
 'x'
 '\t' */ escape sequence
'\u02C0' /*  universal character

newline (\n) or tab (\t).


<a id="org8d80ec0"></a>

### String Literals

-   double quotes ""
-   You can break a long line into multiple lines using string literals and separating them using white spaces.

"hello, dear" // one

"hello, \\
dear" // one

"hello, " "d" "ear" // one


<a id="org44a21f1"></a>

## memory allocation

-   Static memory allocation: space for the object is provided in the binary at compile-time; these objects have
    an extent (or lifetime) as long as the binary which contains them is loaded into memory.
-   Automatic memory allocation: temporary objects can be stored on the stack, and this space is automatically
    freed and reusable after the block in which they are declared is exited.
    -   stack space is typically much more limited and transient than either static memory or heap space
-   Dynamic memory allocation: blocks of memory of arbitrary size can be requested at run-time using library
    functions such as malloc from a region of memory called the heap; these blocks persist until subsequently
    freed for reuse by calling the library function realloc or free


<a id="orgc7e2ce3"></a>

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


<a id="org61acf3f"></a>

## structure

-   all of its data members are stored in contiguous memory locations
-   A function may directly return a structure, although this is often not efficient at run-time. Since C99, a
    structure may also end with a flexible array member.
-   initialization: = {0, 1}
-   '.' for access by value
-   '->' for access by pointer

**designated Initialization** - initialization in any order (since C99 standard.)

    struct Point p1 = { .y = 0, .z = 1, .x = 2 } or only one: struct Point p1 = { .x = 2 }


<a id="org0e9197a"></a>

### ex1

    // definition
    struct birthday {
    	int day;
    	int month;
    	int year;
    };
    struct point
      {
        int x, y;
      };
    // declaration
    struct birthday John;
    // declaration and initialization
    struct point first_point = { 5, 10 };
    
    struct point
      {
        int x, y;
      } first_point = { 5 }; // partial initialization
    
    struct point first_point = { y: 10, x: 5 }; // colon instead of ‘=’
    
    
    // or
     typedef struct {
        int x;           // x and y are separate
        int y;
    } tPoint;
    
    _Arguments arguments = { 0 }; // initialization
    arguments->config_filepath // access by pointer


<a id="orgb36b654"></a>

### ex2 access

    struct point
      {
        int x, y;
      };
    
    struct point first_point;
    
    first_point.x = 0;
    first_point.y = 5;


<a id="orge85c59b"></a>

### copy by assigment

    #include <stdio.h>
    struct  Animal  {
        int  age ;
        char  name [ 40 ];
    };
    
    int  main ( void )  {
        struct  Animal  cat  =  {  2 ,  "Kat"  };
        struct  Animal  dog  =  cat ;
        dog.age = 3;
    
        printf ( "dog age[%d] name[%s] \n " ,  cat . age ,  cat . name );
        printf ( "dog age[%d] name[%s] \n " ,  dog . age ,  dog . name );
    
        return 0;
    }


<a id="org74c2d00"></a>

### deep copy

    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    
    typedef struct Student
    {
        char *name;
        int age;
    }Student;
    
    int main(int argc, char *argv[])
    {
        Student std1;
        Student std2;
    
        std1.name = (char *)malloc(10);
        std1.age = 20;
    
        strcpy(std1.name, "John");
    
        printf("std1->name: %s, age: %d\n", std1.name, std1.age);
    
        std2 = std1;
        std2.name = (char *)malloc(10);
        strcpy(std2.name, std1.name);
        printf("std2->name: %s, age: %d\n", std2.name, std2.age);
    
        free(std1.name);
    
        free(std2.name);
    
        return 0;
    }


<a id="orgea11ebb"></a>

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


<a id="orga337b06"></a>

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


<a id="orgd5c2a85"></a>

## Enum

![img](https://media.geeksforgeeks.org/wp-content/cdn-uploads/Enum-In-C.png)

Every item in the enum definition is paired to an integer, internally.

-   typedef enum - alias for types. you can assign integer with =1..n


<a id="org9f81ae0"></a>

### ex1

    typedef enum {
      monday, // 0
      tuesday, // 1
      wednesday, // 3
      thursday,
      friday,
      saturday,
      sunday
    } WEEKDAY;
    
    int main(void) {
      WEEKDAY day = monday; // day == 0 internally
    
      if (day == monday) {
        printf("It's monday!");
      } else {
        printf("It's not monday");
      }
    }


<a id="org6c05f2f"></a>

### ex2

    // alias for type
    typedef enum ActionType_ {
      ACTION_TYPE_KEY_EVENTS,
      ACTION_TYPE_MULTI_STROKE,
      ACTION_TYPE_SELECTION
    } ActionType;
    
    // declaration
    // cardsuit - name of variable. Clubs, Diamonds, Hearts, Spades - list of constants
    enum cardsuit {
        Clubs,
        Diamonds,
        Hearts,
        Spades
    };
    // instantiation
    struct card {
        enum cardsuit suit; //suit is an object of type cardsuit
        short int value;
    } hand[13];
    
    // instantiation
    enum cardsuit trump;
    
    // operation
    trump = Spades;
    enum cardsuit b = Hearts;
    
    // allow this
    enum cardsuit {
        Clubs    = 1,
        Diamonds = 2,
        Hearts   = 4,
        Spades   = 8
    };


<a id="orgbb575df"></a>

## Strings

-   conventionally implemented as null-terminated character arrays
-   one-dimensional array of characters terminated by a null character '\\0'.

define:

-   char greeting[6] = {'H', 'e', 'l', 'l', 'o', '\\0'};
-   char greeting[] = "Hello";
-   ' - for char, " for string

    #include <string.h> //string operations


<a id="org4cbf9aa"></a>

## Pointers

-   can be dereferenced to access data stored at the address pointed to, or to invoke a pointed-to function
-   Void pointers (void \*) point to objects of unspecified type,
-   ampersand (&) operator - access address of variable - &a; returns the actual address of the variable.
-   \*pointer - access variable at pointer
-   NULL is a constant with value of zero
    -   Dereferencing a null pointer value is undefined - often resulting in a segmentation fault
-   sizeof() Returns the size of a variable.

    int *ptr[MAX]; // array of pointer to int
    char *names[] = { "Zara Ali", "Hina Ali", "Nuha Ali", "Sara Ali" }; // pinters to strings
    name[0], name[1]


<a id="org54b2f7e"></a>

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


<a id="orgbd02c82"></a>

### dangers:

-   point ot unsafe places by using invalid pointer arithmetic;
-   the objects they point to may continue to be used after deallocation (dangling pointers)
-   they may be used without having been initialized (wild pointers)
-   directly assigned an unsafe value using a cast, union, or through another corrupt pointer


<a id="org1a689f4"></a>

### pointer arithmetic.

-   ++, &#x2013;, +, and -
-   int \* p = 1000
-   p++
-   p is now 1004  # Assuming 32-bit integers


<a id="org5a50c30"></a>

### function pointers

    gboolean (*run)(struct XSetKeys_ *xsk, const struct Action_ *action);

    int myFun(int i) {
      return i+1;
    }
    
    typedef int  (*MyFun)(int);
    
    void accept_fun(MyFun f) {
      f(42);
    }


<a id="orgadeffe3"></a>

## void

specifies that no value is available

-   Function returns as void
-   Function arguments as void - int rand(void) = int rand()
-   Pointers to void - represents the address of an object, but not its type
    -   void \*malloc( size<sub>t</sub> size ) - returns a pointer to void which can be casted to any data type.


<a id="org8fcfb0a"></a>

# control structures


<a id="orgf3609ff"></a>

## if

    if(<expression>) <statement> // simple form with no {}'s or else clause
    
    if(<expression>)
    {                      // simple form with {}'s to group statements
        <statement>
        <statement>
    }
    
    if(<expression>)              // full if/else form
    {
       <statement>
    }
    else
    {
        <statement>
    }
    
    <expression1> ? <expression2> : <expression3>


<a id="orge0f407d"></a>

## switch

-   **expression:** tupically char or int.
-   **break:** exit from switch.
-   **default:** statement is optional, and specifies some code to run if there is no case match.
-   **constant-expression:** for a case must be the same data type as the variable in the switch, and it must be a
    constant or a literal.

    switch (<expression>) {
    case <const-expression-1>:
      <statement>
        break;
    case <const-expression-2>:
      <statement>
        break;
    case <const-expression-3>: // here we combine case 3 and 4
    case <const-expression-4>:
      <statement>
        break;
    default:                      // optional
      <statement>


<a id="org46d1443"></a>

## loops

    for ( init; condition; increment ) {
       statement(s);
    }

-   init step is executed first, and only once
-   condition - If it is true, the body of the loop is executed
-   increment - executed After the body

    KeyCode key_codes[] = {
        KEY_HOME,
        KEY_UP,
        KEY_PAGEUP,
        KEY_LEFT,
        KEY_RIGHT,
        KEY_END,
        KEY_DOWN,
        KEY_PAGEDOWN,
        0
      };
      KeyCode *pointer;
    
      for (pointer = key_codes; *pointer; pointer++) {
        key_info->modifier_mask_or_key_kind[*pointer] = KI_KIND_CURSOR;
      }


<a id="org3d12788"></a>

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


<a id="org582c9a5"></a>

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


<a id="orgb14a81e"></a>

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


<a id="org744cb2e"></a>

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


<a id="org5be95c8"></a>

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


<a id="orge355330"></a>

# C - Preprocessors

-   text substitution tool  - pre-processing before the actual compilation
-   All preprocessor commands begin with a hash symbol (#). It must be the first nonblank character, and for
    readability, a preprocessor directive should begin in the first column.


<a id="org5b788d2"></a>

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


<a id="org39e49d8"></a>

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


<a id="org9be7388"></a>

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


<a id="org66181d8"></a>

## Preprocessor Operators

-   The Macro Continuation (\\) Operator
-   The Stringize (#) Operator - may be used only in a macro having a specified argument or parameter list
-   The Token Pasting (##) Operator - insert argument to create new one
-   The Defined() Operator -  to determine if an identifier is defined using #define
-   Parameterized Macros


<a id="orgf95491e"></a>

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


<a id="org4dfbc70"></a>

## Include guard - Header files ofter format

multiple include optimization

File "grandparent.h"

    #ifndef GRANDPARENT_H
    #define GRANDPARENT_H
    
    struct foo {
        int member;
    };
    
    #endif /* GRANDPARENT_H */


<a id="org171ef55"></a>

## links

<https://www.math.utah.edu/docs/info/cpp_1.html>


<a id="org0ceb093"></a>

# Error Handling <a id="org004cdc9"></a>

-   C does not provide direct support to error handling
-   Most of the C or even Unix function calls return -1 or NULL in case of any error and set an error code

**errno**.

-   It is usually better to follow the practice of assigning errno to 0 at the initializing a program which helps to indicate that there are no errors in the program.

Different methods of Error handling in C

-   Global Variable **errno** - Its a global variable indicating the error occurred during any function call and
    defined in the header file errno.h.
    -   \#include <errno.h>
    -   apt-get install errno
    -   errno -l
-   returns textual representation of the current errno value.
    -   char \* strerror(int) : printf("The error message is : %s\n", strerror(errno));
-   print to stderr with <stdio.h>:perror with custom text before error ( reads errno)
    -   perror("Error: ");  return(-1);  - result is "Error: : No such file or directory"
    -   strerror(): returns a pointer to the textual representation of the current errno value.
-   The C standard specifies two constants: EXIT<sub>SUCCESS</sub> and EXIT<sub>FAILURE</sub> These are macros defined in stdlib.h.
    -   \#include <stdlib.h>
    -   exit(EXIT<sub>FAILURE</sub>);
    -   exit(EXIT<sub>SUCCESS</sub>);
-   Division by zero leads to undefined behavior, there is no C language construct that can do anything about
    it.
-   assert.h - macro that is used to check specific conditions at runtime
    -   output: Assertion failed: (b != 0), function main, file my.c, line 10
    -   By using GCC, C, and C++ compilers - assertions are enabled by default.
    -   to disable:
        -   \#define NDEBUG # in code
        -   -DNDEBUG parameter for GCC commpiler
        -   \#define assert(ignore) ((void)0)
    -   not for runtime error handling

Error handling Decision Tree: ![img](https://i.stack.imgur.com/L8wQq.png)


<a id="orgbfd7124"></a>

# Libraries theory

C standard library - most common C library, which is specified by the ISO and ANSI C standards and comes with
every C implementation

-   stream input and output
-   memory allocation
-   mathematics
-   character strings
-   time values

POSIX and the Single UNIX Specification. - libraries


<a id="org9faf38a"></a>

## Minimalist C Libraries - recommendations

-   (1) Small number of functions, perhaps even as little as one.
-   (2) No dynamic memory allocations.
-   (3) No input or output.
-   (4) Define at most one structure, and perhaps even none.
-   

<https://nullprogram.com/blog/2018/06/10/>


<a id="orgb1e9703"></a>

# C Standard Library


<a id="org3932b2e"></a>

## assert.h

macro:

void assert(int expression);

expression − This can be a variable or any C expression. If expression evaluates to TRUE, assert() does
nothing. If expression evaluates to FALSE, assert() displays an error message on stderr (standard error stream
to display error messages and diagnostics) and aborts program execution.


<a id="orgba3370c"></a>

## ctype.h

for testing and mapping characters.

All the functions return non-zero (true) if the argument c satisfies the condition described, and zero(false)
if not.

-   int isalnum(int c) This function checks whether the passed character is alphanumeric.
-   int tolower(int c) This function converts uppercase letters to lowercase.
-   int toupper(int c) This function converts lowercase letters to uppercase.


<a id="org1727107"></a>

## errno.h

-   defines the integer variable errno, which is set by system calls and some library functions in the event of
    an error to indicate what went wrong.
-   zero - no error
-   see [16](#org004cdc9)

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


<a id="orgd992ebd"></a>

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


<a id="org608cdab"></a>

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


<a id="orgb14dc8d"></a>

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


<a id="org2587e3a"></a>

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


<a id="org5738872"></a>

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


<a id="orgebdf570"></a>

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


<a id="orgf017586"></a>

## signal.h


<a id="orgfc2658f"></a>

## links

<https://www.tutorialspoint.com/c_standard_library/>


<a id="org22f5a1d"></a>

# Convertions

<https://www.gnu.org/prep/standards/standards.html>


<a id="orgd5e1839"></a>

## Naming conventions

Tracitional C practice is to use lower case for variable names, and all upper case for symbolic constants.

-   array - array of data
-   type - usualy a enum
-   node - link to other nodes
-   entity - generic networking thing
-   handle - pointer to opaqe data structure
-   func - function pointer or function used as function pointer
-   internal - function internal to a module
-   i, j, k, count, length, found, next, previous, f, vec


<a id="orga0fa77b"></a>

# php naming conventions (offtopic)

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


<a id="org2880bc7"></a>

# I/O


<a id="orgad2a7ee"></a>

## fastest io

-   

<https://stackoverflow.com/questions/19983148/fastest-output-to-file-in-c-and-c>


<a id="orgd4f93d8"></a>

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


<a id="orgbfa83af"></a>

# GTK

Widget toolkit for creating graphical user interfaces (GUIs).

-   It is one of the most popular toolkits for the Wayland and X11 windowing systems.
-   use Xlib or XCB directly
-   GTK 4 and GTK 3 are maintained
-   written in C, LGPL, no proprietary
-   doccumentation in C,Python,Vala,JavaScript


<a id="orgab2ba34"></a>

## GLib is the low-level core library that forms the basis for projects such as GTK and GNOME

<https://docs.gtk.org/glib/>

Dependencies

-   GModule 	Portable API for dynamically loading modules
-   GObject 	The base type system library
-   GIO 	GObject Interfaces and Objects, Networking, IPC, and I/O


<a id="org00cec42"></a>

### GLib Data Structures

-   GTree - a **balanced binary tree** implementation.
    
    -   binary tree has a special property that each node of the tree has no more than two children
    -   balanced binary tree means that the elements are kept in a specified order for faster searching - removal
    
    and insertion can be slow.
    
    -   finding an item is a O(log n) operation
-   GNode, a **n-ary tree** implementation.

1.  GTree

        GTree∗ t = g_tree_new((GCompareFunc)g_ascii_strcasecmp);
    
    -   g<sub>tree</sub><sub>insert</sub> - replaces only the value if the key inserted is a duplicate
    -   g<sub>tree</sub><sub>replace</sub>(t, "b", "Billings"); - replaces both the key and the value of a GTree entry
    -   g<sub>tree</sub><sub>steal</sub> - removes a node without calling any GDestroyNotify functions
    -   g<sub>tree</sub><sub>lookup</sub>(t, "a") - get gboolean if key exist
    -   g<sub>tree</sub><sub>lookup</sub><sub>extended</sub>(t, "c", (gpointer∗)&key, (gpointer∗)&value); - get key and value
    -   g<sub>tree</sub><sub>remove</sub>(t, "d")
    -   g<sub>tree</sub><sub>foreach</sub>(t, (GTraverseFunc)iter<sub>all</sub>, NULL); - iterate over the nodes of the tree in the sorted order
    -   g<sub>tree</sub><sub>destroy</sub>(t)
    
    link <https://developer.ibm.com/tutorials/l-glib/>


<a id="org8003b77"></a>

## GMainContext

an event loop for

-   polled file I/O
-   event-based widget systems

is a set of **sources** (or file descriptors (FDs) to check) with an associated callback function which will be
  invoked when that event is received.

is completely thread safe

At the core GMainContext is just a poll() loop or Event loop - one iteration:

-   Prepare sources, determining if any of them are ready to dispatch immediately.
-   Poll the sources, blocking the current thread until an event is received for one of the sources.
-   Check which of the sources received an event (several could have).
-   Dispatch callbacks from those sources.

<https://developer.gnome.org/documentation/tutorials/main-contexts.html>


<a id="orgc861ca9"></a>

## links

-   tutorials <https://developer.gnome.org/documentation/tutorials.html>


<a id="org0ccf813"></a>

# Qt

-   written in C++, LGPL, proprietary


<a id="orgaeee2d8"></a>

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


<a id="org582f6bb"></a>

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
-   -D name or -D name=definition - Predefine name as a macro.


<a id="org183ab54"></a>

## used header files

C++ header files:

-   \`gcc -print-prog-name=cc1plus\` -v

C header files:

-   \`gcc -print-prog-name=cpp\` -v
    
    In addition, gcc will look in the directories specified after the -I option.


<a id="org468762e"></a>

## steps

-   Preprocessor (code.c -> code.i)
-   Assembly code (code.i -> code.s)
-   Object code (code.s -> code.o)
-   Linker (code.o -> a.out)

    gcc -E code.c # generates preprocessed code
    gcc -S code.c # generates assembly code
    gcc -c code.c # generates object code
    gcc code.c    # generates linked object code a.out


<a id="org10edb0d"></a>

## USECASES

pass


<a id="org1997860"></a>

# toolchain

a set of programming tools that is used to perform a complex software development task or to create a software
 product. Simple software development toolchain may consist of a compiler and linker, libraries, and a
 debugger.


<a id="orgb1f2c7e"></a>

## GNU toolchain

-   GNU make: an automation tool for compilation and build
-   GNU Compiler Collection (GCC): a suite of compilers for several programming languages
-   GNU C Library (glibc): core C library including headers, libraries, and dynamic loader
-   GNU Binutils: a suite of tools including linker, assembler and other tools
-   GNU Bison: a parser generator, often used with the Flex lexical analyser
-   GNU m4: an m4 macro processor
-   GNU Debugger (GDB): a code debugging tool
-   GNU Autotools (GNU Build System): Autoconf, Automake and Libtool


<a id="org05a8abc"></a>

## GNU Autotools

designed to assist in making source code packages portable to many Unix-like systems.

-   two-step process: configure followed by make

autoconf - generates a **configure** script based on the contents of a **configure.ac** file. The configure
 script, when run, scans the build environment and generates a subordinate **config.status** script which, in
 turn, converts other input files and most commonly Makefile.in into output files (**Makefile**), which are
 appropriate for that build environment.

automake - generate Makefile.in as an alternative to configure script, which is used to generate portable
 **Makefile**

-   performs automatic dependency tracking

Libtool - helps manage the creation of static and dynamic libraries on various Unix-like operating
 systems. Libtool accomplishes this by abstracting the library-creation process, hiding differences between
 various systems (e.g. Linux systems vs. Solaris).

![img](https://en.wikipedia.org/wiki/File:Autoconf-automake-process.svg)


<a id="orgeb4943b"></a>

### Components:

-   sys-devel/autoconf
    -   autoconf
    -   autoheader
    -   autoreconf - remakes those files that are older than their sources
    -   autoscan
    -   autoupdate
    -   ifnames
-   sys-devel/automake
    -   aclocal
    -   automake
-   sys-devel/libtool
    -   libtool
    -   libtoolize

Other related tools frequently used alongside it include GNU's make program, GNU gettext, pkg-config, and the
 GNU Compiler Collection, also called GCC.


<a id="org9314002"></a>

## LLVM

-   libc++ - implementation of the C++ Standard Library
-   LLVM front ends (compiler) -  Ada, C, C++, D, Delphi, Fortran, Haskell, Julia, Objective-C, Rust
-   Back ends (target platforms) - instruction sets, including IA-32, x86-64, ARM, Qualcomm Hexagon, MIPS,
    Nvidia Parallel Thread Execution (PTX; called NVPTX in LLVM documentation), PowerPC, AMD TeraScale,[39] most
    AMD GPU recent ones (called AMDGPU in LLVM documentation),[40] SPARC, z/Architecture (called SystemZ in LLVM
    documentation), and XCore.
-   lld - Linker
-   LLDB - Debugger


<a id="orgbdf0843"></a>

## GNU make and Makefile

makefile is a confuguration file for **make** utility. make utility will determine automatically which pieces of
 a large program need to be recompiled.

-   make -n : dry run
-   -k ,tells make to keep going when an error is found
-   -f ,which allows you to tell make which file to use as its makefile

targets without Makefile:
make -np | grep PHONY

    .PHONY: all clean depend install uninstall


<a id="org8c7c780"></a>

### theory

Build automation tool.

-   "Makefile" - configuration file for projects.
-   **make** command - GNU make implementation
-   determine automatically which pieces of a large program need to be recompiled, and issue the commands to
    recompile them
-   POSIX includes standardization of the basic features and operation of the Make utility, and is implemented
    with varying degrees of completeness in Unix-based versions of Make
-   newline character marks the end of a statement ("line-based" syntax).
-   make updates a target if it depends on prerequisite files that have been modified since the target was last
    modified, or if the target does not exist.

make steps:

-   last-modification times of target and PREREQUISITIES or if TARGET file is not exist
    -   Without arguments, Make builds the first target that appears in its makefile, which is traditionally a
        symbolic "phony" target named **all**.
    -   it fails when a file changes but its modification time stays in the past
-   For each of those files, it issues the recipes recorded in the data base.
-   default target is the first target


<a id="orgbb3ebd6"></a>

### most important conventions (AI)

-   **default target is the first target** "default goal". Makefiles are processed from top to bottom.
-   **Target names are lowercase**
-   **Variable names are uppercase**
-   **Use tabs for indentation** - not spaces
-   **Line of target with dependencies as outlines**
-   Use := for simple assignments
-   Use ?= for conditional assignments
-   Use @ to suppress command echoing `@echo "Building..."`
-   Use .PHONY for non-file targets.  Use the .PHONY target to specify that a target is not a file, such as
    .PHONY: clean.
-   Keep Makefiles organized: Keep Makefiles organized by grouping related targets and variables together, and
    using comments to explain what each section does.


<a id="org113a418"></a>

### make

facts:

-   make starts with the first target (can be override with .DEFAULT<sub>GOAL</sub> special variable)
-   '-j' or '&#x2013;jobs' option tells 'make' to execute many recipes simultaneously.

-   make all − It compiles everything so that you can do local testing before installing applications.
-   make install − It installs applications at right places.
-   make clean − It cleans applications, gets rid of the executables, any temporary files, object files, etc.


<a id="org2f38de5"></a>

### Makefile

1.  terms

    -   **rule:** files to build “rule's targets” and “prerequisites” of the target. TARGETS : PREREQUISITES ; RECIPE
    -   **recipe:** command use to create or update the target. ex. “cc -c -g foo.c”
    -   **include:** include content of file to Makefile.
    -   **define:** create a macro or multi-line variable, contain multiple lines of Makefile content.

2.  basic

        target … : prerequisites … ; recipe …
                recipe
                …
    
    A Rule consist of:
    
    -   A "target" name of a file that is generated by a program, or name of an action to carry out.
        -   if target is not a name of a file (phony target), it will be executed only when: make "target".
        -   .PHONY: clean - annotate that "clean" can not be a file.
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

3.  example

        all : prog1 prog2 prog3
        .PHONY : all
        
        prog1 : prog1.o utils.o
                cc -o prog1 prog1.o utils.o
        
        prog2 : prog2.o
                cc -o prog2 prog2.o
        
        prog3 : prog3.o sort.o utils.o
                cc -o prog3 prog3.o sort.o utils.o
    
        clean: FORCE
                rm $(objects)
        FORCE:
    
    If a rule has no prerequisites or recipe, and the target of the rule is a nonexistent file, then make imagines
      this target to have been updated whenever its rule is run.


<a id="org986f35f"></a>

### Special Built-in Target Names

.PHONY: clean - clean target will be executed regardless of existence of file "clear"

'.SUFFIXES'

-   The prerequisites of the special target '.SUFFIXES' are the list of suffixes to be used in checking for
    suffix rules.  \*Note Old-Fashioned Suffix Rules: Suffix Rules.

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

1.  '.SUFFIXES'

    to define own implisit rule:
    .SUFFIXES: .foo .bar
    .foo.bar:
       tr '[A-Z][a-z]' '[N-Z][A-M][n-z][a-m]' < $< > $@


<a id="org3f0f2e9"></a>

### variables

-   case sensitive
-   name not contain - not containing ':','#', '=', or whitespace
-   lower names recommended

make -e, &#x2013;environment-overrides Give variables taken from the environment precedence over variables from makefiles.

1.  types

    -   recursive (‘=’)
    -   simple (‘:=’ or ‘::=’)
    -   immediate (‘::=’)
    -   appending (‘+=’)
    -   conditional (‘?=’)
    -   automatic variables $@, $%
    
    target-specific variable value like this: target … : variable-assignment

2.  Special Variable

        .DEFAULT_GOAL := foo
    
    -   .DEFAULT<sub>GOAL</sub> - Sets the default goal to be used if no targets were specified on the command line
    -   MAKEFILE<sub>LIST</sub> - Contains the name of each makefile that is parsed by make, in the order in which it was parsed
    -   MAKE<sub>RESTARTS</sub> - the number of times this instance has restarted (set only if this instance of make has restarted)
    -   .RECIPEPREFIX - if the variable is empty (as it is by default) that character is the standard tab character
    -   .VARIABLES - Expands to a list of the names of all global variables defined so far.
    -   .FEATURES - Expands to a list of special features supported by this version of make.
    -   .INCLUDE<sub>DIRS</sub> - Expands to a list of directories that make searches for included makefiles
    -   .EXTRA<sub>PREREQS</sub> - Each word in this variable is a new prerequisite which is added to targets for which it is set.
    
        name1 := $(lastword $(MAKEFILE_LIST))
        
        include inc.mk
        
        name2 := $(lastword $(MAKEFILE_LIST))
        
        all:
                @echo name1 = $(name1)
                @echo name2 = $(name2)
        # output:
        # > name1 = Makefile
        # > name2 = inc.mk

3.  "recursively expanded" variable.

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

4.  simply expanded variables (preffered)

    -   := or ::=
    -   FOO ?= bar - it only has an effect if the variable is not yet defined

5.  Substitution References

    foo := a.o b.o l.a c.o
    bar := $(foo:.o=.c)
    sets 'bar' to 'a.c b.c l.a c.c'
    
    foo := a.o b.o l.a c.o
    bar := $(foo:%.o=%.c)
    sets 'bar' to 'a.c b.c l.a c.c'.

6.  Computed Variable Names

    x = y
    y = z
    a := $($(x))
    a will be z

7.  automatic variables

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
    -   '$+' This is like '$^', but prerequisites listed more than once are duplicated in the order they were listed
        in the makefile.  This is primarily useful for use in linking commands where it is meaningful to repeat
        library file names in a particular order.
    -   '$|' The names of all the order-only prerequisites, with spaces between them.
    -   '$\*' The stem with which an implicit rule matches/ If the target is 'dir/a.foo.b' and the target pattern is
        'a.%.b' then the stem is 'dir/foo'.  The stem is useful for constructing names of related files.
    
    '$(@D)' The directory part of the file name of the target, with the trailing slash removed.  If the value of
         '$@' is 'dir/foo.o' then '$(@D)' is 'dir'.  This value is '.' if '$@' does not contain a slash.
    
    etc.

8.  rules examples:

    \#+NAME redefine command line parameters:
    
        all:
        	$(MAKE) $@ -C $(SUBDIRS)

9.  ex

        objects = main.o kbd.o command.o display.o \
                  insert.o search.o files.o utils.o
        
        edit : $(objects)
                cc -o edit $(objects)


<a id="orge7a1cc8"></a>

### Implicit Rules

-   main.o : defs.h - rule will be executed implisitly: cc -c main.c -o main.o
-   A file that is mentioned only as a prerequisite is considered a target whose rule specifies nothing, so
    implicit rule search happens for it.
-   to prohibit implisit rule create empty recipie with use ";":
    -   target: ;

1.  some variables used by implicit rules are:

    -   CC: Program for compiling C programs; default cc
    -   CXX: Program for compiling C++ programs; default g++
    -   CFLAGS: Extra flags to give to the C compiler
    -   CXXFLAGS: Extra flags to give to the C++ compiler
    -   CPPFLAGS: Extra flags to give to the C preprocessor
    -   LDFLAGS: Extra flags to give to compilers when they are supposed to invoke the linker

2.  some of implicit rules

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


<a id="orga0f50af"></a>

### get targets from Makefile

-   grep : Makefile | awk -F: '*^[^.]* {print $1;}'

PHONY: list
list:
    @LC<sub>ALL</sub>=C $(MAKE) -pRrq -f $(lastword $(MAKEFILE<sub>LIST</sub>)) : 2>/dev/null | awk -v RS= -F: '*^# File*,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'


<a id="org93a7404"></a>

### directives

-   Reading another makefile
    -   include FILENAMES&#x2026;
-   Deciding (based on the values of variables) whether to use or ignore a part of the makefile.
-   Defining a variable from a verbatim string containing multiple lines.

1.  TODO Conditional Directives or Conditionals

    <https://www.tutorialspoint.com/makefile/makefile_directives.htm>


<a id="orgc026fe3"></a>

### USECASES

add parameter for gcc
-C language: CFLAGS:=$(CFLAGS) -g3

1.  subdirectory - src

    each subdirectory should have own Makefile
    
        SUBDIRS := $(wildcard */.)
        
        all: $(SUBDIRS)
        $(SUBDIRS):
                $(MAKE) -C $@
        
        .PHONY: all $(SUBDIRS)
    
        SUBDIRS := src
        
        .PHONY: all
        all:
        	$(MAKE) $@ -C $(SUBDIRS)
        
        .PHONY: clean
        clean:
        	$(MAKE) $@ -C $(SUBDIRS)
        
        .PHONY: install
        install: all
        	$(MAKE) $@ -C $(SUBDIRS)
        
        .PHONY: uninstall
        uninstall:
        	$(MAKE) $@ -C $(SUBDIRS)
    
        TOPTARGETS := all clean
        
        SUBDIRS := $(wildcard */.)
        
        $(TOPTARGETS): $(SUBDIRS)
        $(SUBDIRS):
                $(MAKE) -C $@ $(MAKECMDGOALS)
        
        .PHONY: $(TOPTARGETS) $(SUBDIRS)


<a id="orge9e94ab"></a>

### best practices

-   Using a consistent naming convention throughout the Makefile
-   Avoiding complex shell commands and instead breaking them down into simpler commands
-   Using Make's built-in functions and variables whenever possible
-   Testing Makefiles thoroughly to ensure they work as expected

1.  define HELPTEXT

        define HELPTEXT
          This is a multi-line help text.
          It can contain several lines of information.
          You can use it to display detailed help messages.
        endef
        
        help:
            @echo "${HELPTEXT}"


<a id="orgd02706e"></a>

### make.inc

TOPSRCDIR = .
include $(TOPSRCDIR)/make.inc

example:

    DESTDIR?=
    PREFIX?=/usr/local
    INSTALLBIN?=$(PREFIX)/bin
    
    DPREFIX=$(DESTDIR)$(PREFIX)
    DINSTALLBIN=$(DESTDIR)$(INSTALLBIN)


<a id="org475580d"></a>

## cmake

-   file: CMakeLists.txt.
-   License: BSD-3-Clause

Mainly for C++

-   a cross-platform tool; the idea is to have a single definition of how the project is built - which
    translates into specific build definitions for any supported platform.
-   On Linux, CMake generates Makefiles; on Windows, it can generate Visual Studio projects, and so on.
-   Build behavior is defined in CMakeLists.txt files - one in every directory of the source code
-   CMake commands are case insensitive


<a id="org50a75a0"></a>

### buils stage

1.  standard build files (usually scripts) (e.g. Unix Makefiles for make) are created (generated) from
    configuration files (CMakeLists.txt) which are written in CMake language
2.  platform's native build tools (native toolchain) are used for actual building of programs.


<a id="org7664911"></a>

### usage

should be CMakeLists.txt and may be CMake folder with .cmake files

-   mkdir build
-   cd build
-   cmake .. -DCMAKE<sub>BUILD</sub><sub>TYPE</sub>=Release -DCMAKE<sub>INSTALL</sub><sub>PREFIX</sub>=/usr/local/bin/folder
-   cmake &#x2013;build .
-   uninstall cmake: xargs rm < install<sub>manifest.txt</sub> # to remove

make

-   make
-   make check
-   make install
-   make uninstall

access /usr/local/lib:

    export LD_LIBRARY_PATH=/lib:/usr/lib:/usr/local/lib


<a id="orge5c13d5"></a>

### errors

ImportError: libscip.so.8.0: cannot open shared object file: No such file or directory

-   add: export LD<sub>LIBRARY</sub><sub>PATH</sub>=/lib:/usr/lib:/usr/local/lib


<a id="org761a8a3"></a>

### links

-   <https://cmake.org/cmake/help/latest/guide/tutorial/index.html>
-   commands <https://cmake.org/cmake/help/latest/manual/cmake-commands.7.html>


<a id="org845b738"></a>

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

in tdlib:

-   CMake/GeneratePkgConfig.cmake
-   in CMakeLists.txt :
    -   include(GeneratePkgConfig)
-   its generate .pc files for .so and .a in *usr/local/lib/pkgconfig*


<a id="orgf6e52b1"></a>

# ldconfig

ldconfig creates the necessary links and cache to the most recent shared libraries found in the directories
 specified on the command line, in the file /etc/ld.so.conf

symlinks pattern:

-   libfoo.so -> libfoo.so.1 -> libfoo.so.1.12


<a id="orgff26741"></a>

# GNU Libtool

-   works implicitly. pkg-config needs to be used explicitly.
-   is a generic library support script that hides the complexity of using shared libraries behind a consistent,
    portable interface.
-   add the new generic library building commands to your Makefile, Makefile.in, or Makefile.am
-   libtool is used by Autoconf and Automake, two other portability tools in the GNU build system. It can also be used directly.


<a id="org62d7477"></a>

# debug

  <https://www.cs.yale.edu/homes/aspnes/pinewiki/C(2f)Debugging.html>
Emacs: M-x gdb and then M-x gdb-many-windows is way more better than dap mode


<a id="org620d705"></a>

## Assertions

-   \#include <assert.h>
-   assert(2+2 == 5);


<a id="orgfa95c10"></a>

## gdb

-   ddd - graphical interface
-   C and C++ programs
-   **Debugging Symbol Table** maps instructions in the compiled binary program to their corresponding variable,
    function, or line in the source code.
    -   gcc -g hello.cc -o hello - debugging option (-g)
-   a.out is the default executable name generated by the gcc


<a id="org0996574"></a>

### alternatives:

-   dev-util/kdevelop - GPL-2
-   Eclipse - Eclipse Public License


<a id="orgf30a82d"></a>

### backtrace

1.  Find one thing you know the code does, and trace those actions backward, starting at the end.
2.  Figure out where in the code — the specific, few lines — it generates that file.


<a id="org169b741"></a>

## Valgrind

dev-util/valgrind

-   Generate a callgrind.out.<PID> file.
    -   valgrind &#x2013;tool=callgrind ./main
-   generate graph.png using gprof2dot
    -   ./gprof2dot.py &#x2013;format=callgrind &#x2013;output=out.dot /path/to/callgrind.out
    -   dot -Tpng out.dot -o graph.png


<a id="org51939e0"></a>

## print - bad approach

The problem is :

1.  no built-in test to see if the output is actually what you'd expect
2.  you can't change your mind about what is getting printed out without editing the code
3.  output can be misleading: in particular, printf output is usually buffered, which means that if your
    program dies suddenly there may be output still in the buffer that is never flushed to stdout. This can be
    very confusing, and can lead you to believe that your program fails earlier than it actually does.

solving:

-   use assert
-   Use fprintf(stderr, &#x2026;) instead of printf(&#x2026;); - output to stderr is usually unbuffered
-   If you must output to stdout, put fflush(stdout) after
-   Keep all arguments passed to printf as simple as possible and beware of faults in your debugging code itself.


<a id="orgf5e5df8"></a>

### ex

gcc -DDEBUG -o printarea printarea.c

    #ifdef DEBUG
    	printf("%s", msg);
    #else
    	(void)msg; // ignore msg
    #endif
    }


<a id="orgcfedc18"></a>

# install /usr/local/bin

copy files

install -m 755 -s $(TARGET) *usr/local/bin*


<a id="org533a25a"></a>

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


<a id="orge86d341"></a>

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


<a id="orgc2181d3"></a>

# C++


<a id="org68e2321"></a>

## TODO operators


<a id="orgc6cd471"></a>

## hello world

    #include <iostream>     // std::cin, std::cout, std::hex
    
    int main () {
      int n;
      std::cout << "Enter a hexadecimal number: ";
      std::cin >> std::hex >> n;         // manipulator
      std::cout << "Its decimal equivalent is: " << n << '\n';
    
      return 0;
    }


<a id="orgb87acf7"></a>

## libs

    #include <cstdio> # c library include <stdio.h>


<a id="orgb8f2fb9"></a>

## RAII ideom (Resource Acquisition is Initialization )

-   Encapsulate a resource into a class (constructor)
-   Use the resource via a local instance of the class
-   The resource is automatically released when the object gets out of scope (restructor)

Implication 1: C++ does not require the garbage collector

Implication 2: The programmer has the responsibility to manage the resource


<a id="org8b2048d"></a>

## links

<https://github.com/federico-busato/Modern-CPP-Programming/blob/master/07.Object_Oriented_I.pdf>


<a id="org5e00ae5"></a>

# Meson

software tool for automating the building (compiling) of software

-   supports the C, C++, CUDA, D, Objective-C, Fortran, Java, C#, Rust, and Vala languages
-   has a mechanism for handling dependencies called Wrap.
-   GNU Compiler Collection, Clang, Microsoft Visual C++ and other compilers, including non-traditional
    compilers such as Emscripten and Cython
-   Written in	Python
-   Facilitate use as an auto-downloadable dependency


<a id="orgfdd1455"></a>

# links

-   The GNU C Reference Manual <https://www.gnu.org/software/gnu-c-manual/gnu-c-manual.html>
-   modern book <https://inria.hal.science/hal-02383654/file/ModernC.pdf>
-   preprocessor <https://www.math.utah.edu/docs/info/cpp_toc.html>
-   reference: libc <https://www.gnu.org/software/libc/manual/pdf/libc.pdf>
-   short reference <https://en.wikibooks.org/wiki/C_Programming/Language_Reference>
-   notes <https://cstutorialpoint.com/c-language-notes/>
-   opensource C toolchains and tools <https://www.b1-systems.de/entwicklung/>

