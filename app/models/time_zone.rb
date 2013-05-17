class TimeZone < ActiveRecord::Base
  attr_accessible :code, :name, :offset
end
