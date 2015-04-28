App.ModuleTemplate = (function(){

  var foo = 'bar';

  function privateMethod() {

  }

  function publicMethod() {
    return foo;
  }

  return {
    name: publicMethod
  }

})();