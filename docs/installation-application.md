# Application Cryptobot

## Deployment

### Operator
```bash
cd cryptobot-operator/
helm upgrade --install cryptobot-operator -n cryptobot-operator --create-namespace -f values.yaml . --set "image.tag=0.5.0"
```

### Controller
```bash
cd cryptobot-controller/
helm upgrade --install cryptobot-controller -n cryptobot-operator -f values.yaml . --set "image.tag=0.9.0"
```

### Database
```bash
cd cryptobot-database/
helm upgrade --install cryptobot-database -n cryptobot-operator --create-namespace bitnami/postgresql -f values.yaml --set "postgresqlPassword=myPassword"
```

### API
```bash
cd cryptobot-api/
helm upgrade --install cryptobot-api -n cryptobot-operator -f values.yaml . --set "image.tag=0.8.0" --set "database.postgres.password=YXBpVmVyc2lvbjogajEKY2x1c3RlcnM6Ci0g"
```

### Front
```bash
cd cryptobot-front/
helm upgrade --install cryptobot-front -n cryptobot-operator -f values.yaml . --set "image.tag=0.6.0"
```
