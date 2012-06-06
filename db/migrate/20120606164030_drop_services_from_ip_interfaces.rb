class DropServicesFromIpInterfaces < ActiveRecord::Migration
  def up
    remove_index :ip_interfaces, :service_id
    remove_column :ip_interfaces, :service_id
  end

  def down
    add_column :ip_interfaces, :service_id, :integer
    add_index :ip_interfaces, :service_id
  end
end