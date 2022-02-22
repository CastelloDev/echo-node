FROM node:16.13.2-alpine

WORKDIR /app

COPY package.json /app
COPY package-lock.json /app
RUN npm ci --only=production && npm cache clean --force
COPY . /app

CMD node app.js
EXPOSE 3000
