module.exports = 
  images:
    files: [
      expand: true
      cwd: "app/img/"
      src: ["**/*.svg"]
      dest: "<%= build_dir %>/img/"
    ]