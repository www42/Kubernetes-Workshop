# Challenge Kubernetes #

## Here's what you'll learn: ##
- Kubernetes basics
    - Why Kubernetes and Orchestration in General
    - Hello world: Minikube basics, talking through Minikube,
    - Cluster and basic commands, 
    - Nodes, 
    - Deployments, what it is and deploying an app
    - Pods and Nodes, explain concepts and troubleshooting

- Resources
    - Kubernetes.io One of the best resources to learn about Kubernetes is at this official Kubernetes site by Google.
    - Kubernetes overview An overview on Kubernetes, all its parts and how it works
    - Free Azure Account If you want to try out AKS, Azure Kubernetes Service, you will need a free Azure account
    - Kubernetes in the Cloud Do you feel you know everything about Kubernetes already and just want to learn how to use a managed service? Then this link is for you
    - Documentation on AKS, Azure Kubernetes Service Azure Kubernetes Service, a managed Kubernetes
    - Best practices on AKS You already know AKS and want to learn how to use it better?
- Deployment
    - How to a simple deploy example
    - How to 
    - How to 

## Kubernetes - Why Orchestration ##

Kubernetes is about orchestrating containerized apps. Docker is great for your first few containers. As soon as you need to run on multiple machines and need to scale/up down and distribute the load and so on, you need an orchestrator - you need Kubernetes

Well, it all started with containers. Containers gave us the ability to create repeatable environments so dev, staging, and prod all looked and functioned the same way. We got predictability and they were also light-weight as they drew resources from the host operating system. Such a great breakthrough for Developers and Ops but the Container API is really only good for managing a few containers at a time. Larger systems might consist of 100s or 1000+ containers and needs to be managed as well so we can do things like scheduling, load balancing, distribution and more.

At this point, we need orchestration the ability for a system to handle all these container instances. This is where Kubernetes comes in.

## Kubernetes ##

So what do we know about Kubernetes?
It's an open-source system for automating deployment, scaling, and management of containerized applications
Let'start with the name. It's Greek for Helmsman, the person who steers the ship. Which is why the logo looks like this, a steering wheel on a boat:

![ASP.Net sample Application from docs.microsoft.com](./img/Kubernetes.png "Sample Application")

It's Also called K8s so K ubernete s, 8 characters in the middle are removed. Now you can impress your friends that you know why it's referred to as K8.
Here is some more Jeopardy knowledge on its origin. Kubernetes was born out of systems called Borg and Omega. It was donated to CNCF, Cloud Native Computing Foundation in 2014. It's written in Go/Golang.
If we see past all this trivia knowledge, it was built by Google as a response to their own experience handling a ton of containers. It's also Open Source and battle-tested to handle really large systems.
Well even if you have something like 10-100 containers, it's for you.

## Getting started ##

First of all we will need a Kubernestes Cluster with two or three Nodes and... Yes, we need to know some of the Basics of Kubernetes to understand what a Node exactly is. There is an easy all in one soluiton to get started called MiniKube.
To install Minikube lets go to this 
It's just a few short steps that means we install
    - a Hypervisor
    - Kubectl (Kube control tool)
    - Minikube

### Run ###

Get that thing up and running by typing:

bashCode
```
minikube start
```
It should look something like this:

bashCode
```
$ minikube version
minikube version: v0.34.1
$ minikube start
o   minikube v0.34.1 on linux (amd64)
>   Configuring local host environment ...
>   Creating none VM (CPUs=2, Memory=2048MB, Disk=20000MB) ...
-   "minikube" IP address is 172.17.0.15
-   Configuring Docker as the container runtime ...
-   Preparing Kubernetes environment ...
@   Downloading kubeadm v1.13.3
@   Downloading kubelet v1.13.3
-   Pulling images required by Kubernetes v1.13.3 ...
-   Launching Kubernetes v1.13.3 using kubeadm ...
-   Configuring cluster permissions ...
-   Verifying component health .....
+   kubectl is now configured to use "minikube"
=   Done! Thank you for using minikube!
$
```

You can also ensure that kubectl have been correctly installed and running:

```
kubectl version
```

Should give you something like this in response:

```
$ kubectl version
Client Version: version.Info{Major:"1", Minor:"13", GitVersion:"v1.13.3", GitCommit:"721bfa751924da8d1680787490c54b9179b1fed0", GitTreeState:"clean", BuildDate:"2019-02-01T20:08:12Z", GoVersion:"go1.11.5", Compiler:"gc", Platform:"linux/amd64"}
Server Version: version.Info{Major:"1", Minor:"13", GitVersion:"v1.13.3", GitCommit:"721bfa751924da8d1680787490c54b9179b1fed0", GitTreeState:"clean", BuildDate:"2019-02-01T20:00:57Z", GoVersion:"go1.11.5", Compiler:"gc", Platform:"linux/amd64"}
$
```

