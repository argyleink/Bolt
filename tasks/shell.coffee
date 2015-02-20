module.exports =
  clientjade:
    command: "node_modules/clientjade/bin/clientjade app/templates > app/js/templates.js"

  open_app:
    command: "open 'http://localhost:3030'"

  open_sublime:
    command: "open app.sublime-project"