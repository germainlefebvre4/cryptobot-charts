
```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

helm upgrade --install loki grafana/loki-stack -n monitoring --create-namespace --version=2.5.0 -f values.yaml
```
