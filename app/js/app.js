var App = App || {}

App.Startup = (function(){
  const foo = 'bar'

  function privateMethod() {}

  function name() {
    return foo
  }

  return {
    name
  }
})()