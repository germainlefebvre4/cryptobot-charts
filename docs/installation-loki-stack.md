# Loki Stack

Installation du chart `loki-stack` en tant que plateforme de monitoring dans le cluster Kubernetes.

Find more information about Loki Stack at [https://github.com/grafana/helm-charts/tree/main/charts/loki-stack/](https://github.com/grafana/helm-charts/tree/main/charts/loki-stack/).

## Configuration
Configuration file `values.yaml`:

## Deployment
Deploy the component with the following parameters:

* Release name: `loki`
* Chart: [`grafana/loki`](https://artifacthub.io/packages/helm/grafana/loki-stack)
* Namespace: `monitoring`
* Chart Version: `2.8.4`
* Config file: `values.yaml`

```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

helm upgrade --install loki grafana/loki-stack -n monitoring --create-namespace --version=2.5.0 -f values.yaml
```


## Uninstall
Remove the Helm chart:
```bash
helm delete loki -n monitoring
```

Remove the namespace:
```bash
kubectl delete ns/monitoring
```
