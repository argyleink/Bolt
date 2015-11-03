module.exports =
  dev:
  	bsFiles:
  		src: [
  			"<%= dirs.build %>/styles/*"
  			"<%= dirs.build %>/*.html"
        # "<%= dirs.build %>/js/**/*.js"
        "<%= dirs.build %>/js/lib.min.js"
  		]

  options:
    # http://www.browsersync.io/docs/options/
    watchTask:  true
    proxy:      "0.0.0.0:3030"
    notify:     false
    online:     false
    minify:     false