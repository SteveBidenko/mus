#!/usr/bin/env bash

if [[ "$1" != "status" ]]; then
  ./conductor.sh
  ./alliance.sh $1
  RETCODE=$?
  if [[ $RETCODE -ne 0 ]]; then
	  exit $RETCODE
  fi

  ./crowbar.sh $1
  RETCODE=$?
  if [[ $RETCODE -ne 0 ]]; then
	  exit $RETCODE
  fi

  cd tr
  ./be.sh $1
  RETCODE=$?
  if [[ $RETCODE -ne 0 ]]; then
	  exit $RETCODE
  fi

  cd web
  if [[ "$1" == "master" ]] || [[ "$1" == "dev" ]]; then
	  git checkout $1
	  rm -rf node_modules
	  npm install
	  npm run build-datepicker
  elif [[ ! -d dist/registry-datepicker ]]; then
	  npm run build-datepicker
  fi
  cd ../..
  echo "You can run 'cd tr/web; npm run watch-lib'"
fi
echo ---
echo "Alliance: $(cd alliance; git st | head -1)"
echo "Crowbar: $(cd crowbar; git st | head -1)"
echo "BE: $(cd tr/be; git st | head -1)"
echo "FE: $(cd tr/web; git st | head -1)"
echo ---
