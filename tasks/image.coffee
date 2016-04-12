module.exports =
  images:
    files: [
      expand: true
      cwd:    "<%= dirs.base %>/assets/"
      src:    ["**/*.{jpg,png,gif,jpeg,ico,webp,svg}"]
      dest:   "<%= dirs.build %>/assets/"
    ]
