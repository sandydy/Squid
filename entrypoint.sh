#!/bin/sh

set -e

# start logging
service rsyslog start

# enable IP forwarding
sysctl -w net.ipv4.ip_forward=1

exec "$@"