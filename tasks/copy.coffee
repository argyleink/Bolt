module.exports =
  dev:
    files: [
      # copy app js
      expand: true
      cwd:    "<%= dirs.base %>/js"
      src:    ["*.js"]
      dest:   "<%= dirs.build %>/js"
    ,
      # copy app bower js
      expand: true
      cwd:    "<%= dirs.base %>"
      src:    "<%= app.js.lib %>"
      dest:   "<%= dirs.build %>/js/bower"
    ,
      # copy app bower css
      expand: true
      cwd:    "<%= dirs.base %>"
      src:    "<%= app.css.lib %>"
      dest:   "<%= dirs.build %>/styles/bower"
    ,
      # copy media/pictures/fonts
      expand: true
      cwd:    "<%= dirs.base %>/assets"
      src:    ["**/*"]
      dest:   "<%= dirs.build %>/assets"
    ,
      # copy app manifests, configs, crawlers, etc
      expand: true
      cwd:    "<%= dirs.base %>/"
      src:    "<%= app.assets %>"
      dest:   "<%= dirs.build %>/"
    ]

  prod:
    files: [
      ###
        prod mostly just copies assets (.txt, .mov, .mp3, etc)
        everything else is crunched and put in the build dir
      ###
      expand: true
      cwd:    "<%= dirs.base %>/"
      src:    "<%= app.assets %>"
      dest:   "<%= dirs.build %>/"
    ]