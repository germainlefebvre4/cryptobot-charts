# Metrics Server

Installation du chart `metrics-server` en tant qu'API interne de monitoring.

Find more information about Metrics Server at [https://github.com/kubernetes-sigs/metrics-server/](https://github.com/kubernetes-sigs/metrics-server/).

## Configuration
Configuration file `values.yaml`:

## Deployment
Deploy the component with the following parameters:

* Release name: `metrics-server`
* Chart: [`metrics-server/metrics-server`](https://github.com/kubernetes-sigs/metrics-server)
* Namespace: `kube-system`
* Chart Version: `3.5.0`
* Config file: `values.yaml`

```bash
helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/
helm repo update

helm upgrade --install metrics-server metrics-server/metrics-server -n kube-system --version 3.5.0 -f values.yaml
```


## Uninstall
Remove the Helm chart:
```bash
helm delete metrics-server -n kube-system
```
