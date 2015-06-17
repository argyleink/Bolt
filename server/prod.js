var app           = require('koa')()
  , router        = require('koa-router')()
  , jade          = require('koa-jade')
  , serve         = require('koa-static')
  
  , packageJson   = require('../package.json')
  , bowerDeps     = require('./bower-deps')

app
  .use(jade.middleware({
    viewPath:     './app/',
    locals:       {
      dev:      false,
      project:  packageJson,
      bower:    bowerDeps.js
    }
  }))
  .use(router.routes())
  .use(serve('./build/www/'))

router.get('/', function*() {
  this.render('index', {})
})

app.listen(3031)