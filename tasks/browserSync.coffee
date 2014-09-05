module.exports =
  dev:
  	bsFiles:
  		src: [
  			"dist/styles/*"
  			"dist/*.html"
  		]

  options:
  	watchTask: true
  	proxy: "0.0.0.0:3030"
