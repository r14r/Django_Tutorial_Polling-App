default:
	type Makefile

run:
	python manage.py runserver 9999

makemigrations:
	python manage.py makemigrations

migrate:
	python manage.py migrate

createsuperuser:
	python manage.py createsuperuser --email admin@via-internet.de --username admin