var App = {};
App.ModuleTemplate = (function(){

  var appName             = 'Jade and Stylus rule'
    , listViewContainer   = $('#list-template-example');

  function privateMethod() {

  }

  function publicMethod() {
    return appName;
  }

  function renderJadeList() {
    // http://projects.jga.me/clientjade/
    jade.render(
      listViewContainer[0],     // DOM Node
      'list',                   // Template name
      {
        items: [
          { title: 'Title 1', details: ['Detail 1', 'Detail 2'] },
          { title: 'Title 2', details: ['Detail 3'] },
          { title: 'Title 3', details: ['Detail 4', 'Detail 5'] }
        ]
      }
    );
  }

  // Example methods to show how these things can work
  renderJadeList();

  return {
    name: publicMethod
  }

})();