FROM ruby:2.6.1


WORKDIR /app
ADD . /app
RUN bundle install

