class Destination < ActiveRecord::Base
  attr_accessible :description, :location, :name, :rating

  has_many :trips
end
