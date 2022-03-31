#!/usr/bin/env bash
ls -l 
ls -l /workspace/sharedlibrary
ls -l /workspace/source
pip install pylint
pylint .  --exit-zero

