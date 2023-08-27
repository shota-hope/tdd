FROM ruby:3.1

# throw errors if Gemfile has been modified since Gemfile.lock
RUN gem install bundler -v 2.4.9
# RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .
