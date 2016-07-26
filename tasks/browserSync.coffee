module.exports = 
  dev:
  	bsFiles:
  		src: [
  			"<%= dirs.build %>/styles/*"
  			"<%= dirs.build %>/**/*.html"
        "<%= dirs.build %>/js/**/*.js"
        "<%= dirs.build %>/js/lib.min.js"
  		]

  options:
    # http://www.browsersync.io/docs/options/
    watchTask:  true
    server:     "<%= dirs.build %>"
    open:       "<%= options.openBrowser %>"
    notify:     false
    online:     false
    minify:     false