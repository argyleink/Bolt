module.exports = (grunt) ->
  # load in data from your package.json to be supplied to templates
  pkg: grunt.file.readJSON("./package.json")

  # choose your own directory structure, bower folder, etc
  dirs:
    base:   "app"
    build:  "build/" + if grunt.option("prod") then "www" else "dev"
    bower:  "/js/bower"

  # This is the comment that is placed at the top of compiled files
  banner:
    "/**\n" +
    "  <%= pkg.name %> - v<%= pkg.version %>\n" +
    "  Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author %>\n" +
    "**/\n"

  # This is a collection of files for reference in our tasks
  app:
    js: [
      # "js/bower/bower_package/bower_file_you_need.js"
      "js/app.js"
    ]

    css: [
      "js/bower/flexboxgrid/dist/flexboxgrid.css"
    ]

    ###
      The `resources` property holds any resources to be copied along
      with our app's resources: key files, whatever
    ###
    resources: [
      "robots.txt"
      "manifest.json"
    ]

    ###
      Below manage your preprocessor file locations and files
    ###
    jade: [
      expand: true
      cwd:    "<%= dirs.base %>"
      src:    "*.jade"
      dest:   "<%= dirs.build %>"
      ext:    ".html"
    ]

    stylus: [
      "<%= dirs.build %>/styles/app.css":        "<%= dirs.base %>/styles/master.styl"
      # below you can create your own additional css files for browser hacks, polyfills, etc
      # "<%= dirs.build %>/styles/ios.css":      "<%= dirs.base %>/styles/browser/ios.styl"
      # "<%= dirs.build %>/styles/ie10.css":     "<%= dirs.base %>/styles/browser/ie10.styl"
      # "<%= dirs.build %>/styles/android.css":  "<%= dirs.base %>/styles/browser/android.styl"
    ]

  helpers:
    prefixAndConcatProdJS: ->
      config  = grunt.config.get "app"
      dirs    = grunt.config.get "dirs"
      # merge the arrays, then map paths with the base dir for uglify
      config.js.map (file) -> dirs.base + '/' + file
