#!/usr/bin/env bash

cd ~/pgAdmin4
virtualenv venv
source venv/bin/activate
python venv/lib/python3.8/site-packages/pgadmin4/pgAdmin4.py