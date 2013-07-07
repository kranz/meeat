class ContactType < ActiveRecord::Base
  attr_accessible :name, :icon

  has_many :contacts
end
