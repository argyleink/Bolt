var bower_base = "app/"
  , files
  , replaceBase

files = require("wiredep")({
  exclude: [/jquery/]
})

__dirname = __dirname.substr(0,__dirname.length - 6)

replaceBase = function(path) {
  return path.replace(__dirname + bower_base, '')
}

files.js = files.js.map(function(path) {
  return path.replace(__dirname + bower_base, '')
})

files.css = files.css.map(function(path) {
  return path.replace(__dirname + bower_base + '', '')
})

files.dev_css = files.css.map(function(path) {
  return path.replace('js/', '')
})

module.exports = files