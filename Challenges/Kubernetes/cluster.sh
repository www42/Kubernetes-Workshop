# Create resource group
rg="Kubernetes-RG"
location="westeurope"
az group create --name $rg --location $location

# Create Kubernetes Cluster
name="akscluster1"
size="Standard_DS1_v2"
count="1"
az aks create --name $name --resource-group $rg --node-vm-size $size --node-count $count --generate-ssh-keys


# Connect to cluster
az aks get-credentials --resource-group $rg --name $name

kubectl config get-contexts
kubectl config current-context

# How many nodes?
kubectl get nodes
az aks show --name $cluster --resource-group $rg --query agentPoolProfiles

# Scale nodes
# https://docs.microsoft.com/de-at/azure/aks/scale-cluster
az aks scale --resource-group $rg --name $cluster --node-count 2


# Deploy the Azure Vote Application
kubectl apply -f azure-vote.yaml

kubectl get nodes
kubectl get deployment
kubectl get service
kubectl get pods

# Test App 


# Kubernetes Dashboard
# https://docs.microsoft.com/de-at/azure/aks/kubernetes-dashboard
az aks browse --name $cluster --resource-group $rg

# Dashboard is shown but limited access
# Create (Kubernetes-)RBAC
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard
az aks browse --name $cluster --resource-group $rg
