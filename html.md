
# Table of Contents

1.  [glosary](#org9feacb4)
2.  [tags](#org15ede0c)
    1.  [tags that do not have a closing tag](#org4bf3d59)
    2.  [head tags](#org9f7e7f4)
    3.  [comment tag](#org67c0b81)
    4.  [text formating](#org716ec74)
    5.  [hyperlink and anchor](#org920c66d)
        1.  [<a>](#org820f409)
        2.  [<base>](#org1db902e)
    6.  [scripting](#orgc4e0814)
    7.  [images](#org02e85f2)
    8.  [Table Tags](#org1e2ff37)
    9.  [HTML Form Tags](#org716631f)
        1.  [tags](#org9413847)
        2.  [method attribute](#orgc373ea8)
    10. [structuring content](#org2b73541)
3.  [HTML Entities](#orgdf4d8d4)
4.  [basic template](#org875d52c)
5.  [snippets](#org1dc313e)
6.  [links](#org2a3a7f6)

;-**- mode: Org; fill-column: 110;-**-


<a id="org9feacb4"></a>

# glosary

-   Hyper Text Markup Language (HTML5) (aitch-tee-em-el)
-   HTML tags -
    -   opening tag
    -   attribute name
    -   attribute value
    -   enclosed tag content
    -   closing tag - with forward slash
    -   element - opening tag + closing tag
    -   less than and greater than angle brackets
-   Hyperlinks. The most common attribute used with links is href
-   Absolute URLs vs. Relative URLs - <https://www.w3.org/>  html<sub>images.asp</sub> or /css/default.asp
-   semantic and non-semantic - clear meaning for browser and developer, no meaning for developer
-   block-level element always starts on a new line, and the browsers automatically add some space (a margin)
    before and after the element. always takes up the full width available. <p>, <div>
-   inline element does not start on a new line.  only takes up as much width as necessary. <span>


<a id="org15ede0c"></a>

# tags


<a id="org4bf3d59"></a>

## tags that do not have a closing tag

For tags that do not have a closing tag like <img>, it is best practice to end the tag with a forward slash.

-   <br>
-   <hr> 	Represents thematic break between paragraph-level elements in the HTML document. If we use this, it will insert a horizontal line.


<a id="org9f7e7f4"></a>

## head tags

-   <meta> 	Describes the metadata of HTML page where it contains page description, author of the page, keywords.
    -   <meta charset="utf-8" />
    -   <meta name="viewport" content="width=device-width" />
-   <title>,<style>,<script>,<link>,<meta> and <base>.


<a id="org67c0b81"></a>

## comment tag

    <!-- Write your comments here -->


<a id="org716ec74"></a>

## text formating

-   heading <h1>, <h2>, <h3>, <h4>, <h5>, and <h6> - higher to lower
-   Paragraph Tag <p>
-   Preserve Formatting <pre> - keep \n and \t
-   <br>: It is used for a line break. after text
-   <b> bold
-   


<a id="org920c66d"></a>

## hyperlink and anchor


<a id="org820f409"></a>

### <a>

-   <a>: It is an anchor tag which is used to add a link in an HTML document for navigating from one page to another.
    -   <a href="url">link text</a>
    -   <a href="<mailto:someone@example.com>">Send email</a>
    -   <a href="default.asp"><img src="smiley.gif" alt="HTML tutorial" style="width:42px;height:42px;"></a>
    -   <button onclick="document.location='default.asp'">HTML Tutorial</button>
    -   <a href="#section2">Go to Section 2</a>
    -   <a href="javascript:alert('Hello World!');">Execute JavaScript</a>
    -   Attribute
        -   target
            -   \_self - Default. Opens the document in the same window/tab as it was clicked
            -   \_blank - Opens the document in a new window or tab
            -   \_parent - Opens the document in the parent frame
            -   \_top - Opens the document in the full body of the window
        -   title attribute - tooltip text when the mouse moves over the element.
        -   referrerpolicy - Specifies which referrer information to send with the link
        -   type 	media<sub>type</sub>  Specifies the media type of the linked document
        -   download attribute to provide a default save filename

1.  Default CSS Settings

        a:link, a:visited {
          color: (internal value);
          text-decoration: underline;
          cursor: auto;
        }
        
        a:link:active, a:visited:active {
          color: (internal value);
        }


<a id="org1db902e"></a>

### <base>

-   <base> tag specifies the base URL and/or target for all relative URLs in a document.

n  - <base> tag must have either an href or a target attribute present, or both.

-   used in <head>
-   href 	URL 	Specifies the base URL for all relative URLs in the page
-   target 	\_blank  \_parent \_self \_top Specifies the default target for all hyperlinks and forms in the page
    -   \_blank − the target URL will open in a new window.
    -   \_self − the target URL will open in the same frame as it was clicked.
    -   \_parent − the target URL will open in the parent frameset
    -   \_top − the target URL will open in the full body of the window
-   ex.
    -   <base href = "<https://www.tutorialspoint.com>" />


<a id="orgc4e0814"></a>

## scripting

-   <script> 	Describes client- side script that is JavaScript.
-   <noscript> 	When browsers do not support JavaScript or when scripts or disabled, you can use <noscript> tag.


<a id="org02e85f2"></a>

## images

-   <img src= "images&image;1.png" alt="Testing Image">
-   <canvas> 	This tag in HTML5 is used to draw graphics on web page using JavaScript.
-   <figcaption> 	This tag gives Caption to figure element. This can be placed as first or last child of <figure> element.
-   <figure> 	It defines media content with captions. Content of <figure> element belongs to main flow.
-   <svg> 	It is a language used to describe 2D graphics and graphical applications in XML.
-   <map> 	Represent map within <img> tag. And the image map contains clickable areas.
-   <area> 	It is used to define area inside an image-map, where it contains clickable region on an image map.
-   <object> 	It is used to embed multimedia in HTML documents like video, audio, Java applets, ActiveX, PDF, and Flash.


<a id="org1e2ff37"></a>

## Table Tags

<table> 	To define a Table in HTML.
<caption> 	To define a Table caption in HTML. It is like a name of the table
<th 	th is like "Table Head" to specify the header cell in the table. It is used to provide the Column name of a table.
<tr> 	tr is like "Table Row" to specify the row in a table. It is used for each row of a table.
<td> 	td is like "Table Data" to specify a cell in a table.
<thead> 	thead is like "Table Head" used to change the properties like the color of the Header content in HTML table. We can change the properties of the heading.
<tbody> 	tbody is like "Table Body" used to change the properties like the color of the content in the body in HTML table. We can change the properties of the body.
<tfoot> 	tfoot is like "Table footer" used to change the properties like the color of the footer content in HTML table. We can change the properties of a footer.
<col> 	Defines the properties of each column within colgroup.
<colgroup> 	It is used to specify a group of one or more columns in a table for formatting.


<a id="org716631f"></a>

## HTML Form Tags


<a id="org9413847"></a>

### tags

-   <form> 	Form is used in all the websites to collect information about user who visits your website.
-   <input> 	It is an input field where user can give there details in the given form.
-   <textarea> 	Represent a multi-line plain-text editing control.
-   <button> 	Creates various clickable buttons like submit, reset, cancel, ok and many more.
-   <select> 	Describes a drop-down list.
-   <optgroup> 	Display group of options related lists in the form of drop down list.
-   <option> 	Displays option in drop down list.
-   <label> 	Describes text label with a form input field.
-   <fieldset> 	To form related data in group <fieldset> element is used.
-   <legend> 	Represent caption of <fieldset> element.
-   <datalist> 	The pre-defined option is specified in drop down list.
-   <output> 	Declares results of calculation.


<a id="orgc373ea8"></a>

### method attribute

get

     <form action="/action_page.php" method="get">
      <label for="fname">First name:</label>
      <input type="text" id="fname" name="fname"><br><br>
      <label for="lname">Last name:</label>
      <input type="text" id="lname" name="lname"><br><br>
      <input type="submit" value="Submit">
    </form>
    <!-- https://www.w3schools.com/action_page.php?fname=asdasd&lname=asd -->

post 	Sends the form-data as an HTTP post transaction


<a id="org2b73541"></a>

## structuring content

With the right CSS, you could use pretty much any elements to wrap around the different sections and get it
looking how you wanted

A semantic element clearly describes its meaning to both the browser and the developer.

-   header: <header>.
-   navigation bar: <nav>.
-   main content: <main>, with various content subsections represented by <article>, <section>, and <div> elements.
-   sidebar: <aside>; often placed inside <main>.
-   footer: <footer>.

non-semantic

-   <span>
-   <div> is a block level non-semantic element


<a id="orgdf4d8d4"></a>

# HTML Entities

to display reserved characters in HTML.

-   &entity<sub>name</sub>; -  &lt; - <
-   &#entity<sub>number</sub>; - &#60; - <

basic:

-   - non-breaking space 	&nbsp; 	&#160;
-   < 	less than 	&lt; 	&#60;
-   > 	greater than 	&gt; 	&#62;
-   & 	ampersand 	&amp; 	&#38;
-   " 	double quotation mark 	&quot; 	&#34;
-   ' 	single quotation mark (apostrophe) 	&apos; 	&#39;


<a id="org875d52c"></a>

# basic template

-   <!DOCTYPE>
-   <html>
-   <head>
-   <title>
-   <body>
-   

    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
    <html>
     <head>
      <title>Example page</title>
      <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
     </head>
     <body>
      <h1>This is a heading</h1>
      <p>This is an <b>example</b> of a basic HTML page.</p>
     </body>
    </html>


<a id="org1dc313e"></a>

# snippets

-   emmet.io


<a id="org2a3a7f6"></a>

# links

-   <https://developer.mozilla.org/en-US/docs/Learn>

