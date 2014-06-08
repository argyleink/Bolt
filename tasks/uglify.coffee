module.exports =
  prod:
    files: [
      {
        expand: true
        cwd:    "app/js"
        src:    ["*.js"]
        dest:   "dist/js/"
        ext:    ".js"
      }
    ]

  libs:
    files:
      "dist/js/lib.min.js": [
        "bower_components/jquery/dist/jquery.js"
        # "static/js/libs/*.js"
      ]