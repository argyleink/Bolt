var __dirname = __dirname.substr(0, __dirname.length - 6)
  , bower_base = "app/"
  , files

files = require("wiredep")({
  exclude: [/jquery/]
})

files.js = files.js.map((path) => 
  path.replace(__dirname + bower_base, '')
)

files.css = files.css.map((path) =>
  path.replace(__dirname + bower_base + '', '')
)

files.dev_css = files.css.map((path) =>
  path.replace('js/', '')
)

module.exports = files