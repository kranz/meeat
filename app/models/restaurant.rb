class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :country_id, :dst, :name, 
                  :state, :zip, :contacts_attributes

  has_many   :contacts
  has_many   :reservations
  has_many    :time_tables, :dependent => :destroy
  belongs_to :country

  validates  :name, :presence => true
  accepts_nested_attributes_for :contacts, allow_destroy: true
end
