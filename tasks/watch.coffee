module.exports =
  options:
    livereload: true

  css:
    files: ["debug/styles/**/*.styl"]
    tasks: ["stylus:debug"]

  js:
    files: ["debug/js/**/*.js"]
    tasks: ["newer:copy:debug"]

  html:
    files: ["debug/**/*.jade", "!debug/templates/**/*"]
    tasks: ["jade:debug"]

  templates:
    files: ["debug/templates/**/*.jade"]
    tasks: ["shell:clientjade"]