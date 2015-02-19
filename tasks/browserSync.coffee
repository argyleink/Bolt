module.exports =
  dev:
  	bsFiles:
  		src: [
  			"<%= dev_build_dir %>/styles/*"
  			"<%= dev_build_dir %>/*.html"
        "<%= dev_build_dir %>/js/lib.min.js"
  		]

  options:
  	watchTask: true
  	proxy: "0.0.0.0:3030"
