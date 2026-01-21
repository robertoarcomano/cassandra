# Cassandra
```
(.venv) berto@laptop:~/src/cassandra$ make
=== Instructions for Cassandra using docker-compose ===

Available commands:
  make env        - Create .venv and install dependencies (requirements.txt)
  make up         - Download and run Cassandra containers
  make stats      - Check Cassandra cluster
  make populate n - Create Keyspace cassandra_data, create table users and insert n rows
  make cqlsh      - connect to the cluster
  make down       - remove Cassandra containers

Typical workflow:
  1. make env
  2. make up
  3. make stats
  4. make populate n
  5. make cqlsh
  7. make down
```