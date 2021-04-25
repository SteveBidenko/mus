#!/usr/bin/env bash

cd alliance || exit
if [[ "$1" == "dev" ]] || [[ "$1" == "master" ]]; then
    git checkout $1
fi
git pop; make docker-run-daemon

if [[ "$1" == "reinit" ]] || [[ "$1" == "dev" ]] || [[ "$1" == "master" ]]; then
  PROJECT=registry make docker-reinit
fi
