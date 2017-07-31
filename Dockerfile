FROM ubuntu:latest

RUN set -e \
	&& apt-get update

RUN set -e \
	&& apt-get -y install vim

RUN set -e \
	&& apt-get -y install git


WORKDIR /root

RUN set -e \
	&& git clone https://github.com/ryansb/brassballs.git

RUN set -e \
	&& apt-get install -y netcat

RUN set -e \
	&& git clone https://github.com/bsamek/balls.git


WORKDIR brassballs

ENV BALLS_PORT 8080

CMD ["../balls/bin/balls", "server"]
