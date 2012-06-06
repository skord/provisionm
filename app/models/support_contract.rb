class SupportContract < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :expires_at, :presence => true
  belongs_to :vendor
  attr_accessible :expires_at, :name
  scope :expired, lambda { where("expires_at <= ?", Date.today ) }
  scope :active, lambda { where("expires_at > ?", Date.today ) }
  
  def expired?
    self.expires_at <= Date.today
  end
  
  def active?
    self.expires_at > Date.today
  end

  def status
    if self.active?
      'Active'
    elsif self.expired?
      'Expired'
    else
      'Unknown'
    end
  end
  
end
