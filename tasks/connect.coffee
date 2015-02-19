module.exports =
  dev:
    options:
      port: 3030,
      base: "<%= dev_build_dir %>"
      livereload: true

  prod:
    options:
      port: 3030,
      base: "<%= prod_build_dir %>"
      livereload: false
