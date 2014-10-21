App.ModuleTemplate = (function(){

  var appName = 'Jade and Stylus rule';

  function privateMethod() {

  }

  function publicMethod() {
    return appName;
  }

  return {
    name: publicMethod
  }

})();