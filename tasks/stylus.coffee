module.exports =
  compile:
    options:
      compress:       true
      linenos:        false
      "include css":  true

    files:
      "dist/styles/master.css":   "app/styles/master.styl"
      "dist/styles/ios.css":      "app/styles/stylus/ios.styl"
      "dist/styles/android.css":  "app/styles/stylus/android.styl"
      "dist/styles/ie10.css":     "app/styles/stylus/ie10.styl"

  debug:
    options:
      compress:       false
      linenos:        true
      "include css":  true

    files:
      "dist/styles/master.css":   "app/styles/master.styl"
      "dist/styles/ios.css":      "app/styles/stylus/ios.styl"
      "dist/styles/android.css":  "app/styles/stylus/android.styl"
      "dist/styles/ie10.css":     "app/styles/stylus/ie10.styl"
