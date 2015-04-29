module.exports = 
  images:
    files: [
      expand: true
      cwd:    "<%= app_dir %>/assets/"
      src:    ["**/*.{jpg,png,gif,jpeg,ico}"]
      dest:   "<%= build_dir %>/assets/"
    ]