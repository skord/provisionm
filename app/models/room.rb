class Room < ActiveRecord::Base
  belongs_to :building
  has_many :physical_racks
  has_many :nodes
  accepts_nested_attributes_for :physical_racks, :reject_if => :all_blank, :allow_destroy => true
  attr_accessible :name, :physical_racks_attributes
  
  def long_name
    self.building.name + '-' + self.name
  end
end
