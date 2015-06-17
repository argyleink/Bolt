module.exports =
  dev:
    script: 'server/dev.js'
    options:
      env:
        NODE_ENV:     'development'
        NODE_CONFIG:  'dev'
      nodeArgs: ['--harmony']
      watch: ['server']

  prod:
    script: 'server/prod.js'
    options:
      env:
        NODE_ENV:     'production'
        NODE_CONFIG:  'prod'
      nodeArgs: ['--harmony']
      watch: ['server']