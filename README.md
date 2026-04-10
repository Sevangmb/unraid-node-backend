# Node Backend — Unraid Community Applications Template

Serveur Node.js backend léger basé sur `node:22-alpine`.  
Ce template déploie l'application via un **container unique** directement depuis Docker Hub.

## Port

| Port | Protocole | Usage         |
|------|-----------|---------------|
| 3000 | TCP       | API HTTP REST |

## Premier démarrage

1. Dans Community Applications, recherche **NodeBackend**.
2. Définis le chemin des données (appdata).
3. Clique **Apply** — le container démarre automatiquement.
4. L'API est accessible sur `http://TON_IP_UNRAID:3000`.

## Données persistées sur le host

```
/mnt/user/appdata/node-backend/
└── data/
    └── logs/    ← logs de l'application
```

## Mise à jour de l'image

Chaque `git push` sur `main` rebuild et publie automatiquement l'image sur Docker Hub via GitHub Actions.  
Sur Unraid, clique **Check for Updates** dans le Docker Manager.

## Soumettre au store Community Applications

1. Fork [Squidly271/AppFeed](https://github.com/Squidly271/AppFeed).
2. Ajoute `node-backend.xml` dans le dossier templates.
3. Ouvre une Pull Request — l'équipe CA review et merge.

## Liens

- [Node.js](https://nodejs.org)
- [Docker Hub — sevanitito/node-backend](https://hub.docker.com/r/sevanitito/node-backend)
- [GitHub — Sevangmb/unraid-node-backend](https://github.com/Sevangmb/unraid-node-backend)
- [Unraid CA submission guide](https://forums.unraid.net/topic/38582-plug-in-community-applications/)
