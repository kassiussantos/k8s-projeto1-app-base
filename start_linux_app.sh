#!/bin/bash

echo "Creating Images..."

docker build -t kassera/project-backend:1.0 backend/.
docker build -t kassera/project-database:1.0 database/.

echo "Performing Push..."

docker push kassera/project-backend:1.0
docker push kassera/project-database:1.0

echo "Creating Persistent Volume..."

kubectl apply -f ./pvc-data.yml

echo "Creating Services on the Kubernetes Cluster..."

kubectl apply -f ./services.yml

echo "Creating Deployments..."

kubectl apply -f ./deployment.yml

clear

echo "Listing Pods..."

sleep 10

kubectl get pods -o wide

echo "Listing Services..."

sleep 10

kubectl get services