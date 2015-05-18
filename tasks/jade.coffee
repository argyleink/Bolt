module.exports =
  dev:
    options:
      data:
        dev: true
        bower: "<%= bower_files.js %>"
        project: "<%= pkg %>"
      pretty: true
      client: false
      basedir: 'app'

    files: "<%= app_files.jade %>"

  prod:
    options:
      data:
        dev: false
        project: "<%= pkg %>"

    files: "<%= app_files.jade %>"