# Based on 
FROM node:10.5-alpine

ENV NODE_VERSION 10.5.0
WORKDIR build

COPY yarn.lock .

RUN apk update && \
  apk add git curl openssh nano && \
  yarn install -g

CMD [ "node" ]
