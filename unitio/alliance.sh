#!/usr/bin/env bash

cd alliance
if [[ "$1" == "master" ]] || [[ "$1" == "dev" ]]; then
	git checkout $1
fi

git pop
# OTP_MODE=DUMMY make docker-run-daemon
make docker-run-daemon
RETCODE=$?
if [[ $RETCODE -ne 0 ]]; then
	exit $RETCODE
fi

if [[ "$1" == "reinit" ]] || [[ "$1" == "master" ]] || [[ "$1" == "dev" ]]; then
	PROJECT=registry make docker-reinit
	RETCODE=$?
fi
exit $RETCODE
