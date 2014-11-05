module.exports =
  dev:
  	bsFiles:
  		src: [
  			"dist/styles/*"
  			"dist/*.html"
        "dist/js/lib.min.js"
  		]

  options:
  	watchTask: true
  	proxy: "0.0.0.0:3030"
