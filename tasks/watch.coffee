module.exports =
  options:
    livereload: false

  css:
    files: ["<%= dirs.base %>/styles/**/*.styl"]
    tasks: ["stylus:dev"]

  js:
    files: ["<%= dirs.base %>/js/**/*.js"]
    tasks: ["newer:copy:dev"]

  images:
    files: ["<%= dirs.base %>/assets/**/*"]
    tasks: ["newer:copy:dev"]

  html:
    files: [
      "<%= dirs.base %>/**/*.jade",
      "!<%= dirs.base %>/client-templates/**/*.jade"
    ]
    tasks: ["jade:dev"]
    options:
      nospawn: true

  data:
    files: "<%= dirs.base %>/data/**/*"
    tasks: ["jade:dev"]
    options:
      nospawn: false

  templates:
    files: ["<%= dirs.base %>/_jade/client-templates/**/*.jade"]
    tasks: ["shell:clientjade"]