
```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

helm upgrade --install loki grafana/loki -n monitoring --create-namespace --version=2.4.1 -f values.yaml
```
