class AddRuSizeToNode < ActiveRecord::Migration
  def change
    add_column :nodes, :ru_size, :integer, :default => 1
  end
end
