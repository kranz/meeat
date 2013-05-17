class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :country_id, :name, :state, 
                  :time_zone_id, :zip, :contacts_attributes

  has_many :contacts
  belongs_to :country
  belongs_to :time_zone

  validates :name, :presence => true
  accepts_nested_attributes_for :contacts, allow_destroy: true
end
