#!/bin/sh

set -e

# enable IP forwarding
sysctl -w net.ipv4.ip_forward=1

/etc/init.d/squid3 start

exec "$@"