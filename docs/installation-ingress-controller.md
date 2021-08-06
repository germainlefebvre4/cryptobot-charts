# Ingress Controller

## What is an ingress controller
Installation du chart `ingress-nginx` en tant que Ingress Controller dans le cluster Kubernetes.

Find more information about Cert Manager at [https://kubernetes.github.io/ingress-nginx/](https://kubernetes.github.io/ingress-nginx/).

# Configuration
Configuration file `values.yaml`:

## Deployment
Deploy the ingress controller with the following parameters:

* Release name: `ingress-nginx`
* Chart: [`ingress-nginx/ingress-nginx`](https://artifacthub.io/packages/helm/ingress-nginx/ingress-nginx)
* Namespace: `ingress-nginx`
* Chart Version: `3.34.0`
* Config file: `values.yaml`

```bash
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx -n ingress-nginx --create-namespace --version 3.34.0 -f values.yaml
```


## Uninstall
Remove the Helm chart:
```bash
helm delete ingress-nginx -n ingress-nginx
```

Remove the namespace:
```bash
kubectl delete ns/ingress-nginx
```
