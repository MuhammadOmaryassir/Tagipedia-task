# README

This is a Task for Tagipedia Stage 1, link : https://www.tagipedia.com
## This is a Search API that's search for a Product 
* Ruby version : 2.5.3

* System dependencies  - Note : You can use Docker only
  - Docker => https://docs.docker.com/install/
  - Ruby on Rails version > 5
  -  Mysql
  
#### Clone or Download the Repo:
```bash
$ git clone https://github.com/Omaroovee/Tagipedia-task.git
```
# If You Are Using Docker:

* First make sure that all gems are installed run: 
```bash
$ docker-compose run api bundle install
```

* To Start up Your App Run:
```bash
$ docker-compose up
```
* and in Another  Terminal Window run the Following Commands to create,migrate and put seed in Your Databse:
```bash
$ docker-compose run api rake db:create
$ docker-compose run api rake db:migrate
$ docker-compose run api rake db:seed
```
* To Run the Unit Tests: 
```bash
$ docker-compose run api bundle exec rspec spec/requests/search.rb
```
# If You Are Using Rails:
* First make sure that all gems are installed run: 
```bash
$ bundle install
```

* To Start up Your App Run:
```bash
$ bundle exec rails s -p 5000 -b '0.0.0.0'
```
* and in Another  Terminal Window run the Following Commands to create,migrate and put seed in Your Databse:
```bash
$ rake db:create
$ rake db:migrate
$ rake db:seed
```
* To Run the Unit Tests: 
```bash
$ bundle exec rspec spec/requests/search.rb
```


### Features
- containerized applications
- API Versioning
- Unit Testing
- API Docmentation using Swagger


# Api Docs ==> https://app.swaggerhub.com/apis/Omaroovee/search/1.0.0

### V1 API using Get Method
![Imgur](https://i.imgur.com/HQuyZbi.png)
### V2 API using Post Method
![Imgur](https://i.imgur.com/3yGGTnN.png)
### Runing The Unit Tests
![Imgur](https://i.imgur.com/BsSrLur.png)
