#!/bin/sh

echo "------------------------------"
echo "Console interactive"
echo "Ctrl+C pour quitter"
echo "------------------------------"
echo ""
docker attach mcjava --detach-keys="ctrl-c"
