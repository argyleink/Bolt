var app           = require('koa')()
  , router        = require('koa-router')()
  , jade          = require('koa-jade')
  , serve         = require('koa-static')
  , sniffer       = require('snifferjs')
  
  , packageJson   = require('../package.json')
  , bowerDeps     = require('./bower')(__dirname.slice(0, __dirname.indexOf('/server')))

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

// 404 and error handling
app.use(function *pageNotFound(next){
  yield next

  if (404 != this.status) return

  // we need to explicitly set 404 here
  // so that koa doesn't assign 200 on body=
  this.status = 404

  switch (this.accepts('html', 'json')) {
    case 'html':
      this.type = 'html'
      // send errors to jade if you want
      this.render('404', {})
      break
    case 'json':
      this.body = {
        message: 'Page Not Found'
      }
      break
    default:
      this.type = 'text'
      this.body = 'Page Not Found'
  }
})

app.listen(3030)