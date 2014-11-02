domify = require 'domify'
html = '<div>Hello <span class="name"></span>!</div>'
Widget = ()->
  if (!(@ instanceof Widget)) 
    return new Widget() 
  @element = domify(html)
  
Widget::setName = (name) ->
  @element.querySelector('.name').textContent = name

Widget::appendTo = (target) ->
  target.appendChild(@element)


module.exports = Widget()
