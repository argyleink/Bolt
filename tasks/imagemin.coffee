module.exports = 
  images:
    files: [
      expand: true
      cwd:    "<%= app_dir %>/img/"
      src:    ["**/*.{jpg,png,gif,jpeg}"]
      dest:   "<%= build_dir %>/img/"
    ]