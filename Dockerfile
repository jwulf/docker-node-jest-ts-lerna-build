# Based on 
FROM node:10.5-jessie

ENV NODE_VERSION 10.5.0
WORKDIR build

COPY yarn.lock .
COPY package.json .

# RUN apt update && \
#  apt install -y git curl openssh nano && \
RUN yarn install -g

CMD [ "node" ]
