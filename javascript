;-*- mode: Org; fill-column: 110;-*-
- https://addyosmani.com/resources/essentialjsdesignpatterns/book/
- book https://eloquentjavascript.net/
- https://www.ecma-international.org/ecma-262/6.0/

* HTTP concepts
** Cross-Origin Resource Sharing (CORS)
HTTP-header based mechanism that allows a server to indicate any origins (domain, scheme, or port) other than
its own from which a browser should permit loading resources.
- the specification mandates that browsers "preflight" the request, soliciting supported methods from the
  server with the HTTP OPTIONS request method, and then, upon "approval" from the server

CORS preflight request
- simple requests do not use  CORS preflight
- It is an OPTIONS request, using three HTTP request headers: Access-Control-Request-Method,
  Access-Control-Request-Headers, and the Origin header.
- For example, a client might be asking a server if it would allow a DELETE request, before sending a DELETE
  request, by using a preflight request
  - If the server allows it, then it will respond to the preflight request with an
    Access-Control-Allow-Methods response header, which lists DELETE
** Same-origin policy - security
 critical security mechanism that restricts how a document or script loaded by one origin can interact with a resource from another origin.
* paradigms
интерпритируемый, multi-paradigm:
  - prototype-based (прототипное программирование) :: стиль ООП без класса, а наследование -
	клонирование(delegation) экземпляра объекта(prototype). Объекты - function object.
  - dynamic :: во время выполняния добавляет код, добавляя определения объекта или переопределяя
		типы, выполнять код из строки eval командой
  - weakly typed ::  implicit type conversion at runtime. переменные общего типа
  - imerative ::  statements that change a program's state, declarative - что должно получиться
  - functional :: у методов может быть параметр другой метод
  - event-driven :: .
  - dynamic typing :: varibles not bound to types.
  - duck typing :: .

JavaScript is a single-threaded programming language with a single call stack.
* engines, runtime systems
- *JavaScript engine* - executor,  used in browsers and runtime systems.
  - Chrome V8
  - Spidermonkey
  - Rhino - Mozilla
- *runtime system or run-time environment* -  server-side scripting
  - Node.js
  - MongoBD
  - Apache Sling


   Java introduced the javax.script package in version 6 that includes a JavaScript implementation based on
   Mozilla Rhino. Thus, Java applications can host scripts that access the application's variables and objects,
   much like Web browsers host scripts that access a webpage's Document Object Model (DOM).

Adventages:
- very flexible

Disadventages:
- Without a unified structure, code is difficult to understand, maintain, and re-use
* History
- 1.6 	2005 	array extras, array and string generics, E4X
- 1.7 	2006 	Pythonic generators, iterators, let
- 1.8 	2008 	generator expressions + expression closures
- 1.8.1 			native JSON support + minor updates
- 1.8.2 	2009 	minor updates
- 1.8.5 	2010 	new features for ECMA-262 5th edition compliance (last explicit versioning of JavaScript)

ECMAScript( or ES)  - стандарт языка JavaScript

ECMAScript editions:
- 3 - 1999
- 4 - 2008
- 5 - 2009 - ( ECMA-262)
- 6 - 2015 - classes and modules - iterators and for/of loops, Python-style generators, arrow functions,
  binary data, typed arrays, collections (maps, sets and weak maps), promises, number and math enhancements,
  reflection, and proxies (metaprogramming for virtual objects and wrappers).
- 7 - 2016

Engines:
Chakra 	Microsoft Edge 18 	100% 	96% 	100% 	58%
SpiderMonkey 	Firefox 63 	100% 	98% 	100% 	78%
Chrome V8 	Google Chrome 70, Opera 57 	100% 	98% 	100% 	100%
JavaScriptCore (Nitro) 	Safari 12 	99% 	99% 	100% 	90%
* types
identifier - fiers - a-Z_$Unicode. Subsequent - 0-9Unicode..

Types:
 - number :: 123 or 123.23, Infinity, -Infinity and NaN
 - string :: "as", 'as', `can embed ${str}`
 - boolean :: true, false
 - null :: reference to a non-existing object
 - undefined :: [ˌʌndɪˈfaɪnd] value is not assigned

Objects:
 - function and object :: not primitive
 - array :: var cars = ["Saab", "Volvo", "BMW"]; cars[0]; - first :: not primitive - object
 - Booleans, Numbers, Strings :: can be objects (if defined with the new keyword)

** Classes - ES6
отличия от Классов от Прототипов:
- not hoisted - не поднимаются
- strict mode - внутри класса
- методы класса не перечислимы -???  Object.defineProperty() ???
- вызов конструктора класса без оператора new приведет к ошибке

#+BEGIN_SRC javascript
//До ES6 - Прототипы and Function object
 function SAnimal(type) {
   this.type = type;
  }

  SAnimal.prototype.who = function() {
   console.log(this.type);
  }

  var cat = new SAnimal('Кошка');
  cat.who(); // Кошка

//Сейчас с ES6 - Класс
 class SAnimal {
   constructor(type) {
    this.type = type;
   }
   who() {
    console.log(this.type);
   }
  }

  let cat = new SAnimal('Кошка');
  cat.who();
 console.log(typeof SAnimal); // function

//анонимный класс 1)
let SAnimal = class {
   constructor(type) {
    this.type = type;
   }
   identify() {
    console.log(this.type);
   }
  }

    let duck = new SAnimal('Утка');

  console.log(duck instanceof SAnimal); // true
  console.log(duck instanceof Object); // true

  console.log(typeof SAnimal); // function
  console.log(typeof SAnimal.prototype); // function

//анонимный класс 2)
let app = new class{
     constructor(name){
      this.name = name;
   }

   start() {    console.log(`Запуск приложения ${this.name}...`);   }

  }('TodoList');

  app.start(); // Запуск приложения TodoList…

//Геттеры и сеттеры

class Person {

   constructor(firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
   }

   get fullName() { ///get!!!
    return this.firstName + ' ' + this.lastName;
   }

   set fullName(str) { ///set!!!
    let names = str.split(' ');
    if (names.length === 2) {
     this.firstName = names[0];
     this.lastName = names[1];
    } else {
     throw 'Неправильный формат имени';
    }

   }
let name = 'fullName';

get[name] { //можно так
set[name](str) {


  }

  let mary = new Person('Мария', 'Дорош');
  console.log(mary.fullName); // Мария Дорош

  // устанавливаем новое имя
  mary.fullName = 'Мэри Уильям';
  console.log(mary.fullName); // Мэри Уильям

#+END_SRC
* basis
- https://javascript.info/
  - //ccc and /* */ - comment
  - console.log("Hello World!"); or console["log"]("");
  - function declarations may be called before declaration, not fundtion expresion.
  - primitives pass by value, f-object adn arrays pass by reference(but we cannot reassign (ref = ) ).
  - Garbage collection is performed automatically. We cannot force or prevent it. Reachability.
  - In constructor If return is called with object, then it is returned instead of this. If return is called
    with a primitive, it’s ignored.
  - все функции в JavaScript — замыкания, так как все они имеют контекст.
  - indentivicators - case-sensitive
  - undefined (or uninitialized)  - default value

#+BEGIN_SRC javascript
     var i = 0;	//non-local, by reference, automatically moved to top
     let j = 0;	//local
     const a = 0;	//local
     x = 0;		//like var


     typeof x; // return string with name of type
     let user = new Object(); // "object constructor" syntax
     let user = {};  // "object literal" syntax and JSON
     delete user.age; //remove property
     user["likes birds"] = true; //just key with space. we add new one or change

     //function expression
     let sum = function(a, b) {  };
     sum.call(context, a, b); //call with (obj, arg1, arg2) => inside this = obj
     // Arrow function -  introduced in ES6.
     let sum = (a, b) => a + b; //expression a+b = return a + b;
     let sum = (a, b) => {a + b; return 2;}
     //function object
     function Ball(r, c) { //function declaration. Start with capital B.
	 this.radius = r; //local to the ball object
	 this.show = function(){ //objects can contain functions
	 }
	 var checkInt = function(x) { // inner function
	 }
     }
     let myBall = new Ball(5, 3); //creates a new instance of the ball object
     myBall.show();

     //single f-object
     let myBall = new function (r, c) {
	 this.radius = r;
	 console.out(new.target); //[Function] if without new = undefined
     }

     //Immediately-invoked function expressions
     var counter = (function () {
	 var i = 0; // private property
	 return {   // public methods
	     get: function () {
		 alert(i);
	     },
	     set: function (value) {
		 i = value;
	     }
	 };
     })(); // module
     counter.get();       // shows 0
     counter.set(6);

     //"this"
     let user = {
       firstName: "John",
       sayHi() {
	 console.log(`Hello, ${this.firstName}!`);
       }
     };
     let a = user.sayHi; a();	// Hello, undefined!
     let aa = () => a(); aa();	// Hello, undefined!
     user.sayHi(); //Hello, John!
     let b = () => user.sayHi(); b();	//wrapped Hello, John!
     let c = function(){user.sayHi()}; c();//wrapped Hello, John!
     setTimeout(a,0); //undefined
     setTimeout(b,0); //OK
     a.call(user); //Hello, John!
     let d = a.bind(user); d(); //Hello, John!

  // Closure and counter problem
  var add = (function () {
    var counter = 0; //private
    return function () {counter += 1; return counter} //it sees scope "above" only
  })();
  add(); //increase counter
  add();
  add(); //counter = 3

   #+END_SRC
** TODO type juggling - automatic type conversion
special rules that determine whether the result will be true or false

* this
In the global execution context, this holds a reference to the global object. In the browser, it’s a window
object.

in function
- is undefined(in strict mode)
- global object
- if method to that object
- in array function this is not bound at all. It just inherits from the parent execution context (callee).
* hoisting and closure terms
Hoisting is just the process of assigning variable declarations a default value and placing function
declarations into memory during the creation phase.

Closure is a way to save the Lexical Environment of a function in the memory after its execution context is
removed from the stack. A closure gives you access to an outer function’s Lexical Environment from an inner
function.
* Concurrency
- event table - data structure which maps registered callbacks to events, in our case onTimeout function to
  timeout event.
- event queue is a data structure which consists of callback functions (tasks) to be processed in the future.
- event loop, a constantly running loop, checks whether Call Stack is empty. If so the first added callback
  from the event queue is executed, hence moved to the call stack.

JavaScript code is considered blocking - while processing stack frames

Web API gives us a possibility to write non-blocking code via asynchronous callbacks: like setTimeout or fetch
- which runs in a separate thread
** Scheduling: setTimeout and setInterval
all browsers and Node.JS. not a part of JavaScript specification. May Split CPU-hungry tasks.

- setTimeout :: allows to run a function once after the interval of time.
- setInterval :: allows to run a function regularly with the interval between the runs.

#+BEGIN_SRC javascript
function sayHi(phrase, who) {
  console.log( phrase + ', ' + who );
}
setTimeout(sayHi, 1000, "Hello", "John"); //this is undefinded
let timerId = setTimeout(...);
clearTimeout(timerId);
#+END_SRC
** job queue (aka Micro-task queue)
- ECMAScript 2015
- Callbacks in the job queue have a higher priority of execution than callbacks in the event queue
* Prototypal inheritance (hidden property of all objects __proto__)
- http://dmitrysoshnikov.com/ecmascript/javascript-the-core/
- нет множественного наследования - но есть примеси *Mixin*
- Все что не примитивные типы -  subclass of the object type
- *object* is a collection of properties and has a single prototype object __proto__
- default value for __proto__ is — *Object.prototype*
- *Constructor function* Foo - function Foo() { - здает два объекта - Foo и Foo.prototype
- Foo.__proto__ => Function.prototype     .__proto__ => Object.prototype
- Foo.prototype.__proto__ => Object.prototype
- Foo.prototype.constructor === Foo, // true
- Foo.__parent__ => Parent  - если функция вложена в функцию
- Every time you try to access a property that does not exist in a particular object, the JavaScript engine
  will automatically look in its prototype. And prototype of prototype.



#+BEGIN_SRC javascript
let user = {
  name: "John",
  surname: "Smith",

  set fullName(value) {
    [this.name, this.surname] = value.split(" "); //this = admin
  },

  get fullName() {
    return `${this.name} ${this.surname}`; //this = admin
  }
};

let admin = {
  __proto__: user,
  isAdmin: true
};

console.log(admin.fullName); // John Smith (*)

// setter triggers!
admin.fullName = "Alice Cooper"; // (**)

//ES5 way of inheritance
var bird = Object.create(animal, { //anima - parant
    legs: 2,
    fly: function() {
        console.log('flying');
    }
});

//-------------- Mixin ---------------
// примесь
var sayHiMixin = {
  sayHi: function() {
    alert("Привет " + this.name);
  },
  sayBye: function() {
    alert("Пока " + this.name);
  }
};

// использование:
function User(name) {
  this.name = name;
}

// передать методы примеси
for(var key in sayHiMixin) User.prototype[key] = sayHiMixin[key];

// User "умеет" sayHi
new User("Вася").sayHi(); // Привет Вася
#+END_SRC
* Modules import export
- https://addyosmani.com/resources/essentialjsdesignpatterns/book/#modulepatternjavascript
- https://tuhub.ru/posts/javascript-moduli-rukovodstvo-dlya-nachinayushhih
- <<загрузка модулей>> https://hsto.org/files/1b7/a3b/cb7/1b7a3bcb7dfd4b06b413104eb717eb93.png
- https://medium.freecodecamp.org/javascript-modules-a-beginner-s-guide-783f7d7a5fcc
Модуль - файл

Для загрузки не используется defer


type="module" - для поддержки ECMAScript модулей в HTML
:  <script type="module" src="main.js"></script>

** старые способы
всегда используется - *анонимные замыкания* - чтобы не загромождать переменными глобальную область
: (function () {    var myGrades = [93, 95, 88, 0, 55, 91]; }());

*Global import  Глобальный импорт* - globalVariable имеет в себе все. Применяется в jQuery.
: (function (globalVariable) { globalVariable.filter = "my global var";  }(globalVariable));

*Object interface Объектный интерфейс* в return {}
: var myGradesCalculate = (function () { return {  average: function() {},
: failing: function() {} }  })();
: myGradesCalculate.failing(); - public
: myGradesCalculate.average(); - public

*Revealing module pattern Паттерн "Раскрывающийся модуль"* в return { ссылки}
: var myGradesCalculate = (function () { return { average: average, failing: failing } })();

*CommonJS*
: function myModule() {}; module.exports = myModule; //1) module file
: var myModule = require('myModule'); //2) uses 1)
: var myModuleInstance = new myModule(); //2)

*AMD Asynchronous Module Definition*

** ECMAScript 6-th edition
#+BEGIN_SRC javascript
// lib/counter.js

var counter = 1;

function increment() {
  counter++; // изменяет переменную внутри оригинального модуля.
}

function decrement() {
  counter--;
}

module.exports = {//по копии каждого объекта. все они друг о друге не знают.
  counter: counter,
  increment: increment,
  decrement: decrement
};


// src/main.js

var counter = require('../../lib/counter');

counter.increment();
console.log(counter.counter); // 1
#+END_SRC
#+BEGIN_SRC javascript
// lib/counter.js
export let counter = 1;

export function increment() {
  counter++;
}

export function decrement() {
  counter--;
}


// src/main.js
import * as counter from '../../counter';

console.log(counter.counter); // 1
counter.increment();
console.log(counter.counter); // 2
#+END_SRC
* Scope
- in ECMAScript only a static scope is used
- this - context object - object in which context the execution context is activated
#+BEGIN_SRC javascript
// global "x"
var x = 10;

// global function
function foo() {
  console.log(x);
}

(function (funArg) {

  // local "x"
  var x = 20;

  // there is no ambiguity,
  // because we use global "x",
  // which was statically saved in
  // [[Scope]] of the "foo" function,
  // but not the "x" of the caller's scope,
  // which activates the "funArg"

  funArg(); // 10, but not 20

})(foo); // pass "down" foo as a "funarg"
#+END_SRC
* in browser
- https://www.w3schools.com/js
- https://www.splessons.com/lesson/javascript-bom/
- веб-разработчику https://developer.mozilla.org/ru/docs/Web
- онлайн веб редактор https://jsfiddle.net/kqbL0c4f/
- онлайн веб редактор https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_object
In a web page, global variables belong to the window object.
- *Browser Object Model (BOM)* - *window*

<head><script src="/my/script.js"></script>

<head><script type="text/javascript">     function count_rabbits() {   </script></head>

** DOM
- https://developer.mozilla.org/ru/docs/Web/API/Document
*Document Object Model (DOM)* is a cross-platform and language-independent application programming
  interface.

*HTMLDocument интерфейс* - абстрактный DOM - в современных браузерах для text/html

- document.body - The body of the document
- document.documentElement - The full document

*** terms
  document.getElementById("demo").innerHTML
 - *objects* - elements -
 - *property* - innerHTML
 - *method* - getElementById
 - DOM tree
*** Standards
 Dom levels:
 1) for an entire HTML or XML document
 2) 2000 - getElementById,  event model, XML namespaces and CSS
 3) 2004 - XPath, keyboard event handling, serializing documents as XML
 4) 2015 -
*** DOM доступен:
 - *window.document* or just *document*
 - свойство contentDocument объекта iframe
 - ответ responseXML объекта  XMLHttpRequest
 - из элемента или узла - свойство *ownerDocument*

*** Finding, Changing, Adding
https://www.w3schools.com/js/js_htmldom_document.asp
Finding:
- document.getElementById(id)
- document.getElementsByTagName(name)
- document.getElementsByClassName(name)
- document.querySelector("") - CSS selector

Changing:
- .innerHTML = html
- .attribute =
- .setAttribute(attribute, value)
- .style.property

Adding Events Handlers:
- document.getElementById(id).onclick = function(){code}

Finding:
- document.links - all <area> and <a> elements that have a href attribute
- document.head
- document.images
- document.domain - domain name of the document server

URL
- document.documentURI - URI of the document. - полный URL
- document.baseURI - меняется в <head> <base href=
- document.URL - complete URL of the document.  Only HTML. - полный URL
  https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_doc_baseuri
*** commenting in <script>
#+BEGIN_SRC html
      <script>
         <!--
            document.write("Hello World!")
         //-->
      </script>
#+END_SRC
** TODO HTML and HTML5
** debug
- *console.log* works if the browser supports Web Workers API
- *document.write* does not have any dependency on it. writes a string of text to a document stream opened by
  document.open()
- alert() - окно с сообщением и приостанавливает выполнение скрипта
- prompt, confirm - окна с вопросами

#+BEGIN_SRC html
 <p id="demo"></p>
 <script>
 document.getElementById("demo").innerHTML = x +"<p>" + y + "<p>" + z;


      document.open();
      document.write("<h1>Долой старое, да здравствует новое!</h1>");
      document.close();

 </script>
#+END_SRC

** TODO Web API
- https://developer.mozilla.org/en-US/docs/Web/API
- https://developer.mozilla.org/ru/docs/Web/API

navigator.appName - client's browser name

** TODO functions, events, etc
- https://www.w3schools.com/js/js_reserved.asp
** Best practices
- Avoid Global Variables - closures.
- Always Declare Local Variables - var
- Declarations on Top (JavaScript Hoisting)
- Initialize Variables
- Never Declare Number, String, or Boolean Objects - low speed
- Don't Use new Object() - same
- Beware of Automatic Type Conversions
- Use === Comparison - operator always converts (to matching types) before comparison.
- Use Parameter Defaults  - function is called with a missing argument it set to *undefined*. function (a=1, b=1) {
- End Your Switches with Defaults
- Avoid Using eval()

** ways to execute javascript
*** js file in header
#+begin_src html
    <head>
    <script type = "text/javascript" src="function.js"></script>
    <!-- or full script -->
    </head>
#+end_src
*** on HTML page load
Once your HTML page has finished loading
#+begin_src html
<body>
  <h1>Call JavaScript function from HTML</h1>
  <script>
    function test() {
      alert("The function 'test' is executed");
    }
    window.addEventListener('load', event => {
      test();
    });
  </script>
</body>
#+end_src
*** button1
#+begin_src html
    <html>
    <head>
    <script type = "text/javascript">
    functionmyfunction() {
    alert("how are you");
             }
    </script>
    </head>
    <body>
    <p>Click the following button to see the function in action</p>
    <input type = "button" onclick = "myfunction()" value = "Display">
    </body>
    </html>
#+end_src

*** button2
#+begin_src html
<body>
  <button id="btn">Click me</button>
  <script>
    function test() {
      alert("The function 'test' is executed");
    }
    let btn = document.getElementById("btn");
    btn.addEventListener('click', event => {
      test();
    });
  </script>
</body>

#+end_src
*** button3
#+begin_src html
<body>
  <button onclick="test()">Click me</button>
  <script>
    function test() {
      alert("The function 'test' is executed");
    }
  </script>
</body>

#+end_src
*** form submit event
#+begin_src html
<body>
  <form onsubmit="test()">
    <label for="username">Enter username:</label>
    <input type="text" name="username" id="username" />
    <input type="submit" />
  </form>
  <script>
    function test() {
      alert(`The function 'test' is executed`);
    }
  </script>
</body>

#+end_src
** console object

| Methods                  | Description                                                                                                                          |
|--------------------------+--------------------------------------------------------------------------------------------------------------------------------------|
| console.assert()         | Log a message and stack trace to console if the first argument is false.                                                             |
| console.clear()          | Clear the console.                                                                                                                   |
| console.count()          | Log the number of times this line has been called with the given label.                                                              |
| console.countReset()     | Resets the value of the counter with the given label.                                                                                |
| console.debug()          | Outputs a message to the console with the log level debug.                                                                           |
| console.dir()            | Displays an interactive listing of the properties of a specified JavaScript object.                                                  |
| console.dirxml()         | Displays an XML/HTML Element representation of the specified object if possible or the JavaScript Object view if it is not possible. |
| console.error()          | Outputs an error message. You may use string substitution and additional arguments with this method.                                 |
| console.group()          | Creates a new inline group, indenting all following output by another level. To move back out a level, call groupEnd().              |
| console.groupCollapsed() | Creates a new inline group, indenting all following output by another level.                                                         |
| console.groupEnd()       | Exits the current inline group.                                                                                                      |
| console.info()           | Informative logging of information. You may use string substitution and additional arguments with this method.                       |
| console.log()            | For general output of logging information. You may use string substitution and additional arguments with this method.                |
| console.table()          | Displays tabular data as a table.                                                                                                    |
| console.time()           | Starts a timer with a name specified as an input parameter. Up to 10,000 simultaneous timers can run on a given page.                |
| console.timeEnd()        | Stops the specified timer and logs the elapsed time in milliseconds since it started.                                                |
| console.timeLog()        | Logs the value of the specified timer to the console.                                                                                |
| console.trace()          | Outputs a stack trace.                                                                                                               |
| console.warn()           | Outputs a warning message. You may use string substitution and additional arguments with this method.                                |

output: console.log(), console.info(), console.warn(), console.error(), or console.debug()

Using string substitutions:
- %o or %O Outputs a JavaScript object.
- %d or %i Outputs an integer
- %s Outputs a string.
- %f Outputs a floating-point value

ex:
- console.log("Foo %.2d", 1.1) => Foo 01
- console.log("Foo %.2f", 1.1) =>Foo 1.10
https://developer.mozilla.org/en-US/docs/Web/API/console

Styling console output %c:
- console.log("This is %cMy stylish message", "color: yellow; font-style: italic; background-color: blue;padding: 2px");
-
** under the hood
V8 Javascript Engine — compilation steps, heap and memory management, and call stack.
Browser runtime — concurrency models, event loops, and blocking and non-blocking code.

V8 - written in C++ and used by Chromium-based browsers such as Chrome, Opera, and even Edge.

Compilation just-in-time (JIT) compilation:
- transforms JS into an abstract syntax tree (AST)
- This tree is used by Ignition —an interpreter which produces bytecode.
- Bytecode is an abstraction of machine code able to be executed by compiling to non-optimized machine code.

stack and heap
- Call Stack is the place in memory which consists of stack frames. Each stack frame corresponds to a call to a function
- Heap - Objects on the heap live on after we exit the function that allocated the memory.


Browser runtime of Chrome is Blink. It’s a fork of WebCore which is a layout, rendering, and Document Object
Model (DOM) library.
- implemented in C++
- exposes Web APIs like DOM elements and events, XMLHttpRequest, fetch, setTimeout, setInterval and so on,
  which are accessible via JavaScript.

  https://betterprogramming.pub/javascript-internals-under-the-hood-of-a-browser-f357378cc922
* Node.js and NPM
** NPM
https://docs.npmjs.com/

- package in CommonJS format
- package.json file, each dependency can specify a range of valid versions using the semantic versioning
  scheme, allowing developers to auto-update their packages while at the same time avoiding unwanted breaking
  changes
- version-bumping tools for developers to tag their packages with a particular version??????????
- npm also provides the package-lock.json[35] file which has the entry of the exact version used by the project after evaluating semantic versioning in package.json
- npm is the pre-installed package manager for the Node.js server platform.
- *modules*  www.npmjs.com
- each file is treated as a separate module.
- "dependencies": These packages are required by your application in production.
- "devDependencies": These packages are only needed for development and testing.
- package - folder with package.json
- npm install : install package and depenencies based on package.json
- npm start : "start" property of its "scripts" object or node server.js if not such

proxy
- npm config set proxy http://srv-proxy:8080
- npm config set https-proxy http://srv-proxy:8080
*** Пример package.json
#+BEGIN_SRC javascript
 {
  "name": "my-awesome-package",
  "version": "1.0.0"
  "scripts": {
    "start": "grunt",
    "build": "grunt build",
    "lint": "grunt lint",
    "deploy": "grunt deploy",
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "devDependencies": {
    "eslint": "^5.1.0",
    "eslint-plugin-openui5": "^0.1.0",
    "grunt": "^1.0.3",
    "grunt-openui5": "^0.14.0",
 }
#+END_SRC
** Node.js
cross-platform JavaScript run-time environment that executes JavaScript code outside of a browser
- Common JS - module system
- MIT License

V8 compiles JavaScript source code to native machine code

JavaScript runtime built on Chrome's V8 JavaScript engine. designed to build scalable network applications.
"JavaScript everywhere" paradigm, rather than different languages for server-side and client-side scripts.
- OpenJS Foundation - members included Google, Microsoft, IBM, PayPal, GoDaddy, and Joyent
- operates on a single-thread event loop, using non-blocking I/O calls
  -  sharing a single thread among all the requests that use the observer pattern
    - long-lasting computations and other CPU-bound tasks freeze the entire event-loop until completion
- support: JavaScript, TypeScript, ClojureScript ...

*Express.js* -  web app framework for Node.js


*** Node.js vs Java
JavaScript run-time environment
- Ubiquity [juːbɪkwɪti] вездесущность -  server and in the browser
- easy migrate logic form browser to server and vice versa.
- simple build process (no XML)
- simple work with noSQL databases
- JSON

Java:
- rock-solid foundation - less bugs.
- better for scientific work (Gregorian and Julian calendars)
- better IDE
- async calls in JS and Python are about are about 10x slower than concurrent call in java or C++
- accurate milti-threaded
- remote debugging
- more free libraries (Text indexing tools like Lucene and computer vision toolkits like OpenCV)

- JavaScript engines like Rhino :: run JavaScript inside your Java application where you can link to it
*** HTTP server
#+BEGIN_SRC javascript
// server.js
const http = require('http')
const port = 3000

const requestHandler = (request, response) => {
    console.log(request.url)
    response.end('Hello Node.js Server!')
}

const server = http.createServer(requestHandler)

server.listen(port, (err) => {
    if (err) {
        return console.log('something bad happened', err)
    }

    console.log(`server is listening on ${port}`)
})
#+END_SRC
*** consist of
- libuv - to handle asynchronous events. is an abstraction layer for network and file system functionality on
  both Windows and POSIX-based systems
  - uses a fixed-sized thread pool that handles some of the non-blocking asynchronous I/O operations
- on top of Google's V8 JavaScript engine since it was open-sourced under the BSD license
- npm - package manager and web site (www.npmjs.com)
-
*** Security
- Node Security Platform (NSP) - reports
- need to utilize various third-party open-source packages through NPM (Node Package Manager) and
  unfortunately, as per a survey, 14% of the NPM ecosystem is vulnerable to security issues, and these
  indirectly account for 54% of the packages.

- Code injection - attacker explores the poorly handled and untrusted data to gain insights into your codebase.
  - improper input and output data validation
- Cross-site request forgery (CSRF) attack - forces the authenticated users to submit a request to a web
  application against which they are already authenticated
  - allows attackers to
    - access sensitive data
    - comprise the privacy and integrity of web applications
- Default cookie names -
**** links
- https://www.simform.com/blog/nodejs-security/
- https://www.shiftleft.io/blog/node.js-vulnerability-cheatsheet/
*** NodeJS REPL
.load C:\Users\Chepilev_VS\Desktop\f\myjs\main.js

*** PHP vs Node.js
PHP should be used in applications in which client does not have to interact with the server again and again
and Node.js should be used for the applications which require a lot of interaction between client and server.
*** hello world - take screenshots Firefox
https://github.com/potch/foxshot
* Node.js - MIT License
** npm
* Google Web Toolkit (GWT)
java -> JavaScript front-end (недостатки табличная верстка)

https://www.javacodegeeks.com/2012/01/gwt-pros-and-cons.html

Pros:
- Java only
- code reuse
- easy scalable
- browser compatibility
Cons:
- Hard or impossible to debug
- Bigg network delay
- lost control over java Script
- особые требования для сервера
* web-fronted Frameworks
*AngularJS or Angular*

*Vue.js* open-source. single-page app. Successor of AngularJS - lightweight,
- user interfaces and single-page applications.
** Ext JS
 Sencha, Inc.    "JavaScript-first", class-based, object-oriented framework
 - docs https://docs.sencha.com/
 - tutorial https://docs.sencha.com/extjs/6.6.0/guides/getting_started/getting_started.html
 - SDK GPL3 https://www.sencha.com/legal/gpl/

*** CMD
 - tutorial https://docs.sencha.com/cmd/guides/touch/cmd_app.html
 - documentation https://docs.sencha.com/cmd/guides/advanced_cmd/cmd_reference.html

 Features:
 - app template gen and add components
 - js obfuscation
 - package mangement system
 - build scripts for app and packages
 - Cordova / PhoneGap Integration - mobile app stores
 - Converts CSS3 features (such as border-radius and linear-gradient) into sprites for legacy browsers.
 - Tuning tools:  determine common code across pages and partition shared code
 - Update: sencha upgrade --check && sencha upgrade
 - sencha app upgrade

 sencha [category] [command] [options...] [arguments...]

 sencha help [module] [action]
*** Naming Conventions
 *Classes* - MyCompany - alphanumeric characters. Numbers are permitted but
 discouraged. CamelCased. Everything else should be all lower-cased

 Class names should be grouped into *packages*.  there should be one unique top-level *namespace*.

 Example: Ext.util.Observable is stored in path/to/src/Ext/util/Observable.js
*** sencha generate -   quickly generate common MVC components
 https://docs.sencha.com/cmd/guides/extjs/cmd_app.html
*** Bootstart
 - bootstrap is not effected by changes to your JavaScript source code
 - Occasionally changes to styling or movement and renaming of JavaScript code will invalidate this bootstrap
  information or the generated CSS needed to run your application.

 : sencha app build development  -will perform a refresh
 : sencha app refresh -updates the JavaScript portion of the bootstrap
*** Запуск
 1) Настройка:
 : sencha app init --frameworks=~/sencha-sdks --ext@6.5.0 --modern MyApp
 : sencha app init --classic MyApp
 --classic, --modern or --universal
 2) build --dev, --te and --pkgproduction, -pkgp
 : sencha app build --dev
 3) run
 : python -m SimpleHTTPServer 8080
 : sencha app watch  #build and start web server

 Config
 : sencha config --prop sencha.sdk.path=~/sencha-sdks --save
 : ~/sencha config --list

 : ~/sencha audit
 : ~/sencha help app buil
*** App Structure
 - .sencha/ :: 			config for cmd and plugins
   - app/ :: .
 - touch/ :: 			A copy of the Sencha Touch SDK
 - ext ::  				Copy of SDK and Packages related to the Toolkits (Classic, Modern).
   - cmd/sencha.cfg :: 	Framework configuration file for Sencha Cmd
 - app/ :: 				Your application's source code in MVC structure (указывается в app.json в classpath)
   - Application.js :: 	The main view of the application::
   - model, view, store :: .
 - resources/ :: .
   - css/app.css :: 		main stylesheet, compiled from app.scss
   - sass/app.scss :: 	Sass file which compiles to app.css above
   - icons :: .
   - loading :: 			Application start-up screens for iOS devices. Like icons.
   - images :: .
 - index.html :: 		Default web page.
 - app.js ::  			Contains application's initialization logic
 - app.json :: 			Application descriptor. How build and load has inline doc.
 - packager.json :: 	Configuration for native packaging. has inline doc.



*** video introduction
 Core:
 - Class/Loader
 - DOM
 - Data
 - MVC/VM
 - Utilities

 Views (components) - toolkit
 - Classic - Desktop
 - Modern - Touch

 packages:
 - core package
 - classic
 - modern
 - charts
 - ux
*** Поддерживает:
 - технологию AJAX
 - анимацию
 - работу с DOM
 - реализацию таблиц
 - вкладок
 - обработку событий
 - все новшества Web 2.0
*** установка в Debian
 libjs-extjs

 sencha cmd:

 ./sencha config --prop sencha.sdk.path=/usr/share/javascript/extjs --save

**** Eclipse
 http://files.zend.com/help/Zend-Studio-9/content/javascript_libraries.htm
 https://www.eclipse.org/pdt/help/html/setting_the_javascript_build_path.htm

 *Spket plugin*
 https://ducquoc.wordpress.com/2011/02/16/eclipse-extjs-jquery/

**** Emacs
 https://emacs.cafe/emacs/javascript/setup/2017/05/09/emacs-setup-javascript-2.html
 http://www.unix-lab.org/posts/emacs-ide/
*** Лицензии
 - Commercial License - платит разработчик на каждое рабочее место, можно создавать продукт, но не библиотеку или development toolkit
 - Open Source (GPLv3) License
 - Trial Licensing
 - Custom Use Licensing
 - Extension Licensing.

*** Продукты
 - ExtReact - ReactJS - разрабатывается и поддерживается Facebook, Instagram и сообществом отдельных
   разработчиков и корпораций. Свойства передаются от родительских компонентов к дочерним.«свойства вниз,
   события наверх». React, however, does not include any pre-built components. ExtReact offers more than 115
   pre-built UI components.
 - Ext JS
 - Sencha Test - unit and end-to-end testing solution for Ext JS, including support for end-to-end testing of
   ExtReact, React and Angular apps
 - Sencha GXT - Java framework for building feature-rich web applications for both desktops and tablets = Java
   and GWT
 - Sencha Touch - in March 2015, Ext JS and Sencha Touch were merged into Ext JS 6.0

*** Styling
 1) Theme - one of theme hierarchy
 2) UI config
 3) Application css
* Multithreading and scalability
- https://habr.com/en/company/wrike/blog/302896/
- no multithreading natively.  single threaded language with asynchronous IO and event-driven model
- Функции из очереди добавляются в стек выполнения (выполняются) не раньше, чем стек вызовов закончит работу
  над текущей функцией.
- платим огромным числом обратных вызовов, блокированием основного потока и постоянными потерями контекста

*browser*
- *web worker* - script ~var worker = new Worker("worker_script.js");~ executed in background and receive
  events. Cannot touch the DOM, BOM and communicate through asynchronous message passing instead of shared
  memory. https://www.w3.org/TR/workers/
----
*platform* Several operations can happen simultaneously in JavaScript, as an example: while an AJAX operation
is still in progress [and has yet to call your callback method], a database request can finish up and call
your callback function
- Node.js - simplified model of event-driven programming. 1) cluster - listeners for signle port, 2)
  child_process module provides the ability to spawn asynchronous child processes and use pipeline to parent.

TODO:  yield,  о внутреннем устройстве промисов, асинков, авайтов, генераторов.

* libs
*React* -  open source  providing views that are rendered using components specified as custom HTML

*asm.js* is a subset of JavaScript that can be run in any JavaScript engine or run faster in an ahead-of-time (AOT) compiling engine

** Alternatives to Type script
*Babel or Babel.js* - developers can program using new ECMAScript 6 (ES6) language features by using Babel to
 convert their source code into versions of JavaScript that evolving browsers are able to process

*CoffeeScript* was a popular alternative with a terse syntax that compiles to sensible JavaScript code

*Google's Dart language*
* Firefox
https://firefox-source-docs.mozilla.org/devtools-user/keyboard_shortcuts/index.html#web_console
https://developer.mozilla.org/en-US/docs/Web/API/console
https://firefox-source-docs.mozilla.org/devtools-user/browser_console/index.html
** ide
- console	Ctrl+Shift+K
- Browser Console	Ctrl+Shift+J
- Page source code	Ctrl+u
https://www.youtube.com/watch?v=yjQVG6ubUTA
** keys
- toggle	Ctrl+Shift+C
- inspector	Ctrl+Shift+I
- console	Ctrl+Shift+K
- console-br	Ctrl+Shift+J
- debugger	Ctrl+Shift+S
- styles		Shift+F7
- network	Ctrl+Shift+E
- source	Ctrl+u
- mobile mode	Ctrl+Shift+M

* TODO Angular JS and Angular
- @license Angular v6.1.10 - main.*.js

Angular is not AngularJS - is a TypeScript-based open-source full-stack web application framework.

** History
- AngularJS was called "Angular 2"
- Angular 2 - 2014
- 4 - 2016
- 5 - 2017 - Progressive web applications (PWAs)
- 6 - 2018 - ng update, ng add, Angular Elements, Angular Material + CDK Components, Angular Material Starter
  Components, CLI Workspaces, Library Support, Tree Shakable Providers, Animations Performance Improvements,
  and RxJS v6.
- 7 - 2018

All the major releases are supported for 18 months
** bootstrap

** Features:
Angular recommends: TypeScript language
- Class-based Object Oriented Programming
- Static Typing
- Generics


* Загрузка сайта
** Скорость
- https://developers.google.com/speed/pagespeed/insights
- https://developers.google.com/web/tools/lighthouse/#devtools
- mobile friendly https://search.google.com/test/mobile-friendly?utm_source=mft&utm_medium=redirect&utm_campaign=mft-redirect
- recomendations https://developers.google.com/speed/docs/insights/rules
- https://www.speedboost.xyz/blog/wp-content/uploads/2017/11/defer-async-js.png

Элементы
1) html parsing
2) Script downloading
3) script execution

Варианты загрузки
- <script> - parsing will stop until 2) and 3)
- <script async="async"> - parsing will stop until 3)
- <script defer="defer"> - скрипт запустится только после полной загрузки страницы

** <script head vs body bottom
- http://w3cgeek.com/javascript-head-body-or-jquery.html
Всегда в head до парсинга страницы: LESS / SASS, RequireJS, JS как платформа

just before </body>:
1) I usually use a CMS or framework that handles putting the necessary scripts for a page in the head, pasting
   them into the body of individual pages makes it harder to keep track of them
2) The problem caused by scripts is that they block parallel downloads. The HTTP/1.1 specification suggests that
   browsers download no more than two components in parallel per hostname. see [[загрузка модулей]]
* jQuery
- https://api.jquery.com/Types/
- 1 https://habr.com/en/post/38208/
- 2 https://habr.com/en/post/39440/
- 3 https://habr.com/en/post/42426/

- *PlainObject* - var o = {};
- *CallBack* -  plain JavaScript function passed to some method as an argument or option
- *jqXHR* - $.ajax() method returns the jqXHR object superset of the browser's native XMLHttpRequest object
- *Context* - this
- *Scope* - global scope, function scope, local scope
- *Error* - throw new Error( "The argument provided is incorrect" ); or console.log

Features
- HTML/DOM manipulation
- CSS manipulation
- HTML event methods
- Effects and animations
- AJAX
- Utilities

CDN (Content Delivery Network) - Both Google and Microsoft host jQuery.

2006 Features:
- handle Browser Incompatibilities and to simplify HTML DOM Manipulation
- Event Handling
- Animations
- Ajax

** ().load
load ( url [, data] [, complete(responseText, textStatus, XMLHttpRequest)

data - POST.  в противном случае, GET.

complete(responseText, textStatus, XMLHttpRequest) - Функция обратного действия, которая запустится после
завершения запроса.

#+BEGIN_SRC javascript
$(document).ready(function(){
    // вешаем на клик по элементу с id = example-1
    $('#aa').click(function(){
        // загрузку HTML кода из файла example.html
        $(this).load('example.html');
        //console.log("22");
    })
});
#+END_SRC
** jQuery.ajax()
- https://api.jquery.com/JQuery.ajax/
jQuery.ajax( url [, settings ] )

*settings*. may be set to default - $.ajaxSetup(). (All settings are optional)

- *contentType* - default - .  Content-Type: application/x-www-form-urlencoded; charset=utf-8 (false to tell
  jQuery to not set any content type header.)
- *data* - PlainObject or String or Array - Data to be sent to the server.
- *type* - default: 'GET'
- *url* -
- *accepts* - key/value pairs - Accept request header
- *dataType*:"" -  type of data that you're expecting back from the server
- *async* (default: true)
- *beforeSend* -  Function
- *cache* - (default: true, false for dataType 'script' and 'jsonp')  -requested pages not to be cached by the browser.
- *complete* - Function - function to be called when the request finishes
- *contents* -  string/regular-expression pairs - l parse the response -????????????
- *context* -????????
- *converters* default: {"* text": window.String, "text html": true, "text json": jQuery.parseJSON, "text
  xml": jQuery.parseXML} - returns the transformed value of the response
- *crossDomain* - default: false for same-domain requests, true for cross-domain requests
- *statusCode* - HTTP codes and functions to be called when the response has the corresponding code {404:
  function() {

#+BEGIN_SRC javascript
var menuId = $( "ul.nav" ).first().attr( "id" );
var request = $.ajax({
  url: "script.php",
  method: "POST",
  data: { id : menuId },
  dataType: "html"
});

request.done(function( msg ) {
  $( "#log" ).html( msg );
});

request.fail(function( jqXHR, textStatus ) {
  alert( "Request failed: " + textStatus );
});
#+END_SRC
** jQuery vs JavaScript
| jQuery                                | JavaScript                                   |
|---------------------------------------+----------------------------------------------|
| var myElement = $("#id01");           | document.getElementById("id01");             |
| $("p")                                | getElementsByTagName("p")                    |
| var myText = myElement.text();        | myElement.textContent or myElement.innerText |
| myElement.html("<p>Hello World</p>"); | myElement.innerHTML                          |
| myElement.hide();                     | myElement.style.display = "none";            |
| myElement.show();                     | myElement.style.display = "";                |
| myElement.css("font-size","35px");    | myElement.style.fontSize = "35px";           |
| $("#id").remove();                    | element.parentNode.removeChild(element);     |
| myElement.parent();                   | myElement.parentNode;                        |
** AJAX
#+BEGIN_SRC javascript
$.ajax({
	type: 'GET',
	url: 'send-ajax-data.php',
	dataType: "JSON", // data type expected from server
	success: function (data) {
		console.log(data);
	},
	error: function() {
		console.log('Error: ' + data);
	}
});



//same code
$.get('send-ajax-data.php').done(function(data) {
	console.log(data);
}).fail(function(data) {
	console.log('Error: ' + data);
});

#+END_SRC
** Events
- http://anton.shevchuk.name/wp-content/uploads/2008/10/events.png

#+BEGIN_SRC javascript
//события любого AJAX
$("#loading").bind("ajaxSend", function(){
    $(this).show(); // показываем элемент
}).bind("ajaxComplete", function(){
    $(this).hide(); // скрываем элемент
});


//события конкретного - в виде его свойств
$.ajax({
    beforeSend: function(){
        // Handle the beforeSend event
    },
    complete: function(){
        // Handle the complete event
    }
    // ...
});

#+END_SRC
** example
habr
#+BEGIN_SRC html
<head>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
	$("document").ready(function(){ //когда DOM будет готов or $(function(){
		$(".button").click(function(){
			$("#panel").slideDown("slow");//id="panel" опускается вниз
		}
	}

#+END_SRC

* AJAX  [ˈeɪdʒæks]
"Asynchronous JavaScript And XML" - programming concept on the client side to create asynchronous Web
applications
- modern implementations commonly utilize *JSON* instead of XML
- *XMLHttpRequest* object within JavaScript is commonly used.
-  to load content onto the screen without refreshing the page

*AHAH: Asynchronous HTML and HTTP* - simple tech to dynamically updating web pages using
 *XMLHttpRequest* and javaScript

fetch - new native JavaScript API:
- defalut credential policy - same-origin
- provides a single logical place to define Cross-Origin Resource Sharing (CORS) and extensions to HTTP
** ex fetch API
#+begin_src js
fetch('send-ajax-data.php')
    .then(data => console.log(data))
    .catch (error => console.log('Error:' + error));
// firefox:
fetch('http://example.com/movies.json')
  .then((response) => response.json())
  .then((data) => console.log(data));
// credetnials
fetch('https://example.com', {
  credentials: 'include'
});

#+end_src

** ex fetch API - upload file:
#+begin_src js
const formData = new FormData();
const fileField = document.querySelector('input[type="file"]');

formData.append('username', 'abc123');
formData.append('avatar', fileField.files[0]);

fetch('https://example.com/profile/avatar', {
  method: 'PUT',
  body: formData
})
  .then((response) => response.json())
  .then((result) => {
    console.log('Success:', result);
  })
  .catch((error) => {
    console.error('Error:', error);
  });

#+end_src
** ex_old
#+begin_src js
// This is the client-side script.

// Initialize the HTTP request.
let xhr = new XMLHttpRequest();
// define the request
xhr.open('GET', 'send-ajax-data.php');

// Track the state changes of the request.
xhr.onreadystatechange = function () {
	const DONE = 4; // readyState 4 means the request is done.
	const OK = 200; // status 200 is a successful return.
	if (xhr.readyState === DONE) {
		if (xhr.status === OK) {
			console.log(xhr.responseText); // 'This is the output.'
		} else {
			console.log('Error: ' + xhr.status); // An error occurred during the request.
		}
	}
};

// Send the request to send-ajax-data.php
xhr.send(null);

#+end_src
** XMLHttpRequest Object Methods
- abort()
- getAllResponseHeaders()
- getResponseHeader()
- open(method,url,async,uname,pswd)
- send(string) - string only for POST
- setRequestHeader() -  Adds a label/value pair to the header to be sent
** XMLHttpRequest Object Properties
- onreadystatechange :: Stores a function (or the name of a function) to be called automatically each time the
     readyState property changes
- readyState :: Holds the status of the XMLHttpRequest. Changes from 0 to 4:
  - 0: request not initialized
  - 1: server connection established
  - 2: request received
  - 3: processing request
  - 4: request finished and response is ready
- responseText :: 	Returns the response data as a string
- responseXML :: 	Returns the response data as XML data
- status :: 	Returns the status-number (e.g. "404" for "Not Found" or "200" for "OK")
- statusText :: 	Returns the status-text (e.g. "Not Found" or "OK")

** AHAH
Send Request and Deal with the Response
#+BEGIN_SRC javascript
 function ahah(url, targetId, onDone) {
       var targetElement = document.getElementById(targetId);
       targetElement.innerHTML = "Loading data...";

       var request = new XMLHttpRequest();
       reguest.open('GET', 'send-ahax-data.php');

       request.onreadystatechange = function() {
           var DONE = 4; // readyState 4 means the request is done.
           if (request.readyState != OK) {
              return;
           }
           if (request.status != 200 && request.status != 304) {
               targetElement.innerHTML = "ahah error:\n" + request.statusText;
               return;
           }
           targetElement.innerHTML = request.responseText;
           onDone && onDone(); //exists? then trigger
       }

       request.send(null);
   }
#+END_SRC

** errors
Cross-Origin Request Blocked: The Same Origin Policy disallows reading the remote resource at ???. (Reason:
CORS header ‘Access-Control-Allow-Origin’ missing).
- in response - missing the required Access-Control-Allow-Origin header
** links
- Mozilla Fetch API https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch
* TODO Webpack
- https://webpack.js.org/guides/getting-started/
- https://habr.com/en/post/309306/
*static module bundler* primarily for JavaScript applications - require Node.js. - генерирует статические ресурсы.


- поиска, установки, удаления компонентов
- минификации, компиляции, юнит-тестирования, проверки кода
** concepts

** install
: mkdir webpack-demo && cd webpack-demo
: npm init -y
: npm install webpack webpack-cli --save-dev

+ webpack-cli@3.2.3
+ webpack@4.29.5

package.json:
- +   "private": true,
- -   "main": "index.js",
* Emacs
** HTML mode
- https://www.gnu.org/software/emacs/manual/html_node/emacs/HTML-Mode.html
- http://ergoemacs.org/emacs/emacs_html.html

Insert a close tag	C-c /
delete tag		C-c C-d
special characters	C-c C-n
jumt to end tag		C-c C-f/b
* JS Engine of browsers Firefox, Chrome, Edge, Safari
- V8 is the JS Engine of Google Chrome (also used by Chromium, MongoDB among others).
- SpiderMonkey is the JS Engine of Firefox (also used by GNOME and Adobe as examples).
- Chakra is Microsoft's JS Engine, by Internet Explorer, old Edge (new one is Chromium based, and as such use V8) and some other Microsoft projects.
- JavaScriptCore is the built-in JavaScript engine for WebKit, browser engine developed by Apple and primarily
  used in its Safari web browser, as well as all iOS web browsers.
* IDE Visual Studio Code
- format, beautify	Alt+Shift+F
- terminal		Ctrl+`

Emacs
- autocompletion	Ctrl+'
** features
- Syntax highlighting
- Autocompletion
- Find and replace
- Code folding
- Rename refactoring
- Quickly extract code into separate function
- Code check and type check

Libraries support: https://code.visualstudio.com/docs/languages/javascript#_intellisense
- *jsconfig.json* in root folder
- React, lodash, express
- ynode

** TypeScript
does not include the TypeScript compiler, *tsc*
- npm install -g typescript
- tsc --version

* JSDoc
 in 1999 with the Netscape/Mozilla project Rhino

- @author 	Developer's name
- @constructor 	Marks a function as a constructor
- @deprecated 	Marks a method as deprecated
- @exception 	Synonym for @throws
- @exports 	Identifies a member that is exported by the module
- @param 	Documents a method parameter; a datatype indicator can be added between curly braces
- @private 	Signifies that a member is private
- @return 	Documents a return value
- @returns 	Synonym for @return
- @see 	Documents an association to another object
- @todo 	Documents something that is missing/open
- @this 	Specifies the type of the object to which the keyword "this" refers within a function.
- @throws 	Documents an exception thrown by a method
- @version 	Provides the version number of a library
#+BEGIN_SRC javascript
/**
 * Creates an instance of Circle.
 *
 * @constructor
 * @author: moi
 * @this {Circle}
 * @param {number} r The desired radius of the circle.
 */
function Circle(r) {
    /** @private */ this.radius = r;
    /** @private */ this.circumference = 2 * Math.PI * r;
}

/**
 * Creates a new Circle from a diameter.
 *
 * @param {number} d The desired diameter of the circle.
 * @return {Circle} The new Circle object.
 */
Circle.fromDiameter = function (d) {
    return new Circle(d / 2);
};

/**
 * Calculates the circumference of the Circle.
 *
 * @deprecated
 * @this {Circle}
 * @return {number} The circumference of the circle.
 */
Circle.prototype.calculateCircumference = function () {
    return 2 * Math.PI * this.radius;
};

/**
 * Returns the pre-computed circumference of the Circle.
 *
 * @this {Circle}
 * @return {number} The circumference of the circle.
 */
Circle.prototype.getCircumference = function () {
    return this.circumference;
};

/**
 * Find a String representation of the Circle.
 *
 * @override
 * @this {Circle}
 * @return {string} Human-readable representation of this Circle.
 */
Circle.prototype.toString = function () {
    return "A Circle object with radius of " + this.radius + ".";
};
#+END_SRC
* Security
cross-site scripting (XSS), which exploits the trust a user has for a particular site - Помещение своего HTML  кода на страницу.

Cross-site request forgery (CSRF) exploits the trust that a site has in a user's browser.

** related techs
- postMessage - HTML5, позволяет отсылать сообщения из одного окна в другое
- JSONP - JSON Padding
- CORS - XMLHTTPRequest 2
- document.domain methods
- window.name Transport - заключается в изменении свойста name у windows и передачи таким образом через текст
  свойства наших сериализованных данных
- Server-side proxy
- CRAZY IFRAME STUFF
- flash

#+BEGIN_SRC html
<!-- JSONP -->
<script type="application/javascript"
        src="http://server.example.com/Users/1234?callback=parseResponse">
</script>
parseResponse({"Name": "Foo", "Id": 1234, "Rank": 7}); // response

//g jQuery to dynamically inject script element
$.getScript("http://server.example.com/Users/192.168.73.96?callback=parseResponse");
#+END_SRC

** Same-origin policy - concept
permits *scripts* contained in a first web page to access data in a second web page, but only if both web pages
have the *same origin*:
- URI scheme
- host name
- port number

document.domain - property


* rare terms
- JavaScript Hoisting ::   default behavior of moving all declarations to the top of the current scope
- "use strict"; :: ставится в начале скрипта код - будет работать по современному стандарту ES5
- WebAssembly (Wasm) ::  binary format and assembly-like text format for executables used by web pages - 40
     programming languages - C/C++/Rust/Python - https://webassembly.org
- first-class object :: может использовать в качестве параметра функции и возвращаться
-  transpiling ::  transforming it into another language with a /similar level of abstraction/.
* TypeScript 15
 superset of JavaScript - Compiler written in TypeScript and compiled to JavaScript


** Features
Main:
-  to make large-scale JavaScript programs manageable and maintainable
- reuse code between browser and server
Features
- optional static typing - Type annotations and compile-time type checking - not planned in ES
- transcompiles to JavaScript
- Interfaces
- Enumerated types
- Generics - not planned in ES
- Namespaces
- Tuples
- Async/await
- Scopes - varibles not leak to global accidently [ˈæksɪdəntlɪ].

Solve:
- naming conflicts
- substandard programming tools
- complex modularization
- unfamiliar prototypal inheritance  that makes it hard to reuse common design patterns easily
- difficulty keeping a readable and  maintainable code base
** history
- 2004 Apache 2.0 License
- 2016 TypeScript 2.0 release - optionally prevent variables from being assigned null values,
** libraries
- jQuery
- D3.js -  Data-Driven Documents - producing dynamic, interactive data visualizations in web browsers
  - information dashboards for viewing data
  - maps from GIS
  -  interactive graphics

Frameworks:  Angular, Ionic, RxJs 5, and Dojo 2
** Types
Primitive:
- string – a sequence of UTF-16 code units
- boolean – true or false
- number – a double-precision 64-bit floating point value
- symbol – a unique, immutable symbol, substitutable for a string as an object key

Special:
- *undefined* - varible  not been assigned a value
- *null* - absence of an object value
- *void* - function doesn’t return anything
- *never* - represents an unreachable section of code, for example a function that throws an exception has the
  return type of never
- *any* - dynamic type - can be used to represent literally any type.  used by the compiler in situations where it cannot infer
  the type automatically

Other:
- *interface* - can be generic (with type argument)
- *Type alias* - type ...
- *Literal type* - type ...
- *Enum* - Enumerations. Constant enumeration - faster.
- union type - A | B
- intersection type - type A & B - useful with mixins

*** Type annotation, Interfaces, Aliases
#+BEGIN_SRC javascript
// array type annotation
const names: string[] = ['James', 'Nick', 'Rebecca', 'Lily'];

// function annotation with parameter type annotation and return type annotation
 let sayHello: (name: string) => string;

// implementation of sayHello function
sayHello = function (name) {    return 'Hello ' + name; };

// object type annotation
let person: {
    name: string;
    heightInCentimeters: number; };

// Implementation of a person object
 person = {
    name: 'Mark',
    heightInCentimeters: 183 };

//Union type
let union: boolean | number;
// Error: Type "string" is not assignable to type 'number | boolean'
union = 'string';

//Intersection type
type A = Integer & String;

//--------   Type Alias ------
type PersonType = {
    name: string;
    heightInCentimeters: number; };

//Literal type
type Randoms = 'Text' | 10 | false;
// OK
random = 'Text';
random = 10;
random = false;
// Error: Not assignable.
random = 'Other String';

//--------------- Interfaces -----------------

interface PersonInterface {
    name: string;
    heightInCentimeters: number;  }

const sherlock: PersonInterface = {
    name: 'Bendict',
    heightInCentimeters: 183 }

//------------ Enumerations -----------------

enum VehicleType {    PedalCycle,    MotorCycle  }
// split across multiple blocks
enum VehicleType {    XLarge,    XXLarge  }

const type = VehicleType.Lorry;

const typeName = VehicleType[type]; // 'Lorry'

//flagged & constant enumeration
const enum DiscFlags {
    None = 0,
    Drive = 1,
    Influence = 2,
    Steadiness = 4,
    Conscientiousness = 8 }

// Using flags
const var personality = DiscFlags.Drive | DiscFlags.Conscientiousness;
// Testing flags
var hasD = (personality & DiscFlags.Drive) == DiscFlags.Drive; //true
var hasI = (personality & DiscFlags.Influence) == DiscFlags.Influence; //false

#+END_SRC