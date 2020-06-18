
## Cluster prerequisites

In order to create a cluster in CloudBees Jenkins X Distribution, you must have the following configured:

An Amazon Web Services (AWS) account for creating kubernetes clusters

Binary dependencies required by CloudBees Jenkins X Distribution, which can be installed to your local installation using the jx install command:

```
jx install dependencies --all
```

```
Installing az
please install missing azure cli https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest
Installing kubectl
Installing gcloud
please install missing gcloud sdk - see https://cloud.google.com/sdk/downloads#interactive
Installing helm
Installing tiller
Downloading https://get.helm.sh/helm-v2.12.2-darwin-amd64.tar.gz to /Users/ajeetraina/.jx/bin/tiller.tgz...
Downloaded /Users/ajeetraina/.jx/bin/tiller.tgz
Installing helm secrets plugin
WARNING: Failed to retrieve team settings: failed to setup the dev environment for namespace 'default': the server could not find the requested resource (post environments.jenkins.io) - falling back to default settings...
Installing helm3
Downloading https://get.helm.sh/helm-v3.2.0-darwin-amd64.tar.gz to /Users/ajeetraina/.jx/bin/helm3.tmp/helm3.tgz...
Downloaded /Users/ajeetraina/.jx/bin/helm3.tmp/helm3.tgz
Installing helm secrets plugin
Installing ksync
Downloading https://github.com/ksync/ksync/releases/download/0.4.4/ksync_darwin_amd64 to /Users/ajeetraina/.jx/bin/ksync.tmp...
Downloaded /Users/ajeetraina/.jx/bin/ksync.tmp
Installing oc
WARNING: oc is not available on your PATH
Downloading https://github.com/openshift/origin/releases/download/v3.9.0/openshift-origin-client-tools-v3.9.0-191fece-mac.zip to /Users/ajeetraina/.jx/bin/oc.zip...
Downloaded /Users/ajeetraina/.jx/bin/oc.zip
Installing aws
Installing eksctl
Installing aws-iam-authenticator
Installing kustomize
Downloading https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.5.1/kustomize_v3.5.1_darwin_amd64.tar.gz to /Users/ajeetraina/.jx/bin/kustomize.tmp/kustomize.tar.gz...
Downloaded /Users/ajeetraina/.jx/bin/kustomize.tmp/kustomize.tar.gz
```

## Create a Kubernetes cluster

The cluster creation process on Jenkins X Distribution (run via the command jx boot) requires performing a pre-configuration procedure to successfully complete the cluster installation process:

Type the following command to initialize the cluster on your Elastic Kubernetes Service (EKS) account with a specified name, for example acmecluster1:

```
[Captains-Bay]🚩 >  jx create cluster eks --skip-installation -n tpcluster1
Creating EKS cluster - this can take a while so please be patient...
You can watch progress in the CloudFormation console: https://console.aws.amazon.com/cloudformation/
[ℹ]  eksctl version 0.20.0
[ℹ]  using region us-east-2
[ℹ]  setting availability zones to [us-east-2a us-east-2b us-east-2c]
[ℹ]  subnets for us-east-2a - public:192.168.0.0/19 private:192.168.96.0/19
[ℹ]  subnets for us-east-2b - public:192.168.32.0/19 private:192.168.128.0/19
[ℹ]  subnets for us-east-2c - public:192.168.64.0/19 private:192.168.160.0/19
[ℹ]  nodegroup "ng-412581f8" will use "ami-073f227b0cd9507f9" [AmazonLinux2/1.16]
[ℹ]  using Kubernetes version 1.16
[ℹ]  creating EKS cluster "tpcluster1" in "us-east-2" region with un-managed nodes
[ℹ]  will create 2 separate CloudFormation stacks for cluster itself and the initial nodegroup
[ℹ]  if you encounter any issues, check CloudFormation console or try 'eksctl utils describe-stacks --region=us-east-2 --cluster=tpcluster1'
[ℹ]  CloudWatch logging will not be enabled for cluster "tpcluster1" in "us-east-2"
[ℹ]  you can enable it with 'eksctl utils update-cluster-logging --region=us-east-2 --cluster=tpcluster1'
[ℹ]  Kubernetes API endpoint access will use default of {publicAccess=true, privateAccess=false} for cluster "tpcluster1" in "us-east-2"
[ℹ]  2 sequential tasks: { create cluster control plane "tpcluster1", 2 parallel sub-tasks: { tag cluster, create nodegroup "ng-412581f8" } }
[ℹ]  building cluster stack "eksctl-tpcluster1-cluster"
[ℹ]  deploying stack "eksctl-tpcluster1-cluster"
[ℹ]  building nodegroup stack "eksctl-tpcluster1-nodegroup-ng-412581f8"
[ℹ]  --nodes-min=2 was set automatically for nodegroup ng-412581f8
[ℹ]  --nodes-max=2 was set automatically for nodegroup ng-412581f8
[ℹ]  deploying stack "eksctl-tpcluster1-nodegroup-ng-412581f8"
[✔]  tagged EKS cluster (CreatedBy=JenkinsX)
[ℹ]  waiting for the control plane availability...
[✔]  saved kubeconfig as "/Users/ajeetraina/.kube/config"
[ℹ]  no tasks
[✔]  all EKS cluster resources for "tpcluster1" have been created
[ℹ]  adding identity "arn:aws:iam::125346028423:role/eksctl-tpcluster1-nodegroup-ng-41-NodeInstanceRole-N66AH8H5KP1P" to auth ConfigMap
[ℹ]  nodegroup "ng-412581f8" has 1 node(s)
[ℹ]  node "ip-192-168-0-201.us-east-2.compute.internal" is not ready
[ℹ]  waiting for at least 2 node(s) to become ready in "ng-412581f8"
[ℹ]  nodegroup "ng-412581f8" has 2 node(s)
[ℹ]  node "ip-192-168-0-201.us-east-2.compute.internal" is ready
[ℹ]  node "ip-192-168-45-129.us-east-2.compute.internal" is ready
[ℹ]  kubectl command should work with "/Users/ajeetraina/.kube/config", try 'kubectl get nodes'
[✔]  EKS cluster "tpcluster1" in "us-east-2" region is ready

Initialising cluster ...
eks cluster created. Skipping Jenkins X installation.
[Captains-Bay]🚩 >
```

You must be authenticated against AWS as a user/assumed role with enough permissions and have either the AWS_REGION environment variable or a default region in ~/.aws/config pointing to a valid AWS region.

The program runs automatically and begins creating the cluster in your specific region using eksctl.

This will deploy two CloudFormation stacks, one for the cluster itself (or control plane) and another for the nodepool, deployed as EC2 instances. These CloudFormation stacks also create all other necessary services like a VPC, subnets, and more.


```
[Captains-Bay]🚩 >  kubectl get nodes
NAME                                           STATUS   ROLES    AGE     VERSION
ip-192-168-0-201.us-east-2.compute.internal    Ready    <none>   8m44s   v1.16.8-eks-e16311
ip-192-168-45-129.us-east-2.compute.internal   Ready    <none>   8m43s   v1.16.8-eks-e16311
[Captains-Bay]🚩 >
```
  
```
AVAILABLE COMMANDS
       o create-cluster

       o create-fargate-profile

       o create-nodegroup

       o delete-cluster

       o delete-fargate-profile

       o delete-nodegroup

       o describe-cluster

       o describe-fargate-profile

       o describe-nodegroup

       o describe-update

       o get-token

       o help

       o list-clusters

       o list-fargate-profiles

       o list-nodegroups

       o list-tags-for-resource

       o list-updates

       o tag-resource

       o untag-resource

       o update-cluster-config
       
        o untag-resource

       o update-cluster-config

       o update-cluster-version

       o update-kubeconfig

       o update-nodegroup-config

       o update-nodegroup-version

       o wait
```

```
[Captains-Bay]🚩 >  aws eks list-clusters
{
    "clusters": [
        "tpcluster1"
    ]
}
```

```
[Captains-Bay]🚩 >  jx boot
Creating boot config with defaults, as not in an existing boot directory with a git repository.
No Jenkins X pipeline file jenkins-x.yml or no jx boot requirements file jx-requirements.yml found. You are not running this command from inside a Jenkins X Boot git clone
To continue we will clone https://github.com/jenkins-x/jenkins-x-boot-config.git @ master to jenkins-x-boot-config
? Do you want to clone the Jenkins X Boot Git repository? Yes

Cloning https://github.com/jenkins-x/jenkins-x-boot-config.git @ master to jenkins-x-boot-config
Attempting to resolve version for boot config https://github.com/jenkins-x/jenkins-x-boot-config.git from https://github.com/jenkins-x/jenkins-x-versions.git
Booting Jenkins X
```

```
Captains-Bay]🚩 >  jx boot
Creating boot config with defaults, as not in an existing boot directory with a git repository.
No Jenkins X pipeline file jenkins-x.yml or no jx boot requirements file jx-requirements.yml found. You are not running this command from inside a Jenkins X Boot git clone
To continue we will clone https://github.com/jenkins-x/jenkins-x-boot-config.git @ master to jenkins-x-boot-config
? Do you want to clone the Jenkins X Boot Git repository? Yes

Cloning https://github.com/jenkins-x/jenkins-x-boot-config.git @ master to jenkins-x-boot-config
Attempting to resolve version for boot config https://github.com/jenkins-x/jenkins-x-boot-config.git from https://github.com/jenkins-x/jenkins-x-versions.git
Booting Jenkins X

STEP: validate-git command: /bin/sh -c jx step git validate in dir: /Users/ajeetraina/jenkins-x-boot-config/env

Git configured for user: jenkins-x-bot and email jenkins-x@googlegroups.com

STEP: verify-preinstall command: /bin/sh -c jx step verify preinstall --provider-values-dir="kubeProviders" in dir: /Users/ajeetraina/jenkins-x-boot-config

error: : unable to parse tpcluster1.us-east-2.eksctl.io as <project id>_<zone>_<cluster name>
error: failed to interpret pipeline file /Users/ajeetraina/jenkins-x-boot-config/jenkins-x.yml: failed to run '/bin/sh -c jx step verify preinstall --provider-values-dir="kubeProviders"' command in directory '/Users/ajeetraina/jenkins-x-boot-config', output: ''
[Captains-Bay]🚩 >

```

Open up jx-requirements.yml file downloaded in your mac under jenkins-x-boot-config.git directory

```
[Captains-Bay]🚩 >  cat jx-requirements.yml | head -n 10
autoUpdate:
  enabled: false
  schedule: ""
bootConfigURL: https://github.com/jenkins-x/jenkins-x-boot-config.git
cluster:
  gitKind: github
  gitName: github
  gitServer: https://github.com
  namespace: jx
  provider: eks
[Captains-Bay]🚩 >
```

```
[Captains-Bay]🚩 >  vjx boot
Attempting to resolve version for boot config https://github.com/jenkins-x/jenkins-x-boot-config from https://github.com/jenkins-x/jenkins-x-versions.git
Booting Jenkins X

STEP: validate-git command: /bin/sh -c jx step git validate in dir: /Users/ajeetraina/jenkins-x-boot-config/env

Git configured for user: jenkins-x-bot and email jenkins-x@googlegroups.com

STEP: verify-preinstall command: /bin/sh -c jx step verify preinstall --provider-values-dir="kubeProviders" in dir: /Users/ajeetraina/jenkins-x-boot-config


Currently connected cluster is tpcluster1 in region us-east-2
? Do you want to jx boot the tpcluster1 cluster? [? for help] (Y/n)
```

```
[Captains-Bay]🚩 >  vjx boot
Attempting to resolve version for boot config https://github.com/jenkins-x/jenkins-x-boot-config from https://github.com/jenkins-x/jenkins-x-versions.git
Booting Jenkins X

STEP: validate-git command: /bin/sh -c jx step git validate in dir: /Users/ajeetraina/jenkins-x-boot-config/env

Git configured for user: jenkins-x-bot and email jenkins-x@googlegroups.com

STEP: verify-preinstall command: /bin/sh -c jx step verify preinstall --provider-values-dir="kubeProviders" in dir: /Users/ajeetraina/jenkins-x-boot-config


Currently connected cluster is tpcluster1 in region us-east-2
? Do you want to jx boot the tpcluster1 cluster? Yes

? Git Owner name for environment repositories collabnix
Environment repos will be private, if you want to create public environment repos, please set environmentGitPublic to true in jx-requirements.yml
? Comma-separated git provider usernames of approvers for development environment repository collabnix
Locking version stream https://github.com/jenkins-x/jenkins-x-versions.git to release v1.0.500. Jenkins X will use this release rather than master to resolve all versions from now on.
writing the following to the OWNERS file for the development environment repository:
approvers:
- collabnix
reviewers:
- collabnix
WARNING: TLS is not enabled so your webhooks will be called using HTTP. This means your webhook secret will be sent to your cluster in the clear. See https://jenkins-x.io/docs/getting-started/setup/boot/#ingress for more information
? Do you wish to continue? [? for help] (y/N) y
```

```

Verifying the kubernetes cluster before we try to boot Jenkins X in namespace: jx
Trying to lazily create any missing resources to get the current cluster ready to boot Jenkins X
Attempting to lazily create the deploy namespace jx
Namespace jx created
Verifying Ingress...

Now using namespace 'jx' on server 'https://9DF6B0EA1430912CDDE5EDE8D8047B57.yl4.us-east-2.eks.amazonaws.com'.

Verifying the CLI packages using version stream URL: https://github.com/jenkins-x/jenkins-x-versions.git and git ref: v1.0.500
```
