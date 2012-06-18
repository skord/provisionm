class CreatePhysicalRacks < ActiveRecord::Migration
  def change
    create_table :physical_racks do |t|
      t.string :name
      t.references :room

      t.timestamps
    end
    add_index :physical_racks, :room_id
  end
end
