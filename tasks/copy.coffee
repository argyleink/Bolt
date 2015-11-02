module.exports =
  dev:
    files: [
      # copy app js
      expand: true
      cwd:    "<%= app_dir %>/js"
      src:    ["*.js"]
      dest:   "<%= build_dir %>/js"
    ,
      # copy app bower js
      expand: true
      cwd:    "<%= app_dir %>"
      src:    "<%= bower_files.js %>"
      dest:   "<%= build_dir %>"
    ,
      # copy app bower css
      expand: true
      cwd:    "<%= app_dir %>/js"
      src:    "<%= bower_files.dev_css %>"
      dest:   "<%= build_dir %>/styles"
    ,
      # copy media/pictures/fonts
      expand: true
      cwd:    "<%= app_dir %>/assets"
      src:    ["**/*"]
      dest:   "<%= build_dir %>/assets"
    ,
      # copy app manifests, configs, crawlers, etc
      expand: true
      cwd:    "<%= app_dir %>/"
      src:    "<%= app_files.assets %>"
      dest:   "<%= build_dir %>/"
    ]

  prod:
    files: [
      ###
        prod mostly just copies assets (.txt, .mov, .mp3, etc)
        everything else is crunched and put in the build dir
      ###
      expand: true
      cwd:    "<%= app_dir %>/"
      src:    "<%= app_files.assets %>"
      dest:   "<%= build_dir %>/"
    ]