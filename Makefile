RUNFILE ?= docker-compose-dev.yml

restart:
	docker compose -f $(RUNFILE) restart

build:
	@echo "${RUNFILE} Build started..."
	docker compose -f $(RUNFILE) up --build -d --remove-orphans

up:
	docker compose -f $(RUNFILE) up

down:
	docker compose -f $(RUNFILE) down

down-v:
	docker compose -f $(RUNFILE) down -v

show-logs:
	docker compose -f $(RUNFILE) logs

logs-api:
	docker compose -f $(RUNFILE) logs api

makemigrations:
	docker compose -f $(RUNFILE) run --rm api python src/manage.py makemigrations

migrate:
	docker compose -f $(RUNFILE) run --rm api python src/manage.py migrate

dbshell:
	docker compose -f $(RUNFILE) exec postgres psql --username=cali_admin --dbname=cali-dev
