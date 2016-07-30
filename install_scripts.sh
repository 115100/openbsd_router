#!/bin/sh

curl -o /usr/local/sbin/openup https://stable.mtier.org/openup
echo '/usr/local/sbin/openup' >> /etc/daily
