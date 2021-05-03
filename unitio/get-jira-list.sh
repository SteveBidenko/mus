#!/usr/bin/env bash

git log origin/master..origin/dev | grep "TR-[0-9][0-9][0-9][0-9]" | awk 'BEGIN { FS = "TR-" } ;  {print $2}' | awk 'BEGIN { FS="[- ]" } ; { print "https://unitio.atlassian.net/browse/TR-"$1 }' | sort -u
