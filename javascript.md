# Javascript notes

## About Javascript Media Types

They say it's not necessary to use `type=` in `<script>` because 
Javascript is the default, but I disagree. Fair enough, Javascript is 
the Current Thing™ right *now*, but how is the situation in 10 years or 
so? Some new fancy thing might come around and all old code has to be 
changed. Do it correctly now and avoid the pain later.

And then there's the big question: `application/javascript` or 
`text/javascript`? [RFC 
4329](https://www.rfc-editor.org/rfc/rfc4329.html) from 2006 says 
`text/javascript` is obsolete and that `application/javascript` should 
be used instead. I agree, Javascript is not text, but code. But RFC 4329 
is made obsolete by 
[draft-ietf-dispatch-javascript-mjs-17](https://datatracker.ietf.org/doc/html/draft-ietf-dispatch-javascript-mjs) 
from 2022 which says `text/javascript` should be used for historical 
reasons:

From [section 
2](https://datatracker.ietf.org/doc/html/draft-ietf-dispatch-javascript-mjs#section-2):

> The most widely supported media type in use is text/javascript; all 
> others are considered historical and obsolete aliases of 
> text/javascript.

and further down in section 2:

> Note that this use of the "text" media type tree willfully does not 
> align with its original intent per 
> \[[RFC2045](https://datatracker.ietf.org/doc/html/rfc2045)\]. The 
> reason for this is historical. 
> \[[RFC4329](https://datatracker.ietf.org/doc/html/rfc4329)\] 
> registered both the text/\* and application/\* types, marking the 
> text/\* ones obsolete. This was done to encourage people toward 
> application/\*, matching the guidance in 
> \[[RFC4288](https://datatracker.ietf.org/doc/html/rfc4288)\], the 
> predecessor to 
> \[[RFC6838](https://datatracker.ietf.org/doc/html/rfc6838)\]. Since 
> then, however, the industry widely adopted text/\* anyway. The 
> definitions in this document reflect the current state of 
> implementation across the JavaScript ecosystem, in web browsers and 
> other environments such as Node.js alike, in order to guarantee 
> backwards compatibility with existing applications as much as 
> possible. Future registrations should not view this as a repeatable 
> precedent.

So the proper thing to use is `text/javascript` even though it's 
inconsistent and wrong.

## Pitfalls

### Empty `<script>` elements don't work

`<script type="text/javascript" src="index.js" />` doesn't work, you'll 
need both a start and end element:

``` html
<script type="text/javascript" src="index.js"></script>
```

Not very intuitive, but there's probably a reason for it. A discussion 
about it can be found 
[here](https://stackoverflow.com/questions/69913/why-dont-self-closing-script-elements-work).

## Some exercises from <https://www.w3schools.com/js/>

### JS HTML DOM

#### Exercise 1

> Use the `getElementById` method to find the `<p>` element, and change
> its text to "Hello".

``` html
<p id="demo"></p>

<script type="text/javascript">
  document.getElementById("demo").innerHTML = "Hello";
</script>
```

#### Exercise 2

> Use the `getElementsByTagName` method to find the first `<p>` element,
> and change its text to "Hello".

``` html
<p id="demo"></p>

<script type="text/javascript">
  document.getElementsByTagName("p")[0].innerHTML = "Hello";
</script>
```

#### Exercise 3

> Change the text of the first element that has the class name "test".

``` html
<p class="test"></p>
<p class="test"></p>

<script type="text/javascript">
  document.getElementsByClassName("test")[0].innerHTML = "Hello";
</script>
```

#### Exercise 4

> Use HTML DOM to change the value of the image's src attribute.

``` html
<img id="image" src="smiley.gif">
<script type="text/javascript">
  document.getElementById("image").src = "pic_mountain.jpg";
</script>
```

## Lecture notes

This section might contain errors because the notes were taken live.

### Monday 2022-03-21 10:00

#### Methods

What is a method?

  - Function which is a property of an object
  - Two types:
    - Instance methods
      - Built-in

`.length` - Gives you the number of characters

`.indexOf`

  - Tells you where a string is in a longer string
  - Search for a word
  - `indexOf(whatYouWantToSearchFor)`

`.slice`

  - Slices a string
  - Returns a new string
  - `nameOfString.slice(startIndex)`

`.string.toLowerCase()`

`.replace`

  - Replaces one word with another
  - Returns a new string
  - `Text.replace(wantreplaces, wanttoreplacewith)`

`.concat`

  - Stitches together two strings
  - Returns a new string
  - Can take as many arguments as you want to
  - `text.concat(string1, string2, ...)`

#### Arrays

`.every`

  - Checks if _all_ the elements passes the test
  - Returns a bool
  - Needs a function as an argument
  - `array.every(function)`

`.fill`

  - Replaces elements
  - Doesn't have to be a number
  - Can specify start and stop
  - `array.fill(valuetoinsert, [indexStart, indexEnd])`

`.filter`

  - Creates a new array
  - Fills it with elements
  - `Array.filter(nameOfFunctionToRun)`

`.find`

  - Finds an element
  - Stops at the first
  - Returns undefined if it doesn't find anything
  - `array.find(nameOfFunction)`

`.forEach`

  - Runs a function for each element in the array
  - `nameOfArray.forEach(functionName)`

`.map`

  - Gives a new array
  - Fills it based on a function

`.push`

  - Pushes one or more elements
  - Places them at the end of the array
  - `.array.push(whatYouWantToAdd)`

`.splice`

  - Removes or replaces elements
  - Can also delete elements
  - Can be used to add an element at a specific index
  - `array.splice(indexWhereYouWantToStartTheSplice, 
    howManyItemsYouWanToDelete, itemToAdd)`

`.sort`

  - Sorts the elements
  - Converts the elements to strings before sorting

`.length`

  - Tells you the number of characters in the array

#### DOM

  - Document Object Model
  - Nodes

`getElementById`

  - Elements with the same name
  - `let nameOfCVartostoreoutput = document.getElementById(id);`

`getElementsByClassName`

  - Array-like list of child elements

`getElementsByName`

  - Returns a nodelist

`querySelector`

  - Returns first element match

`querySelectorAll`

  - Returns all elements that match in the DOM
  - Can not use number as an argument

NodeList vs HTML collection

  - Element
  - Text
  - CDATA section
  - Processing instruction
  - Comment
  - Document
  - Document tile
  - Document fragment

Difference

  - Nodelist can be any type of node
  - HTML collection _must_ be an element node
  - NodeList
    - `querySelectAll`
    - `getElementsByName`
  - HTML collection
    - `getElementsByClassName`
    - `getElementById`
    - `querySelector`

----

    File ID: b8bc16f0-a397-11ec-b4f6-4bbcd9b213f6
    vim: set ts=2 sw=2 sts=2 tw=72 et fo=tcqw fenc=utf8 :
    vim: set com=b\:#,fb\:-,fb\:*,n\:> ft=markdown :
