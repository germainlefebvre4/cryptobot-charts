# DNS

## Get the public endpoint
After deploying the nginx ingress controller retrieve the `External IP` provided by the cluster;

```bash
kubectl get svc -n ingress-nginx
```
```
NAMESPACE       NAME                       TYPE           CLUSTER-IP       EXTERNAL-IP                                                               PORT(S)                      AGE
ingress-nginx   ingress-nginx-controller   LoadBalancer   10.100.16.247    a064b713d3b69409482678c19bfa177b-1015053076.eu-west-3.elb.amazonaws.com   80:31209/TCP,443:30409/TCP   37h 
```

## DNS Configuration
Go on your DNS provider and add/modify the line as the following:
```raw
app.cryptobot	CNAME	600	a064b713d3b69409482678c19bfa177b-1015053076.eu-west-3.elb.amazonaws.com.
api.cryptobot	CNAME	600	a064b713d3b69409482678c19bfa177b-1015053076.eu-west-3.elb.amazonaws.com.	
```
