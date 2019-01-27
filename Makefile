#/bin/bash

DOCKER=docker-compose

ifeq (,$(wildcard /.dockerenv))
	DOCKER_EXEC=$(DOCKER) exec app
endif

all: up install bash

up:
	$(DOCKER) up -d --remove-orphans --force-recreate

down:
	$(DOCKER) down

ps:
	$(DOCKER) ps

install:
	$(DOCKER_EXEC) yarn install

bash:
	$(DOCKER_EXEC) ash
