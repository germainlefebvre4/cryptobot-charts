# Kube State Metrics

Installation du chart `kube-state-metrics` en tant qu'API interne de monitoring.

Find more information about Metrics Server at [https://github.com/kubernetes/kube-state-metrics/](https://github.com/kubernetes/kube-state-metrics/).

## Configuration
Configuration file `values.yaml`:

## Deployment
Deploy the component with the following parameters:

* Release name: `kube-state-metrics`
* Chart: [`prometheus-community/kube-state-metrics`](https://artifacthub.io/packages/helm/prometheus-community/kube-state-metrics)
* Namespace: `kube-system`
* Chart Version: `3.5.2`
* Config file: `values.yaml`

```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm upgrade --install kube-state-metrics -n kube-system prometheus-community/kube-state-metrics --version 3.5.2 -f values.yaml
```


## Uninstall
Remove the Helm chart:
```bash
helm delete kube-state-metrics -n kube-system
```
