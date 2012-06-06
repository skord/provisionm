class CreateNodeCategories < ActiveRecord::Migration
  def change
    create_table :node_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
