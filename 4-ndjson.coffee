exports.parse = (str)->
  str.split('\n').map(JSON.parse)
  #split the string, then for each parse it to a JSON object
exports.stringify = (rows)->
  rows.map(JSON.stringify).join('\n') 
  #take the array, stringify each entry and join by new line