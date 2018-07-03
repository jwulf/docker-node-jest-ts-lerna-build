# Based on 
FROM node:8.11.3-jessie

ENV NODE_VERSION 8.11.3
WORKDIR build

COPY yarn.lock .
COPY package.json .

# RUN apt update && \
#  apt install -y git curl openssh nano && \
RUN yarn install -g

CMD [ "node" ]
