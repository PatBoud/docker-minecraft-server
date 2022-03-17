# Serveur Minecraft sous Docker

Fichier de configuration ``docker-compose.yml`` pour lancer un conteneur depuis l'image [itzg/minecraft-server](https://hub.docker.com/r/itzg/minecraft-server) et scripts pour faciliter l'administration.

---

### Prérequis

- Installation de Docker sous Linux. Voici la procédure pour Ubuntu-Server ( https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository )

---


### Clonage

Clôner le dépot:
- ``git clone https://github.com/PatBoud/docker-minecraft-server``

Optionnel: Renommer le dossier en "mc", tout simplement parce que c'est plus court:
- ``mv docker-minecraft-server mc``

---


### Structure de dossiers

```
  ./mc
     /data
     console.sh
     docker-compose.yml
     down.sh
     save-off.sh
     save-on.sh
     up.sh
```

| Dossier/Fichier | Description |
| --------------- | ----------- |
| /data | Dossier qui contiendra les données persistentes du serveur |
| console.sh | Script qui lance la console interactive |
| down.sh | Script qui stoppe le serveur |
| docker-compose.yml | Fichier de configuration du conteneur |
| save-off.sh | Script qui stoppe la sauvegarde automatique (utile **avant** de prendre un backup sans arrêter le serveur) |
| save-on.sh | Script qui réactive la sauvegarde automatique (utile **après** avoir pris un backup) |
| up.sh | Script qui lance le serveur |

---


### Modification des paramètres

Modifier le fichier ``docker-compose.yml`` pour adapter les paramètres.

---

### Lancement du serveur

Commande: ``sudo ./up.sh``

Docker va télécharger l'image la plus récente et procéder au lancement du serveur. Le premier lancement sera plus long que les suivants.
