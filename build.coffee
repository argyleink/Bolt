###
This file/module contains all configuration for the build process.
###

module.exports = (grunt) ->

  pkg: grunt.file.readJSON("./package.json")

  ###
  The banner is the comment that is placed at the top of our compiled
  source files. It is first processed as a Grunt template, where the `<%=`
  pairs are evaluated based on this very configuration object.
  ###
  meta:
    banner:
      "/**\n" +
      " * <%= pkg.name %> - v<%= pkg.version %>\n" +
      " * <%= pkg.homepage %>\n" + " *\n" +
      " * Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author %>\n" +
      " */\n"

  app_dir: "app"
  bower_dir: "app/js/bower"

  ###
  The `build_dir` folder is where our projects are compiled during
  development and the `compile_dir` folder is where our app resides once it's
  completely built.
  ###

  dev_build_dir: "build/dev"
  prod_build_dir: "build/www"

  ###
  This is a collection of file patterns that refer to our app code (the
  stuff in `src/`). These file paths are used in the configuration of
  build tasks. `js` is all project javascript, less tests. `ctpl` contains
  our reusable components' (`src/common`) template HTML files, while
  `atpl` contains the same, but for our app's code. `html` is just our
  main HTML file, `less` is our main stylesheet, and `unit` contains our
  app's unit tests.
  ###

  app_files:
    js: 
      # this is the src order and crunched prod set of app logic/modules
      app: [
        "app/js/templates.js"
        "app/js/app.js"
        "app/js/*.js"
        "!app/js/shiv.js"
      ]
      # load polyfill libs, then use them in shiv.js
      polyfills: [
        "<%= bower_dir %>/device-detect.js/device-detect.js"
        "app/js/shiv.js"
      ]
    # JADE dev/prod files
    jade: 
      dev: [
        expand: true
        cwd:    "<%= app_dir %>"
        src:    [
          "*.jade"
          "!source/**/*.jade"
        ]
        dest:   "<%= dev_build_dir %>"
        ext:    ".html"
      ]
      prod: [
        expand: true
        cwd:    "<%= app_dir %>"
        src:    [
          "*.jade"
        ]
        dest:   "<%= prod_build_dir %>"
        ext:    ".html"
      ]
    # STYLUS dev/prod files
    stylus: 
      dev: [
        "<%= dev_build_dir %>/styles/app.css":   "<%= app_dir %>/styles/master.styl"
        # below you can create your own additional css files for browser hacks, polyfills, etc
        "<%= dev_build_dir %>/styles/ios.css":      "<%= app_dir %>/styles/browser/ios.styl"
        "<%= dev_build_dir %>/styles/ie10.css":     "<%= app_dir %>/styles/browser/ie10.styl"
        "<%= dev_build_dir %>/styles/android.css":  "<%= app_dir %>/styles/browser/android.styl"
      ]
      prod: [
        "<%= prod_build_dir %>/styles/app.css":   "<%= app_dir %>/styles/master.styl"
        # below you can create your own additional css files for browser hacks, polyfills, etc
        "<%= prod_build_dir %>/styles/ios.css":      "<%= app_dir %>/styles/browser/ios.styl"
        "<%= prod_build_dir %>/styles/ie10.css":     "<%= app_dir %>/styles/browser/ie10.styl"
        "<%= prod_build_dir %>/styles/android.css":  "<%= app_dir %>/styles/browser/android.styl"
      ]

  ###
  This is a collection of files used during testing only.
  ###

  # test_files:
  #   js: [ "tests/" ]


  ###
  The `vendor_files.js` property holds files to be automatically
  concatenated and minified with our project source files.

  The `vendor_files.css` property holds any CSS files to be automatically
  included in our app.

  The `vendor_files.assets` property holds any assets to be copied along
  with our app's assets. This structure is flattened, so it is not
  recommended that you use wildcards.
  ###

  vendor_files:
    bower: [
      "<%= bower_dir %>/jquery/jquery.js"
      "<%= bower_dir %>/jquery.finger/dist/jquery.finger.js"
      "<%= bower_dir %>/flexboxgrid/js/index.js"
    ]
    css: [
      # note! file will be auto imported to your stylesheet, path is relative to master.styl in app/styles/
      "../../<%= bower_dir %>/flexboxgrid/dist/flexboxgrid.css"
    ]
    assets: [
      "robots.txt"
      "manifest.json"
    ]
