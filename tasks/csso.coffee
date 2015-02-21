module.exports =
  prod:
    options:
      banner: "<%= meta.banner %>"
      report: "min"
    files:
      "<%= build_dir %>/styles/app.css": "<%= build_dir %>/styles/app.css"