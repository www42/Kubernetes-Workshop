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

