uniq = require 'uniq'
uni = (str)->
  list = uniq str.split(',')

module.exports = uni