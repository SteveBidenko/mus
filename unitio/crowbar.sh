#!/usr/bin/env bash

export TWILIO_URL="twilio://XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX@default?from=%2bDDDDDDDDDDD"
export AWS_URL="s3://20S:40SD@us-east-1/unitio-dev"
export AWS_REGISTRY_URL="s3://XXXXXXXXXXXXXXXXXXXX:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX@us-east-1/unitio-dev"
export SLACK_URL="slack://biobankbot:xoxb-DDDDDDDDDDDD-XXXXXXXXXXXXXXXXXXXXXXXX@biobank-info/?icon_url=https://avatars.slack-edge.com/2017-06-05/DDDDDDDDDDDD_DDDDDDDDDDDDDDDDDDDD_48.png"
export SMTP_URL="smtp://dev_crowbar_mailhog_1:1025"

# cd crowbar && make docker-dev
cd crowbar
if [[ "$1" == "master" ]] || [[ "$1" == "dev" ]]; then
    git checkout $1
fi

git pop && make docker-run-daemon
RETCODE=$?
if [[ $RETCODE -ne 0 ]]; then
	exit $RETCODE
fi

if [[ "$1" == "reinit" ]] || [[ "$1" == "master" ]] || [[ "$1" == "dev" ]]; then
	make docker-reinit 
	RETCODE=$?
fi
exit $RETCODE
