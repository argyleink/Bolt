# This file contains all configuration for the build process.
module.exports = (grunt) ->

  pkg: grunt.file.readJSON("./package.json")

  # This is the comment that is placed at the top of compiled files
  meta:
    banner:
      "/**\n" +
      "  <%= pkg.name %> - v<%= pkg.version %>\n" +
      "  Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author %>\n" +
      "**/\n"

  # change these once, works everywhere =)
  # choose your own directory structure, bower folder, etc
  app_dir:        "app"
  build_dir:      "build/" + if grunt.option("prod") == true then "www" else "dev"

  # This is a collection of files for reference in our tasks
  app_files:
    js: 
      # this is the src order and crunched prod set of app logic/modules
      # remove the wild card to explicitly maintain src order
      app: [
        "<%= app_dir %>/js/templates.js"
        "<%= app_dir %>/js/app.js"
        "<%= app_dir %>/js/*.js"
        "!<%= app_dir %>/js/shiv.js" # loaded before libs and app to polyfill, see below
      ]
      # load a browser detector, then use shiv.js to inject proper polyfill.js
      # these will be combined and loaded in the <head>, see polyfill.jade
      polyfills: [
        "<%= app_dir %>/js/bower/device-detect.js/device-detect.js"
        "<%= app_dir %>/js/shiv.js"
      ]

    # The `assets` property holds any assets to be copied along
    # with our app's assets: key files, whatever
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
      "<%= build_dir %>/styles/app.css":      "<%= app_dir %>/styles/master.styl"
      # below you can create your own additional css files for browser hacks, polyfills, etc
      "<%= build_dir %>/styles/ios.css":      "<%= app_dir %>/styles/browser/ios.styl"
      "<%= build_dir %>/styles/ie10.css":     "<%= app_dir %>/styles/browser/ie10.styl"
      "<%= build_dir %>/styles/android.css":  "<%= app_dir %>/styles/browser/android.styl"
    ]

    stylus_plugins: [
      # http://axis.netlify.com
      -> require('axis')()

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

  # use wiredep to grab bower target package files
  bower_files: require('./server/bower-deps.coffee')(grunt, __dirname)

  # test_files:
  #   js: [ "tests/" ]
