module.exports =
  prod:
    options:
      banner: "<%= banner %>"
      screwIE8: true
      compress:
        drop_console: true
    files:
      "<%= dirs.build %>/js/app.min.js": [
        "{<%= _prefixSrc(dirs.base, app.js.lib) %>}"
        "{<%= _prefixSrc(dirs.base, app.js.src) %>}"
      ]
