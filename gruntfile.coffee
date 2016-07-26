module.exports = (grunt) ->
  require("time-grunt")(grunt)
  require("jit-grunt")(grunt)
  require("./pug-inheritance.coffee")(grunt)

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
    "pug:dev"
    "copy:dev"
    "notify:dev"
    "asciify:dev"
    "browserSync"
    "watch"
  ]

  ### PRODUCTION
    command: grunt prod
      turbo crunch
      serve it local for smoke testing before you deploy or push
  ###
  grunt.registerTask "prod", [
    "clean"
    "stylus:prod"
    "pug:prod"
    "purifycss"
    "csso"
    "uglify"
    "image"
    "manifest"
    "copy:prod"
    "notify:prod"
    "connect:prod"
    "asciify:prod"
    "shell:open_prod"
    "watch"
  ]

  ### QUICK SERVER
    command: grunt serve --target=dev 
             OR 
             grunt serve --target=prod

    Serves either dev or prod directory builds
    #static #server
  ###
  target = grunt.option "target" or "dev"
  grunt.registerTask "serve", [
    "shell:open_#{target}"
    "connect:#{target}"
    "watch"
  ]

  ### STATIC PRODUCTION BUILD (example)
    command: grunt compile
    
    Turbo crunch but don't watch
    #static
  ###
  grunt.registerTask "compile", [
    "clean"
    "stylus:prod"
    "pug:prod"
    "purifycss"
    "csso"
    "uglify"
    "image"
    "manifest"
    "copy:prod"
    "asciify:done"
  ]
