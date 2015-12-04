this["JST"] = this["JST"] || {};

this["JST"]["app/_jade/client/datalist"] = function template(locals) {
var buf = [];
var jade_mixins = {};
var jade_interp;
;var locals_for_with = (locals || {});(function (list, undefined) {
buf.push("<dl>");
// iterate list
;(function(){
  var $$obj = list;
  if ('number' == typeof $$obj.length) {

    for (var $index = 0, $$l = $$obj.length; $index < $$l; $index++) {
      var item = $$obj[$index];

buf.push("<dt>" + (jade.escape(null == (jade_interp = item.title) ? "" : jade_interp)) + "</dt><dd>" + (jade.escape(null == (jade_interp = item.description) ? "" : jade_interp)) + "</dd>");
    }

  } else {
    var $$l = 0;
    for (var $index in $$obj) {
      $$l++;      var item = $$obj[$index];

buf.push("<dt>" + (jade.escape(null == (jade_interp = item.title) ? "" : jade_interp)) + "</dt><dd>" + (jade.escape(null == (jade_interp = item.description) ? "" : jade_interp)) + "</dd>");
    }

  }
}).call(this);

buf.push("</dl>");}.call(this,"list" in locals_for_with?locals_for_with.list:typeof list!=="undefined"?list:undefined,"undefined" in locals_for_with?locals_for_with.undefined:typeof undefined!=="undefined"?undefined:undefined));;return buf.join("");
};