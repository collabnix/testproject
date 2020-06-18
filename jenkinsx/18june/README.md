```
[Captains-Bay]🚩 >  jx create cluster eks --skip-installation
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
[Captains-Bay]🚩 >
[Captains-Bay]🚩 >  jx install --domain=collabnix.cloud --provider=eks --no-tiller
Command "install" is deprecated, it will be removed on Jun 1 2020. We now highly recommend you use jx boot instead. Please check https://jenkins-x.io/docs/getting-started/setup/boot/ for more details.
? Configured Jenkins installation type: Serverless Jenkins X Pipelines with Tekton
Namespace jx created
Context "collabjenkins@amazing-sheepdog-1592492324.us-east-2.eksctl.io" modified.
Git configured for user: jenkins-x-bot and email jenkins-x@googlegroups.com
Helm installed and configured
? No existing ingress controller found in the kube-system namespace, installing one: Yes
Using helm values file: /var/folders/mq/z4bncmrs28sbtktxpck2whcm0000gn/T/ing-values-963602658

Waiting for external loadbalancer to be created and update the nginx-ingress-controller service in kube-system namespace
External loadbalancer created
Waiting to find the external host name of the ingress controller Service in namespace kube-system with name jxing-nginx-ingress-controller
About to insert/update DNS CNAME record into HostedZone /hostedzone/Z0324885Z9NUYJ1LMGXU with wildcard *.collabnix.cloud pointing to a6cca590bff7c4ff7838d59116d5818e-3d05e6237be8c2de.elb.us-east-2.amazonaws.com
Updated HostZone ID /hostedzone/Z0324885Z9NUYJ1LMGXU successfully
nginx ingress controller installed and configured
Set up a Git username and API token to be able to perform CI/CD
Creating a local Git user for github.com server
? github.com username: collabnix
To be able to create a repository on github.com we need an API Token
Please click this URL and generate a token
https://github.com/settings/tokens/new?scopes=repo,read:user,read:org,user:email,write:repo_hook,delete_repo

Then COPY the token and enter it below:

? API Token: *****************************************
Select the CI/CD pipelines Git server and user
? Do you wish to use github.com as the pipelines Git server: Yes
Creating a pipelines Git user for github.com server
To be able to create a repository on github.com we need an API Token
Please click this URL and generate a token
https://github.com/settings/tokens/new?scopes=repo,read:user,read:org,user:email,write:repo_hook,delete_repo

Then COPY the token and enter it below:

? API Token: ****************************************
Setting the pipelines Git server https://github.com and user name collabnix.
? A local Jenkins X cloud environments repository already exists, recreating with latest: Yes
Enumerating objects: 1440, done.
Total 1440 (delta 0), reused 0 (delta 0), pack-reused 1440
? Defaulting workload build pack: Kubernetes Workloads: Automated CI+CD with GitOps Promotion
Setting the team build pack to kubernetes-workloads repo: https://github.com/jenkins-x-buildpacks/jenkins-x-kubernetes.git ref: master
Installing jx into namespace jx
Installing jenkins-x-platform version: 2.0.2287
```
