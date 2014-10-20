module.exports = 
  images:
    files: [
      expand: true
      cwd: "app/img/"
      src: ["**/*.{jpg,png,gif,jpeg}"]
      dest: "dist/img/"
    ]