var App = App || {};
App.Browser = (function() {

/* Modernizr 2.7.1 (Custom Build) | MIT & BSD
 * Build: http://modernizr.com/download/#-svg-cssclasses-teststyles-prefixes-css_positionsticky
 */
;window.Modernizr=function(a,b,c){function x(a){j.cssText=a}function y(a,b){return x(m.join(a+";")+(b||""))}function z(a,b){return typeof a===b}function A(a,b){return!!~(""+a).indexOf(b)}function B(a,b,d){for(var e in a){var f=b[a[e]];if(f!==c)return d===!1?a[e]:z(f,"function")?f.bind(d||b):f}return!1}var d="2.7.1",e={},f=!0,g=b.documentElement,h="modernizr",i=b.createElement(h),j=i.style,k,l={}.toString,m=" -webkit- -moz- -o- -ms- ".split(" "),n={svg:"http://www.w3.org/2000/svg"},o={},p={},q={},r=[],s=r.slice,t,u=function(a,c,d,e){var f,i,j,k,l=b.createElement("div"),m=b.body,n=m||b.createElement("body");if(parseInt(d,10))while(d--)j=b.createElement("div"),j.id=e?e[d]:h+(d+1),l.appendChild(j);return f=["&#173;",'<style id="s',h,'">',a,"</style>"].join(""),l.id=h,(m?l:n).innerHTML+=f,n.appendChild(l),m||(n.style.background="",n.style.overflow="hidden",k=g.style.overflow,g.style.overflow="hidden",g.appendChild(n)),i=c(l,a),m?l.parentNode.removeChild(l):(n.parentNode.removeChild(n),g.style.overflow=k),!!i},v={}.hasOwnProperty,w;!z(v,"undefined")&&!z(v.call,"undefined")?w=function(a,b){return v.call(a,b)}:w=function(a,b){return b in a&&z(a.constructor.prototype[b],"undefined")},Function.prototype.bind||(Function.prototype.bind=function(b){var c=this;if(typeof c!="function")throw new TypeError;var d=s.call(arguments,1),e=function(){if(this instanceof e){var a=function(){};a.prototype=c.prototype;var f=new a,g=c.apply(f,d.concat(s.call(arguments)));return Object(g)===g?g:f}return c.apply(b,d.concat(s.call(arguments)))};return e}),o.svg=function(){return!!b.createElementNS&&!!b.createElementNS(n.svg,"svg").createSVGRect};for(var C in o)w(o,C)&&(t=C.toLowerCase(),e[t]=o[C](),r.push((e[t]?"":"no-")+t));return e.addTest=function(a,b){if(typeof a=="object")for(var d in a)w(a,d)&&e.addTest(d,a[d]);else{a=a.toLowerCase();if(e[a]!==c)return e;b=typeof b=="function"?b():b,typeof f!="undefined"&&f&&(g.className+=" "+(b?"":"no-")+a),e[a]=b}return e},x(""),i=k=null,e._version=d,e._prefixes=m,e.testStyles=u,g.className=g.className.replace(/(^|\s)no-js(\s|$)/,"$1$2")+(f?" js "+r.join(" "):""),e}(this,this.document),Modernizr.addTest("csspositionsticky",function(){var a="position:",b="sticky",c=document.createElement("modernizr"),d=c.style;return d.cssText=a+Modernizr._prefixes.join(b+";"+a).slice(0,-a.length),d.position.indexOf(b)!==-1});
  
  var ua = navigator.userAgent;

  // check browser
  var detect = {
    chrome:     ua.indexOf("Chrome") > -1 ? true : false,
    safari:     ua.indexOf("Safari") > -1 ? true : false,
    opera:      ua.indexOf("Opera") > -1 ? true : false,
    firefox:    ua.indexOf("Firefox") > -1 ? true : false,
    msie:       ua.indexOf("MSIE") > -1 ? true : false,

    // check os
    android:    ua.match(/Android/i) ? true : false,
    ios:        ua.match(/iPhone|iPad|iPod/i) ? true : false,
    wp8:        ua.match(/IEMobile/i) ? true : false,
    kindle:     ua.match(/Amazon/i) ? true : false,

    // mobile:     this.android || this.ios || this.wp8, // not working, not sure why
    // desktop:    !this.mobile,
    ipadAndUp:  window.innerWidth >= 1024,

    svg:        Modernizr.svg,
    height:     window.innerHeight,
    width:      window.innerWidth
  }

  detect.mobile = detect.android || detect.ios || detect.wp8;
  detect.desktop = !detect.mobile;

  // function for injecting stylesheets
  function addStylesheet(path) {
    document.write('<link rel="stylesheet" type="text/css" href="'+ path +'"></link>');
  }

  // and now we do our filling
  if (detect.android) { 
    addStylesheet('/styles/android.css');
  }
  else if (detect.ios)     { 
    addStylesheet('/styles/ios.css'); 
  }
  else if (detect.wp8)     { 
    addStylesheet('/styles/ie10.css'); 

    // stupid ms, their viewport shit is all screwed up, this hack sucks, but is the best solution as of right now
    var msViewportStyle = document.createElement("style");
    msViewportStyle.appendChild(
      document.createTextNode(
        "@-ms-viewport{width:auto!important}"
      )
    );
    document.getElementsByTagName("head")[0].appendChild(msViewportStyle);
  }

  if (detect.android && detect.kindle) detect.android = false; 

  // if (!detect.svg) { 
  //   document.querySelector('.brand-logo').setAttribute('src', '/img/logo-dark.png'); 
  // }

  return detect;
 
})();