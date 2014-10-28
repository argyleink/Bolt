module.exports = 
  images:
    files: [
      expand: true
      cwd: "app/img/"
      src: ["**/*.{svg}"]
      dest: "dist/img/"
    ]