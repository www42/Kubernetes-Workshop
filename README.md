# Kubernetes Workshop #

## K8S Architecture ##

Kubernetes is a platform for deploying, scaling and managing container based applications in a secure, resilient manner.  It enables you to abstract away the underlying infrastructure to dynamically scale and deploy your containerized applications. Through specifying your "desired state" (within manifests), the K8S control plane works behind the scenes to ensure the current state of your application meets the desired state.  It does so even in the event of your application crashing or if there is a hardware failure.

![K8S Architecture from Kubernetes.io](./images/K8S-Architecture.png "K8S Architecture")

Diagram by [Lucas Käldström](https://docs.google.com/presentation/d/1Gp-2blk5WExI_QR59EUZdwfO2BWLJqa626mK2ej-huo/edit#slide=id.g1e639c415b_0_56)

## Challenges ##

[Challenge 1](ChallengeDocker.md) - Build a Docker image locally

[Challenge 2](ChallengeRegistry.md) - Create your own private Container Registry in Azure

[Challenge 3](ChallengeKubernetes.md) - Create Kubernetes cluster in Azure
