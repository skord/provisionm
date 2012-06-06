class AddFieldsToRequisition < ActiveRecord::Migration
  def change
    add_column :requisitions, :non_ip_interfaces, :string, :default => 'false'
    add_column :requisitions, :non_ip_snmp_primary, :string, :default => 'N'
  end
end
