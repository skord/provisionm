class Product < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  belongs_to :manufacturer
  has_many :nodes
  attr_accessible :model_number, :name
end
