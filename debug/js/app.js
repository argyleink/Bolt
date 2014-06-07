$(function(){

  // Init Fastclick
  // FastClick.attach(document.body);

  // $.ajaxPrefilter('script', function(settings, osettings, xhr) {
  //   settings.cache = true;
  // });
  // $.ajaxSetup({'isLocal': true});

  // set container height
  // fixes many bugs to have the height set explicitly on a parent of absolute elements
  // watch it on resize, to reset app height, jqueries resize is throttled
  $(window).resize(setAppHeight);
  function setAppHeight() {
    App.Browser.ipadAndUp = window.innerWidth >= 1024;
    // if (App.Browser.desktop)
      // document.getElementById('viewport').style.minHeight = window.innerHeight + 'px';
    // else
    //   document.getElementById('viewport').style.minHeight = window.innerHeight - 62 + 'px';
  }
  setAppHeight();

});