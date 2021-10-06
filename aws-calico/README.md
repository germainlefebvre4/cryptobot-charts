
https://www.eksworkshop.com/beginner/120_network-policies/calico/install_calico/

```bash
helm repo add eks https://aws.github.io/eks-charts
helm repo update

helm upgrade --install aws-vpc-cni --namespace kube-system eks/aws-vpc-cni --version 1.1.9 -f values.yaml
kubectl apply -f https://raw.githubusercontent.com/aws/amazon-vpc-cni-k8s/master/config/v1.6/calico.yaml
```
