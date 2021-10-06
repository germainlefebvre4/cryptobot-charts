https://github.com/kubernetes-sigs/metrics-server

```bash
helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/
helm repo update

helm upgrade --install metrics-server metrics-server/metrics-server -n kube-system --version 3.5.0 -f values.yaml
```
