# docker-apt-cache

Docker container providing a [Squid caching proxy](http://www.squid-cache.org) configured to cache common package downloads, which helps speeding up building and developing big containers with lots of dependencies.

## Run

```
docker-compose up -d
```

or

```
docker run \
  --rm -it \
  -v $PWD/squid.conf:/etc/squid/squid.conf \
  -v $PWD/data:/var/spool/squid \
  -p 3128:3128 \
  jonanh/docker-apt-cache
```

## Environment variables

```
export PROXY_PORT=3128
export PROXY_IP=$(hostname -I | awk '{print $1}')
export http_proxy=http://${PROXY_IP}:${PROXY_PORT} \
export https_proxy=http://${PROXY_IP}:${PROXY_PORT} \
export ftp_proxy=http://${PROXY_IP}:${PROXY_PORT}
```

## Notes

https connections are tricky to cache with a cache proxy, try using http connections instead and always use checksums to validate the downloaded packages.
