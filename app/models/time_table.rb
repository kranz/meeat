class TimeTable < ActiveRecord::Base
  attr_accessible :description, :dst, :restaurant_id, :time_zone

  has_many :week_closings
  has_many :closing_days
  has_many :time_slots
  
  belongs_to :restaurant
end
