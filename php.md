
# Table of Contents

1.  [TODO: https://telegra.ph/Podlodka-PHP-Crew-2022-11-06](#org49e8292)
    1.  [links](#orga789de1)
    2.  [Доклад: Управляем системой через события https://www.youtube.com/watch?v=aE-RVn7KkYg&ab\_channel=Podlodka](#orgcd3c302)
2.  [Hello World](#org749782c)
3.  [theory](#org1b2d266)
    1.  [language patterns](#org9faebed)
    2.  [escaping to PHP](#org45f6100)
    3.  [echo/print](#org84c9d99)
    4.  [comments](#org1febabe)
    5.  [semicolons](#org504ab0a)
    6.  [variable](#org1475cdb)
        1.  [lists](#orgc80dea5)
        2.  [array - associative arrays](#orgae82fd0)
        3.  [example](#orgb23f619)
    7.  [functions](#org3539829)
    8.  [history](#orgbb4cb0c)
4.  [strings](#org2c85b95)
        1.  [heredoc](#org07551c8)
        2.  [nowdoc](#orgf911ea7)
5.  [declare](#org7bcbc4d)
6.  [class](#orgaf37055)
    1.  [trails](#org6af99df)
    2.  [example](#org99fea3d)
    3.  [Namespaces and backslash \\](#org83f936f)
        1.  [example](#org14554f0)
7.  [Closure](#org27591bb)
8.  [keywords](#orgb8dbe18)
    1.  [include, include<sub>once</sub>, require, require<sub>once</sub>](#org518c363)
    2.  [echo](#org5c491ea)
    3.  [global](#org802035f)
9.  [control structures](#org5c70ab4)
    1.  [if else](#org53645d1)
    2.  [loops](#orgbcce5f7)
10. [superglobal variables](#org80e2271)
11. [PHP Parser](#orge2e0160)
    1.  [php.ini](#org5592b60)
12. [Dependency Manager for PHP](#orge677e2b)
    1.  [links](#org684abc6)
13. [frameworks](#org008cfd0)

;-**- mode: Org; fill-column: 100;-**-

<https://www.php.net/>

<https://books.goalkicker.com/PHPBook/PHPNotesForProfessionals.pdf>
<https://goalkicker.com/PHPBook/PHPNotesForProfessionals.pdf>


<a id="org49e8292"></a>

# TODO: <https://telegra.ph/Podlodka-PHP-Crew-2022-11-06>


<a id="orga789de1"></a>

## TODO links

Воркшоп:
Чёрный квадрат ООП: абстракции и как их правильно готовить <https://www.youtube.com/watch?v=2oLIPqJ9QS4&ab_channel=Podlodka>
Дмитрий Кириллов (1С-Старт)
Доклад:
Лучшие архитектурные практики на Symfony <https://www.youtube.com/watch?v=DWzHNiLx2WI&ab_channel=Podlodka>
Денис Черносов (Тинькофф)
Доклад:
Лучшие архитектурные практики на Laravel <https://www.youtube.com/watch?v=vXLDcD4GKmY&ab_channel=Podlodka>
Адель Файзрахманов (Laravel Idea)
Доклад:
Применение DDD в разных фреймворках <https://www.youtube.com/watch?v=etpBnh3VDa8&ab_channel=Podlodka>
Сергей Пантюшин (Webinar)
Круглый стол:
Архитектурные Best Practices - от MVP к микросервисам <https://www.youtube.com/watch?v=LNbtfvnND3k&ab_channel=Podlodka>
Воркшоп:
Версионирование API в PHP-фреймворках <https://www.youtube.com/watch?v=o022x7SAlnY&ab_channel=Podlodka>
Олег Мифле (Skyeng)
Публичное собеседование:
System design <https://www.youtube.com/watch?v=U2j7Nhdrk4g&ab_channel=Podlodka>
Павел Лакосников (Авито)
Максим Таисов (СберЗдоровье)
Круглый стол:
Микросервисы в PHP <https://www.youtube.com/watch?v=p477UuQQl0g&ab_channel=Podlodka>
Антон Титов (Spiral Scout)
Иван Матвеев (Webpors/plesk)
Разговорный клуб:
Антипаттерны построения архитектуры <https://www.youtube.com/watch?v=XNT17NOJufY&ab_channel=Podlodka>

Полезные видео материалы
Domain Driven Design на практике <https://www.youtube.com/watch?v=snktmA1XaDs&ab_channel=PHPChannel>
Сергей Пантюшин (НПО "РИТ")
Инструкция по отпилу, или как мы сервис сессий из монолита выносили <https://www.youtube.com/watch?v=tmtSK8xkjwg&t=47s&ab_channel=AvitoTech>
Павел Лакосников, Авито
Школа магии PHP <https://www.youtube.com/watch?v=1W3UR7v3sAo&ab_channel=HighLoadChannel>
Александр Лисаченко (Альпари)
Доклад:
Какой правильный размер для микросервиса или когда стоит распиливать? <https://www.youtube.com/watch?v=bWIa9a0Sf2c&ab_channel=Podlodka>
Кирилл Ветчинкин
Версионирование API. Единая кодовая база для всех версий <https://www.youtube.com/watch?v=KccOSxI9WJw&ab_channel=PHPChannel>
Антон Золотилин (Superjob)
Игры со временем или unixtime и UTC не панацея <https://www.youtube.com/watch?v=sMgSotPy3ug&ab_channel=%D0%BC%D0%B8%D1%82%D0%B0%D0%BF%D0%9A%D0%BE%D1%80%D0%BE%D1%82%D1%8B%D1%88>
Front-End System Design <https://www.youtube.com/playlist?list=PLI9W87-Dqn7j_x6QtR6sUjycJR7nQLBqT>
Плейлист систем дизайна известных продуктов

YouTube каналы
ulskPHP <https://www.youtube.com/channel/UCODlkh15flKLFtUQBZWtz9A/videos>
Сообщество php программистов Ульяновск
PHP Самара <https://www.youtube.com/channel/UC3B2K4xFRSKIbq7ke0ki-tQ/videos>
Записи докладов по PHP и близким к программированию темам.
RND PHP <https://www.youtube.com/channel/UC1KvBdMDxZpsOecra6-Kw6g/featured>

Блоги спикеров и другие полезные материалы
Блог:
Дмитрий Елисеев <https://elisdn.ru/>
о разработке сайтов и сервисов
Подкаст:
Пятиминутка PHP <https://music.yandex.ru/album/7293227?dir=desc&activeTab=about>
На Яндекс Музыке
Статья:
Про постфикс Interface <https://verraes.net/2013/09/sensible-interfaces/>
Статьи:
Описания разных известных проектов на тему проектирования <http://highscalability.com/blog/category/example>
Code Golf <https://code.golf/fizz-buzz#php>
Игра-тренажер для решения задач наименьшим количеством строк.

Рекомендованные книги
Теория и практика языков программирования
С. Орлов
Гибкая разработка программ на Java и C++
Р. Мартин
PHP 8. Объекты, шаблоны и методики программирования
М. Зандстра
От монолита к микросервисам
С. Ньюмен
Предметно-ориентированное проектирование (DDD). Структуризация сложных программных систем
Э. Эванс


<a id="orgcd3c302"></a>

## Доклад: Управляем системой через события <https://www.youtube.com/watch?v=aE-RVn7KkYg&ab_channel=Podlodka>

Михаил Мазеин (ManyChat)

-   **Event Driven** architecture:
    -   ввод и вывод или только ввод или только вывод
    -   потоки данных очень запутаны

web site

-   web site, mobile app, public api (создание заказа)-> Обработчик заказов ->
    -   склад
    -   бонусы
    -   история

web site, mobile app, public api -> Order create event channel ->

-   event handler A ->
    -   event channel B - > Handler B (обработчик склада)
    -   event channel C - > Handler C (обр бонусов
    -   event channel D - > Handler D (обр истории)

event - json object:

-   {event type:"order<sub>create</sub>",
    -   "date":{
    -   "order<sub>id</sub>:  1234 }}

Event handler A :

-   logging
-   generate 3 new events - to one right channel

Основные элементы системы (уменьшить количество связей, обрабатывать события ассинхронно)

-   Сужности и события с ними связанные
    -   имеет состояние(заказы, пользователи, корзина покупок)
    -   событие может быть создано при создании изменении сущности ( создание заказа, удаление товара из корзины)
-   генератор событий - реализует логику состояния сущности и генерацию события на основе изменения сущности (веб форма составления заказа)
-   канал событий - от генератора к обработчику (файл очередь или база данных)
-   обработчик - принимает событие из канала и бизнес логика обработки

где

-   большая система
-   тяжелая бизнес-логика
-   декомпаозиция на последовательные\\ паралельные шаги выполнения
-   не требуется синхронное взаимодействие с клиентов

каналы событий (Брокер очередей/Message broker)

-   RabbitMq - поддерживает подтверждение
-   Kafka - event streaming, can save
-   Redis - для кэширования также, лучше всего подходит для создания очередей самому
-   SQS - облачный провайдер очереди

BPM:

-   Camunda - Camunda Modeler и написание java-кода, который обрабатывает шаги процесса, описанные на
    диаграмме ( через интерефейс интерфейс JavaDelegate) + Rest API

самое очевидное решение для обработки очередей - демоны

php запускается и умирает когда приходит запрос от клиента.

PHP демон(simplified):

-   reactPHP
-   Roadrunner
-   Composer -
-   своя реализация:

    while(tru) {
        doSomething;
    }

Обработчик (например Webhook)

-   валидация входа
-   создаем сущость сообщения в БД
-   добавляем сообщение в движокполнотекстного поиска - ассинхронно
-   считаем статистику с учетом нового сообщения - ассинхронно
-   делаем бизнес логику - по возможности ассинхронно, например отдать ответ по другому каналу
-   отдаем ответ (HTTP)

нагрузка измеряется в RPS - requests per second

Идемпотентность - свойство системы - при применении одной и той же операции на один и тот же объект
мы получаем одинаковый результат. Чтобы не потерять консистентность - согласованность данных друг с другом.

-   прежде чем начать обратывать обработчик должен проверить, что его можно обработать
-   проверить было ли событие уже обработано
-   если событие не было успешно завершено - нужно правильно восстановить контекст и продолжить с нужного места
-   для этого логирование сообщений должно быть достаточно

Конкурентность - несокольно процессов работают с одним ресурсом

В Debug обязательно Uid сообщения - сквозной, чтобы отслеживать жизненный путь события

Тестиговарие - не стоит принебригать интеграционные тесты

-   enterpriseintegrationpatterns.com
-   <https://microservices.io/patterns/microservices.html>
-   refactoring.guru/design-patterns
-   Designing Data-Intensive Applications (Martin Kleppmann)
-   learn.microsoft.com/en-us/azure/architecture/patterns


<a id="org749782c"></a>

# Hello World

    <?php
    
    require_once __DIR__.'/../vendor/autoload.php';
    
    $log = new Monolog\Logger('name');
    $log->pushHandler(new Monolog\Handler\StreamHandler('app.log', Monolog\Logger::WARNING));
    
    echo 'done' ;
    
    ?>
    
    <!DOCTYPE html>
    <html>
    <body>
    
    <?php
    $log->warning('Foo');
    ?>
    
    </body>
    </html>


<a id="org1b2d266"></a>

# theory

PHP: Hypertext Preprocessor

web server scripting language

-   был создан чтобы постоянно умирать - когда приходит запрос обрабатывает и отдает


<a id="org9faebed"></a>

## language patterns

-   Loosely typed
-   dynamically typed
-   whitespace insensitive
-   case sensitive
-   Statements are expressions terminated by semicolons ;
-   Expressions are combinations of tokens
-   Braces make blocks if (&#x2026;){&#x2026;}


<a id="org45f6100"></a>

## escaping to PHP

-   <?php&#x2026;?> Canonical PHP tags
-   <?&#x2026;?> Short-open (SGML-style) tags - don't work with  XML tags


<a id="org84c9d99"></a>

## echo/print

-   <p><?= "Hello world!" ?></p>
-   <p><?php echo "Hello world!" ; ?></p>
-   <p><?php print "Hello, World!\n" ; ?></p>

all data output by PHP to an HTML page should be properly escaped to prevent XSS
(Cross-site scripting) attacks or text corruption

-   echo has a void return, whereas print returns an int with a value of 1
-   echo can take multiple arguments (without parentheses only), whereas print only takes one argument
-   echo is slightly faster than print


<a id="org1febabe"></a>

## comments

-   \#
-   // - C++ style - **on** code
-   *\* &#x2026;\** - C style - to comment **out** code.


<a id="org504ab0a"></a>

## semicolons

no semicolon required before closing tag and after }.
but better practice to include before closing tag


<a id="org1475cdb"></a>

## variable

very good practice to initialize variables

$$foo['bar']['baz'] means ($$foo)['bar']['baz']
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


<a id="orgc80dea5"></a>

### lists

    $info = array('кофе', 'коричневый', 'кофеин');
    $array = array(1, 1, 1, 1,  1, 8 => 1,  4 => 1, 19, 3 => 13);
    Array
    (
        [0] => 1
        [1] => 1
        [2] => 1
        [3] => 13
        [4] => 1
        [8] => 1
        [9] => 19
    )
    
    // Assign array values to variables
    list($a, $b, $c) = $array;
    
    // print all assigned values
    echo "a =", ($a), "\n";
    echo " b =", ($b), "\n";
    echo " c =", ($c), "\n";


<a id="orgae82fd0"></a>

### array - associative arrays

$foo = array(1, 2, 3); */ An array of integers
$bar = ["A", true, 123 => 5]; /* Short array syntax, PHP 5.4+
echo $bar[0];    */ Returns "A"
echo $bar[1234]; /* Returns null


<a id="orgb23f619"></a>

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


<a id="org3539829"></a>

## functions

     <?php
    function addNumbers(int $a, int $b) {
      return $a + $b;
    }
    echo addNumbers(5, "5 days");
    // since strict is NOT enabled "5 days" is changed to int(5), and it will return 10
    ?>
    
    <?php declare(strict_types=1); // strict requirement
    function setHeight(int $minheight = 50) {
      echo "The height is : $minheight <br>";
    }
    ?>
    
     <?php declare(strict_types=1); // strict requirement
    function addNumbers(float $a, float $b) : float {
      return $a + $b;
    }
    echo addNumbers(1.2, 5.2);
    ?>
    
    // pass-by-reference argument
    <?php
    function add_five(&$value) {
      $value += 5;
    }
    
    $num = 2;
    add_five($num);
    echo $num;
    ?>
    
    // Using named arguments:
    array_fill(start_index: 0, count: 100, value: 50);


<a id="orgbb4cb0c"></a>

## history

This trailing comma in function arguments was not permitted before 8.0.0.
PHP 8.0.0 introduced named arguments

Shorthand array notation available since PHP 5.4


<a id="org2c85b95"></a>

# strings

-   single quoted - ''
-   double quoted - ""
-   heredoc syntax
-   nowdoc syntax


<a id="org07551c8"></a>

### heredoc

    echo <<<END
          a
         b
        c
    \n
    END;


<a id="orgf911ea7"></a>

### nowdoc

    echo <<<'EOD'
    Example of string spanning multiple lines
    using nowdoc syntax. Backslashes are always treated literally,
    e.g. \\ and \'.
    EOD;


<a id="org7bcbc4d"></a>

# declare

declare(strict<sub>types</sub>=1); // function calls will respect type hints strictly

-   Fatal Error: Uncaught TypeError:&#x2026;


<a id="orgaf37055"></a>

# class

-   single inheritance
-   access modifiers: public, private, or protected

Traits - abstract class.  can have methods and abstract methods

Class constants may be accessed by using the double colon operator (::) (so-called the scope
resolution operator)

-   greeting::welcome();
-   ClassName::$staticProp;


<a id="org6af99df"></a>

## trails

    trait TraitName {
      // some code...
    }
    
    class MyClass {
      use TraitName;
    }


<a id="org99fea3d"></a>

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


<a id="org83f936f"></a>

## Namespaces and backslash \\

-   allow for better organization by grouping classes that work together to perform a task
-   allow the same name to be used for more than one class
-   "use other\animate;" equals "use other\animate as animate;"


<a id="org14554f0"></a>

### example

    <?php
    namespace \Core\Admin; // must be declared at the beginning of a file
    class Data {}
    ?>
    
    
    <?php
    use \Core\Admin\Data; // подключаем класс
    $data1 = new Data('1'); // вызываем просто по имени
    ?>
    
    <?php namespace Users;
    
    class Page extends \Core\Admin\Controller {}
    ?>
    
    <?php
    use \Core\Admin as feline;


<a id="org27591bb"></a>

# Closure

-   use - Inheriting variables from the parent scope
-   Anonymous functions are implemented using the Closure class.

    ?php function getTotal($products_costs, $tax)
        {
            $total = 0.00;
    
            $callback =
                function ($pricePerItem) use ($tax, &$total)
                {
    
                    $total += $pricePerItem * ($tax + 1.0);
                };
    
            array_walk($products_costs, $callback);
            return round($total, 2);
        }
    
    ?>
    
    
    <?php
    $message = 'hello';
    
    // No "use"
    $example = function () {
        var_dump($message);
    };
    $example();
    
    // Inherit $message
    $example = function () use ($message) {
        var_dump($message);
    };
    $example();
    
    // Inherited variable's value is from when the function
    // is defined, not when called
    $message = 'world';
    $example();
    
    // Reset message
    $message = 'hello';
    
    // Inherit by-reference
    $example = function () use (&$message) {
        var_dump($message);
    };
    $example();
    
    // The changed value in the parent scope
    // is reflected inside the function call
    $message = 'world';
    $example();
    
    // Closures can also accept regular arguments
    $example = function ($arg) use ($message) {
        var_dump($arg . ' ' . $message);
    };
    $example("hello");
    
    // Return type declaration comes after the use clause
    $example = function () use ($message): string {
        return "hello $message";
    };
    var_dump($example());
    ?>


<a id="orgb8dbe18"></a>

# keywords


<a id="org518c363"></a>

## include, include<sub>once</sub>, require, require<sub>once</sub>

used to embed PHP code from another file

-   require - If the file is not found, a fatal error is thrown and the program stops.
    -   require<sub>once</sub> - If the file was already included previously, this statement will not include it
        again.
-   include - If the file is not found, a warning is shown and the program continues to run.
    -   include<sub>once</sub> - If the file was already included previously, this statement will not include it again.

    require __DIR__ . '/vendor/autoload.php';


<a id="org5c491ea"></a>

## echo

    echo gettype(1); // outputs "integer"
    echo gettype(true); // "boolean"
    echo "a =", ($a), "\n";


<a id="org802035f"></a>

## global

globals are confusing and considered a **bad practice**.


<a id="org5c70ab4"></a>

# control structures


<a id="org53645d1"></a>

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


<a id="orgbcce5f7"></a>

## loops

-   break
-   continue

    # -- while --
    $x = 1;
    while($x <= 5) {
      echo "The number is: $x <br>";
      $x++;
    }
    
    # -- do while
    $x = 1;
    do {
      echo "The number is: $x <br>";
      $x++;
    } while ($x <= 5);
    
    # -- for
    for ($x = 0; $x <= 10; $x++) {
      echo "The number is: $x <br>";
    }
    
    # -- foreach --
    $colors = array("red", "green", "blue", "yellow");
    foreach ($colors as $value) {
      echo "$value <br>";
    }


<a id="org80e2271"></a>

# superglobal variables

$GLOBALS
$<sub>SERVER</sub>
$<sub>REQUEST</sub>
$<sub>POST</sub>
$<sub>GET</sub>
$<sub>FILES</sub>
$<sub>ENV</sub>
$<sub>COOKIE</sub>
$<sub>SESSION</sub>


<a id="orge2e0160"></a>

# PHP Parser

Apache module to parse .php, .php3-8 .phtml files

-   php -a - REPL


<a id="org5592b60"></a>

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


<a id="orge677e2b"></a>

# Dependency Manager for PHP

**Composer** is a tool for dependency management in PHP.

-   main <https://getcomposer.org/>
-   packages <https://packagist.org/>
-   <https://github.com/composer/docker/blob/main/2.4/Dockerfile>

steps

-   curl -sS <https://getcomposer.org/installer> -o /tmp/composer-setup.php
-   HASH=\`curl -sS <https://composer.github.io/installer.sig>\`
-   echo $HASH
-   php -r "if (hash<sub>file</sub>('SHA384', '/tmp/composer-setup.php') `=` '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP<sub>EOL</sub>;"
    -   echo 'ebade291fd19ad2f47ae7ebef41ac  t.py' | sha384sum -c
-   php /tmp/composer-setup.php &#x2013;install-dir=/usr/local/bin &#x2013;filename=composer
-   composer
-   composer require cocur/slugify - install package to local folder "vendor"
-   in php:

    require __DIR__ . '/vendor/autoload.php';


<a id="org684abc6"></a>

## links

-   ubuntu guide <https://www.digitalocean.com/community/tutorials/how-to-install-and-use-composer-on-ubuntu-20-04>


<a id="org008cfd0"></a>

# frameworks

-   Symfone
-   Laravel
-   Yii

