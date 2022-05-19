# Prometheus and Grafana

## Installation
## Start minikube
```
minikube start 
```
## Set context
```
kubectl config set-context minikube
```
## Create namespace
```
kubectl apply -f monitoring-namespace.yaml 
```
## Kubestate matrics deployment
* Deployment
```
kubectl apply -f kube-state-metrics.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
* List cluster rolebindings
```
kubectl get clusterrolebindings --namespace=monitoring
```
## Prometheus deployment
* Deployment
```
kubectl apply -f prometheus.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
* route URL
```
minikube service --url --namespace=monitoring prometheus-service
```
## Grafana deployment
* Deployment
```
kubectl apply -f grafana.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
* route URL
```
minikube service --url --namespace=monitoring grafana-service
```
## Node Exporter deployment

* Deployment
```
kubectl apply -f node-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## Mysql Exporter deployment

* Deployment
```
kubectl apply -f mysqld-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## Apache Exporter deployment

* Deployment
```
kubectl apply -f apache-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## JMX Exporter deployment

* Deployment
```
kubectl apply -f jmx-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## Jira Exporter deployment

* Deployment
```
kubectl apply -f jira-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## Jenkins Exporter deployment

* Deployment
```
kubectl apply -f jenkins-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## Elasticsearch Exporter deployment

* Deployment
```
kubectl apply -f elasticsearch-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## Kibana Exporter deployment

* Deployment
```
kubectl apply -f kibana-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```

