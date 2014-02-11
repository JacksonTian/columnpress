exports.extend = function () {
  var ret = {};
  for (var i = 0; i < arguments.length; i++) {
    var obj = arguments[i];
    for (var key in obj) {
      ret[key] = obj[key];
    }
  }
  return ret;
};
