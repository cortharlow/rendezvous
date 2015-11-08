class Itinerary < ActiveRecord::Base

  belongs_to :user
  has_many :destinations
  has_many :details, :through => :destinations
end
