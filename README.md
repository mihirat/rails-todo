# rails-todo

just folllowed this tutorial: https://www.youtube.com/watch?v=jfqNQdqSAfk

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


## setup

```
// prepare Gemfile
bundle config set --local path 'vendor/bundle'
rbenv local 3.1.1
bundle install
bundle exec rails new todo --database=postgresql
mv todo/* . 
mv todo/.* .
rm -rf todo
echo /vendor/bundle >> .gitignore

docker-compose -f docker-compose.db.yml up 
bundle exec rails db:create
bundle exec rails s
```

## logs

```
bundle exec rails g scaffold task title description:text state:integer due_at:datetime deleted_at:datetime
```
