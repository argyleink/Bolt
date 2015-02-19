module.exports = 
  dev:
    files: [
        expand: true
        cwd:    "<%= app_dir %>/js"
        src:    ["*.js"]
        dest:   "<%= dev_build_dir %>/js"
      ,
        expand: true
        cwd:    "<%= app_dir %>/img"
        src:    ["*"]
        dest:   "<%= dev_build_dir %>/img"
      ,
        expand: true
        cwd:    "<%= app_dir %>/"
        src:    "<%= vendor_files.assets %>"
        dest:   "<%= dev_build_dir %>/"
    ]