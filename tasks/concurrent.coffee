module.exports =
  dev_Preprocessors: [
    "stylus:dev"
    "jade:dev"
  ]
  prod_Preprocessors: [
    "stylus:prod"
    "jade:prod"
  ]
  shrink: [
    "uglify:prod"
    "csso"
    "imagemin"
    "svgmin"
  ]