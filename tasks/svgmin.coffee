module.exports =
  images:
    files: [
      expand: true
      cwd: "app/assets/images"
      src: ["**/*.svg"]
      dest: "<%= dirs.build %>/assets/images"
    ]