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

    files: "<%= app_files.stylus.prod %>"

  dev:
    options:
      compress:       false
      linenos:        true
      "include css":  true
      use: autoprefixerPlugin

    files: "<%= app_files.stylus.dev %>"
