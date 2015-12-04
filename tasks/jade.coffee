module.exports =
  dev:
    files:        "<%= app.jade %>"
    options:
      data:
        dev:        true
        project:    "<%= pkg %>"
        app_files:  "<%= app %>"
        data:       require("quaff")("app/data/")
      pretty:     true
      client:     false
      basedir:    "<%= dirs.base %>"

  client:
    files:
      "<%= dirs.base %>/js/templates.js":"app/_jade/client/*.jade"
    options:
      client:     true

  prod:
    files:        "<%= app.jade %>"
    options:
      data:
        dev:        false
        project:    "<%= pkg %>"
        app_files:  "<%= app %>"
        data:       require("quaff")("app/data/")