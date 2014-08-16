libsArray = [
  "app/js/libs/jquery/dist/jquery.js"
  "app/js/libs/fastclick/lib/fastclick.js"
  "app/js/ga.js"
]

module.exports =
  prod:
    files: 
      "dist/js/lib.min.js": libsArray,
      "dist/js/app.min.js": [
        # bundle up your app logic
        "app/js/app.js"
      ]

  libs:
    files:
      "dist/js/lib.min.js": libsArray