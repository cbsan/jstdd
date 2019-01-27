FROM node:11-alpine

RUN npm i -g yarn npx nodemon

WORKDIR /usr/src/app

EXPOSE 3000
