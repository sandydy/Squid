# Using a compact OS
FROM debian:jessie
MAINTAINER	Sandy Chan <sandydy.chan@gmail.com>

RUN apt-get update \
 && apt-get install -y squid3

COPY ./squid.conf /etc/squid3/squid.conf
COPY ./entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

EXPOSE 3128/tcp
ENTRYPOINT ["/sbin/entrypoint.sh"]