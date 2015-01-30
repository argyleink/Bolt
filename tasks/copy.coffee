module.exports = dev:
  files: [
      expand: true
      cwd:    "app/js"
      src:    ["*.js"]
      dest:   "dist/js"
    ,
      expand: true
      cwd:    "app/js/bower/device-detect.js"
      src:    ["device-detect.js"]
      dest:   "dist/js"
    ,
      expand: true
      cwd:    "app/img"
      src:    ["*"]
      dest:   "dist/img"
    ,
      expand: true
      cwd:    "app/"
      src:    ["robots.txt", "manifest.json"]
      dest:   "dist/"
  ]