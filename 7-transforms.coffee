fs = require 'fs'

sprintf = require('sprintf').sprintf

src = fs.readFileSync 'wake.txt','utf8'
lines = src.split '\n'
for line in lines
  if _i % 5 is 0
    console.log sprintf("%3d %s",_i,line)
  else
    console.log "    #{line}"  