#!/bin/bash

set -x
registry='clodonil'
name="$registry/$(params.appname)"
image="$name:$(params.tagimage)"
buildah images
buildah push "$name:latest"
buildah push $image
printf "%s" "${image}" > "$(results.image.path)"
