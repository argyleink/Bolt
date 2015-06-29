module.exports =
  options:
    logConcurrentOutput: true
  dev_StylusJadeUglify: [
    "uglify:dev"
    "stylus:dev"
    "shell:clientjade"
  ]
  prod_StylusJadeUglify: [
    "uglify:prod"
    "stylus:prod"
    "shell:clientjade"
  ]
  shrink: [
    "csso"
    "imagemin"
    "svgmin"
  ]
  dev_serve: [
    "watch"
    "nodemon:dev"
    "node-inspector"
  ]
  prod_serve: [
    "watch"
    "nodemon:prod"
  ]