jadeFiles = [
  expand: true
  cwd:    "app/"
  src:    [
    "*.jade", 
    "!app/ajax/**/*.jade"
    "!source/**/*.jade"
  ]
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
  dev:
    options:
      data:
        dev: true
      pretty: true
      client: false

    files: jadeFiles

  prod:
    options:
      data:
        dev: false

    files: jadeFiles