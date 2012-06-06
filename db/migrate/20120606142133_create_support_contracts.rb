class CreateSupportContracts < ActiveRecord::Migration
  def change
    create_table :support_contracts do |t|
      t.string :name
      t.date :expiry
      t.references :vendor

      t.timestamps
    end
    add_index :support_contracts, :vendor_id
  end
end
