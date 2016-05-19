#!/bin/bash

set -e
set -x

INSTALL_DIR="/app/vendor/awscli"
chmod +x /app/vendor/awscli-bundle/install
/app/vendor/awscli-bundle/install -i $INSTALL_DIR
chmod u+x $INSTALL_DIR/bin/aws
export PATH="$PATH:$INSTALL_DIR/bin"

aws configure set region "us-east-1"

exit 0
