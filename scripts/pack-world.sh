#!/bin/bash
set -euo pipefall

HOME=~/ruhas-mc-1
TAR_NAME=${HOME}/exports/ruhas-mc-1-savedata-$(date "+%Y-%m-%d-%H-%M").tar.gz 

sudo tar -czf ${TAR_NAME} -C ${HOME}/data/lightmans-currency/ world
echo "$(sha256sum ${TAR_NAME})" > ${TAR_NAME}.sha256
