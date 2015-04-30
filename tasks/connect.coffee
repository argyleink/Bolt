module.exports =
  dev:
    options:
      port: 3030,
      base: "<%= build_dir %>"
      livereload: true

  prod:
    options:
      port: 3031,
      base: "<%= build_dir %>"
      livereload: true
