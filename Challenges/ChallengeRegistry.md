# Challenge Container Registry #

## Deploying the lab using Azure Kubernetes Service (AKS) ##

1. First, you need to create an Azure Kuberetes Service cluster. You can do it from AZ CLI or from Cloud Shell (https://shell.azure.com):

``` shell
az login
az group create -n "resource-group-name" -l WestEurope
az aks create -g "resource-group-name" -n "aks-unique-cluster-name" --generate-ssh-keys

```

Please see https://docs.microsoft.com/en-us/azure/aks/kubernetes-walkthrough for more details.