module.exports = manifest:
  options:
    basePath:  "<%= dirs.build %>/"
    timestamp: true
  src: [
    "*.html"
    "js/*"
    "styles/*.css"
    "assets/**/*.{jpg,jpeg,gif,png,ico,svg,jpeg,webp,ttf,woff,otf}"
  ]
  dest: "<%= dirs.build %>/manifest.appcache"