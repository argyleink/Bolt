module.exports = (grunt) ->
  # Collection of files for reference in our tasks
  app:
    js: [
      # "js/bower/bower_package/bower_file_you_need.js"
      "js/app.js"
    ]

    css: [
      # "js/bower/bower_package/bower_file_you_need.css"
    ]

    ###
      The `resources` property holds any resources to be copied along
      with our app's resources: key files, whatever
    ###
    resources: [
      "robots.txt"
      "manifest.json"
    ]

  # load in data from your package.json to be supplied to templates
  pkg: grunt.file.readJSON("./package.json")
  env: if grunt.cli.tasks[0] is "prod" or grunt.cli.tasks[0] is "compile" then "www" else "dev"
  # choose your own directory structure, bower folder, etc
  dirs:
    base:   "app"
    build:  "build/<%= env %>" 
    bower:  "/js/bower"

  # custom build options here, take grunt flags and pass them to tasks
  options:
    # grunt --dont-open
    openBrowser: !grunt.option "dont-open"

  # Comment that is placed at the top of compiled files
  banner:
    "/**\n" +
    "  <%= pkg.name %> - v<%= pkg.version %>\n" +
    "  Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author %>\n" +
    "**/\n"
