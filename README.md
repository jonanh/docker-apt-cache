# docker-apt-cache

Simple apt package cache using Squid to speed up building heavy containers.

## Run

```
docker-compose up -d
```

## Environment variables
```
export PROXY_PORT=3128
export PROXY_IP=$(hostname -I | awk '{print $1}')
export http_proxy=http://${PROXY_IP}:${PROXY_PORT} \
export https_proxy=http://${PROXY_IP}:${PROXY_PORT} \
export ftp_proxy=http://${PROXY_IP}:${PROXY_PORT}
```
