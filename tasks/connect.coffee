module.exports =
  dev:
    options:
      port:         3030,
      base:         "<%= dirs.build %>"
      livereload:   true

  prod:
    options:
      port:         3031,
      base:         "<%= dirs.build %>"
      livereload:   true
