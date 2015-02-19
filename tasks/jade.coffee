# jadeFiles = [
#   expand: true
#   cwd:    "app/"
#   src:    [
#     "*.jade"
#     "!source/**/*.jade"
#   ]
#   dest:   "dist/"
#   ext:    ".html"
# ]

module.exports =
  dev:
    options:
      data:
        dev: true
        js: "<%= vendor_files.js %>"
      pretty: true
      client: false
      basedir: 'app'

    files: "<%= app_files.jade.dev %>"

  prod:
    options:
      data:
        dev: false

    files: "<%= app_files.jade.prod %>"