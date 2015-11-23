webpack = require('webpack')

module.exports =
  js:
    watch: false
    keepalive: false
    sourcemaps: true

    stats:
      colors: true
      modules: true
      reasons: true
    devtool: 'inline-source-map'

    entry: [
      './app/js/test.coffee'
      './app/_jade/client-templates/list.jade'
      # './app/js/app.js'
    ].concat (-> 
      files = require("wiredep")(
        exclude: [/jquery/]
      )
      return files.js
    )()

    output: 
      path: 'build/dev/js'
      filename: 'bundle.js'
      sourceMapFilename: 'bundle.js.map'

    module:
      loaders: [
        test: /\.jade$/ 
        loader: "jade"
      ,
        test: /\.coffee$/ 
        loader: "coffee"
      ]

  # coffee:
  #   watch: false
  #   keepalive: false
  #   stats:
  #     colors: true
  #     modules: true
  #     reasons: true

  #   entry: './app/js/test.coffee'
  #   output: filename: 'build/dev/js/index.js'
  #   module:
  #     loaders: [
  #       test: /\.coffee$/ 
  #       loader: "coffee"
  #     ]

  # stylus:
  #   watch: false
  #   keepalive: false
  #   stats:
  #     colors: true
  #     modules: true
  #     reasons: true

  #   entry: './app/styles/master.styl'
  #   output: filename: 'build/index.css'
  #   module:
  #     loaders: [
  #       test: /\.styl$/ 
  #       loader: "stylus"
  #     ]
  #   use: "<%= app_files.stylus_plugins %>"
  #   define: bower: (-> 
  #     files = require("wiredep")(
  #       exclude: [/jquery/]
  #     )
  #     return files.css
  #   )()