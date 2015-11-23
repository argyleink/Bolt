module.exports =
  shrink: [
    "uglify"
    "csso"
    "imagemin"
    "svgmin"
  ]
  dev_serve: [
    "watch"
    "nodemon:dev"
    # "node-inspector"
  ]
  prod_serve: [
    "watch"
    "nodemon:prod"
  ]