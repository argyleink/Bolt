var App = {};
App.TemplateExample = (function(){

  var listViewContainer = document.getElementById('list-template-example');

  function renderJadeList() {
    // http://projects.jga.me/clientjade/
    jade.render(
      listViewContainer,     // DOM Node
      'list',                // Template name
      {
        items: [
          { title: 'Title 1', details: ['Detail 1', 'Detail 2'] },
          { title: 'Title 2', details: ['Detail 3'] },
          { title: 'Title 3', details: ['Detail 4', 'Detail 5'] }
        ]
      }
    );
  }

  return {
    render: renderJadeList
  }

})();