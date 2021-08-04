# Cryptobot application Charts

## Namespace
```bash
kubectl create namespace cryptobot-operator
kubectl create namespace cryptobot
kubectl config set-context --current --namespace=cryptobot-operator
```

## Deployment

### Operator
```bash
helm upgrade --install cryptobot-operator -n cryptobot-operator -f values.yaml .
```

### Controller
```bash
helm upgrade --install cryptobot-controller -n cryptobot-operator -f values.yaml .
```

### Database
```bash
helm upgrade --install cryptobot-database -n cryptobot-operator bitnami/postgresql -f values.yaml
```

### API
```bash
helm upgrade --install cryptobot-api -n cryptobot-operator -f values.yaml .
```

### Front
```bash
helm upgrade --install cryptobot-front -n cryptobot-operator -f values.yaml .
```
