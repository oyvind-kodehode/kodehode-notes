# Flexbox notes

## Introduction

[W3C Candidate Recommendation](https://www.w3.org/TR/css-flexbox/), last 
updated 2018-11-19.

Aims at being an effective way to lay out elements in a container, even 
when their size is unknown or dynamic. Automatically aligns and 
distributes space among the container items. The container's 
height/width can be adjusted on the fly and all objects should be 
distributed evenly in an effective way. If some objects are too large, 
they can be shrinked to avoid overflow.

Flexbox is agnostic about screen ratio, can be horizontal, vertical or 
squared.

## Flexbox or CSS Grid?

Flexbox is most suited to small-scale layouts, for larger scale layouts 
[CSS Grid](https://en.wikipedia.org/wiki/CSS_grid_layout) is more 
appropriate.

A [Google search](https://www.google.com/search?q=css+grid+vs+flexbox) 
for `css grid vs flexbox` says

> Grid and flexbox. The basic difference between CSS Grid Layout and CSS 
> Flexbox Layout is that flexbox was designed for layout in one 
> dimension - either a row or a column. Grid was designed for 
> two-dimensional layout - rows, and columns at the same time.

### Links

  - [CSS Grid vs. Flexbox: Which should you use and 
    when?](https://webdesign.tutsplus.com/articles/flexbox-vs-css-grid-which-should-you-use--cms-30184)
  - [Does CSS Grid replace 
    Flexbox?](https://css-tricks.com/css-grid-replace-flexbox/)

## Tutorials

### Text

  - [A complete guide to Flexbox | 
    CSS-Tricks](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)
  - [CSS Flexbox (Flexible Box) - 
    W3Schools](https://www.w3schools.com/css/css3_flexbox.asp)

### Video

  - [Learn Flexbox for free - 
    Scrimba.com](https://scrimba.com/learn/flexbox)
  - [Flexbox tutorial (CSS): Real layout 
    examples](https://www.youtube.com/watch?v=k32voqQhODc)
  - [Learn Flexbox in 20 minutes | Learn HTML & CSS | Flexbox 
    tutorial](https://www.youtube.com/watch?v=FTlczfR82mQ)
  - [CSS Flexbox tutorial | Learn to create layouts using CSS | Learn 
    HTML and CSS | Flexbox 
    tutorial](https://www.youtube.com/watch?v=0e02dl66PYo)

## Exercises

  - [Flexbox Froggy](https://flexboxfroggy.com/)

## Terminology

From [Wikipedia](https://en.wikipedia.org/wiki/CSS_Flexible_Box_Layout):

The following terms are associated with the flexbox layout model.

  - **Flex container**
    - Parent element that holds all flex items. Using the CSS display 
      property, the container can be defined as either flex or 
      inline-flex.
  - **Flex item**
    - Any direct child element held within the flex container is 
      considered a flex item. Any text within the container element is 
      wrapped in an unknown flex item.
  - **Axes**
    - Each flex box contains two axes: the main and cross axes. The 
      **main axis** is the axis on which the items align with each 
      other. The **cross axis** is perpendicular to the main axis.
  - **Flex-direction**
    - Establishes main axis. Possible arguments: row (default), 
      row-reverse, column, column-reverse.
  - **Justify-content**
    - Determines how content gets placed on the main axis on the current 
      line. Optional arguments: left, right, center, space-between, 
      space-around.
  - **Align-items**
    - Determines the default for how flex items get placed on the cross 
      axis on each line.
  - **Align-content**
    - Determines the default for how cross axis lines are aligned.
  - **Align-self**
    - Determines how a single item is placed along the cross axis. This 
      overrides any defaults set by align-items.

### Directions

  - **cross-start**
  - **cross-end**
    - The **cross-start/cross-end** sides determine where flex lines get 
      filled with flex items from cross-start to cross-end.
  - **main-start**
  - **main-end**
    - The **main-start/main-end** sides determine where to start placing 
      flex items within the flex container, starting from the main-start 
      end and going to the main-end end.
  - **Order**
    - Places elements in groups and determines which order they are to 
      be placed in within the container.
  - **Flex-flow**
    - Shorthands flex-direction and flex-wrap to place the flex content.

### Lines

  - **Lines**
    - Flex items can either be placed on a singular line or on multiple 
      lines as defined by the flex-wrap property, which controls both 
      the direction of the cross axis and how lines stack within the 
      container.

### Dimensions

  - **Main size**
  - **Cross size**
    - **Main size** and **cross size** are the height and width of the 
      flex container, each dealing with the main and cross axes 
      respectively.

----

    File ID: 3ff79482-a456-11ec-88a5-c977de6e8194
    vim: set ts=2 sw=2 sts=2 tw=72 et fo=tcqw fenc=utf8 :
    vim: set com=b\:#,fb\:-,fb\:*,n\:> ft=markdown :
