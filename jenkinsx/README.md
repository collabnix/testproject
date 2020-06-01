# Getting Started with Jenkins-X

# Pre-requisite

- Macbook


```
brew tap jenkins-x/jx
brew install jx
```

# 

Examples:
  # create a cluster on Google Cloud
  jx create cluster gke --skip-installation

  # create a cluster on AWS via EKS
  jx create cluster eks --skip-installation
Available Commands:
  create cluster aks Create a new Kubernetes cluster on AKS: Runs on Azure
  create cluster eks Create a new Kubernetes cluster on AWS using EKS
  create cluster gke Create a new Kubernetes cluster on GKE: Runs on Google Cloud
  create cluster iks Create a new kubernetes cluster on IBM Cloud Kubernetes Services

Usage:
  jx create cluster [kubernetes provider] [flags] [options]
  
  
  
  
# Installing Jenkins X on EKS

```
jx create cluster eks --skip-installation
```

It will 
Missing required dependencies, deselect to avoid auto installing
eksctl, aws-iam-authenticator, kubectl, helm
```

```
Installing eksctl
Downloading https://github.com/weaveworks/eksctl/releases/download/0.11.1/eksctl_Darwin_amd64.tar.gz to /Users/ajeetraina/.jx/bin/eksctl.tar.gz...
Downloaded /Users/ajeetraina/.jx/bin/eksctl.tar.gz
Installing aws-iam-authenticator
Downloading https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.7/2019-03-27/bin/darwin/amd64/aws-iam-authenticator to /Users/ajeetraina/.jx/bin/aws-iam-authenticator...
Downloaded /Users/ajeetraina/.jx/bin/aws-iam-authenticator
Installing kubectl
Downloading https://storage.googleapis.com/kubernetes-release/release/v1.13.2/bin/darwin/amd64/kubectl to /Users/ajeetraina/.jx/bin/kubectl...
Downloaded /Users/ajeetraina/.jx/bin/kubectl
Installing helm
Downloading https://get.helm.sh/helm-v2.12.2-darwin-amd64.tar.gz to /Users/ajeetraina/.jx/bin/helm.tgz...
Downloaded /Users/ajeetraina/.jx/bin/helm.tgz
Installing helm secrets plugin
WARNING: Failed to retrieve team settings: failed to setup the dev environment for namespace 'default': the server could not find the requested resource (post environments.jenkins.io) - falling back to default settings...
Creating EKS cluster - this can take a while so please be patient...
You can watch progress in the CloudFormation console: https://console.aws.amazon.com/cloudformation/
[ℹ]  eksctl version 0.11.1
[ℹ]  using region us-east-2
[ℹ]  setting availability zones to [us-east-2a us-east-2b us-east-2c]
[ℹ]  subnets for us-east-2a - public:192.168.0.0/19 private:192.168.96.0/19
[ℹ]  subnets for us-east-2b - public:192.168.32.0/19 private:192.168.128.0/19
[ℹ]  subnets for us-east-2c - public:192.168.64.0/19 private:192.168.160.0/19
[ℹ]  nodegroup "ng-623234c1" will use "ami-082bb518441d3954c" [AmazonLinux2/1.14]
[ℹ]  using Kubernetes version 1.14
[ℹ]  creating EKS cluster "beautiful-creature-1591004252" in "us-east-2" region with un-managed nodes
[ℹ]  will create 2 separate CloudFormation stacks for cluster itself and the initial nodegroup
[ℹ]  if you encounter any issues, check CloudFormation console or try 'eksctl utils describe-stacks --region=us-east-2 --cluster=beautiful-creature-1591004252'
[ℹ]  CloudWatch logging will not be enabled for cluster "beautiful-creature-1591004252" in "us-east-2"
[ℹ]  you can enable it with 'eksctl utils update-cluster-logging --region=us-east-2 --cluster=beautiful-creature-1591004252'
[ℹ]  Kubernetes API endpoint access will use default of {publicAccess=true, privateAccess=false} for cluster "beautiful-creature-1591004252" in "us-east-2"
[ℹ]  2 sequential tasks: { create cluster control plane "beautiful-creature-1591004252", create nodegroup "ng-623234c1" }
[ℹ]  building cluster stack "eksctl-beautiful-creature-1591004252-cluster"
[ℹ]  deploying stack "eksctl-beautiful-creature-1591004252-cluster"
```
