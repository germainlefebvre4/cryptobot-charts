# Cryptobot Database

Install postgres database in kubernetes cluster.

## Deploy

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm upgrade --install cryptobot-database -n cryptobot-operator --create-namespace bitnami/postgresql -f values.yaml --set "postgresqlPassword=myPassword"
```
