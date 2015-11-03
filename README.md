<p align="center">
  <a href="http://www.hipsterlogogenerator.com/">
    <img src="https://dl.dropboxusercontent.com/u/6515442/hipsterlogogenerator_1422411720676.png"/>
  </a>
</p>

# Goal
Offer a **fast**, Grunt based, malleable build system. Use it for any project architecture. The project seed I've made here is a cache heavy, smart loading, mobile first, front end static site seed. It comes with [Jade](http://jade-lang.com/) & [Stylus](http://learnboost.github.io/stylus/) as defaults, but swap it for whatever you want, no limits. Or want more than 1 preprocessor, it's ready. At the end of the day, it's [Grunt](http://gruntjs.com/), do whatever you want. Add tasks, take care of business.

![Build Status](https://travis-ci.org/argyleink/Bolt.svg?branch=master)

## Overview
This project's default setup is for creating static sites to be hosted somewhere on the web. This could be a webview hybrid app, single page app, marketing site, who cares. This tool comes with all the tips, tricks, meta data, and automated tasks that help you build quick and efficient front ends across browsers.

#### Quickstart
- Have [Node.js](http://nodejs.org/) and NPM
- Have [Grunt](http://gruntjs.com/)
- Have [Bower](http://bower.io/)
- Optionally have the [Bolt CLI](https://github.com/argyleink/Bolt-cli)
- See the [Wiki](https://github.com/argyleink/Bolt/wiki)

##### **Install Bolt's required Node modules**:  
`npm i`  

## Build Features
- Dev builds are extremely legible, source mapped, and ready for debugging with your tools `grunt`
- Production builds squish the crap out [images,css,html,js,svg] `grunt --prod`
- Dev and Prod builds have their own output directory, they don't share a `dist/` folder. No need for each environments build to squash the other.
- Very fast, [concurrent Grunt tasks](https://github.com/argyleink/Bolt/blob/master/tasks/concurrent.coffee), with jit a plugin for really fast watch task running
- Concise [Grunt main file](https://github.com/argyleink/Bolt/blob/master/gruntfile.coffee)
- [Grunt tasks](https://github.com/argyleink/Bolt/tree/master/tasks) are individual, short, easy as hell to read, and a breeze to create
- DRY [Configuration file](https://github.com/argyleink/Bolt/blob/master/app.coffee) keeps project assets and plugins centralized
- [BrowserSync](http://www.browsersync.io) dev server syncs all your clicks, scrolls, and more during development
- BrowserSync live reload and hot css pushes for really rad fast front end crafting
- BrowserSync Weinre remote inspect built in
- Externally accessible server
- Proper [Jade inheritance](https://github.com/paulyoung/jade-inheritance) compilation, so 1 file changed doesn't require the whole project to compile
- Data driven front end with YAML, powerful combo YAML & Jade
- [Auto generated](https://github.com/argyleink/Bolt/blob/master/tasks/manifest.coffee) HTML5 appcache for production builds
- Autoprefixed stylus
- Git tagging and releasing `grunt bump`
- Easily create custom [build notifications](https://github.com/argyleink/Bolt/blob/master/tasks/notify.coffee)
- Customize your crunched files comment banner
- Ready to run custom [shell commands](https://github.com/argyleink/Bolt/blob/master/tasks/shell.coffee)
- Concurrent image crunching
- [Sublime project file](https://github.com/argyleink/Bolt/blob/master/app.sublime-project) for easy project editing and standards establishment
- Grunt [Heroku](https://github.com/argyleink/Bolt/wiki/Deployments) task for easy CI integration `grunt heroku`
- [CLI](https://github.com/argyleink/Bolt-cli) for easy setup of new projects `bolt new my_app`

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

#### Bolt Extras
- YAML data files are fed directly into your static site template system as JSON
- [Mobile first](https://github.com/argyleink/Bolt/blob/master/app/styles/base/_vars.styl)
- [Flexboxgrid](http://flexboxgrid.com/) library preloaded
- Jade [clientside templating](https://github.com/argyleink/Bolt/tree/master/app/_jade/client-templates) ready (Jade all the things!)
- Extensable [Jade page](https://github.com/argyleink/Bolt/blob/master/app/_jade/layouts/page.jade) structure
- Great [Stylus base](https://github.com/argyleink/Bolt/tree/master/app/styles)
- Tons of [mobile header](https://github.com/argyleink/Bolt/tree/master/app/_jade/includes/mobile) and icons, tested and ready
- HTML5 [manifest.json](https://github.com/argyleink/Bolt/blob/master/app/manifest.json)
- 404 page
- [Robots.txt](https://github.com/argyleink/Bolt/blob/master/app/robots.txt)

## Inspiration
- [Roots](http://roots.cx/)
- [Yeoman](http://yeoman.io/)
- [Google Web Starter Kit](https://developers.google.com/web/starter-kit/)
- [HTML5 Mobile Boilerplate](https://github.com/h5bp/html5-boilerplate)
