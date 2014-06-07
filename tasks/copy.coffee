module.exports = debug:
  files: [
    {
      expand: true
      cwd: "debug/js"
      src: ["*.js"]
      dest: "dist/js"
      ext: ".js"
    },
    {
      expand: true
      cwd: "debug/img"
      src: ["*"]
      dest: "dist/img"
    }
  ]