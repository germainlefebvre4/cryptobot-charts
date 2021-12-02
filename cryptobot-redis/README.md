# Cryptobot Redis

Install redis cache in kubernetes cluster.

## Deploy

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm upgrade --install cryptobot-redis -n cryptobot-operator --create-namespace bitnami/redis -f values.yaml --version 15.6.0 --set "auth.password=myPassword"
```
