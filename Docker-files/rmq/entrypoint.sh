#!/bin/sh

# Log the current user
echo "$(date) - Running as user: $(whoami)"

# Attempt to make rmq-config.sh executable, and log whether it succeeded
if chmod +x /vault/secrets/rmq-config.sh; then
    echo "$(date) - Successfully made /vault/secrets/rmq-config.sh executable."
else
    echo "$(date) - Failed to make /vault/secrets/rmq-config.sh executable."
    exit 1
fi

# Attempt to run rmq-config.sh, and log whether it succeeded
if . /vault/secrets/rmq-config.sh; then
    echo "$(date) - Successfully ran /vault/secrets/rmq-config.sh."
    echo "$RABBITMQ_DEFAULT_USER"
    echo "$RABBITMQ_DEFAULT_PASS"
else
    echo "$(date) - Failed to run /vault/secrets/rmq-config.sh."
    exit 1
fi