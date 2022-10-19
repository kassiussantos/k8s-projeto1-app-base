echo "Delete All Services"
kubectl delete --all services

echo "Delete All Deployments"
kubectl delete --all deploy

echo "Delete All Pods"
kubectl delete --all pods

echo "Delete All PVC"
kubectl patch pvc mysql-dados -p '{"metadata":{"finalizers":null}}'

kubectl delete pvc --grace-period=0 --force mysql-dados

cls

kubectl get svc

kubectl get nodes

kubectl get pods

kubectl get pvc