$(info shell: $(SHELL))
$(info OS:    $(OS))
$(info )

ifeq ($(OS), Windows_NT)
	CREATE_ENV := echo y | conda update --all
else #linux or mac
	CREATE_ENV := yes | conda update --all
endif

setup:
	$(CREATE_ENV)
	conda init --all
	conda env create -n {{cookiecutter.project_name}}

install:
	conda env update -n {{cookiecutter.project_name}}

lint:
    #must be in conda environment
	pylint --disable=R,C modules ?*.py

test:
	python -m pytest -vv --cov=modules tests/*.py
	python -m pytest --nbval notebook.ipynb

all: install lint test