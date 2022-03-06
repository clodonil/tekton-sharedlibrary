#!/bin/bash
set -x
curl localhost
k6 run $(workspaces.sharedlibrary.path)/TESTS/performance/test.js