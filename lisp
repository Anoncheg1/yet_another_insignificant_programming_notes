;-*- mode: Org; fill-column: 110;-*-
* Lisp
everything is list, space is items separrator
* features
https://www.tutorialspoint.com/lisp/index.htm
https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html

 "Lots of Isolated Silly Parentheses"
 1958 by John McCarthy

- dynamic and strong typing, functional, reflective, meta
- advanced object-oriented programming
- prefix notation - operators are written before their operands

- machine-independent, such as word length etc.
- iterative design methodology, (easy extensibility ?)
- allow updating the program dynamically
- high level debugging
- advanced object-oriented programming
- convenient macro system?
- expression-based ?
- object-oriented condition system ?
* evaluation process and forms
- file to s-expressions
- defines syntax pf List *forms* that a built from s-expressions
- determines which s-expressions are LISP forms.
- Eval - Returns the result of evaluating an AutoLisp expression.
  - Syntax : (eval expr)
- when you evaluate a function call form such as (car x), Emacs first evaluates the argument (the subform
  x). After evaluating the argument, Emacs executes the function (car)
- Two tupes:
  - Self-Evaluating Forms '123   ⇒ 123, 123 ⇒ 123, (eval '123) => 123
  - Symbol Forms (setq a 123) (eval 'a) => 123, a => 123

LISP form could be:
- An atom
- An empty or non-list
- Any list that has a symbol as its first element

** Special Forms
is a primitive function specially marked so that its arguments are not all evaluated

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
let*

    see Local Variables
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

* dialects
https://en.wikipedia.org/wiki/Emacs_Lisp

- Emacs Lisp or Elisp
- Common Lisp - for javaVM too
- Scheme - simple semantics and few different ways to form expressions. more minimalist design
- Clojure is a recent dialect . mainly the Java virtual machine
** TODO Common lisp vs Emacs Lisp
 https://www.gnu.org/software/emacs/manual/html_node/cl/Porting-Common-Lisp.html
 - Case-insensitivity for symbols
   - Common LISP expressions are case-insensitive - cos 45 or COS 45 are same
   - Emacs lisp - case-sensitive
 -

* terms
 must know:
 - whitespace and () - separators;
 - () = nil = atom and list
 - expressions = prefix notation = (+ 1 2)
 - special operators = (+, (list, (if. (lambda
 - anonymous function (lambda (arg) (+ arg 1) )
 - function (defun foo "optional comment" (a b c) (+ a b c))
 - function are case-insensitive
 - constants = Numbers, letter t, nil
 - true = t, false = nil
 - certain kinds of atom(arrays) can be separated into parts but not like lists,l
 - function names that end with a "p" often means it return true=t of false=nil = predicate

 terms:
 - atom :: elemental entities, *number* *symbols* and *strings* (list 2 3), nil, (ab-a#221), ("asd asd")
 - symbols :: + foo forward-line - atom type
 - list :: sequence of atoms or lists in (), nil
 - string :: "asd"
 - comment ::  ;
 - form :: any object meant to be evaluated (+ 3 4 1)
 - symbolic expression :: printed representation of both atoms and lists
 - quote :: '(+3 4 1) list without evaluation
 - function :: first symbol in list (call)
 - variable ::
 - special form ::
 - macros :: translate lisp expression into another lisp expression

 Arithmetic
 - +-*/%
 - (/ 7 2) ;3
 - (/7 2.0) ; 3.5
 - (expt 2 3) ; 2^3=8
* types
everything atom or list

object - instance of type

Linked lists -  one of Lisp's major data structures

s-expression - for code and data structure : (x y z) stands for (x . (y . (z . NIL)))

Constants:
- Numbers
- The letter t, that stands for logical true.
- The value nil, that stands for logical false, as well as an empty list.


atom - is a number or symbol or string in double quotation marks.

symbol - string of contiguous character - can consist of any number of alphanumeric characters other
than whitespace, open and closing parentheses, double and single quotes, backslash, comma, colon,
semicolon and vertical bar. To use these characters in a name, you need to use escape character (\).
- hello-from-tutorials-point
- 123008907
- *hello*
- Block#221
- abc123
- +1
- FOO                 ; A symbol named ‘FOO’, different from ‘foo’  for Emacs Lisp

list is a Linked lists is a sequence of atoms and/or other lists enclosed in parentheses.

A string is a group of characters enclosed in double quotation marks. "Hello world!"

primitive types:
- integer
- float
- cons
- symbol
- string
- vector
- hash-table
- subr
- byte-code function
- record
- plus several special types, such as buffer, that are related to editing

single inheritance?

single quote: (write '(* 2 3)) - atoms or lists literally and don't want them evaluated or treated as function calls.
- Quoting - '123, (quote (+ 1 2))
- Self-Evaluating Forms - evaluate to themselves '123 => 123 (eval '123) => 123

** TODO symbol type

** nil and t - special symbols that always evaluate to themselves
- symbol nil has three separate meanings:
  - it is a symbol with the name ‘nil’;
  - it is the logical truth value false;
  - it is the empty list—the list of zero elements.
- When used as a variable, nil always has the value nil.
- we write () when we wish to emphasize that it means the empty list, and we write nil when we wish to
  emphasize that it means the truth value false.
  - (cons 'foo ())                ; Emphasize the empty list
  - (setq foo-flag nil)           ; Emphasize the truth value false
- non-nil value is considered to be true
- *t* is the preferred way to represent the truth value true
- The symbol t always has the value t.
* strings
- (format "notify-send --expire-time 5000 -i emacs '%s'" msg)
* variables
- (set 'x '(a b)) - both evaluated first
- (setq x '(a b)) - evaluate only second, set global,  replaces the variable
- defvar symbol [value [doc-string]] - global, announces your intention
  - (defvar bar 23 "The normal weight of a bar.")
  - defconst symbol value [doc-string] - variant for constants
- let (bindings…) forms… - takes effect only within a certain part of a Lisp program
  - bindigs - set of symbols
  - value-forms - are evaluated in the order they appear and before binding any of the symbols to them.
  - ex: (let ((y 1)
              (z y))
          (list y z)) => (1 2) ; z is bound to the old value of y, which is 2, not the new value of y, which is 1.

* conditions
- cond (cond   (test1    action1)   (test2    action2) ... )
- if (if (test-clause) (action1) (action2))
- when (when (test-clause) (<action1))
- case (case  (keyform) ((key1)   (action1   action2 ...) ((key2)   (action1   action2 ...) ) ... )

** test-clause
- (null nil/t)
- Comparison Operations
  - = 	Checks if the values of the operands are all equal or not, if yes then condition becomes true. 	(= A B) is not true.
  - /= 	Checks if the values of the operands are all different or not, if values are not equal then condition becomes true. 	(/= A B) is true.
  - > 	Checks if the values of the operands are monotonically decreasing. 	(> A B) is not true.
  - < 	Checks if the values of the operands are monotonically increasing. 	(< A B) is true.
  - >= 	Checks if the value of any left operand is greater than or equal to the value of next right operand, if yes then condition becomes true. 	(>= A B) is not true.
  - <= 	Checks if the value of any left operand is less than or equal to the value of its right operand, if yes then condition becomes true. 	(<= A B) is true.
  - max 	It compares two or more arguments and returns the maximum value. 	(max A B) returns 20
  - min 	It compares two or more arguments and returns the minimum value. 	(min A B) returns 10
- Logical Operations
  - and
  - or
  - not
** if
#+begin_src elisp
(if (< 3 5)
  ; if case
    (foo)
  ; else case
    (bar))

# else if:
(if test-expression1
    then-expression1
    (if test-expression2
        then-expression2
        else-expression2))

# else if 2:
(cond (test-expression1 then-expression1)
      (test-expression2 then-expression2)
      (t else-expression2))
#+end_src
* functions
** progn
- (progn BODY...) - Eval BODY forms sequentially and return value of last one.
- prog1 for instance evaluates all expressions and returns the value of the first
- prog2 evaluates all expressions and returns the value of the second
** defun
- defines the symbol name as a function with argument list args
- Neither name nor args should be quoted.
- The return value of defun is undefined.
- Careful! defun redefines even primitive functions such as car without any hesitation or notification.
- fmakunbound - undefine

(defun function-name (a &optional b &rest c)
  "optional-documentation..."
  (interactive argument-passing-info)  ; interactive form
  (indent indent-spec) ; declare Form
  body...)

** Function Cell

#+begin_src elisp
(defun averagenum (n1 n2 n3 n4)
  (/ ( + n1 n2 n3 n4) 4)
  )
(averagenum 2 3 4 10 )
;; 4


(setq f 'list)
;;     ⇒ list

(funcall f 'x 'y 'z)
  ;;   ⇒ (x y z)
#+end_src

#+begin_src elisp

(defun bar (n) (+ n 2))
(symbol-function 'bar)
;;     ⇒ (lambda (n) (+ n 2))

(fset 'baz 'bar)
  ;;   ⇒ bar

(symbol-function 'baz)
    ;; ⇒ bar

#+end_src
** lambda
- A lambda expression, by itself, has no name; it is an anonymous function.
- result is a closure object
- they are more commonly associated with symbols to make named functions
- A lambda form cannot be evaluated and it must appear only where LISP expects to find a function.


Macro: lambda args [doc] [interactive] body…

(lambda (x) (* x x))
     ⇒ (lambda (x) (* x x))
*** Inline Functions
- just like an ordinary function, except for one thing: when you byte-compile a call to the function the
function’s definition is expanded into the caller.
- calls run faster
- it reduces flexibility; if you change the definition of the function, calls already inlined still use the
  old definition until you recompile them.

defsubst name args [doc] [declare] [interactive] body…
*** Special Form: function function-object
- returns function-object without evaluating it
- it is similar to quote
- function-object is a valid lambda expression, this has two effects
  - When the code is byte-compiled, function-object is compiled into a byte-code function object
  - When lexical binding is enabled, function-object is converted into a closure

All equal:
(lambda (x) (* x x))
(function (lambda (x) (* x x)))
#'(lambda (x) (* x x))

** Interactive Functions
 - A Lisp function becomes a command when its body contains, at top level, a form that calls the
   special form `(interactive...)’.
 - This special form does nothing when executed, but its presence in the function definition
   indicates that interactive calling is permitted.
 - Its argument controls the reading of the function arguments in an interactive call.

     (defun hello ()
       "Hello World and you can call it via M-x hello."
       (interactive)
       (message "Hello World!"))

** arguments
- (lambda (a b c) (+ a b c)) - 3 arguments
- keyword &optional before the optional arguments
- To specify a list of zero or more extra arguments, include the keyword &rest before one final argument.
- (a b &optional c d &rest e) - here c and d optional and e is a list

* special operator
- get help:
  - F1 f
  - F1 S
- progn :: is used for evaluating zero or more forms
* examples
 #+BEGIN_SRC lisp
 (list 1 2 (quote foo))
 ;=> (1 2 foo)
 (setq x (+ x 1)) = (incf x)


 ;;;; COMMENT-EXAMPLE function
 ;;; This function is useless
 ;;; except demonstrate comments.

 (defun asdas (x y)	;X is anything
	 ;; X is now not a list
	 ((sumbolp x)


 #+END_SRC
* USE CASES
sort numbers:
- (sort '(1 2 3) '(lambda (a b) (< a b)))
- (sort '(2 4 7 3 9 1 5 4 6 3 8) #'<)
* Emacs Lisp
 - introduction https://www.gnu.org/software/emacs/manual/html_mono/eintr.html
 - short http://ergoemacs.org/emacs/elisp_basics.html

 - function may reference local varibles in the scope it is called from, but not in the scope it was defined.
 - REPL mode: M-x ielm
 - cl.el
 - .elc  - byte compiled code
 - (message "hi %d")    ; %d number, %s string %S - lisp expression. - to buffer "*Messages*" C-h e
 - (if nil "yes" "no") ; "no" ; (), '(), (list)
 - (if t "yes" "no") ; "yes"; 0, "", [] - vector of 0 elements
 - (not (and (or (< (<= (>= (= (/= not equal. Comparing strings: (equal (string-equal
 - (equal - if same type and value
 - (eq - if same Lisp object


** Keys:
 - <TAB>	Indent line
 - M-C-\	Indent region
 - M-;	Comment
 - C-x ;	Set comment column
 - <ESC> <TAB> Completion for Symbol Names
 Info:
 - C-h S	Info documentation for symbol
 - M-x woman or man   for operation system command, library function or system call.
 - C-h f	Emacs Lisp functions
 - c-h v	Emacs Lisp variable
 - C-x C-e	Evaluate the expression to the left of cursor.
** Commands
 eval-last-sexp		evaluate last symbolic expression

** execute shell command
https://www.eigenbahn.com/2020/01/19/painless-emacs-shell-commands
