module.exports =
  dev_StylusJadeUglify: [
    "uglify:dev"
    "stylus:dev"
    "jade:dev"
    "shell:clientjade"
  ]
  prod_StylusJadeUglify: [
    "uglify:prod"
    "stylus:prod"
    "jade:prod"
    "shell:clientjade"
  ]
  shrink: [
    "csso"
    "imagemin"
    "svgmin"
  ]