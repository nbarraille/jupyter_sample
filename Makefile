install:
	npm install
	poetry install
	./bin/setup_jupyterlab.sh

jupyter:
	PATH=${PATH}:node_modules/.bin poetry run jupyter notebook

jupyterlab:
	poetry run jupyter lab