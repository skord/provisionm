class AddSlugToRequisitions < ActiveRecord::Migration
  def change
    add_column :requisitions, :slug, :string
    add_index :requisitions, :slug
  end
end
