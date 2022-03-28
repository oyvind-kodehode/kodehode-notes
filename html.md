# HTML notes

## `<nav>` element

From <https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nav>:

> `<nav>`: The Navigation Section element\
> The `<nav>` HTML element represents a section of a page whose purpose is to 
> provide navigation links, either within the current document or to other 
> documents. Common examples of navigation sections are menus, tables of 
> contents, and indexes.

### HTML

``` html
<nav class="crumbs">
    <ol>
        <li class="crumb"><a href="#">Bikes</a></li>
        <li class="crumb"><a href="#">BMX</a></li>
        <li class="crumb">Jump Bike 3000</li>
    </ol>
</nav>

<h1>Jump Bike 3000</h1>
<p>This BMX bike is a solid step into the pro world. It looks as legit as it 
rides and is built to polish your skills.</p>
```

### CSS

``` css
nav {
    border-bottom: 1px solid black;
}

.crumbs ol {
    list-style-type: none;
    padding-left: 0;
}

.crumb {
    display: inline-block;
}

.crumb a::after {
    display: inline-block;
    color: #000;
    content: '>';
    font-size: 80%;
    font-weight: bold;
    padding: 0 3px;
}
```

----

    File ID: 768ecc56-a468-11ec-829f-e1390173a2b6
    vim: set ts=2 sw=2 sts=2 tw=79 et fo=tcqw fenc=utf8 :
    vim: set com=b\:#,fb\:-,fb\:*,n\:> ft=markdown :
