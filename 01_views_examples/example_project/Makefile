SHELL := /bin/bash

.PHONY: run
run:
	python manage.py runserver

.PHONY: migrate
migrate:
	python manage.py makemigrations
	python manage.py migrate

.PHONY: admin
admin:
	python manage.py createsuperuser

.PHONY: app
app:
	python manage.py startapp $(APP)

.DEFAULT_GOAL: run

