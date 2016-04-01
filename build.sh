#!/bin/sh
docker build -t cskstrngth/roshibuilder .
docker run -v /var/run/docker.sock:/var/run/docker.sock -v /usr/local/bin/docker:/usr/local/bin/docker -ti --name roshibuilder cskstrngth/roshibuilder
