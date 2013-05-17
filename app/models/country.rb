class Country < ActiveRecord::Base
  attr_accessible :name, :code, :code3, :number

  has_many :restaurants
  has_many :regions
end
