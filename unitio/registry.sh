#!/usr/bin/env bash

if [[ "$1" != "status" ]]; then
    ./conductor.sh
    ./alliance.sh "$1"
    ./crowbar.sh "$1"
    cd tr && ./be.sh "$1"
    cd web || exit
    if [[ ! -d dist/registry-datepicker ]]; then
        npm run build-datepicker
    fi
    cd ../..
    echo "It's ready to run 'cd tr/web && npm run watch-lib'"
fi

echo "---"
echo "Conductor is on $(cd conductor || exit; git branch --show-current)"
echo "Alliance is on $(cd alliance || exit; git branch --show-current)"
echo "Crowbar is on $(cd crowbar || exit; git branch --show-current)"
echo "BE is on $(cd tr/be || exit; git branch --show-current)"
echo "FE is on $(cd tr/web || exit; git branch --show-current)"
echo "---"
