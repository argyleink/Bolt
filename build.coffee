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
  bower_dir:      "js/bower"
  build_dir:      "build/" + if grunt.option("prod") == true then "www" else "dev"

  # This is a collection of files for reference in our tasks
  app_files:
    js: 
      # this is the src order and crunched prod set of app logic/modules
      # remove the wild card to explicitly maintain src order
      app: [
        "app/js/templates.js"
        "app/js/app.js"
        "app/js/*.js"
        "!app/js/shiv.js" # loaded before libs and app to polyfill, see below
      ]
      # load polyfill libs, then use them in shiv.js
      polyfills: [
        "<%= app_dir %>/<%= bower_dir %>/device-detect.js/device-detect.js"
        "app/js/shiv.js"
      ]
    jade: [
      expand: true
      cwd:    "<%= app_dir %>"
      src:    [
        "*.jade"
        "!source/**/*.jade"
      ]
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

  # test_files:
  #   js: [ "tests/" ]


  ###
  The `vendor_files.js` property holds files to be automatically
  concatenated and minified with our project source files.

  The `vendor_files.css` property holds any CSS files to be automatically
  included in our app. File will be auto imported to your stylus stylesheet, path should be 
  relative to master.styl in app/styles/. Stylus is currently setup to auto read 
  these and include them in app.css

  The `vendor_files.assets` property holds any assets to be copied along
  with our app's assets: media, music, etc
  ###

  bower_base: if grunt.option("prod") == true then "app/" else ""
  vendor_files:
    bower: [
      "<%= bower_base %><%= bower_dir %>/jquery/jquery.js"
      "<%= bower_base %><%= bower_dir %>/jquery.finger/dist/jquery.finger.js"
      "<%= bower_base %><%= bower_dir %>/flexboxgrid/js/index.js"
    ]
    css: [
      "../../<%= app_dir %>/<%= bower_dir %>/flexboxgrid/dist/flexboxgrid.css"
    ]
    assets: [
      "robots.txt"
      "manifest.json"
    ]
