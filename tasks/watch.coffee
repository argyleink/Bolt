module.exports =
  options:
    livereload: true

  css:
    files: ["app/styles/**/*.styl"]
    tasks: ["stylus:debug"]

  js:
    files: ["app/js/**/*.js"]
    tasks: ["newer:copy:debug"]

  images:
    files: ["app/img/**/*"]
    tasks: ["newer:copy:debug"]

  html:
    files: ["app/**/*.jade", "!app/templates/**/*"]
    tasks: ["jade:debug"]

  templates:
    files: ["app/templates/**/*.jade"]
    tasks: ["shell:clientjade"]