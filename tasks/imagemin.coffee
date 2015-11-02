module.exports =
  images:
    files: [
      expand: true
      cwd:    "<%= app_dir %>/assets/"
      src:    ["**/*.{jpg,png,gif,jpeg,ico,webp}"]
      dest:   "<%= build_dir %>/assets/"
    ]