#!/bin/bash
set -e
cd /var/cache/drone/src/github.com/jacekelgda/drone-test

wrapdocker &
sleep 5

docker build -t docker-registry/image-name .
docker push docker-registry/image-name