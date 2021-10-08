FROM ruby:2.5.7
RUN apt-get update -qq && apt-get install -y build-essential
RUN mkdir /brestmemo
RUN curl -sL https://deb.nodesource.com/setup_11.x
RUN curl https://cli-assets.heroku.com/install.sh
RUN apt-get install -y nodejs
WORKDIR /brestmemo
COPY Gemfile /brestmemo/Gemfile
COPY Gemfile.lock /brestmemo/Gemfile.lock
RUN bundle install
COPY . /brestmemo
