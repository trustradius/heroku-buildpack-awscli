#!/bin/bash

set -e

if [ -z ${DYNO+x} ]; then
        echo "DYNO is NOT set"; 
elif [[ $DYNO != worker* && $DYNO != web* ]]; then 
    echo "---> Installing & Configuring awscli for $DYNO";
    INSTALL_DIR="/app/vendor/awscli"
	chmod +x /app/vendor/awscli-bundle/install
	/app/vendor/awscli-bundle/install -i $INSTALL_DIR
	chmod u+x $INSTALL_DIR/bin/aws
	export PATH="$PATH:$INSTALL_DIR/bin"
	aws configure set region "us-east-1"
else
        echo "Skipping install of awscli for $DYNO because we do not need it for web or worker dynos.";
fi
