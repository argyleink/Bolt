quaff = require "quaff"

module.exports =
  dev:
    options:
      data:
        dev:        true
        bower:      "<%= bower_files.js %>"
        project:    "<%= pkg %>"
        app_files:  "<%= app_files %>"
        data:       quaff "./data/"
      pretty: true
      client: false
      basedir: 'app'

    files: "<%= app_files.jade %>"

  prod:
    options:
      data:
        dev:        false
        project:    "<%= pkg %>"
        app_files:  "<%= app_files %>"
        data:       require("quaff")("./data/")

    files: "<%= app_files.jade %>"