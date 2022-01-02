FROM ubuntu:18.04

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs

RUN git clone https://github.com/DevExpress/testcafe-hammerhead.git

RUN cd testcafe-hammerhead

RUN npm install

RUN node node_modules/gulp/bin/gulp http-playground
