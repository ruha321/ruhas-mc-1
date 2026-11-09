#!/bin/bash
set -euo pipefail

DIR=~/ruhas-mc-1/mc-backups

cd ${DIR}

if [ ! -f "$1" ]; then 
	echo "ERROR!!"
	exit 1
fi

sha256sum -c "$1".sha256

sudo tar -xvzf "$1" -C ${DIR}/../data/
