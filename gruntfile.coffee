module.exports = (grunt) ->
  
  # track the time it takes to run tasks
  require("time-grunt")(grunt)

  # while watching, only load the dep needed to take the grunt action
  require("jit-grunt")(grunt)

  # load your tasks, allows them to be in separate files for cleanliness
  tasks = require("load-grunt-configs")(grunt, config: src: "tasks/*.coffee")

  # loads file paths and other build configurations
  buildConfig = require("./build.coffee")(grunt)

  # Merge all tasks and build config together and then init
  grunt.initConfig grunt.util._.extend(tasks, buildConfig)

  # grab option, set default to dev if no option passed
  # for prod use `grunt --prod`
  option = if grunt.option("prod") == true then "prod" else "dev"

  ###
  grunt
  compile everything, run server, and watch
  nothing is smashed, find comments for line numbers in your precompressors
  should be totally out of your way, just awesome automated-ness

  grunt --prod
  turbo crunch, minify all js files, let jade compress that html 
  serve it local for smoke testing your features before you deploy or commit
  ###

  grunt.registerTask "default", [
    "asciify:headline"
    "clean" 
    "concurrent:#{option}_StylusJadeUglify" 
    "copy:#{option}"
    "notify:#{option}"
    "connect"
    "browserSync"
    "watch"
  ]

  # serve either dev or prod directory
  # run this if you've run prod or dev commands and want to serve the output
  grunt.registerTask "serve", [
    "asciify:headline"
    "shell:open_app"
    "connect:#{option}"
    "watch"
  ]

  # compile everything for debug but don't watch
  # comes in handy if you just want to output a static dev version, no server
  grunt.registerTask "dev", [
    "clean"
    "concurrent:dev_StylusJadeUglify" 
    "copy:dev"
  ]
  
  grunt.registerTask "test", [
    "concurrent:dev_StylusJadeUglify"
    "concurrent:prod_StylusJadeUglify"
    # "concurrent:shrink"
    "copy:dev"
  ]
  
  # hook into Heroku builds with this and the heroku grunt build pack
  # runs your prod tasks, no server, since that is defined in your heroku repo
  grunt.registerTask "heroku", [
    "clean"
    "concurrent:prod_StylusJadeUglify"
    "copy:prod"
    "concurrent:shrink"
    "asciify:build"
  ]

  # handy command for opening the project file in sublime
  # so you dont have to remember
  grunt.registerTask "subl", [
    "shell:open_sublime"
  ]
  