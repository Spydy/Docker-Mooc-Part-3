FROM ruby:2.6.0

COPY . . 

RUN chmod 777 -R /tmp/
RUN apt-get install curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN bundle install
RUN rails db:migrate RAILS_ENV=production SECRET_KEY_BASE=production_test_key
RUN npm install yarn -g
RUN rake assets:precompile

CMD [ "rails", "s", "-e", "production" ] 
