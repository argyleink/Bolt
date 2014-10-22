module.exports =
  debug:
    options:
      data:
        dev: true
      pretty: true

    files: [
      expand: true
      cwd:    "app/"
      src:    ["*.jade"]
      dest:   "dist/"
      ext:    ".html"
    ,
      expand: true
      cwd:    "app/ajax/"
      src:    ["**/*.jade"]
      dest:   "dist/ajax/"
      ext:    ".html"
    ]

  release:
    options:
      data:
        dev: false

    files: [
      expand: true
      cwd:    "app/"
      src:    ["*.jade"]
      dest:   "dist/"
      ext:    ".html"
    ]