class AddRuPositionToNodes < ActiveRecord::Migration
  def change
    add_column :nodes, :ru_position, :integer
  end
end
