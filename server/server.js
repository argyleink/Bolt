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
  , buildDir      = './build/'+ (isDev ? 'dev' : 'www') +'/'
  , port          = isDev ? 3030 : 3031

var app_files = {
  js: ['js/app.js'],
  css: ['js/bower/flexboxgrid/dist/flexboxgrid.css']
}

app
  .use(new jade({
    viewPath:     './app/',
    locals:       {
      dev:        env === 'dev',
      project:    packageJson,
      app_files:  app_files,
      data:       require("quaff")("app/data/")
    },
    noCache:      isDev ? true:false
  }).middleware)
  .use(router.routes())
  .use(serve(buildDir))
  .use(error404)

router.get('/', function*(next) {
  this.render('index', {
    visitor: sniffer(this.request.headers['user-agent'])
  })
})

app.listen(port)