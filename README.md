# Prometheus and Grafana
## Description
[Prometheus-Grafana](https://docs.google.com/document/d/1Y0NHxs0IQzH-E80TYP-nm6GxXOLIwiOCnP3akPcSdcI/edit)

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

[Node-Exporter](https://docs.google.com/document/d/1hpNQfuNyIpZ6j0QM-Ar-b4I2RxUrqLGqJC1-chI9_U8/edit)
* Deployment
```
kubectl apply -f node-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## Mysql Exporter deployment

[Mysql-Exporter](https://docs.google.com/document/d/1odSB55P-ZI3nwl5pOpw-IABRTbGoZJRKG1vTevtKx3E/edit)
* Deployment
```
kubectl apply -f mysqld-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## Apache Exporter deployment

[Apache-Exporter](https://docs.google.com/document/d/16-Shhb4q-JezAV7en7nQSSK9QV02ZfP-bRfbpz4NDVA/edit)
* Deployment
```
kubectl apply -f apache-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## JMX Exporter deployment

[JMX-Exporter](https://docs.google.com/document/d/1uZRjeZFwvD1mkrheVOEXYYxKCnjRMBzQ5xe7rdAYR1U/edit)
* Deployment
```
kubectl apply -f jmx-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## Jira Exporter deployment

[Jira-Exporter](https://docs.google.com/document/d/1b_hKtaSixlgv6Qo4MbtVJVxUeJsVo4XmPOMEMKz06mk/edit)
* Deployment
```
kubectl apply -f jira-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## Jenkins Exporter deployment

[Jenkins-Exporter](https://docs.google.com/document/d/15teYA6HNBuBCo_bL8H1IhjQkaHuHxTNhBeqYneGGM54/edit)
* Deployment
```
kubectl apply -f jenkins-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## Elasticsearch Exporter deployment

[Elasticsearch-Exporter](https://docs.google.com/document/d/1IW56ROFqqX5rHWanPIDZAH5HNXyifumloA2s3hrSAPQ/edit)
* Deployment
```
kubectl apply -f elasticsearch-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## Kibana Exporter deployment

[Kibana-Exporter](https://docs.google.com/document/d/1lizuYRnY3KHO0SWnhynKz5YEs6E85rSQUdI7YF_pc14/edit)
* Deployment
```
kubectl apply -f kibana-exporter.yaml
```
* List all resources
```
kubectl get all --namespace=monitoring
```
## Kafka Exporter deployment

[Kafka-Exporter](https://docs.google.com/document/d/1rSJf4omczrxwVoS0102Siw_sDpTBL4UaHTp-QGYsTaI/edit)


