FROM ruby:3.1.2

RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs curl apt-transport-https wget

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN gem update --system && \
    gem install bundler -v '2.2.17'

RUN bundle config build.nokogiri --use-system-libraries && \
    bundle install

COPY . /myapp
