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
        bower: "<%= vendor_files.bower %>"
      pretty: true
      client: false
      basedir: 'app'

    files: "<%= app_files.jade.dev %>"

  prod:
    options:
      data:
        dev: false

    files: "<%= app_files.jade.prod %>"