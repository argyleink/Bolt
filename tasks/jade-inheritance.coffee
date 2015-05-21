module.exports = (grunt, config) ->
  JadeInheritance   = require('jade-inheritance')
  changedFiles      = []
  base_dir          = config.app_dir
  jade_config       = config.app_files.jade[0]

  onChange = grunt.util._.debounce((->
    dependantFiles = []

    changedFiles.forEach (filename) ->
      inheritance = new JadeInheritance filename, base_dir, basedir: base_dir
      dependantFiles = dependantFiles.concat inheritance.files

    jade_config.src = dependantFiles
    grunt.config 'jade.compile.files', [ jade_config ]
    changedFiles = []
  ), 200)

  grunt.event.on 'watch', (action, filepath) ->
    changedFiles.push filepath
    onChange()
