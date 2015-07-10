#!/bin/bash
set -e
cd /var/cache/drone/src/github.com/jacekelgda/drone-test

sed "s/<AUTH_KEY>/$AUTH/" < .dockercfg.TEMPLATE > .dockercfg

wrapdocker &
sleep 5

docker build -t quay.io/jacekelgda/drone-test:init .
docker push quay.io/jacekelgda/drone-test:init