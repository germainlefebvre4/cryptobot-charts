# Cryptobot application Charts

## Prerequisites

### Cluster
Cluster installation is described in [./docs/installation-cluster.md](./docs/installation-cluster.md).

### Core components
#### Ingress controller
Ingress controller installation is described in [./docs/installation-cluster.md](./docs/installation-cluster.md).

#### Cert-manager
Cert-manager installation is described in [./docs/installation-cluster.md](./docs/installation-cluster.md).


## Deployment

### Operator
```bash
helm upgrade --install cryptobot-operator -n cryptobot-operator --create-namespace -f values.yaml .
```

### Controller
```bash
helm upgrade --install cryptobot-controller -n cryptobot-operator --create-namespace -f values.yaml .
```

### Database
```bash
helm upgrade --install cryptobot-database -n cryptobot-operator --create-namespace bitnami/postgresql -f values.yaml
```

### API
```bash
helm upgrade --install cryptobot-api -n cryptobot-operator --create-namespace -f values.yaml .
```

### Front
```bash
helm upgrade --install cryptobot-front -n cryptobot-operator -f values.yaml .
```
