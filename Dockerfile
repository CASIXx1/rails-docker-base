FROM ruby:2.6.5

RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle config build.nokogiri --use-system-libraries
RUN bundle install

COPY . /myapp
