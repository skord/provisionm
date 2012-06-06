class Requisition < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :non_ip_interfaces, :inclusion => {:in => ['true', 'false']}, :presence => true
  validates :non_ip_snmp_primary, :inclusion => {:in => ['Y', 'N']}, :presence => true
  has_many :nodes
  attr_accessible :name, :non_ip_interfaces, :non_ip_snmp_primary
end
