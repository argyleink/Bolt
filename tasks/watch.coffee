module.exports =
  options:
    livereload: false
    spawn: false

  css:
    files: ["app/styles/**/*.styl"]
    tasks: ["stylus:debug"]

  js:
    files: ["app/js/*.js"]
    tasks: ["newer:copy:debug"]

  libs:
    files: ["app/js/bower/**/*.js", "app/js/libs/**/*.js"]
    tasks: ["uglify:libs"]

  images:
    files: ["app/img/**/*"]
    tasks: ["newer:copy:debug"]

  html:
    files: ["app/**/*.jade", "!app/templates/**/*.jade"]
    tasks: ["jade:compile"]

  templates:
    files: ["app/templates/**/*.jade"]
    tasks: ["shell:clientjade"]