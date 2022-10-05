FROM        ubuntu:22.04

LABEL       maintainer  "elcfd <me@elcfd.com>"

RUN         apt -y update && \
            apt -y install \
                openjdk-11-jdk \
                openjdk-11-jre \
                unzip \
                wget

WORKDIR     /web
RUN         wget -O carrot2-dcs.zip https://github.com/carrot2/carrot2/releases/download/release%2F4.4.3/carrot2-4.4.3.zip && \
            unzip carrot2-dcs.zip
WORKDIR     /web/carrot2-4.4.3/dcs

ENTRYPOINT  ["./dcs"]

EXPOSE      8080
