module.exports = (grunt) ->
  # load in data from your package.json to be supplied to templates
  pkg: grunt.file.readJSON("./package.json")

  # choose your own directory structure, bower folder, etc
  app_dir:        "app"
  build_dir:      "build/" + if grunt.option("prod") == true then "www" else "dev"

  # This is the comment that is placed at the top of compiled files
  meta:
    banner:
      "/**\n" +
      "  <%= pkg.name %> - v<%= pkg.version %>\n" +
      "  Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author %>\n" +
      "**/\n"

  # This is a collection of files for reference in our tasks
  app_files:
    js:
      ###
        this is the src order and crunched prod set of app logic/modules
        remove the wild card to explicitly maintain src order
        Bolt will put all of your bower installed libraries before these app logic files
        Or use webpack, browserify, etc to your hearts content
      ###
      app: [
        "/js/templates.js"
        "/js/template-example.js"
        "/js/app.js"
      ]
      # bower ignores
      bower_ignore: [
        ###
          checkout the options section of https://github.com/stephenplusplus/grunt-wiredep
          sometimes bower pulls down jquery even though its not a hard dep, ignore them here
        ###
        exclude: []
        # exclude: [/jquery/]
      ]

    ###
      The `assets` property holds any assets to be copied along
      with our app's assets: key files, whatever
    ###
    assets: [
      "robots.txt"
      "manifest.json"
    ]

    jade: [
      expand: true
      cwd:    "<%= app_dir %>"
      src:    "*.jade"
      dest:   "<%= build_dir %>"
      ext:    ".html"
    ]

    stylus: [
      "<%= build_dir %>/styles/app.css":"<%= app_dir %>/styles/master.styl"
    ]

    stylus_plugins: [
      # https://www.npmjs.com/package/autoprefixer-stylus
      -> require('autoprefixer-stylus')(
        browsers: [
          'last 2 versions'
          '> 5%'
          # 'ie 8'
          # 'ie 9'
        ]
      )
    ]

  # use wiredep to grab bower target package files, function returns an object mapped properly
  bower_files: (->
    files = require("wiredep")("<%= app_files.js.bower_ignore %>")

    bower_base = if grunt.option("prod") == true then "<%= app_dir %>/" else "/<%= app_dir %>/"

    # the path is absolute (ick), fix it
    replaceBase = (path) -> path.replace __dirname + bower_base, ''

    ###
      The `bower_files.js` property holds files to be automatically
      concatenated and minified with our project source files.
    ###
    if files.js
      files.js = files.js.map (path) -> path.replace __dirname + bower_base, ''
    else
      files.js = []

    ###
      The `bower_files.css` property holds any CSS files to be automatically
      included in our app. File will be auto imported to your stylus stylesheet, path should be
      relative to master.styl in app/styles/. Stylus is currently setup to auto read
      these and include them in app.css
    ###
    if files.css
      files.css = files.css.map (path) -> path.replace __dirname + bower_base + '', ''
      files.dev_css = files.css.map (path) -> path.replace 'js/', ''
    else
      files.css = []

    return files
  )()

  # test_files:
  #   js: [ "tests/" ]
