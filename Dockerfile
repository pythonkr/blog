FROM ruby:3.0

RUN bundle config --global frozen 1

WORKDIR /srv/jekyll

COPY Gemfile Gemfile.lock ./

RUN bundle install
