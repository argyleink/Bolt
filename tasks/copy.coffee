module.exports =
  dev:
    files: [
      # copy app bower css
      expand: true
      cwd:    "<%= dirs.base %>"
      src:    "<%= app.css %>"
      dest:   "<%= dirs.build %>"
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
      src:    "<%= app.resources %>"
      dest:   "<%= dirs.build %>/"
    ]

  prod:
    files: [
      expand: true
      cwd:    "<%= dirs.base %>/"
      src:    "<%= app.resources %>"
      dest:   "<%= dirs.build %>/"
    ]