#!/bin/bash
set "DFILE_VERSION=1.6"
set NODE_VERSION=%1
if not defined NODE_VERSION set "NODE_VERSION=1.25.1"
docker build --build-arg NODE_VERSION=%NODE_VERSION% --build-arg NODE_REPOSITORY="https://github.com/input-output-hk/cardano-node" --build-arg NODE_BRANCH="master" -t "adalove/cardano-node:%DFILE_VERSION%-node%NODE_VERSION%" .
