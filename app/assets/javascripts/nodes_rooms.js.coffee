jQuery ->
  rooms = $('#node_room_id').html()
  console.log(rooms)
  $('#node_building_id').change ->
    building = $('#node_building_id :selected').text()
    escaped_building = building.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(rooms).filter("optgroup[label=#{escaped_building}]").html()
    console.log(options)
    if options
      $('#node_room_id').html(options)
    else
      $('#node_room_id').empty()