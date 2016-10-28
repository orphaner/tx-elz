#!/bin/bash

echo "<<<<<<<< ls"
ls /var/log/slowlog
echo ">>>>>>>> ls"
set -e

# Add filebeat as command if needed
if [ "${1:0:1}" = '-' ]; then
	set -- filebeat "$@"
fi


exec "$@"