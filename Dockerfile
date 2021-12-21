# syntax=docker/dockerfile:experimental

FROM ruby:2.7.1
ENV LANG C.UTF-8
RUN apt-get update -qq && \
    apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    imagemagick \
    graphviz

ENV APP_ROOT /app
WORKDIR ${APP_ROOT}

COPY ./Gemfile ${APP_ROOT}/
COPY ./Gemfile.lock ${APP_ROOT}/

ENV BUNDLER_VERSION 2.1.2
RUN bundle install --jobs 4 --retry 5

COPY . .

EXPOSE 3000

WORKDIR ${APP_ROOT}

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
