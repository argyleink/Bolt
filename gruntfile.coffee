module.exports = (grunt) ->
  
  require("matchdep").filterDev("grunt-*").forEach grunt.loadNpmTasks
  require("time-grunt")(grunt)

  # load tasks
  options = 
    config:
      src: "tasks/*.coffee"
  configs = require("load-grunt-configs")(grunt, options)

  grunt.initConfig configs
  
  # compile everything and watch
  grunt.registerTask "default", [
    "clean" 
    "shell:clientjade"
    "concurrent:makeLibs" 
    "concurrent:stylusAndJade"
    "notify:appstarted"
    "shell:open_app"
    "connect"
    "watch"
  ]
  
  # compile everything for debug but don't watch
  grunt.registerTask "dev", [
    "clean" 
    "concurrent:makeLibs" 
    "concurrent:stylusAndJade"
  ]
  
  # for prod use, minify all js files, html is already compressed 
  grunt.registerTask "prod", [
    "shell:clientjade"
    "uglify:libs"
    "stylus:compile" 
    "jade:release"
    "uglify:prod"
    "cssc" 
    "notify:prod"
  ]
