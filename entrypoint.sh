#!/bin/bash

chown -v proxy:proxy /var/spool/squid
squid -z

exec squid -NYCd 1
