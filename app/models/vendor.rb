class Vendor < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  has_many :support_contracts
  has_many :nodes
  accepts_nested_attributes_for :support_contracts, :reject_if => :all_blank, :allow_destroy => true
  attr_accessible :fax, :name, :phone, :support_contracts_attributes
end
