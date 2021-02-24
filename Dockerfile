FROM ruby:2.7

RUN apt-get update -qq && apt-get install -y default-mysql-client
WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
