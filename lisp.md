
# Table of Contents

1.  [common operations](#org679f56a)
    1.  [get list of functions if file:](#orgb011789)
    2.  [print list](#orga393e7f)
2.  [common structures](#org4a9b010)
3.  [Lisp - philosophy, patterns](#org1ace242)
4.  [features](#orgddb77a3)
5.  [compilation](#org8b38f2d)
6.  [symbols, special characters](#org6deadac)
    1.  [Steps for info:](#orgdbdbc4a)
    2.  [meaning with Backquote (\`) macroses](#org596cc64)
7.  [terms](#org236554a)
8.  [advanced terms](#orgde0bd75)
9.  [evaluation process and forms](#org91d1343)
    1.  [Special Forms](#org03d90bd)
10. [dialects](#org34e1775)
    1.  [Common lisp vs Emacs Lisp](#org380a9fe)
11. [types](#org155628e)
    1.  [basic](#orgd1e106e)
    2.  [literals](#org0da8012)
    3.  [lists](#org3397c7a)
        1.  [basic](#orgf89e4cc)
        2.  [Association Lists](#orgf0b77a8)
        3.  [list operators](#org6ce23d8)
    4.  [symbol type](#org839050d)
    5.  [nil and t - special symbols that always evaluate to themselves](#org7576e41)
    6.  [type conversion](#orgf7ebe4b)
    7.  [get type or find type](#orgd09d285)
    8.  [Basic Types Predicate](#org1c418fb)
    9.  [evaluation process](#org6d04d9a)
12. [char](#org45c5d0b)
13. [strings](#org419a3f3)
    1.  [ex](#orged715fb)
14. [comments](#org821bb7a)
    1.  [inside comments](#org34319d2)
    2.  [conventies](#org8c1bd52)
15. [symbols and strings](#orge22c75b)
16. [variables](#org674861e)
    1.  [terms](#orge88d36e)
    2.  [usage](#org158f4e5)
        1.  [global or global binding:](#org3293cb7)
        2.  [reference](#orgec2d99c)
        3.  [local:](#org8e0c866)
    3.  [Dynamic Scoping (Local Variables) and lexical scoping](#orgb9e586a)
    4.  [Generalized Variables](#org1f553a6)
    5.  [ex](#org2d42d0a)
17. [Control structures: sequencing, conditions, Iteration](#org1674c4d)
    1.  [conditions](#org62a280e)
        1.  [test-clause](#orge9f9923)
        2.  [if else](#org55a70d7)
        3.  [comparison](#org3e0d056)
        4.  [nil and empty](#org7a5f8dd)
        5.  [cond](#orgcec253c)
    2.  [case](#org1b5b4d2)
        1.  [cond](#orgfdc532b)
        2.  [cl-case ](#org0924f00)
        3.  [pcase](#org5fe7bda)
    3.  [loops](#org209ccf5)
        1.  [while](#org2ccb442)
        2.  [cl-loop](#org229b92c)
        3.  [dolist](#org70b0414)
        4.  [dotimes](#org98056a4)
        5.  [usecase add-hook group of hooks](#org04e7fc6)
        6.  [links](#org1a71d72)
18. [Functions](#org07a9793)
    1.  [progn](#org8f0e4d9)
    2.  [defun](#orgd08490d)
    3.  [arguments](#org1c443f6)
    4.  [(&rest args) unrolling](#org50b37f6)
    5.  [Function Calling](#org1d57dfe)
    6.  [Named parameters:](#org0ccb395)
    7.  [lambda](#org35a4454)
        1.  [Inline Functions](#orgd6e4b28)
        2.  [Special Form: function function-object](#org10938ad)
    8.  [closure](#org4acdfc2)
    9.  [Interactive Functions](#orgb70bca7)
        1.  [links](#org4bcf339)
        2.  [ex](#orgd75cf75)
    10. [arguments](#org6bf9242)
    11. [Functions with Property List argument](#org31c7046)
    12. [return](#org4402c97)
    13. [by reference or by value?](#orgdcaf202)
    14. [functions that do nothin](#orgbe73fa7)
19. [Structures](#org1b5e5c3)
20. [printing](#org0228147)
21. [Macros](#org185a83b)
    1.  [inline function](#orgd23f005)
22. [regex](#org49cb527)
    1.  [characters:](#org891aece)
    2.  [commands](#org9d6912b)
        1.  [rx](#org2cace6a)
        2.  [search](#org4696cd6)
        3.  [matching](#org95ac56f)
    3.  [special characters](#org7d4ae0e)
    4.  [groups](#org18258ea)
    5.  [links](#orgc8dc855)
23. [paths](#org40a7dd1)
24. [Emacs Code Conventions](#org65661b8)
    1.  [variable name conventions](#orgacde9a1)
    2.  [commands](#org456721c)
    3.  [recommendation](#org7c18ff1)
25. [examples](#org0ee8bbf)
26. [USE CASES](#orgcfbbca9)
    1.  [measure time of execution of any function](#org20f8cbf)
    2.  [working with tabular data](#org7e28a5e)
27. [Emacs Lisp](#org9f46076)
    1.  [help](#org9197126)
    2.  [Keys:](#orgc6b6496)
    3.  [Commands](#orge89043f)
    4.  [ask user input](#org985952e)
    5.  [suppress messages by function and subfunctions](#orgefa47a7)
    6.  [execute shell command](#org2fd6666)
    7.  [defcustom](#orgb4cbe13)
    8.  [map](#orgbe88b59)
    9.  [buffers](#org6b057b9)
    10. [cl-loop](#org51b4197)
    11. [convetions and style guide](#org9171cb4)
    12. [advices-reverence](#orgbc963f7)
    13. [functional programming - stream of data](#orgc409aa6)
    14. [testing](#orgcc9761f)
        1.  [ERT: Emacs Lisp Regression Testing](#orgfc36589)
28. [MELPA](#org01f41b1)
    1.  [lint](#orgb1d7e46)
    2.  [byte-compile](#orgc07e2fc)
29. [errors handling - errors and throws and how to catch them](#org5997345)
    1.  [terms](#org0ad3fdf)
    2.  [error symbols](#org0f5b32b)
    3.  [functions](#org9c9e519)
    4.  [condition case](#orgfb682b8)
    5.  [catch and throw](#org37d3d1a)
    6.  [unwind-protect](#org5baad89)
    7.  [logging construction](#org6fb8901)
    8.  [links](#org85075b4)
30. [Error messages](#org3dc50b6)
    1.  [wrong-type-argument](#org0573dae)
    2.  [Lisp error: (invalid-function](#orge91a0b8)
    3.  [nil in debugger, Why nil if it is not nil?](#org7b2fed7)
31. [Emacs API](#orgcb06c78)
    1.  [terms](#org112c6b2)
    2.  [Pointer](#orgcc1072b)
    3.  [Marker](#org1c50364)
    4.  [Buffers](#org280cac6)
        1.  [create temp copy](#org2d71dd4)
        2.  [get value from buffer](#org34eee29)
        3.  [links](#org8768ac0)
    5.  [Windows](#org3f2a7ef)
        1.  [side windows](#orge53b3c2)
    6.  [Frames](#orgfc80eae)
    7.  [temporary files](#org8c8c1af)
        1.  [ex](#orgc4481f7)
        2.  [links](#orgb3371e8)
    8.  [lines](#org9f38087)
    9.  [cleanup - temporary buffer](#orgf01b02a)
    10. [highlight character at point](#orgee9bf00)
    11. [modes](#orge1a0fe5)
    12. [Call external asynchronous](#orga59f0e2)
        1.  [async-shell-command](#org95ba4f8)
        2.  [call-process-shell-command](#org3c66f84)
        3.  [https://github.com/tkf/python-epc](#org705acbc)
        4.  [https://www.gnu.org/software/emacs/manual/html\_node/elisp/JSONRPC.html](#org456f988)
    13. [Timer](#org14c84e1)
    14. [autoload](#org5b92c97)
    15. [links](#org4adc82e)
32. [Libraries - popular](#org44ff68d)
    1.  [build in](#org0a27a95)
33. [links](#org00eb691)

;-**- mode: Org; fill-column: 110;-**-


<a id="org679f56a"></a>

# common operations


<a id="orgb011789"></a>

## get list of functions if file:

M-x occur RET defun RET

-   M-s o


<a id="orga393e7f"></a>

## print list

    (mapc 'print calendar-holidays)


<a id="org4a9b010"></a>

# common structures

add "s" to every element of list "left-let":

    (setq fin (mapcar (lambda (x) (cons s x)) left-let))

flatten list by one level

    (apply 'append v)

all or every

    (defun all (l) (cl-every #'identity l))

all or every nil

    (defun allnil (l) (cl-every #'null l))

any t

    (defun any (l) (cl-some #'identity l))

any nil

    (defun anynil (l) (cl-some #'null l))

Apply map to every leaf of a tree like list

    (defun maptree (f l)
    "Apply map to every leaf of a list."
      (mapcar (lambda (x) (if (listp x)
                              (maptree f x)
                            ;; else
                            (funcall f x)
                            )) l))

Concatenate two lists

    (setq c1 '(1 (2) 3 4))
    (setq c2 '(1 2 3 (4)))
    (print (seq-concatenate 'list c1 c2))
    
    (defun add_one_to_another(c1 c2)
      (apply 'append (list c1 c2)))

    
    (1 (2) 3 4 1 2 3 (4))


<a id="org1ace242"></a>

# Lisp - philosophy, patterns

everything is list, space is items separrator

<https://aartaka.me/lisp-design-patterns>


<a id="orgddb77a3"></a>

# features

<https://www.tutorialspoint.com/lisp/index.htm>
<https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html>

"Lots of Isolated Silly Parentheses"
1958 by John McCarthy

-   dynamic and strong typing, functional, reflective, meta
-   advanced object-oriented programming
-   prefix notation - operators are written before their operands

-   machine-independent, such as word length etc.
-   iterative design methodology, (easy extensibility ?)
-   allow updating the program dynamically
-   high level debugging
-   advanced object-oriented programming
-   convenient macro system?
-   expression-based ?
-   object-oriented condition system ?


<a id="org8b38f2d"></a>

# compilation

batch-byte-compile:

    emacs --quick -batch \
             -l pinyin-isearch-loaders.el \
             -l pinyin-isearch-pinyin.el \
             -l pinyin-isearch-chars.el \
             -l pinyin-isearch.el \
             --eval "(setq byte-compile-error-on-warn ${ERROR_ON_WARN})" \
             -f batch-byte-compile \
             pinyin-isearch.el pinyin-isearch-loaders.el pinyin-isearch-chars.el pinyin-isearch-pinyin.el

To prevent compilation of file:

    ;; Local Variables:
    ;; no-byte-compile: t
    ;; End:
    ;;; test.el ends here


<a id="org6deadac"></a>

# symbols, special characters

(') is equal to (list) operator

"#"

    (eq 'my-add #'my-add) -> t

can be used in front of a lambda expression indicating to the byte-compiler that the following expression can be byte compiled

used in the printed representation along with the left angle bracket (<) to indicate that the object printed is a description

":" A symbol whose name starts with a colon (‘:’) is called a “keyword symbol”. act as constants, and are
 normally used only by comparing an unknown symbol with a few specific alternatives [17.2.2](#orgcf520dc)

    (print (list 1 2))
    (print #'(1 2))

    
    (1 2)
    
    (1 2)


<a id="orgdbdbc4a"></a>

## Steps for info:

-   F1 i or M-x info RET (open the info browser)
-   d m elisp RET (open the elisp manual)
-   I # RET (list the entries for # in the index)


<a id="org596cc64"></a>

## meaning with Backquote (\`) macroses

**Backquote (\`) and comma (,)**

-   (\`) character signals that in the expression that follows, every subexpression not preceded by a comma is
    to be quoted, and every subexpression preceded by a comma is to be evaluated.
-   (\`) and (,) used instead of (') to make exception in quoting and for better looking
-   (\`) and (,) used in macro definition for the same reason

    (setq v1 2)
    (setq e 2)
    (setq v2 2)
    (print `(progn (setq v1 ,@e) (setq ,v2 ,e)))
    ;;     ^ backquote,     ^          ^   ^ commas
    
    (print '(progn (setq v1 e) `(setq ,v2 ,e)))

    
    (progn (setq v1 . 2) (setq 2 2))
    
    (progn (setq v1 e) `(setq ,v2 ,e))

    ;; (')
        (defmacro my-macro-1 (arg1 arg2)
          (list 'setq arg1 (list 'cons arg2 arg1)))
    ;; (`) and (,)
        (defmacro my-macro-2 (arg1 arg2)
          `(setq ,arg1 ,`(cons ,arg2 ,arg1)))

**Comma-splice (\`)(,@)**

-   This is particularly useful when writing macros with an &rest specifier.

    (setq v  '("oh boy"))
    (print `(zap ,@v ,v))

    
    (zap "oh boy" ("oh boy"))

    ;;(`) (,)
        (let ((list '(a b c d)))
          `(elt1 ,list elt2))
            => (elt1 (a b c d) elt2)
    ;;(`) (,@)
        (let ((list '(a b c d)))
          `(elt1 ,@list elt2))
            => (elt1 a b c d elt2)

**Quote-comma (\`)(',)** - insert sexp as a string without evaluation

    (defmacro explain-exp (exp)
      `(format "%s = %s" ',exp ,exp))
      ;;                 ^^
    
    (print (explain-exp (+ 2 3)))

    
    "(+ 2 3) = 5"


<a id="org236554a"></a>

# terms

must know:

-   whitespace and () - separators;
-   () = nil = atom and list
-   expressions = prefix notation = (+ 1 2)
-   special operators = (+, (list, (if. (lambda
-   anonymous function (lambda (arg) (+ arg 1) )
-   function (defun foo "optional comment" (a b c) (+ a b c))
-   function are case-insensitive
-   constants = Numbers, letter t, nil
-   true = t, false = nil
-   certain kinds of atom(arrays) can be separated into parts but not like lists,l
-   function names that end with a "p" often means it return true=t of false=nil = predicate
    
    terms:
-   **Numbers:** are provided in various forms and representations
-   **Characters:** represent printed glyphs such as letters or text formatting operations
-   **atom:** elemental entities, **number** **symbols** and **strings** (list 2 3), nil, (ab-a#221), ("asd asd")
-   **symbols:** are named data objects: + foo forward-line - atom type
-   **list:** sequence of atoms or lists in (), nil; unlist and unquote: (apply 'function '(12 23))
-   **string:** "asd" - arrays of characters
-   **comment:** ;
-   **form:** any object meant to be evaluated (+ 3 4 1)
-   **symbolic expression:** printed representation of both atoms and lists
-   **quote:** '(+3 4 1) list without evaluation
-   **function:** first symbol in list (call)
-   **variable:** 

-   **special form:** 

-   **macros:** translate lisp expression into another lisp expression
-   **Hash tables:** Arithmetic
    -   +-\*/%
    -   (/ 7 2) ;3
    -   (/7 2.0) ; 3.5
    -   (expt 2 3) ; 2<sup>3</sup>=8


<a id="orgde0bd75"></a>

# advanced terms

forms - a data object meant to be evaluated as a program to produce one or more values (which are also data
 objects). One may request evaluation of any data object, but only certain ones are meaningful.

-   symbols and lists are meaningful forms:
    -   3, whose value is 3
    -   (+ 3 4), whose value is 7
-   **Meaningful forms** may be divided into three categories:
    -   self-evaluating forms, such as numbers
    -   symbols, which stand for variables
    -   lists, may be divided into:
        -   special forms
        -   macro calls
        -   function calls.


<a id="org91d1343"></a>

# evaluation process and forms

-   file to s-expressions
-   defines syntax of List **forms** that a built from s-expressions
-   determines which s-expressions are LISP forms.
-   Eval - Returns the result of evaluating an AutoLisp expression.
    -   Syntax : (eval expr)
-   when you evaluate a function call form such as (car x), Emacs first evaluates the argument (the subform
    x). After evaluating the argument, Emacs executes the function (car)
-   Two tupes:
    -   Self-Evaluating Forms '123   ⇒ 123, 123 ⇒ 123, (eval '123) => 123
    -   Symbol Forms (setq a 123) (eval 'a) => 123, a => 123

LISP form could be:

-   An atom
-   An empty or non-list
-   Any list that has a symbol as its first element

**Special Forms** - is a primitive function specially marked so that its arguments are not all evaluated

-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Special-Forms.html>


<a id="org03d90bd"></a>

## Special Forms

and

    see Combining Conditions
catch

    see Catch and Throw
cond

    see Conditionals
condition-case

    see Handling Errors
defconst

    see Defining Variables
defvar

    see Defining Variables
function

    see Anonymous Functions
if

    see Conditionals
interactive

    see Interactive Call
lambda

    see Lambda Expressions
let
let\*

    see Local Variables [2](#org6cdbe9b)
or

    see Combining Conditions
prog1
prog2
progn

    see Sequencing
quote

    see Quoting
save-current-buffer

    see Current Buffer
save-excursion

    see Excursions
save-restriction

    see Narrowing
setq

    see Setting Variables
setq-default

    see Creating Buffer-Local
unwind-protect

    see Nonlocal Exits
while

see Iteration


<a id="org34e1775"></a>

# dialects

<https://en.wikipedia.org/wiki/Emacs_Lisp>

-   Emacs Lisp or Elisp
-   Common Lisp - for javaVM too
-   Scheme - simple semantics and few different ways to form expressions. more minimalist design
-   Clojure is a recent dialect . mainly the Java virtual machine


<a id="org380a9fe"></a>

## TODO Common lisp vs Emacs Lisp

<https://www.gnu.org/software/emacs/manual/html_node/cl/Porting-Common-Lisp.html>

-   Case-insensitivity for symbols
    -   Common LISP expressions are case-insensitive - cos 45 or COS 45 are same
    -   Emacs lisp - case-sensitive
-   


<a id="org155628e"></a>

# types


<a id="orgd1e106e"></a>

## basic

everything atom or list

object - instance of type, object is a piece of data used and manipulated by Lisp programs

Linked lists -  one of Lisp's major data structures

s-expression or sexp - for code and data structure : (x y z) stands for (x . (y . (z . NIL)))

Constants:

-   Numbers
-   The letter t, that stands for logical true.
-   The value nil, that stands for logical false, as well as an empty list.

atom - is a number or symbol or string in double quotation marks.

symbol - string of contiguous character - can consist of any number of alphanumeric characters other
than whitespace, open and closing parentheses, double and single quotes, backslash, comma, colon,
semicolon and vertical bar. To use these characters in a name, you need to use escape character (\\).

-   hello-from-tutorials-point
-   123008907
-   **hello**
-   Block#221
-   abc123
-   +1
-   FOO                 ; A symbol named ‘FOO’, different from ‘foo’  for Emacs Lisp

A string is a group of characters enclosed in double quotation marks. "Hello world!"

primitive types:

-   integer
-   float
-   cons
-   symbol
-   string
-   vector
-   hash-table
-   subr
-   byte-code function
-   record
-   plus several special types, such as buffer, that are related to editing

single inheritance?

each object belongs to one and only one primitive type

single quote: (write '(\* 2 3)) - atoms or lists literally and don't want them evaluated or treated as function calls.

-   Quoting - '123, (quote (+ 1 2))
-   Self-Evaluating Forms - evaluate to themselves '123 => 123 (eval '123) => 123

types of types:

-   Lisp programming types
-   editing - unique to Emacs Lisp


<a id="org0da8012"></a>

## literals

    (print 1e3)
    (print 'this-a-symbol)
    (print 'vector->list)
    (print 'symbol?)
    
    ;; Pair / Cons Cell
    (print '(a . b))
    (print'(a . 2999))
    
    (print "list")
    (print'(+ 2 3 (3 4) (5 6 (+ 3 4)) 10 'a 'b "hello" ))
    
    (print "vectors")
    (print [1 2 3 4 (+ 1 2 3 54)])


<a id="org3397c7a"></a>

## lists

sequence

-   list - not a single primitive object; it is made of cons cells, one cell per element
-   array: vector, string, char-table, bool-vector - fixed-length object with a slot for each of its elements.


<a id="orgf89e4cc"></a>

### basic

**list** is a Linked lists is a sequence of atoms and/or other lists enclosed in parentheses.

-   Lists in Lisp are not a primitive data type they are built up from "cons cells"
-   "cons cells" - ordered pair - (CAR CDR)
-   each cell refers to the next one: CARs of the cons cells hold the elements of the list, and the CDRs are
    used to chain the list
-   CDR of the last cons cell in a list is ‘nil’

    (setq bouquet '(rose violet buttercup))

    bouquet
     |
     |    --------------       ---------------       ----------------
     |   | car   | cdr  |     | car    | cdr  |     | car     | cdr  |
      -->| rose  |   o------->| violet |   o------->| butter- |  nil |
         |       |      |     |        |      |     | cup     |      |
          --------------       ---------------       ----------------


<a id="orgf0b77a8"></a>

### Association Lists

(alist-get key alist &optional default remove testfn)

1.  clist

    values and the keys - may be any Lisp objects
    
        ;; Lists
        (print '(10 203 40 "hello" () ("empty" 65)))
        
        ;; alist
        (print '((a . b) (x . y) (2 . 3) (4 . (1 2 3 4 5))))
        
        (print (cons 'a 'b))
        
        (print (cons 'a (cons 'b (cons 'c nil))))
    
        (setq
         vv
         (list
          (cons "aa" 23)
          (cons "bb" 24)
          (cons "cc" 33)))
        (print vv)
        (print (alist-get "aa" vv 999 nil 'string-equal))
        
        ;; get the value with key "bb". if not found, return 999. use string-equal for comparison
        ;; (print (alist-get "bb" xx 999 nil 'string-equal))
    
        
        (("aa" . 23) ("bb" . 24) ("cc" . 33))
        
        23
    
        (let (clist)
          (setq clist
                  (append (list (cons "sd" "asd"))
                          clist))
          (print clist)
            )
    
        
        (("sd" . "asd"))

2.  alist - Association Lists

        (print '((a  b) (x  y) (2  3) (4  (1 2 3 4 5))))
        (print (list (list 'a 'b) (list 'x 'y) (list 2 3) (list 2 '(1 2 3 4 5))))

3.  plist - Property Lists

    requires less parenthesis and it is more human readable
    
    two types:
    
    -   Text Properties.
    -   Symbol Properties.
    
    1.  plist examples
    
            (setq myvar '(:key1 value1 :key2 value2 :key3 1002.23 :key4 (a b c d e)))
            (print (cl-loop for key in myvar by 'cddr
                           collecting key))
        
            (print '(:key1 value1 :key2 value2 :key3 1002.23 :key4 (a b c d e)))
            (print '(
            :key1  value1
            :key2  value2
            :key3  value3
            :key4  (a b c d e )
            ))
    
    2.  functions
    
        -   (plist-get plist property)
        -   (plist-member plist property ) ; check
        -   (plist-put plist property value)
        -   get list of keys: (print (cl-loop for key in myvar by 'cddr collecting key))
    
    3.  Symbol Properties
    
        -   **get symbol property:** get property from symbol. \`eq' used, so any object is a legitimate property.
        -   **put symbol property value:** .
        -   **symbol-plist symbol:** .
    
    4.  text properties

4.  examples plist, assoc, mapcar

        (setq dict '((pine . cones)
                     (oak . acorns)
                     (maple . seeds)))
        
        (print dict)
        ;; Get a cell associated with a key
        (print (assoc 'oak dict))
        (print (assoc 'wrong dict))
        
        (print (list
               (car (assoc 'oak dict))
               (cdr (assoc 'oak dict))
               ))
        (print (car (assoc 'oak dict)))
        ;; Get all keys
        (print (mapcar #'car dict))
        ;; Get all values
        (print (mapcar #'cdr dict))


<a id="org6ce23d8"></a>

### list operators

-   cons		construct
-   car		return first element of list
-   cdr		return all elements of list except of first
-   list		wrap to list ()
-   length/seq-length - get length
-   nthcdr n	without first n elements
-   nth n	get n element, starting from 0
-   last		last element of list
-   reverse seq
-   append, nconc add elements to list
-   member, memq - check if there is memeber with equal or eq - like “in” in Python
-   push		add element existing list
-   (setf (alist-get <key> <alist>) <value>)- replace element of list
-   copy-sequence/tree - make copy
-   reverse/nreverse - non destructive and destructive
-   seq-elt	get element at index 0 - (len-1)
-   seq-drop	[n:]
-   seq-take	[:n]
-   seq-filter PRED SEQUENCE) Return a list of all the elements in SEQUENCE for which PRED returns non-nil.
-   (add-to-ordered-list LIST-VAR ELEMENT 3) ; Add ELEMENT to the value of LIST-VAR if it isn’t there yet in position.

1.  init, append

        (defvar cc nil)
        (setq cc (cons "asd2" cc))
        (print cc)
    
        
        ("asd2" "asd")

2.  indexing

    -   (assoc KEY ALIST &optional TESTFN) - value is actually the first element of ALIST whose car equals KEY
    -   (assoc-string KEY LIST &optional CASE-FOLD) - for strings
    
        (defconst sisheng-vowel-table
          '(("ā" "a" "ā" "á" "ǎ" "à")
            ("ē" "e" "ē" "é" "ě" "è")
            ("ī" "i" "ī" "í" "ǐ" "ì")
            ("ō" "o" "ō" "ó" "ǒ" "ò")
            ("ū" "u" "ū" "ú" "ǔ" "ù")
            ("ǖ" "v" "ǖ" "ǘ" "ǚ" "ǜ")
            ("üē" "ve" "üē" "üé" "üě" "üè")))
        
        (print (assoc-string "üē" sisheng-vowel-table))
    
        
        ("üē" "ve" "üē" "üé" "üě" "üè")

3.  cons, car, cdr

        ;; (print (cons 'pine '(fir oak maple)))
        (print (list
         (cons 'pine '(fir oak maple))
         (car '(rose violet daisy buttercup))
         (cdr '(rose violet daisy buttercup))
         ))
    
        
        ((pine fir oak maple) rose (violet daisy buttercup))

4.  nthcdr, nth, setcar, setcdr

        (list
         (nthcdr 2 '(rose fir oak maple))
         (nth 2 '(rose fir oak maple))
         (nth 1 '(rose fir oak maple))
         )
    
    setcar
    
        (setq animals (list 'antelope 'giraffe 'lion 'tiger))
        (print animals)
        (print (setcar animals 'hippopotamus) )
        (print animals)
    
    setcdr
    
        (setq animals (list 'antelope 'giraffe 'lion 'tiger))
        (print animals)
        (print (setcdr animals 'hippopotamus) )
        (print animals)

5.  length, nth, cl-position, car, cdr, cons, reverse, append, remove-if-not, null, delq, push, pop

        (print (length '(1 2 3 4 5 6)))
        ;; nth element of a list
        (print (list
        (nth 0 '(0 1 2 3 4 5))
        (nth 5 '(0 1 2 3 4 5))
        (nth 10 '(0 1 2 3 4 5))
        ))
        
        ;; Position of list element (emacs 24.4 or later)
        (print (cl-position 7 '(5 6 7 8)))
        
        ;; cdr - Removes first element of the list, returns the list tail.
        (print  (cdr '(1 2 3 4 5)))
        ;; car - Returns the first list element
        (print (car '(1 2 3 4 5)))
        ;; cons -  List constructor
        
        (print (cons 10 '(1 2 3 4)))
        
        ;; reverse
        (print (reverse '(1 2 3 4 5)))
        
        ;; append
        (print (append '(1 "s") '( "a" "b" "c" "d")))
        
        ;; (print (remove-if-not (lambda (x) (> x 2))     '(1 2 3 4 5 6 7 8 9 10)))
    
        (print (list
                (null '(1 2 3 4 5))
                (null '())
                (null nil)))
        
        ;; Drop the firsts n elements of a list
        (print (nthcdr 2 '(1 2 3 4)))
        
        ;; Delete an element of a list
        (print (delq 1 '(1 2 3 4)))
        (print (delq '(5) '(1 2 (5) 3 4)))
        (print (delete '(5) '(1 2 (5) 3 4)))
        
        ;; Convert Vector to List
        (print (number-sequence 0 10 2))
    
        ;; Modify list variables.
        (setq alist '(a b c d e))
        (print (push 'f alist))
        (print (pop alist))
        (print alist)
        (print "asd")
    
        
        (f a b c d e)
        
        f
        
        (a b c d e)
        
        "asd"

6.  nconc

7.  map

    -   (mapcar function sequence)
    -   (seq-some PRED SEQUENCE) - nil or first non-nil value returned by PRED.
    
        (print (mapcar #'1+ [1 2 3]))
    
        
        (2 3 4)
    
        (setq properties '((a . 1)
                        (b . 2)
                        (c . 3)))
        ;; (print properties)
        (seq-some (lambda (property) (print property)) properties)
        (seq-some (lambda (property)
                    (print (car property))
                    (let
                          (print (car property)) )) ;; predicate for every property
                         properties)
    
        
        (a . 1)
        
        a
        
        b
        
        c
    
    <https://www.gnu.org/software/emacs/manual/html_node/elisp/Mapping-Functions.html>

8.  USECASE: remove elemets of one list from another

        (defvar a '(2 3 45  4))
        (defvar b '(3 45 6))
        (mapc (lambda (x) (delq x a)) b )
        (print a)
    
        
        (2 4)

9.  USECASE: find difference between lists

        (defvar a '(2 3 45  4))
        (defvar b '(3 45 6))
        (setq a2 (copy-tree a))
        (seq-filter
        (print a)
    
        
        (2 4)

10. USECASE: get keys(), get values()

        (mapcar 'car '((key1 . value1) (key2 . value2) ...))
        (mapcar 'cdr '((key1 . value1) (key2 . value2) ...))

11. s

        (defun my-test (a b)
          (equal (car a) b))
        ;; (print (my-test '(a 3 4) )
        
        (defun find-position (i elt seq)
          (seq-position seq elt (lambda (a b) (equal (nth i a) b))))
        
        (defun find-next (i elt seq)
            (nth (1+ (find-position i elt seq)) seq))
        
        ;; (defun find-next (elt seq)
        ;;   (seq-position seq elt (lambda (a b) (equal (car a) b))))
        ;; (print (find-position 0 'a '((a 3 4) (b 4 2) (c 5 6))))  ; Returns1
        (print (find-next 0 'b '((a 3 4) (b 4 2) (c 5 6))))  ; Returns1
    
        
        (c 5 6)


<a id="org839050d"></a>

## symbol type

is literal (not evaluated).

-   (symbolp sym) - Test if variable sym is a symbol
-   (symbol-name 'sym) - ;; Get symbol as string

Get value from a symbol

-   (symbol-value 'sym)
-   (symbol-function 'sym)
-   (symbol-plist 'sym)

Test if function is an elisp primitive

    (subrp (symbol-function 'goto-char))

    ; Convert a symbol to string
    (print (symbol-name 'wombat))
    ; Convert a String to Symbol
    (print (intern "wombat"))


<a id="org7576e41"></a>

## nil and t - special symbols that always evaluate to themselves

-   symbol nil has three separate meanings:
    -   it is a symbol with the name ‘nil’;
    -   it is the logical truth value false;
    -   it is the empty list—the list of zero elements.
-   When used as a variable, nil always has the value nil.
-   we write () when we wish to emphasize that it means the empty list, and we write nil when we wish to
    emphasize that it means the truth value false.
    -   (cons 'foo ())                ; Emphasize the empty list
    -   (setq foo-flag nil)           ; Emphasize the truth value false
-   non-nil value is considered to be true
-   **t** is the preferred way to represent the truth value true
-   The symbol t always has the value t.

;;; Everything that is not "nil" is true:


<a id="orgf7ebe4b"></a>

## type conversion

    (list
     (cl-coerce '(a b c) 'vector)
     (cl-coerce 7.2 'float)
     (cl-coerce "a" 'character)
     (format "%s" 33.2222)
    )
    
    ; Number <-> String
    (print (number-to-string 1000))
    (print (string-to-number "200"))
    
    ; Symbol <-> String
    (print (symbol-name 'my-symbol))
    (print (symbol-name :my-symbol))
    ; String to Symbol
    (print (intern "some-symbol"))


<a id="orgd09d285"></a>

## get type or find type

    (print (list
     (type-of "a")
     (type-of 7.2)
     (type-of 'type-of)
    ))
    
    (print (equal 'buffer (type-of (current-buffer))))


<a id="org1c418fb"></a>

## Basic Types Predicate

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Type</th>
<th scope="col" class="org-left">Predicate</th>
<th scope="col" class="org-left">Literal</th>
<th scope="col" class="org-left">Description</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Nil</td>
<td class="org-left">null</td>
<td class="org-left">nil '()</td>
<td class="org-left">Test if argument is nil</td>
</tr>


<tr>
<td class="org-left">Number</td>
<td class="org-left">numberp</td>
<td class="org-left">100, 200e3</td>
<td class="org-left">Test if it is number.</td>
</tr>


<tr>
<td class="org-left">String</td>
<td class="org-left">stringp</td>
<td class="org-left">"hello"</td>
<td class="org-left">Test if it is string</td>
</tr>


<tr>
<td class="org-left">Symbol</td>
<td class="org-left">symbolp</td>
<td class="org-left">'sym :keyworkd</td>
<td class="org-left">Test if it is a symbol.</td>
</tr>


<tr>
<td class="org-left">Atom</td>
<td class="org-left">atom</td>
<td class="org-left">'x "h" :key 200</td>
<td class="org-left">Everything that is not a list or pair is an atom.</td>
</tr>


<tr>
<td class="org-left">List</td>
<td class="org-left">listp</td>
<td class="org-left">'(1 2 x y)</td>
<td class="org-left">Test if it is a list</td>
</tr>


<tr>
<td class="org-left">Pair</td>
<td class="org-left">consp</td>
<td class="org-left">'( a . 200)</td>
<td class="org-left">Test if it is a pair (cons cell)</td>
</tr>


<tr>
<td class="org-left">Vector</td>
<td class="org-left">vectorp</td>
<td class="org-left">[1 200 'sym]</td>
<td class="org-left">Test if it is a vector</td>
</tr>
</tbody>
</table>

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Object</th>
<th scope="col" class="org-left">Predicate</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Buffer</td>
<td class="org-left">bufferp</td>
</tr>


<tr>
<td class="org-left">Window</td>
<td class="org-left">windowp</td>
</tr>


<tr>
<td class="org-left">Frame</td>
<td class="org-left">framep</td>
</tr>


<tr>
<td class="org-left">Process</td>
<td class="org-left">processp</td>
</tr>
</tbody>
</table>

    (print (atom 10))
    (print (null nil))


<a id="org6d04d9a"></a>

## evaluation process

As said in <https://stackoverflow.com/questions/48363798/how-are-arguments-passed-into-functions-in-elisp>
 Passed by assignment, new variables created just like assignment works. Symbol of variable is evaluated first
 and then assignment to new symbol. (We do

<https://www.gnu.org/software/emacs/manual/html_node/elisp/Mutability.html>

Mutability defines ability of functions to have side effect to argument.

If there is exist a function in Emacs Lisp that may modify type of argument then this argument may be
 considered as may be affected by side effect.


<a id="org45c5d0b"></a>

# char

no way to distinguish integer from char.

-   get char at postion in string: (aref "foo" 0)
-   int/char to string: (char-to-string CHAR)

    (equal 97 ?a ) ;; t
    (equal 97 (string-to-char "a")) ;; t

    (let (az)
      (dolist (h (number-sequence 97 122)) (setq az (cons (char-to-string h) az)) )
      (print az)
      )

    
    ("z" "y" "x" "w" "v" "u" "t" "s" "r" "q" "p" "o" "n" "m" "l" "k" "j" "i" "h" "g" "f" "e" "d" "c" "b" "a")

<http://xahlee.info/emacs/emacs/elisp_char_datatype.html>


<a id="org419a3f3"></a>

# strings

-   (format "notify-send &#x2013;expire-time 5000 -i emacs '%s'" msg)
-   (substring "abcdefg" 0 3)     ⇒ "abc"
-   (concat "abc" "-def")     ⇒ "abc-def"
-   (split-string "  two words " &optional SEPARATORS OMIT-NULLS TRIM)   ⇒ ("two" "words")
-   (length "abc");; 3
-   (string-to-number "3")
-   (number-to-string 3)
-   (format "%d" 3)  ;; same as number-to-string but can also do format
-   endswith: (string-suffix-p "ending" a)
-   startswith: (string-prefix-p "beg" a)
-   compare string insensitive: (string-equal-ignore-case "a" "b")
-   replace substring: (defun string-replace (from-string to-string in-string)
-   split string: split-string (string &optional separators omit-nulls trim)
-   combine-and-quote-strings (strings &optional separator)
-   to characters: (split-string "abc" "" t) => ("a" "b" "c")
-   (number-to-string n) ; convert number to string

search, or contains

-   (string-match "ce" "central park") - find first occurance
-   (string-match-p "ce" "central park") - test that contains

libs:

-   subr.el

links

-   <http://xahlee.info/emacs/emacs/elisp_string_functions.html>


<a id="orged715fb"></a>

## ex

    (print (mapconcat 'identity '("aaa" "bbb" "ccc") ","))
    (print (split-string "aaa,bbb,ccc" ","))
    (print (string-match "ce" "central park"))
    (print (make-string 5 ?x))
    ; S-expression from String
    (print (read-from-string
                "(
                   (POINT1  (X  10.2323)  (Y   20.2323))
                   (POINT2  (x  0.2)          (Y 923.23))
                   (POINT3  (x -10.5)       (Y 78,23))
                 )"))
    
    (setq raw "(:x 10 :y 20 :z 30 :w \"hello world\")")
    (print (read raw))
    (print (plist-get (read raw) :x))
    
    ; Serialize a s-expression
    (setq sexp '(:x 10 :y 20 :z 30 :w "hello world"))
    (print (prin1-to-string sexp))

    
    "aaa,bbb,ccc"
    
    ("aaa" "bbb" "ccc")
    
    0
    
    "xxxxx"
    
    (((POINT1 (X 10.2323) (Y 20.2323)) (POINT2 (x 0.2) (Y 923.23)) (POINT3 (x -10.5) (Y 78 (\, 23)))) . 174)
    
    (:x 10 :y 20 :z 30 :w "hello world")
    
    10
    
    "(:x 10 :y 20 :z 30 :w \"hello world\")"


<a id="org821bb7a"></a>

# comments


<a id="org34319d2"></a>

## inside comments

-   (\`) backquoted comment


<a id="org8c1bd52"></a>

## conventies

-   ;; - for full line
-   ; - for after line


<a id="orge22c75b"></a>

# symbols and strings

-   (symbol-name 'some-symbol) -> "some-symbol"
-   (make-symbol "foo") -> 'foo


<a id="org674861e"></a>

# variables


<a id="orge88d36e"></a>

## terms

a **symbol** with a value or a function definition attached to it. variable is a symbol that has a value, not
 function. use of a symbol as a variable is independent of its use as a function name.

**scoping rule** - default **dynamic scoping** - current binding as the innermost local binding, or the global
 binding if there is no local binding.

-   **lexical scoping** - .all Emacs Lisp source files and the **scratch** buffer use lexical scoping. ( can be
    enabled on a per-buffer basis. buffer-local variable ‘lexical-binding’ to a non-nil value. or ;; -**-
    lexical-binding: t -**- in library)

local

-   function arguments
-   **local bindings**

**Generalized Variables** - special places that accept assignment with **setf**. (setf (car a) b)


<a id="org158f4e5"></a>

## usage


<a id="org3293cb7"></a>

### global or global binding:

-   (setq x '(a b)) - evaluate only second, set global,  replaces the variable
-   (setq-default [VAR VALUE]&#x2026;) - If a variable is buffer-local, then setq sets its local value in the current
    buffer. setq-default sets the global default value.
-   (setf PLACE VAL PLACE VAL &#x2026;) - macro
-   (set 'x '(a b)) - both evaluated first ( same effect as setq). Function.
-   **defvar** symbol [value [doc-string]] - global, announces your intention
    -   (defvar bar 23 "The normal weight of a bar.")
    -   for
        -   it informs people that is <span class="underline">intended</span> to be used as a variable
        -   it informs the Lisp system of this, optionally supplying an initial value and a documentation string.
        -   it provides information to programming tools such as ‘etags’, allowing them to find where the variable was defined.
-   **defconst** symbol value [doc-string] - variant for constants, constant is not enforced, may be changed!
    -   (defconst zsh-shell "/usr/bin/zsh")
-   **setq-default** - for buffer, macro: set-default

    (defvar a 3)
    (print a)
    (defvar a 4) ;; second ignored
    (print a)

    
    3
    
    3


<a id="orgec2d99c"></a>

### reference

    (setq a 3)
    (setq v 'a)
    (set v 2) ; v is evaluated first
    (print a)

    
    2


<a id="org8e0c866"></a>

### local:

-   **setq-local** - macro: ? + make-local-variable
-   **let** (bindings…) forms… -  The local bindings set up by let will be in effect only within the body of forms. <a id="org6cdbe9b"></a>
    -   bindigs - set of symbols, the order of <span class="underline">bindings</span> is unspecified.
    -   value-forms - are evaluated in the order they appear and before binding any of the symbols to them.
    -   return: value is the value of the last form in forms.
    -   ex. (let ((x 2)(y 'b)(z 'c)) (print x))
-   let\* - like let, but it binds each variable right after computing its local value, with order.
-   (boundp 'sym) - Test if variable is defined
-   **symbolp** Test if variable sym is a symbol
-   **symbol-value** - returns the value stored in SYMBOL’s value cell.
    -   (symbol-value 'abracadabra)
-   **defvar-local** - buffer-local variable, macro: defvar + make-variable-buffer-local
-   **buffer-local-value** - get buffer-local variable from another buffer
-   setq-default
-   (setq-default left-margin-width 10 right-margin-width 8)

    (defvar ssss (+ 1 1))
    (print ssss)

    
    2


<a id="orgb9e586a"></a>

## Dynamic Scoping (Local Variables) and lexical scoping

-   (makunbound 'x)        ; Void the local binding.

    (print (let ((x 1) (y 10)) (+ (* 4 x) (* 5 y)) ))
    ;; (print x) ;; Symbol's value as variable is void: x
    ;; (print y)

Problem of dynamic scoping, that lexical scoping is fixing:

    (defun getx ()
      x)            ; x is used free in this function.
    
    (let ((x 1))    ; x is lexically bound.
      (getx)) ;; error→ Symbol's value as variable is void: x


<a id="org1f553a6"></a>

## Generalized Variables

setf [place form] &#x2026;

-   **aref:** Return the element of ARRAY at index IDX. ARRAY: vector, a string, a char-table, a bool-vector, a record,

or a byte-code object.

-   **car:** first element of list
-   **caar:** (car (car
-   **cadr:** (car (cdr
-   **cdr:** second and left of list
-   **cdar:** (cdr (car
-   **cddr:** (cdr (cdr
-   **elt:** Return element of SEQUENCE at index N.
-   **get:** Return the value of SYMBOL’s PROPNAME property.
-   **gethash:** Look up KEY in TABLE and return its associated value.
-   **nth:** Return the Nth element of LIST.
-   **nthcdr:** Take cdr N times on LIST, return the result.
-   **symbol-function:** Return SYMBOL’s function definition, or nil if that is void.
-   **symbol-plist:** .
-   **symbol-value:** .


<a id="org2d42d0a"></a>

## ex

z is bound to the old value of y, which is 2, not the new value of y, which is 1.

    (setq y 2)
    (let ((y 1) ;; define y
          (z y)) ;; define z
      (list y z)) ;; evaluate
    (list y z) ;; error z is not defined

    (let (aaa) (setq aaa 2) (list aaa))


<a id="org1674c4d"></a>

# Control structures: sequencing, conditions, Iteration

<https://www.gnu.org/software/emacs/manual/html_node/elisp/Control-Structures.html>


<a id="org62a280e"></a>

## conditions

-   cond (cond   (test1    action1)   (test2    action2) (condition body-forms…) &#x2026; )
    -   (condition body-forms…)
-   when (when (test-clause) (action1) (action2) &#x2026; ) - alternative to if without else and requirement for (progn
-   if (if (test-clause) (then-action1) (else-action2))
-   case (case  (keyform) ((key1)   (action1   action2 &#x2026;) ((key2)   (action1   action2 &#x2026;) ) &#x2026; )
-   (not),
-   (and), If no arg yields nil, return the last arg’s value.
-   (or), (xor)
-   (unless cond - (when nil


<a id="orge9f9923"></a>

### test-clause

-   (null nil/t)
-   Comparison Operations
    -   = 	Checks if the values of the operands are all equal or not, if yes then condition becomes true. 	(= A B) is not true.
    -   /= 	Checks if the values of the operands are all different or not, if values are not equal then condition becomes true. 	(/= A B) is true.
    -   > 	Checks if the values of the operands are monotonically decreasing. 	(> A B) is not true.
    -   < 	Checks if the values of the operands are monotonically increasing. 	(< A B) is true.
    -   >= 	Checks if the value of any left operand is greater than or equal to the value of next right operand, if yes then condition becomes true. 	(>= A B) is not true.
    -   <= 	Checks if the value of any left operand is less than or equal to the value of its right operand, if yes then condition becomes true. 	(<= A B) is true.
    -   max 	It compares two or more arguments and returns the maximum value. 	(max A B) returns 20
    -   min 	It compares two or more arguments and returns the minimum value. 	(min A B) returns 10
-   Logical Operations
    -   and
    -   or
    -   not
-   any: (not (cl-every 'null))
-   all:
-   (cl-every 'booleanp) ; nil or t

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

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
<th scope="col" class="org-left">a</th>
<th scope="col" class="org-left">b</th>
<th scope="col" class="org-left">eq</th>
<th scope="col" class="org-left">eql</th>
<th scope="col" class="org-left">\=</th>
<th scope="col" class="org-left">string=</th>
<th scope="col" class="org-left">equal</th>
<th scope="col" class="org-left">equalp</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">5</td>
<td class="org-left">5</td>
<td class="org-left">t</td>
<td class="org-left">t</td>
<td class="org-left">t</td>
<td class="org-left">error</td>
<td class="org-left">t</td>
<td class="org-left">t</td>
</tr>


<tr>
<td class="org-left">5</td>
<td class="org-left">5.0</td>
<td class="org-left">nil</td>
<td class="org-left">t</td>
<td class="org-left">t</td>
<td class="org-left">error</td>
<td class="org-left">nil</td>
<td class="org-left">t</td>
</tr>


<tr>
<td class="org-left">“a”</td>
<td class="org-left">“a”</td>
<td class="org-left">nil</td>
<td class="org-left">nil</td>
<td class="org-left">error</td>
<td class="org-left">t</td>
<td class="org-left">t</td>
<td class="org-left">t</td>
</tr>


<tr>
<td class="org-left">“a”</td>
<td class="org-left">‘a</td>
<td class="org-left">nil</td>
<td class="org-left">nil</td>
<td class="org-left">error</td>
<td class="org-left">t</td>
<td class="org-left">nil</td>
<td class="org-left">nil</td>
</tr>


<tr>
<td class="org-left">a</td>
<td class="org-left">a</td>
<td class="org-left">t</td>
<td class="org-left">t</td>
<td class="org-left">error</td>
<td class="org-left">error</td>
<td class="org-left">t</td>
<td class="org-left">t</td>
</tr>


<tr>
<td class="org-left">“a”</td>
<td class="org-left">“A”</td>
<td class="org-left">nil</td>
<td class="org-left">nil</td>
<td class="org-left">error</td>
<td class="org-left">nil</td>
<td class="org-left">nil</td>
<td class="org-left">t</td>
</tr>


<tr>
<td class="org-left">(1 2)</td>
<td class="org-left">(1 2)</td>
<td class="org-left">nil</td>
<td class="org-left">nil</td>
<td class="org-left">error</td>
<td class="org-left">error</td>
<td class="org-left">t</td>
<td class="org-left">t</td>
</tr>
</tbody>
</table>


<a id="org55a70d7"></a>

### if else

    (if (> 3 5)
      ;; if case
        (print "< 3 5")
      ;; else case
        (print ">= 3 5")
        (print "else again")
        )
    
    ; else if:
    (if  (> 3 5) ; test-expression1
        (print "> 3 5") ; then-expression1
        (if (= 3 5) ; test-expression2
            (print "== 3 5") ; then-expression2
            (print "/= 3 5") ; else-expression2
          )
        )
    
    ;; ; else if 2:
    (cond ( (= 1 0) ; test-expression1 ; if true - Any remaining clauses are ignored.
           (print "=x 1 0") ; then-expression1
           )
          ((>  3 3) ; test-expression2
           ; then-expression2
           (print "> 3 3")
           )
          (t (print "default") ; else-expression2 or default expression
           )
          )


<a id="org3e0d056"></a>

### comparison

    ;; Compare Numbers
    (setq a 2)
    (print (= 2 (+ a 1)))
    (print (= 2 (+ 1 1)))
    
    ;; Compare Symbols and Numbers
    (print (eq a 2))
    
    ;; Compare Elements of a List
    (print (equal (list 1 2 3 4) (list 1 2 3 4)))
    
    (print "Compare Strings")
    (print (string= "hello" "hello"))

    
    nil
    
    t
    
    t
    
    t
    
    "Compare Strings"
    
    t


<a id="org7a5f8dd"></a>

### nil and empty

nil is equivalent to the boolean value false, there is no need to compare to it explicitly.

empty list is equivalent to nil

invert true to false: (null) or (not)

-   (null '()) =>  T
-   (null nil) =>  T
-   (null t) =>  NIL
-   (null 1) =>  NIL

    (if nil
        (print 'true)
      'very-false)


<a id="orgcec253c"></a>

### cond

    (cond
         (win (select-window win))
         (alive-p (switch-to-buffer last-buffer))
         (t (dired (cdr item))))


<a id="org1b5b4d2"></a>

## case


<a id="orgfdc532b"></a>

### cond

    (setq x "s")
    (cond ((numberp x) (print x))
          ((stringp x) (print "wtf"))
    )

    
    "wtf"


<a id="org0924f00"></a>

### cl-case <a id="orgcf520dc"></a>

    (defun test-cl-case (operation x y)
      (cl-case operation
        (:mul (* x y))
        (:add (+ x y))
        (:sub (- x y))
        (:div (/ x y))
        (otherwise nil)))
    
    (print (test-cl-case :mul 2 10))
    (print (test-cl-case :sub 10 2))
    (print (test-cl-case :add 10 2))
    (print (test-cl-case :div 10 2))


<a id="org5fe7bda"></a>

### pcase

    
    (pcase "string here"
      ;; string
      ((and (pred stringp) msg)
       (message "%s" msg))
    
      ;; symbol
      ('success       (message "Done!"))
      ('would-block   (message "Sorry, can't do it now"))
      ('read-only     (message "The shmliblick is read-only"))
      ('access-denied (message "You do not have the needed rights"))
    
      ;; default
      (code           (message "Unknown return code %S" code)))

    string here


<a id="org209ccf5"></a>

## loops


<a id="org2ccb442"></a>

### while

    (setq num 0)
    (while (< num 4)
      (print (format "Iteration %d." num))
      (setq num (1+ num))
      )


<a id="org229b92c"></a>

### cl-loop

-   require 'cl-lib

    (cl-loop for n from 2 below 9 by 1
          do (print n))

    
    2
    
    3
    
    4
    
    5
    
    6
    
    7
    
    8

Cycle with enumeration:

    (cl-loop for pair in clist
               for i from 1
               when (string-equal (cdr pair) value)
               do (cl-return (nth i clist))
               finally return nil))


<a id="org70b0414"></a>

### dolist

    (dolist (h (number-sequence 4 6))
            (print h)
    )

    
    4
    
    5
    
    6

    (dolist (h '(a b c))
      (print h))

    ;; (dolist (h string("abc"))
    ;;   (print h))
    (print (string-to-char "asd"))


<a id="org98056a4"></a>

### dotimes

    (dotimes (i 3) (print i))

    (do (variable-definition*)
        (end-test-form result-form*)
      statement*)


<a id="org04e7fc6"></a>

### usecase add-hook group of hooks


<a id="org1a71d72"></a>

### links

<https://www.gnu.org/software/emacs/manual/html_node/eintr/Loops-_0026-Recursion.html>


<a id="org07a9793"></a>

# Functions


<a id="org8f0e4d9"></a>

## progn

-   (progn BODY&#x2026;) - Eval BODY forms sequentially and return value of last one.
-   prog1 for instance evaluates all expressions and returns the value of the first
-   prog2 evaluates all expressions and returns the value of the second


<a id="orgd08490d"></a>

## defun

-   defines the symbol name as a function with argument list args
-   Neither name nor args should be quoted.
-   The return value of defun is undefined.
-   Careful! defun redefines even primitive functions such as car without any hesitation or notification.
-   fmakunbound - undefine

(defun function-name (a &optional b &rest c)
  "optional-documentation&#x2026;"
  (interactive argument-passing-info)
  (indent indent-spec) ; declare Form
  body&#x2026;)


<a id="org1c443f6"></a>

## arguments

arguments can have clauses or markers: (required-vars…  [&optional [optional-vars…]]  [&rest rest-var])

-   &optional
-   &rest - list of arguemnts

    (defun a (&optional v)
           (print v)
    )
    (a)

    
    nil

<https://www.gnu.org/software/emacs/manual/html_node/elisp/Argument-List.html>


<a id="org50b37f6"></a>

## (&rest args) unrolling

    (seq-let (managed-major-mode project class contact language-id) (car args) ... )


<a id="org1d57dfe"></a>

## Function Calling

-   funcall (function &rest arguments)
-   apply (function &rest arguments) - last arg as list of args
-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Argument-List.html>
-   funcall-interactively

    (print (funcall 'list '(1 2 3)))
    (print (apply 'list '(1 2 3)))

    
    ((1 2 3))
    
    (1 2 3)

    (defun a (&optional v foo  c d &rest e)
           (interactive)
           (print (list v foo c d e)))
    (a 1 2 3 4 5)
    (defun b (&rest e)
           "function proxy"
           (interactive)
           (if (interactive-p)
               ;; (funcall-interactively 'a e)
               ;; (call-interactively 'a)
               (apply 'funcall-interactively 'a e)
             ;;else
             (apply 'a e))
      ;; (print e)
    )
    (print (vector (list 1 2 3 4) (list 1 2 3 4)))
    (call-interactively 'a)
    (call-interactively 'b)
    (b 1 2 3 4 5)
    (print "----")
    (funcall-interactively 'a 1 2 3 4 5)
    (funcall-interactively 'b 1 2 3 4 5)

    
    (1 2 3 4 (5))
    
    [(1 2 3 4) (1 2 3 4)]
    
    (nil nil nil nil nil)
    
    (nil nil nil nil nil)
    
    (1 2 3 4 (5))
    
    "----"
    
    (1 2 3 4 (5))
    
    (1 2 3 4 (5))

    (defun averagenum (n1 n2 n3 n4)
      (/ ( + n1 n2 n3 n4) 4)
      )
    (averagenum 2 3 4 10 )
    ;; 4
    
    
    (setq f 'list)
    ;;     ⇒ list
    
    (funcall f 'x 'y 'z)
      ;;   ⇒ (x y z)

    
    (defun bar (n) (+ n 2))
    (symbol-function 'bar)
    ;;     ⇒ (lambda (n) (+ n 2))
    
    (fset 'baz 'bar)
      ;;   ⇒ bar
    
    (symbol-function 'baz)
        ;; ⇒ bar


<a id="org0ccb395"></a>

## Named parameters:

To be able to supply arguments by name, we need to

-   declare them with **&key <name>**
-   we set them with **:name <value>**

Default values to key parameters:

-   **&key (<name> <value>)**

    (defun hello (name &key happy)())
    (hello "me" :happy t)
    
    (defun hello (&optional name &key happy)())
    (hello "me" :happy t)


<a id="org35a4454"></a>

## lambda

-   A lambda expression, by itself, has no name; it is an anonymous function.
-   result is a closure object
-   they are more commonly associated with symbols to make named functions
-   A lambda form cannot be evaluated and it must appear only where LISP expects to find a function.

Macro: lambda args [doc] [interactive] body…

(lambda (x) (\* x x))
     ⇒ (lambda (x) (\* x x))


<a id="orgd6e4b28"></a>

### Inline Functions

-   just like an ordinary function, except for one thing: when you byte-compile a call to the function the

function’s definition is expanded into the caller.

-   calls run faster
-   it reduces flexibility; if you change the definition of the function, calls already inlined still use the
    old definition until you recompile them.

defsubst name args [doc] [declare] [interactive] body…


<a id="org10938ad"></a>

### Special Form: function function-object

-   returns function-object without evaluating it
-   it is similar to quote
-   function-object is a valid lambda expression, this has two effects
    -   When the code is byte-compiled, function-object is compiled into a byte-code function object
    -   When lexical binding is enabled, function-object is converted into a closure

All equal:
(lambda (x) (\* x x))
(function (lambda (x) (\* x x)))
\#'(lambda (x) (\* x x))


<a id="org4acdfc2"></a>

## closure

A closure is a function that also carries a record of the lexical environment that existed when the function
 was defined. When it is invoked, any lexical variable references within its definition use the retained
 lexical environment.

Lambda macro or the function special form or the #' syntax (see Anonymous Functions), is automatically
 converted into a closure When lexical binding is enabled.


<a id="orgb70bca7"></a>

## Interactive Functions

-   A Lisp function becomes a command when its body contains, at top level, a form that calls the
    special form \`(interactive&#x2026;)’.
-   This special form does nothing when executed, but its presence in the function definition
    indicates that interactive calling is permitted.
-   Its argument controls the reading of the function arguments in an interactive call.
-   In interactive function all arguments should be after &optional or &rest to be called with (call-interactively

(interactive &optional arg-descriptor &rest modes)

-   arg-descriptor: a string,  sequence of elements separated by newlines
    -   P - raw prefix
    -   p - numeric prefix

(call-interactive mode) - will switch off mode if mode is on.


<a id="org4bcf339"></a>

### links

-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Using-Interactive.html>
-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Interactive-Codes.html>
-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Prefix-Command-Arguments.html>


<a id="orgd75cf75"></a>

### ex

    (defun hello ()
           "Hello World and you can call it via M-x hello."
           (interactive)
           (print "Hello World!"))
    (call-interactively 'hello)

    
    "Hello World!"

    (defun hello (&optional arg arg2)
           (interactive "P\np")
           ;; (print "%s" arg)
           (if  (eq arg2 4)
               (print "asd"))
           (print (list arg arg2 arg3))
    )
    (funcall-interactively 'hello '(1) 2 3)
    (apply 'funcall-interactively 'hello '(nil 2))
    ;; use: C-u M-x hello

    
    ((1) 2 (3))
    
    (nil 2 nil)


<a id="org6bf9242"></a>

## arguments

-   (lambda (a b c) (+ a b c)) - 3 arguments
-   keyword &optional before the optional arguments
-   To specify a list of zero or more extra arguments, include the keyword &rest before one final argument.
-   (a b &optional c d &rest e) - here c and d optional and e is a list


<a id="org31c7046"></a>

## Functions with Property List argument

    (defun make-shell-interface (&rest params)
      "
      Create a shell interface.
    
      Possible parameters:
    
        :name      Name of shell
        :type      ['sh, 'bash, ...]
        :path      Path to program
        :buffer    Name of buffer
    
      "
      (let
           ((name   (plist-get params :name ))
            (type   (plist-get params :type))
            (path   (plist-get params :path))
            (buffer (plist-get params :buffer)))
        (list
         (cons 'name buffer)
         (cons 'type type)
         (cons 'path path)
         (cons 'buffer buffer))))
    
    
    (print (make-shell-interface :name "pylaucher" :path "/usr/bin/python" :type 'sh :buffer "pyshell"))
    ;; ((name . "pyshell")
    ;;  (type . sh)
    ;;  (path . "/usr/bin/python")
    ;;  (buffer . "pyshell"))
    
    (print (make-shell-interface :name "pylaucher" :path "/usr/bin/python" :type 'sh))
    (print (make-shell-interface :name "pylaucher" :path "/usr/bin/python" :type 'bash))
    ;; ((name)
    ;;  (type . bash)
    ;;  (path . "/usr/bin/python")
    ;;  (buffer))
    
    ;; ELISP> (make-shell-interface :name "pylaucher" :path "/usr/bin/python")
    ;; ((name)
    ;;  (type)
    ;;  (path . "/usr/bin/python")
    ;;  (buffer))
    
    ;; ELISP> (make-shell-interface :name "pylaucher" )
    ;; ((name)
    ;;  (type)
    ;;  (path)
    ;;  (buffer))
    
    ;; ELISP> (make-shell-interface  )
    ;; ((name)
    ;;  (type)
    ;;  (path)
    ;;  (buffer))
    
    ;; ELISP> (make-shell-interface :buffer "pyshell"  :path "/usr/bin/python" :type 'sh :name "pylaucher")
    ;; ((name . "pyshell")
    ;;  (type . sh)
    ;;  (path . "/usr/bin/python")
    ;;  (buffer . "pyshell"))


<a id="org4402c97"></a>

## return

(info "(elisp) Nonlocal Exits").

-   Throw
-   block (info "(cl) Blocks and Exits")
-   cl-defun
-   defun\*

    (defun my-func ()
      "Simplistic `catch'/`throw' example."
      (catch 'my-early-return
        (when t
          (throw 'my-early-return "this is the short-circuit result of catch"))
        "this is the fallback result of catch"))


<a id="orgdcaf202"></a>

## by reference or by value?

Passed by assignment, new reference created at argument.

<https://www.gnu.org/software/emacs/manual/html_node/elisp/Mutability.html>

Mutability defines ability of functions to have side effect to argument.

If there is exist a function that may modify object then it may be considered as may be affected by side effect.


<a id="orgbe73fa7"></a>

## functions that do nothin

<https://www.gnu.org/software/emacs/manual/html_node/elisp/Calling-Functions.html>

-   identity argument -> argument
-   ignore &rest arguments -> nil
-   always &rest arguments -> t


<a id="org1b5e5c3"></a>

# Structures

-   **Records** is to allow programmers to create objects with new types that are not built into Emacs.  They are
    used as the underlying representation of cl-defstruct and defclass instances.
-   defclass
-   cl-defstruct
-   **vectors** are there if you need random access and also occupy less space.  general-purpose array whose elements can be any Lisp objects
    -   used as internal structure for: kbd, symbols, byte-compiled function


<a id="org0228147"></a>

# printing

-   print - Print a newline at end.
-   princ - does not add newline at end.  intended to produce output that is readable by people
-   prin1 - does not add newline at end.
-   format
-   message - Print a Format String to the Messages Buffer.
-   insert - Instert string to current buffer, at cursor position.

    (princ '("as" "asd"))
    (print '("as" "asd"))
    (pp '("as" "asd"))

    (setq xbuff (generate-new-buffer "*my output*"))
    
    (print "something" xbuff)
    
    (switch-to-buffer xbuff )


<a id="org185a83b"></a>

# Macros

-   expansion - Lisp expression which will in turn compute the value.

macro cannot be called with *apply*, *mapcar* and so on

(macroexpand - expands form, if it is a macro call. If the result is another macro call, it is expanded in
 turn, until something which is not a macro call results

    (defmacro inc (var)
       (list 'setq var (list '1+ var)))
    (setq x 2)
    (defun z(c)
        (inc c))
    (inc x)
    (z 3)

    
    (defmacro setq2 (v1 v2 e)
      (list 'progn (list 'setq v1 e) (list 'setq v2 e)))
    
    (setq z 1)
    
    (setq2 x y (+ z 3))

    (defmacro setq2 (v1 v2 e)
      (list 'progn (list 'setq v1 e) (list 'setq v2 e)))
    
    (print (macroexpand '(setq2 x y (+ x 2)) ) )

    
    (progn (setq x (+ x 2)) (setq y (+ x 2)))


<a id="orgd23f005"></a>

## inline function

function’s definition is expanded into the caller

    defsubst name args [doc] [declare] [interactive] body…

inline it as a compiler macro - more efficient.

    define-inline name args [doc] [declare] body… ¶

-   (inline-quote expression) -
-   inline-letevals (bindings…) body…  - This provides a convenient way to ensure that the arguments to an inlined function are evaluated exactly once, as well as to create local variables.
-   inline-const-p expression - Return non-nil if the value of expression is already known.
-   inline-const-val expression - Return the value of expression.
-   inline-error format &rest args - Signal an error, formatting args according to format.

    (define-inline myaccessor (obj)
      (inline-letevals (obj)
        (inline-quote (if (foo-p ,obj) (aref (cdr ,obj) 3) (aref ,obj 2)))))
    
    ;; equal to:
    (defsubst myaccessor (obj)
      (if (foo-p obj) (aref (cdr obj) 3) (aref obj 2)))


<a id="org49cb527"></a>

# regex


<a id="org891aece"></a>

## characters:

-   special
-   ordinary

normal escaping \\[, for lisp: "\\\\[", also:"\n", "[ [:space:] ]"


<a id="org9d6912b"></a>

## commands


<a id="org2cace6a"></a>

### rx

-   (rx &#x2026;
-   replace-regexp is for interactive use.
-   In elisp you should use re-search-forward and replace-match to do things

    (print (rx bol
      (zero-or-more blank)
      (one-or-more digit)
      ":"))

    
    "^[[:blank:]]*[[:digit:]]+:"


<a id="org4696cd6"></a>

### search

-   search-forward
-   re-search-forward
-   string-match
-   (looking-at "" ) - after point matches regular, does update the **match data**
-   (looking-back "\n\\\\\*\* ?" 2) - before point matches regular

Every successful **search** sets the **match data**. Match data normally describe the most recent search only.

-   (match-string NUM &optional STRING)
    -   NUM=0 - entire match
    -   NUM>0 - subexpression ‘$…$’ in match
-   replace-match
-   match-data
-   set-match-data
-   string-match-p - do not modify match-data

    (match-string NUM &optional STRING)


<a id="org95ac56f"></a>

### TODO matching


<a id="org7d4ae0e"></a>

## special characters

-   .        any character (but newline)
-   \*        previous character or group, repeated 0 or more time
-   +        previous character or group, repeated 1 or more time
-   ?        previous character or group, repeated 0 or 1 time
-   \*?, +?, and ?? are non-greedy versions of \*, +, and ?
-   ^        start of line
-   $        end of line
-   [&#x2026;]    any character between brackets
-   [^..]    any character not in the brackets
-   [a-z]    any character between a and z
-   \\        prevents interpretation of following special char
-   \\|       or
-   \w       word constituent
-   \b       word boundary
-   \sc      character with c syntax (e.g. \s- for whitespace char)
-   $ $    start/end of group
-   \\&lt; \\&gt;    start/end of word (faulty rendering: backslash + less-than and backslash + greater-than)
-   \\\_< \\\_>  start/end of symbol
-   \\\` \\'    start/end of buffer/string
-   \\1       string matched by the first group
-   \n       string matched by the nth group
-   \\{3\\}    previous character or group, repeated 3 times
-   \\{3,\\}   previous character or group, repeated 3 or more times
-   \\{3,6\\}  previous character or group, repeated 3 to 6 times
-   \\=       match succeeds if it is located at point


<a id="org18258ea"></a>

## groups

C-u C-x = to display the category of the character under the cursor.

-   \ca      ascii character
-   \Ca      non-ascii character (newline included)
-   \cl      latin character
-   \cg      greek character
-   [:digit:]  a digit, same as [0-9]
-   [:alpha:]  a letter (an alphabetic character)
-   [:alnum:]  a letter or a digit (an alphanumeric character)
-   [:upper:]  a letter in uppercase
-   [:lower:]  a letter in lowercase
-   [:graph:]  a visible character
-   [:print:]  a visible character plus the space character
-   [:space:]  a whitespace character, as defined by the syntax table, but typically  [ \t\r\n\v\f ], which includes the newline character
-   [:blank:]  a space or tab character
-   [:xdigit:] an hexadecimal digit
-   [:cntrl:]  a control character
-   [:ascii:]  an ascii character
-   [:nonascii:]  any non ascii character
-   \s-   whitespace character
-   \sw   word constituent
-   \s\_   symbol constituent
-   \s.   punctuation character
-   \s(   open delimiter character
-   \s)   close delimiter character
-   \s"   string quote character
-   \s\\   escape character
-   \s/   character quote character
-   \s$   paired delimiter
-   \s'   expression prefix
-   \s<   comment starter
-   \s>   comment ender
-   \s!   generic comment delimiter
-   \s|   generic string delimiter
-   \W, \B, and \Sc match any character that does not match \w, \b, and \sc.

    ;; (print (string-match-p "^[:print:]+" "fsd"))
    (print (string-match-p "^[[:print:]]$" "f"))
    ;; (print (string-match-p "^a+" "fsd"))

    
    0


<a id="orgc8dc855"></a>

## links

-   <https://www.emacswiki.org/emacs/RegularExpression>
-   <https://www.gnu.org/software/emacs/manual/html_node/emacs/Regexps.html>


<a id="org40a7dd1"></a>

# paths

**default-directory** - buffer-local variable with directory of current buffer file.


<a id="org65661b8"></a>

# Emacs Code Conventions

-   M-x checkdoc.


<a id="orgacde9a1"></a>

## variable name conventions

‘&#x2026;-hook’
     The variable is a normal hook (\*note Hooks::).

‘&#x2026;-function’
     The value is a function.

‘&#x2026;-functions’
     The value is a list of functions.

‘&#x2026;-form’
     The value is a form (an expression).

‘&#x2026;-forms’
     The value is a list of forms (expressions).

‘&#x2026;-predicate’
     The value is a predicate—a function of one argument that returns
     non-‘nil’ for success and ‘nil’ for failure.

‘&#x2026;-flag’
     The value is significant only as to whether it is ‘nil’ or not.
     Since such variables often end up acquiring more values over time,
     this convention is not strongly recommended.

‘&#x2026;-program’
     The value is a program name.

‘&#x2026;-command’
     The value is a whole shell command.

‘&#x2026;-switches’
     The value specifies options for a command.

‘PREFIX&#x2013;&#x2026;’
     The variable is intended for internal use and is defined in the
     file ‘PREFIX.el’.  (Emacs code contributed before 2018 may follow
     other conventions, which are being phased out.)

‘&#x2026;-internal’
     The variable is intended for internal use and is defined in C code.
     (Emacs code contributed before 2018 may follow other conventions,
     which are being phased out.)


<a id="org456721c"></a>

## commands

-   (;) - comment on the same line
-   (;;) - comment on the new line


<a id="org7c18ff1"></a>

## recommendation

-   All the variables should be let-bound; otherwise, you're altering global values.
-   Code is not indented and hard to read.  Normally, sexp indentation in Emacs is aggressive enough that it
    takes effort to make code look like this, rather than to make it right.
-   Use when instead of if, progn.

-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Tips.html>
-   <https://github.com/bbatsov/emacs-lisp-style-guide>
-   C mostly <https://www.gnu.org/prep/standards/standards.html>
-   <https://www.math.utah.edu/docs/info/elisp_38.html>


<a id="org0ee8bbf"></a>

# examples

1s

    (list 1 2 (quote foo))
    (setq x (+ x 1)) = (incf x)
    
    
    ;;;; COMMENT-EXAMPLE function
    ;;; This function is useless
    ;;; except demonstrate comments.
    
    (defun asdas (x y)	;X is anything
    	;; X is now not a list
    	((sumbolp x)


<a id="orgcfbbca9"></a>

# USE CASES

sort numbers:

-   (sort '(1 2 3) '(lambda (a b) (< a b)))
-   (sort '(2 4 7 3 9 1 5 4 6 3 8) #'<)


<a id="org20f8cbf"></a>

## measure time of execution of any function

    (defun my/time-call (time-call &rest args)
      (message "Ohai %s" args)
      (let ((start-time (float-time))
            (org-babel-python-command "/usr/bin/timeout 15 python")
            )
        (apply time-call args)
        (message "Call took %f seconds" (- (float-time) start-time)))
      )
    (advice-add 'org-babel-python-evaluate-external-process :around #'my/time-call)


<a id="org7e28a5e"></a>

## working with tabular data

Save to .org file

<table id="orgcbdb35f" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Name</th>
<th scope="col" class="org-left">Math</th>
<th scope="col" class="org-left">English</th>
<th scope="col" class="org-left">Science</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Alice</td>
<td class="org-left">A</td>
<td class="org-left">B</td>
<td class="org-left">C</td>
</tr>


<tr>
<td class="org-left">Bob</td>
<td class="org-left">B</td>
<td class="org-left">A</td>
<td class="org-left">B</td>
</tr>


<tr>
<td class="org-left">Charlie</td>
<td class="org-left">C</td>
<td class="org-left">A</td>
<td class="org-left">A</td>
</tr>
</tbody>
</table>

    (mapc (lambda (student)
            (let ((name (car student))
                  (math (nth 1 student))
                  (english (nth 2 student))
                  (science (nth 3 student)))
            (with-temp-buffer
              (insert (concat "Name: " name "\n"))
              (insert (concat "Math: " math "\nEnglish: " english "\nScience: " science "\n"))
              (write-region (point-min) (point-max) (concat name ".org"))
              ;; Export PDF
              ;; (find-file (concat name ".org"))
              ;; (org-latex-export-to-pdf)
              )))
          students)
    (print "Operation finished.")

    
    "Operation finished."

    Wrote /home/u/tmp/Alice.org
    Wrote /home/u/tmp/Bob.org
    Wrote /home/u/tmp/Charlie.org


<a id="org9f46076"></a>

# Emacs Lisp

s

-   introduction <https://www.gnu.org/software/emacs/manual/html_mono/eintr.html>
-   short <http://ergoemacs.org/emacs/elisp_basics.html>

-   function may reference local varibles in the scope it is called from, but not in the scope it was defined.
-   REPL mode: M-x ielm
-   cl.el
-   .elc  - byte compiled code
-   (message "hi %d")    ; %d number, %s string %S - lisp expression. - to buffer "**Messages**" C-h e
-   (if nil "yes" "no") ; "no" ; (), '(), (list)
-   (if t "yes" "no") ; "yes"; 0, "", [] - vector of 0 elements
-   (not (and (or (< (<= (>= (= (/= not equal. Comparing strings: (equal (string-equal
-   (equal - if same type and value
-   (eq - if same Lisp object


<a id="org9197126"></a>

## help

-   get help:
    -   F1 f
    -   F1 S - descrybe symbol


<a id="orgc6b6496"></a>

## Keys:

-   <TAB>	Indent line
-   M-C-\\	Indent region
-   M-;	Comment
-   C-x ;	Set comment column
-   <ESC> <TAB> Completion for Symbol Names

Info:

-   C-h S	Info documentation for symbol
-   M-x woman or man   for operation system command, library function or system call.
-   C-h f	Emacs Lisp functions
-   c-h v	Emacs Lisp variable
-   C-x C-e	eval-last-sexp - Evaluate the expression to the left of cursor.


<a id="orge89043f"></a>

## Commands

-   C-M-x (eval-defun)
-   M-: (eval-expression)


<a id="org985952e"></a>

## ask user input

    (if (y-or-n-p "Do it?")
        (progn
          ;; code to do something here
        )
      (progn
        ;; code if user answered no.
      )
    )


<a id="orgefa47a7"></a>

## suppress messages by function and subfunctions

    (defun suppress-messages (old-fun &rest args)
      (cl-flet ((silence (&rest args1) (ignore)))
        (advice-add 'message :around #'silence)
        (unwind-protect
             (apply old-fun args)
          (advice-remove 'message #'silence))))
    (advice-add 'server-execute :around #'suppress-messages)


<a id="org2fd6666"></a>

## execute shell command

<https://www.eigenbahn.com/2020/01/19/painless-emacs-shell-commands>


<a id="orgb4cbe13"></a>

## defcustom

right way to set it in .emacs:

-   (setopt global-subword-mode t)  if you have emacs 29 or later                                                                           Wed
-   or (customize-set-variable global-subword-mode t)

    (defcustom text-mode-hook nil
      "Normal hook run when entering Text mode and many related modes."
      :type 'hook ;; tells Emacs the kind of data to which text-mode-hook should be set and how to display the value in a Customization buffer.
      :options '(turn-on-auto-fill flyspell-mode) ;; keyword specifies a suggested list of values for the variable
      :group 'wp) ;;  in which group the variable is located.
    
    # Emacs automaically manage this with M-x customize
    (custom-set-variables  '(text-mode-hook '(turn-on-auto-fill text-mode-hook-identify)))


<a id="orgbe88b59"></a>

## map

src/fns.c

(mapc FUNCTION SEQUENCE)	Apply FUNCTION to each element of SEQUENCE for side effects only.

(mapcar FUNCTION SEQUENCE)	Apply FUNCTION to each element of SEQUENCE, and make a list of the results.

    (setq full-range '(1 2 3 4))
    (setq re (mapcar (lambda (arg) (/ arg 2)) full-range))
    (print re)

    
    (0 1 1 2)


<a id="org6b057b9"></a>

## buffers

-   buffer-string - get buffer text as string with properties
-   (buffer-substring-no-properties (point-min) (point-max)
-   (buffer-name)


<a id="org51b4197"></a>

## cl-loop

cl-macs.el

(cl-loop for handler in some<sub>list</sub>
   until (condition-case &#x2026;


<a id="org9171cb4"></a>

## convetions and style guide

comments:

-   ; - used at the end of line
-   ;; - used in code as separate line
-   ;;; We use them for comments that should be considered a heading by Outline minor mode.
-   on’t end headings with a colon : or any other punctuation.

naming:

-   Prefix unused local (lexically scoped) variables with \_. (lambda (x \_y) x)
-   &#x2013; to denote private top-level definitions . `projectile--private-fun`
-   lowercas with - separator: some-var
-   name of program as a prefix with ‘-’ separator
    -   exceptions: ‘list-prefix’, ‘define-&#x2026;-prefix-&#x2026;’
    -   you may use two or three alternative common prefixes

functions:

-   “xxx-p” - check if true
-   Constructs that define a function or variable should be macros, not functions, and their names should start
    with ‘define-’.
-   Use `lambdas` for local bindings and function calls, not for hooks or global variables.
-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Coding-Conventions.html>
-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Tips.html>
-   <https://github.com/bbatsov/emacs-lisp-style-guide>

naming variables:

-   if the purpose of a variable is to store a single function, give it a name that ends in ‘-function’
-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Tips-for-Defining.html>

major mode: <https://www.gnu.org/software/emacs/manual/html_node/elisp/Major-Mode-Conventions.html>

minor mode: <https://www.gnu.org/software/emacs/manual/html_node/elisp/Minor-Mode-Conventions.html>


<a id="orgbc963f7"></a>

## advices-reverence

Look at apply, all after FUNCTION is arguments that FUNCTION should handle. r = &rest args

-   :around        (lambda (&rest r) (apply FUNCTION **OLDFUN** r))
-   :before        (lambda (&rest r) (apply FUNCTION r) (apply **OLDFUN** r))
-   :after         (lambda (&rest r) (prog1 (apply OLDFUN r) (apply FUNCTION r)))
-   :override      (lambda (&rest r) (apply FUNCTION r))
-   :after-until   (lambda (&rest r) (or (apply OLDFUN r) (apply FUNCTION r)))
-   :after-while   (lambda (&rest r) (and (apply OLDFUN r) (apply FUNCTION r)))
-   :before-until  (lambda (&rest r) (or (apply FUNCTION r) (apply OLDFUN r)))
-   :before-while  (lambda (&rest r) (and (apply FUNCTION r) (apply OLDFUN r)))
-   :filter-args   (lambda (&rest r) (apply OLDFUN (funcall FUNCTION r)))
-   :filter-return (lambda (&rest r) (funcall FUNCTION (apply OLDFUN r)))

:around

-   (orig-fun &rest args)

:override

-   (&rest args)


<a id="orgc409aa6"></a>

## functional programming - stream of data

Transducers <https://codeberg.org/fosskers/transducers.el>

-   change calls

cl-lib, dash - alternatives

elpa stream - orthogonal

seq/generics


<a id="orgcc9761f"></a>

## testing


<a id="orgfc36589"></a>

### ERT: Emacs Lisp Regression Testing

build-in <file:///usr/share/emacs/29.1/lisp/emacs-lisp/ert.el>

-   C-h i m ert RET
-   $info ert

1.  ex

        (require 'ert)
        ;; (require 'tested-module)
        (ert-deftest csv-tests-end-of-field ()
          (with-temp-buffe
           (should (= (+ 1 2) 4)))
        )
        ;; execute test programmatically
        (ert-run-tests-interactively "csv-tests-end-of-field")

2.  links

    <https://www.emacswiki.org/emacs/UnitTesting>


<a id="org01f41b1"></a>

# MELPA

<https://github.com/melpa/melpa>

-   M-x package-recipe-mode
-   M-x package-build-current-recipie
-   fork <https://github.com/melpa/melpa/>
-   git clone own/melpa
-   git branch recipe
-   git checkout recipe
-   git cp ~/recipe own/melpa/recipies/
-   git add
-   git push


<a id="orgb1d7e46"></a>

## lint

-   <http://github.com/purcell/package-lint>

M-x package-install package-lint

usage: package-lint-current-buffer


<a id="orgc07e2fc"></a>

## byte-compile

M-x byte-compile-file


<a id="org5997345"></a>

# errors handling - errors and throws and how to catch them


<a id="org0ad3fdf"></a>

## terms

-   signal and error - exception. Errors can be signaled only by Lisp primitives (including **signal** and **error**
    functions)
-   cleanup expressions - catch for exception
-   error symbol - describes what kind of error it is, and which describes also a list of condition name. Each
    error symbol has a set of parent **error conditions** that is a list of symbols:  error symbol itself and the symbol **error**.
    -   error symbol may and may not "error conditions".

**unwind-protect** - expressions to be evaluated in case of error.

**condition-case** - error handlers to recover control in case of error.

-   ignore-errors

**CONDITION-NAME** - in condition-case part of handlers


<a id="org0f5b32b"></a>

## error symbols

(define-error

Properties:

-   error-conditions
-   error-message

Main errors:

-   error - also condition for almost all errors.
-   quit - don't have **error** condition
-   minibuffer-quit - don't have **error** condition

some errors:

-   args-out-of-range
-   wrong-type-argument
-   wrong-number-of-arguments
-   void-variable
-   void-function
-   user-error


<a id="org9c9e519"></a>

## functions

-   (error STRING &rest ARGS) - make error with 'error symbol.
-   (signal ERROR-SYMBOL DATA) - An error symbol is a symbol with DATA.
-   (user-error FORMAT &rest ARGS) - like error but use symbol 'user-error
    ‘error-conditions’ property that is a list of condition names.


<a id="orgfb682b8"></a>

## condition case

(condition-case VAR BODYFORM &rest HANDLERS) - Regain control when an error is signaled. When a handler
 handles an error, control returns to the ‘condition-case’ and it executes the handler’s BODY&#x2026; with VAR
 bound to (ERROR-SYMBOL . SIGNAL-DATA) from the error.

-   **protected-form** - body
-   **handlers** -  (CONDITION-NAME BODY&#x2026;) or (:success BODY&#x2026;)
    -   condition - **condition name** of t matches any condition.

    (define-error 'new-error "A new error")
    (condition-case e
      (signal 'wrong-type-argument "wtf")
      ('out-of-range (print "aa"))
      ;; ('error (print "tf"))
      ('wrong-type-argument (print "cc"))
    )
    (print (get 'wrong-type-argument 'error-conditions))
    (print (get 'wrong-type-argument 'error-message))

    
    "cc"
    
    (wrong-type-argument error)
    
    "Wrong type argument"

    ;; catching any error and return nil if an error occurs:
    ;; handl erros that was thrown for ex. with ~(error "On last item")~
    (condition-case nil
        (load "asd")
      (error nil))
    
    ;; catch error and print
    (condition-case nil
        (load "asd")
      (error (print "error!")))
    
    ;; debug and any error:
    (condition-case nil
        (load "asd")
      ((debug error) nil))
    
    (ignore-errors  (load "asd"))

    
    "error!"


<a id="org37d3d1a"></a>

## catch and throw

entirely **separate!** from errors and conditions.

-   catch tag body
-   throw tag value,  value is used as the value to return from that catch.

    (defun foo-outer ()
      (catch 'foo
        (foo-inner)
        )
    )
    
    (defun foo-inner ()
      (throw 'foo t))
    (foo-outer)


<a id="org5baad89"></a>

## unwind-protect

(unwind-protect BODYFORM UNWINDFORMS&#x2026;)

-   executes body-form with a guarantee that the cleanup-forms will be evaluated if control leaves
-   it permits you to make the data consistent again in the event of an **error** or **throw**.


<a id="org6fb8901"></a>

## logging construction

Open **Warnings** buffer and output error there:
\#+begin<sub>src</sub> elisp :results output :exports both :eval no
(condition-case err
    (eval '(car) t)
  (error
   (display-warning
    (format "Error: %s\n"
            err)
    :error)
   nil))


<a id="org85075b4"></a>

## links

-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Errors.html>
-   <https://www.gnu.org/software/emacs/manual/html_node/elisp/Standard-Errors.html>
-   


<a id="org3dc50b6"></a>

# Error messages


<a id="org0573dae"></a>

## wrong-type-argument

symbol hello, not a number:

    (condition-case a
        (+ 2 nil)
      (error (print a)))

    
    (wrong-type-argument number-or-marker-p nil)

    

Wrong type argument: listp, notmuch-show-save-part

<https://www.gnu.org/software/emacs/manual/html_node/eintr/Wrong-Type-of-Argument.html>


<a id="orge91a0b8"></a>

## Lisp error: (invalid-function


<a id="org7b2fed7"></a>

## nil in debugger, Why nil if it is not nil?

    Debugger entered--Lisp error: (wrong-type-argument number-or-marker-p nil)
    * ediff-recenter-one-window(B)

Error is actually in defsubst inside of this function, it is like a bug because of inline function.


<a id="orgcb06c78"></a>

# Emacs API


<a id="org112c6b2"></a>

## terms

-   Emacs Terminology 	Description
-   Point 	Cursor position, number of characters from beggining of the buffer to current cursor position.
-   Mark 	Beginning of the selected area.
-   Region 	Selected area/ text
-   Buffer 	Place where the user edit something. Not all buffers are bound to a file.
-   Frame 	The current window of emacs. Windows are grouped into frames. Each frame contains at least one window.
-   Windows Each frame can be split in sections that Emacs documentation calls windows. subdivide a frame into
    multiple, non-overlapping windows.
-   Fill 	Word Wrap
-   Yank 	Copy
-   Kill Region 	Cut
-   Kill Ring 	Clipboard
-   Kill Buffer 	Close Buffer
-   Mode Line 	Status Bar
-   Font Locking 	Syntax Coloring


<a id="orgcc1072b"></a>

## Pointer

-   (point) - current position
-   (goto-char position)
-   (line-beginning-position &optional N) scan forward N - 1 lines first.
-   (beginning-of-line) - move cursor
-   (forward-line)
-   (next-line)
-   (current-column) - get position from begining of line
-   (current-indentation) - get position from begining of line where text exist (not white spaces)

(count-lines ? ?)

<http://xahlee.info/emacs/emacs/elisp_all_about_lines.html>


<a id="org1c50364"></a>

## Marker

The idea is that a marker positioned between two characters remains between those two characters despite
 insertion and deletion elsewhere in the buffer.
Marker:

-   **the marker position:** position in buffer at the begining -  Insertion and deletion of text in the buffer relocate the marker.
-   **the marker buffer:** .
-   **the insertion type:** define behavion when text was inserter right at marker position.


<a id="org280cac6"></a>

## Buffers

-   (current-buffer)
-   (with-current-buffer BUFFER-OR-NAME &rest BODY) ;; Temporarily make a buffer current.
-   (set-buffer BUFFER-OR-NAME) - Make a buffer current. (but does not make it visible.) Return that buffer object. switch-to-buffer or pop-to-buffer.
-   (save-current-buffer &rest BODY) - Execute BODY, then restore the current buffer that is before this function call.
-   (with-temp-buffer &rest BODY) - Create a temporary buffer, and evaluate BODY, return the last expression.
-   (buffer-name BUFFER) - Return the name of BUFFER, as a string.
-   (buffer-live-p b) - Return t if OBJECT is a buffer which has not been killed.

<http://xahlee.info/emacs/emacs/elisp_buffer_file_functions.html>


<a id="org2d71dd4"></a>

### create temp copy

    (defun ss ()
      (let ((buffer (get-buffer-create " *temp*"))
            (orbuf (current-buffer))
            (p (point)))
        (save-excursion
          (with-current-buffer buffer
            (insert (with-current-buffer orbuf (buffer-string))) ;; insert text from orbuf to this
            (goto-char p)
            ;; now we are at the copy
            (print (point))
    ))))


<a id="org34eee29"></a>

### get value from buffer

two ways:

-   (provided-mode-derived-p (buffer-local-value 'major-mode (current-buffer)) 'dired-mode)
-   (with-current-buffer (current-buffer) (derived-mode-p 'dired-mode))


<a id="org8768ac0"></a>

### links

<http://xahlee.info/emacs/emacs/elisp_buffer_file_functions.html>


<a id="org3f2a7ef"></a>

## Windows

-   (window-prev-buffers) - Return buffers previously shown in WINDOW.
-   **window tree** - Windows on the same frame
-   **root window** - The root node of a window tree.
-   **live window** -  leaf nodes, acutally showing buffer. returned by (window-list)
-   **selected window** - one of leaf nodes that is active.
-   **internal window** - organizing the relationships between live windows
-   **minibuffer window** - not part of its frame’s window tree, but is sibling window of the frame’s root window
-   **Window Parameters** - associated additional information with window.
-   **window-point/pos** - saved state of (point) in window, by default used by **window-in-direction** as reference.
-   **reference position** - used as a source to decide a target in direction.
-   **main-window** - used to distinguish window from windows marked as window-side/slot, returned by
    (window-main-window). is either a “normal” live window or specifies the area containing all the normal
    windows.
-   **display-start or just start** - buffer position that specifies where in the buffer display should start to display text at screen.


<a id="orge53b3c2"></a>

### side windows

C-x w s	window-toggle-side-windows
(scroll-right)


<a id="orgfc80eae"></a>

## Frames

<https://elpa.gnu.org/packages/posframe.html>


<a id="org8c8c1af"></a>

## temporary files

-   (make-temp-file) - This function creates a temporary file or directory and returns its name, and may insert
    text in it.

-   org-babel-temp-file - Create a temporary file
-   org-babel-process-file-name - Prepare NAME to be used in an external process and return new name
-   org-babel-eval-read-file - Return the contents of FILE as a string.

-   with-temp-file file body - evaluates the BODY forms with a temporary buffer as the current buffer; then, at the end,
    it writes the buffer contents into file FILE.
-   append-to-file - This function appends the contents of the region delimited by START and END in the current
    buffer to the end of file FILENAME.
-   write-region - This function writes the region delimited by START and END in the current buffer into the
    file specified by FILENAME. or write string.

Notes

-   ‘append-to-file’ and ‘write-region’ - Don’t use these functions to write to files that are being visited


<a id="orgc4481f7"></a>

### ex

    (make-temp-file
                (expand-file-name PREFIX
                                  (or small-temporary-file-directory
                                      temporary-file-directory)))

    (write-region <STRING> nil <FILENAME> 'append)

    (defun my-append-string-to-file (s filename)
      (with-temp-buffer
        (insert s)
        (write-region (point-min) (point-max) filename t)))


<a id="orgb3371e8"></a>

### links

-   <elisp#Unique File Names>
-   <elisp#Writing to Files>


<a id="org9f38087"></a>

## lines

(count-lines (point-min) (point-max))


<a id="orgf01b02a"></a>

## cleanup - temporary buffer

**unwind-protect** executes **body-form** with a guarantee that the **cleanup-forms** will be evaluated if control leaves
 body-form,

    (let ((buffer (get-buffer-create " *temp*")))
      (with-current-buffer buffer
        (unwind-protect
            (insert "asd") ; body-frm
          (kill-buffer buffer) ; cleanup-form
          )))

<https://www.gnu.org/software/emacs/manual/html_node/elisp/Cleanups.html>


<a id="orgee9bf00"></a>

## highlight character at point

    (let ((ol (make-overlay (point) (1+ (point)))))
      (overlay-put ol 'face '(:background "dark red")))


<a id="orge1a0fe5"></a>

## modes

variables:

-   mode-name - name of current major mode: "Help"
-   major-mode - name of current major mode: help-mode
-   mode-line-buffer-identification

minor mode is buffer-local or global:

    (local-variable-if-set-p 'show-paren-mode)

there's nothing stopping you giving a global mode a buffer-local value(to check really global):

    (with-temp-buffer
      (local-variable-if-set-p 'show-paren-mode))


<a id="orga59f0e2"></a>

## Call external asynchronous


<a id="org95ba4f8"></a>

### async-shell-command

(async-shell-command COMMAND &optional OUTPUT-BUFFER ERROR-BUFFER)

-   OUTPUT-BUFFER is default of \`shell-command-buffer-name-async' variable - name of a buffer or buffer or nil. That buffer is in shell mode.
-   To not display buffer: To run COMMAND without displaying the output in a window you can

configure ‘display-buffer-alist’ to use the action
‘display-buffer-no-window’ for the buffer given by
‘shell-command-buffer-name-async’.


<a id="org3c66f84"></a>

### call-process-shell-command

(call-process-shell-command (concat "timeout 15 bash -c \\"while true; do " play-sound "; sleep 2.9 ; done \\"") nil 0)
without return


<a id="org705acbc"></a>

### TODO <https://github.com/tkf/python-epc>

Allow to create server.


<a id="org456f988"></a>

### TODO <https://www.gnu.org/software/emacs/manual/html_node/elisp/JSONRPC.html>


<a id="org14c84e1"></a>

## Timer

(current-time) Elisp is a way to represent the number of seconds since the epoch (January 1, 1970, 00:00:00
 UTC)

-   HIGH: This represents the upper bits of the timestamp, typically the higher 16 bits of a 32-bit integer.
-   LOW: This represents the lower bits of the timestamp, typically the lower 16 bits of a 32-bit integer.
-   USEC: This represents the microseconds (millionths of a second) since the epoch.
-   PSEC: This represents the picoseconds (trillionths of a second) since the epoch.

To show epoch in seconds:

    (print (time-convert (current-time) 'integer))

To show saved Timer (run-at-time) in epoch:

    (print (time-convert '(26277 20928) 'integer))

To show saved Timer as readable string:

    (print (current-time-string (time-convert '(26277 20928) 'integer)))


<a id="org5b92c97"></a>

## autoload


<a id="org4adc82e"></a>

## links

-   <http://www.blogbyben.com/2011/04/10-concepts-emacs-newbie-should-master.html>


<a id="org44ff68d"></a>

# Libraries - popular

-   DamienCassou/hierarchy: Emacs library to create, query, navigate and display
-   magnars/dash.el: A modern list library for Emacs hierarchy structures


<a id="org0a27a95"></a>

## build in

-   seq.el
-   map.el


<a id="org00eb691"></a>

# links

-   Common Lisp the Language, 2nd Edition <https://www.cs.cmu.edu/Groups/AI/html/cltl/clm/node1.html>
-   <https://caiorss.github.io/Emacs-Elisp-Programming/Elisp_Programming.html>
-   free books <https://www.linuxlinks.com/excellent-free-books-learn-lisp/>
-   free tutorials <https://www.linuxlinks.com/excellent-free-tutorials-learn-lisp/>
-   <http://landoflisp.com/>

