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
      "<%= dirs.base %>/**/*.jade"
    ]
    tasks: ["jade:dev"]

  client_templates:
    files: "<%= dirs.base %>/_jade/client/*.jade"
    tasks: ["jade:client"]

  data:
    files: "<%= dirs.base %>/data/**/*"
    tasks: ["jade:dev"]
    options:
      spawn: true