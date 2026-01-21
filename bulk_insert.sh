#!/bin/bash
docker build -t my-dsbulk .
docker run --rm -v $(pwd):/data --network container:cassandra-1 my-dsbulk dsbulk load \
    -k cassandra_data \
    -t users \
    -url /data/users.csv \
    -delim ',' \
    -h cassandra-1 \
    -p 9042
