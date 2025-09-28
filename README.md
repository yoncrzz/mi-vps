# VPS Linux + Railway CLI

Este contenedor incluye:
- Servidor Linux Ubuntu 22.04
- Servidor web en Python (puerto 8080)
- Railway CLI preinstalado
- tmate + openssh-client para acceso remoto

## 🚀 Uso en Railway
1. Sube este repo a GitHub.
2. Entra a [Railway.app](https://railway.app/) → New Project → Deploy from GitHub.
3. Railway construirá la imagen automáticamente.
4. Accede a `https://<proyecto>.up.railway.app`.

## 🔑 Acceso CLI dentro del contenedor
Conecta un shell y corre:
```bash
railway login
railway up
