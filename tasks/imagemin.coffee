module.exports = 
  images:
    files: [
      expand: true
      cwd:    "<%= app_dir %>/assets/"
      src:    ["**/*.{jpg,png,gif,jpeg}"]
      dest:   "<%= build_dir %>/assets/"
    ]