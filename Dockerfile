FROM ubuntu:latest

MAINTAINER kadhar <vallikadhar@gmail.com>

WORKDIR apt-get  -y update 

RUN apt-get install -y node.js

RUN apt-get install -y npm

RUN npm install -g http-server

ADD .   /usr/apps/hello-docker/

ADD  index.html  /usr/apps/hello-docker/index.html 

CMD ["http-server", "-s"]
