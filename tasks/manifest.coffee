module.exports = manifest:
  options:
    basePath:  "<%= build_dir %>/"
    timestamp: true
  src: [
    '*.html'
    'js/*'
    'styles/*.css'
    'assets/**/*.{jpg,jpeg,gif,png,ico,svg,jpeg,webp,ttf,woff,otf}'
  ]
  dest: '<%= build_dir %>/manifest.appcache'