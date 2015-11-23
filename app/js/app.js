var App = App || {};
App.Startup = (function(){
  // private vars
  var foo = 'bar';

  function privateMethod() {}

  function publicMethod() {
    return foo;
  }

  return {
    name: publicMethod
  }
})();