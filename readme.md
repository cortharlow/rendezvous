#Rendezvous: Go Somewhere Together

I created Rendezvous as a supplement to Airbnb/flight trackers/note taking in order to have a cleaner, easier to understand travel itinerary that has the added benefit of being shareable via the internet. 

##User Stories:
1. A user can create a profile
2. A user can create a new itinerary
3. A user can add multiple destinations for X amount of days to that itinerary
4. Each destination's day should be able to have multiple activities added to it
5. A user should be able to add travel and accommodation info that is associated with each destination to that destination
6. Comments should exist to allow for a social component of trip planning
7. Each itinerary should be able to be made public so that other users can use it for ideas/recommends, or offer suggestions, as the case may be
8. All of the above should be editable multiple times
9. Only the creator should have access to editing his or her itinerary
10. The user should be able to logout

##ERD:
http://imgur.com/siSvMPf

This was my original version, some things have changed -- Accommodations and Transportation were consolidated into a single Details table, and Destinations is linked directly to Activities rather than using another Day table.

##Wireframes:
http://imgur.com/4lx9Y7E

Actually held fairly close to what is outlined here with some exceptions.

Ruby, Ruby on Rails, HTML, and CSS were all used in this project. 

