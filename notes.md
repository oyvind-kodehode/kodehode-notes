# Various notes <!-- {{{1 -->

File ID: `2fd61240-a37a-11ec-a7f4-71684d3bb1ba`

This file contains various random notes about several topics. If a section 
grows too big, it will be promoted to its own file.

## [Figma](https://figma.com) <!-- {{{2 -->

Rectangles: Hold shift when resizing and it will keep it square.
Libraries: Designs can be shared into the library pool and other people can 
"clone" it by pressing Duplicate.

## Legalspeak <!-- {{{2 -->

### GDPR (General Data Protection Regulation) <!-- {{{3 -->

The GDPR was adopted on 2016-04-14 and became enforceable beginning 2018-05-25.

Checkboxes should never be pre-selected, the user should always opt-in.

Users have the right to download their data from services.

WWDD – What Would Datatilsynet Do?

#### Links <!-- {{{4 -->

  - [General Data Protection Regulation (GDPR) – Official legal text](https://gdpr-info.eu/)
  - [Wikipedia](https://en.wikipedia.org/wiki/General_Data_Protection_Regulation)

### Plagiarism <!-- {{{3 -->

Originality vs plagiarism, where is the limit?

If a trademark can be confused with another in the same trade, it can be 
considered plagiarism.

#### Examples of similar logos <!-- {{{4 -->

Loen Skylift vs Voss Gondol. The court decided it was plagiarism because there 
are similar elements in the logo and they are in the same business.

Xeptor IT Distribution vs Norsk Tipping. The logo has the same shape, but the 
colors are different. It was not considered plagiarism because they're 
different trades.

Northug vs CSN Media AS.

Polestar vs Citroën. The logos are very different, but because there's a 
similar element (the angles) and they're both in the car business, it was 
considered plagiarism.

## [Next.js](https://nextjs.org/) <!-- {{{2 -->

Tutorial: <https://nextjs.org/learn-pages-router/basics/create-nextjs-app>

Init: `npx create-next-app@latest`

## [React](https://react.dev/) <!-- {{{2 -->

Tutorial: <https://react.dev/learn>

The start page is `src/App.js` when `create-react-app` is used, according to 
[this](https://stackoverflow.com/q/54412563/93279).

React component names must always start with a capital letter, while HTML tags 
must be lowercase.

## Scrimba <!-- {{{2 -->

Go to <https://html.new> to start a new Scrimba document.

## [VS Code](https://code.visualstudio.com/) <!-- {{{2 -->

### Musthave extensions <!-- {{{3 -->

  - [**Headwind**](https://marketplace.visualstudio.com/items?itemName=heybourn.headwind) 
    — An opinionated class sorter for Tailwind CSS
  - [**Tailwind CSS 
    IntelliSense**](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss) 
    — Intelligent Tailwind CSS tooling for VS Code
  - [**Vim**](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim) 
    — Vim emulation for Visual Studio Code

### Keyboard shortcuts <!-- {{{3 -->

- Ctrl+p -- command palette
  - Press `>` in the text area to get a list of preferences, etc.
  - `@` shows a "map" of the code
- Keyboard shortcuts
  - Ctrl+shift+`.`
  - Ctrl+g -- goto line
  - Ctrl+l -- mark lines
  - Doubleblick Ctrl -- create spotlight thing, used to show code to others
  - Ctrl+d+[mark word] -- create multicursor to change variable names, etc
  - Ctrl+k Ctrl+r -- show keyboard shortcuts
- `:input` -- shows input types
- Alt-z -- word wrap on/off

## [Webpack](https://webpack.js.org/) <!-- {{{2 -->

From <https://webpack.js.org/concepts/>:

> At its core, **webpack** is a *static module bundler* for modern JavaScript 
> applications. When webpack processes your application, it internally builds a 
> [dependency graph](/concepts/dependency-graph/) from one or more *entry 
> points* and then combines every module your project needs into one or more 
> *bundles*, which are static assets to serve your content from.

## Check out <!-- {{{2 -->

  - [Redux](https://redux.js.org/)
  - [MERN Stack](https://www.mongodb.com/mern-stack)
  - [Auth0](https://auth0.com/) (authentication tool, closed source)
  - Dynamic routing 
    ([useParams](https://reactrouter.com/docs/en/v6/hooks/use-params))
  - [Material UI (MUI)](https://mui.com/) (Commercial)
  - [Bootstrap](https://getbootstrap.com/)
  - [GraphCMS](https://graphcms.com/) (Commercial)
  - [Stripe](https://stripe.com)
  - [Socket.io](https://socket.io/)

## Useful tools <!-- {{{2 -->

  - [WhatTheFont](https://www.myfonts.com/WhatTheFont/) — Instant font 
    identification powered by the world’s largest collection of fonts.
    - Drop an image to identify which font is used in the image.
  - <https://wireframe.cc>
  - <https://clickup.com>
  - <https://codeacademy.com>
  - <https://coolors.co/> — Picks color palettes.
  - <https://www.codingame.com>
  - <https://luden.io/wtl/>

    <!--
    vim: set ts=2 sw=2 sts=2 tw=79 et fo=tcqw fenc=utf8 :
    vim: set com=b\:#,fb\:-,fb\:*,n\:> ft=markdown fdm=marker fdl=1 :
    -->
