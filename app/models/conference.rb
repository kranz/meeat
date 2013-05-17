class Conference < ActiveRecord::Base
  attr_accessible :code, :date

  has_many :reservations
end
