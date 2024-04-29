FROM ruby:2.5
# 実際はRUNの行を追加して更新していく
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    libpq-dev \
    node.js \
    postgresql-client \
    yarn
    
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install