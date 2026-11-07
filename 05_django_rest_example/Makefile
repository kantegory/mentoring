.PHONY: init
init:
	python3 -m venv venv
	./venv/bin/pip install --upgrade pip
	./venv/bin/pip install -r requirements.txt

.PHONY: run
run:
	./venv/bin/python example_project/manage.py runserver

.PHONY: migrate
migrate:
	./venv/bin/python example_project/manage.py migrate

.DEFAULT_GOAL: init
