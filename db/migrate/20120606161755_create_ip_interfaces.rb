class CreateIpInterfaces < ActiveRecord::Migration
  def change
    create_table :ip_interfaces do |t|
      t.string :address
      t.string :description
      t.string :snmp_primary, :default => 'P'
      t.references :service
      t.references :node

      t.timestamps
    end
    add_index :ip_interfaces, :service_id
  end
end
