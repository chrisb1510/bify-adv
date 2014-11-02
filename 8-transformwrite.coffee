fs = require 'fs'
sprintf = require('sprintf').sprintf
path = require 'path'
combine = require 'stream-combiner'

through = require 'through'

split = require 'split'


module.exports = (file)->
  linenum = 0
  if path.extname(file) is '.txt'
    tr = through (line)->
      if linenum % 5 is 0
        @queue console.log(sprintf( "%3d %s", _i, line)+"\n")
      else
        @queue console.log("    #{line}\n")
      linenum++ 
    ,()->
      @queue null  
    
    

  combine(split(),tr)
  


   