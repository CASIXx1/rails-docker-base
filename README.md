# This is a template repository!

Settings for running Rails on Docker are written.

## Initial settings

### Click to `Use this template` and create your repository.
### you need to rename `config/application.rb`

```config/application.rb
module Myapp
↓ rename to
module YourRepositoryName
```

### install docker-compose

You need an environment that can run docker-compose. 
https://docs.docker.com/compose/install/

### generate master key

```
docker-compose run -e EDITOR="vi" rails rails credentials:edit
```

## Including systems
| System | Version |
|---|---|
| Ruby | 3.0.1 |
| bundler | 2.2.17 |
| Rails | 6.1.3.2 |
| MySQL | 5.7 |
| docker-compose | 3 |

- etc...
  - nodejs, yarn
  - GitHub Actions
  - webpacker
  - heroku
  - rspec tools
  - rubocop tools

## Settings

- `docker-compose build`
  - build rails and mysql docker
- `docker-compose up`
  - up rails and mysql docker

### Install react or vue

Although react and vue are not included, webpacker is included, so you can install react and vue with the following command.

```
# install react
$ docker-compose run rails bundle exec rails webpacker:install:react
$ docker-compose run rails bundle exec rails generate react:install

# install vue
$ docker-compose run rails bundle exec rails webpacker:install:vue
$ docker-compose run rails bundle exec rails generate react:vue
```

### Database creation

- `docker-compose run rails bundle exec rails db:create`

### Database initialization

### How to run the test suite

#### rubocop
- `docker-compose run rails bundle exec rubocop`

#### rspec
- `docker-compose run rails bundle exec rspec`

## Services (job queues, cache servers, search engines, etc.)

- Nothing

## Deployment instructions

### Heroku

#### create app
 
```
$ brew tap heroku/brew && brew install heroku

$ heroku login

$ heroku create app_name 
```

#### set database config

```
$ heroku addons:add cleardb

$ zsh
$ heroku_cleardb=`heroku config:get CLEARDB_DATABASE_URL`
$ heroku_cleardb=mysql2${heroku_cleardb:5}
$ heroku config:set DATABASE_URL=$heroku_cleardb
```

#### set master key

```
$ heroku config:set RAILS_MASTER_KEY=`cat config/master.key`
```
