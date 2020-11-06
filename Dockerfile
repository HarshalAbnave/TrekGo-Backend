FROM ubuntu:20.04

RUN \
    apt-get update && \
    apt-get install -yqq apt-transport-https
RUN \
    curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
    apt-get update && \
    apt-get install -yqq nodejs yarn && \
