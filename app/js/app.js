var App = App || {}
App.Startup = (function(){
  var _foo = 'baz'

  function _privateMethod() {}

  function publicMethod() {
    return _foo
  }

  return {
    name: publicMethod
  }
})()