module.exports = 
  images:
    files: [
      expand: true
      cwd: "app/assets/images"
      src: ["**/*.svg"]
      dest: "<%= build_dir %>/assets/images"
    ]