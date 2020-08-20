#!/bin/bash

# Because this image depends on a private version of OMPL
# use this script to build it locally.

TAG='dart-mmp'

git submodule update --init --recursive
docker build -t th3rring/builder:$TAG .
<<<<<<< HEAD
# docker push th3rring/builder:$TAG
=======
# Need to run "docker run" before.
docker push th3rring/builder:$TAG
>>>>>>> c9aaea6243b194532194a1f3d0b4d156bbeae067

