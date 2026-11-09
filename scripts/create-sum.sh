#!/bin/bash
set -euo pipefail

DIR=~/ruhas-mc-1/mc-backups/
cd ${DIR}

FULL_NAME=$(readlink -f  ${DIR}"latest.tar.gz")
FILE_NAME=$(readlink ${DIR}"latest.tar.gz")

echo ${FULL_NAME}

sha256sum ${FILE_NAME} > ${FULL_NAME}.sha256

cp ${FILE_NAME} /mnt/c/Users/haru/ruhas-mc-1/mc-backups/
cp ${FILE_NAME}.sha256 /mnt/c/Users/haru/ruhas-mc-1/mc-backups/

