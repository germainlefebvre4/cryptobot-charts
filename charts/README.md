# Cryptobot application Charts

## Namespace
```bash
kubectl create namespace cryptobot
kubectl config set-context --current --namespace=cryptobot
```

## Deployment

### Controller
```bash
helm upgrade --install cryptobot-controller -n cryptobot -f values.yaml .
```

### Database
```bash
helm upgrade --install cryptobot-database bitnami/postgresql -f values.yaml
```

### API
```bash
helm upgrade --install cryptobot-api -n cryptobot -f values.yaml .
```

### Front
```bash
helm upgrade --install cryptobot-front -n cryptobot -f values.yaml .
```
