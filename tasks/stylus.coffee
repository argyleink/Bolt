stylusFiles = [
  "dist/styles/master.css":   "app/styles/master.styl"
  "dist/styles/ios.css":      "app/styles/stylus/ios.styl"
  "dist/styles/ie10.css":     "app/styles/stylus/ie10.styl"
  "dist/styles/android.css":  "app/styles/stylus/android.styl"
]

autoprefixerPlugin = [
  () -> require('autoprefixer-stylus')(
    browsers: 'last 2 versions', 'ie 8', 'ie 9'
  )
]

module.exports =
  prod:
    options:
      compress:       true
      linenos:        false
      "include css":  true
      use: autoprefixerPlugin

    files: stylusFiles

  dev:
    options:
      compress:       false
      linenos:        true
      "include css":  true
      use: autoprefixerPlugin

    files: stylusFiles
