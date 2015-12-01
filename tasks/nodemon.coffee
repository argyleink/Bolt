module.exports =
  dev:
    script: 'server/server.coffee'
    options:
      env:
        NODE_ENV:     'development'
        NODE_CONFIG:  'dev'
      nodeArgs: [
        # '--harmony'
        '--debug'
      ]
      watch: ['server']

  prod:
    script: 'server/server.coffee'
    options:
      env:
        NODE_ENV:     'production'
        NODE_CONFIG:  'prod'
      nodeArgs: [
        # '--harmony'
      ]
      watch: ['server']