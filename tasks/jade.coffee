module.exports =
  debug:
    options:
      data:
        dev: true
      pretty: true

    files: [
      expand: true
      cwd:    "debug/"
      src:    ["*.jade"]
      dest:   "dist/"
      ext:    ".html"
    ]

  release:
    options:
      data:
        dev: false

    files: [
      expand: true
      cwd:    "debug/"
      src:    ["*.jade"]
      dest:   "dist/"
      ext:    ".html"
    ]