# This is a template repository!

Settings for running Rails on Docker are written.

## Initial settings

1. Click to `Use this template` and create your repository.
1. you need to rename `config/application.rb`

```config/application.rb
module Myapp
↓ rename to
module YourRepositoryName
```
3. install docker-compose

You need an environment that can run docker-compose. 
https://docs.docker.com/compose/install/


## Including systems
| System | Version |
|---|---|
| Ruby | 2.6.5 |
| bundler | 2.0.2 |
| Rails | 6.0.1 |
| MySQL | 5.7 |
| docker-compose | 3 |
| CircleCI | 2.1 |

- etc...
  - nodejs, yarn
  - webpacker
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

- Nothing
