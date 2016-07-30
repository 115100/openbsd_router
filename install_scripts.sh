#!/bin/sh
set -e

curl -o /tmp/openup https://stable.mtier.org/openup

# Last known good version
[ `sha512 -bq /tmp/openup` == 'hCkylHhmg6VXJGzzeClrXkjTcpC+SlmvlLURvFb0gaWJRDhaSyDu0DqqrKMV74tDidAiOClO6BkzQBpgncfnvg==' ]

chmod +x /tmp/openup && mv /tmp/openup /usr/local/sbin

echo '/usr/local/sbin/openup' >> /etc/daily
