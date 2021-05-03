#!/usr/bin/env bash

if [[ "$1" == "help" ]]; then
    echo "Assign AQ:"
    echo "$ make docker-bash"
    echo "# python manage.py tmp_assign_newaq"
    echo "# exit"
    echo
    echo "Assign any study via tr-adimn and send reminders:"
    echo "$ make docker-bash"
    echo "# python manage.py process_study_reminders"
    echo "# python manage.py process_jobs_queue --force"
    echo "# exit"
    exit
fi

cd be
if [[ "$1" == "dev" ]] || [[ "$1" == "master" ]]; then
    git checkout $1
fi
git pop; make docker-run-daemon

if [[ "$1" == "reinit" ]] || [[ "$1" == "dev" ]] || [[ "$1" == "master" ]]; then
  make docker-db-reinit
fi
