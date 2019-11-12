#!/bin/sh

# Installs Certs generated by Acme AutoCerts
# into the Freenas Server

# Source Cert Info
. /root/scripts/certs.sh

# Server Info
REMOTE_HOST="freenas"
REMOTE="root@${REMOTE_HOST}"
CERTS_DIR="/root/certs"
REMOTE_TARGET="$REMOTE:$CERTS_DIR"

echo "Creating remote directories..."
ssh "$REMOTE" mkdir -p "$REMOTE_CERTS"

echo "Copying Certs..."
scp "$CERT" "$REMOTE_TARGET/"
scp "$KEY" "$REMOTE_TARGET/"
scp "$CA" "$REMOTE_TARGET/"

echo "Listing remote directory"
ssh "$REMOTE" ls -al $CERTS_DIR

echo "Done!"
echo "[FREENAS] Generated and Installed Certs on: $DATE" >>"$LOGFILE"
