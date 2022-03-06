#!/usr/bin/env bash
pip install pytest
pip install pytest-cov
pip install coverage
pytest --cov=app tests/ --cov-report=xml
coverage report -m pytest
ls -l
mv coverage.xml /coverage


