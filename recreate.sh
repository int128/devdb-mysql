#!/bin/sh -x
docker-compose stop
docker-compose rm -f
docker volume rm devdbmysql_mysql-data
docker-compose pull
docker-compose build
