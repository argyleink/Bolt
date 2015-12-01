app             = require('koa')()
router          = require('koa-router')()
jade            = require 'koa-jade'
serve           = require 'koa-static'
sniffer         = require 'snifferjs'
error404        = require './error404'

env             = process.env.NODE_CONFIG or 'dev'
packageJson     = require '../package.json'
files           = require "../files"

isDev           = env == 'dev'
baseDir         = __dirname.slice(0, __dirname.indexOf('/server'))
buildDir        = './build/' + (if isDev then 'dev' else 'www') + '/'
port            = if isDev then 3030 else 3031

app
  .use(new jade(
    viewPath: './app/'
    locals:
      dev: env      == 'dev'
      project:      packageJson
      app_files:    files
      data:         require('quaff')('app/data/')
    noCache:      if isDev then true else false
  ).middleware)
  .use(router.routes())
  .use(serve(buildDir))
  .use(error404)

router.get '/', (next) ->
  yield next
  @render 'index', visitor: sniffer(@request.headers['user-agent'])

app.listen port