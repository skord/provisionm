class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :phone
      t.string :fax

      t.timestamps
    end
  end
end
