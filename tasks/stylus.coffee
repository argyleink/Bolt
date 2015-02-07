stylusFiles = [
  "dist/styles/master.css":   "app/styles/master.styl"
  # below you can create your own additional css files for browser hacks, polyfills, etc
  "dist/styles/ios.css":      "app/styles/browser/ios.styl"
  "dist/styles/ie10.css":     "app/styles/browser/ie10.styl"
  "dist/styles/android.css":  "app/styles/browser/android.styl"
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
