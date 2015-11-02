module.exports =
  prod:
    options:
      banner: "<%= meta.banner %>"
    files:
      "<%= build_dir %>/js/lib.min.js":         "<%= bower_files.js %>"
      "<%= build_dir %>/js/app.min.js":         "<%= app_files.js.app %>"
      # if you want 1 output file, use the below setup
      # "<%= build_dir %>/js/app.min.js": [
      #   "<%= bower_files.js %>"
      #   "<%= app_files.js.app %>"
      # ]

  # dev build is using jade imports for easy debug, see scripts.jade
  dev:
    options:
      mangle:           false
      compress:         false
      beautify:         true
      preserveComments: 'all'
      sourceMap:        true