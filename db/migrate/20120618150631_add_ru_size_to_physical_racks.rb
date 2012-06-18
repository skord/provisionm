class AddRuSizeToPhysicalRacks < ActiveRecord::Migration
  def change
    add_column :physical_racks, :ru_size, :integer, :default => 54
  end
end
