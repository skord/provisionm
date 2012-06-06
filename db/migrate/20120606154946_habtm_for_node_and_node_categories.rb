class HabtmForNodeAndNodeCategories < ActiveRecord::Migration
  def up
    create_table :node_categories_nodes, :id => false do |t|
      t.integer :node_id
      t.integer :node_category_id
    end
    add_index :node_categories_nodes, [:node_id, :node_category_id]
    add_index :node_categories_nodes, [:node_category_id, :node_id]
  end

  def down
    drop_table :node_categories_nodes
  end
end