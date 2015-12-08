autoprefixer = -> require("autoprefixer-stylus")(
  browsers: [
    "last 2 versions"
    "> 5%"
    # "ie 8"
    # "ie 9"
  ]
)

files = [
  "<%= dirs.build %>/styles/app.css":        "<%= dirs.base %>/styles/master.styl"
  # below you can create your own additional css files for browser hacks, polyfills, etc
  # "<%= dirs.build %>/styles/ios.css":      "<%= dirs.base %>/styles/browser/ios.styl"
  # "<%= dirs.build %>/styles/ie10.css":     "<%= dirs.base %>/styles/browser/ie10.styl"
  # "<%= dirs.build %>/styles/android.css":  "<%= dirs.base %>/styles/browser/android.styl"
]

module.exports =
  prod:
    options:
      compress:       false
      "include css":  true
      "resolve url":  true
      use:            [autoprefixer]
      define:
        prod:   true
        libs:   "<%= app.css %>"

    files: files

  dev:
    options:
      compress:       false
      use:            [autoprefixer]
      sourcemap:      inline: true
      define:         prod: false

    files: files
