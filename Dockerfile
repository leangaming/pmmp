FROM frolvlad/alpine-glibc:latest
LABEL maintainer "Karolis Stasaitis <stkarolis@gmail.com>"

RUN adduser pmmp -D

WORKDIR /home/pmmp

RUN \
    apk add --no-cache bash wget make automake autoconf m4 bison g++ libtool && \
    su pmmp -c "wget -q -O - https://get.pmmp.io | bash -s -- -r" && \
    apk del wget make automake autoconf m4 bison g++ libtool

USER pmmp

EXPOSE 19132/udp

CMD ./start.sh --no-wizard
