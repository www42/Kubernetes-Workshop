# Challenge Kubernetes 

Open a Bash shell. Make sure your Azure CLI is up to date. Log in to your Azure account:
<details>

```bash
az --version | grep ^azure-cli

az login
az account list --all -o table
```
</details>


Create a resource group:
<details>

```bash
rgName='kubernetes-RG'
location='westeurope'
az group create --name $rgName --location $location
```
</details>


Create minimal Kubernetes cluster. Choose an adequate VM size. This could take a while.
<details>

```bash
clusterName=cluster1
az aks create --name $clusterName --resource-group $rgName
```
</details>

Be sure your cluster is up and running.

A second resource group was created. That's by design, [see here](https://docs.microsoft.com/en-us/azure/aks/faq?view=azure-cli-latest#why-are-two-resource-groups-created-with-aks)).

By default 3 VMs (=nodes) are created.

<details>

```bash
az group list -o table

infrastructureRgName='MC_'$rgName'_'$clusterName'_'$location
az resource list --resource-group $infrastructureRgName -o table

az vm list --resource-group $infrastructureRgName --show-details -o table

```
</details>


Make sure kubectl is installed
<details>

```bash
kubectl version --client
```
</details>


Connect to your cluster. Grab basic informations
<details>

```bash
az aks get-credentials --name $clusterName --resource-group $rgName
cat ~/.kube/config

kubectl config get-contexts
kubectl cluster-info
kubectl get nodes
kubectl get pods
kubectl get deployments
kubectl get services
```
</details>


Create simple deployment
<details>

```bash
kubectl delete deploy/nginx
kubectl run nginx --image=nginx --replicas=1 --port=80
kubectl expose deployment nginx --port=80 --type=LoadBalancer
kubectl get services
kubectl scale --replicas=2 deployment/nginx
kubectl get pods
kubectl delete deployment nginx
```
</details>