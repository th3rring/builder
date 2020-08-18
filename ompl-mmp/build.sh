#!/bin/bash

TAG='ompl-mmp'

git submodule update --init --recursive
docker build -t th3rring/builder:$TAG .
docker push th3rring/builder:$TAG

