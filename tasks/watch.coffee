module.exports =
  options:
    livereload: false
    spawn: false

  css:
    files: ["app/styles/**/*.styl"]
    tasks: ["stylus:dev"]

  js:
    files: ["app/js/*.js"]
    tasks: ["newer:copy:dev"]

  libs:
    files: ["app/js/bower/**/*.js", "app/js/libs/**/*.js"]
    tasks: ["uglify:dev"]

  images:
    files: ["app/img/**/*"]
    tasks: ["newer:copy:dev"]

  html:
    files: ["app/**/*.jade", "!app/templates/**/*.jade"]
    tasks: ["jade:dev"]

  templates:
    files: ["app/templates/**/*.jade"]
    tasks: ["shell:clientjade"]