var app           = require('koa')()
  , router        = require('koa-router')()
  , jade          = require('koa-jade')
  , serve         = require('koa-static')
  , sniffer       = require('snifferjs')
  , error404      = require('./error404')
  
  , env           = process.env.NODE_CONFIG || 'dev'
  , packageJson   = require('../package.json')
  , isDev         = env === 'dev'
  , baseDir       = __dirname.slice(0, __dirname.indexOf('/server'))
  , bowerDeps     = require('./bower')(baseDir + (isDev ? '/app/' : 'app/'))
  , buildDir      = './build/'+ (isDev ? 'dev' : 'www') +'/'
  , port          = isDev ? 3030 : 3031

app
  .use(jade.middleware({
    viewPath:     './app/',
    locals:       {
      dev:      env === 'dev',
      project:  packageJson,
      bower:    bowerDeps.js
    },
    noCache:      isDev ? true:false
  }))
  .use(router.routes())
  .use(serve(buildDir))
  .use(error404)

router.get('/', function*(next) {
  this.render('index', {
    visitor: sniffer(this.request.headers['user-agent'])
  })
})

router.get('/demo', function*(next) {
  this.render('demo', {
    visitor: sniffer(this.request.headers['user-agent'])
  })
})

app.listen(port)