class Building < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  attr_accessible :address1, :address2, :city, :name, :state, :zip
end
