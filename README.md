# MakersBnB


----

## Team

| Alexis |  Celia | Lucy | Petra |
| :-----: | :-------:   | :------:  |:-------: |
|<a href='https://github.com/ajosephides'><img src='https://user-images.githubusercontent.com/23095774/60434119-56192e00-9bfe-11e9-8156-26105b51e0d7.png' width='40'></a>|<a href='https://github.com/celfro'><img src='https://user-images.githubusercontent.com/23095774/60434119-56192e00-9bfe-11e9-8156-26105b51e0d7.png' width='40'></a>|<a href='https://github.com/LucyMHall'><img src='https://user-images.githubusercontent.com/23095774/60434119-56192e00-9bfe-11e9-8156-26105b51e0d7.png' width='40'></a>|<a href='https://github.com/petraartep'><img src='https://user-images.githubusercontent.com/23095774/60434119-56192e00-9bfe-11e9-8156-26105b51e0d7.png' width='40'></a>|

---


## Tech Stack      


|   |Backend |
|:-----: | :-------:|
|<img src='https://user-images.githubusercontent.com/23095774/60453518-4400b500-9c29-11e9-8057-d1350988a009.png' width='40'> |Ruby |
|<img src='https://user-images.githubusercontent.com/23095774/60453519-4400b500-9c29-11e9-9607-7055ee8d4c02.png' width='40'> |Sinatra |
|<img src='https://user-images.githubusercontent.com/23095774/60453517-4400b500-9c29-11e9-87e5-904cb52eb052.png' width='40'> |RSpec |
|<img src='https://user-images.githubusercontent.com/23095774/60465940-3ad41000-9c4a-11e9-9284-d438b9f6f1fb.png' width='40'> |Git|
|<img src='https://user-images.githubusercontent.com/23095774/60453516-4400b500-9c29-11e9-8bf3-54ba3df01a8d.png' width='40'> |PostgreSQL |
|<img src='https://user-images.githubusercontent.com/23095774/60455502-71039680-9c2e-11e9-9d01-08f0a3f68637.png' width='40'> |Capybara |    
|<img src='https://user-images.githubusercontent.com/23095774/60455512-7660e100-9c2e-11e9-826c-785c83b16235.gif' width='40'> |DataMapper |
|<img src='https://user-images.githubusercontent.com/23095774/60455503-719c2d00-9c2e-11e9-9352-086cd72cf11f.png' width='40'> |DataCleaner |

|   |Frontend |
|:-----: | :-------:|
|<img src='https://user-images.githubusercontent.com/23095774/60464708-3f4af980-9c47-11e9-9528-f3a17f0f1141.png' width='40'> |HTML |
|<img src='https://user-images.githubusercontent.com/23095774/60453511-43681e80-9c29-11e9-874a-e9d56cc646bf.png' width='40'> |CSS |
|<img src='https://user-images.githubusercontent.com/23095774/60453515-43681e80-9c29-11e9-98c9-601763345265.png' width='40'> |Javascript |  
|<img src='https://user-images.githubusercontent.com/23095774/60730473-23906d80-9f3d-11e9-90f3-4123a5adcf93.png' width='40'> |Bootstrap|  


|   |Production |
|:-----: | :-------:|
|<img src='https://user-images.githubusercontent.com/23095774/60453513-43681e80-9c29-11e9-83fe-34825b1892ff.png' width='40'> |Heroku |


---   

## User Stories

```
As a user
So that I can access MakersBnB
I need to be able to sign up.

As a user
So that I can use the platform
I need to be able to login.

As a user, letting a property
So that I can list a space
I need to be able to create a space.

As a user, letting a property
So that other users can know more about my space
I need to be able to name a space.
                     add a description
                     add a price

As a user, letting a property
So that other users can book my space when available
I need to be able to list available dates.

As a user, letting a property
So that other users cannot just stay at my house
I need to be able to confirm the request.

As a user, renting a property
So that I can get away on holiday for one night
I need to be able to request to hire a space.

As a user, renting a property
So that I can choose from available spaces
I need to be able to search for specific dates.

As a user, renting a property
So that I don't waste my time looking at booked properties
I need to be able to see only available and pending spaces.
```

---

## CRC Cards


**User**

| Responsibility |  Collaborator |
|:----- | :-------   |
|.sign_up |  
|.log_in |
|.create_space | space
|.request | booking
|.confirm | booking


**Space**   

| Responsibility |  Collaborator |
| :----- | :-------   |
|.create(name) |  
|.add_details(type, info)|
|.change_status(date, status) | booking
|.list(optional_filter) e.g available, pending, date | booking
|.confirm | space


**Booking**

| Responsibility |  Collaborator |
| :----- | :-------   |
|.view |  
|.change_status(date) |


----

## Minimum Viable Product

### Our initial plan for our minimum viable product

- Full app user flow of different pages (as per mock up)
- No javascript
- No real styling
- Only running in test and dev databases
- No encryption / authentication on login

### Changes that we made to our initial plan
- We decided that to aid our own personal growth as developers we decided to prioritise working with javascript and css over completing the full functionality of the program
- Although our program is simpler than originally intended we believe we know have a better idea of the full process which goes into making a website

----

## Functionality

### Sign up
- On the index page (`get '/'`) you can choose to sign up(`get '/user/new'`)
- You then have to fill in several different fields.
- You cannot submit an email unless it is formatted correctly, and to increase security when you type in a password it is not visible to anyone who can see your screen.
- When you submit your details behind the scenes the program goes to the `post '/users'` route and takes the field inputs, which are accessible via params, and uses the `create` Datamapper syntax to make a new entry in the User table
- The program then redirects you to the login page

<p align = 'center'>
<img width="800" src="https://user-images.githubusercontent.com/23095774/64069927-a9364e00-cc4c-11e9-89a1-b995c58646af.png">  
<img width="800" src="https://user-images.githubusercontent.com/23095774/64069861-0b8e4f00-cc4b-11e9-90ca-67df3217f26c.png">
</p>


### Log in
- Either through signing up or clicking the login button on the index page you can end up of the login page `get '/user/login'`
- This page prompts you to input an email address and a password
- When you do this, the program goes to the `post '/user/login'` route and uses the DataMapper find feature to retrieve the first line of data from the User Table which contains both the inputted password and email address and saves it as the `user`
- If no data entries are found which match these requirements the user is set to nil
- Having the search only retrieve data which matches **both** criteria means that only users who have signed up, and use the right password can log in
- **User authentication:**
  -  if the user is not equal to nil, the user id(`user.id`) associated with this line of data is then used to make a dynamic route to that particular user's homepage(`/user/#{user.id}`)
  - if the user input is nil then the user is redirected to an error page `erb: error` which tells them they have a login error and gives them the option to try again.

<p align = 'center'>
<img width="800" src="https://user-images.githubusercontent.com/23095774/64069859-0af5b880-cc4b-11e9-9fa3-1459ee77dae4.png">
<img width="800" src="https://user-images.githubusercontent.com/23095774/64069929-a9364e00-cc4c-11e9-8390-d50fe15f7e57.png">
</p>


### Adding a new space

- After a user has signed up and logged in, you have the option to list a new space
- On route get `/user/:user_id/space/new` you can create a new space
- You will see a form where you can fill out a description, price and availability of the space. You then click on the submit button.
- When you do this, the program goes to the post `/user/:user_id/space/new`
- The user will be redirected to get `/user/#{user.id}/space` where you will see the space you've created

<p align = 'center'>
<img width="800" src="https://user-images.githubusercontent.com/23095774/64069860-0b8e4f00-cc4b-11e9-82fc-9c9640fa7468.png">
</p>

### Viewing all spaces a particular user has added
- On the route `/user/#{user.id}/space` we retrieve all data entries on the Space table which have the user id of the current user
- These are outputted as a hash which we then iterate through printing out all the details for each data entry

<p align = 'center'>
<img width="800" src="https://user-images.githubusercontent.com/23095774/64069930-a9cee480-cc4c-11e9-8978-6b38c6fa683a.png">
</p>

### Viewing all spaces from all users
- On the route `/space` users can see all spaces listed by all users
- when a user follows the `/space` route they are redirected to the `space/list` erb file
- This erb file sends a query using ajax to an api `/api/space`
- Using the function `getSpaces` the data is retrieved from Spaces database and displayed

<p align = 'center'>
<img width="800" src="https://user-images.githubusercontent.com/23095774/64069950-92dcc200-cc4d-11e9-98ed-25e6427a7e4b.png">
</p>

### Filtering spaces by date
- On the `/space` page the query can take a specific date as a condition. If that date is higher than or equal to a data entries `available from` field, **AND** lower than or equal to its `available to` field it will be displayed
- Because we have used javascript the page can filter results without having to reload

<p align = 'center'>
<img width="800" src="https://user-images.githubusercontent.com/23095774/64069925-a89db780-cc4c-11e9-8002-129778f97246.png">
<img width="800" src="https://user-images.githubusercontent.com/23095774/64069923-a89db780-cc4c-11e9-99b5-7b85582efe46.png">  
</p>



----

## Styling

- We used Bootstrap, an open source toolkit for developing CSS which has an extensive library of prebuilt components which enabled us to create a professional look to our project with a minimal time commitment
- We had an overall layout page which acted as a template for all our web pages and we also have a style sheet for individual elements
- We also made a logo using Photopea which playfully apes the airbnb logo

