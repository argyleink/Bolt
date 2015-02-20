module.exports =
  dev:
    options:
      data:
        dev: true
        bower: "<%= vendor_files.bower %>"
      pretty: true
      client: false
      basedir: 'app'

    files: "<%= app_files.jade %>"

  prod:
    options:
      data:
        dev: false

    files: "<%= app_files.jade %>"