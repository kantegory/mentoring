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

.DEFAULT_GOAL: run

