FROM ruby:2.5
RUN apt-get update && apt-get install -y \
        build-essential \
        libpq-dev \
        nodejs \
        postgresql-client \
        yarn
WORKDIR /kamesan_me
COPY Gemfile Gemfile.lock /kamesan_me/
RUN bundle install

