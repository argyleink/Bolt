jadeFiles = [
  expand: true
  cwd:    "app/"
  src:    [
    "*.jade"
    "!source/**/*.jade"
  ]
  dest:   "dist/"
  ext:    ".html"
]

module.exports =
  dev:
    options:
      data:
        dev: true
      pretty: true
      client: false
      basedir: 'app'

    files: jadeFiles

  prod:
    options:
      data:
        dev: false

    files: jadeFiles