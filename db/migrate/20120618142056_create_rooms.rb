class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.references :building

      t.timestamps
    end
    add_index :rooms, :building_id
  end
end
