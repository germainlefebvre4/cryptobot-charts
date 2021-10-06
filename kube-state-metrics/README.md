

```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm upgrade --install kube-state-metrics -n kube-system prometheus-community/kube-state-metrics --version 3.5.2 -f values.yaml
```
