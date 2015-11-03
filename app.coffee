module.exports = (grunt) ->
  # load in data from your package.json to be supplied to templates
  pkg: grunt.file.readJSON("./package.json")

  # choose your own directory structure, bower folder, etc
  dirs:
    base:   "app"
    build:  "build/" + if grunt.option("prod") then "www" else "dev"

  # This is the comment that is placed at the top of compiled files
  banner:
    "/**\n" +
    "  <%= pkg.name %> - v<%= pkg.version %>\n" +
    "  Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author %>\n" +
    "**/\n"

  # This is a collection of files for reference in our tasks
  app:
    js:
      lib: []
      src: [
        "<%= dirs.base %>/js/templates.js"
        "<%= dirs.base %>/js/template-example.js"
        "<%= dirs.base %>/js/app.js"
      ]

    css:
      lib: [
        "../js/bower/flexboxgrid/dist/flexboxgrid.css"
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
      cwd:    "<%= dirs.base %>"
      src:    "*.jade"
      dest:   "<%= dirs.build %>"
      ext:    ".html"
    ]

    stylus: [
      "<%= dirs.build %>/styles/app.css":"<%= dirs.base %>/styles/master.styl"
    ]

    stylus_plugins: [
      # https://www.npmjs.com/package/autoprefixer-stylus
      -> require("autoprefixer-stylus")(
        browsers: [
          "last 2 versions"
          "> 5%"
          # "ie 8"
          # "ie 9"
        ]
      )
    ]
