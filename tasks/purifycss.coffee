module.exports = prod:
  src: [
    "<%= build_dir %>/**/*.html"
    "<%= build_dir %>/js/**/*.js"
  ]
  css: ["<%= build_dir %>/styles/app.css"]
  dest: "<%= build_dir %>/styles/app.css"
