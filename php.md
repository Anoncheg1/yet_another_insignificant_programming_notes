
# Table of Contents

1.  [theory](#org8124a00)
    1.  [language patterns](#orgc44f4d0)
    2.  [escaping to PHP](#orgdeb42f2)
    3.  [echo/print](#org8c19e72)
    4.  [comments](#orge6d7b75)
    5.  [semicolons](#org7ef4823)
    6.  [variable](#orge80796d)
        1.  [array - associative arrays](#orgb498408)
        2.  [example](#orge590958)
    7.  [functions](#org666c8e9)
    8.  [history](#org5214594)
2.  [declare](#orgb9606ec)
3.  [class](#org2ad4298)
    1.  [example](#org801decb)
4.  [special words](#orgf8369af)
5.  [control structures](#org2b82fbc)
    1.  [if else](#org66fa7db)
6.  [superglobal varibles](#orgf2d9135)
7.  [PHP Parser](#org149afee)
    1.  [php.ini](#org16ec7b1)

;-**- mode: Org; fill-column: 100;-**-

<https://www.php.net/>

<https://books.goalkicker.com/PHPBook/PHPNotesForProfessionals.pdf>
<https://goalkicker.com/PHPBook/PHPNotesForProfessionals.pdf>


<a id="org8124a00"></a>

# theory

PHP: Hypertext Preprocessor

web server scripting language


<a id="orgc44f4d0"></a>

## language patterns

-   Loosely typed
-   dynamically typed
-   whitespace insensitive
-   case sensitive
-   Statements are expressions terminated by semicolons ;
-   Expressions are combinations of tokens
-   Braces make blocks if (&#x2026;){&#x2026;}


<a id="orgdeb42f2"></a>

## escaping to PHP

-   <?php&#x2026;?> Canonical PHP tags
-   <?&#x2026;?> Short-open (SGML-style) tags - don't work with  XML tags


<a id="org8c19e72"></a>

## echo/print

-   <p><?= "Hello world!" ?></p>
-   <p><?php echo "Hello world!" ; ?></p>
-   <p><?php print "Hello, World!\n" ; ?></p>

all data output by PHP to an HTML page should be properly escaped to prevent XSS
(Cross-site scripting) attacks or text corruption

-   echo has a void return, whereas print returns an int with a value of 1
-   echo can take multiple arguments (without parentheses only), whereas print only takes one argument
-   echo is slightly faster than print


<a id="orge6d7b75"></a>

## comments

-   \#
-   // - C++ style - **on** code
-   *\* &#x2026;\** - C style - to comment **out** code.


<a id="org7ef4823"></a>

## semicolons

no semicolon required before closing tag and after }.
but better practice to include before closing tag


<a id="orge80796d"></a>

## variable

very good practice to initialize variables

\[foo['bar']['baz'] means (\]foo)['bar']['baz']
$foo->$bar['baz'] means ($foo->$bar)['baz']
$foo->$bar['baz']() means ($foo->$bar)['baz']()
Foo::$bar['baz']() means (Foo::$bar)['baz']()

-   null
-   boolean - true, false
-   integer,
-   float, - INF, NAN
-   string - string is like an array of characters
-   object
-   resource - Resource variables hold special handles to opened files, database connections, streams, image canvas areas and

the like

-   array -

default:

-   Null - Unset AND unreferenced
-   False - bool
-   0 - float, int
-   object(stdClass) - object

True - not empty, not null, -1, +2, NAN
False - empty, null, 0, str "0"

`=` - to check whether a variable is identical to a reference value

constants (The convention is to use UPPERCASE letters):

-   const PI = 3.14; // float
-   define("EARTH<sub>IS</sub><sub>FLAT</sub>", false); // boolean
-   const APP<sub>LANGUAGES</sub> = ["de", "en"]; // arrays
-   defined("PI") || define("PI", 3.1415); // "define PI if it's not yet defined"
-   define is a runtime expression while const a compile time one.


<a id="orgb498408"></a>

### array - associative arrays

$foo = array(1, 2, 3); */ An array of integers
$bar = ["A", true, 123 => 5]; /* Short array syntax, PHP 5.4+
echo $bar[0];    */ Returns "A"
echo $bar[1234]; /* Returns null


<a id="orge590958"></a>

### example

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


<a id="org666c8e9"></a>

## functions

// Using named arguments:
array<sub>fill</sub>(start<sub>index</sub>: 0, count: 100, value: 50);


<a id="org5214594"></a>

## history

This trailing comma in function arguments was not permitted before 8.0.0.
PHP 8.0.0 introduced named arguments

Shorthand array notation available since PHP 5.4


<a id="orgb9606ec"></a>

# declare

declare(strict<sub>types</sub>=1); // function calls will respect type hints strictly

-   Fatal Error: Uncaught TypeError:&#x2026;


<a id="org2ad4298"></a>

# class

Class constants may be accessed by using the double colon operator (so-called the scope resolution operato


<a id="org801decb"></a>

## example

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


<a id="orgf8369af"></a>

# special words

echo gettype(1); */ outputs "integer"
echo gettype(true); /* "boolean"

globals are confusing and considered a **bad practice**.


<a id="org2b82fbc"></a>

# control structures


<a id="org66fa7db"></a>

## if else

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


<a id="orgf2d9135"></a>

# superglobal varibles

$GLOBALS
$<sub>SERVER</sub>
$<sub>REQUEST</sub>
$<sub>POST</sub>
$<sub>GET</sub>
$<sub>FILES</sub>
$<sub>ENV</sub>
$<sub>COOKIE</sub>
$<sub>SESSION</sub>


<a id="org149afee"></a>

# PHP Parser

Apache module to parse .php, .php3-8 .phtml files


<a id="org16ec7b1"></a>

## php.ini

/usr/local/lib/php.ini

no critical configuration parameters that you must set in order to run PHP

phpinfo() - helps to find location

if you’re running PHP as an Apache module, you need to restart the Apache server to make sure that
the changes you’ve made in the php.ini file are reflected.

-   error handling directives
-   file upload directives
-   security related directives
-   session directives
-   miscellaneous directives
