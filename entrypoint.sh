#!/bin/sh

set -e

exec $(which squid3) -f /etc/squid3/squid.conf -NYCd 1

exec "$@"