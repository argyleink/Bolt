module.exports =
  clientjade:
    command: "node_modules/clientjade/bin/clientjade app/templates app/templates > app/js/libs/templates.js"

  open_app:
    command: "open 'http://0.0.0.0:3030'"