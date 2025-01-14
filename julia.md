
# Table of Contents

1.  [theory](#orgb836f97)
    1.  [properties](#orgf193eba)
    2.  [pros and cons](#org4e7e04c)
    3.  [compilation](#org34f3653)
    4.  [with other languages:](#org7e452eb)
    5.  [typing](#org081c990)
    6.  [history](#org028525f)
    7.  [hello world](#orgaad0ed8)
    8.  [String interning](#org256e1dd)
    9.  [terms](#orgc7c4a6f)
2.  [python vs julia difference](#org6406bb7)
    1.  [links](#orgcc68237)
3.  [read-eval-print loop (REPL)](#org374216a)
4.  [scripting](#orgc964a34)
    1.  [global singltons:](#orgb68a3db)
5.  [Comments](#orgace6bc1)
6.  [Operators](#org423a3e5)
    1.  [Numeric Literal Coefficients, Juxtapose literal coefficient syntax](#org8c1daf2)
    2.  [special operators basis](#org26461c0)
    3.  [Precedence and Associativity](#org96dc3bf)
    4.  [functions](#orgb3e0621)
        1.  [types ](#org246a5a4)
        2.  [hash key comparision and infinity:](#org09e6a59)
        3.  [Rounding functions](#org0a26302)
        4.  [Division functions](#org855bad0)
        5.  [sing and absolute value](#org2dbb8d8)
        6.  [Powers, logs and roots](#org5ecf7a2)
        7.  [Trigonometric and hyperbolic functions](#org66ba8a3)
        8.  [math functions](#orgb6490c2)
        9.  [other](#org5b160e7)
    5.  [comparision operators](#org35ca453)
    6.  [operators and their functions](#org3d7a76e)
    7.  [convert and promotion](#org8e13dbf)
7.  [Keywords](#org8a0d750)
8.  [Control Flow](#org8589ba7)
9.  [blocks](#org31463f9)
10. [Data model](#orgd12b3c3)
    1.  [integer and float](#org6ffe33a)
        1.  [max min and rounding](#orgeb08ac0)
        2.  [standard primitive types](#org9784e36)
        3.  [Numerical hierarchy:](#orga77e17a)
    2.  [Complex Numbers](#orga56771c)
    3.  [rational numbers](#org6865e47)
    4.  [mutable immutable](#orgc9e331d)
    5.  [UnitRange, AbstractRange](#orgaddf0e1)
    6.  [Primitive types](#org29b68e2)
    7.  [Unions](#org8adcb34)
    8.  [Tuple - Core.Tuple, Core.NamedTuple, Vararg](#orgd5e4736)
    9.  [Arrays](#orgade94c7)
        1.  [basic functions](#orge78bc4f)
        2.  [initilizers](#org1085367)
        3.  [concatenation functions](#orge3b1e1b)
        4.  [other functions](#org1576abf)
        5.  [indexing](#org0270025)
        6.  [view](#org1d3e189)
        7.  [iterate](#orge63c54c)
        8.  [Broadcast and vectorization](#org0fb0493)
    10. [missing](#org8b011b2)
    11. [Collections](#org01a7bcd)
        1.  [Types of collections:](#org2b67a69)
        2.  [Set](#org4b91029)
        3.  [Pair](#orgf8ea5c7)
        4.  [Dict](#org51036df)
        5.  [functions](#org22f6107)
    12. [todo](#org39b3174)
11. [Traverse or iteration over containers](#org59066e2)
    1.  [Base.foreach(f, c&#x2026;) -> Nothing](#orga626c74)
    2.  [map](#org90c2b2e)
        1.  [links](#org43d7ebc)
12. [Strings](#org768a8c9)
    1.  [basic](#org3724460)
    2.  [Non-Standard String Literals:](#org0c7bab1)
        1.  [regex](#orgd9443c9)
        2.  [Byte Array Literals](#org544cc35)
        3.  [Version Number Literals](#org0ebb364)
    3.  [looping](#org567c8e1)
    4.  [examples](#org8c46bdf)
13. [Documentation](#org2d3e402)
14. [Functions](#org2e86944)
    1.  [base](#orgbc3581e)
    2.  [base examples](#orge3c9852)
    3.  [by value by reference](#org2a70053)
    4.  [Empty generic functions](#org236252b)
    5.  [orthogonal design](#orgadf6072)
    6.  [name cascade design](#orgb1fdaa3)
    7.  [restrictions](#orge479800)
15. [Classes (types)](#org0fc68ab)
    1.  [type annotation](#org671c5a1)
    2.  [Abstract types](#orgea415e0)
    3.  [Composite Types - struct](#orgfa2f940)
    4.  [Parametric Types](#org4a4fa0b)
        1.  [Parametric Composite Types](#org318eb92)
    5.  [Parametric Types with value parameter](#org0a7ddcd)
    6.  [UnionAll Types](#org0e69253)
    7.  [Singleton](#org624d7eb)
    8.  [sharpened constructor](#org69b266d)
    9.  [Type Alias](#orga5a9c34)
    10. [Custom pretty-printing](#orgdaa06db)
    11. [Base.Val - compile time value transferrer](#org7d245a4)
    12. [Constructors](#org58a15be)
16. [Conventions](#orgb71574c)
    1.  [code conventions](#orgc15e64c)
    2.  [naming conventions](#org69b7d71)
17. [exception handling](#org6b08e80)
    1.  [exceptions hierarchy](#orgbed0126)
18. [Concurrency](#orgccb6cb3)
19. [Metaprogramming, Macro](#org209bba8)
20. [Debugging and Profiling](#org20e0f6f)
21. [Logging](#orgea636e5)
22. [Unit test](#orgb919117)
23. [Standard library - Modules](#org8341bf2)
    1.  [import](#org5db1642)
    2.  [**standard modules**](#org93b5646)
    3.  [Random](#org571dc7e)
    4.  [Statistics - with s](#org44e6c81)
    5.  [SparseArrays Sparse Arrays](#orgaac01a5)
    6.  [Logging](#org0f7b706)
        1.  [Creating events](#org2b95902)
        2.  [log level](#org4693489)
        3.  [logger](#orgc0190f9)
        4.  [Environment variables](#org9331005)
        5.  [ex Stderr Debug](#org0bd8e60)
        6.  [ex custom logger](#orgfa1f914)
    7.  [links](#orgaf82f9a)
24. [Pkg - packages, environments](#org2703bb6)
    1.  [1.9](#orga6e3e16)
    2.  [install package - two ways](#orgb292966)
    3.  [Offline Mode](#orgf0b8ce6)
    4.  [Pkg client/server](#orgcaa1b4d)
    5.  [theory](#orgc73994d)
25. [Plots - package](#org3a82235)
    1.  [terms](#orgcf6d8e5)
    2.  [recipes](#org525b04d)
    3.  [helloword](#org91b7cbf)
    4.  [plot](#orgfae4e86)
    5.  [links](#orgc3d50ce)
26. [DataFrames - package](#org361d240)
    1.  [terms](#org3680228)
    2.  [DataFrame constructors](#orgd42e80a)
    3.  [usage](#org6c91356)
    4.  [indexing](#orgbd64309)
    5.  [CSV - package](#orgefe5684)
        1.  [File layout options:](#org33dbc64)
        2.  [Parsing options:](#org9c800b1)
        3.  [Column Type Options:](#org273c109)
        4.  [links](#orga2ccaf4)
    6.  [reference](#orgf205137)
    7.  [links](#org8feae92)
27. [Tasks (aka Coroutines)  Asynchronous Programming.](#orgdacc7a7)
28. [Decorators?](#org3721f22)
29. [templates](#org1bff71d)
30. [Ecosystem](#orgcd5f84c)
    1.  [DataFrame perspective](#orge7244cd)
31. [static analysis](#org9ed1d64)
32. [gentoo](#org88e01af)
33. [links](#org65194de)

;-**- mode: Org; fill-column: 110;-**-


<a id="orgb836f97"></a>

# theory

MIT licensed


<a id="orgf193eba"></a>

## properties

-   general-purpose
-   dynamic programming language - extending objects and definitions at runtime
-   object-oriented
-   functional - mostly, emphasis on function overloading.
-   array - vectors and matrix operations
-   procedural (imperative)
-   structured - if, else
-   reflective -  ability of a process to examine, introspect, and modify its own structure and behavior
-   meta programming - the ability to treat other programs as their data. a program can be designed to read, generate,
    analyze or transform other programs, and even modify itself while running
-   multistaged - compilation is divided into a series of intermediate phases.
-   multiple dispatch - choose overloaded or polymorhic function by multiple arguments. Multiple dispatch
    together with the flexible parametric type system give Julia its ability to abstractly express high-level
    algorithms decoupled from implementation details.
-   concurrent computing - execution need not happen at the same instant, such as multiple clients accessing a server at the same time.
-   composable parallel computing - execution occurs at the same physical instant (is impossible on a (one-core) single processor)
-   distributed computing with or without using MPI or the built-in corresponding to "OpenMP-style" threads.
-   direct calling of C and Fortran libraries without glue code.
-   garbage-collected
-   no automatic promotion - arguments of operators automatic conversion: 1 + 1.5 as the floating-point value 2.5
-   eager evaluation - call by value
-   efficient libraries for **floating-point** calculations, **linear algebra**, random number generation, and regular expression.
-   Dynamic type system: types for documentation, optimization, and dispatch. Dynamic, nominative and parametric.
-   Nominal type system: compatibility and equivalence of data types is determined by explicit declarations and/or the name of the types. Nominal type systems contrast with structural systems, where comparisons are based on the structure of the types in question and do not require explicit declarations.
-   A built-in package manager
-   Lisp-like macros and other metaprogramming facilities
-   shell-like abilities to manage other processes
-   Coroutines: lightweight green threading
-   User-defined types are as compact as built-ins
-   Automatic generation of code for different argument types
-   Extensible conversions and promotions for numeric and other types
-   Support for Unicode, including but not limited to UTF-8
-   Call C functions directly (no wrappers or special APIs needed)


<a id="org4e7e04c"></a>

## pros and cons

pros:

-   designed for parallel computing at every level: instruction-level parallelism, multi-threading, GPU
    computing, and distributed computing. good support for CUDA and concurrent programming, parallel and
    distributed computing
-   math oriented, Powerful n-dimensional arrays
-   Julia language is written in itself to a much larger extent than most other languages
-   Call external libraries: Fortran, C, or even Python, allowing data exchange between them.

cons:

-   too much like Matlab.
-   not popular
-   work with arrays is not like standard pandas and numpy
-   matrix creation is just crazy and documentation is lying


<a id="org34f3653"></a>

## compilation

By default, Julia code depends on the Julia runtime to support all Julia features, e.g. threading, but some
 (non-idiomatic, to smaller or larger degree) Julia code can be compiled to small executables (with limited
 Julia capabilities). In both cases no source code needs to be distributed.

a just-in-time (JIT) compiler that is referred to as "just-ahead-of-time" (JAOT) in the Julia community, as
 Julia compiles all code (by default) to machine code before running it.

Julia is a compiled language that runs just-in-time (JIT) for execution, using the LLVM framework.

Python is an interpreted language, which means that the program goes through an interpreter that converts it
 into bytecode, to be then executed by a virtual machine. Julia is compiled at runtime through LLVM, which
 improves development and deployment speed.

By default, the Julia runtime must be pre-installed as user-provided source code is run. Alternatively, a
 standalone executable that needs no Julia source code can be built with e.g. PackageCompiler.jl

implemented using LLVM


<a id="org7e452eb"></a>

## with other languages:

Python
![img](https://www.imaginarycloud.com/blog/content/images/2021/11/julia-benchmarks.jpg)

Code written in C, Python can be converted to Julia, while the opposite is not possible.


<a id="org081c990"></a>

## typing

In Julia everything is an object.

Julia's type system is dynamic, but gains some of the advantages of static type systems by making it possible
 to indicate that certain values are of specific types. (Python is dynamic only) dynamic, nominative and parametric.

type system with parametric polymorphism

-   **generic functions** and **generic datatypes** - basis of generic programming.
-   generic datatypes: struct Point{T}
-   generic functions: same<sub>type</sub>(x::T, y::T) where {T} = true

ad hoc polymorphism - Operator overloading. polymorphic functions can be applied to arguments of different types

all concrete types are subtypes of abstract types, directly or indirectly subtypes of the **Any** type, which is
 the top of the type hierarchy.

type annotations serves three primary purposes:

-   to take advantage of Julia's powerful multiple-dispatch mechanism
-   to improve human readability
-   to catch programmer errors.

Nominal type system: compatibility and equivalence of data types is determined by explicit declarations and/or
 the name of the types. Nominal type systems contrast with structural systems, where comparisons are based on
 the structure of the types in question and do not require explicit declarations.

Concrete types may not subtype each other: all concrete types are final and may only have abstract types as
 their supertypes.

There is no division between object and non-object values: all values in Julia are true objects having a type that belongs to a single, fully connected type graph, all nodes of which are equally first-class as types.

Both abstract and concrete types can be parameterized by other types.

pass-by-sharing - hybrid evaluation technique to pass parameters to a function. This
 technique uses both commonly used evaluation strategies, that is, **pass by value** for immutable objects and
 **pass by reference** for mutable objects. used in JavaScript, Java, Python, ROR, Julia.

all values are objects, but functions are not bundled with the objects they operate on. Types of all of a
 function's arguments are considered when selecting a method. It would be inappropriate for functions to
 "belong" to only their first argument.

Organizing methods into function objects rather than having named bags of methods "inside" each object ends up
 being a highly beneficial aspect of the language design.


<a id="org028525f"></a>

## history

-   2012 launch of pre-1.0 Julia
-   2018 Julia 0.7 and version 1.0
-   2019
    -   1.1  "exception stack" feature
    -   1.2 - built-in support for web browsers
-   1.3 composable multi-threaded parallelism and a binary artifacts system for Julia packages
-   1.4 syntax for generic array indexing to handle e.g. 0-based arrays
-   1.5 record and replay debugging support, for Mozilla's rr tool.changed the behavior in the REPL (soft scope) to the one used in Jupyter
-   1.6 - huge speed up, parallel precompilation and faster loading of packages
-   1.7 2021 - new faster random-number generator
-   1.7.3 2022 - fixing some issues, including at least one security update,
-   1.8 2022 - compiler speedup, in some cases by 25%,[64] and more controllable inlining (i.e. now also
    allowing applying @inline at the call site, not just on the function itself).
-   Julia 1.9.0 2023
    
    -   Caching of native code - solving the  time-to-first-execution TTFX/TTFP problem, fast first usage(full precompilation),
    -   Package extensions - automatically loads a module when a set of packages are loaded - loads the "weak
    
    dependency" and extend methods.
    
    -   Heap snapshot -  memory is being utilized in your Julia programs
    -   Sorting performance - more adaptive sorting algorithm
    -   better support for Float16 arithmetic


<a id="orgaad0ed8"></a>

## hello world

    print("Hello World!")


<a id="org256e1dd"></a>

## String interning

method of storing only one copy of string.

distinct values are stored in a **string intern pool**

**intern** - copy of each string


<a id="orgc7c4a6f"></a>

## terms

-   **types** - class in Classes hierarchy
-   **keywords** - not function, not allowed to be used as variable names.
-   **functions** - a set of methods with same name and different parameter types.
-   **operator** - special type of keyword and function.
-   **Macro** - starts with @ - maps a sequence of argument expressions to a returned expression, and the resulting expression is
    substituted directly into the program at the point where the macro is invoked
-   **String interning** - method of storing only one copy of string. distinct values are stored in a **string
    intern pool**. **intern** - copy of each string.
-   **dispatch** - The choice of which method to execute when a function is applied.
-   **method** - a function with precisely specified parameter types
-   **REPL** - Read–eval–print loop
-   **type-stable** - type of the output is predictable from the types of the inputs. In particular, it means that
    the type of the output cannot vary depending on the values of the inputs.
-   **Juxtaposition** - compares two things to highlight their similarities and differences. In Julia it is 2x
    numerical literal coefficients or array without parentheses.


<a id="org6406bb7"></a>

# python vs julia difference

-   ; - allow to write in one line
-   \#= - multiline comment
-   indexing starts with 1- and not 0- for arrays and string.
-   has no **pass** keyword
-   **for, if, while**, etc. blocks are terminated by the **end** keyword. Indentation level is not significant as
    it is in Python.
-   if 1 - produce error, no **then**
-   '' - for characters not for strings
-   range(1,5) - 1:5
-   Julia lets you declare your own primitive types, rather than providing only a fixed set of built-in ones.
-   in Julia philosophy - "there is many ways to do it", in python "there should be one—and preferably only one—obvious way to do it"
-   hard to understand from documentation what and when overloaded function should return.


<a id="orgcc68237"></a>

## links

-   pandas vs DataFrames.jl <https://dataframes.juliadata.org/latest/man/comparisons/>
-   <https://docs.julialang.org/en/v1/manual/noteworthy-differences/>


<a id="org374216a"></a>

# read-eval-print loop (REPL)

-   ? - help
-   ?string - documentation
-   ; - shell mode
-   ] - package mode
-   ^D - exit
-   ^C - interrupt
-   C-l - clear
-   ; - disable showing its value

functions

-   @edit some function(x) - show function definition in source code
-   varinfo() - list of global variables and their types
-   cd("path") - change working directory
-   pwd()
-   clipboard()/clipboard(x) - load/copy
-   @time function - check execution time


<a id="orgc964a34"></a>

# scripting

Base.exit(code=0) - default successfully

Base.ENV - singleton \`EnvDict\`, providing a dictionary interface to system environment variables.


<a id="orgb68a3db"></a>

## global singltons:

-   Base.Sys.STDLIB - A string containing the full path to the directory containing the stdlib packages.
-   Base.Sys.isunix([os]) - Predicate for testing if the OS provides a Unix-like interface.
-   Base.Sys.isbsd
-   Base.Sys.isfreebsd
-   Base.Sys.isopenbsd
-   Base.Sys.isnetbsd
-   Base.Sys.isdragonfly
-   Base.Sys.iswindows
-   Base.Sys.windows<sub>version</sub>()
-   Base.Sys.free<sub>memory</sub>() - Get the total free memory in RAM in bytes.
-   Base.Sys.total<sub>memory</sub>() - Get the total memory in RAM
-   


<a id="orgace6bc1"></a>

# Comments

Single Line Comments #

Multi-Line Comments: (#=) on start of the comment and (=#) on the end of the comment


<a id="org423a3e5"></a>

# Operators


<a id="org8c1daf2"></a>

## Numeric Literal Coefficients, Juxtapose literal coefficient syntax

variables to be immediately preceded by a numeric literal, implying multiplication.

-   -2x	(-2) \* x
-   √2x	(√2) \* x
-   2<sup>3x</sup> 2<sup>(3x)</sup>
-   2x<sup>3</sup> 2\*(x<sup>3</sup>)
-   (x-1)x - multiplication
-   (x-1)(x+1) and x(x+1) - MethodError: objects of type Int64 are not callable

precedence of numeric literal coefficients used for implicit multiplication is higher than other:

-   1 / 2im equals -0.5im
-   6 */ 2(2 + 1) equals 1 /* 1.

No whitespace may come between a numeric literal coefficient and the identifier or parenthesized expression which it multiplies.

    x = 3
    2x^2 - 3x + 1
    # 10
    1.5x^2 - .5x + 1
    # 13.0
    2^2x
    # 64

conflicts:

-   0xff - 0 \* xff
-   1e10 - 1 \* e10, and similarly with the equivalent E form.
-   1.5f22 - 1.5 \* f22

Solution:

-   Expressions starting with 0x/0o/0b are always hexadecimal/octal/binary literals.
-   Expressions starting with a numeric literal followed by e or E are always floating-point literals.
-   Expressions starting with a numeric literal followed by f are always 32-bit floating-point literals.

1.5F22 is equal to 1.5 \* F22.

zero(x) - Literal zero of type x or type of variable x

one(x) - Literal one of type x or type of variable x


<a id="org26461c0"></a>

## special operators basis

-   x \\ y	inverse divide	equivalent to y / x
-   x ^ y	power	raises x to the yth power
-   x % y	remainder	equivalent to rem(x,y)

Boolean Operators

-   !x	negation
-   x && y	short-circuiting and
-   x || y	short-circuiting or

Bitwise Operators

-   ~x	bitwise not
-   x & y	bitwise and
-   x | y	bitwise or
-   x ⊻ y	bitwise xor (exclusive or)
-   x ⊼ y	bitwise nand (not and)
-   x ⊽ y	bitwise nor (not or)
-   x >>> y	logical shift right
-   x >> y	arithmetic shift right
-   x << y	logical/arithmetic shift left

"dot" operator .^ perform ^ element-by-element on arrays. a .^ b is parsed as the "dot" call (^).(a,b)

    [1,2,3] .^ 3 # 3-element Vector{Int64}:  1   8  27
    sin.(A) # will compute the sine of each element of an array A.

comparisons can be arbitrarily chained:

    1 < 2 <= 2 < 3 == 3 > 2 >= 1 == 1 < 3 != 5 # true


<a id="org96dc3bf"></a>

## Precedence and Associativity

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Category</th>
<th scope="col" class="org-left">Operators</th>
<th scope="col" class="org-left">Associativity</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Syntax</td>
<td class="org-left">. followed by ::</td>
<td class="org-left">Left</td>
</tr>


<tr>
<td class="org-left">Exponentiation</td>
<td class="org-left">^</td>
<td class="org-left">Right</td>
</tr>


<tr>
<td class="org-left">Unary</td>
<td class="org-left">+ - √</td>
<td class="org-left">Right[1]</td>
</tr>


<tr>
<td class="org-left">Bitshifts</td>
<td class="org-left">&lt;&lt; &gt;&gt; &gt;&gt;&gt;</td>
<td class="org-left">Left</td>
</tr>


<tr>
<td class="org-left">Fractions</td>
<td class="org-left">//</td>
<td class="org-left">Left</td>
</tr>


<tr>
<td class="org-left">Multiplication</td>
<td class="org-left">* / % &amp; \ ÷</td>
<td class="org-left">Left[2]</td>
</tr>


<tr>
<td class="org-left">Addition</td>
<td class="org-left">+ - ¦ ⊻</td>
<td class="org-left">Left[2]</td>
</tr>


<tr>
<td class="org-left">Syntax</td>
<td class="org-left">: .. followed by ¦&gt;</td>
<td class="org-left">Left</td>
</tr>


<tr>
<td class="org-left">Syntax</td>
<td class="org-left">¦&gt;</td>
<td class="org-left">Left</td>
</tr>


<tr>
<td class="org-left">Syntax</td>
<td class="org-left">&lt;¦</td>
<td class="org-left">Right</td>
</tr>


<tr>
<td class="org-left">Comparisons</td>
<td class="org-left">&gt; &lt; &gt;= &lt;= <code>= ==</code> != !== &lt;:</td>
<td class="org-left">Non-associative</td>
</tr>


<tr>
<td class="org-left">Control flow</td>
<td class="org-left">&amp;&amp; followed by ¦¦ followed by ?</td>
<td class="org-left">Right</td>
</tr>


<tr>
<td class="org-left">Pair</td>
<td class="org-left">=&gt;</td>
<td class="org-left">Right</td>
</tr>


<tr>
<td class="org-left">Assignments</td>
<td class="org-left">= += -= *= /= //= \= ^= ÷= %= ¦= &amp;= ⊻= &lt;&lt;= &gt;&gt;= &gt;&gt;&gt;=</td>
<td class="org-left">Right</td>
</tr>
</tbody>
</table>


<a id="orgb3e0621"></a>

## functions


<a id="org246a5a4"></a>

### types <a id="org6ae891e"></a>

-   Core.typeof(addy(2)) - Get the concrete type of x.
-   Core.isa(x, type) -> Bool - Determine whether x is of the given type.
-   Core.:<:(T1, T2) - "is a subtype of"
-   Base.supetype(T) - reveals a type's supertype


<a id="org09e6a59"></a>

### hash key comparision and infinity:

-   isequal(x, y)	x and y are identical
-   isfinite(x)	x is a finite number
-   isinf(x)	x is infinite
-   isnan(x)	x is not a number


<a id="org0a26302"></a>

### Rounding functions

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Function</th>
<th scope="col" class="org-left">Description</th>
<th scope="col" class="org-left">Return type</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">round(x)</td>
<td class="org-left">round x to the nearest integer</td>
<td class="org-left">FloatingPoint</td>
</tr>


<tr>
<td class="org-left">iround(x)</td>
<td class="org-left">round x to the nearest integer</td>
<td class="org-left">Integer</td>
</tr>


<tr>
<td class="org-left">floor(x)</td>
<td class="org-left">round x towards -Inf</td>
<td class="org-left">FloatingPoint</td>
</tr>


<tr>
<td class="org-left">ifloor(x)</td>
<td class="org-left">round x towards -Inf</td>
<td class="org-left">Integer</td>
</tr>


<tr>
<td class="org-left">ceil(x)</td>
<td class="org-left">round x towards +Inf</td>
<td class="org-left">FloatingPoint</td>
</tr>


<tr>
<td class="org-left">iceil(x)</td>
<td class="org-left">round x towards +Inf</td>
<td class="org-left">Integer</td>
</tr>


<tr>
<td class="org-left">trunc(x)</td>
<td class="org-left">round x towards zero</td>
<td class="org-left">FloatingPoint</td>
</tr>


<tr>
<td class="org-left">itrunc(x)</td>
<td class="org-left">round x towards zero</td>
<td class="org-left">Integer</td>
</tr>
</tbody>
</table>


<a id="org855bad0"></a>

### Division functions

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Function</th>
<th scope="col" class="org-left">Description</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">div(x,y)</td>
<td class="org-left">truncated division; quotient rounded towards zero</td>
</tr>


<tr>
<td class="org-left">fld(x,y)</td>
<td class="org-left">floored division; quotient rounded towards -Inf</td>
</tr>


<tr>
<td class="org-left">rem(x,y)</td>
<td class="org-left">remainder; satisfies x == div(x,y)*y + rem(x,y); sign matches x</td>
</tr>


<tr>
<td class="org-left">divrem(x,y)</td>
<td class="org-left">returns (div(x,y),rem(x,y))</td>
</tr>


<tr>
<td class="org-left">mod(x,y)</td>
<td class="org-left">modulus; satisfies x == fld(x,y)*y + mod(x,y); sign matches y</td>
</tr>


<tr>
<td class="org-left">mod2pi(x)</td>
<td class="org-left">modulus with respect to 2pi; 0 &lt;= mod2pi(x)  &lt; 2pi</td>
</tr>


<tr>
<td class="org-left">gcd(x,y&#x2026;)</td>
<td class="org-left">greatest common divisor of x, y,&#x2026;; sign matches x</td>
</tr>


<tr>
<td class="org-left">lcm(x,y&#x2026;)</td>
<td class="org-left">least common multiple of x, y,&#x2026;; sign matches x</td>
</tr>
</tbody>
</table>


<a id="org2dbb8d8"></a>

### sing and absolute value

-   Function 	Description
-   abs(x) 	a positive value with the magnitude of x
-   abs2(x) 	the squared magnitude of x
-   sign(x) 	indicates the sign of x, returning -1, 0, or +1
-   signbit(x) 	indicates whether the sign bit is on (1) or off (0)
-   copysign(x,y) 	a value with the magnitude of x and the sign of y
-   flipsign(x,y) 	a value with the magnitude of x and the sign of x\*y


<a id="org5ecf7a2"></a>

### Powers, logs and roots

-   sqrt(x) 	the square root of x
-   cbrt(x) 	the cube root of x
-   hypot(x,y) 	hypotenuse of right-angled triangle with other sides of length x and y
-   exp(x) 	the natural exponential function at x
-   expm1(x) 	accurate exp(x)-1 for x near zero
-   ldexp(x,n) 	x\*2<sup>n</sup> computed efficiently for integer values of n
-   log(x) 	the natural logarithm of x
-   log(b,x) 	the base b logarithm of x
-   log2(x) 	the base 2 logarithm of x
-   log10(x) 	the base 10 logarithm of x
-   log1p(x) 	accurate log(1+x) for x near zero
-   exponent(x) 	returns the binary exponent of x
-   significand(x) 	returns the binary significand (a.k.a. mantissa) of a floating-point number x


<a id="org66ba8a3"></a>

### Trigonometric and hyperbolic functions

-   sin    cos    tan    cot    sec    csc
-   sinh   cosh   tanh   coth   sech   csch
-   asin   acos   atan   acot   asec   acsc
-   asinh  acosh  atanh  acoth  asech  acsch
-   sinc   cosc   atan2


<a id="orgb6490c2"></a>

### math functions

-   erf(x) 	the error function at x
-   erfc(x) 	the complementary error function, i.e. the accurate version of 1-erf(x) for large x
-   erfinv(x) 	the inverse function to erf
-   erfcinv(x) 	the inverse function to erfc
-   erfi(x) 	the imaginary error function defined as -im \* erf(x \* im), where im is the imaginary unit
-   erfcx(x) 	the scaled complementary error function, i.e. accurate exp(x<sup>2</sup>) \* erfc(x) for large x
-   dawson(x) 	the scaled imaginary error function, a.k.a. Dawson function, i.e. accurate exp(-x<sup>2</sup>) \* erfi(x) \* sqrt(pi) / 2 for large x
-   gamma(x) 	the gamma function at x
-   lgamma(x) 	accurate log(gamma(x)) for large x
-   lfact(x) 	accurate log(factorial(x)) for large x; same as lgamma(x+1) for x > 1, zero otherwise
-   digamma(x) 	the digamma function (i.e. the derivative of lgamma) at x
-   beta(x,y) 	the beta function at x,y
-   lbeta(x,y) 	accurate log(beta(x,y)) for large x or y
-   eta(x) 	the Dirichlet eta function at x
-   zeta(x) 	the Riemann zeta function at x
-   airy(z), airyai(z), airy(0,z) 	the Airy Ai function at z
-   airyprime(z), airyaiprime(z), airy(1,z) 	the derivative of the Airy Ai function at z
-   airybi(z), airy(2,z) 	the Airy Bi function at z
-   airybiprime(z), airy(3,z) 	the derivative of the Airy Bi function at z
-   besselj(nu,z) 	the Bessel function of the first kind of order nu at z
-   besselj0(z) 	besselj(0,z)
-   besselj1(z) 	besselj(1,z)
-   bessely(nu,z) 	the Bessel function of the second kind of order nu at z
-   bessely0(z) 	bessely(0,z)
-   bessely1(z) 	bessely(1,z)
-   besselh(nu,k,z) 	the Bessel function of the third kind (a.k.a. Hankel function) of order nu at z; k must be either 1 or 2
-   hankelh1(nu,z) 	besselh(nu, 1, z)
-   hankelh2(nu,z) 	besselh(nu, 2, z)
-   besseli(nu,z) 	the modified Bessel function of the first kind of order nu at z
-   besselk(nu,z) 	the modified Bessel function of the second kind of order nu at z


<a id="org5b160e7"></a>

### other

$ interpolation operator for strings: "$a"

    - create range,  used in indexing to select whole dimensions, for Symbol literals


<a id="org35ca453"></a>

## comparision operators

`= and ==`

-   x `=` y is true when two objects are programmatically indistinguishable

== Base.isequal(x, y) - somehow hash based.

Core.:===(x,y) -> Bool Core.≡(x,y) -> Bool - mutable objects are compared by address in memory and immutable
 objects (such as numbers) are compared by contents at the bit level


<a id="org3d7a76e"></a>

## operators and their functions

-   Expression 	Calls
-   [A B C &#x2026;] 	hcat
-   [A, B, C, &#x2026;] 	vcat
-   [A B; C D; &#x2026;] 	hvcat
-   A' 		ctranspose
-   A.' 		transpose
-   1:n 		colon
-   A[i] 	getindex
-   A[i]=x 	setindex!

These functions are included in the Base.Operators module

    const DEFAULT_VAL = 0


<a id="org8e13dbf"></a>

## convert and promotion

    typeof(convert(UInt8, x)) # UInt8

**MethodError** is thrown indicating that convert doesn't know how to perform the requested conversion.

When is convert called?

-   Assigning to an array converts to the array's element type.
-   Assigning to a field of an object converts to the declared type of the field.
-   Constructing an object with new converts to the object's declared field types.
-   Assigning to a variable with a declared type (e.g. local x::T) converts to that type.
-   A function with a declared return type converts its return value to that type.
-   Passing a value to ccall converts it to the corresponding argument type.

Base.promote(xs&#x2026;) - Convert all arguments to a common type, and return them all (as a tuple)

    promote(2, 3//4) # (2//1, 3//4)

    +(x::Number, y::Number) = +(promote(x,y)...)


<a id="org8a0d750"></a>

# Keywords

**baremodule, begin, break, catch, const, continue, do, else, elseif, end, export, false, finally, for,
 function, global, if, import, let, local, macro, module, quote, return, struct, true, try, using, while**

-   Two-word sequences are reserved: abstract type, mutable struct, primitive type.
-   However, you can create variables with names: abstract, mutable, primitive and type.
-   **where** is parsed as an infix operator for writing parametric method and type definitions;
-   **in** and **isa** are parsed as infix operators;
-   **outer** is parsed as a keyword when used to modify the scope of a variable in an iteration specification of
    a **for** loop.
    
    julia/src/julia-parser.scm ?

full list <http://www.jlhub.com/julia/manual/en/>


<a id="org8589ba7"></a>

# Control Flow

-   **begin and (;):** Compound Expressions.
-   **if-elseif-else and ?::** (ternary operator) - Conditional Evaluation.
-   **&&, || and chained comparisons:** Short-Circuit Evaluation.
-   **while and for:** Repeated Evaluation, Loops.
-   **try-catch, error and throw:** Exception Handling.
-   **yieldto:** Tasks (aka Coroutines).

it is an error if the value of a conditional expression is anything but **true** or **false**.

Short-Circuit Evaluation:

-   a && b, the subexpression b is only evaluated if a evaluates to true.
-   a || b, the subexpression b is only evaluated if a evaluates to false.
-   **if <cond> <statement> end**, one can write **<cond> && <statement>**
-   **if ! <cond> <statement> end**, one can write **<cond> || <statement>**
-   **& and |** -  always evaluate their arguments, dont require bool arguments.

more

-   **break, continue**
-   1:5 is a Range object
-   **in** is equal to **∈** unicode character

Base.ifelse(condition::Bool, x, y) - eliminate the branch in generated code and provide higher performance in tight loops.

    z = begin
             x = 1
             y = 2
             x + y
           end # 3
    z = (x = 1; y = 2; x + y) # 3
    begin x = 1; y = 2; x + y end # 3
    (x = 1; y = 2; x + y) # 3
    
    if x < y
      println("x is less than y")
    elseif x > y
      println("x is greater than y")
    else
      println("x is equal to y")
    end
    
    while i <= 5
        println(i)
        i += 1
    end
    
    for i = 1:5 # 1:5 is a Range object
        println(i)
    end
    
    for i in [1,4,0]
        println(i)
    end
    
    for i = 1:2, j = 3:4
        println((i, j))
    end
    # (1, 3)
    # (1, 4)
    # (2, 3)
    # (2, 4)
    
    for (j, k) in zip([1 2 3], [4 5 6 7])
               println((j,k))
           end
    # (1, 4)
    # (2, 5)
    # (3, 6)


<a id="org31463f9"></a>

# blocks

add new scope

-   function bodies (either syntax)
-   while loops
-   for loops
-   try blocks
-   catch blocks
-   let blocks
-   type blocks.

Notably missing from this list are begin blocks, which do not introduce new scope blocks.

    x = (a = 1 ; 2a) 		# 2
    y = begin b = 3 ; 3*b end 	# 9


<a id="orgd12b3c3"></a>

# Data model

DataType - supertype for abstract, primitive, composite.

-   may be abstract or concrete
-   Every concrete value in the system is an instance of some DataType.


<a id="org6ffe33a"></a>

## integer and float

    x = 0x123456789abcdef, x = 0b10, x = 0o010

hexadecimal literals, binary and octal literals produce unsigned integer types. The size is the minimal needed
 size.

exceeding the maximum representable value of a given type results in a wraparound behavior:

    x = typemax(Int64)
    x + 1 # -9223372036854775808 == typemin(Int64)


<a id="orgeb08ac0"></a>

### max min and rounding

    for T in [Int8,Int16,Int32,Int64,Int128,UInt8,UInt16,UInt32,UInt64,UInt128]
               println("$(lpad(T,7)): [$(typemin(T)),$(typemax(T))]")
           end
    setrounding(BigFloat, RoundUp) do
               BigFloat(1) + parse(BigFloat, "0.1")
           end
    # 1.100000000000000000000000000000000000000000000000000000000000000000000000000003
    
    setrounding(BigFloat, RoundDown) do
               BigFloat(1) + parse(BigFloat, "0.1")
           end
    # 1.099999999999999999999999999999999999999999999999999999999999999999999999999986
    
    setprecision(40) do
               BigFloat(1) + parse(BigFloat, "0.1")
           end
    # 1.1000000000004


<a id="org9784e36"></a>

### standard primitive types

-   primitive type Float16 <: AbstractFloat 16 end
-   primitive type Float32 <: AbstractFloat 32 end
-   primitive type Float64 <: AbstractFloat 64 end

-   primitive type Bool <: Integer 8 end
-   primitive type Char <: AbstractChar 32 end

-   primitive type Int8    <: Signed   8 end
-   primitive type UInt8   <: Unsigned 8 end
-   primitive type Int16   <: Signed   16 end
-   primitive type UInt16  <: Unsigned 16 end
-   primitive type Int32   <: Signed   32 end
-   primitive type UInt32  <: Unsigned 32 end
-   primitive type Int64   <: Signed   64 end
-   primitive type UInt64  <: Unsigned 64 end
-   primitive type Int128  <: Signed   128 end
-   primitive type UInt128 <: Unsigned 128 end


<a id="orga77e17a"></a>

### Numerical hierarchy:

-   abstract type Number end
-   abstract type Real          <: Number end
-   abstract type AbstractFloat <: Real end
-   abstract type Integer       <: Real end
-   abstract type Signed        <: Integer end
-   abstract type Unsigned      <: Integer end

    Number  (Abstract Type)
    ├─ Complex
    └─ Real  (Abstract Type)
       ├─ AbstractFloat  (Abstract Type)
       │  ├─ Float16
       │  ├─ Float32
       │  ├─ Float64
       │  └─ BigFloat
       ├─ Integer  (Abstract Type)
       │  ├─ Bool
       │  ├─ Signed  (Abstract Type)
       │  │  ├─ Int8
       │  │  ├─ Int16
       │  │  ├─ Int32
       │  │  ├─ Int64
       │  │  ├─ Int128
       │  │  └─ BigInt
       │  └─ Unsigned  (Abstract Type)
       │     ├─ UInt8
       │     ├─ UInt16
       │     ├─ UInt32
       │     ├─ UInt64
       │     └─ UInt128
       ├─ Rational
       └─ AbstractIrrational  (Abstract Type)
          └─ Irrational


<a id="orga56771c"></a>

## Complex Numbers

The global constant **im** is bound to the complex number **i**.

    1 + 2im # 1 + 2im
    (-3 + 2im) - (5 - 1im) # -8 + 3im
    1 + Inf*im # complex(1.0,Inf)
    1 + NaN*im # complex(1.0,NaN)

not recommended:

    complex(a,b) # 1 + 2im


<a id="org6865e47"></a>

## rational numbers

    2//3 	# 2//3
    num(2//3)	# 2
    den(2//3)	# 3
    float(3//4)	# 0.75
    isequal(float(a//b), a/b) # true
    3//5 + 1 	# 8//5


<a id="orgc9e331d"></a>

## TODO mutable immutable

Base.isbits(x) - Return true if x is an instance of type T is a "plain data" type, meaning it is immutable and contains no references to other values,
 only primitive types and other isbitstype types.

Base.ismutable(v) - Return true if and only if value v is mutable.


<a id="orgaddf0e1"></a>

## UnitRange, AbstractRange

AbstractRange{T} - Supertype for ranges with elements of type T. UnitRange and other types are subtypes of this.

    1:5 # 1:5 - range
    typeof(1:5) # UnitRange{Int64}


<a id="org29b68e2"></a>

## Primitive types

is a concrete type whose data consists of plain old bits

Syntax

    primitive type «name» «bits» end
    primitive type «name» <: «supertype» «bits» end

Currently, only sizes that are multiples of 8 bits are supported (LLVM)


<a id="org8adcb34"></a>

## Unions

abstract type which includes as objects all instances of any of its argument types.

particularly useful case of a Union type is Union{T, Nothing}, where T can be any type and Nothing is the
 singleton type whose only instance is the object nothing

    IntOrString = Union{Int,AbstractString} # Union{Int64, AbstractString}
    
    1 :: IntOrString # 1
    
    "Hello!" :: IntOrString # "Hello!"
    
     1.0 :: IntOrString # ERROR: TypeError: in typeassert, expected Union{Int64, AbstractString}, got a value of type Float64


<a id="orgd5e4736"></a>

## Tuple - Core.Tuple, Core.NamedTuple, Vararg

**Core.Tuple** - immutable type, Tuples do not have field names; fields are only accessed by index.

    Tuple{Types...}
    typeof((1,"foo",2.5)) # Tuple{Int64, String, Float64}

Core.tuple(xs&#x2026;)

    tuple(1, 'b', pi) # (1, 'b', π)

Core.NTuple - compact way of representing the type for a tuple of length N where all elements are of type T.

    NTuple{N, T}
    typeof((1, 2, 3, 4, 5, 6)) # NTuple{6,Int64}

Base.ntuple(f::Function, n::Integer)

    ntuple(i -> 2*i, 4) # (2, 4, 6, 8)

Core.NamedTuple

    typeof((a=1,b="hello")) # NamedTuple{(:a, :b), Tuple{Int64, String}}

Base.@NamedTuple - more convenient struct-like syntax

    @NamedTuple{a::Float32,b::String}((1,"")) # (a = 1.0f0, b = "")
    @NamedTuple begin
        a::Int
        b::String
    end # NamedTuple{(:a, :b), Tuple{Int64, String}}

Vararg


<a id="orgade94c7"></a>

## Arrays

Core.AbstractArray Base.AbstractVector

    x += y	# allocate memory, change reference
    x = x .+ 1	# allocate memory.
    x .+= y	# to update each element individually. do not allocate


<a id="orge78bc4f"></a>

### basic functions

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Function</th>
<th scope="col" class="org-left">Return</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">eltype(A)</td>
<td class="org-left">the type of the elements contained in A</td>
</tr>


<tr>
<td class="org-left">length(A)</td>
<td class="org-left">the number of elements in A</td>
</tr>


<tr>
<td class="org-left">ndims(A)</td>
<td class="org-left">the number of dimensions of A</td>
</tr>


<tr>
<td class="org-left">size(A)</td>
<td class="org-left">a tuple containing the dimensions of A</td>
</tr>


<tr>
<td class="org-left">size(A,n)</td>
<td class="org-left">the size of A along dimension n</td>
</tr>


<tr>
<td class="org-left">axes(A)</td>
<td class="org-left">a tuple containing the valid indices of A</td>
</tr>


<tr>
<td class="org-left">axes(A,n)</td>
<td class="org-left">a range expressing the valid indices along dimension n</td>
</tr>


<tr>
<td class="org-left">eachindex(A)</td>
<td class="org-left">an efficient iterator for visiting each position in A</td>
</tr>


<tr>
<td class="org-left">stride(A,k)</td>
<td class="org-left">the stride (linear index distance between adjacent elements) along dimension k</td>
</tr>


<tr>
<td class="org-left">strides(A)</td>
<td class="org-left">a tuple of the strides in each dimension</td>
</tr>
</tbody>
</table>


<a id="org1085367"></a>

### initilizers

-   Array{T}(undef, dims&#x2026;)	an uninitialized dense Array
-   zeros(T, dims&#x2026;)	an Array of all zeros
-   ones(T, dims&#x2026;)	an Array of all ones
-   trues(dims&#x2026;)	a BitArray with all values true
-   falses(dims&#x2026;)	a BitArray with all values false
-   reshape(A, dims&#x2026;)	an array containing the same data as A, but with different dimensions
-   copy(A)	copy A
-   deepcopy(A)	copy A, recursively copying its elements
-   similar(A, T, dims&#x2026;)	an uninitialized array of the same type as A (dense, sparse, etc.), but with the specified element type and dimensions. The second and third arguments are both optional, defaulting to the element type and dimensions of A if omitted.
-   reinterpret(T, A)	an array with the same binary data as A, but with element type T
-   rand(T, dims&#x2026;)	an Array with random, iid [1] and uniformly distributed values. For floating point types T, the values lie in the half-open interval [0,1)[0, 1)[0,1).
-   randn(T, dims&#x2026;)	an Array with random, iid and standard normally distributed values
-   Matrix{T}(I, m, n)	m-by-n identity matrix. Requires using LinearAlgebra for I.
-   range(start, stop, n)	a range of n linearly spaced elements from start to stop
-   fill!(A, x)	fill the array A with the value x
-   fill(x, dims&#x2026;)	an Array filled with the value x. In particular, fill(x) constructs a zero-dimensional Array containing x.

Base.collect  Return an Array of all items in a collection or iterator. collect(1:2:13)

    zeros(Int8, 2, 3) or zeros(Int8, (2, 3))
    0  0  0
    0  0  0

Base.Vector [A, B, C, &#x2026;] - **promote** called in creation

    [1:2; 4:5] # [1, 2, 4, 5] - 5-element Vector{Int64}:

tabs or spaces or double semicolons: then horizontally concatenated together.

    [1 2 3] 		# 1×3 Array{Int64,2}:
    [1, 2, 3] 		# [1, 2, 3] - 3-element Array{Int64,1}
    [[1,2]  [4,5]  [7,8]] # 2×3 Matrix{Int64}
    [1;; 2;; 3;; 4]	# 1×4 Matrix{Int64}
    [1 2\n3 4] 		# 2×2 Matrix{Int64}:
    [[1 1]; 2 3; [4 4]]	# 3×2 Matrix{Int64}:

T[A, B, C, &#x2026;]

    Int8[[1 2] [3 4]] 1×4 Array{Int8,2}: [ 1  2  3  4 ]
    Float32[1, 2.3, 4//5] # Specify element type manually

A = [ F(x,y,&#x2026;) for x=rx, y=ry, &#x2026; ]

    x = rand(8) ; [ 0.25*x[i-1] + 0.5*x[i] + 0.25*x[i+1] for i=2:length(x)-1 ] # 6-element Array{Float64,1}:
    [(i,j) for i=1:3 for j=1:i] 			# 6-element Vector{Tuple{Int64, Int64}}
    [(i,j) for i=1:3 for j=1:i if i+j == 4] 	# 2-element Vector{Tuple{Int64, Int64}}:

use without memory allocation (iteration):

    sum(1/n^2 for n=1:1000)

fill

    fill(1, (2,3,4)); # 2×3×4 Array{Int64,3}: - all ==  1


<a id="orge3b1e1b"></a>

### concatenation functions

-   cat	concatenate input arrays along dimension(s) k
-   [A; B; C; &#x2026;]	vcat	shorthand for \`cat(A&#x2026;; dims=1)
-   [A B C &#x2026;]	hcat	shorthand for \`cat(A&#x2026;; dims=2)
-   [A B; C D; &#x2026;]	hvcat	simultaneous vertical and horizontal concatenation
-   [A; C;; B; D;;; &#x2026;]	hvncat	simultaneous n-dimensional concatenation, where number of semicolons indicate the dimension to concatenate


<a id="org1576abf"></a>

### other functions

-   vec(A) - reshape into a one-dimensional vector
-   view(A) -
-   @view x[1:10]
-   Base.append!(collection, collections&#x2026;) -> collection. cost of incremental reallocation.
-   Base.push!(collection, items&#x2026;) -> collection - inserted at the end
-   Base.sizehint!(s, n) -> s - speed up push! and append! by making hint for compiler about future appends
-   Base.pop!(collection) -> item - Remove last item in collection and return it.


<a id="org0270025"></a>

### indexing

X = A[I<sub>1</sub>, I<sub>2</sub>, &#x2026;, I<sub>n</sub>]  or Base.getindex(collection, key&#x2026;)

Base.Colon (:) all indices within the entire dimension

A[I<sub>1</sub>, I<sub>2</sub>, &#x2026;, I<sub>n</sub>] = X or Base.setindex!(A, X, I<sub>1</sub>, I<sub>2</sub>, &#x2026;, I<sub>n</sub>) - assigning values

A[I<sub>1</sub>, I<sub>2</sub>, &#x2026;, I<sub>n</sub>] .= X -  element-wise assignment operator .=

**end** - keyword may be used to represent the last index of each dimension.

CartesianIndex{N}

    A = reshape(1:32, 4, 4, 2);
     A[CartesianIndex(3, 2, 1)] == A[3, 2, 1] == 7 # true

findall(A)

    findall([true, false, false, true]) # [1, 4]

findall(f::Function, A)

    x = [1, 3, 4] ;  findall(isodd, x) # [1,2]

Linear indexing

    A = [2 6; 4 7; 3 1] # 3×2 Matrix{Int64}:
    A[5] # 7

Linear indexing converting to CartesianIndex and back: - requires dividing - In modern processors, integer
 division can be 10-50 times slower than multiplication.

    CartesianIndices(A)[5] # CartesianIndex(2, 2)
    LinearIndices(A)[2, 2] # 5


<a id="org1d3e189"></a>

### view

Slicing operations like x[1:10] create a copy by default in Julia.  Sometimes making a copy of the data is
 faster and sometimes using a view is faster

-   @view x[1:10] changes it to make a view
-   view(x, 1:10)
-   @views expression

    A = [1 2; 3 4]
    b = view(A, :, 1)
    b = @view A[:, 1] # or
    # 2-element view(::Matrix{Int64}, :, 1) with eltype Int64:
    # [ 1, 3]
    view(2:5, 2:3) # returns a range as type is immutable
    # 3:4
    
    A = zeros(3, 3);
    @views for row in 1:3
        b = A[row, :]
        b[:] .= row
    end


<a id="orge63c54c"></a>

### iterate

-   Base.eachindex(A&#x2026;)
-   Base.eachindex(::IndexStyle, A::AbstractArray&#x2026;)
-   Base.eachslice(A::AbstractArray; dims, drop=true) If drop = false, then the Slices will have the same
    dimensionality as the underlying array, with inner dimensions having size 1.

    A = [10 20; 30 40];
    for i in eachindex(A) # linear indexing
        println("A[", i, "] == ", A[i])
    end
    # A[1] == 10
    # A[2] == 30
    # A[3] == 20
    # A[4] == 40
    
    for i in eachindex(view(A, 1:2, 1:1)) # Cartesian indexing
        println(i)
    end
    # CartesianIndex(1, 1)
    # CartesianIndex(2, 1)
    
    s = eachslice([1 2 3; 4 5 6; 7 8 9], dims=1)
    # 3-element RowSlices{Matrix{Int64}, Tuple{Base.OneTo{Int64}}, SubArray{Int64, 1, Matrix{Int64}, Tuple{Int64, Base.Slice{Base.OneTo{Int64}}}, true}}:
    #  [1, 2, 3]
    #  [4, 5, 6]
    #  [7, 8, 9]
    s[1]
    # 3-element view(::Matrix{Int64}, 1, :) with eltype Int64:


<a id="org0fb0493"></a>

### Broadcast and vectorization

-   Base.Broadcast.broadcast(f, As&#x2026;) - f.(args&#x2026;)
-   Base.Broadcast.broadcast!(f, dest, As&#x2026;) - store the result in the dest array.
-   Base.Broadcast.@. expr  - convert f(x) to f.(x)) (@. is equivalent to a call to @\_<sub>dot</sub>\_\_.)

    f(x,y) = 3x + 4y;
    A = [1.0, 2.0, 3.0];
    f.(pi, A) # 3-element Vector
    # 13.42477796076938
    # 17.42477796076938
    # 21.42477796076938
    
    x = 1.0:3.0; y = similar(x); @. y = x + 3 * sin(x)
    # 3-element Vector{Float64}:
    #  3.5244129544236893
    #  4.727892280477045
    #  3.4233600241796016


<a id="org8b011b2"></a>

## missing

**missing** object, which is the singleton instance of the type **Missing** - no value is available for a variable
 in an observation.

-   math operation involving a missing value generally returns missing: missing + 1 => missing
-   Standard equality and comparison operators: if any of the operands is missing, the result is missing:
    missing == 1 => missing

    missing === missing # true isequal
    missing === 1 # false
    isless(1, missing) # true
    isless(missing, Inf) # false
    isless(missing, missing) # false
     true | missing # true
     false | missing # missing
     false & missing # false
     true & missing # missing
     true && missing # missing
    false && missing # false
    [1, missing] == [2, missing] # false
    [1, missing] == [1, missing] # missing
    [1, 2, missing] == [1, missing, 2] # missing
    isequal([1, missing], [1, missing]) # true
    all([true, missing]) # missing
    all([false, missing]) # false
    any([true, missing]) # true
    any([false, missing]) # missing

Base.skipmissing(itr) - iterator over the elements in itr skipping missing values


<a id="org01a7bcd"></a>

## Collections


<a id="org2b67a69"></a>

### Types of collections:

1.  Iterable:
    -   AbstractRange
    -   UnitRange
    -   Tuple
    -   Number
    -   AbstractArray
    -   BitSet
    -   IdDict
    -   Dict
    -   WeakKeyDict
    -   EachLine
    -   AbstractString
    -   Set
    -   Pair
    -   NamedTuple
2.  Indexable Fully implemented by:
    -   Array
    -   BitArray
    -   AbstractArray
    -   SubArray
3.  Indexable Partially implemented by:
    -   AbstractRange
    -   UnitRange
    -   Tuple
    -   AbstractString
    -   Dict
    -   IdDict
    -   WeakKeyDict
    -   NamedTuple
4.  Dictionaries
5.  Set-Like Collections
    -   Dict
    -   IdDict
    -   WeakKeyDict


<a id="org4b91029"></a>

### Set

Base.Set{T} are mutable containers that provide fast membership testing: in, union and intersect.

not ordered.

Base.BitSet([itr]) Construct a sorted set of Ints generated by the given iterable object, or an empty set


<a id="orgf8ea5c7"></a>

### Pair

Core.Pair(x, y) x => y, type: Pair{typeof(x), typeof(y)} -  elements are stored in the fields **first** and **second**.

An iterator that accesses each element of the array A, returning i => x,

-   pairs(IndexLinear(), A)
-   pairs(IndexCartesian(), A)
-   pairs(IndexStyle(A), A)


<a id="org51036df"></a>

### Dict

Dict - implementation uses **hash** as the hashing function for the key, and **isequal** to determine equality.

IdDict is a special hash table where the keys are always object identities.

WeakKeyDict is a hash table implementation where the keys are weak references to objects, and thus may be
 garbage collected even when referenced in a hash table. unlike Dict it does not convert keys on insertion.

    d = Dict("A"=>1, "B"=>2) # Dict{String, Int64}
    Dict{String,Int32}("A"=>1, "B"=>2) # explicitly specify types syntax
    a = Dict(i => i+1 for i = 1:10) #  Dict{Int64,Int64} with 10 entries:
    Dict([("A", 1), ("B", 2)])
    
    #IdDict:
    Dict(true => "yes", 1 => "no", 1.0 => "maybe") # Dict{Real, String} with 1 entry:  1.0 => "maybe"
    IdDict(true => "yes", 1 => "no", 1.0 => "maybe") # IdDict{Any, String} with 3 entries:
      # true => "yes"
      # 1.0  => "maybe"
      # 1    => "no"


<a id="org22f6107"></a>

### functions

Base getindex(collection, key&#x2026;) - Retrieve the value(s) stored at the given key or index within a collection.


<a id="org39b3174"></a>

## todo

<https://docs.julialang.org/en/v1/base/collections/#Base.IteratorEltype>
    AbstractRange
    UnitRange
    Tuple
    Number
    AbstractArray
    BitSet
    IdDict
    Dict
    WeakKeyDict
    EachLine
    AbstractString
    Set
    Pair
    NamedTuple


<a id="org59066e2"></a>

# TODO Traverse or iteration over containers


<a id="orga626c74"></a>

## Base.foreach(f, c&#x2026;) -> Nothing

    tri = 1:3:7; res = Int[];
    foreach(x -> push!(res, x^2), tri)
    print(res) # [1, 16, 49]
    
    foreach((x, y) -> println(x, " with ", y), tri, 'a':'z')
    # 1 with a
    # 4 with b
    # 7 with c


<a id="org90c2b2e"></a>

## TODO map


<a id="org43d7ebc"></a>

### links

-   <https://docs.julialang.org/en/v1/manual/functions/#man-vectorized>
-   <https://docs.julialang.org/en/v1/base/arrays/#Broadcast-and-vectorization>


<a id="org768a8c9"></a>

# Strings


<a id="org3724460"></a>

## basic

you can write C-style string code to process ASCII strings, and they will work as expected, both in terms of
 performance and semantics. If such code encounters non-ASCII text, it will gracefully fail with a clear error
 message, rather than silently introducing corrupt results.

-   **String** is an abstraction type.
    -   "", """ """ - both multiline.
-   **Char** - first-class type representing a single character - a 32-bit integer with a special literal, , whose
    numeric value is interpreted as a Unicode code point..
-   **String** is immutable
-   keyword **end** can be used as a shorthand for the last index (computed by endof(str))
-   endof(str) gives the maximal (byte) index that can be used to index into str.
-   length(str) the number of characters in str.
-   i = start(str) gives the first valid index at which a character can be found in str (typically 1).
-   c, j = next(str,i) returns next character at or after the index i and the next valid character index following that. With start and endof, can be used to iterate through the characters in str.
-   ind2chr(str,i) gives the number of characters in str up to and including any at index i.
-   chr2ind(str,j) gives the index at which the jth character in str occurs.

**nothing** — a special value that does not print anything at the interactive prompt

concatentation

-   string(a,b)
-   \* operator

Core.Symbol - used to represent identifiers in parsed julia code (ASTs). Also often used as a name or label to
 identify an entity (e.g. as a dictionary key). Unlike strings, Symbols are "atomic" or "scalar" entities that
 do not support iteration over characters. Symbols can be entered using the : quote operator:

    :name # :name
    typeof(:name) # Symbol


<a id="org0c7bab1"></a>

## Non-Standard String Literals:


<a id="orgd9443c9"></a>

### regex

-   regexes r"^\s*(?:#|$)" Perl-compatible regular expressions (regexes), as provided by the PCRE library(<https://www.pcre.org/>).
-   ismatch - match or not
-   match - how it match. Return **nothing** or **RegexMatch** object.
    -   **m.match:** the entire substring matched
    -   **m.captures:** the captured substrings as a tuple of strings
    -   **m.offset:** the offset at which the whole match begins
    -   **m.offsets:** the offsets of the captured substrings as a vector
-   flags **i, m, s, x** after the closing double quote mark <http://perldoc.perl.org/perlre.html#Modifiers>

    typeof(r"^\s*(?:#|$)") # Regex (constructor with 3 methods)
    ismatch(r"^\s*(?:#|$)", "not a comment") # false
    match(r"^\s*(?:#|$)", "# a comment")
    RegexMatch("#") # RegexMatch("#")
    m = match(r"^\s*(?:#\s*(.*?)\s*$|$)", "# a comment ") # RegexMatch("# a comment ", 1="a comment")
    
    m = match(r"(a|b)(c)?(d)", "acd") # RegexMatch("acd", 1="a", 2="c", 3="d")
    m.match # "acd"
    m.captures # [ "a",  "c",  "d"]
    m.offset # 1
    m.offsets # [ 1,  2, 3]
    
    match(r"a+.*b+.*?d$"ism, "Goodbye,\nOh, angry,\nBad world\n") # RegexMatch("angry,\nBad world")


<a id="org544cc35"></a>

### Byte Array Literals

b"&#x2026;" - arrays of Uint8 values.

-   ASCII characters and ASCII escapes produce a single byte.
-   \x and octal escape sequences produce the byte corresponding to the escape value.
-   Unicode escape sequences produce a sequence of bytes encoding that code point in UTF-8.


<a id="org0ebb364"></a>

### Version Number Literals

v"&#x2026;" - create **VersionNumber**, follow **specifications of semantic versioning** <http://semver.org/>

widely used in the **Pkg** module, to specify packages versions and their dependencies.

v"0.2.1-rc1+win64"

-   0 - major version
-   2 - minor version
-   1 - patch version
-   rc1 - pre-release
-   win64 - build

note

-   v"0.2" is equivalent to v"0.2.0",
-   v"2" is equivalent to v"2.0.0"

    v"0.2" <= VERSION < v"0.3-"


<a id="org567c8e1"></a>

## looping

Base.view(A, inds&#x2026;) -  can be called on an AbstractString, returning a SubString.


<a id="org8c46bdf"></a>

## examples

    'x' 			# 'x'
    '\u2200' 		# '∀'
    str = "Hello, world.\n" # "Hello, world.\n"
    """Contains "quote" characters""" # "Contains \"quote\" characters"
    str[1]		# 'H'
    str[end-1]		# '.'
    str[4:9]		# "lo, wo"
    length(s)		# ?
    string("Hello", ", wo","rld.\n") # "Hello, world.\n"
    greet = "Hello"; whom = "world"; "$greet, $whom.\n" # "Hello, world.\n"
    "1 + 2 = $(1 + 2)"	# "1 + 2 = 3"
    "v: $([1,2,4])" 	# "v: [1,2,4]"
    greet * ", " * whom * ".\n" # "Hello, world.\n"
    print("I have \$100 in my account.\n") # I have $100 in my account.
    "1 + 2 = 3" == "1 + 2 = $(1 + 2)" # true
    search("xylophone", 'o') # 4
    repeat(".:Z:.", 10)	# ".:Z:..:Z:..:Z:..:Z:..:Z:..:Z:..:Z:..:Z:..:Z:..:Z:."
    
    strint("\xe2\x88", "\x80") # "∀"


<a id="org2d3e402"></a>

# Documentation

any string appearing just before an object (function, macro, type or instance) will be interpreted as
 documenting it (these are called **docstrings**).

-   interpreted as Markdown

    """
        bar(x[, y])
    
    Compute the Bar index between `x` and `y`.
    
    If `y` is unspecified, compute the Bar index between all pairs of columns of `x`.
    
    # Examples
    ```julia-repl
    julia> bar([1, 2], [1, 2])
    1
    ```
    """
    function bar(x, y) ...


<a id="org2e86944"></a>

# Functions


<a id="orgbc3581e"></a>

## base

is an object that maps a tuple of argument values to a return value

-   **Compound Expressions** - alternative function definition
-   apply(f,2,3) - alterinative way to call function
-   pass-by-sharing -
-   Unicode can also be used for function names
-   return or last expression evaluated or **Nothing** instance
-   functions is a first-class objects
-   to define **anonymous** function or **Closures**.
    
    -   f() do x ; body ; end - pass **anonymous** function with x argument as a first argument to f() call. x is
    
    optional
    
    -   -> operator: x -> x + 1
-   bar(a,b,x&#x2026;) = (a,b,x) - **Varargs** Functions
-   Optional Arguments: function parseint(num, base=10)
-   Keyword Arguments: function plot(x, y; style="solid", width=1, color="black") - i dont get it.
    -   function f(x; args&#x2026;) - args is a dict.

Each function has its own type, which is a subtype of **Function**.

Types of functions defined at top-level are singletons.

Closures also have their own type,  which is usually printed with names that end in #<number

    typeof(x -> x + 1) # var"#9#10"

To find all functions for method:

-   f - type method name in REPL
-   Base.methods(f)

function name ending with a ! indicates that it will mutate or destroy the value of one or more of its arguments.


<a id="orge3c9852"></a>

## base examples

    # both equal
    function f2(x,y);x + y;end # f2 (generic function with 1 method)
    f(x,y) = x + y # f (generic function with 1 method)
    1 + 2 + 3 ==  +(1,2,3) # true
    
    x -> x^2 + 2x - 1 # (anonymous function)
    
    map(x->begin
               if x < 0 && iseven(x)
                   return 0
               elseif x == 0
                   return 1
               else
                   return x
               end
           end,
        [A, B, C])
    
    map([A, B, C]) do x
        if x < 0 && iseven(x)
            return 0
        elseif x == 0
            return 1
        else
            return x
        end
    end


<a id="org2a70053"></a>

## by value by reference

pass-by-sharing or call-by-sharing - hybrid evaluation technique to pass parameters to a function. This
 technique uses both commonly used evaluation strategies, that is, **pass by value** for immutable objects and
 **pass by reference** for mutable objects. used in JavaScript, Java, Python, ROR, Julia.

In Julia, all arguments to functions are passed by sharing (i.e. by pointers). ??? wtf

-   b.+=1 - do not change reference
-   b = b .+ 1 - change reference

<https://web.eecs.umich.edu/~fessler/course/598/demo/pass-by-sharing.html>


<a id="org236252b"></a>

## Empty generic functions

used to separate interface definitions from implementations

    function emptyfunc end


<a id="orgadf6072"></a>

## TODO orthogonal design


<a id="orgb1fdaa3"></a>

## name cascade design

    f(x::A, y) = _fA(x, y)
    f(x::B, y) = _fB(x, y)

Then the internal methods \_fA and \_fB can dispatch on y without concern about ambiguities with each other with respect to x.

major disadvantage: in many cases, it is not possible for users to further customize the behavior of f by
 defining further specializations of your exported function f


<a id="orge479800"></a>

## restrictions

you should not define local methods conditionally or subject to control flow, use anonymous functions instead:

    function f2(inc)
        if inc
            g(x) = x + 1
        else
            g(x) = x - 1
        end
    end
    
    function f3()
        function g end
        return g
        g() = 0
    end
    
    function f2(inc) g = if inc x -> x + 1 else x -> x - 1 end end


<a id="org0fc68ab"></a>

# Classes (types)

see [6.4.1](#org6ae891e)

Key featurus to design program:

-   Composite types
-   Multiple dispatch
-   Abstract types and type hierarchy


<a id="org671c5a1"></a>

## type annotation

:: operator - attach type annotations to expressions and variables in programs

typeof(object) - get type

    (1+2)::Int # check type
    
    x::Int8 = 100
    x = 3.5 # ERROR: InexactError: Int64(3.5)
    
    function foo(y)::Float64 # return value
        global x = 15.8    # throws an error when foo is called
        local x::Int8  # in a local declaration
        return x + y
    end
    
    typeof(x) # get type


<a id="orgea415e0"></a>

## Abstract types

serve only as nodes in the type grap

-   the default supertype is Any

-   **Any** – a predefined abstract type that all objects are instances of and all types are subtypes of.
-   Union{} - no object is an instance of Union{} and all types are supertypes of Union{}.
-   Type - Type is simply an abstract type which has all type objects as its instances.
-   Function

Syntax:

    abstract type «name» end
    abstract type «name» <: «supertype» end


<a id="orgfa2f940"></a>

## Composite Types - struct

is a collection of named fields, an instance of which can be treated as a single value.

-   **struct** objects are immutable (by default) -  cannot be modified after construction.
-   object might contain mutable objects, such as arrays, as fields.
-   If all the fields of an immutable structure are indistinguishable (`=`) then two immutable values containing
    those fields are also indistinguishable:

Two constructors are generated automatically (these are called default constructors)

-   accepts any arguments and calls convert to convert them to the types of the fields
-   accepts arguments that match the field types exactly

fieldnames(Foo) - get fileds of struct.

**mutalbe struct** - keyword

-   interface between the fields and the user can be provided through **Instance Properties** <https://docs.julialang.org/en/v1/manual/interfaces/#man-instance-properties>
-   generally allocated on the heap, and have stable memory addresses
-   An object with an immutable type may be copied freely by the compiler since its immutability makes it
    impossible to programmatically distinguish between the original object and a copy.

    struct Foo
        bar
        baz::Int
        qux::Float64
    end
    
    foo = Foo("Hello, world.", 23, 1.5) # Foo("Hello, world.", 23, 1.5)
    typeof(foo) # Foo
    
    mutable struct Bar
        baz
        qux::Float64
        const b::Float64 # required for optimization of code
    end


<a id="org4a4fa0b"></a>

## Parametric Types

Point{T}

-   T parameter - may be any type of all (or a value of any bits type, actually, although here it's clearly used as a type)
-   Point - itself is also a valid type object, containing all instances Point{Float64}, Point{AbstractString}, etc. as subtypes.

type parameters are **invariant** - an expression whose value doesn't change during program execution

problem: Point{Float64} is not a subtype of Point{Real}, the following can't be applied to arguments:

    p::Point{Real}
    sqrt(p.x^2 + p.y^2)

solution - all arrays whose element type is some kind of Real.:

-   function norm(p::Point{<:Real})
-   function norm(p::Point{T} where T<:Real)
-   function norm(p::Point{T}) where T<:Real;

Parametric Primitive Types

    primitive type Ptr{T} 32 end # 32-bit system:
    primitive type Ptr{T} 64 end # 64-bit system:

Type{T} - whose only instance is the object T.

    isa(Float64, Type{Float64}) # true

**Type** is simply an abstract type which has all type objects as its instances.

**where** - keyword, creates a type that is an iterated union of other types, over all values of some
 variable. Can be replaced with simple :< definition.

    Vector{T} where T    # short for `where T<:Any`
    Pair{T, S} where S<:Array{T} where T<:Number # equal to: Pair{T, S} where {T<:Number, S<:Array{T}}


<a id="org318eb92"></a>

### Parametric Composite Types

    struct Point{T}
        x::T
        y::T
    end
    
    p1 = Point(1.0,2.0) # Point{Float64}(1.0, 2.0)
    Point(1,2.5) # ERROR: MethodError: no method matching Point(::Int64, ::Float64)
    p1  <: Point # true
    Point{Float64} <: Point{<:Real} # true
    Pointy{Real} <: Pointy{>:Int} # true
    
    struct Tuple2{A,B} # Tuple Types
        a::A
        b::B
    end
    
    mytupletype = Tuple{AbstractString,Vararg{Int}} # Tuple{AbstractString, Vararg{Int64}}
    isa(("1",1,2), mytupletype) # true


<a id="org0a7ddcd"></a>

## Parametric Types with value parameter

    struct Val{x}
    end
    
    Val(x) = Val{x}() # Val


<a id="org0e69253"></a>

## TODO UnionAll Types


<a id="org624d7eb"></a>

## Singleton

Immutable composite types with no fields.

     struct NoFields ; end
    NoFields() === NoFields() # true
    Base.issingletontype(NoFields) # true


<a id="org69b266d"></a>

## TODO sharpened constructor


<a id="orga5a9c34"></a>

## Type Alias

UInt is aliased to either UInt32 or UInt64 as is appropriate for the size of pointers on the system.

    if Int === Int64
        const UInt = UInt64
    else
        const UInt = UInt32
    end


<a id="orgdaa06db"></a>

## Custom pretty-printing

Base.promote(xs&#x2026;) - Convert all arguments to a common type, and return them all (as a tuple)

It is possible to have two prints: displaying a single object in the REPL and other interactive environments.

    struct Polar{T<:Real} <: Number
        r::T
        Θ::T
    end
    
    Base.show(io::IO, z::Polar) = print(io, z.r, " * exp(", z.Θ, "im)")


<a id="org7d245a4"></a>

## Base.Val - compile time value transferrer

Some functions in Julia's standard library accept Val instances as arguments. can be used to pass the
 information between functions through the value c, which must be an isbits value or a Symbol.

The intent of this construct is to be able to dispatch on constants directly (at compile time) without having
 to test the value of the constant at run time.

    struct Val{x} ; end
    
    Val(x) = Val{x}() # constructor?
    
    # usage:
    firstlast(::Val{true}) = "First" # firstlast (generic function with 1 method)
    firstlast(::Val{false}) = "Last" # firstlast (generic function with 2 methods)
    
    firstlast(Val(true)) # "First"
    firstlast(Val(false)) # "Last"

<https://docs.julialang.org/en/v1/manual/performance-tips/#man-performance-value-type>


<a id="org58a15be"></a>

## Constructors

**Outer Constructor** - can be many. providing additional convenience methods for constructing objects.

    Foo(x) = Foo(x,x)
    Foo() = Foo(0)

**Inner Constructor** - only one. enforcing invariants, and allowing construction of self-referential objects

-   declared inside the block of a type declaration, rather than outside of it like normal methods.
-   can call **new** special function - creates objects of the block's type.

    struct OrderedPair
        x::Real
        y::Real
        OrderedPair(x,y) = x > y ? error("out of order") : new(x,y)
    end


<a id="orgb71574c"></a>

# Conventions


<a id="orgc15e64c"></a>

## code conventions

function name ending with a ! indicates that it will mutate or destroy the value of one or more of its arguments.

do not indent code in module.

Use 4 spaces per indentation level.

function argument ordering:

-   Function argument. Putting a function argument first permits the use of do blocks for passing multiline anonymous functions.
-   I/O stream. Specifying the IO object first permits passing the function to functions such as sprint, e.g. sprint(show, x).
-   Input being mutated. For example, in fill!(x, v), x is the object being mutated and it appears before the value to be inserted into x.
-   Type. Passing a type typically means that the output will have the given type. In parse(Int, "1"), the type comes before the string to parse. There are many such examples where the type appears first, but it's useful to note that in read(io, String), the IO argument appears before the type, which is in keeping with the order outlined here.
-   Input not being mutated. In fill!(x, v), v is not being mutated and it comes after x.
-   Key. For associative collections, this is the key of the key-value pair(s). For other indexed collections, this is the index.
-   Value. For associative collections, this is the value of the key-value pair(s). In cases like fill!(x, v), this is v.
-   Everything else. Any other arguments.
-   Varargs. This refers to arguments that can be listed indefinitely at the end of a function call. For example, in Matrix{T}(undef, dims), the dimensions can be given as a Tuple, e.g. Matrix{T}(undef, (1,2)), or as Varargs, e.g. Matrix{T}(undef, 1, 2).
-   Keyword arguments. In Julia keyword arguments have to come last anyway in function definitions; they're listed here for the sake of completeness.

Don't overuse try-catch: It is better to avoid errors than to rely on catching them.

Julian design philosophy usually won't be defining a bunch of functions like test<sub>pumpkin</sub> and test<sub>pineapple</sub>,
 instead it will use dispatches on test for types Pumpkin and Pineapple. This allows for clean/understandable
 code. It will break tasks up into small type-stable functions which will allow for good performance. It likely
 will also be written very generically, allowing the user to use items that are subtypes of AbstractArray or
 Number, and using the power of dispatch to allow their software to work on numbers they've never even heard
 of.


<a id="org69b7d71"></a>

## naming conventions

UpperCamelCase for types and module names.

functions are lowercase (maximum, convert) and, when readable, with multiple words squashed together (isequal,
 haskey). When necessary, use underscores as word separators. Underscores are also used to indicate a
 combination of concepts (remotecall<sub>fetch</sub> as a more efficient implementation of fetch(remotecall(&#x2026;))) or as
 modifiers.

functions mutating at least one of their arguments end in !.

conciseness is valued, but avoid abbreviation (indexin rather than indxin) as it becomes difficult to remember
 whether and how particular words are abbreviated.

&#x2026;Base - package names end.  lightweight “base” package with the sole function of defining an interface.


<a id="org6b08e80"></a>

# exception handling

base class: Exception

-   throw(DomainError())
-   error("negative x not allowed") produce an **ErrorException**
-   **try/catch/else/finally/end** - catch **Exception**-s.
    -   else - is run whenever no error was thrown previously.
    -   finally - provides a way to run some code when a given block of code exits, regardless of how it exits.

    typeof(DomainError()) <: Exception # true

write messages to the standard error I/O, but do not throw any Exceptions and hence do not interrupt execution.

-   info("Hi")
-   warn("Hi")
-   error("Hi")

    try bad() catch; x end
    
    sqrt_second(x) = try
        sqrt(x[2])
    catch y
        if isa(y, DomainError)
            sqrt(complex(x[2], 0))
        elseif isa(y, BoundsError)
            sqrt(x)
        end
    end
    
    sqrt_second([1 4]) # 2.0
    sqrt_second([1 -4]) # 0.0 + 2.0im


<a id="orgbed0126"></a>

## exceptions hierarchy

Exception

-   ArgumentError
-   BoundsError
-   DivideError
-   DomainError
-   EOFError
-   ErrorException
-   InexactError
-   InterruptException
-   KeyError
-   LoadError
-   MemoryError
-   MethodError
-   OverflowError
-   ParseError
-   SystemError
-   TypeError
-   UndefRefError

ErrorException


<a id="orgccb6cb3"></a>

# Concurrency


<a id="org209bba8"></a>

# Metaprogramming, Macro

    macro sayhello()
        return :( println("Hello, world!") )
    end
    @sayhello (macro with 1 method)


<a id="org20e0f6f"></a>

# TODO Debugging and Profiling


<a id="orgea636e5"></a>

# Logging


<a id="orgb919117"></a>

# Unit test

using Test


<a id="org8341bf2"></a>

# Standard library - Modules


<a id="org5db1642"></a>

## import

module NameOfModule &#x2026; end - introducing a new global scope. may contain code for runtime initialization. One
 can have multiple files per module, and multiple modules per file.

-   using .NiceStuff - making NiceStuff (the module name), DOG and nice available, which was exported.  is the
    only form for which export lists matter at all.
    -   import ModuleName: f - allow overload function f. using ModuleName: f - dont allow overload. or use full path.
-   import .NiceStuff - brings <span class="underline">only</span> the module name into scope
-   include("file1.jl") - the contents of the source file were evaluated in the global scope of the including module
-   export - suggests that users should use and make available with **using**

The recommended style is not to indent the body of the module.

UpperCamelCase for module names.

parentmodule(UnitRange) - get module of type

This is called a **qualified name**, **module path**.

-   Base.UnitRange - operator, requires inserting a colon,
-   Base.:+. A
-   Base.:(==) A small number of operators additionally require parentheses

Renaming

    import CSV: read as rd
    import BenchmarkTools as BT

baremodule NameOfModule &#x2026; end - only have **using Core**

no Core, and code can be evaluated into it with **@eval** or **Core.eval**:

    Module(:YourNameHere, false, false)

each module introduces its own scope

    parentmodule(UnitRange) # Base
    
    module NiceStuff
    export nice, DOG
    struct Dog end      # singleton type, not exported
    const DOG = Dog()   # named instance, exported
    nice(x) = "nice $x" # function, exported
    end;
    
    using .NiceStuff: nice, DOG # add only those
    using .NiceStuff: nice, DOG, NiceStuff
    using LinearAlgebra, Statistics


<a id="org93b5646"></a>

## **standard modules**

Modules automatically contain:

-   using Core, using Base
-   definitions of the **eval** and **include** functions

Standard modules:

-   Core contains all functionality "built into" the language.
-   Base contains basic functionality that is useful in almost all cases.
-   Main is the top-level module and the current module, when Julia is started.


<a id="org571dc7e"></a>

## Random

using Random

PRNGs (pseudorandom number generators) exported by the **Random** package are:

-   TaskLocalRNG: a token that represents use of the currently active Task-local stream, deterministically
    seeded from the parent task, or by RandomDevice (with system randomness) at program start
-   Xoshiro: generates a high-quality stream of random numbers with a small state vector and high performance
    using the Xoshiro256++ algorithm
-   RandomDevice: for OS-provided entropy. This may be used for cryptographically secure random numbers
    (CS(P)RNG).
-   MersenneTwister: an alternate high-quality PRNG which was the default in older versions of Julia, and is
    also quite fast, but requires much more space to store the state vector and generate a random sequence.

Base.rand([rng=default<sub>rng</sub>()], [S], [dims&#x2026;])

-   S - Pick a random element or array
-   Random floating point numbers are generated uniformly in [0,1)

    rand(Int, 2) # 2-element Array{Int64,1}:  1339893410598768192  1575814717733606317
    rand((2, 3)) # 3
    rand(Float64, (2, 3)) # 2×3 Array{Float64,2}:

Base.randn([rng=default<sub>rng</sub>()], [T=Float64], [dims&#x2026;]) - Generate a normally-distributed random number of
 type T with mean 0 and standard deviation 1.

Random.bitrand([rng=default<sub>rng</sub>()], [dims&#x2026;]) - Generate a BitArray of random boolean values. 0 1  0 0 1

Random.randexp([rng=default<sub>rng</sub>()], [T=Float64], [dims&#x2026;]) - Generate a random number of type T according to
 the exponential distribution with scale 1

Random.default<sub>rng</sub>() - Return the default global random number generator (RNG).

Random.seed!([rng=default<sub>rng</sub>()], seed) -> rng or seed!([rng=default<sub>rng</sub>()]) -> rng

Random.randsubseq([rng=default<sub>rng</sub>(),] A, p) - Return a vector consisting of a random subsequence of the given array A.

Random.shuffle([rng=default<sub>rng</sub>(),] v::AbstractArray)  - Return a randomly permuted copy of v


<a id="org44e6c81"></a>

## Statistics - with s

<https://github.com/JuliaStats/Statistics.jl/blob/master/src/Statistics.jl>

-   std(itr; corrected::Bool=true, mean=nothing[, dims])
-   stdm(itr, mean; corrected::Bool=true[, dims])
-   var(itr; corrected::Bool=true, mean=nothing[, dims])
-   varm(itr, mean; dims, corrected::Bool=true)
-   cor(x::AbstractVector)
-   cov(x::AbstractVector; corrected::Bool=true)
-   mean(itr) mean(f, A::AbstractArray; dims)
-   median(itr) median(A::AbstractArray; dims)
-   middle(x, y) middle(a::AbstractArray) - ((x + y) / 2) or (min + max)/2
-   quantile(itr, p; sorted=false, alpha::Real=1.0, beta::Real=alpha)

    using Statistics
    
    quantile(0:20, 0.5) # 10.0
    quantile(skipmissing([1, 10, missing]), 0.5) # 5.5

useful:

-   Base.extrema(itr; [init]) -> (mn, mx)


<a id="orgaac01a5"></a>

## SparseArrays Sparse Arrays

Sparse matrix - a matrix in which most of the elements are zero


<a id="org0f7b706"></a>

## Logging

import Logging

ou don't need to import Logging to create log events; for this the standard logging macros such as @info are
 already exported by Base and available by default.

system generates some standard information for each event:

-   The **module** in which the logging macro was expanded.
-   The **file** and **line** where the logging macro occurs in the source code.
-   A **message id** that is a unique, fixed identifier for the source code statement where the logging macro appears. This identifier is designed to be fairly stable even if the source code of the file changes, as long as the logging statement itself remains the same.
-   A **group** for the event, which is set to the base name of the file by default, without extension. This can be used to group messages into categories more finely than the log level (for example, all deprecation warnings have group :depwarn), or into logical groupings across or within modules.

Principle of separating two different concerns

-   Creating log events is the concern of the **module author**
-   Processing of log events — that is, display, filtering, aggregation and recording — is the **concern of the
    application author**


<a id="org2b95902"></a>

### Creating events

-   @debug message  [key=value | value &#x2026;]
-   @info  message  [key=value | value &#x2026;]
-   @warn  message  [key=value | value &#x2026;]
-   @error message  [key=value | value &#x2026;]
-   @logmsg level message [key=value | value .


<a id="org4693489"></a>

### log level

-   Logging.Debug (log level -1000) is information intended for the developer of the program. These events are disabled by default.
-   Logging.Info (log level 0) is for general information to the user. Think of it as an alternative to using println directly.
-   Logging.Warn (log level 1000) means something is wrong and action is likely required but that for now the program is still working.
-   Logging.Error (log level 2000) means something is wrong and it is unlikely to be recovered, at least by this part of the code. Often this log-level is unneeded as throwing an exception can convey all the required information.


<a id="orgc0190f9"></a>

### logger

AbstractLogger

When an event is triggered, the appropriate logger is found by looking for a **task-local logger** with the **global
 logger** as fallback. Newly spawned tasks inherit the logger of the parent task.

-   Logging.global<sub>logger</sub>() - get, global<sub>logger</sub>(logger) - set.
-   Logging.with<sub>logger</sub>(function, logger)
-   Logging.current<sub>logger</sub>() - get, with<sub>logger</sub>(function, logger) - set

logger types:

-   ConsoleLogger([stream,] min<sub>level</sub>=Info; meta<sub>formatter</sub>=default<sub>metafmt</sub>, show<sub>limited</sub>=true, right<sub>justify</sub>=0)
    is the default logger
-   NullLogger is a convenient way to drop all messages where necessary. equivalent of /dev/null.
-   SimpleLogger([stream,] min<sub>level</sub>=Info) is a very simplistic text formatting logger, mainly useful for debugging the logging system itself.


<a id="org9331005"></a>

### Environment variables

to enable debug logging for a file or module. Activate @debug log messages in loading.jl:

    JULIA_DEBUG=loading julia -e 'using OhMyREPL'

special value **all** -  enable all debug logging

Use a comma separator to enable debug for multiple modules: JULIA<sub>DEBUG</sub>=loading,Main.

in REPL:

    ENV["JULIA_DEBUG"] = Main


<a id="org0bd8e60"></a>

### ex Stderr Debug

    using Logging
    
    # Create a ConsoleLogger that prints any log messages with level >= Debug to stderr
    debuglogger = ConsoleLogger(stderr, Logging.Debug)
    
    # Enable debuglogger for a task
    with_logger(debuglogger) do
        @debug "a context specific log message"
    end
    
    # Set the global logger
    global_logger(debuglogger)


<a id="orgfa1f914"></a>

### TODO ex custom logger


<a id="orgaf82f9a"></a>

## links

<https://docs.julialang.org/en/v1/base/base/#Standard-Modules>


<a id="org2703bb6"></a>

# Pkg - packages, environments

Pkg.jl - part of standard library

repository <https://github.com/JuliaRegistries/General>

installs binary packages called "artifacts"

List installed packages:

    julia> ]
    pkg> st

update

    pkg> up

When you add a new registered package, usually three things would happen:

-   update **registries** - <https://github.com/JuliaRegistries/General>
-   download the **source code of the package** - hosted on various platforms
-   if not available, download **artifacts** required by the package.


<a id="orga6e3e16"></a>

## 1.9

-   up Foo will now try to only update Foo
-   add will only auto update the registry once per day
-   add can now try to only add already installed packages
    -   add &#x2013;preserve=tiered<sub>installed</sub> Foo
    -   add &#x2013;preserve=installed Foo
-   **why** to tell you why a package is in the manifest - output is all the different ways to reach the package through the dependency graph


<a id="orgb292966"></a>

## install package - two ways

1.  

    julia> ] # ']' should be pressed
    (@v1.9) pkg> add DataFrames

1.  

    using Pkg ; Pkg.add("DataFrames")

run the tests bundled with package (If you want to make sure everything works as expected):

    using Pkg ; Pkg.test("DataFrames")


<a id="orgf0b8ce6"></a>

## Offline Mode

two ways

-   import Pkg; Pkg.offline(true)
-   set the environment variable JULIA<sub>PKG</sub><sub>OFFLINE</sub> to "true".


<a id="orgcaa1b4d"></a>

## Pkg client/server

When the network connection to GitHub and AWS S3 is not stable.

Since Julia 1.5, <https://pkg.julialang.org>  is used as the default pkg server


<a id="orgc73994d"></a>

## theory

**federated package management** - multiple independent parties can maintain both public and private packages
 and registries of packages, and that projects can depend on a mix of public and private packages from
 different registries.

-   cannot be a central authority for package naming.
-   single project may end up depending on different packages that have the same name
-   packages are identified by **universally unique identifiers (UUIDs)**, which get assigned when each package is created.

The **Pkg** - package manager that ships with Julia lets you

-   install
-   manage your projects' dependencies
-   assists in creating and manipulating project files

two kinds of environments-directories:

-   **project environment** (explicit environment) - project file and an optional manifest file.
    
    -   manifest - complete dependency graph, including all direct and indirect dependencies, exact versions of
    -   **reproducibility**
    
    each dependency, and sufficient information to locate and load the correct version.
-   **package directory** (implicit environment) - the source trees of a set of packages as subdirectories
    -   **convenience**
-   a stacked environment - intermix
    -   **adding**

\_<sub>init</sub>\_<sub>()</sub> function in your module - run exactly once in the lifetime of the code. called after the module is
 loaded into a process, e.g., by import, using, or require.


<a id="org3a82235"></a>

# Plots - package

License MIT

installation:

    import Pkg
    Pkg.add("Plots")


<a id="orgcf6d8e5"></a>

## terms

Plotting **recipes** - are extensions to the Plots.jl framework.


<a id="org525b04d"></a>

## recipes

Two fundamental recipe libraries are **PlotRecipes.jl** and **StatsPlots.jl**.

add

-   New **plot** commands via **user recipes**.
-   Default interpretations of Julia types as plotting data via **type recipes**.
-   New functions for generating plots via **plot recipes**.
-   New series types via **series recipes**.

StatsPlots.jl add:

-   a type recipe for Distributions.
-   a plot recipe for marginal histograms.
-   a bunch of new statistical plot series.
-   @df plotting directly from data tables.


<a id="org91b7cbf"></a>

## helloword

    using Plots
    x = range(0, 10, length=100)
    y = sin.(x)
    plot(x, y, , label=["sin(x)"])
    y3 = @. sin(x)^2 - 1/2
    plot!(x, y3)
    xlims!(0, 5)
    ylims!(0, 1)
    title!("Trigonometric functions")
    xlabel!("x")
    ylabel!("y")
    savefig("myplot.png") # or png("myplot")


<a id="orgfae4e86"></a>

## plot

-   lw instead of linewidth
-   ls instead of linestyle


<a id="orgc3d50ce"></a>

## links

<https://docs.juliaplots.org/latest/generated/statsplots/>
<https://docs.juliaplots.org/>


<a id="org361d240"></a>

# DataFrames - package

License MIT

installation

    using Pkg; Pkg.add("DataFrames")

other packages

-   DataFramesMeta.jl - advanced data transformations
-   TableMetadataTools.jl - metadata

common interface (defined in the **Tables.jl** package)

-   <https://github.com/JuliaData/Tables.jl>
-   doc <https://juliadata.github.io/Tables.jl/stable/>


<a id="org3680228"></a>

## terms

-   observation - row
-   feature - column


<a id="orgd42e80a"></a>

## DataFrame constructors

DataFrame(pairs::Pair&#x2026;; makeunique::Bool=false, copycols::Bool=true)

    DataFrame("customer age" => [15, 20, 25], "first name" => ["Rohit", "Rahul", "Akshat"])

DataFrame(pairs::AbstractVector{<:Pair}; makeunique::Bool=false, copycols::Bool=true)

    DataFrame(["a"=>[1,2,3,3], "a"=>[1,2,3,3]], makeunique=true) # vector of Pairs
    DataFrame([(x=1,y=2),(x=2,y=3)]) # vector of named typles
    DataFrame((a=[1, 2], b=[3, 4])) # named typle - most common
    DataFrame([1 0; 2 0], :auto) # matrix with x1,x2 columns
    mat = [1 2 4 5; 15 58 69 41; 23 21 26 69] ; nms = ["a", "b", "c", "d"] ; DataFrame(mat, nms)

DataFrame(ds::AbstractDict; copycols::Bool=true)

    DataFrame(Dict("a"=>[1,2,3,3], "b"=>[1,2,3,3]))
    dict = Dict(:customer_age => [15, 20, 25], :first_name => ["Rohit", "Rahul", "Akshat"]) # faster!

DataFrame(; kwargs&#x2026;, copycols::Bool=true)

    DataFrame()
    DataFrame(a=[1,2,3])
    DataFrame(a=Int64[], b=Float64[]) # empty typed columns

DataFrame(table; copycols::Union{Bool, Nothing}=nothing)

DataFrame(table, names::AbstractVector; makeunique::Bool=false, copycols::Union{Bool, Nothing}=nothing)

DataFrame(columns::AbstractVecOrMat, names::AbstractVector; makeunique::Bool=false, copycols::Bool=true)

DataFrame(::DataFrameRow; copycols::Bool=true)

DataFrame(::GroupedDataFrame; copycols::Bool=true, keepkeys::Bool=true)

copycols : whether vectors passed as columns should be copied (default=true)

makeunique : false - add suffix \_1 to columns with same name.


<a id="org6c91356"></a>

## usage

    
    using DataFrames
    
    german = DataFrames((a=[3,2,3], b=[2,3,4]))
    
    names(german) # column names Vector{String}
    propertynames(german) # column names as Vector{Symbol}:
    
    # eachcol(german) function to get an iterator over the columns of the data frame.
    # broadcast the eltype function over it
    eltype.(eachcol(german)) # Vector{DataType} - types of column
    
    size(german) # (1000, 10) - rows, column
    nrow(german)
    ncol(german)
    
    describe(german)
    
    show(german, allcols=true) # print customization
    
    first(german, 6)
    last(german, 5)
    
    view(german, :, 2:5) # columns 2-5


<a id="orgbd64309"></a>

## indexing

    german.Sex === german[!, :Sex] # true - view
    german.Sex === german[:, :Sex] # false - copy


<a id="orgefe5684"></a>

## CSV - package

    using Pkg ; Pkg.add("CSV")

    using CSV
    
    german_ref = CSV.read(joinpath(dirname(pathof(DataFrames)),
                                          "..", "docs", "src", "assets", "german.csv"),
                                 DataFrame)

CSV.read(source, sink::T; kwargs&#x2026;) => T


<a id="org33dbc64"></a>

### File layout options:

-   source - path
-   sink - type to create.
-   header=1
-   normalizenames::Bool=false -  whether column names should be "normalized" into valid Julia identifier symbols;
-   skipto::Integer: - specifies the row where the data starts in the csv file, default - next row after **header**
-   footerskip::Integer
-   transpose::Bool - each column is parsed as a row
-   comment::String: string that will cause rows that begin with it to be skipped while parsing.
-   ignoreemptyrows::Bool=true: whether empty rows in a file should be ignored. if false, each column will be
    assigned missing for that empty row)
-   select: an AbstractVector of Integer, Symbol, String, or Bool, or a "selector" function of the form (i,
    name) -> keep::Bool; only columns in the collection or for which the selector function returns true will be
    parsed
-   drop: inverse of select; an AbstractVector of Integer, Symbol, String, or Bool, or a "drop" function of the
    form (i, name) -> drop::Bool; columns in the collection or for which the drop function returns true will
    ignored
-   limit: an Integer to indicate a limited number of rows to parse in a csv file;
-   buffer<sub>in</sub><sub>memory</sub>: a Bool, default false, which controls whether a Cmd, IO, or gzipped source will be
    read/decompressed in memory vs. using a temporary file.
-   ntasks::Integer=Threads.nthreads() - for multithreaded parsed files
-   rows<sub>to</sub><sub>check</sub>::Integer=30: [not applicable to CSV.Rows] a multithreaded parsed file will be split up into
    ntasks # of equal chunks; rows<sub>to</sub><sub>check</sub> controls the # of rows are checked to ensure parsing correctly found
    valid rows;


<a id="org9c800b1"></a>

### Parsing options:

-   missingstring: either a nothing, String, or Vector{String} to use as sentinel values that will be parsed as
    missing;
-   delim=',': a Char or String that indicates how columns are delimited in a file
-   ignorerepeated::Bool=false: whether repeated (consecutive/sequential) delimiters should be ignored
-   quoted::Bool=true: whether parsing should check for quotechar at the start/end of cells
-   quotechar='"', openquotechar, closequotechar: a Char (or different start and end characters) that indicate a
    quoted field which may contain textual delimiters or newline characters
-   escapechar='"': the Char used to escape quote characters in a quoted field
-   dateformat::Union{String, Dates.DateFormat, Nothing, AbstractDict}: a date format string to indicate how
    Date/DateTime columns are formatted for the entire file;
-   decimal='.': a Char indicating how decimals are separated in floats, i.e. 3.14 uses '.', or 3,14 uses a comma ','
-   truestrings, falsestrings: Vector{String}s that indicate how true or false values are represented; by
    default "true", "True", "TRUE", "T", "1" are used to detect true and "false", "False", "FALSE", "F", "0" are
    used to detect false;
-   stripwhitespace=false: if true, leading and trailing whitespace are stripped from string values, including column names


<a id="org273c109"></a>

### Column Type Options:

-   types: a single Type, AbstractVector or AbstractDict of types, or a function of the form (i, name) ->
    Union{T, Nothing} to be used for column types
-   typemap::IdDict{Type, Type}: a mapping of a type that should be replaced in every instance with another
    type, i.e. Dict(Float64=>String)
-   pool::Union{Bool, Real, AbstractVector, AbstractDict, Function, Tuple{Float64, Int}}=(0.2, 500): [not supported by CSV.Rows] controls whether columns will be built as PooledArray;
-   downcast::Bool=false: controls whether columns detected as Int64 will be "downcast" to the smallest possible integer type like Int8, Int16, Int32, etc.
-   stringtype=InlineStrings.InlineString: controls how detected string columns will ultimately be returned;
-   strict::Bool=false: whether invalid values should throw a parsing error or be replaced with missing
-   silencewarnings::Bool=false: if strict=false, whether invalid value warnings should be silenced
-   maxwarnings::Int=100: if more than maxwarnings number of warnings are printed while parsing, further warnings will be silenced by default; for multithreaded parsing, each parsing task will print up to maxwarnings
-   debug::Bool=false: passing true will result in many informational prints while a dataset is parsed; can be
    useful when reporting issues or figuring out what is going on internally while a dataset is parsed
-   validate::Bool=true: whether or not to validate that columns specified in the types, dateformat and pool
    keywords are actually found in the data. If false no validation is done, meaning no error will be thrown if
    types/dateformat/pool specify settings for columns not actually found in the data.


<a id="orga2ccaf4"></a>

### links

-   <https://csv.juliadata.org/stable/>
-   read <https://csv.juliadata.org/stable/reading.html#CSV.read>


<a id="orgf205137"></a>

## reference

DataFrame - type


<a id="org8feae92"></a>

## links

-   package <https://juliapackages.com/p/dataframes> <https://juliahub.com/ui/Packages/DataFrames/AR9oZ/1.5.0?page=0>
-   web doc <http://juliadata.github.io/DataFrames.jl/stable/> => <https://dataframes.juliadata.org/stable/>
-   git <https://github.com/JuliaData/DataFrames.jl>
-   Cheat Sheet <https://www.ahsmart.com/pub/data-wrangling-with-data-frames-jl-cheat-sheet/>
-   examples <https://github.com/bkamins/DataFrames-Showcase>


<a id="orgdacc7a7"></a>

# Tasks (aka Coroutines)  Asynchronous Programming.


<a id="org3721f22"></a>

# Decorators?


<a id="org1bff71d"></a>

# templates

main

    function main()
       # do stuff
    end
    
    if abspath(PROGRAM_FILE) == @__FILE__
        main()
    end


<a id="orgcd5f84c"></a>

# Ecosystem

-   Plots
-   DataFrames


<a id="orge7244cd"></a>

## DataFrame perspective

**Statistics**

-   StatsKit.jl: A convenience meta-package which loads a set of essential packages for statistics, including those mentioned below in this section and DataFrames.jl itself.
-   Statistics: The Julia standard library comes with a wide range of statistics functionality, but to gain access to these functions you must call using Statistics.
-   LinearAlgebra: Like Statistics, many linear algebra features (factorizations, inversions, etc.) live in a library you have to load to use.
-   SparseArrays are also in the standard library but must be loaded to be used.
-   FreqTables.jl: Create frequency tables / cross-tabulations. Tightly integrated with DataFrames.jl.
-   HypothesisTests.jl: A range of hypothesis testing tools.
-   GLM.jl: Tools for estimating linear and generalized linear models. Tightly integrated with DataFrames.jl.
-   StatsModels.jl: For converting heterogeneous DataFrame into homogeneous matrices for use with linear algebra libraries or machine learning applications that don't directly support DataFrames. Will do things like convert categorical variables into indicators/one-hot-encodings, create interaction terms, etc.
-   MultivariateStats.jl: linear regression, ridge regression, PCA, component analyses tools. Not well integrated with DataFrames.jl, but easily used in combination with StatsModels.

**Machine Learning**

-   MLJ.jl: if you're more of an applied user, there is a single package the pulls from all these different libraries and provides a single, scikit-learn inspired API: MLJ.jl. MLJ.jl provides a common interface for a wide range of machine learning algorithms.
-   ScikitLearn.jl: A Julia wrapper around the full Python scikit-learn machine learning library. Not well integrated with DataFrames.jl, but can be combined using StatsModels.jl.
-   AutoMLPipeline: A package that makes it trivial to create complex ML pipeline structures using simple expressions. It leverages on the built-in macro programming features of Julia to symbolically process, manipulate pipeline expressions, and makes it easy to discover optimal structures for machine learning regression and classification.
-   Deep learning: KNet.jl and Flux.jl.

**Plotting**

-   Plots.jl: Powerful, modern plotting library with a syntax akin to that of matplotlib (in Python) or plot (in R). StatsPlots.jl provides Plots.jl with recipes for many standard statistical plots.
-   Gadfly.jl: High-level plotting library with a "grammar of graphics" syntax akin to that of ggplot (in R).
-   AlgebraOfGraphics.jl: A "grammar of graphics" library build upon Makie.jl.
-   VegaLite.jl: High-level plotting library that uses a different "grammar of graphics" syntax and has an emphasis on interactive graphics.

**Data Wrangling**

-   Impute.jl: various methods for handling missing data in vectors, matrices and tables.
-   DataFramesMeta.jl: A range of convenience functions for DataFrames.jl that augment select and transform to provide a user experience similar to that provided by dplyr in R.
-   DataFrameMacros.jl: Provides macro versions of the common DataFrames.jl functions similar to DataFramesMeta.jl, with convenient syntax for the manipulation of multiple columns at once.
-   Query.jl: Query.jl provides a single framework for data wrangling that works with a range of libraries, including DataFrames.jl, other tabular data libraries (more on those below), and even non-tabular data. Provides many convenience functions analogous to those in dplyr in R or LINQ.
-   You can find more information on these packages in the Data manipulation frameworks section of this manual.

And More!

-   Graphs.jl: A pure-Julia, high performance network analysis library. Edgelists in DataFrames can be easily converted into graphs using the GraphDataFrameBridge.jl package.

IO:

-   DataFrames.jl work well with a range of formats, including:
    -   CSV files (using CSV.jl),
    -   Apache Arrow (using Arrow.jl)
    -   reading Stata, SAS and SPSS files (using ReadStatTables.jl; alternatively Queryverse users can choose StatFiles.jl),
    -   Parquet files (using Parquet2.jl),
    -   reading R data files (.rda, .RData) (using RData.jl).

Tabular Libraries like DataFrame

-   TypedTables.jl: Type-stable heterogeneous tables. Useful for improved performance when the structure of your table is relatively stable and does not feature thousands of columns.
-   JuliaDB.jl: For users working with data that is too large to fit in memory, we suggest JuliaDB.jl, which offers better performance for large datasets, and can handle out-of-core data manipulations (Python users can think of JuliaDB.jl as the Julia version of dask).


<a id="org9ed1d64"></a>

# static analysis

-   JET — Static type inference system to detect bugs and type instabilities. <https://github.com/aviatesk/JET.jl>
-   StaticLint — Static Code Analysis for Julia. <https://github.com/julia-vscode/StaticLint.jl>


<a id="org88e01af"></a>

# gentoo

troubles:

-   dev-lang/julia-1.6.0 build fails due to a missing library dependence in libsuitesparseconfig.so
    -   sci-libs/suitesparseconfig with CFLAGS+=-lm,


<a id="org65194de"></a>

# links

official

-   github <https://github.com/JuliaLang/julia/>
    -   packages repository <https://github.com/JuliaRegistries/General>
-   Doc <https://docs.julialang.org/en/v1/>
    -   Doc <https://juliafs.readthedocs.io/en/latest/manual/>
    -   Doc <http://matrix.umcs.lublin.pl/DOC/julia-doc/html/manual/>
-   <https://docs.julialang.org/en/v1/base/base/> reference for Base and Core modules
-   packages <https://juliahub.com/ui/Packages> "Julia Computing" service
    -   pros: Dependencies Dependent
    -   cons: link to package

unofficial

-   packages <https://juliapackages.com/>
-   a manually curated taxonomy of Julia packages <https://github.com/svaksha/Julia.jl>
-   examples <https://github.com/DataWookie/MonthOfJulia>
-   books links <https://www.topfreebooks.org/best-julia-programming-books/>
-   tutorial for less experienced <https://en.wikibooks.org/wiki/Introducing_Julia>
-   big course <https://syl1.gitbook.io/julia-language-a-concise-tutorial/>
    -   deep <https://ucidatascienceinitiative.github.io/IntroToJulia/>
    -   1.0 <https://learnxinyminutes.com/docs/julia/>
-   exaples <https://juliabyexample.helpmanual.io/>
-   2022 by examples <https://bogumilkaminski.pl/files/julia_express.pdf>
-   reference <http://www.jlhub.com/julia/manual/en/>
-   article about bad side of julia <https://viralinstruction.com/posts/badjulia/>
    -   <https://viralinstruction.com/posts/goodjulia/>
-   banchmark <https://julialang.org/benchmarks/>
-   types article <https://en.wikibooks.org/wiki/Introducing_Julia/Types>
-   book <https://en.wikibooks.org/wiki/Introducing_Julia/print>

