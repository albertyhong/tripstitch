class Destination < ActiveRecord::Base
  attr_accessible :description, :location, :name, :rating, :picture

  has_many :trips

  has_attached_file :picture
end
