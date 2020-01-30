# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


> User stories
* As a user, I want to GET and POST reviews about travel destinations.
* As a user, I want to GET reviews by country or city.
* As a user, I want to see the most popular travel destinations by number of reviews or by overall rating.
* As a user, I want to PUT and DELETE reviews, but only if I wrote them. (Start by requiring a user_name param to match the user_name of the author on the message. * You can always try authentication later.)
* As a user, I want to look up random destinations just for fun.

To do:
* **authentication with bcrypt (& JWT)**
* search method
* authorization to delete if user_id == review user_id
* sort method
* random method

* **Paginating an API?**
* **Using Swagger for Documentation?**
* Serialization?
* Batching API calls?
* Rate Limiting?
* API Versioning?
* more testing?









REF: [Token-based Authentication with Ruby on Rails 5 API
](https://www.pluralsight.com/guides/token-based-authentication-with-ruby-on-rails-5-api)


NHH: $ bundle exec rake -P
~~ $ rake db:migrate:reset
