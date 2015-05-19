module.exports = 
  dev:
    files: [
      expand: true
      cwd:    "<%= app_dir %>/js"
      src:    ["*.js", "!shiv.js"]
      dest:   "<%= build_dir %>/js"
    ,
      expand: true
      cwd:    "<%= app_dir %>"
      src:    "<%= bower_files.js %>"
      dest:   "<%= build_dir %>"
    ,
      expand: true
      cwd:    "<%= app_dir %>/js"
      src:    "<%= bower_files.dev_css %>"
      dest:   "<%= build_dir %>/styles"
    ,
      expand: true
      cwd:    "<%= app_dir %>/assets"
      src:    ["**/*"]
      dest:   "<%= build_dir %>/assets"
    ,
      expand: true
      cwd:    "<%= app_dir %>/"
      src:    "<%= app_files.assets %>"
      dest:   "<%= build_dir %>/"
    ]

  prod:
    files: [
      # prod mostly just copies assets (.txt, .mov, .mp3, etc)
      # things that dont get crunched but are assets that need served
      expand: true
      cwd:    "<%= app_dir %>/"
      src:    "<%= app_files.assets %>"
      dest:   "<%= build_dir %>/"
    ]