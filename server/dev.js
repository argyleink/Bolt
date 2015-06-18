var app           = require('koa')()
  , router        = require('koa-router')()
  , jade          = require('koa-jade')
  , serve         = require('koa-static')
  , sniffer       = require('snifferjs')
  
  , packageJson   = require('../package.json')
  , bowerDeps     = require('./bower-deps')

app
  .use(jade.middleware({
    viewPath:     './app/',
    locals:       {
      dev:      true,
      project:  packageJson,
      bower:    bowerDeps.js
    },
    noCache:      true
  }))
  .use(router.routes())
  .use(serve('./build/dev/'))

router.get('/', function*(next) {
  this.render('index', {
    visitor: sniffer(this.request.headers['user-agent'])
  })
})

app.listen(3030)