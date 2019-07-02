

This challenge is a supplement to [AZ-301T02 Lab Mod 03](https://github.com/MicrosoftLearning/AZ-301-MicrosoftAzureArchitectDesign/blob/master/Instructions/AZ-301T02_Lab_Mod03_Deploying%20Configuration%20Management%20solutions%20to%20Azure.md) (Deploying Configuration Management Solutions to Azure). It's complete fulfillment is a prerequisite to this challenge.

## What you will learn

In this challenge you will
* Install Docker daemon on Linux
* Search for Docker images on Docker Hub
* Create a Dockerfile
* Build your own Docker image

## Install Docker

Open CloudShell (Bash) and look for your Linux VM. Should be up and running.
<details>

```bash
az vm list --show-details -o table

IP=$(az vm list --show-details --resource-group AADESIGNLAB1202-RG --query [].publicIps  -o tsv)
echo $IP
```
</details>

Log in and install Docker and some more tools. Enable and start Docker service.
<details>

Student's password is `Pa55w.rd1234`
```bash
ssh Student@$IP

sudo yum -y install docker git epel-release jq

sudo getent group dockerroot
sudo usermod -aG dockerroot Student

sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
```
</details>
