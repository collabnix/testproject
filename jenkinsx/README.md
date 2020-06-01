# Getting Started with Jenkins-X for EKS 

# Pre-requisite

- Macbook


```
brew tap jenkins-x/jx
brew install jx
```

```
NAME               VERSION
jx                 2.1.55
Kubernetes cluster v1.14.9-eks-f459c0
kubectl            v1.13.2
git                2.17.2 (Apple Git-113)
Operating System   Mac OS X 10.13.6 build 17G12034
```

# Syntax

```
Examples:
  # create a cluster on Google Cloud
  jx create cluster gke --skip-installation

  # create a cluster on AWS via EKS
  jx create cluster eks --skip-installa
  
  ```
  [Captains-Bay]🚩 >  kubectl get nodes
NAME                                           STATUS   ROLES    AGE   VERSION
ip-192-168-39-180.us-east-2.compute.internal   Ready    <none>   77m   v1.14.7-eks-1861c5
ip-192-168-78-78.us-east-2.compute.internal    Ready    <none>   77m   v1.14.7-eks-1861c5
[Captains-Bay]🚩 >
```
  
  
