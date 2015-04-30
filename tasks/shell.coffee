module.exports =
  clientjade:
    command: "node_modules/clientjade/bin/clientjade app/_jade/client-templates > app/js/templates.js"

  open_prod:
    command: "open 'http://localhost:3031'"

  open_dev:
    command: "open 'http://localhost:3030'"

  open_sublime:
    command: "open app.sublime-project"