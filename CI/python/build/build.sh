#!/usr/bin/env bash
ls -l 
ls -l workspace/
pip install pylint
pylint .  --exit-zero

