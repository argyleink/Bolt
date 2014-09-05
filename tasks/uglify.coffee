libsArray = [
  "app/js/libs/jquery/jquery.js"
  "app/js/libs/jquery.finger/dist/jquery.finger.js"
  "app/js/ga.js"
]

module.exports =
  prod:
    files: 
      "dist/js/lib.min.js": libsArray,
      "dist/js/detect-and-fill.js": "app/js/detect-and-fill.js",
      "dist/js/app.min.js": [
        # bundle up your app logic
        "app/js/app.js"
      ]

  libs:
    files:
      "dist/js/lib.min.js": libsArray