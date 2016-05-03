module.exports =
  options:
    livereload: false
    spawn:      false

  css:
    files: ["<%= dirs.base %>/styles/**/*.styl"]
    tasks: ["stylus:dev"]

  js:
    files: ["<%= dirs.base %>/js/**/*.js"]
    tasks: ["newer:copy:dev"]

  assets:
    files: ["<%= dirs.base %>/assets/**/*"]
    tasks: ["newer:copy:dev"]

  html:
    files: [
      "<%= dirs.base %>/**/*.pug"
    ]
    tasks: ["pug:dev"]

  data:
    files: "<%= dirs.base %>/data/**/*"
    tasks: ["pug:dev"]
    options:
      spawn: true
