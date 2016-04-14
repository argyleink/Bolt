# function runs over watched jade files and send only a changed tree of files to the task
# this prevents your whole app from compiling on 1 file change, only necessary views compile!
module.exports = (grunt) ->
  JadeInheritance   = require "jade-inheritance"
  changedFiles      = []

  onChange = grunt.util._.debounce((->
    options         = grunt.config "pug.dev.options"
    dependantFiles  = []

    changedFiles.forEach (filename) ->
      inheritance     = new JadeInheritance filename, options.basedir, options
      dependantFiles  = dependantFiles.concat inheritance.files

    config      = grunt.config("pug.dev.files")[0]
    config.src  = dependantFiles
    grunt.config "pug.dev.files", [config]

    changedFiles = []
  ), 200)

  grunt.event.on "watch", (action, filepath) ->
    if filepath.includes ".pug"
      changedFiles.push filepath
      onChange()
