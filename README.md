### Goal
Build a grunt based, rather unopinionated, front end build system. It starts with Jade & Stylus as default, but swap it for whatever you want easily.

### Included
- Clean Grunt task architecture `tasks/`, coffeescript tasks (No long gruntfile crap!!)
- Grunt concurrent for fast task running
- `grunt dev`: legible js and css output
- `grunt prod`: super crunch
- Auto reload, watch, & file server built in
- Jade static HTML site generation
- Jade client side templating
- Stylus with Nib ready
- Bower library management, uses local bower (good for Heroku/etc)
- Mobile first & polyfill architecture
- Google Analytics script ready
- Customizable notifications
- Heroku deploy ready

### Setup
`npm install`  

### Requirements:
(Node.js)[http://nodejs.org/]  
NPM (will come with node.js download from link above) 
(Grunt)[http://gruntjs.com/]  

### Notes
After you've run setup, subsequent app runs should be done with `grunt`  
Run `grunt -h` to see build tasks
