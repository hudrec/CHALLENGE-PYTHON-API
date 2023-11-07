#!/usr/bin/env bash

cd backend_test
poetry run python manage.py migrate
poetry run python manage.py collectstatic --no-input
poetry run python manage.py createsuperuser --username admin --email admin@test.com --noinput
poetry run python manage.py runserver 0.0.0.0:8000

