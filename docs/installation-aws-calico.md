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


## Uninstall
Remove the Helm chart:
```bash
helm delete aws-vpc-cni -n kube-system
```
