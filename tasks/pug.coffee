files = [
  expand: true
  cwd:    "<%= dirs.base %>"
  src:    [
    "**/*.pug"
    "!_pug/**"
  ]
  dest:   "<%= dirs.build %>"
  ext:    ".html"
]

module.exports =
  dev:
    files: files
    options:
      data:
        dev:        true
        project:    "<%= pkg %>"
        app_files:  "<%= app %>"
        data:       require("quaff")("app/_data/")
      pretty:     true
      client:     false
      basedir:    "<%= dirs.base %>"

  prod:
    files: files
    options:
      basedir: "<%= dirs.base %>"
      data:
        dev:        false
        project:    "<%= pkg %>"
        app_files:  "<%= app %>"
        data:       require("quaff")("app/_data/")
