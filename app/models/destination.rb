class Destination < ActiveRecord::Base

  belongs_to :itinerary
  has_many :activities
  has_many :details
end
