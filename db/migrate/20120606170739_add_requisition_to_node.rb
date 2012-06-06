class AddRequisitionToNode < ActiveRecord::Migration
  def change
    add_column :nodes, :requisition_id, :integer
    add_index :nodes, :requisition_id
  end
end