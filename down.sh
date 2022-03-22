#!/bin/sh

echo "Sauvegarde..."
docker exec mcjava rcon-cli save-all flush

echo "Arrêt..."
docker exec mcjava rcon-cli stop

echo "Suppression du conteneur..."
docker-compose down
