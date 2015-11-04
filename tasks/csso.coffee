module.exports =
  prod:
    options:
      banner: "<%= banner %>"
      report: "min"
    files:
      "<%= dirs.build %>/styles/app.css": "<%= dirs.build %>/styles/app.css"