# MakersBnB


----

## Team

| Alexis |  Celia | Lucy | Petra | 
| :-----: | :-------:   | :------:  |:-------: |
|<a href='https://github.com/ajosephides'><img src='https://user-images.githubusercontent.com/23095774/60434119-56192e00-9bfe-11e9-8156-26105b51e0d7.png' width='40'></a>|<a href='https://github.com/celfro'><img src='https://user-images.githubusercontent.com/23095774/60434119-56192e00-9bfe-11e9-8156-26105b51e0d7.png' width='40'></a>|<a href='https://github.com/LucyMHall'><img src='https://user-images.githubusercontent.com/23095774/60434119-56192e00-9bfe-11e9-8156-26105b51e0d7.png' width='40'></a>|<a href='https://github.com/petraartep'><img src='https://user-images.githubusercontent.com/23095774/60434119-56192e00-9bfe-11e9-8156-26105b51e0d7.png' width='40'></a>|<a 

---


## Tech Stack      

**Backend**

|   |Test & Development |
|----- | -------:|
|<img src='https://user-images.githubusercontent.com/23095774/60453518-4400b500-9c29-11e9-8057-d1350988a009.png' width='40'> |Ruby |
|<img src='https://user-images.githubusercontent.com/23095774/60453519-4400b500-9c29-11e9-9607-7055ee8d4c02.png' width='40'> |Sinatra |
|<img src='https://user-images.githubusercontent.com/23095774/60455512-7660e100-9c2e-11e9-826c-785c83b16235.gif' width='40'>|DataMapper
|<img src='https://user-images.githubusercontent.com/23095774/60455503-719c2d00-9c2e-11e9-9352-086cd72cf11f.png' width='40'>|DataCleaner | 
|<img src='https://user-images.githubusercontent.com/23095774/60453516-4400b500-9c29-11e9-8bf3-54ba3df01a8d.png' width='40'> |PostGres |
|<img src='https://user-images.githubusercontent.com/23095774/60453517-4400b500-9c29-11e9-87e5-904cb52eb052.png' width='40'> |RSpec |
|<img src='https://user-images.githubusercontent.com/23095774/60455502-71039680-9c2e-11e9-9d01-08f0a3f68637.png' width='40'>|Capybara |                
  
**Frontend**  

|   |Test & Development |
|----- | -------:|
|<img src='https://user-images.githubusercontent.com/23095774/60453566-65fa3780-9c29-11e9-99d6-5f4e55dcbf17.png' width='40'> |HTML |
|<img src='https://user-images.githubusercontent.com/23095774/60453511-43681e80-9c29-11e9-874a-e9d56cc646bf.png' width='40'> |CSS |
|<img src='https://user-images.githubusercontent.com/23095774/60453515-43681e80-9c29-11e9-98c9-601763345265.png' width='40'> |Javascript |  

**Production**  

|   |Production |
|----- | -------:|
|<img src='https://user-images.githubusercontent.com/23095774/60453513-43681e80-9c29-11e9-83fe-34825b1892ff.png' width='40'> |Heroku |


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
|.request | booking
|.confirm | booking


**Space**   

| Responsibility |  Collaborator | 
| ----- | -------:   | 
|.create(name) |  
|.add_details(type, info)|
|.change_status(date, status) | booking
|.list(optional_filter) e.g available, pending, date | calendar
|.confirm | space 


**Booking**

| Responsibility |  Collaborator | 
| ----- | -------:   | 
|.view |  
|.change_status(date) |


----

MVP
---
- Full app user flow of different pages (as per mock up)
- no javascript
- no real styling
- only running in test and dev databases
- no encryption / authentication on login

