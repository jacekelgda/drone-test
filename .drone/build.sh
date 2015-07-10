#!/bin/bash
set -e
cd /var/cache/drone/src/github.com/jacekelgda/drone-test

docker login -e="." -u="jacekelgda+coreosdeploy" -p="$AUTH" quay.io

wrapdocker &
sleep 5

docker build -t quay.io/jacekelgda/drone-test:init .
docker push quay.io/jacekelgda/drone-test:init