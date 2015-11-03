module.exports =
  dev:
  	bsFiles:
  		src: [
  			"<%= dirs.build %>/styles/*"
  			"<%= dirs.build %>/*.html"
        "<%= dirs.build %>/js/lib.min.js"
  		]

  options:
  	watchTask: true
  	proxy: "0.0.0.0:3030"
