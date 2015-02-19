module.exports =
  dev_StylusJade: [
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
    # "uncss"
    "imagemin"
    "svgmin"
    "manifest"
  ]