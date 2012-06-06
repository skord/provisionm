class Service < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  attr_accessible :name
  has_and_belongs_to_many :ip_interfaces
end
