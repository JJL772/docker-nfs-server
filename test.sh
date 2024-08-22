#!/usr/bin/env bash

docker container kill nfs-server

docker run --privileged --rm --name docker-nfs -v $HOME/.config:/mnt/data:ro -p 2049:2049 \
    ghcr.io/normal-computing/nfs-server:latest
