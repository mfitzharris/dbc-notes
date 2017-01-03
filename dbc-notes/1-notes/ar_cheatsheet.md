`gem install bundler`
  install the bundler gem

`bundle install`
  install all gems that program needs

`bundle exec rake -T`
  list the available Rake tasks


`rake console`
  opens IRB with the app's enviro loaded, models are available and the connection 

`rake spec` 
  will run all spec files in app (alt to `rspec`)

`rake db:taskname`
  taskname --> `create` , `migrate`, 
  `rollback` - undos the last migration 
  `seed`, `version`

`rake generate:taskname`
  taskname --> 
  `model` - creating files for Active Record models
  `migration` - creating files for updating our database
  `spec` - creating test files for our models



1) `gem install bundler` - install the bundler gem
2) `bundle install` - install gems
3) `bundle exec rake db:create` - create the database 
4) `bundle exec rake db:version` - check the database version
5) `bundle exec rake spec` - run the test suite
6) `bundle exec rake db:version` - run the migrations
7) `bundle exec rake db:version` - version is no longer 0
8) `bundle exec rake spec` - now tests can pass
9) `bundle exec rake db:seed` - seed the database
10)


