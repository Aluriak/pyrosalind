PYTHON=python3
PIP=pip3

all:
	$(PYTHON) -m pyrosalind


test_register:
	$(PYTHON) setup.py register -r https://testpypi.python.org/pypi
test_install:
	$(PYTHON) setup.py sdist upload -r https://testpypi.python.org/pypi
	$(PIP) install -U -i https://testpypi.python.org/pypi pyrosalind

upload:
	$(PYTHON) setup.py sdist upload
