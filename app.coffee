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
    js:
      ###
        bower libs, downloaded libs, etc.
        Manually managed now, since bower main files are not dependable
      ###
      lib: [
        # "flexboxgrid/dist/file.js"
      ]
      # app js files
      src: [
        "js/app.js"
      ]

    css:
      # path is relative to deployed styles/ directory
      lib: [
        "..<%= dirs.bower %>/flexboxgrid/dist/flexboxgrid.css"
      ]

    ###
      The `assets` property holds any assets to be copied along
      with our app's assets: key files, whatever
    ###
    assets: [
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
