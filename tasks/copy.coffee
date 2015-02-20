module.exports = 
  dev:
    files: [
      expand: true
      cwd:    "<%= app_dir %>/js"
      src:    ["*.js", "!shiv.js"]
      dest:   "<%= build_dir %>/js"
    ,
      expand: true
      cwd:    "<%= app_dir %>"
      src:    "<%= vendor_files.bower %>"
      dest:   "<%= build_dir %>"
    ,
      expand: true
      cwd:    "<%= app_dir %>/img"
      src:    ["*"]
      dest:   "<%= build_dir %>/img"
    ,
      expand: true
      cwd:    "<%= app_dir %>/"
      src:    "<%= vendor_files.assets %>"
      dest:   "<%= build_dir %>/"
    ]

  prod:
    files: [
      # prod mostly just copies assets (.txt, .mov, .mp3, etc)
      expand: true
      cwd:    "<%= app_dir %>/"
      src:    "<%= vendor_files.assets %>"
      dest:   "<%= build_dir %>/"
    ]