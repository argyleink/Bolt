App.ModuleTemplate = (function(){

  var appName = 'Jade and Stylus rule';

  function privateMethod() {

  }

  function publicMethod() {
    return appName;
  }

  function renderJadeList() {
    // http://projects.jga.me/clientjade/
    jade.render(
      $('#list-template-example')[0],       // DOM Node
      'list',                               // Template name
      {
        items: [
          { title: 'Title 1', detail: 'Detail 1' },
          { title: 'Title 2', detail: 'Detail 2' },
          { title: 'Title 3', detail: 'Detail 3' }
        ]
      }
    );
  }

  renderJadeList();

  return {
    name: publicMethod
  }

})();