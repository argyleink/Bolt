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
      "dist/js/lib.min.js":         libsArray
      "dist/js/device-detect.js":   "app/js/bower/device-detect.js/device-detect.js"
      "dist/js/shiv.js":            "app/js/shiv.js"
      "dist/js/script.js":          "app/js/script.js"
      "dist/js/app.min.js":         [
        "app/js/app.js"
        # app.js should be first, since it sets the namespace
        "app/js/*.js"
        "!app/js/shiv.js"
        "!app/js/script.js"
      ]

  libs:
    files:
      "dist/js/lib.min.js": libsArray