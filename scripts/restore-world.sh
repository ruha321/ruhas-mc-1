HOME=~/ruhas-mc-1
TAR_NAME="${HOME}/imports/$1"
echo "${TAR_NAME}"

if ( sha256sum --status --strict -c ${TAR_NAME}.sha256); then
	echo "OK: ${TAR_NAME}"
else
	echo "ERROR] checksum failed: ${TAR_NAME}"
	exit 1
fi

sudo tar -xzf ${TAR_NAME} -C ${HOME}/data/lightmans-currency/
