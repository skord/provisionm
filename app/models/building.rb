class Building < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  has_many :nodes
  has_many :rooms, :dependent => :destroy
  has_many :physical_racks, :through => :rooms
  accepts_nested_attributes_for :rooms, :reject_if => :all_blank, :allow_destroy => true
  attr_accessible :address1, :address2, :city, :name, :state, :zip, :rooms_attributes
end
