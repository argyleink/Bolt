module.exports =
  compile:
    options:
      compress:       true
      linenos:        false
      "include css":  true

    files:
      "dist/styles/master.css":   "app/styles/master.styl"

  debug:
    options:
      compress:       false
      linenos:        true
      "include css":  true

    files:
      "dist/styles/master.css":   "app/styles/master.styl"
