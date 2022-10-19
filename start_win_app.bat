@echo off

echo Criando Imagens...

docker build -t kassera/project-backend:1.0 backend/.
docker build -t kassera/project-database:1.0 database/.

echo Realizando Push...

docker push kassera/project-backend:1.0
docker push kassera/project-database:1.0

echo Criando Volume Persistente...

kubectl apply -f ./pvc-data.yml

echo Criando Servicos no Cluster Kubernetes...

kubectl apply -f ./services.yml

echo Criando Deployments...

kubectl apply -f ./deployment.yml

cls

echo Listando Services...

timeout 10 > NUL

kubectl get services

echo Listando Pods...

timeout 8 > NUL

kubectl get pods -o wide