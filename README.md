# MakersBnB


----

## Team

| Alexis |  Celia | Lucy | Petra | 
| :-----: | :-------:   | :------:  |:-------: |
|<a href='https://github.com/ajosephides'><img src='https://user-images.githubusercontent.com/23095774/60434119-56192e00-9bfe-11e9-8156-26105b51e0d7.png' width='40'></a> |<a href='https://github.com/celfro'><img src='https://user-images.githubusercontent.com/23095774/60434119-56192e00-9bfe-11e9-8156-26105b51e0d7.png' width='40'></a>|<a href='https://github.com/LucyMHall'><img src='https://user-images.githubusercontent.com/23095774/60434119-56192e00-9bfe-11e9-8156-26105b51e0d7.png' width='40'></a>|<a href='https://github.com/petraartep'><img src='https://user-images.githubusercontent.com/23095774/60434119-56192e00-9bfe-11e9-8156-26105b51e0d7.png' width='40'></a>|<a 

---


## Tech Stack      

**Backend**

| x |Test & Development |
|----- | -------:|
| logo |Ruby |
| logo |Sinatra |
| logo |DataMapper
| logo |DataCleaner | 
| logo |PostGres |
| logo |RSpec |
| logo |Capybara |                
  
**Frontend**  

| x |Test & Development |
|----- | -------:|
| logo |HTML |
| logo |CSS |
| logo |Javascript |  

**Production**  

| x |Production |
|----- | -------:|
| logo |Heroku |


---   

## User Stories

```
As a user
So that I can access MakersBnB
I need to be able to sign up

As a user
So that I can use the platform
I need to be able to login

As a user, letting a property 
So that I can list a space
I need to be able create a space

As a user, letting a property 
So that other users can know more about my space
I need to be able name a space
                  add description
                  add price 

As a user, letting a property 
So that people can book my space when available
I need to be able to list available dates 

As a user, letting a property 
So that people cannot just stay at my house
I need to be able confirm the request

As a user, renting a property
So that I can get away on holiday for one night
I need to be able request to hire a space

As a user, renting a property
So that I can choose from available spaces
I need to be able to search for specific dates 

As a user, renting a property 
So that I can not waste my time looking at booked properties 
I need to be able to see only available and pending spaces
```

---

## CRC Cards


**User**

| Responsibility |  Collaborator | 
|----- | -------:   | 
|.sign_up |  
|.log_in |
|.create_space | space
|.request | space
|.confirm | space 


**Space**   

| Responsibility |  Collaborator | 
| ----- | -------:   | 
|.create(name) |  
|.add_details(type, info)|
|.change_status(date, status) | calendar
|.list(optional_filter) e.g available, pending, date | calendar
|.confirm | space 


**Calendar**

| Responsibility |  Collaborator | 
| ----- | -------:   | 
|.view |  
|.change_status(date) |


----

