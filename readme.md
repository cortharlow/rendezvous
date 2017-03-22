# Rendezvous 

![Splash](http://i.imgur.com/UDPs111.jpg)
[Try it out here!](https://fast-reaches-6377.herokuapp.com/)

---
### Overview

Every first weekend of October since our freshman year of college, 
five of my closest friends and I select a random city to meetup in and have fun together for a nice break from the routine.
However, trying to create travel plans with a group of people is incredibly tedious -- flights, accommodations, activities must all be accounted for and discussed. Even with my friends, planning our weekend trips could be unbearable at times, especially when trying to coordinate via a Google Doc.

I created Rendezvous as a supplement to Airbnb/flight trackers/note taking in order to have a cleaner, easier to understand travel itinerary that has the added benefit of being shareable via the Internet. Ideally, a user and his travel companions could signup and create an itinerary all together. They could each add activities, suggest accommodations, leave comments, and easily come up with an itinerary everyone can be excited about.

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

Like most travel websites, I wanted to use a variety of images focused on cities to inspire users to use their imaginations when making travel plans. When researching different CSS abilities, I stumbled across video tags! I knew I had to find a way to implement a video as either a header or background if nothing more than to flex some CSS muscle. The Home screen (after logging in/signing up) features a video header, as does the itinerary header. 

The most important part of an itinerary creator is, of course the itinerary. I struggled a long time with the best way to group all the various parts of a trip. Ultimately, I created a sort of hierarchy; Activities within Days, Days/Accommodations/Travel Plans within Destinations/Cities, and Destinations/Cities within the Itinerary. All of the sections are contained within nested borders to give the user a visual reminder of this hierarchy.

Additionally, many of my peers in class began using [Bootstrap](http://getbootstrap.com/) (an immensely popular front-end framework), due in large part its ease in making beautiful forms. I decided that I wanted the practice of styling forms and erb tags by hand, and tried my best to make them similar to Bootstrap -- I think I did a pretty good job.


#### Wireframes
![Wireframes](http://i.imgur.com/4lx9Y7E.jpg?1)

#### Screenshots
![Splash](http://i.imgur.com/UDPs111.jpg)
![Signup](http://i.imgur.com/DdvOdfe.jpg)
![Home](http://i.imgur.com/BNsE382.png)
![New Trip](http://i.imgur.com/6AlBnnQ.png)
![Trip Header](http://i.imgur.com/SOhEJtt.png)
![Trip Details](http://i.imgur.com/moXOSDs.png)
![Profile](http://i.imgur.com/XKBtawy.jpg)
---

### Retrospective 

This was the first Ruby on Rails app I have ever built, and with this in mind, I am incredibly happy with the way Rendezvous turned out. If I had to start over from scratch, I would've changed only a few things:
  - Rendezvous is extremely dependent on user input via forms
    - Removing some froms and using an API(s) to gather some of the necessary information would be incredibly beneficial; if flight itineraries and hotel reservation information could be immediately inputed, that would be amazing
    - Lessen the amount of information that is required when initially setting up an itinerary; this sometimes resulted in a itinerary of multiple days with nothing in them, which looks less than appealing
  - Expanding the Splash screen to include more information on who Rendezvous is for and what Rendezvous does; as it stands, there are simply buttons to login and signup
  - Find a way to allow a user to implement some photos
    - Would want to do user testing user to see if this is even a desired feature
  - DO USER TESTING
    - A five day timeline didn't allow for much external input outside of programming questions; would love the opportunity to get feedback throughout the design process

Thankfully, some of these issues can be easily remedied by spending some additional time on the app.

---

####Copyright Notice

The media and information used in this app is for educational purposes.

Project created with ♥ at General Assembly's Web Development Immersive.


