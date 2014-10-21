libsArray = [
  # grab each bower dep individually, doing this by hand is the best way I've found
  "app/js/bower/jquery/jquery.js"
  "app/js/bower/jquery.finger/dist/jquery.finger.js"

  # then grab all single library items form the libs/ dir
  "app/js/libs/*.js"
]

module.exports =
  prod:
    files: 
      "dist/js/lib.min.js":         libsArray,
      "dist/js/detect-and-fill.js": "app/js/libs/detect-and-fill.js",
      "dist/js/app.min.js":         ["app/js/*.js", "!app/js/detect-and-fill.js"]

  libs:
    files:
      "dist/js/lib.min.js": libsArray