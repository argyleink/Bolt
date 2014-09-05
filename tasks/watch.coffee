module.exports =
  options:
    livereload: false

  css:
    files: ["app/styles/**/*.styl"]
    tasks: ["stylus:debug"]

  js:
    files: ["app/js/**/*.js", "!app/js/libs/**/*"]
    tasks: ["newer:copy:debug"]

  libs:
    files: ["app/js/libs/**/*.js"]
    tasks: ["uglify:libs"]

  images:
    files: ["app/img/**/*"]
    tasks: ["newer:copy:debug"]

  html:
    files: ["app/**/*.jade", "!app/templates/**/*"]
    tasks: ["jade:debug"]

  templates:
    files: ["app/templates/**/*.jade"]
    tasks: ["shell:clientjade"]