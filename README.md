# Epicodus Ruby on Rails Independent Project Week 4 || Building an API

## Description
The purpose of this project is to create an API using Rails that will test for endpoints such as GET,POST,PUT,and DELETE. The project relies on the Rails API Project setup, creating a model with scopes to filter requests, and testing the given routes to ensure endpoints work effectively.


## Prerequisites
* PostgreSQL
* Ruby/Rails
* Postman


## API Endpoints


| Request        | Path           | Parameters  |
| ------------- |:-------------:| -----:|
| GET All   |  http://localhost:3000/businesses | $1600 |
| GET By ID   | http://localhost:3000/businesses/:id    |   Business :id |
| GET Random | http://localhost:3000/businesses?get_random=yes|    N/A |
| GET Searched Business | http://localhost:3000/businesses?name=TABLE
     |    Business Name Ex: TABLE |
| PUT |  http://localhost:3000/businesses/:id      |   Business :id  |
| POST |  http://localhost:3000/businesses      |    Enter Key/Value pair |
| DELETE |  http://localhost:3000/businesses/:id      |    Business :id |



## Setup and Installation
1. Clone this project into your Desktop directory
  ```
  git clone https://github.com/DanJacobCodes/Business-Lookup-API
  ```
2. In a separate terminal window launch postgres
```
postgres
```

3. Bundle all gems to ensure that application dependencies are running. You may want to update the gems for good measure
  ```
  bundle update
  bundle install
  ```
4. Change into this directory and create and initialize the database
  ```
  cd Business-Lookup-API
  rake db:create
  rake db:migrate
  rake db:test:prepare
  ```

  5. To run the server and view the application run:
  ```
  rails s
  ```

  6. Navigate to localhost:3000 in the browser of your choice


## Technologies Used
* HTML
* CSS
* Ruby
* Ruby on Rails
* PostgreSQL
* Postman

### Version
* Ruby version
  2.3.1

* Rails version
  5.1.2

## Support and Contact Details
Should any issues occur, contact me @dansamueljacob@gmail.com
