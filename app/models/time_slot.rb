class TimeSlot < ActiveRecord::Base
  attr_accessible :UTC_position, :from, :name, :position, :time_table_id, :to

  belongs_to :time_table
end
