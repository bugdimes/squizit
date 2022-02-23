## Ruby/Rails Setup

Ruby can be downloaded via RVM/Rbenv

1. Make sure Ruby 2.7.5 is install
2. run `gem install rails`
3. Make sure Rails 6.0.x version is installed 
4. Once done, run `ruby -v` & `rails -v` to confirm
5. run `rails db:setup` to setup local databases
6. We are using Postgres DB, 10.x version works
7. run `rails db:migrate` to complete pending migrations
8. run `rails server` to start the local server
9. Postman collection is attached

Rails comes with in-built testing framework called Minitest
In order to run tests

`rails test`

1. Environments are already setup, to run in local `rails s`
2. To deploy on production `rails s -e production`
3. To run migrations `rails db:migrate`
4. Deploying the application on Heroku is recommended
5. If deploying on EC2/DO, Setup the environment first by above mentioned points.