FROM ruby:2.5-alpine

RUN apk update
RUN apk add g++ make ruby-dev nodejs

WORKDIR /usr/src/app
