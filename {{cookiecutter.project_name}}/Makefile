# setting OS var for non windows systems
ifndef OS
	OS := $(shell uname -s)
endif

# printing basic info
$(info shell: $(SHELL))
$(info OS:    $(OS))
$(info )

# conda update for differents OS
ifeq ($(OS), Windows_NT)
	CONDA_UPDATE := echo y | conda update --all
else #linux or mac
	CONDA_UPDATE := yes | conda update --all
endif

setup:
	$(CONDA_UPDATE)
	conda init --all
	conda env create -n gpt_translate

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