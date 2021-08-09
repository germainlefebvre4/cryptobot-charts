# Kubernetes Cluster

## How to setup kubernetes setup?

Find more information about eksctl at [https://eksctl.io/](https://eksctl.io/).


## Cluster configuration

```bash
eksctl create cluster -f cluster.yaml --write-kubeconfig --set-kubeconfig-context
eksctl upgrade cluster --config-file cluster.yaml
```

## Node groups configuration

```bash
eksctl create nodegroup --config-file cluster.yaml
eksctl scale nodegroup --cluster=poc-dev --nodes=2 --name=spot03
```
