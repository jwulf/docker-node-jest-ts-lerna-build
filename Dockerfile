# Based on 
FROM node:8.11.3-stretch

ENV NODE_VERSION 8.11.3
WORKDIR build

COPY yarn.lock .
COPY package.json .

RUN yarn install

ENV PATH="/build/node_modules/.bin:${PATH}"

CMD [ "node" ]
