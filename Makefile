run:
	poetry run python manage.py runserver

generate-dependencies:
	poetry export --without-hashes -f requirements.txt --output requirements-dev.txt --dev
	poetry export --without-hashes -f requirements.txt --output requirements.txt