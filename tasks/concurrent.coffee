module.exports =
  makeLibs: [
    "shell:clientjade"
    "uglify:libs"
    "copy"
  ]
  stylusAndJade: [
    "stylus:debug"
    "jade:debug"
  ]