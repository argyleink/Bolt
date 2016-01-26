module.exports = 
  dev: 
    options:
      sourceMap:  true
      presets:    ["es2015"]
      sourceRoot: "<%= dirs.base %>"
    files: [
      expand: true
      cwd:    "<%= dirs.base %>"
      src:    "<%= app.js %>"
      dest:   "<%= dirs.build %>"
    ]
    