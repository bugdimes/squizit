# README

### Web Application Framework: Ruby on Rails (6.x)
### Programming Language: Ruby (2.7.5)
Ruby on Rails is most popular framework which fascilitates
Cleaner code, Rapid development than any other frameworks, Increases productivity by 40%
It comes with built-in Security, Mailers, ORM & some other web development standard configurations
Ruby Itself is an elegant language, which boosts Readability, Maintainability Out of the box


### Architecture: MVC
1. I have been using the most popular architecture for this use case
2. Link model has validations, business logic
3. This is Rails's API-only Variant
4. Routes call Controller actions (i.e create/serve)
5. Create methods hashes given URL (no length constraint)
6. If the URL is already hashed, simply returns the existing one
7. Otherwise creates a new one with viewed as 0
8. As and when It gets served (redirected, we are increasing the count)


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: ruby 2.7.5p203

* System dependencies: No third party services are required

* Configuration

* Database creation: rails db:setup

* Database initialization: rails db:migrate

* How to run the test suite: rails test

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions: