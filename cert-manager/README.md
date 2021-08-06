# Cert Manager

## Installation
```bash
helm repo add jetstack https://charts.jetstack.io
helm repo update
```

```bash
helm upgrade -i cert-manager jetstack/cert-manager -n cert-manager --create-namespace --version v1.4.0 -f values.yaml
```

## Configuration
### Staging
```bash
kubectl apply -f cluster-issuer-staging.yaml
```
### Production
```bash
kubectl apply -f cluster-issuer-production.yaml
```

## Uninstall
```bash
kubectl get Issuers,ClusterIssuers,Certificates,CertificateRequests,Orders,Challenges --all-namespaces
```

```bash
helm delete cert-manager -n cert-manager
```

```bash
kubectl delete -f https://github.com/jetstack/cert-manager/releases/download/v1.4.0/cert-manager.crds.yaml
```
