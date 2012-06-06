class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name
      t.string :foreign_reference
      t.references :manufacturer
      t.references :building
      t.references :product
      t.references :support_contract
      t.references :vendor

      t.timestamps
    end
    add_index :nodes, :manufacturer_id
    add_index :nodes, :building_id
    add_index :nodes, :product_id
    add_index :nodes, :support_contract_id
    add_index :nodes, :vendor_id
  end
end
