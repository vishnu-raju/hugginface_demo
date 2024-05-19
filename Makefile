install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

run_tests:
	python -m pytest -vv --cov=src tests/*.py

format:
	black *.py

lint:
	pylint --disable=R,C app.py

all: install lint run_tests format