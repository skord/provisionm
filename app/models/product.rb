class Product < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  belongs_to :manufacturer
  attr_accessible :model_number, :name
end
