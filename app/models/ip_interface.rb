class IpInterface < ActiveRecord::Base
  has_and_belongs_to_many :services
  
  validates :snmp_primary, :inclusion => { :in => ['N', 'S', 'P']}, :allow_nil => false

  validate :ip_valid
  
  def ip_valid
    unless IPAddress.valid? self.address
      errors.add(:address, 'does not appear valid')
    end
  end
    
  attr_accessible :address, :description, :snmp_primary, :service_ids
end