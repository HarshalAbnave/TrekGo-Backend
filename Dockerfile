FROM ubuntu:20.04

RUN \
    apt-get update && \
    apt-get install -yqq apt-transport-https
RUN \
    apt-get update && \
    apt-get install -yqq nodejs yarn && \
    apt-get install -yqq npm yarn && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /TrekGo-Backend
COPY . /TrekGo-Backend
COPY package*.json ./
RUN npm install
EXPOSE 3000
CMD ["node","server.js"]
