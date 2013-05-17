class Reservation < ActiveRecord::Base
  attr_accessible :code, :conference_id, :confirmation, :confirmation, :date, :restaurant_id

  belongs_to: restaurant
  belongs_to: conference
end
