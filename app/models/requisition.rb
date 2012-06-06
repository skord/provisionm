class Requisition < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  has_many :nodes
  attr_accessible :name
end
