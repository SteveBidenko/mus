#!/usr/bin/env bash

echo "Be sure if you already run the command 'docker pull dpage/pgadmin4'"
docker run -p 5050:80 -e "PGADMIN_DEFAULT_EMAIL=user@domain.com" -e "PGADMIN_DEFAULT_PASSWORD=SuperSecret" -d dpage/pgadmin4
# docker run -p 5050:80 -e "PGADMIN_DEFAULT_EMAIL=registry" -e "PGADMIN_DEFAULT_PASSWORD=P@ssw0rd" -d dpage/pgadmin4
echo "In browser type 'http://localhost:5050/'. When you setup connection you are supposed to use address for db server as 172.17.0.1"
