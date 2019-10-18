# base image
FROM node:12.2.0-alpine

# select working directory
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json yarn.lock ./
RUN npm yarn

COPY . .