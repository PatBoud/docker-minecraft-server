#!/bin/sh

docker exec mcjava rcon-cli save-all flush
docker exec mcjava rcon-cli save-off
