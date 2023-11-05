#!/bin/sh

# Log the current user
echo "$(date) - Running as user: $(whoami)"

# Attempt to make database-config.sh executable, and log whether it succeeded
if chmod +x /vault/secrets/database-config.sh; then
    echo "$(date) - Successfully made /vault/secrets/database-config.sh executable."
else
    echo "$(date) - Failed to make /vault/secrets/database-config.sh executable."
    exit 1
fi

# Attempt to run database-config.sh, and log whether it succeeded
if . /vault/secrets/database-config.sh; then
    echo "$(date) - Successfully ran /vault/secrets/database-config.sh."
    echo "$MYSQL_ROOT_PASSWORD"
else
    echo "$(date) - Failed to run /vault/secrets/database-config.sh."
    exit 1

/usr/local/bin/docker-entrypoint.sh
fi