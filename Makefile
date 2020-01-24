install:
	npm install
	poetry install
	./bin/setup_jupyterlab.sh

jupyter:
	PYTHONPATH=$(shell pwd)/dslib \
		PATH=${PATH}:node_modules/.bin \
		PYTHONSTARTUP=$(shell pwd)/nb_startup.py \
		poetry run jupyter notebook

jupyterlab:
	PYTHONPATH=$(shell pwd)/dslib \
		PATH=${PATH}:node_modules/.bin \
		PYTHONSTARTUP=$(shell pwd)/nb_startup.py \
		poetry run jupyter lab