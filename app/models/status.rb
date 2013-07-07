class Status < ActiveRecord::Base
  attr_accessible :code, :name, :order

  has_many :reservations
end
