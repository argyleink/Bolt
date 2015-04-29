var App = {};
App.Startup = (function(){

  var appName = 'Jade and Stylus rule';

  Velocity(document.querySelectorAll('#bolt-logo path'), 'transition.expandIn', {
    drag:     true,
    stagger:  100,
    delay:    500
  });
  
  window.onload = function(){
    App.TemplateExample.render();
  }

})();