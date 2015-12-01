module.exports =
  js: [
    # "js/bower/bower_package/bower_file_you_need.js"
    "js/app.js"
  ]

  css: [
    "js/bower/flexboxgrid/dist/flexboxgrid.css"
  ]

  ###
    The `resources` property holds any resources to be copied along
    with our app's resources: key files, whatever
  ###
  resources: [
    "robots.txt"
    "manifest.json"
  ]

  stylus: [
    "<%= dirs.build %>/styles/app.css":        "<%= dirs.base %>/styles/master.styl"
    # below you can create your own additional css files for browser hacks, polyfills, etc
    # "<%= dirs.build %>/styles/ios.css":      "<%= dirs.base %>/styles/browser/ios.styl"
    # "<%= dirs.build %>/styles/ie10.css":     "<%= dirs.base %>/styles/browser/ie10.styl"
    # "<%= dirs.build %>/styles/android.css":  "<%= dirs.base %>/styles/browser/android.styl"
  ]