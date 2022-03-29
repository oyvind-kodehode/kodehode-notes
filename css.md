# CSS notes

## CSS Grid

### Tutorials

  - [A complete guide to Grid | CSS-Tricks](https://css-tricks.com/snippets/css/complete-guide-grid/)
  - [w3schools.com](https://w3schools.com/css)

### Articles

  - [Getting started with CSS Grid](https://css-tricks.com/getting-started-css-grid/)
  - [Articles tagged "grid" on css-tricks.com](https://css-tricks.com/tag/grid/)

## Lecture notes

### CSS opacity

The `opacity` can have values from 0 to 1.

The following example sets opacity to 0.5 for images when hovering with the 
mouse above it:

``` css
img { opacity: 0.5; }
img:hover { opacity: 1; }
```

`rgba()` = RGB value + alpha channel. For example:

``` css
rgba(134, 36, 226, 0.3)
```

### Printing

To create a special style for printing, use `<style media="print">`.

``` html
<link rel="stylesheet" href="style.css" media="print" type="text/css" />
```

### Other

`border-radius` creates round corners, can also create round images.

----

    File ID: 498be7e0-a529-11ec-aa6d-f12e5a7d320e
    vim: set ts=2 sw=2 sts=2 tw=79 et fo=tcqw fenc=utf8 :
    vim: set com=b\:#,fb\:-,fb\:*,n\:> ft=markdown :
