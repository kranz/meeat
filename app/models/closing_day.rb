class ClosingDay < ActiveRecord::Base
  attr_accessible :end_date, :start_date, :time_table_id

  belongs_to :time_table
end
