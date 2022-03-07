#!/bin/bash

set -x
registry='clodonil'
appname=$1
tagimage=$2
result=$3
name="$registry/$appname"
image="$name:$tagimage"
buildah images
buildah push "$name:latest"
buildah push $image
printf "%s" "${image}" > $result
