jQuery ->
  support_contracts = $('#node_support_contract_id').html()
  console.log(support_contracts)
  $('#node_vendor_id').change ->
    vendor = $('#node_vendor_id :selected').text()
    escaped_vendor = vendor.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(support_contracts).filter("optgroup[label=#{escaped_vendor}]").html()
    console.log(options)
    if options
      $('#node_support_contract_id').html(options)
    else
      $('#node_support_contract_id').empty()