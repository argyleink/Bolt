module.exports = (next) ->
  yield next

  if 404 != @status
    return

  # we need to explicitly set 404 here
  # so that koa doesn't assign 200 on body=

  @status = 404
  
  switch @accepts('html', 'json')
    when 'html'
      @type = 'html'
      # send errors to jade if you want
      @render '404', {}
    when 'json'
      @body = message: 'Page Not Found'
    else
      @type = 'text'
      @body = 'Page Not Found'