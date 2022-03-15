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

----

    File ID: b8bc16f0-a397-11ec-b4f6-4bbcd9b213f6
    vim: set ts=2 sw=2 sts=2 tw=72 et fo=tcqw fenc=utf8 :
    vim: set com=b\:#,fb\:-,fb\:*,n\:> ft=markdown :
