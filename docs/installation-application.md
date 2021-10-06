# Application Cryptobot

## Deployment

### Operator
```bash
cd cryptobot-operator/
helm upgrade --install cryptobot-operator -n cryptobot-operator --create-namespace -f values.yaml .
```

### Controller
```bash
cd cryptobot-controller/
helm upgrade --install cryptobot-controller -n cryptobot-operator --create-namespace -f values.yaml .
```

### Database
```bash
cd cryptobot-database/
helm upgrade --install cryptobot-database -n cryptobot-operator --create-namespace bitnami/postgresql -f values.yaml --set "postgresqlPassword=myPassword"
```

### API
```bash
cd cryptobot-api/
helm upgrade --install cryptobot-api -n cryptobot-operator --create-namespace -f values.yaml . --set "database.postgres.password=YXBpVmVyc2lvbjogdjEKY2x1c3RlcnM6Ci0g"
```

### Front
```bash
cd cryptobot-front/
helm upgrade --install cryptobot-front -n cryptobot-operator -f values.yaml .
```
