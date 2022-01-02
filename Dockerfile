FROM ubuntu:18.04

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs

RUN npm install

RUN node node_modules/gulp/bin/gulp http-playground
