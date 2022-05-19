#!/bin/sh

kubectl apply -f monitoring-namespace.yaml
kubectl apply -f kube-state-metrics.yaml

node_exporter=true
if $node_exporter; then
  echo "node-exporter is Enabled."
  kubectl apply -f node-exporter.yaml
fi

mysqld_exporter=true
if $mysqld_exporter; then
  echo "mysqld-exporter is Enabled."
  kubectl apply -f mysqld-exporter.yaml
fi

jmx_exporter=false
if $jmx_exporter; then
  echo "jmx-exporter is Enabled."
  kubectl apply -f jmx-exporter.yaml.yaml
fi

jira_exporter=false
if $jira_exporter; then
  echo "jira-exporter is Enabled."
  kubectl apply -f jira-exporter.yaml
fi

jenkins_exporter=false
if $jenkins_exporter; then
  echo "jenkins-exporter is Enabled."
  kubectl apply -f jenkins-exporter.yaml
fi

apache_exporter=false
if $apache_exporter; then
  echo "apache-exporter is Enabled."
  kubectl apply -f apache-exporter.yaml
fi

elasticsearch_exporter=false
if $elasticsearch_exporter; then
  echo "elasticsearch-exporter is Enabled."
  kubectl apply -f elasticsearch-exporter.yaml
fi

kibana_exporter=false
if $kibana_exporter; then
  echo "kibana-exporter is Enabled."
  kubectl apply -f kibana-exporter.yaml
fi

kubectl apply -f prometheus.yaml
kubectl apply -f alertmanager.yml
kubectl apply -f grafana.yaml

kubectl get all -n monitoring
