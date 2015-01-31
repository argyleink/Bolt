![bolt logo](https://dl.dropboxusercontent.com/u/6515442/hipsterlogogenerator_1422411720676.png)  
Logo courtesy of [HipsterLogoGenerator.com](http://www.hipsterlogogenerator.com/)


# Goal
Offer a grunt based, rather unopinionated, mobile first, front end, static site build system. It comes with [Jade](http://jade-lang.com/) & [Stylus](http://learnboost.github.io/stylus/) as default, but swap it for whatever you want easily. At the end of the day, it's [Grunt](http://gruntjs.com/), do whatever you want. 

![Build Status](https://travis-ci.org/argyleink/Bolt.svg?branch=master)

## Overview
This project's default setup is for deploying static sites to be hosted somewhere on the web. This could be a webview hybrid app, single page app, marketing site, who cares. This tool comes with all the tips, tricks, meta data, and automated tasks that help you build quick and efficient across browsers. Jade is setup for client side templating, ajax fragments, and of course a static page building. 

#### Quickstart
##### Have [Node.js](http://nodejs.org/)    
> NPM (will come with node.js download from link above)

##### Have [Grunt](http://gruntjs.com/)  
`npm install -g grunt-cli`

##### Optional [Bower](http://bower.io/)  
`npm install -g bower`
> A local copy of Bower is included in this system, for the Heroku integration aspects of this system. If you dont like Bower or don't plan to deploy to Heroku, then don't worry about Bower. But if you do like Bower, then do your thang. Just update `tasks/uglify.coffee` and point to the js file you want from the project.

##### **Install Bolt's required Node modules**:  
`npm install`  
> This will install all node modules, bower modules, run grunt and auto open the build in your default browser. Hot and ready to update when things change. See `package.json` for more.

##### **Open the project in Sublime:** `grunt subl`  
> If you don't have sublime, then ignore this feature! Or pull request an Atom grunt command?




## Features
#### Separate Prod and Dev builds.
Huge because dev builds produce legible debuggable code, and prod builds produce super tiny crunched and concatenated code, and super cache with a dynamically generated appcache. Easily test both builds locally before deployment. Know for a fact that you're deploying a solid build. I go as far as using non-minified libraries from Bower too, so that debugging my libs is possible. 

#### Sublime Text project file
For awesome IDE organization and normalization of settings. Set your projects tab indentation spacing, folder structure, etc. I've got it setup to hide all files that you shouldn't be editing, group all the config files, and more. I find this valuable.

`grunt subl` will open it for you =)

#### Clean Grunt task architecture
See the `tasks/` directory. All Grunt work is written in coffeescript because it's pretty, no other reason. Checkout the Gruntfile, notice no long file mess! Clean and easy to CRUD. Very easy task management, sharing, readability, etc.

#### Live Reload with [BrowserSync](http://www.browsersync.io/)
Get an automatic page reload when your HTML changes. Also get **hot CSS pushes** (no page reload) when stylus (or whatever you setup) files change. **This is huge!** As for JS, I've set it up to !auto reload, you can change this if you want in `watch.coffee`.

#### Local Server
Powered by [Watch](https://github.com/gruntjs/grunt-contrib-watch), [Connect](https://github.com/gruntjs/grunt-contrib-connect) and [BrowserSync](https://www.npmjs.org/package/grunt-browser-sync), don't worry about MAMP, Nginx or whatever, just start building the front end. Since it's using [BrowserSync](http://www.browsersync.io/), all your scrolling, clicks, and form input values are synced across all connected clients. Makes for some sick RWD web building, as well as QA. 

#### Build static sites like a boss
[Jade](http://jade-lang.com/) everywhere! Why learn 2-3 templating languages when you could be learning/using 1? [Jade](http://jade-lang.com/) is used in this build process for: 
- General HTML site generation
- AJAX intended pages
- [Client side templates](http://projects.jga.me/clientjade/)

#### Manage your Javascript like a boss
**Grunt + [Bower](bower.io) = awesome things** for your web app development. This project uses [Bower](bower.io) to manage front end assets, which I've found handles 95% of my use cases. You'll find everything installed from bower in `app/js/bower/`. From there, `tasks/uglify.coffee` makes a `lib.min.js` bundle for use in your app. Personally, I like to bundle my libs together (since they rarely change), and my app logic (since it changes a lot) separately. You can of course change this to whatever you want, just open up `tasks/uglify.coffee` and tell it how you want it.

This project also offers a solution for the %5 that falls outside bower's reach. Just drop any libraries into `app/js/libs` and they'll get scooped up into the `lib.min.js` file automagically. 

Also, this project comes with an [async script loader](http://www.dustindiaz.com/scriptjs) setup. So load scripts non blocking like a boss, and schedule or create module dependencies. 

#### Manage your styles like a boss
I prefer [Stylus](http://learnboost.github.io/stylus/) because it let's you write to the modern spec, unprefixed, and output really tight well formed CSS. I especially like the [@extend](http://learnboost.github.io/stylus/docs/extend.html) feature, that saves me lines of CSS by grouping selectors. Stylus also let's you easily import any CSS library, since it allows valid CSS to run through it's processor. I often put libraries pulled from Bower, into my `app/styles/master.styl` file, and let Stylus include and output 1 CSS file. 

This implementation also comes with [Nib](http://visionmedia.github.io/nib/) and is post-processed by [Autoprefixer](https://github.com/postcss/autoprefixer). Open up `tasks/stylus.coffee` to specify which target browsers you want to support in your CSS. This is a really powerful way to write minimal amounts of CSS, but output very powerful and compliant CSS. Autoprefixer removes all the cruft that Nib applies too. If you need IE7 support though, either remove Autoprefixr or specify the browsers you want to support! So rad!

**Browser hacks** are no fun, but we all write them. We want a site to look uniform across browsers. I've included in this project my personal preferred clientside method of fixing styles for browsers. It stuck for me becuase it's done in a way that prevents [FOUT](http://www.paulirish.com/2009/fighting-the-font-face-fout/), since the JS script `app/js/detect-and-fill.js` is evaluated before any other scripts are loaded, and it's loaded intentionally blocking. It blocks, detects which browser, and appends a script to the dom for immediate loading. So since this is all setup, you can now easily, on the client, fill iOS or Android layout issues, without causing any jank, and written easily with stylus. Enjoy. The other best alternative here, is server side detection and templating. Do this if you got the chops =). This clientside way is pretty awesome though. Never serve CSS to a browser that it won't use, block page painting until the new CSS is loaded, and lastly, do it all with vanilla js so there's no libs to load to fill, keeping it quick.

#### Mobile First
All includes styles are mobile first. There's some ground work laid out for you in `app/styles/stylus/vars.styl`. Set your brand color, responsive breakpoints, and other common variables you want to use in your CSS. 

#### Ready to Deploy
Heroku deploy ready, use this [Heroku grunt buildpack](https://github.com/mbuchetics/heroku-buildpack-nodejs-grunt) in your Heroku app settings. There's a custom heroku grunt task too, that compiles the super crunched prod site for your static heroku server. 

## Grunt Jobs
`grunt`  
Default task runs `grunt dev` but with notifications, a server, and BrowserSync. This creates a Live Reload environment, with legible code output for easy debugging, and is ready for rapid prototyping. Behind the scenes, the grunt watch command uses [grunt newer](https://github.com/tschaub/grunt-newer) so that it's only compiling or copying the files that have changed. 

`grunt dev`  
Legible js and css output, no server

`grunt prod`  
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
- [Stylus](https://github.com/gruntjs/grunt-contrib-stylus): Compiles all stylus files
- [Uglify](https://github.com/gruntjs/grunt-contrib-uglify): Crunches and combines javascript
- [Uncss](https://github.com/addyosmani/grunt-uncss): Optional part of the prod build, can potentially reduce file size greatly
- [Watch](https://github.com/gruntjs/grunt-contrib-watch): Runs tasks when certain files change

## Maintaining This
There's not much to maintaining this build system. There's only a few pieces of manual management, and it's around your choices of Javascript and CSS. If you add a bower package, go update the uglify task `tasks/uglify.coffee`. It needs to know what new libs there are, and how to want to load them. You will also want to spend time looking at `app/includes/scripts.jade`. 

For CSS, if you pull in a grid framework, for example. You'll want to update `app/styles/master.styl` to import that file. It's better that you manage your styles using stylus then importing lots of scripts into your page. But again, up to you. 

## Thanks
Nice of you to read this far lol, if you did. Hope this helps you build web apps like it has me. 

## Inspiration
- [Roots](http://roots.cx/)
- [Yeoman](http://yeoman.io/)
- [Google Web Starter Kit](https://developers.google.com/web/starter-kit/)
- [HTML5 Mobile Boilerplate](https://github.com/h5bp/html5-boilerplate)
