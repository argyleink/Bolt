var App = {};
App.ModuleTemplate = (function(){

  var appName             = 'Jade and Stylus rule'
    , listViewContainer   = $('#list-template-example')
    , ajaxViewContainer   = $('#ajax-example');

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
          { title: 'Title 1', detail: 'Detail 1' },
          { title: 'Title 2', detail: 'Detail 2' },
          { title: 'Title 3', detail: 'Detail 3' }
        ]
      }
    );
  }

  function renderAjaxExample() {
    ajaxViewContainer.load('ajax/example.html');
  }

  // Example methods to show how these things can work
  renderJadeList();
  renderAjaxExample();

  return {
    name: publicMethod
  }

})();