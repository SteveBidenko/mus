#!/usr/bin/env bash

# docker network create t1d
cd conductor || exit; git pop
make docker-compose-up-daemon
