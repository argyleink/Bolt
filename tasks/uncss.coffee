module.exports = dist:
  files: 
    '<%= build_dir %>/styles/master.css': [
      '<%= build_dir %>/*.html'
    ]