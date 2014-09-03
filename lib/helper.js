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

exports.getSummary = function (content) {
  var summary = content.substring(0, 200);
  var reg = /```/g;
  var check = function (content) {
    var results = summary.match(reg);
    // ``` 需要成对出现
    return !results || (results.length % 2 === 0);
  };

  while (summary.length < content.length && !check(summary)) {
    summary += content.substring(summary.length, summary.length + 3);
    if (summary.length > 500) {
      summary = content.substring(0, content.lastIndexOf('```'));
      break;
    }
  }
  return summary;
};
