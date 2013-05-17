class Contact < ActiveRecord::Base
  attr_accessible :contact_type_id, :restaurant_id, :value

  belongs_to :restaurant
  belongs_to :contact_type
end
