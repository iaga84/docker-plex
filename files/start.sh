#!/bin/bash

apt-get update
apt-get install -y plexmediaserver

chown -R plex:plex /var/lib/plexmediaserver/

service plexmediaserver restart

/bin/bash