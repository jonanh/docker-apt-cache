
FROM debian:stretch
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      squid \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
