module.exports =
  prod:
    files: 
      "dist/js/lib.min.js":         "<%= vendor_files.bower %>"
      "dist/js/app.min.js":         "<%= app_files.js.app %>"
      "dist/js/polyfill.js":        "<%= app_files.js.polyfills %>"
      
  # dev should be using jade imports for easy debug
  # dev:
  #   options:
  #     mangle: false
  #     compress: false
  #     beautify: true
  #   files:
  #     "dist/js/lib.min.js": "<%= vendor_files.js %>"