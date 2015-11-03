module.exports =
  dev:
    files:        "<%= app.jade %>"
    options:
      data:
        dev:        true
        libs:       "<%= app.js.lib %>"
        project:    "<%= pkg %>"
        app_files:  "<%= app %>"
        data:       require("quaff")("app/data/")
      pretty:     true
      client:     false
      basedir:    "<%= dirs.base %>"

  prod:
    files:        "<%= app.jade %>"
    options:
      data:
        dev:        false
        project:    "<%= pkg %>"
        app_files:  "<%= app %>"
        data:       require("quaff")("app/data/")