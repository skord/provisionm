xml.instruct!
xml.tag!('model-import', 'non-ip-snmp-primary' => @requisition.non_ip_snmp_primary, 
         'non-ip-interfaces' => @requisition.non_ip_interfaces, 
         'foreign-source' => @requisition.name, 
         'date-stamp' => @requisition.updated_at.iso8601,
         'xmlns' => "http://xmlns.opennms.org/xsd/config/model-import"
         ) do
  @requisition.nodes.each do |node|
    xml.tag!('node', 'node-label' => node.name, 'foreign-id' => node.foreign_reference, 'building' => node.building.try(:name)) do
      node.ip_interfaces.each do |ip|
        xml.tag!('interface', 'snmp-primary' => ip.snmp_primary, 'status' => '1', 'ip-addr' => ip.address, 'descr' => ip.description) do
          ip.services.each do |s|
           xml.tag!('monitored-service', 'service-name' => s.name)
          end
        end
      end
      node.node_categories.each do |category|
        xml.tag!('category', 'name' => category.name)
      end
      unless node.building.nil?
        unless node.building.state.empty? || node.building.state.nil?
          xml.tag!('asset', 'value' => node.building.try(:state), 'name' => 'state')
        end
        unless node.building.city.empty? || node.building.city.nil?
          xml.tag!('asset', 'value' => node.building.try(:city), 'name' => 'city')
        end
        unless node.building.name.empty? || node.building.name.nil?
          xml.tag!('asset', 'value' => node.building.try(:name), 'name' => 'building')
        end
        unless node.building.address1.empty? || node.building.address1.nil?
          xml.tag!('asset', 'value' => node.building.try(:address1), 'name' => 'address1')
        end
        unless node.building.address2.empty? || node.building.address2.nil?
          xml.tag!('asset', 'value' => node.building.try(:address2), 'name' => 'address2')
        end
        unless node.building.zip.empty? || node.building.zip.nil?
          xml.tag!('asset', 'value' => node.building.try(:zip), 'name' => 'zip')
        end
      end
      unless node.vendor.nil?
        unless node.vendor.name.empty? || node.vendor.name.nil?
          xml.tag!('asset', 'value' => node.vendor.try(:name), 'name' => 'vendor')
        end
        unless node.vendor.phone.empty? || node.vendor.phone.nil?
          xml.tag!('asset', 'value' => node.vendor.try(:phone), 'name' => 'supportPhone')
        end
        unless node.vendor.fax.empty? || node.vendor.fax.nil?
          xml.tag!('asset', 'value' => node.vendor.try(:fax), 'name' => 'vendorFax')
        end                
      end
      unless node.manufacturer.nil?
        unless node.manufacturer.name.empty? || node.vendor.name.nil?
          xml.tag!('asset', 'value' => node.manufacturer.try(:name), 'name' => 'manufacturer')
        end
      end
      unless node.product.nil?
        unless node.product.model_number.empty? || node.product.model_number.nil?
          xml.tag!('asset', 'value' => node.product.try(:model_number), 'name' => 'modelNumber')
        end
      end
      unless node.support_contract.nil?
        unless node.support_contract.name.empty? || node.support_contract.name.nil?
          xml.tag!('asset', 'value' => node.support_contract.try(:name), 'name' => 'maintContractNumber')
        end
        unless node.support_contract.expires_at.nil?
          xml.tag!('asset', 'value' => node.support_contract.try(:expires_at), 'name' => 'maintContractExpiration')
        end        
      end
    end  
  end
end