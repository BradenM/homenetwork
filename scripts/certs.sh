#!/bin/sh

# Hosts common info about Acme Certificates

# Directories
ACME="/tmp/acme"
DOMAIN='*.bradenmars.me'
ROOT="$ACME/bradenmars.me/$DOMAIN"

# Cert Files
CERT="$ROOT/$DOMAIN.cer"
KEY="$ROOT/$DOMAIN.key"
CA="$ROOT/fullchain.cer"

# Output
LOGFILE="$HOME/auto_cert.log"
DATE=$(date +"%D %I:%M:%S %p")
