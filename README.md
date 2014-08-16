### Goal
Build a grunt based, rather unopinionated, front end build system. It starts with Jade & Stylus as default, but swap it for whatever you want easily.

### Setup
`npm install`  

### Requirements:
[Node.js](http://nodejs.org/)  
NPM (will come with node.js download from link above)  
[Grunt](http://gruntjs.com/)  

### Included
- Clean Grunt task architecture `tasks/`, coffeescript tasks (No long gruntfile crap!!)
- Grunt concurrent for fast task running
- Auto reload, watch, & file server built in
- Jade static HTML site generation
- Jade client side templating
- Stylus with Nib ready
- Bower library management, uses local bower (good for Heroku/etc)
- Mobile first & polyfill architecture
- Conditionally loads css clientside for varying mobile OS's (android.css, ios.css, etc)
- Google Analytics
- Customizable notifications for any build task
- Heroku deploy ready, use this [Heroku grunt buildpack](https://github.com/mbuchetics/heroku-buildpack-nodejs-grunt) in your Heroku app settings
- No HTML/CSS is checked in, keeps from lots of merge conflicts from happening
- Builds output to `dist/` and is self cleaning
- `ajax/` dir ready for Jade dynamic html

### Grunt Tasks
- `grunt`: default task runs `grunt dev` but with notifications, a server, and auto open in browser
- `grunt dev`: legible js and css output, no server
- `grunt prod`: runs all tasks with super crunch options turned on
- `grunt heroku`: runs prod tasks without a server
- `grunt bump` uses the version in package.json, increments it, and creates a .git tag

### Notes
After setup, subsequent app runs should be done with `grunt`  
Run `grunt -h` to see build tasks
