jQuery ->
  products = $('#node_product_id').html()
  console.log(products)
  $('#node_manufacturer_id').change ->
    manufacturer = $('#node_manufacturer_id :selected').text()
    escaped_manufacturer = manufacturer.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(products).filter("optgroup[label=#{escaped_manufacturer}]").html()
    console.log(options)
    if options
      $('#node_product_id').html(options)
      $('#node_product_id').parent().show()
    else
      $('#node_product_id').empty()
      $('#node_product_id').parent().hide()