#Rendezvous 

![Splash](http://i.imgur.com/UDPs111.jpg)
[Demo](https://fast-reaches-6377.herokuapp.com/)

---
### Overview

Every first weekend of October since our freshman year of college, 
five of my closest friends and I select a random city to meetup in and have fun together for a nice break from the routine.
However, trying to create travel plans with a group of people is incredibly tedious -- flights, accommodations, activities must all be accounted for and discussed. Even with my friends, planning our weekend trips could be unbearable at times, especially when trying to coordinate via a Google Doc.

Enter Rendezvous.

I created Rendezvous as a supplement to Airbnb/flight trackers/note taking in order to have a cleaner, easier to understand travel itinerary that has the added benefit of being shareable via the internet. Ideally, a user and his travel companions could signup and create an itinerary all together. They could each add activities, suggest accommodations, leave comments, and easily come up with an itinerary everyone can be excited about. 

---

### Tech Specs

* **Technologies used:**
  - Built with Ruby and Rails
  - Databasing with PostgreSQL
  - Additional gems:
    - bcrypt - Secures and encrypts user passwords

* **Models**

  Full CRUD capabilities on all models

  - User
  - Itinerary
    - Destinations
      - Activities
      - Accommodation and Transportation
  
* **Entity Relationship Diagram**
  ![Diagram](http://i.imgur.com/siSvMPf.jpg?1)

  Note: This is the original version, some things have changed -- Accommodations and Transportation were consolidated into a single   Details table, and Destinations is linked directly to Activities rather than using another Day table.

* **Deployed to Heroku as [fast-reaches-6377.herokuapp.com](https://fast-reaches-6377.herokuapp.com/)**

---

### User Stories
When using Rendezvous, a user is able to:
  - Login or Signup

Once logged in and authenticated:
  - Create a new itinerary
  - Add multiple destinations for X amount of days to that itinerary
  - Add travel and accommodation info to each destination
  - Comment on itineraries
  - Make an itinerary public (shareable) or private
  - Edit all fields

---

### Styling

Like most travel websites, I wanted to use a variety of images focused on cities to inspire users to use their imaginations. To make things even more dynamic, the Home screen (after logging in/signing up) features a video header, as does the itinerary header. When viewing itineraries, Destinations/Activities/Accommodations/Transportation are kept separate by strong dividing lines, but framed together by these same lines. 

Additionally, many of my peers in class began using Bootstrap to make their forms. I decided that I wanted the practice of styling forms and erb tags, and tried my best to make them similar to Bootstrap.

### Wireframes
![Wireframes](http://i.imgur.com/4lx9Y7E.jpg?1)

### Screenshots
![Splash](http://i.imgur.com/UDPs111.jpg)
![Signup](http://i.imgur.com/DdvOdfe.jpg)
![Home](http://i.imgur.com/BNsE382.png)
![New Trip](http://i.imgur.com/6AlBnnQ.png)
![Trip Header](http://i.imgur.com/SOhEJtt.png)
![Trip Details](http://i.imgur.com/moXOSDs.png)
![Profile](http://i.imgur.com/XKBtawy.jpg)
---

####Copyright Notice

The media and information used in this app is for educational purposes.

Project created with ♥ at General Assembly's Web Development Immersive.


