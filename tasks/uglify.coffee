module.exports =
  prod:
    options:
      banner:     "<%= banner %>"
      screwIE8:   true
      compress:   drop_console: true
      baseDir:    "<%= dirs.base %>/"
    files:
      "<%= dirs.build %>/js/app.js":"<%= app.js %>"