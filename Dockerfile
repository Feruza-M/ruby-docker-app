FROM ruby:3.1-alpine
WORKDIR /app
COPY Gemfile* .
RUN bundle install
COPY . .
ENTRYPOINT ["ruby", "app.rb"]
