module.exports = 
  images:
    files: [
      expand: true
      cwd:    "<%= app_dir %>/img/"
      src:    ["**/*.{jpg,png,gif,jpeg}"]
      dest:   "<%= prod_build_dir %>/img/"
    ]