![bolt logo](https://dl.dropboxusercontent.com/u/6515442/hipsterlogogenerator_1422411720676.png)  
Logo courtesy of [HipsterLogoGenerator.com](http://www.hipsterlogogenerator.com/)


# Goal
Offer a FAST, Grunt based, rather un-opinionated build system. Use it for whatever. The project seed I've made here is a cache heavy, smart loading, mobile first, front end static site project for ya. It comes with [Jade](http://jade-lang.com/) & [Stylus](http://learnboost.github.io/stylus/) as defaults, but swap it for whatever you want, easily. Or want more than 1 preprocessor, it's ready. At the end of the day, it's [Grunt](http://gruntjs.com/), do whatever you want. 

![Build Status](https://travis-ci.org/argyleink/Bolt.svg?branch=master)

## Overview
This project's default setup is for creating static sites to be hosted somewhere on the web. This could be a webview hybrid app, single page app, marketing site, who cares. This tool comes with all the tips, tricks, meta data, and automated tasks that help you build quick and efficient across browsers.

#### Quickstart
- Have [Node.js](http://nodejs.org/) and NPM
- Have [Grunt](http://gruntjs.com/)
- Have [Bower](http://bower.io/)

##### **Install Bolt's required Node modules**:  
`npm i`  

#### Build static sites like a boss
[Jade](http://jade-lang.com/) everywhere! Why learn 2-3 templating languages when you could be learning/using 1? [Jade](http://jade-lang.com/) is used in this build process for general HTML site generation and [Client side templates](http://projects.jga.me/clientjade/). Writes perfect HTML for you, clean when in dev mode. And perfectly crunched your HTML in production, getting rid of all white space, which can be critical. 

#### Bower Automation
**Grunt + [Bower](bower.io) = awesome things** for your web app development. This project uses [Bower](bower.io) to manage front end assets, which I've found handles 95% of my use cases. You'll find everything installed from bower in `app/js/bower/`, as well as automatically injected into your project js/styles.

## Inspiration
- [Roots](http://roots.cx/)
- [Yeoman](http://yeoman.io/)
- [Google Web Starter Kit](https://developers.google.com/web/starter-kit/)
- [HTML5 Mobile Boilerplate](https://github.com/h5bp/html5-boilerplate)
