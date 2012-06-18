jQuery ->
	physical_racks = $('#node_physical_rack_id').html()
	console.log(physical_racks)
	$('#node_room_id').change ->
	  room = $('#node_room_id :selected').text()
	  escaped_room = room.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
	  options = $(physical_racks).filter("optgroup[label=#{escaped_room}]").html()
	  console.log(options)
	  if options
	    $('#node_physical_rack_id').html(options)
	  else
	    $('#node_physical_rack_id').empty()