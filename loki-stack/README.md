
```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

helm upgrade --install loki grafana/loki-stack -n monitoring --create-namespace --version=2.4.1 --set grafana.enabled=true,prometheus.enabled=true,prometheus.alertmanager.persistentVolume.enabled=false,prometheus.server.persistentVolume.enabled=true,loki.persistence.enabled=true,loki.persistence.size=5Gi
```
