class PhysicalRack < ActiveRecord::Base
  belongs_to :room
  has_many :nodes
  attr_accessible :name, :ru_size
end
