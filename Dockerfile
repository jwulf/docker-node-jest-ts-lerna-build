# Based on 
FROM node:10.5-alpine

ENV NODE_VERSION 10.5.0

RUN apk add git curl && \
  yarn add -g typescript@2.9.1 jest@23.1.0 jest-cli lerna gulp

CMD [ "node" ]
