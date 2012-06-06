class Node < ActiveRecord::Base
  validates :name, :presence => true
  belongs_to :manufacturer
  belongs_to :building
  belongs_to :product
  belongs_to :support_contract
  belongs_to :vendor
  belongs_to :requisition, :touch => true
  has_and_belongs_to_many :node_categories
  has_many :ip_interfaces
  accepts_nested_attributes_for :ip_interfaces, :reject_if => :all_blank, :allow_destroy => true
  
  before_validation :ensure_foreign_reference
  
  def ensure_foreign_reference
    if self.foreign_reference.empty?
      self.foreign_reference= (Time.now.to_f * 1000000).to_i
    end
  end
  
  attr_accessible :foreign_reference, :name, :manufacturer_id, :building_id, :product_id, :support_contract_id, :vendor_id, :node_category_ids,
                  :ip_interfaces_attributes, :requisition_id
end
