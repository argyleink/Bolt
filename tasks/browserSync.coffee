module.exports =
  dev:
  	bsFiles:
  		src: [
  			"<%= dirs.build %>/styles/*"
  			"<%= dirs.base %>/**/*.jade"
        # "<%= dirs.build %>/js/**/*.js"
  		]

  options:
    # http://www.browsersync.io/docs/options/
    watchTask:  true
    proxy:      "localhost:3030"
    notify:     false
    online:     false
    minify:     false
