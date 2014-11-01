url = require 'url'
querystring = require 'querystring'

# get the url 
str = prompt()
query = url.parse(str).query
qstr = querystring.parse(query)


console.log(url.resolve(str, qstr.file))
 