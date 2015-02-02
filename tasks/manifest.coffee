module.exports = manifest:
  options:
    basePath: 'dist/'
    timestamp: true
  src: [
    '*.html'
    'js/*'
    'styles/*.css'
    'img/*.{jpg,gif,png,ico,svg,jpeg}'
  ]
  dest: 'dist/manifest.appcache'