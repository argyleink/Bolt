module.exports =
  dev:
    options:
      data:
        dev:        true
        libs:       "<%= app.js.lib %>"
        project:    "<%= pkg %>"
        app_files:  "<%= app %>"
        data:       require("quaff")("./data/")
      pretty: true
      client: false
      basedir: 'app'

    files: "<%= app.jade %>"

  prod:
    options:
      data:
        dev:        false
        project:    "<%= pkg %>"
        app_files:  "<%= app %>"
        data:       require("quaff")("./data/")

    files: "<%= app.jade %>"