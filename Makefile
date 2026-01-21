default: 
	@echo "=== Instructions for Cassandra using docker-compose ==="
	@echo ""
	@echo "Available commands:"
	@echo "  make env        - Create .venv and install dependencies (requirements.txt)"
	@echo "  make up         - Download and run Cassandra containers"
	@echo "  make stats      - Check Cassandra cluster"
	@echo "  make populate n - Create Keyspace cassandra_data, create table users and insert n rows"
	@echo "  make cqlsh      - connect to the cluster"
	@echo "  make down       - remove Cassandra containers"
	@echo ""
	@echo "Typical workflow:"
	@echo "  1. make env"
	@echo "  2. make up"
	@echo "  3. make stats"
	@echo "  4. make populate n"
	@echo "  5. make cqlsh"
	@echo "  7. make down"
	@echo ""

env:
	python -m venv .venv
	. .venv/bin/activate &&	pip install -r requirements.txt

up:
	docker-compose up -d

stats:
	docker-compose stats

populate:
	. .venv/bin/activate && python main.py $(filter-out $@,$(MAKECMDGOALS)) && ./bulk_insert.sh $(filter-out $@,$(MAKECMDGOALS))
		
cqlsh:
	docker-compose exec -it cassandra-1 cqlsh -k cassandra_data

down:
	docker-compose down

