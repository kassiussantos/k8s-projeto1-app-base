echo "Criando Imagens..."

docker build -t kassera/project-backend:1.0 backend/.
docker build -t kassera/project-database:1.0 database/.

echo "Realizando Push..."

docker push kassera/project-backend:1.2
docker push kassera/project-database:1.2

echo "Criando Volume Persistente..."

kubectl apply -f ./pvc-data.yml

echo "Criando Servicos no Cluster Kubernetes..."

kubectl apply -f ./services.yml

echo "Criando Deployments..."

kubectl apply -f ./deployment.yml

cls

echo "Listando Services"

Start-Sleep -s 8

kubectl get services

echo "Listando Pods"

Start-Sleep -s 8

kubectl get pods -o wide