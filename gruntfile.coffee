module.exports = (grunt) ->
  require("time-grunt")(grunt)
  require("jit-grunt")(grunt)
  require("./jade-inheritance.coffee")(grunt)

  # load your tasks, allows them to be in separate files for cleanliness
  tasks = require("load-grunt-configs")(grunt, config: src: [
    "tasks/*.coffee"
  ])

  # Merge all tasks, build config together and then init
  grunt.initConfig grunt.util._.extend(tasks, require("./app.coffee")(grunt))

  ### DEVELOPMENT (default)
    command: grunt
      - compile everything, run server, and watch
      - nothing is smashed, source mapped, legible
  ###
  grunt.registerTask "default", [
    "clean"
    "stylus:dev"
    "jade:dev"
    "copy:dev"
    "notify:dev"
    "connect:dev"
    "asciify:dev"
    "browserSync"
    "watch"
  ]

  ### PRODUCTION
    command: grunt prod
      turbo crunch, minify all js files, let jade compress that html
      serve it local for smoke testing before you deploy or push
  ###
  grunt.registerTask "prod", [
    "clean"
    "stylus:prod"
    "jade:prod"
    "purifycss"
    "uglify"
    "concurrent:shrink"
    "manifest"
    "copy:prod"
    "notify:prod"
    "connect:prod"
    "asciify:prod"
    "shell:open_prod"
  ]

  ### QUICK SERVER
    command: grunt --serve=dev || grunt --serve=prod
      serve either dev or prod directory
  ###
  target = grunt.option "serve" or "dev"
  grunt.registerTask "serve", [
    "shell:open_#{target}"
    "connect:#{target}"
  ]

  ### STATIC PRODUCTION BUILD (example)
    command: grunt compile-prod
      compile everything for prod but don't watch
      comes in handy if you just want to output a static version, no server
  ###
  grunt.registerTask "compile", [
    "clean"
    "stylus:prod"
    "jade:prod"
    "purifycss"
    "uglify"
    "concurrent:shrink"
    "manifest"
    "copy:prod"
    "asciify:done"
  ]
