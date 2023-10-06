setup:
	yes | conda update --all
	conda init --all
	conda env create -n condaenv

install:
	conda env update -n condaenv	

lint:
	pylint --disable=R,C src

test:
	# python -m pytest -vv --cov=myrepolib testes/*.py
	# python -m pytest --nbval notebook.ipynb

all: install lint test