#!/bin/bash

docker stop reverse-proxy-srv
docker rm reverse-proxy-srv
docker rmi reverse-proxy
