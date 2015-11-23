autoprefixer = -> require("autoprefixer-stylus")(
  browsers: [
    "last 2 versions"
    "> 5%"
    # "ie 8"
    # "ie 9"
  ]
)

module.exports =
  prod:
    options:
      compress:       false
      "include css":  true
      "resolve url":  true
      use:            [autoprefixer]
      define:
        prod:   true
        libs:   "<%= app.css %>"

    files: "<%= app.stylus %>"

  dev:
    options:
      compress:       false
      use:            [autoprefixer]
      sourcemap:      inline: true
      define:         prod: false

    files: "<%= app.stylus %>"
