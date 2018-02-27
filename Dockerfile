FROM node:alpine

MAINTAINER Marcio Rabelo <marcio@modular.network>

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

CMD ["npm", "start"]