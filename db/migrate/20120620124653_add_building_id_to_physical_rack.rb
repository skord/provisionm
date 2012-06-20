class AddBuildingIdToPhysicalRack < ActiveRecord::Migration
  def change
    add_column :physical_racks, :building_id, :integer
    add_index :physical_racks, :building_id
  end
end
