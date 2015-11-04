module.exports =
  prod:
    options:
      compress:       false
      "include css":  true
      define:         bower: "<%= app.css.lib %>"
      use:            "<%= app.stylus_plugins %>"

    files: "<%= app.stylus %>"

  dev:
    options:
      compress:       false
      "include css":  true
      define:         bower: "<%= app.css.lib %>"
      use:            "<%= app.stylus_plugins %>"
      sourcemap:      inline: true

    files: "<%= app.stylus %>"
