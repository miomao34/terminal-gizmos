all: run

run:
	. venv/bin/activate && \
		python test.py 0 && \
		deactivate

setup: venv dep

venv:
	python3 -m venv ./venv/

dep:
	. venv/bin/activate && \
		pip install -r requirements.txt && \
		deactivate