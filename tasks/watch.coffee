module.exports =
  options:
    livereload: false
    spawn:      false

  css:
    files: ["<%= dirs.base %>/styles/**/*.styl"]
    tasks: ["stylus:dev"]

  js:
    files: ["<%= dirs.base %>/js/**/*.js"]
    tasks: ["newer:babel:dev"]

  assets:
    files: ["<%= dirs.base %>/assets/**/*"]
    tasks: ["newer:copy:dev"]

  html:
    files: [
      "<%= dirs.base %>/**/*.jade"
    ]
    tasks: ["jade:dev"]

  data:
    files: "<%= dirs.base %>/data/**/*"
    tasks: ["jade:dev"]
    options:
      spawn: true