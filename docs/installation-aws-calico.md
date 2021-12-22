# AWS CNI with Calico

Installation du chart `aws-vpc-cni` en tant que plugin réseau dans le cluster Kubernetes.

Find more information about Metrics Server at [https://www.eksworkshop.com/beginner/120_network-policies/calico/install_calico/](https://www.eksworkshop.com/beginner/120_network-policies/calico/install_calico/).

## Configuration
Configuration file `values.yaml`:

## Deployment
Deploy the component with the following parameters:

* Release name: `aws-vpc-cni`
* Chart: [`eks/aws-vpc-cni`](https://artifacthub.io/packages/helm/aws/aws-vpc-cni)
* Namespace: `kube-system`
* Chart Version: `1.1.9`
* Config file: `values.yaml`

```bash
helm repo add eks https://aws.github.io/eks-charts
helm repo update

helm upgrade --install aws-vpc-cni --namespace kube-system eks/aws-vpc-cni --version 1.1.9 -f values.yaml
kubectl apply -f https://raw.githubusercontent.com/aws/amazon-vpc-cni-k8s/master/config/v1.6/calico.yaml
```


## Extends EIP range
Extends maximum pod count limited with AWS Instance Type by prefixing interface.

> https://docs.aws.amazon.com/eks/latest/userguide/cni-increase-ip-addresses.html

```bash
kubectl set env daemonset aws-node -n kube-system ENABLE_PREFIX_DELEGATION=true
kubectl set env ds aws-node -n kube-system WARM_PREFIX_TARGET=1
kubectl set env ds aws-node -n kube-system WARM_IP_TARGET=5
kubectl set env ds aws-node -n kube-system MINIMUM_IP_TARGET=2
```
Deploy new managed node group with 110 pods configured then verify its deployment.
```bash
kubectl get nodes -o json | jq '.items[] | {name: .metadata.name, pods: .status.allocatable.pods}'
```

## Uninstall
Remove the Helm chart:
```bash
helm delete aws-vpc-cni -n kube-system
```
