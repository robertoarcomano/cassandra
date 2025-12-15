# Cassandra

## Install
```
docker-compose up -d
```

## Configure python
```
python -m venv .venv
source .venv/bin/activate
pip install cassandra-driver
```

# Test it
```
(.venv) berto@laptop:~/src/cassandra$ python main.py 
multi_batch_insert: 2248.72 records/s
concurrent_insert: 10431.82 records/s
multiprocess_concurrent_insert: 103679.34 records/s
```