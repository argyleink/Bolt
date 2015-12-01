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
  app: require "./files"
