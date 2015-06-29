module.exports =
  dev:
    bsFiles:
      src: [
        "<%= build_dir %>/styles/*"
        "<%= app_dir %>/**/*.jade"
        "<%= build_dir %>/js/lib.min.js"
      ]

    options:
      watchTask: true
      proxy: "localhost:3030"
