  jx create cluster eks --skip-installation
Creating EKS cluster - this can take a while so please be patient...
You can watch progress in the CloudFormation console: https://console.aws.amazon.com/cloudformation/
[ℹ]  eksctl version 0.20.0
[ℹ]  using region us-east-2
[ℹ]  setting availability zones to [us-east-2a us-east-2c us-east-2b]
[ℹ]  subnets for us-east-2a - public:192.168.0.0/19 private:192.168.96.0/19
[ℹ]  subnets for us-east-2c - public:192.168.32.0/19 private:192.168.128.0/19
[ℹ]  subnets for us-east-2b - public:192.168.64.0/19 private:192.168.160.0/19
[ℹ]  nodegroup "ng-726b072a" will use "ami-073f227b0cd9507f9" [AmazonLinux2/1.16]
[ℹ]  using Kubernetes version 1.16
[ℹ]  creating EKS cluster "amazing-sheepdog-1592492324" in "us-east-2" region with un-managed nodes
[ℹ]  will create 2 separate CloudFormation stacks for cluster itself and the initial nodegroup
[ℹ]  if you encounter any issues, check CloudFormation console or try 'eksctl utils describe-stacks --region=us-east-2 --cluster=amazing-sheepdog-1592492324'
[ℹ]  CloudWatch logging will not be enabled for cluster "amazing-sheepdog-1592492324" in "us-east-2"
[ℹ]  you can enable it with 'eksctl utils update-cluster-logging --region=us-east-2 --cluster=amazing-sheepdog-1592492324'
[ℹ]  Kubernetes API endpoint access will use default of {publicAccess=true, privateAccess=false} for cluster "amazing-sheepdog-1592492324" in "us-east-2"
[ℹ]  2 sequential tasks: { create cluster control plane "amazing-sheepdog-1592492324", 2 parallel sub-tasks: { tag cluster, create nodegroup "ng-726b072a" } }
[ℹ]  building cluster stack "eksctl-amazing-sheepdog-1592492324-cluster"
[ℹ]  deploying stack "eksctl-amazing-sheepdog-1592492324-cluster"

[ℹ]  building nodegroup stack "eksctl-amazing-sheepdog-1592492324-nodegroup-ng-726b072a"
[ℹ]  --nodes-min=2 was set automatically for nodegroup ng-726b072a
[ℹ]  --nodes-max=2 was set automatically for nodegroup ng-726b072a
[ℹ]  deploying stack "eksctl-amazing-sheepdog-1592492324-nodegroup-ng-726b072a"
[✔]  tagged EKS cluster (CreatedBy=JenkinsX)
[ℹ]  waiting for the control plane availability...
[✔]  saved kubeconfig as "/Users/ajeetraina/.kube/config"
[ℹ]  no tasks
[✔]  all EKS cluster resources for "amazing-sheepdog-1592492324" have been created
[ℹ]  adding identity "arn:aws:iam::125346028423:role/eksctl-amazing-sheepdog-159249232-NodeInstanceRole-10WDJFY5O87WR" to auth ConfigMap
[ℹ]  nodegroup "ng-726b072a" has 0 node(s)
[ℹ]  waiting for at least 2 node(s) to become ready in "ng-726b072a"
[ℹ]  nodegroup "ng-726b072a" has 2 node(s)
[ℹ]  node "ip-192-168-0-221.us-east-2.compute.internal" is ready
[ℹ]  node "ip-192-168-90-55.us-east-2.compute.internal" is ready
[ℹ]  kubectl command should work with "/Users/ajeetraina/.kube/config", try 'kubectl get nodes'
[✔]  EKS cluster "amazing-sheepdog-1592492324" in "us-east-2" region is ready

Initialising cluster ...
eks cluster created. Skipping Jenkins X installation.


