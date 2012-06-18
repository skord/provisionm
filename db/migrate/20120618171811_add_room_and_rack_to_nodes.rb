class AddRoomAndRackToNodes < ActiveRecord::Migration
  def change
    add_column :nodes, :room_id, :integer
    add_column :nodes, :physical_rack_id, :integer
    add_index :nodes, :room_id
    add_index :nodes, :physical_rack_id
  end
end
