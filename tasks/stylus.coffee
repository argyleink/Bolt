module.exports =
  prod:
    options:
      compress:       false
      linenos:        false
      "include css":  true
      define:         bower: "<%= vendor_files.css %>"
      use:            "<%= app_files.stylus_plugins %>"

    files: "<%= app_files.stylus %>"

  dev:
    options:
      compress:       false
      linenos:        true
      "include css":  true
      define:         bower: "<%= vendor_files.css %>"
      use:            "<%= app_files.stylus_plugins %>"

    files: "<%= app_files.stylus %>"
