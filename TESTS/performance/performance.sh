#!/bin/bash
set -x
k6 run $(workspaces.sharedlibrary.path)/TESTS/performance/test.js