module.exports = (grunt) ->
  require("time-grunt")(grunt)
  require("jit-grunt")(grunt)
  require("./jade-inheritance.coffee")(grunt)

  # loads file paths and other build configurations
  buildConfig = require("./app.coffee")(grunt)

  # load your tasks, allows them to be in separate files for cleanliness
  tasks = require("load-grunt-configs")(grunt, config: src: [
    "tasks/*.coffee"
  ])

  # Merge all tasks and build config together and then init
  grunt.initConfig grunt.util._.extend(tasks, buildConfig)

  # grab option, set default to dev if no option passed
  env = if grunt.option("prod") == true then "prod" else "dev"

  ###
    grunt
      compile everything, run server, and watch
      nothing is smashed, find comments for line numbers in your precompressors
      should be totally out of your way, just awesome automated-ness

    grunt --prod
      turbo crunch, minify all js files, let jade compress that html
      serve it local for smoke testing your features before you deploy or commit
  ###

  grunt.registerTask "default", "Master task", ->
    grunt.task.run [
      "clean"
      "stylus:#{env}"
    ]
    if env == "prod" then grunt.task.run ["purifycss", "concurrent:shrink", "manifest"]

    grunt.task.run [
      "copy:#{env}"
      "notify:#{env}"
      "asciify:headline"
    ]

    if env != "prod" then grunt.task.run "browserSync"
    if env == "prod" then grunt.task.run "shell:open_#{env}"

    grunt.task.run "concurrent:#{env}_serve"

  ###
    serve either dev or prod directory
    run this if you've run prod or dev commands and want to serve the output
  ###
  grunt.registerTask "serve", [
    "shell:open_#{env}"
    "connect:#{env}"
    "watch"
  ]

  ###
    compile everything for debug but don't watch
    comes in handy if you just want to output a static dev version, no server
  ###
  grunt.registerTask "dev", [
    "clean"
    "concurrent:dev_StylusJadeUglify"
    "copy:dev"
  ]

  ###
    hook into Heroku builds with this and the heroku grunt build pack
    runs your prod tasks, no server, you'll need to create a node static file server
  ###
  grunt.registerTask "heroku", [
    "clean"
    "stylus:prod"
    "jade:prod"
    "purifycss"
    "concurrent:shrink"
    "manifest"
    "copy:prod"
    "asciify:build"
  ]
