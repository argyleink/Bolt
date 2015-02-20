module.exports =
  dev:
  	bsFiles:
  		src: [
  			"<%= build_dir %>/styles/*"
  			"<%= build_dir %>/*.html"
        "<%= build_dir %>/js/lib.min.js"
  		]

  options:
  	watchTask: true
  	proxy: "0.0.0.0:3030"
