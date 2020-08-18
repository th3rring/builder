#!/bin/bash

# Because this image depends on a private version of OMPL
# use this script to build it locally.

TAG='dart-mmp'

git submodule update --init --recursive
docker build -t th3rring/builder:$TAG .
docker push th3rring/builder:$TAG

