# Rescue Me

## [Rescue Me - hosted on Heroku](https://rescueme-app.herokuapp.com/)

- [Description](#description)
    - [The Problem](#the-problem)
    - [The Solution](#the-solution)
- [Development Plan](#development-plan)
- [Trello Board](#trello-board)
- [User Stories](#user-stories)
- [User Journeys](#user-journeys)
- [Entity Relationship Diagram](#entity-relationship-diagram)
- [Models](#models)
- [Mood Board and Inspiration](#mood-board-and-inspiration)
- [Wireframes](#wireframes)
- [Features](#features)
- [Gems Used](#gems-used)
- [Challenges](#challenges)
- [Coding](#coding)
- [Code Reviews](#code-reviews)
- [Optimisation](#optimisation)
- [Final Product](#final-product)
- [Roadmap](#roadmap)
- [How To Install](#how-to-install)

---

## Description
### The Problem
A large percentage of the hundreds of thousands of pets that enter the pound system every year are euthanised due to space constraints. Rescues can be disjointed with poor websites, no social media skills which makes it harder for potential owners to find their next best friend.

Owners who can no longer look after their dog, who have inherited a pet from a deceased family member, or due to a change in circumstances can no longer have a pet struggle to find rescues that are willing to take surrendered animals. This means even more pets are put into the pound system.


(Good reference: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5532565/)
### The Solution
**Rescue Me** is a platform for pounds, shelters and rescue organisations to advertise their pets in a centeralised location, giving the public an easier way to find pets available for adoption. It allows the public to advertise pets that they can no longer care for in a space where any registered rescue organisations can see them. 

**Rescue Me** streamlines what is often a complicated and confusing adoption process - applications to adopt a pet can be submitted, reviewed and approved all within the website.

---
## Development Plan
### Monday 30
- README description
- README development path
- User Stories
- Trello
- Inspiration
- Mood Board
### Tuesday 1
- Features
- Gems
- ERD
- Models
- Controllers
- Wireframes/Figma
### Wednesday 2
- Wireframes/Figma
### Thursday 3
- Initialise master with Rspec for testing
- Branch with Page controller (index, contact us)
- Branch with dotenv
- Branch with Devise for user authentication
- Branch with Pundit for user authorisation
### Friday 4
- Branch for User Profile model
- Branch for Rescue profile model (**do after user model and before pet model**)
- Branch for Photo model (**do before pet profile**)
- Branch for Pet profile model (**do before application model**)
- Branch for Pet application model
### Saturday 5 (working today)
- Branch with Geocoder for location services (search within a distance)
### Sunday 6
- Branch with Geocoder for location services (search within a distance)
- Branch with messaging functions
### Monday 7
- Branch with AWS for image storage
- Branch with Shrine for image uploading
- Branch with Stripe for donations
### Monday 7
- Branch with front end / UI
### Tuesday 8
- Branch with front end / UI
### Wednesday 9
- ### DEPLOY
### Thursday 10
- Fix everything that is broken
- Finish documentation and presentation
### Friday 11
- Presentation
- Drinks!


**Nice to haves**
- Branch with Bit.ly gem for url shortnening
- Branch for conversation system
- Branch for state/suburb models
- Branch for species/breed models

---
## Trello Board
### [Trello Board](https://trello.com/b/8GPSQEcI)
Trello was an invaluable tool to organise my thoughts and form a cohesive plan for the development of my site. I started with lists like 'Brainstorming', 'Features' and 'Technical Requirements' which I was then able to break down into more specific topics once I knew where I was headed. I used labels to batch my tasks together and make it easier to complete several similar tasks at once. The final Trello setup that I used during the development of the site looked like this:
![Trello Board](app/assets/images/trello.png)

---
## User Stories
#### Rescue Group
1. As a rescue, I want to be able to see a list of animals available to be surrendered near me so that I can take on new animals.
2. As a rescue, I want see a list of the animals we have advertised on the website so that I know which animals we have already listed.
3. As a rescue, I want to be able to contact users to take on surrenders.
4. As a rescue, I want to be able to message potential adoptees through the website to streamline the adoption process.
5. As a rescue, I want to be able to see all users that have previously applied for one of my pets so that I can see if they already have one of our animals or if they were declined for a certain reason.
6. As a rescue, I want to be able to advertise pets in a streamlined process so that it is as simple as possible.
7. As a rescue, I want to receive alerts when a type of animal I have flagged (specific species/breed/age) have become available for surrender so that I can contact their owner.
8. As a rescue, I want to be able to blacklist users and ban all future communication from them so that they can't harass me.
9. As a rescue, I want to advertise if I am looking for foster carers or taking on surrender animals so that the public is aware.
10. As a rescue, I want to advertise on a site-wide rescue directory so users can find my rescue.
11. As a rescue, I want to be able to message other rescues so that we can discuss applicants, issues we're having etc.
12. As a rescue, I want to be able to flag users for being abuse or rude so that other rescues can see it.
13. As a rescue, I want to receive donations from the public through the website.

#### User / Adoptee 
1. As a user, I want to be able to advertise my pet for surrender to a rescue so that I know they will be cared for.
2. As a user, I want to be able to see a list of animals that I've applied for or surrendered.
3. As a user, I want to click on a specific rescue and see if they are acception surrendered animals so I can contact them directly.
4. As a user, I want to receive an email when a specific type of animal (species/breed/age) becomes available for adoption.
5. As a user, I want to see a list of rescues in my state that are accepting surrender animals so that I can contact them.
6. As a user, I want to click on a specific rescue and see if they require foster carers so that I can apply to be one.
7. As a user, I want to see a list of rescues that require foster carers so that I can contact them directly.
8. As a user, I want to contact rescues through the website so that they can answer my questions about an animal.
9. As a user I want to apply for an animal though the website so that it is a streamlined process.
10. As a user, I want to dontate directly to a rescue through the website.

#### Guest
1. As a potential pet owner, I want to see the kind of pets available for adoption without logging in so that I don't have to make an account unless I want to adopt one.
2. As an animal lover, I want to easily share posts from this website to Facebook so that my friends can see animals available for adoption.

#### Market Owner/Admin
1. As admin, I want to be able to approve rescues so that only legitimate incorporated rescues can advertise animals for adoption.
2. As admin, I want to be able to send out emails to rescues and to users so that I can let them know about upcoming events, website changes etc.
3. As market owner, I need a way for the website to be profitable so that I am not spending my own money to keep the website alive.
4. As admin, I want to be able to delete users and rescues if they violate our terms and conditions.

---
## User Journeys

![User Journey - User](app/assets/images/user-journey-user.png)
![User Journey - Rescue](app/assets/images/user-journey-rescue.png)


---
## Entity Relationship Diagram

---
## Models
#### Users
- Generated by Devise
- id: int
- email: string
- password: string
- stripe_id: string

#### Profiles
- id: int
- first_name: string
- last_name: string
- contact_number: string
- suburb: string
- state: string
- postcode: string
- rescue_id: int
- image_data: text

#### RescueGroups
- id: int
- rescue_name: string
- rescue_email: string
- logo_data: text
- suburb: string
- state: string
- contact\_number_public: string
- rescue\_email_public: string
- website_url: string
- facebook_url: string
- about_rescue: text
- adoption_details: text
- vet\_reference_email: string
- vet\_reference_contact: string
- vet\_reference_other: text
- looking\_for_fosters: boolean
- taking_surrenders: boolean

#### Pets
- id: int
- adopted: boolean
- foster: boolean
- interstate_adoption: boolean
- name: string
- species: string
- breed: string
- size: string
- sex: string
- age: string
- state: string
- suburb: string
- desexed: boolean
- vaccinated: boolean
- about_pet: text
- health_concerns: text
- adoption_details: references :rescues
- adoption_fee: decimal
- date_added: date
- microchip_number: string

#### Payments
- id: int
- user_id: references :users
- rescue_id: references :rescues
- amount: decimal
- stripe_id: string

#### Conversations
- id: int
- sender_id: references :users
- recipient_id: references :users

#### Messages
- id: int
- body: text
- conversation_id: references :conversations

#### Photos
- id: int
- image_data
- pet_id: references :pets

#### AdoptionApplications
- id: int
- user_id: references :users
- pet_id: references :pets
- rescue_id: references :rescues
- details: text

### Join Tables
#### PetsToRescues
- pet_id: references :pets
- rescues_id: references :rescues
- date_added: date
- date_removed: date

#### PetsToUsers
- pet_id: references :pets
- user_id: references :users
- date_added: date
- date_removed: date

#### UsersToRescues
- user_id: references :users
- rescue_id: references :rescues
- date_added: date
- date_removed: date

---
## Mood Board and Inspiration
### [Pinterest Board](https://www.pinterest.com.au/hello9327/rails-site-inspo/)
Initially I wanted to have a nice clean, crisp design similar to the Google Material Design style so it features heavily in my Pinterest board.

![Mood Board](app/assets/images/moodboard.png)

---
## Wireframes
### [Figma](https://www.figma.com/file/D6zxse7wpLjgmB893NXtTWNs/Rescue-Website?node-id=48%3A16)
I decided I wanted to use a grey-based theme with orange as a feature colour. I made a horrible theme that strongly featured a bright orange colour and - after getting some very blunt feedback - spent a day seriously considered quitting the course. With some guidance from Babs I settled on a light grey theme with a light purple as a feature colour. Material Design just didn't seem to work for me so I settled on a basic flat UI look and ended up being pretty happy with my final design.

---
## Features
- Advertise pets available for adoption as a rescue organisation
- Apply to adopt a pet that is listed
- Advertise a pet that you can no longer care for (surrender)
- Search listings by state, breed, size, age etc.
- Search for rescue organisations by name, state, species rescued etc.
- View all registered rescues in a list
- Register your rescue organisation to allow you to post pets available for adoption
- Messaging between users and rescue organisations
- Donation button for rescues

---
## Gems Used
- Rspec (testing)
- Devise (authenitcation)
- Pundit (authorization)
- Geocoder (geolocation - distance queries)
- Shrine (image uploading)
- AWS (image storage)
- Stripe (payment processing)
- Dotenv (environmental variables)
- Mailgun-ruby (email service)
- Mini_magick (image manipulation)
- Pry (troubleshooting)
- Social-share-button (social media sharing)

---
## Challenges
- making a nice design
- sorting out the erd
- logo vs no logo
- STRIPE

---
## Coding

---
## Code Reviews

---
## Optimisation

---
## Final Product

---
## Roadmap

---
## How To Install