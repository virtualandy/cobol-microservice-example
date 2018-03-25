FROM gregcoleman/docker-cobol
MAINTAINER Greg Coleman <gregory.m.coleman@gmail.com>

EXPOSE 7707

RUN apt-get update && \
    apt-get install -y php-cli make

COPY  src/* /service/

WORKDIR  /service

RUN make
ENTRYPOINT ["/usr/bin/php", "-S", "0.0.0.0:7707"]
