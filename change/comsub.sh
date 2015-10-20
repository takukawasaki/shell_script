#!/bin/sh

err_count=$(grep -c "ERROR" /var/log/<somedir>/$(hostname).log)
echo "Error count: $err_count"


