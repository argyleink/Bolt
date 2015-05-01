module.exports =
  prod:
    options:
      compress:       false
      "include css":  true
      define:         bower: "<%= vendor_files.css %>"
      use:            "<%= app_files.stylus_plugins %>"

    files: "<%= app_files.stylus %>"

  dev:
    options:
      compress:       false
      "include css":  true
      define:         bower: "<%= vendor_files.css %>"
      use:            "<%= app_files.stylus_plugins %>"
      sourcemap:      inline: true

    files: "<%= app_files.stylus %>"
