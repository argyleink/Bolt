autoprefixerPlugin = [
  -> require('autoprefixer-stylus')(
    browsers: [
      'last 2 versions'
      '> 5%'
      # 'ie 8'
      # 'ie 9'
    ]
  )
]

module.exports =
  prod:
    options:
      compress:       false
      linenos:        false
      "include css":  true
      define:         bower: "<%= vendor_files.css %>"
      use:            autoprefixerPlugin

    files: "<%= app_files.stylus %>"

  dev:
    options:
      compress:       false
      linenos:        true
      "include css":  true
      define:         bower: "<%= vendor_files.css %>"
      use:            autoprefixerPlugin

    files: "<%= app_files.stylus %>"
