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
      './app/js/app.js'
    ]
    output: 
      path: 'build/dev'
      filename: 'index.js'
      sourceMapFilename: 'index.js.map'

    module:
      loaders: [
        test: /\.jade$/ 
        loader: "jade"
      ,
        test: /\.coffee$/ 
        loader: "coffee"
      ]

    plugins: [
      new webpack.ResolverPlugin [
        new webpack.ResolverPlugin.DirectoryDescriptionFilePlugin("bower.json", ["main"])
      ], ["normal", "loader"]
    ]

  # coffee:
  #   watch: false
  #   keepalive: false
  #   stats:
  #     colors: true
  #     modules: true
  #     reasons: true

  #   entry: './app/js/test.coffee'
  #   output: filename: 'build/index.js'
  #   module:
  #     loaders: [
  #       test: /\.coffee$/ 
  #       loader: "coffee"
  #     ]

  stylus:
    watch: false
    keepalive: false
    stats:
      colors: true
      modules: true
      reasons: true

    entry: './app/styles/master.styl'
    output: filename: 'build/index.css'
    module:
      loaders: [
        test: /\.styl$/ 
        loader: "stylus"
      ]