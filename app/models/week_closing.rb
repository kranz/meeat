class WeekClosing < ActiveRecord::Base
  attr_accessible :time_table_id, :type, :weekday

  belongs_to :time_table
end
