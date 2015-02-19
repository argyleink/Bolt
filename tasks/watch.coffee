module.exports =
  options:
    livereload: false
    spawn: false

  css:
    files: ["<%= app_dir %>/styles/**/*.styl"]
    tasks: ["stylus:dev"]

  js:
    files: ["<%= app_dir %>/js/*.js"]
    tasks: ["newer:copy:dev"]

  libs:
    files: ["<%= app_dir %>/js/bower/**/*.js", "<%= app_dir %>/js/libs/**/*.js"]
    tasks: ["uglify:dev"]

  images:
    files: ["<%= app_dir %>/img/**/*"]
    tasks: ["newer:copy:dev"]

  html:
    files: ["<%= app_dir %>/**/*.jade", "!<%= app_dir %>/templates/**/*.jade"]
    tasks: ["jade:dev"]

  templates:
    files: ["<%= app_dir %>/templates/**/*.jade", "<%= app_dir %>/_jade/**/*.jade"]
    tasks: ["shell:clientjade"]