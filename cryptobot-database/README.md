# Cryptobot Database

Install postgres database in kubernetes cluster.

## Deploy

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install cryptobot-database bitnami/postgresql -f values.yaml --set "postgresqlPassword=myPassword"
```
