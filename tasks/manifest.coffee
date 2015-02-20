module.exports = manifest:
  options:
    basePath:  "<%= prod_build_dir %>/"
    timestamp: true
  src: [
    '*.html'
    'js/*'
    'styles/*.css'
    'img/*.{jpg,gif,png,ico,svg,jpeg}'
  ]
  dest: '<%= prod_build_dir %>/manifest.appcache'