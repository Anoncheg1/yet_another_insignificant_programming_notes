;-*- mode: Org; fill-column: 100;-*-

https://www.php.net/

https://books.goalkicker.com/PHPBook/PHPNotesForProfessionals.pdf
https://goalkicker.com/PHPBook/PHPNotesForProfessionals.pdf

* theory
PHP: Hypertext Preprocessor

web server scripting language
** language patterns

- Loosely typed
- dynamically typed
- whitespace insensitive
- case sensitive
- Statements are expressions terminated by semicolons ;
- Expressions are combinations of tokens
- Braces make blocks if (...){...}


** escaping to PHP
- <?php...?> Canonical PHP tags
- <?...?> Short-open (SGML-style) tags - don't work with  XML tags

** echo/print
- <p><?= "Hello world!" ?></p>
- <p><?php echo "Hello world!" ; ?></p>
- <p><?php print "Hello, World!\n" ; ?></p>

all data output by PHP to an HTML page should be properly escaped to prevent XSS
(Cross-site scripting) attacks or text corruption

- echo has a void return, whereas print returns an int with a value of 1
- echo can take multiple arguments (without parentheses only), whereas print only takes one argument
- echo is slightly faster than print
** comments
- #
- // - C++ style - *on* code
- /* ...*/ - C style - to comment *out* code.
** semicolons
no semicolon required before closing tag and after }.
but better practice to include before closing tag
** variable
very good practice to initialize variables

 $$foo['bar']['baz'] means ($$foo)['bar']['baz']
 $foo->$bar['baz'] means ($foo->$bar)['baz']
 $foo->$bar['baz']() means ($foo->$bar)['baz']()
 Foo::$bar['baz']() means (Foo::$bar)['baz']()

- null
- boolean - true, false
- integer,
- float, - INF, NAN
- string - string is like an array of characters
- object
- resource - Resource variables hold special handles to opened files, database connections, streams, image canvas areas and
the like
- array -

default:
- Null - Unset AND unreferenced
- False - bool
- 0 - float, int
- object(stdClass) - object

True - not empty, not null, -1, +2, NAN
False - empty, null, 0, str "0"

=== - to check whether a variable is identical to a reference value

constants (The convention is to use UPPERCASE letters):
- const PI = 3.14; // float
- define("EARTH_IS_FLAT", false); // boolean
- const APP_LANGUAGES = ["de", "en"]; // arrays
- defined("PI") || define("PI", 3.1415); // "define PI if it's not yet defined"
- define is a runtime expression while const a compile time one.
*** array - associative arrays
$foo = array(1, 2, 3); // An array of integers
$bar = ["A", true, 123 => 5]; // Short array syntax, PHP 5.4+
echo $bar[0];    // Returns "A"
echo $bar[1234]; // Returns null
*** example
#+begin_src PHP
$variableName = 'foo';
$foo = 'bar';
// The following are all equivalent, and all output "bar":
echo $foo;
echo ${$variableName};
echo $$variableName;
//similarly,
$variableName  = 'foo';
$$variableName = 'bar';
// The following statements will also output 'bar'
echo $foo;
echo $$variableName;
echo ${$variableName}; # взять значение переменной, и интерпретировать как имя другой переменной
#+end_src

** functions
// Using named arguments:
array_fill(start_index: 0, count: 100, value: 50);
** history
 This trailing comma in function arguments was not permitted before 8.0.0.
 PHP 8.0.0 introduced named arguments

 Shorthand array notation available since PHP 5.4
* declare
declare(strict_types=1); // function calls will respect type hints strictly
- Fatal Error: Uncaught TypeError:...
* class
Class constants may be accessed by using the double colon operator (so-called the scope resolution operato
** example
#+begin_src php
class myClass {
    public function __construct() {
        $functionName = 'doSomething';
        $this->$functionName('Hello World');
    }
    private function doSomething($string) {
        echo $string; // Outputs "Hello World"
    }
}
$pie = new myClass();

$foo = new stdClass(); // create new object of class stdClass, which a predefined, empty class
$foo->bar = "baz";
echo $foo->bar; // Outputs "baz"
// Or we can cast an array to an object:
$quux = (object) ["foo" => "bar"];
echo $quux->foo; // This outputs "bar".
#+end_src

* special words
echo gettype(1); // outputs "integer"
echo gettype(true); // "boolean"

globals are confusing and considered a *bad practice*.
* control structures
** if else
if ($a > $b) {
    echo "a is bigger than b";
} elseif ($a == $b) {
    echo "a is equal to b";
} else {
    echo "a is smaller than b";
}


if ($a > $b):
    echo $a." is greater than ".$b;
elseif ($a == $b): // Note the combination of the words.
    echo $a." equals ".$b;
else:
    echo $a." is neither greater than or equal to ".$b;
endif;
* superglobal varibles

$GLOBALS
$_SERVER
$_REQUEST
$_POST
$_GET
$_FILES
$_ENV
$_COOKIE
$_SESSION
* PHP Parser

Apache module to parse .php, .php3-8 .phtml files

** php.ini
/usr/local/lib/php.ini

no critical configuration parameters that you must set in order to run PHP

phpinfo() - helps to find location

 if you’re running PHP as an Apache module, you need to restart the Apache server to make sure that
 the changes you’ve made in the php.ini file are reflected.


- error handling directives
- file upload directives
- security related directives
- session directives
- miscellaneous directives
