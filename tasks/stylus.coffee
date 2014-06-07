module.exports =
  compile:
    options:
      compress:       true
      linenos:        false
      "include css":  true

    files:
      "dist/styles/master.css":   "debug/styles/master.styl"
      "dist/styles/ios.css":      "debug/styles/stylus/ios.styl"
      "dist/styles/android.css":  "debug/styles/stylus/android.styl"
      "dist/styles/ie10.css":     "debug/styles/stylus/ie10.styl"

  debug:
    options:
      compress:       false
      linenos:        true
      "include css":  true

    files:
      "dist/styles/master.css":   "debug/styles/master.styl"
      "dist/styles/ios.css":      "debug/styles/stylus/ios.styl"
      "dist/styles/android.css":  "debug/styles/stylus/android.styl"
      "dist/styles/ie10.css":     "debug/styles/stylus/ie10.styl"
