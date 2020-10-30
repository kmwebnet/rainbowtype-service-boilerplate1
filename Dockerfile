FROM node:14.5.0-buster-slim

ENV PORT 5000
EXPOSE 5000

WORKDIR /usr/src/app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN yarn install
RUN yarn build

COPY . .

CMD [ "node", "index.js" ]