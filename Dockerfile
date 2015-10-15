# Using a compact OS
FROM sameersbn/squid:latest
MAINTAINER	Sandy Chan <sandydy.chan@gmail.com>

COPY ./squid.conf /etc/squid3/squid.conf
COPY ./entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

EXPOSE 3128/tcp
ENTRYPOINT ["/sbin/entrypoint.sh"]