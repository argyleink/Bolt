module.exports = (dir) ->
  files = require("wiredep")(exclude: [/jquery/])

  # the path is absolute (ick), fix it
  replaceBase = (path) -> path.replace dir, ''

  # The `bower_files.js` property holds files to be automatically
  # concatenated and minified with our project source files.
  files.js = files.js.map replaceBase

  # The `bower_files.css` property holds any CSS files to be automatically
  # included in our app. File will be auto imported to your stylus stylesheet, path should be 
  # relative to master.styl in app/styles/. Stylus is currently setup to auto read 
  # these and include them in app.css
  files.css = files.css.map replaceBase

  # it's dev because the file is preserved in css and not combined/merged
  files.dev_css = files.css.map (path) -> path.replace 'js/', ''

  return files
