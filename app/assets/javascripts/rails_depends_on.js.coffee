//= require dependsOn
window.prepareDependsOn = ->

  for element in $('.depends-on')
    field_to_check = $(element).data('id')
    field_to_check = "##{field_to_check}"
    type = ($(field_to_check).attr('type'))
    switch type
      when 'checkbox' then depend_type = 'checked'
      when 'text', 'number', 'select' then depend_type = 'values'
    value =  $(element).data('value')
    object = {}
    object[field_to_check] = {
      "#{depend_type}": value
    }
    $(element).dependsOn object

# ---
# generated by js2coffee 2.1.0
