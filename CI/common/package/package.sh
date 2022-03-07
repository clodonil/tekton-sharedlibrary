#!/usr/bin/env bash
set -x
appname=$1
tagimage=$2
registry='clodonil'
name="$registry/$appname)"
buildah bud --tag="$name:latest" .
buildah tag "$name:latest" "$name:$tagimage"
buildah images