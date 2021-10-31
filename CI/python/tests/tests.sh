#!/usr/bin/env bash
pip install pytest
pip install coverage
pytest
coverage report -m pytest

