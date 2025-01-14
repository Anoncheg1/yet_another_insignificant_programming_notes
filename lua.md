
# Table of Contents

1.  [theory](#org8756ceb)
    1.  [features](#org941e4f0)
    2.  [terms](#org421ec15)
2.  [scripting](#orgbe65d6d)
3.  [compilation and execution](#orgacbc4ee)
4.  [operators](#org24ce2d5)
    1.  [Arithmetic Operators](#org8eb2d3a)
    2.  [Bitwise Operators](#org97284fd)
    3.  [Relational Operators](#org0193ca7)
    4.  [logical: and, or, not](#org8853bfd)
    5.  [priority](#orgff3bb70)
5.  [keywords](#org32d9d9a)
6.  [types and classes](#orga85202b)
    1.  [basic types](#orga672f6b)
    2.  [integers](#org89671f0)
    3.  [scope](#orgf6f9fae)
    4.  [tables](#orgc0d0f62)
        1.  [ex](#org3689f7e)
        2.  [print table](#orga2b2668)
    5.  [Metatables and Metamethods](#org65e3c48)
        1.  [list of events controlled by metatables](#org83de4bb)
    6.  [OOP](#org9ebab90)
    7.  [ex1](#org6e734b0)
    8.  [syntax shugar ":"](#org933da38)
7.  [strings](#org4d492b0)
8.  [functions](#org4e862fc)
9.  [helloworld](#orgc42a516)
10. [comments](#org87ca516)
11. [control flow](#org01d4bee)
    1.  [basic](#orgf5d30e8)
    2.  [iterate](#orgacf9b3e)
12. [modules](#orga48916b)
    1.  [path - list of patterns ANSI C](#org91842c4)
    2.  [2](#org02b432a)
    3.  [old 5.0,5.1 way](#orgc3fa236)
13. [Standard Libraries](#org0b2219d)
    1.  [basic](#orga5b44a3)
    2.  [other](#org0c74390)
14. [debug](#org3a2c8eb)
15. [Documenting](#org2a96993)
    1.  [Tags](#org961962a)
    2.  [Infered Tags](#org1847b75)
    3.  [LDoc style](#orgdae85ac)
    4.  [LDoc tags](#org27cd5ea)
    5.  [table - classic way](#org7dc6890)
    6.  [Doxygen - Generate documentation from source code](#org5647529)
    7.  [links](#org2b79715)
16. [Style guide](#org5696d91)
    1.  [basic](#orgaa2b583)
    2.  [require](#orgc460115)
    3.  [links](#orga161e28)
17. [The Complete Syntax of Lua](#org0d38ad3)
18. [not errors](#orgab35aa2)
    1.  [undefined variable](#orgb2a6ea5)
    2.  [key not present](#orgde95be9)
19. [package managers](#org5637444)
20. [links](#org7f0588d)

;-**- mode: Org; fill-column: 110;-**-


<a id="org8756ceb"></a>

# theory

MIT License

.lua


<a id="org941e4f0"></a>

## features

designed primarily for embedded use in applications.

designed as an extension language, to be embedded in a host C program

-   scripting
-   imperative (procedural, prototype-based, object-oriented)
-   functional
-   meta
-   reflective
-   cross-platform, since the interpreter of compiled bytecode is written in ANSI C
-   dynamically typed language
-   advanced:
    -   first-class functions
    -   garbage collection
    -   closures
    -   proper tail calls
    -   coercion (automatic conversion between string and number values at run time)
    -   coroutines (cooperative multitasking)
    -   dynamic module loading.

It ignores spaces (including new lines) and comments between lexical elements (tokens), except as delimiters
 between names and keywords.

Lua programs are much more error prone, due to automatic coercion, accessing of unset variables without an
 exception, and having to check most functions for nil values, rather than just catching the exceptions.

Lua has out-of-the-box support for multiple threads and multiple interpreters in a single thread or process

Lua starts table indices at 1, which is strange for a language designed to interface with C where arrays start
 at 0. (Comment: Ad-hoc , there is no problem to use index 0 or even -1


<a id="org421ec15"></a>

## terms

-   **chunk:** The unit of compilation of Lua is called a chunk. Syntactically, a chunk is simply a block. Chunks
    do not nest (unlike blocks). A chunk is an outermost block which you feed to "load". Lua handles a chunk as
    the body of an anonymous function.
-   ::


<a id="orgbe65d6d"></a>

# scripting

    #!/usr/local/bin/lua
    #!/usr/bin/env lua

lua [options] [script [args]]

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">-e stat</td>
<td class="org-left">executes string stat;</td>
</tr>


<tr>
<td class="org-left">-l mod</td>
<td class="org-left">"requires" mod and assigns the result to global @mod;</td>
</tr>


<tr>
<td class="org-left">-i</td>
<td class="org-left">enters interactive mode after running script;</td>
</tr>


<tr>
<td class="org-left">-v</td>
<td class="org-left">prints version information;</td>
</tr>


<tr>
<td class="org-left">-E</td>
<td class="org-left">ignores environment variables;</td>
</tr>


<tr>
<td class="org-left">--</td>
<td class="org-left">stops handling options;</td>
</tr>


<tr>
<td class="org-left">-</td>
<td class="org-left">executes stdin as a file and stops handling options.</td>
</tr>
</tbody>
</table>

luac - Lua compiler


<a id="orgacbc4ee"></a>

# compilation and execution

are not interpreted directly from the textual Lua file, but are compiled into bytecode, which is then run on
 the Lua virtual machine.

When Lua loads a chunk, the default value for its \_ENV upvalue is the global environment .


<a id="org24ce2d5"></a>

# operators

The concatenation ('..') and exponentiation ('^') operators are right associative. All other binary operators
 are left associative.


<a id="org8eb2d3a"></a>

## Arithmetic Operators

-   +: addition
-   -: subtraction
-   \*: multiplication
-   /: float division
-   //: floor division
-   %: modulo
-   ^: exponentiation
-   -: unary minus


<a id="org97284fd"></a>

## Bitwise Operators

-   &: bitwise AND
-   |: bitwise OR
-   ~: bitwise exclusive OR
-   >>: right shift
-   <<: left shift
-   ~: unary bitwise NOT


<a id="org0193ca7"></a>

## Relational Operators

-   ==: equality
-   ~=: inequality
-   <: less than
-   >: greater than
-   <=: less or equal
-   >=: greater or equal


<a id="org8853bfd"></a>

## logical: and, or, not

-   10 or 20            &#x2013;> 10
-   10 or error()       &#x2013;> 10
-   nil or "a"          &#x2013;> "a"
-   nil and 10          &#x2013;> nil
-   false and error()   &#x2013;> false
-   false and nil       &#x2013;> false
-   false or nil        &#x2013;> nil
-   10 and 20           &#x2013;> 20


<a id="orgff3bb70"></a>

## priority

from lower to higher:

1.  or
2.  and
3.  <     >     <=    >=    ~=    ==
4.  |
5.  ~
6.  &
7.  <<    >>
8.  ..
9.  -
10. /     //    %
11. unary operators (not   #     -     ~)
12. ^


<a id="org32d9d9a"></a>

# keywords

and       break     do        else      elseif    end
    false     for       function  goto      if        in
    local     nil       not       or        repeat    return
    then      true      until     while


<a id="orga85202b"></a>

# types and classes

dynamically typed language

-   All values carry their own type
-   no type definition

    type(a) - get type


<a id="orga672f6b"></a>

## basic types

    nil, boolean, number, string, function, userdata, thread, and table.

-   **nil:** singleton - absence of a useful value - (as false)
-   **boolean:** false and true
-   **number:** integer numbers and real (floating-point) numbers
    -   **integer:** 
    
    -   **float:**
-   **string:** immutable sequences of bytes. 8-bit clean: strings can contain any 8-bit value. encoding-agnostic;
    it makes no assumptions about the contents of a string.
-   **function:** written in Lua and functions written in C
-   **userdata:** block of raw memory - arbitrary C data to be stored in Lua variables. assignment and identity
    test. created and modified only through the C API.
    -   **full userdata:** an object with a block of memory
    -   **light userdata:** a C pointer value
-   **thread:** used to implement coroutines. not related to operating-system threads
-   **table:** associative arrays - idexes of any type. can be heterogeneous - can contain values of all types (except nil)
    -   can be used to represent ordinary arrays, lists, symbol tables, sets, records, graphs, trees, etc.
    -   a.name as syntactic sugar for a["name"]

**Tables**, **functions**, **threads**, and (full) **userdata** values are objects: variables do not actually contain
 these values, only references to them.


<a id="org89671f0"></a>

## integers

converts between integer and float automatically as needed.

Standard Lua uses 64-bit integers and double-precision (64-bit) floats, but you can also compile Lua so that
 it uses 32-bit integers and/or single-precision (32-bit) floats.

valid integer constants are

    3   345   0xff   0xBEBADA

Examples of valid float constants are

    3.0     3.1416     314.16e-2     0.31416E1     34e1
    0x0.1E  0xA23p-4   0X1.921FB54442D18P+1


<a id="orgf6f9fae"></a>

## scope

kinds of variables in Lua:

-   global variables
-   local variables
-   table fields.


<a id="orgc0d0f62"></a>

## tables

always passed by reference

A key (index) can be any value except nil and NaN, including functions.


<a id="org3689f7e"></a>

### ex

    a_table = {} -- Creates a new, empty table
    a_table = {x = 10}  -- Creates a new table, with one entry mapping "x" to the number 10.
    print(a_table["x"]) -- Prints the value associated with the string key, in this case 10.
    b_table = a_table
    b_table["x"] = 20   -- The value in the table has been changed to 20.
    print(b_table["x"]) -- Prints 20.
    print(a_table["x"]) -- Also prints 20, because a_table and b_table both refer to the same table.
    
    point = { x = 10, y = 20 }   -- Create new table
    print(point["x"])            -- Prints 10
    print(point.x)               -- Has exactly the same meaning as line above. The easier-to-read dot notation is just syntactic sugar.
    
    Point = {}
    
    Point.new = function(x, y)
      return {x = x, y = y}  --  return {["x"] = x, ["y"] = y}
    end
    
    Point.set_x = function(point, x)
      point.x = x  --  point["x"] = x;
    end
    
    array = { "a", "b", "c", "d" }   -- Indices are assigned automatically.
    print(array[2])                  -- Prints "b". Automatic indexing in Lua starts at 1.
    print(#array)                    -- Prints 4.  # is the length operator for tables and strings.
    array[0] = "z"                   -- Zero is a legal index.
    print(#array)                    -- Still prints 4, as Lua arrays are 1-based.
    
    ExampleTable =
    {
      {1, 2, 3, 4},
      {5, 6, 7, 8}
    }
    print(ExampleTable[1][3]) -- Prints "3"
    print(ExampleTable[2][4]) -- Prints "8"
    
    -- A table can be an array of objects.
    
    function Point(x, y)        -- "Point" object constructor
      return { x = x, y = y }   -- Creates and returns a new object (table)
    end
    array = { Point(10, 20), Point(30, 40), Point(50, 60) }   -- Creates array of points
                            -- array = { { x = 10, y = 20 }, { x = 30, y = 40 }, { x = 50, y = 60 } };
    print(array[2].y)                                         -- Prints 40


<a id="orga2b2668"></a>

### print table

    oprint = print -- origin print
    print = function (...)
        if type(...) == "table" then
            local str = ''
            local amount = 0
            for i,v in pairs(...) do
                amount=amount+1
                local pre = type(i) == "string" and i.."=" or ""
                str = str .. pre..tostring(v) .. "\n"
            end
            oprint('#'..amount..':')
            oprint(str)
        else
            oprint(...)
        end
    end
    print ({x=7, y=9, w=11, h="height", 7, 8, 9})


<a id="org65e3c48"></a>

## Metatables and Metamethods

Every value in Lua can have a metatable - table, that defines the behavior of the original value under operations.

-   consist of event "\_<sub>add</sub>" key and **metamethods** - value

to retrieve the metamethod for event ev in object o, Lua does:

-   rawget (table, index) - Gets the real value of table[index], index may be any value.
-   getmetatable (object) - get nil, metatable or metatable.\_<sub>metatable</sub> field.

    rawget(getmetatable(o) or {}, "__ev")

setmetatable (table, metatable) - metatable is nil, removes the metatable of the given table.  If the original
 metatable has a \_<sub>metatable</sub> field, raises an error. This function returns table.


<a id="org83de4bb"></a>

### list of events controlled by metatables

-   \_<sub>add</sub>: the addition (+) operation. If any operand for an addition is not a number (nor a string coercible to a number), Lua will try to call a metamethod. First, Lua will check the first operand (even if it is valid). If that operand does not define a metamethod for \_<sub>add</sub>, then Lua will check the second operand. If Lua can find a metamethod, it calls the metamethod with the two operands as arguments, and the result of the call (adjusted to one value) is the result of the operation. Otherwise, it raises an error.
-   \_<sub>sub</sub>: the subtraction (-) operation. Behavior similar to the addition operation.
-   \_<sub>mul</sub>: the multiplication (\*) operation. Behavior similar to the addition operation.
-   \_<sub>div</sub>: the division (/) operation. Behavior similar to the addition operation.
-   \_<sub>mod</sub>: the modulo (%) operation. Behavior similar to the addition operation.
-   \_<sub>pow</sub>: the exponentiation (^) operation. Behavior similar to the addition operation.
-   \_<sub>unm</sub>: the negation (unary -) operation. Behavior similar to the addition operation.
-   \_<sub>idiv</sub>: the floor division (//) operation. Behavior similar to the addition operation.
-   \_<sub>band</sub>: the bitwise AND (&) operation. Behavior similar to the addition operation, except that Lua will try a metamethod if any operand is neither an integer nor a value coercible to an integer (see §3.4.3).
-   \_<sub>bor</sub>: the bitwise OR (|) operation. Behavior similar to the bitwise AND operation.
-   \_<sub>bxor</sub>: the bitwise exclusive OR (binary ~) operation. Behavior similar to the bitwise AND operation.
-   \_<sub>bnot</sub>: the bitwise NOT (unary ~) operation. Behavior similar to the bitwise AND operation.
-   \_<sub>shl</sub>: the bitwise left shift (<<) operation. Behavior similar to the bitwise AND operation.
-   \_<sub>shr</sub>: the bitwise right shift (>>) operation. Behavior similar to the bitwise AND operation.
-   \_<sub>concat</sub>: the concatenation (..) operation. Behavior similar to the addition operation, except that Lua will try a metamethod if any operand is neither a string nor a number (which is always coercible to a string).
-   \_<sub>len</sub>: the length (#) operation. If the object is not a string, Lua will try its metamethod. If there is a metamethod, Lua calls it with the object as argument, and the result of the call (always adjusted to one value) is the result of the operation. If there is no metamethod but the object is a table, then Lua uses the table length operation (see §3.4.7). Otherwise, Lua raises an error.
-   \_<sub>eq</sub>: the equal (==) operation. Behavior similar to the addition operation, except that Lua will try a metamethod only when the values being compared are either both tables or both full userdata and they are not primitively equal. The result of the call is always converted to a boolean.
-   \_<sub>lt</sub>: the less than (<) operation. Behavior similar to the addition operation, except that Lua will try a metamethod only when the values being compared are neither both numbers nor both strings. The result of the call is always converted to a boolean.
-   \_<sub>le</sub>: the less equal (<=) operation. Unlike other operations, the less-equal operation can use two different events. First, Lua looks for the \_<sub>le</sub> metamethod in both operands, like in the less than operation. If it cannot find such a metamethod, then it will try the \_<sub>lt</sub> metamethod, assuming that a <= b is equivalent to not (b < a). As with the other comparison operators, the result is always a boolean. (This use of the \_<sub>lt</sub> event can be removed in future versions; it is also slower than a real \_<sub>le</sub> metamethod.)
-   \_<sub>index</sub>: The indexing access operation table[key]. This event happens when table is not a table or when key is not present in table. The metamethod is looked up in table.
-   \_<sub>newindex</sub>: The indexing assignment table[key] = value. Like the index event, this event happens when table is not a table or when key is not present in table. The metamethod is looked up in table.
-   \_<sub>call</sub>: The call operation func(args). This event happens when Lua tries to call a non-function value (that is, func is not a function). The metamethod is looked up in func. If present, the metamethod is called with func as its first argument, followed by the arguments of the original call (args). All results of the call are the result of the operation. (This is the only metamethod that allows multiple results.)


<a id="org9ebab90"></a>

## OOP

object-oriented programming can be emulated using functions and tables


<a id="org6e734b0"></a>

## ex1

    local Vector = {}
    local VectorMeta = { __index = Vector}
    
    function Vector.new(x, y, z)    -- The constructor
      return setmetatable({x = x, y = y, z = z}, VectorMeta)
    end
    
    function Vector.magnitude(self)     -- Another method
      return math.sqrt(self.x^2 + self.y^2 + self.z^2)
    end
    
    local vec = Vector.new(0, 1, 0) -- Create a vector
    print(vec.magnitude(vec))       -- Call a method (output: 1)
    print(vec.x)                    -- Access a member variable (output: 0)


<a id="org933da38"></a>

## syntax shugar ":"

    -- Meta class
    Rectangle = {area = 0, length = 0, breadth = 0}
    
    -- Derived class method new
    
    function Rectangle:new (o,length,breadth)
       o = o or {}
       setmetatable(o, self)
       self.__index = self
       self.length = length or 0
       self.breadth = breadth or 0
       self.area = length*breadth;
       return o
    end
    
    -- Derived class method printArea
    
    function Rectangle:printArea ()
       print("The area of Rectangle is ",self.area)
    end
    
    r = Rectangle:new(nil,10,20)
    
    print(r.length)


<a id="org4d492b0"></a>

# strings

string concatenation operator by two dots ('..').

The length operator is denoted by the unary prefix operator #.

    a = 'alo\n123"'
    a = "alo\n123\""
    a = '\97lo\10\04923"'
    -- no new line
    a = [[alo
         123"]]
    print(a)
    print('-------')
    a = [==[
         alo
       123"]==]
    print(a)
    print('-------')
    print(#a)


<a id="org4e862fc"></a>

# functions

allow to ommit parenthesis, but it is bad style

    function factorial(n)
      local x = 1
      for i = 2, n do
        x = x * i
      end
      return x
    end
    
    --  print function's behavior is modified:
    
    do
      local oldprint = print
      -- Store current print function as oldprint
      function print(s)
        --[[ Redefine print function. The usual print function can still be used
          through oldprint. The new one has only one argument.]]
        oldprint(s == "foo" and "bar" or s)
      end
    end
    
    -- closures
    
    function addto(x)
      -- Return a new function that adds x to the argument
      return function(y)
        --[=[ When we refer to the variable x, which is outside the current
          scope and whose lifetime would be shorter than that of this anonymous
          function, Lua creates a closure.]=]
        return x + y
      end
    end
    fourplus = addto(4)
    print(fourplus(3))  -- Prints 7
    
    --This can also be achieved by calling the function in the following way:
    print(addto(4)(3))
    --[[ This is because we are calling the returned function from 'addto(4)' with the argument '3' directly.
      This also helps to reduce data cost and up performance if being called iteratively.
    ]]

style:

    -- bad
    local nope = function(name, options)
       -- ...stuff...
    end
    
    -- good
    local function yup(name, options)
       -- ...stuff...
    end


<a id="orgc42a516"></a>

# helloworld

    print("Hello, World!") -- or print 'Hello, World!'


<a id="org87ca516"></a>

# comments

single line: &#x2013;, multiline:

    --[[
    ]]--


<a id="org01d4bee"></a>

# control flow

-   stat ::= **while** exp **do** block **end**
-   stat ::= **repeat** block **until** exp
-   stat ::= if exp then block {elseif exp then block} [else block] end

    break
    ::label::
    goto label


<a id="orgf5d30e8"></a>

## basic

    if condition then
    	--statement body
    elseif condition then
    	--statement body
    else -- optional
    	--optional default statement body
    end
    
    while condition do
      --statements
    end
    
    repeat
      --statements
    until condition
    
    for i = first, last, delta do  --delta may be negative, allowing the for loop to count down or up
      --statements
      --example: print(i)
    end
    
    for key, value in pairs(_G) do
      print(key, value)
    end
    
    local grid = {
      { 11, 12, 13 },
      { 21, 22, 23 },
      { 31, 32, 33 }
    }
    
    for y, row in pairs(grid) do
      for x, value in pairs(row) do
        print(x, y, value)
      end
    end

    as


<a id="orgacf9b3e"></a>

## iterate

    for i,v in ipairs({3,3,2}) do
       print(i,v)
    end

    1	3
    2	3
    3	2


<a id="orga48916b"></a>

# modules

require (modname)

-   searches for the file in a path
-   avoid duplicating the work
    
    well behaved module has necessary provisions to return this table on require.


<a id="org91842c4"></a>

## path - list of patterns ANSI C

-   components in a path are separated by semicolons ";"

?;?.lua;c:\windows\\?;/usr/local/lua/?/?.lua

require"lili" will try to open the following files:

-   lili
-   lili.lua
-   c:\windows\lili
-   /usr/local/lua/lili/lili.lua


<a id="org02b432a"></a>

## 2

    local mymath =  {}
    
    function mymath.add(a,b)
       print(a+b)
    end
    
    return mymath

    mymathmodule = require("mymath")
    mymathmodule.add(10,20)


<a id="orgc3fa236"></a>

## old 5.0,5.1 way

    module("mymath", package.seeall)
    
    function mymath.add(a,b)
       print(a+b)
    end
    
    function mymath.sub(a,b)
       print(a-b)
    end

usage:

    require "mymath.add"
    mymath.add.test2()

alternative

    -- file: finance/BankAccount.lua
    
    local M = {}; M.__index = M
    
    local function construct()
      local self = setmetatable({balance = 0}, M)
      return self
    end
    setmetatable(M, {__call = construct})
    
    function M:add(value) self.balance = self.balance + value end
    
    return M

usage:

    local BankAccount = require "finance.BankAccount"
    local account = BankAccount()


<a id="org0b2219d"></a>

# Standard Libraries


<a id="orga5b44a3"></a>

## basic

-   assert (v [, message])		Calls **error** if **v** is false.
-   collectgarbage ([opt [, arg]])	opt:"collect", "stop", "restart", "count", "step", "setpause", "setstepmul", "isrunning"
-   dofile ([filename])			Opens the named file and executes its contents as a Lua chunk.
-   error (message [, level])		levels = 1 (default) - position where error was called, 2 - function that call error
-   \_G					variable of type table - holds the global environment
-   getmetatable (object)		not have = nil, the object's metatable \_<sub>metatable</sub> field or metatable of the object
-   ipairs (t)				used in:  for i,v in ipairs(t) do  (1,t[1]), (2,t[2]), &#x2026;,
-   load (chunk [, chunkname [, mode [, env]]]) chunk is a string of function that return string.
-   loadfile ([filename [, mode [, env]]])  gets the chunk from file filename
-   next (table [, index])		returns the next index of the table and its associated value.
-   pairs (t)				for k,v in pairs(t) do body end - over all key–value pairs of table t. **next**
-   pcall (f [, arg1, ···])		protected mode - error inside f is not propagated. ret: (true, return) or (false, message)
-   print (···)				any number of arguments, to stdout. **tostring**. for quick way only. use **string.format** and **io.write**.
-   rawequal (v1, v2)			bool, v1 is equal to v2, without invoking the \_<sub>eq</sub> metamethod.
-   rawget (table, index)		table[index], without invoking the \_<sub>index</sub> metamethod. index - any value.
-   rawlen (v)				v - string or table, without invoking the \_<sub>len</sub> metamethod. integer
-   rawset (table, index, value)		table[index], without invoking the \_<sub>newindex</sub>. returns table.
-   select (index, ···)			number - return next elemets &#x2026; after number, '#' - count of &#x2026; elements.
-   setmetatable (table, metatable)
-   tonumber (e [, base])		base - any integer between 2 and 36. return int or nil.
-   tostring (v)				call \_<sub>tostring</sub>.
-   type (v)				return type coded as a string. "nil", "number", "string", "boolean", "table", "function", "thread", and "userdata".
-   \_VERSION				string - the running Lua version.
-   xpcall (f, msgh [, arg1, ···])	This function is similar to pcall, except that it sets a new message handler msgh.

other

-   require (modname)


<a id="org0c74390"></a>

## other

-   coroutine.
-   package.
-   string.
-   utf8.
-   table.
-   math.
-   io.
-   file:
-   os:
-   debug.
-   


<a id="org3a2c8eb"></a>

# debug

assert (v [, message])  - Calls error if the value of its argument v is false


<a id="org2a96993"></a>

# Documenting

-   luadoc 1999-2008 <http://keplerproject.github.io/luadoc/>
-   ldoc <http://stevedonovan.github.io/ldoc/>
    -   LDoc is a LuaDoc-compatible documentation generator which can also process C extension source
-   ExpLua - code comment format and a tool for extracting said comments and exporting HTML, LaTeX, and whatnot

LuaDoc looks for the sequence of three minus signs (&#x2014;). This sequence of characters indicates the beginning
of a documented comment. The documentation ends with the first line of code found.


<a id="org961962a"></a>

## Tags

LuaDoc can parse some tags at each function or table documentation. Tags are indicated in the source code with
 a \`@' character followed by the name of the tag:

-   **@author <text>:** An author of the module or file.
-   **@copyright <text>:** The copyright notice of the module or file. LuaDoc adds a © sign between the label
    (Copyright) and the given text (e.g. 2004-2007 Kepler Project).
-   **@field:** Describe a table field definition.
-   **@param <word> <text>:** Describe function parameters. It requires the name of the parameter and its description.
-   **@release <text>:** Free format string to describe the module or file release.
-   **@return <text>:** Describe a returning value of the function. Since Lua can return multiple values, this tag
    should appear more than once.
-   **@see <text>:** Refers to other descriptions of functions or tables.
-   **@usage <text>:** Describe the usage of the function or variable.


<a id="org1847b75"></a>

## Infered Tags

The following tags would be normally infered by LuaDoc, but they can be used to override the infered value.

-   **@class <word>:** If LuaDoc cannot infer the type of documentation (function, table or module definition),
    the programmer can specify it explicitly.
-   **@description:** The description of the function or table. This is usually infered automatically.
-   **@name <word>:** The name of the function or table definition. This is usually infered from the code
    analysis, and the programmer does not need to define it. If LuaDoc can infer the name of the function
    automatically it's even not recomended to define the name explicitly, to avoid redundancy.


<a id="orgdae85ac"></a>

## LDoc style

    --- summary.
    -- Description; this can extend over
    -- several lines
    
    -----------------
    -- This will also do.
    
    You can also use Lua block comments:
    
    --[[--
     Summary. A description
     ...;
    ]]


<a id="org27cd5ea"></a>

## LDoc tags

1.  @module A Lua module containing functions and tables, which may be inside sections
2.  @classmod Like @module but describing a class
3.  @submodule A file containing definitions that you wish to put into the named master module
4.  @script A Lua program
5.  @author (multiple), copyright, @license, @release only used for project-level tags like @module
6.  @function, @lfunction. Functions inside a module
7.  @param formal arguments of a function (multiple)
8.  @return returned values of a function (multiple)
9.  @raise unhandled error thrown by this function
10. @local explicitly marks a function as not being exported (unless &#x2013;all)
11. @see reference other documented items
12. @usage give an example of a function’s use. (Has a somewhat different meaning when used with @module)
13. @table a Lua table
14. @field a named member of a table
15. @section starting a named section for grouping functions or tables together
16. @type a section which describes a class
17. @within puts the function or table into an implicit section
18. @fixme, @todo and @warning are annotations, which are doc comments that occur inside a function body.


<a id="org7dc6890"></a>

## table - classic way

    --- a useful table of constants
    -- @field alpha first correction
    -- @field beta second correction
    -- @field gamma fudge factor
    -- @table constants


<a id="org5647529"></a>

## Doxygen - Generate documentation from source code

    ---------------------------------
    --! @file
    --! @brief a Doxygen::Lua example
    ---------------------------------
    
    PARAMETER = {
        --! table is supported
        a = 1,
        b = 2, --! end of line comment is also supported
        c = 3,
    }
    
    --! my name
    AUTHOR = 'Alec Chen'
    
    --! my email
    EMAIL = 'alec@cpan.org'
    
    --! @brief The factorial is an example of a recursive function
    --! @param n a positive integer
    --! @return return the product of all positive integers less than or equal to n
    
    function factorial(n)
        x = 10
        y = 20
        if n == 0 then
            return 1
        else
            return n * factorial(n - 1)
        end
    end
    
    --! @brief a simple function declared local
    local function localFunction()
    end
    
    --! a function namespace
    luaCharacter = inheritsFrom( nil, "luaCharacter" )
    
    --! @brief luaCharacter:reset
    function luaCharacter:reset()
    end
    
    --! @brief luaCharacter:destroy
    function luaCharacter:destroy()
    end
    
    --! @brief luaCharacter:entry_point
    function luaCharacter:entry_point()
    end


<a id="org2b79715"></a>

## links

<http://lua-users.org/wiki/DocumentingLuaCode>


<a id="org5696d91"></a>

# Style guide

Python style is a reference.


<a id="orgaa2b583"></a>

## basic

**Formatting**

-   Indentation - Indenting often uses two spaces.

**Naming**

-   lenght - variable names with larger scope should be more descriptive than those with smaller scope.

**variables**

-   lowercase - Variables holding values or objects are typically lowercase and short (e.g. color)
-   Booleans - It can be helpful to prefix Boolean values or functions used as predicates with is, such as
    is<sub>directory</sub> rather than directory (which might store a directory object itself).
-   underscore "\_" is commonly used as a placeholder when you want to ignore the variable
-   i, k, v, t

    for k,v in pairs(t) ... end
    for i,v in ipairs(t) ... end
    mt.__newindex = function(t, k, v) ... end

M is sometimes used as the "current module table"

-   functions - print<sub>table</sub> or getmetatable.
-   constants - ALL<sub>CAPS</sub>, with words optionally separated by underscores.
-   module/package -  nouns with names that are short and lowercase, with nothing between words.
-   Class names - upper CamelCase

**libraries** - Avoid using the debug library unless necessary, especially if trusted code is being run.

Use **local**! Globals have larger scopes and lifetimes and therefore increase [coupling] and complexity

-   limit the scope of local variables with do-blocks

Don't use semicolons **;**. They are generally only useful to separate multiple statements on a single line, but
 you shouldn't be putting multiple statements on a single line anyway.


<a id="orgc460115"></a>

## require


<a id="orga161e28"></a>

## links

-   <http://lua-users.org/wiki/LuaStyleGuide>
-   <https://roblox.github.io/lua-style-guide/>
-   <https://github.com/luarocks/lua-style-guide>


<a id="org0d38ad3"></a>

# The Complete Syntax of Lua

Here is the complete syntax of Lua in extended BNF. As usual in extended BNF, {A} means 0 or more As, and [A]
 means an optional A.

    chunk ::= block
    
    block ::= {stat} [retstat]
    
    stat ::=  ‘;’ |
    	 varlist ‘=’ explist |
    	 functioncall |
    	 label |
    	 break |
    	 goto Name |
    	 do block end |
    	 while exp do block end |
    	 repeat block until exp |
    	 if exp then block {elseif exp then block} [else block] end |
    	 for Name ‘=’ exp ‘,’ exp [‘,’ exp] do block end |
    	 for namelist in explist do block end |
    	 function funcname funcbody |
    	 local function Name funcbody |
    	 local namelist [‘=’ explist]
    
    retstat ::= return [explist] [‘;’]
    
    label ::= ‘::’ Name ‘::’
    
    funcname ::= Name {‘.’ Name} [‘:’ Name]
    
    varlist ::= var {‘,’ var}
    
    var ::=  Name | prefixexp ‘[’ exp ‘]’ | prefixexp ‘.’ Name
    
    namelist ::= Name {‘,’ Name}
    
    explist ::= exp {‘,’ exp}
    
    exp ::=  nil | false | true | Numeral | LiteralString | ‘...’ | functiondef |
    	 prefixexp | tableconstructor | exp binop exp | unop exp
    
    prefixexp ::= var | functioncall | ‘(’ exp ‘)’
    
    functioncall ::=  prefixexp args | prefixexp ‘:’ Name args
    
    args ::=  ‘(’ [explist] ‘)’ | tableconstructor | LiteralString
    
    functiondef ::= function funcbody
    
    funcbody ::= ‘(’ [parlist] ‘)’ block end
    
    parlist ::= namelist [‘,’ ‘...’] | ‘...’
    
    tableconstructor ::= ‘{’ [fieldlist] ‘}’
    
    fieldlist ::= field {fieldsep field} [fieldsep]
    
    field ::= ‘[’ exp ‘]’ ‘=’ exp | Name ‘=’ exp | exp
    
    fieldsep ::= ‘,’ | ‘;’
    
    binop ::=  ‘+’ | ‘-’ | ‘*’ | ‘/’ | ‘//’ | ‘^’ | ‘%’ |
    	 ‘&’ | ‘~’ | ‘|’ | ‘>>’ | ‘<<’ | ‘..’ |
    	 ‘<’ | ‘<=’ | ‘>’ | ‘>=’ | ‘==’ | ‘~=’ |
    	 and | or
    
    unop ::= ‘-’ | not | ‘#’ | ‘~’


<a id="orgab35aa2"></a>

# TODO not errors


<a id="orgb2a6ea5"></a>

## undefined variable

    a=b -- a = nil


<a id="orgde95be9"></a>

## key not present

Indexing into a table in Lua gives you nil if the key isn't present.

    local MyEnum = {
        A = "A",
        B = "B",
        C = "CC",
    }
    
    print(MyEnum.V) -- nil
    
    setmetatable(MyEnum, {
        __index = function(self, key)
            error(string.format("%q is not a valid member of MyEnum",
                tostring(key)), 2)
        end,
    })
    
    print(MyEnum.C) -- CC
    print(MyEnum.V) -- error

    nil
    CC


<a id="org5637444"></a>

# package managers

LuaRocks - MIT - <https://luarocks.org/>


<a id="org7f0588d"></a>

# links

-   books
    -   Lua Reference Manual <https://www.lua.org/manual/5.3>
    -   "Programming in Lua" <http://www.lua.org/pil/>
    -   lua-users wiki <http://lua-users.org/wiki/>
    -   book <http://lua-users.org/wiki/LuaBooks>
    -   **Beginning Lua Programming** - book for sale.
-   module <http://www.keplerproject.org/>
-   module <http://lua-users.org/wiki/LuaForge>

