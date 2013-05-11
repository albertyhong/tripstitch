class TripDestination < ActiveRecord::Base
  attr_accessible :destination_id, :trip_id

  belongs_to :trip
  belongs_to :destination 
end
