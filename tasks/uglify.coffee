module.exports =
  prod:
    options:
      banner: "<%= banner %>"
      screwIE8: true
      compress:
        drop_console: true
    files:
      "<%= dirs.build %>/js/app.min.js": [
        "<%= app.js.lib %>"
        "<%= app.js.src %>"
      ]