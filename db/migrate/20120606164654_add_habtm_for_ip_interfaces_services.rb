class AddHabtmForIpInterfacesServices < ActiveRecord::Migration
  def up
    create_table :ip_interfaces_services, :id => false do |t|
      t.integer :ip_interface_id
      t.integer :service_id
    end
    add_index :ip_interfaces_services, [:ip_interface_id, :service_id]
    add_index :ip_interfaces_services, [:service_id, :ip_interface_id]
  end

  def down
    drop_table :ip_interfaces_services
  end
end