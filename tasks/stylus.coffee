module.exports =
  prod:
    options:
      compress:       false
      "include css":  true
      "resolve url":  true
      use:            "<%= app.stylus_plugins %>"
      define:
        prod:   true
        libs:   "<%= app.css.lib %>"

    files: "<%= app.stylus %>"

  dev:
    options:
      compress:       false
      use:            "<%= app.stylus_plugins %>"
      sourcemap:      inline: true
      define:         prod: false

    files: "<%= app.stylus %>"
