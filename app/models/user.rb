class User < ActiveRecord::Base
 has_secure_password

 has_many :itineraries
 has_many :destinations, :through => :itineraries
end
