# K8s-Custom-Scheduler
Tutorial for creating a custom Kubernetes scheduler. The scheduler is written in Python and schedules pods to a random node.

# Set up custom scheduler
## Prerequisites
* Kubeadm and Docker installed
* Kubernetes cluster with 1+ node running
* Kubernetes metrics-server installed and running
## Commands
```
kubectl apply -f rbac.yaml
kubectl apply -f deployment.yaml
```
# Use custom scheduler in deployment
## Commands
```
kubectl apply -f Examples/deployment.yaml
kubectl apply -f Examples/autoscaling.yaml
bash Examples/load_generator.sh
```
## View autoscaler details
To view the HPA metrics:
```
kubectl get hpa
```
To view the custom scheduler logs:
```
kubectl logs deployment/custom-scheduler --namespace=kube-system | grep Custom-Scheduler
```
# Modify custom scheduler
* Make changes to custom-scheduler.py
* Build docker container and push to repository
* Modify the image value in custom-scheduler deployment using `kubectl edit`
