setup:
	yes | conda update --all
	conda init --all
	conda env create -n condaenv

install:
	conda env update -n condaenv	

lint:
    #must be in conda environment
	pylint --disable=R,C modules ?*.py

test:
	python -m pytest -vv --cov=modules tests/*.py
	python -m pytest --nbval notebook.ipynb

all: install lint test