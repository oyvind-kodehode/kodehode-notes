# PWA – Progressive Web Applications

Foredrag av Endre 2022-03-16.

PWA står for «Progressive Web Applications».

  - Apps til mobilplatformer har tradisjomnelt blitt programmert i
    - Java og Kotlin til Android
    - Swift og Objective-C til iOS/Apple

PWA lar deg lage apps til Android og iPhone med HTML, CSS og Javascript.

Dukker opp automatisk med støttede ettlesere (Chrome, Safari og Firefox) 
hvis nettsiden din tilfredsstiller kravene til PWA.

## Hva kreves for å kvalifisere som PWA?

  - HTTPS.
  - Service worker. Det er en funksjon i browserens API som registreres 
    i en javascriptfil. En service worker vil gi deg tilgang til native 
    funksjoner i browseren, f.eks mer tilgang til cachen.
  - Web App Manifest.

## Fordeler med PWA vs native apps

  - Lettere å utvikle. Kodebasen er mindre, er lettere å få tak i 
    javascript- og HTML-utviklere.
  - Lettere å vedlikeholde. bl.a. fordi det er javascript i bånn.
  - Kryssplatform.
  - Ofte mye raskere enn native apps.
  - Mye mindre i størrelse. Det er historier om selskaper som har gått 
    over til PWA og det er ofte tall som 99.7% mindre størrelse.
  - Framtidsrettet. Flere og flere av de store firmaene har prøvd ut 
    pwa-løsninger og har gode resultater i forhold til salg. Flere 
    forlater ikke appen fordi appen er mer responsiv.

## Bakdeler med PWA vs native apps

  - Noe begrenset støtte i Safari/iOS.
  - Begrenset tilgang til native device-funksjoner. F.eks. kamera.
  - Dårligere ytelse på grafikktunge spill.

## Fremtiden

Flere store firma jobber nå med å bytte ut sine tradisjonelle mobilapper 
med PWA-versjoner.

Fra <https://web.dev/what-are-pwas>:

> The numbers don't lie! Companies that have launched Progressive Web 
> Apps have seen impressive results. For example, Twitter saw a 65% 
> increase in pages per session, 75% more Tweets, and a 20% decrease in 
> bounce rate, all while reducing the size of their app by over 97%. 
> After switching to a PWA, Nikkei saw 2.3 times more organic traffic, 
> 58% more subscriptions, and 49% more daily active users. Hulu replaced 
> their platform-specific desktop experience with a Progressive Web App 
> and saw a 27% increase in return visits.

Starbucks sin PWA-app er 99.84% mindre enn den eksisterende iOS-appen.

## Links

  - [12 Best Examples of Progressive Web Apps (PWAs) in 2022](https://simicart.com/blog/progressive-web-apps-examples/)

----

    File ID: 4b754cac-a521-11ec-8e08-d9b675428045
    vim: set ts=2 sw=2 sts=2 tw=72 et fo=tcqw fenc=utf8 :
    vim: set com=b\:#,fb\:-,fb\:*,n\:> ft=markdown :
