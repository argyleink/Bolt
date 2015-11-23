module.exports = prod:
  src: [
    "<%= dirs.build %>/**/*.html"
    "<%= dirs.build %>/js/**/*.js"
  ]
  css: ["<%= dirs.build %>/styles/app.css"]
  dest: "<%= dirs.build %>/styles/app.css"
