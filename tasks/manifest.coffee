module.exports = manifest:
  options:
    basePath:  "<%= build_dir %>/"
    timestamp: true
  src: [
    '*.html'
    'js/*'
    'styles/*.css'
    'img/*.{jpg,gif,png,ico,svg,jpeg}'
  ]
  dest: '<%= build_dir %>/manifest.appcache'