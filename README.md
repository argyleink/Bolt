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
> This will install all node modules, bower modules, run grunt and auto open the build in your default browser. Hot and ready to update when things change. See `package.json` for more.

##### **Open the project in Sublime:** `grunt subl`  
> If you don't have sublime, then ignore this feature. Or, pull request your favorite app's open project file command!




## Features

#### Clean and scale-able project structure
```folder
app/
  _jade/
	client-templates/
    includes/
	  mobile/
      svg/
    layouts/
    mixins/
  assets/
	icons/
    images/
    video/
    ...
  js/
	bower/
    app.js
    ...
  styles/
	base/
    browser/
    mixins/
    modules/
```
You'll notice a few different things in this folder structure. 

`assets/`  
Isn't a normal folder name, but I got tired of keeping track of random folders like `audio/` or `fonts/` and not having a consistent location for them. Introducing, `assets/` lol. All of this crap get's copied over during a build, makes it an easy clean sweep.

`_jade/`  
Isn't normal either. I want to separate it from the legibility of the project structure, without putting it somewhere not contexual. In here, you'll see `client-templates/` which are your `.jade` files for turning into `templates.js` for use in the front end. They share mixins and layout properties with your static website, so you can build your dynamic HTML with the exact same tools as your static website. Hook up ExpressJS and go isomorphic if you want too! 

`svg/`  
Oh yeah, and don't miss where you can stash your re-useable SVG .jade files for **inline use** in your files. The code is so ugly I don't like it to be anywhere in a .jade file that I expect someone to read.


#### Separated prod/dev build directories and jobs

```folder
build/
  dev/
  www/
```

Huge because dev builds produce **legible debuggable** code. While prod builds produce **turbo crunched and concatenated** code, also served super cached with a dynamically generated appcache manifest. Sucks to untest a site that uses appcache manifests, cuz man they're effective.

Easily test both builds locally before deployment. `grunt` for a dev build, and `grunt --prod` for turbo crunched. Each launch their own local server, so you know for a fact that you're deploying a solid build. 

#### Sublime Text project file
For awesome IDE organization and normalization of settings. Set your projects tab indentation spacing, folder structure, etc. I've got it setup to hide all files that you shouldn't be editing, group all the config files, and more. I find this valuable.

`grunt subl` will open it for you =)

#### Easy Build config file
See `app.coffee`. Manage all your configuration and files in 1 location: jade, stylus, etc. This is simpler than having them scattered around, and it also enables Jade and Stylus to receive config data and use it in your templates or functions.

#### Clean Grunt task architecture
See the `tasks/` directory. All Grunt work is written in coffeescript because it's pretty, no other reason. Checkout the Gruntfile, notice no long file mess! Clean and easy to CRUD. Very easy task management, sharing, readability, etc. Some people clone Bolt just for this ;)

#### Live Reload with [BrowserSync](http://www.browsersync.io/)
Get an automatic page reload when your HTML changes, and get **hot CSS pushes** (no page reload) when stylus (or whatever you setup) files change. **This is huge!** As for javascript, I've set it up to !auto reload the page, you can change this if you want in `watch.coffee`. Or setup your choice of [javascript packagers](http://webpack.github.io/), and get some hot js pushes too.

#### Bower Power
Thanks to [wiredep](https://github.com/taptapship/wiredep), passes those dependencies on to Stylus and Jade, where the array is turns into imports, links and scripts. Badass.

A local copy of Bower is included in this system, for the Heroku integration aspects of this system. If you dont like Bower or don't plan to deploy to Heroku, then don't worry about Bower. But if you do like Bower, then do your thang.

#### Local Server
Powered by [Watch](https://github.com/gruntjs/grunt-contrib-watch), [Connect](https://github.com/gruntjs/grunt-contrib-connect) and [BrowserSync](https://www.npmjs.org/package/grunt-browser-sync), don't worry about MAMP, Nginx or whatever, just start building the front end. Since it's using [BrowserSync](http://www.browsersync.io/), all your scrolling, clicks, and form input values are synced across all connected clients. Makes for some sick RWD web building, as well as QA. Open BrowserSync's local web interface with `http://localhost:3001`

#### Build static sites like a boss
[Jade](http://jade-lang.com/) everywhere! Why learn 2-3 templating languages when you could be learning/using 1? [Jade](http://jade-lang.com/) is used in this build process for general HTML site generation and [Client side templates](http://projects.jga.me/clientjade/). Writes perfect HTML for you, clean when in dev mode. And perfectly crunched your HTML in production, getting rid of all white space, which can be critical. 

#### Manage your Javascript like a boss
**Grunt + [Bower](bower.io) = awesome things** for your web app development. This project uses [Bower](bower.io) to manage front end assets, which I've found handles 95% of my use cases. You'll find everything installed from bower in `app/js/bower/`.

#### Manage your styles like a boss
I prefer [Stylus](http://learnboost.github.io/stylus/) because it let's you write to the modern spec, unprefixed, and output really tight well formed CSS. I especially like the [@extend](http://learnboost.github.io/stylus/docs/extend.html) feature, that saves me lines of CSS by grouping selectors. Stylus also let's you easily import any CSS library, since it allows valid CSS to run through it's processor.

This implementation also comes with [Nib](http://visionmedia.github.io/nib/) and [Axis](http://axis.netlify.com/). The result is post-processed by [Autoprefixer](https://github.com/postcss/autoprefixer). Open up `tasks/stylus.coffee` to specify which target browsers you want to support in your CSS. This is a really powerful way to write minimal amounts of CSS, but output very powerful and compliant CSS. Autoprefixer removes all the cruft that Nib applies too. If you need IE7 support though, either remove Autoprefixr or specify the browsers you want to support! So rad!

**Browser hacks** are no fun, but we all write them. We want a site to look uniform across browsers. I've included in this project my personal preferred clientside method of fixing styles for browsers. It stuck for me becuase it's done in a way that prevents [FOUT](http://www.paulirish.com/2009/fighting-the-font-face-fout/) or other CSS adjustments, since the JS script `app/js/detect-and-fill.js` is evaluated before any other scripts are loaded, and it's loaded intentionally blocking. It blocks, detects which browser, and appends a script to the dom for immediate loading. So since this is all setup, you can now easily, on the client, fill iOS or Android layout issues, without causing any jank, and written easily with stylus. Enjoy. The other best alternative here, is server side detection and templating. Do this if you got the chops =), all of it is fun right!? This clientside way is pretty awesome though I've experienced. Never serve CSS to a browser that it won't use, block page painting until the new CSS is loaded, and lastly, do it all with vanilla js so there's no libs to load to fill, keeping it quick.

#### Mobile First
All includes styles are mobile first. There's some ground work laid out for you in `app/styles/stylus/vars.styl`. Set your brand color, responsive breakpoints, and other common variables you want to use in your CSS. 

#### Ready to Deploy
Heroku deploy ready, use this [Heroku grunt buildpack](https://github.com/mbuchetics/heroku-buildpack-nodejs-grunt) in your Heroku app settings. There's a custom heroku grunt task too, that compiles the super crunched prod site for your static heroku server. 

## Grunt CLI
`grunt`  
Default task runs `grunt dev` but with notifications, a server, and BrowserSync. This creates a Live Reload environment, with legible code output for easy debugging, and is ready for rapid prototyping. Behind the scenes, the grunt watch command uses [grunt newer](https://github.com/tschaub/grunt-newer) so that it's only compiling or copying the files that have changed. 

`grunt dev`  
Legible js and css output, no server

`grunt --prod`  
Runs all tasks with super crunch options turned on, and also runs a server so you can test the build in browser. This will also include an appcache manifest, so your visitors will get a super cached browser experience. 

`grunt heroku`  
Runs prod tasks without a server. So produces super crunched up html/css/js, ready to be dropped onto a server somewhere and served up.

`grunt bump`  
Uses the version in package.json, increments it, and creates a .git tag. Awesome for lazy release creation. Easily add it to `grunt prod` if you want to. 

`grunt subl`
Opens the `app.sublime-project` file. AKA `open app.sublime-project` or `subl app.sublime-project`. Just forget about it.

## Grunt Tasks
- [BrowserSync](http://www.browsersync.io/): Proxy to a local server, sync interactions, hot push CSS
- [Bump](https://github.com/vojtajina/grunt-bump): Use grunt to manage your releases, easily make this part of your prod build job
- [Clean](https://github.com/gruntjs/grunt-contrib-clean): Wipes the build directory
- [Concurrent](https://github.com/sindresorhus/grunt-concurrent): Runs jade/stylus/copy tasks in parallel to keep the build fast
- [Connect](https://github.com/gruntjs/grunt-contrib-connect): Static web server
- [Copy](https://github.com/gruntjs/grunt-contrib-copy): Copy images, js, and more to the build directory
- [Imagemin](https://github.com/gruntjs/grunt-contrib-imagemin): Minifies images in the prod build job
- [Jade](https://github.com/gruntjs/grunt-contrib-jade): Compiles templates, site, and ajax content
- [Manifest](https://github.com/gunta/grunt-manifest): Create an appcache manifest automatically
- [Notify](https://github.com/dylang/grunt-notify): Custom notifications when build jobs complete
- [Shell](https://github.com/sindresorhus/grunt-shell): Run custom shell commands from grunt, this can do all sorts of good stuff
- [Stylus](https://github.com/gruntjs/grunt-contrib-stylus): Compiles all stylus files, with source maps during dev.
- [Uglify](https://github.com/gruntjs/grunt-contrib-uglify): Crunches and combines javascript
- [CSSo](https://github.com/css/csso): Stylus doesnt do the best crunching, CSSo does amazing things to your css before sending it to production.
- [Watch](https://github.com/gruntjs/grunt-contrib-watch): Runs tasks when certain files change

## Thanks
Nice of you to read this far lol, if you did. Hope this helps you build web apps like it has me. 

## Inspiration
- [Roots](http://roots.cx/)
- [Yeoman](http://yeoman.io/)
- [Google Web Starter Kit](https://developers.google.com/web/starter-kit/)
- [HTML5 Mobile Boilerplate](https://github.com/h5bp/html5-boilerplate)
