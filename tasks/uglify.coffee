module.exports =
  prod:
    options:
      banner: "<%= meta.banner %>"
    files: 
      "<%= prod_build_dir %>/js/lib.min.js":         "<%= vendor_files.bower %>"
      "<%= prod_build_dir %>/js/app.min.js":         "<%= app_files.js.app %>"
      "<%= prod_build_dir %>/js/polyfill.js":        "<%= app_files.js.polyfills %>"
      
  # dev should be using jade imports for easy debug
  dev:
    options:
      mangle:           false
      compress:         false
      beautify:         true
      preserveComments: 'all'
      sourceMap:        true
    files:
      "<%= dev_build_dir %>/js/polyfill.js":        "<%= app_files.js.polyfills %>"