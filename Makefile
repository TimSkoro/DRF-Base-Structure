run:
	poetry run python manage.py runserver

generate-dependencies:
	poetry export --without-hashes -f requirements.txt --output requirements-dev.txt --dev
	poetry export --without-hashes -f requirements.txt --output requirements.txt
pre-commit:
	poetry run python manage.py test
	poetry run flake8 .