#!/bin/bash

IP=""

docker run \
    -p ${IP}:80:80  \
    -p ${IP}:443:443 \
    -v /srv/reverse-proxy/conf/sites-enabled:/etc/nginx/sites-enabled:ro \
    -v /srv/reverse-proxy/certs:/etc/nginx/certs:ro \
    -v /srv/reverse-proxy/conf/dhparams.pem:/etc/nginx/dhparams.pem:ro \
    -v /srv/reverse-proxy/conf/modsecurityconf.d:/etc/nginx/modsecurityconf.d:ro \
    -v /srv/reverse-proxy/conf/owasp-modsecurity-crs:/etc/nginx/owasp-modsecurity-crs:ro \
    --name reverse-proxy-srv -d reverse-proxy
