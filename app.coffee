module.exports = (grunt) ->
  # load in data from your package.json to be supplied to templates
  pkg: grunt.file.readJSON("./package.json")
  env: if grunt.cli.tasks[0] == "prod" then "www" else "dev"

  options:
    # grunt --dont-open
    openBrowser: !grunt.option "dont-open"

  # choose your own directory structure, bower folder, etc
  dirs:
    base:   "app"
    build:  "build/<%= env %>" 
    bower:  "/js/bower"

  # Comment that is placed at the top of compiled files
  banner:
    "/**\n" +
    "  <%= pkg.name %> - v<%= pkg.version %>\n" +
    "  Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author %>\n" +
    "**/\n"

  # Collection of files for reference in our tasks
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
