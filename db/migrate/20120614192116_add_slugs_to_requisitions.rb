class AddSlugsToRequisitions < ActiveRecord::Migration
  def up
    Requisition.find_each(&:save)
  end
  
  def down
    Requisition.update_all(:slug => nil)
  end
end
