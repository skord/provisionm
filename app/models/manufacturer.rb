class Manufacturer < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  has_many :products, :dependent => :destroy
  has_many :nodes
  accepts_nested_attributes_for :products, :reject_if => :all_blank, :allow_destroy => true
  attr_accessible :name, :products_attributes
end
