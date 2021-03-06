// Generated by CoffeeScript 1.8.0
(function() {
  var combine, fs, path, split, sprintf, through;

  fs = require('fs');

  sprintf = require('sprintf').sprintf;

  path = require('path');

  combine = require('stream-combiner');

  through = require('through');

  split = require('split');

  module.exports = function(file) {
    var linenum, tr;
    linenum = 0;
    if (path.extname(file) === '.txt') {
      tr = through(function(line) {
        if (linenum % 5 === 0) {
          this.queue(console.log(sprintf("%3d %s", _i, line) + "\n"));
        } else {
          this.queue(console.log("    " + line + "\n"));
        }
        return linenum++;
      }, function() {
        return this.queue(null);
      });
    }
    return combine(split(), tr);
  };

}).call(this);
