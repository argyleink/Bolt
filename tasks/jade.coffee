jadeFiles = [
  expand: true
  cwd:    "app/"
  src:    ["*.jade", '!source/**/*.jade']
  dest:   "dist/"
  ext:    ".html"
,
  expand: true
  cwd:    "app/ajax/"
  src:    ["**/*.jade"]
  dest:   "dist/ajax/"
  ext:    ".html"
]

module.exports =
  compile:
    options:
      data:
        dev: true
      pretty: true
      client: false

    files: jadeFiles

  release:
    options:
      data:
        dev: false

    files: jadeFiles