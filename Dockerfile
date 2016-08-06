FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y wget

RUN wget -O - http://shell.ninthgate.se/packages/shell.ninthgate.se.gpg.key | apt-key add - && \
    echo "deb http://shell.ninthgate.se/packages/debian wheezy main" | tee -a /etc/apt/sources.list.d/plex.list

VOLUME ["/data/media", "/var/lib/plexmediaserver"]

EXPOSE 32400

ADD ./files/start.sh /start.sh

CMD /bin/bash start.sh