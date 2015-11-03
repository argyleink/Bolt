module.exports = (grunt) ->
  JadeInheritance   = require('jade-inheritance')
  changedFiles      = []

  onChange = grunt.util._.debounce((->
    options = grunt.config "jade.dev.options"
    dependantFiles = []

    changedFiles.forEach (filename) ->
      inheritance = new JadeInheritance filename, options.basedir, options
      dependantFiles = dependantFiles.concat inheritance.files
      console.log dependantFiles

    config = grunt.config("jade.dev.files")[0]
    config.src = dependantFiles
    grunt.config 'jade.dev.files', [config]

    changedFiles = []
  ), 200)

  grunt.event.on 'watch', (action, filepath) ->
    changedFiles.push filepath
    onChange()
