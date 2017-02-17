#!/bin/sh
set -e

# Apache gets grumpy about PID files pre-existing
mkdir -p /run/apache2
chown www-data:www-data /run/apache2
rm -f /run/apache2/httpd.pid

exec httpd -DFOREGROUND