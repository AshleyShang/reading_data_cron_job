#!/usr/bin/env bash

# -O allows us to ensure the name of the output is consistent.
# By default wget creates numbered copies if the file already exists
# i.e. the second run will produce deaths.csv.1 if -O is not used
wget -O /path/to/deathDB/pgdata/deaths.csv https://raw.githubusercontent.com/nytimes/covid-19-data/master/excess-deaths/deaths.csv


# The -c option allows us to run queries non-interactively
docker exec -i mydb psql -h localhost -U postgres \
  -c "\copy covid_deaths from '/var/lib/postgresql/data/deaths.csv' delimiter ',' csv header;"
