module.exports = (grunt) ->
  
  require("matchdep").filterDev("grunt-*").forEach grunt.loadNpmTasks
  require("time-grunt")(grunt)
  require("jit-grunt")(grunt)

  # load tasks
  options = 
    config:
      src: "tasks/*.coffee"
  configs = require("load-grunt-configs")(grunt, options)

  grunt.initConfig configs
  
  # compile everything, run server, and watch
  # nothing is smashed, find comments for line numbers in your precompressors
  # should be totally out of your way, just awesome automated-ness
  grunt.registerTask "default", [
    "asciify:headline"
    "clean" 
    "shell:clientjade"
    "concurrent:makeLibs" 
    "concurrent:stylusAndJade"
    "notify:appstarted"
    # "shell:open_app"
    "connect"
    "browserSync"
    "watch"
  ]

  # serve static dist/ directory
  # run this if you've run prod or dev commands and want to serve the output
  grunt.registerTask "serve", [
    "asciify:headline"
    "shell:open_app"
    "connect"
    "watch"
  ]
  
  # compile everything for debug but don't watch
  # comes in handy if you just want to output a static dev version, no server
  grunt.registerTask "dev", [
    "clean"
    "shell:clientjade"
    "concurrent:makeLibs" 
    "concurrent:stylusAndJade" 
  ]
  
  # for prod use, minify all js files, html is already compressed 
  # serve it local, no browsersync, just static folder
  # for smoke testing your features before you deploy or commit
  grunt.registerTask "prod", [
    "clean"
    "shell:clientjade"
    "uglify:libs"
    "stylus:compile" 
    "jade:release"
    "uncss"
    "uglify:prod"
    "imagemin"
    "svgmin"
    "manifest"
    "notify:prod"
    "connect"
    "watch"
  ]

  # hook into Heroku builds with this and the heroku grunt build pack
  # runs your prod tasks
  grunt.registerTask "heroku", [
    "clean"
    "shell:clientjade"
    "copy" 
    "stylus:compile"
    "jade:release" 
    "uncss"
    "uglify:prod"
    "imagemin"
    "svgmin"
    "manifest"
    "asciify:build"
  ]

  # handy command for opening the project file in sublime
  # so you dont have to remember
  grunt.registerTask "subl", [
    "shell:open_sublime"
  ]
