var App = App || {};
App.Startup = (function(){
  // private vars
  var foo = 'bar';

  // example usage of jade client template
  var markup = JST['app/_jade/client/datalist']({
    list: [
      {
        title: 'title 1',
        description: 'description 1'
      },
      {
        title: 'title 2',
        description: 'description 2'
      }
    ]
  });
  console.log(markup)

  function privateMethod() {}

  function publicMethod() {
    return foo;
  }

  return {
    name: publicMethod
  }
})();