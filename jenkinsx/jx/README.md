
## Cluster prerequisites

- Ensure that the latest version of JX is installed.

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
[Captains-Bay]🚩 >  cjx boot
Attempting to resolve version for boot config https://github.com/jenkins-x/jenkins-x-boot-config from https://github.com/jenkins-x/jenkins-x-versions.git
Booting Jenkins X

STEP: validate-git command: /bin/sh -c jx step git validate in dir: /Users/ajeetraina/jenkins-x-boot-config/env

Git configured for user: jenkins-x-bot and email jenkins-x@googlegroups.com

STEP: verify-preinstall command: /bin/sh -c jx step verify preinstall --provider-values-dir="kubeProviders" in dir: /Users/ajeetraina/jenkins-x-boot-config

writing the following to the OWNERS file for the development environment repository:
approvers:
- collabnix
reviewers:
- collabnix
WARNING: TLS is not enabled so your webhooks will be called using HTTP. This means your webhook secret will be sent to your cluster in the clear. See https://jenkins-x.io/docs/getting-started/setup/boot/#ingress for more information
? Do you wish to continue? Yes

Verifying the kubernetes cluster before we try to boot Jenkins X in namespace: jx
Trying to lazily create any missing resources to get the current cluster ready to boot Jenkins X
Verifying Ingress...

Using namespace 'jx' from context named 'iam-root-account@tpcluster1.us-east-2.eksctl.io' on server 'https://9DF6B0EA1430912CDDE5EDE8D8047B57.yl4.us-east-2.eks.amazonaws.com'.

Verifying the CLI packages using version stream URL: https://github.com/jenkins-x/jenkins-x-versions.git and git ref: v1.0.500
using version 2.1.71 of jx
CLI packages kubectl, git, helm seem to be setup correctly
NAME                          VERSION
Kubernetes cluster            v1.16.8-eks-e16311
kubectl (installed in JX_BIN) v1.13.2
git                           2.17.2 (Apple Git-113)

Verifying Storage...
WARNING: Your requirements have not enabled cloud storage for logs - we recommend enabling this for kubernetes provider eks
WARNING: Your requirements have not enabled cloud storage for reports - we recommend enabling this for kubernetes provider eks
WARNING: Your requirements have not enabled cloud storage for repository - we recommend enabling this for kubernetes provider eks
WARNING: Your requirements have not enabled cloud storage for backup - we recommend enabling this for kubernetes provider eks
Storage configuration looks good

Helm installed and configured
Ensuring Helm chart repository https://storage.googleapis.com/chartmuseum.jenkins-x.io is configured
verified there is a ConfigMap config in namespace jx
verified there is a ConfigMap plugins in namespace jx
Attempting to lazily create the IAM Role for Service Accounts permissions
Enabling IRSA for cluster tpcluster1 associating the IAM Open ID Connect provider
[ℹ]  eksctl version 0.11.1
[ℹ]  using region us-east-2
[ℹ]  IAM Open ID Connect provider is already associated with cluster "tpcluster1" in "us-east-2"
Creating CloudFormation stack JenkinsXPolicies-e6fbc9c1-ef27-428b-af79-47e4e496a6e7
Waiting until CloudFormation stack JenkinsXPolicies-e6fbc9c1-ef27-428b-af79-47e4e496a6e7 is created
Describing stack JenkinsXPolicies-e6fbc9c1-ef27-428b-af79-47e4e496a6e7 to extract outputs
Deleting IRSA ServiceAccounts
[ℹ]  eksctl version 0.11.1
[ℹ]  using region us-east-2
[ℹ]  comparing 6 iamserviceaccounts defined in the given config ("/var/folders/mq/z4bncmrs28sbtktxpck2whcm0000gn/T/irsa-template-673460584") against remote state
[ℹ]  combined include rules: *
[ℹ]  6 iamserviceaccounts (cert-manager/cm-cainjector, cert-manager/cm-cert-manager, jx/exdns-external-dns, jx/jenkins-x-controllerbuild, jx/jxui, jx/tekton-bot) were included (based on the include/exclude rules)
[ℹ]  6 parallel tasks: { 2 sequential sub-tasks: { delete IAM role for serviceaccount "jx/exdns-external-dns", delete serviceaccount "jx/exdns-external-dns" }, 2 sequential sub-tasks: { delete IAM role for serviceaccount "cert-manager/cm-cert-manager", delete serviceaccount "cert-manager/cm-cert-manager" }, 2 sequential sub-tasks: { delete IAM role for serviceaccount "jx/jxui", delete serviceaccount "jx/jxui" }, 2 sequential sub-tasks: { delete IAM role for serviceaccount "cert-manager/cm-cainjector", delete serviceaccount "cert-manager/cm-cainjector" }, 2 sequential sub-tasks: { delete IAM role for serviceaccount "jx/jenkins-x-controllerbuild", delete serviceaccount "jx/jenkins-x-controllerbuild" }, 2 sequential sub-tasks: { delete IAM role for serviceaccount "jx/tekton-bot", delete serviceaccount "jx/tekton-bot" } }
[ℹ]  will delete stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-jxui"
[ℹ]  waiting for stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-jxui" to get deleted
[ℹ]  will delete stack "eksctl-tpcluster1-addon-iamserviceaccount-cert-manager-cm-cainjector"
[ℹ]  waiting for stack "eksctl-tpcluster1-addon-iamserviceaccount-cert-manager-cm-cainjector" to get deleted
[ℹ]  will delete stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-jenkins-x-controllerbuild"
[ℹ]  waiting for stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-jenkins-x-controllerbuild" to get deleted
[ℹ]  will delete stack "eksctl-tpcluster1-addon-iamserviceaccount-cert-manager-cm-cert-manager"
[ℹ]  waiting for stack "eksctl-tpcluster1-addon-iamserviceaccount-cert-manager-cm-cert-manager" to get deleted
[ℹ]  will delete stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-exdns-external-dns"
[ℹ]  waiting for stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-exdns-external-dns" to get deleted
[ℹ]  will delete stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-tekton-bot"
[ℹ]  waiting for stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-tekton-bot" to get deleted
[ℹ]  serviceaccount "cert-manager/cm-cert-manager" was already deleted
[ℹ]  deleted serviceaccount "jx/tekton-bot"
[ℹ]  deleted serviceaccount "jx/jxui"
[ℹ]  deleted serviceaccount "cert-manager/cm-cainjector"
[ℹ]  deleted serviceaccount "jx/exdns-external-dns"
[ℹ]  deleted serviceaccount "jx/jenkins-x-controllerbuild"
Creating IRSA ServiceAccounts
[ℹ]  eksctl version 0.11.1
[ℹ]  using region us-east-2
[ℹ]  combined include rules: *
[ℹ]  6 iamserviceaccounts (cert-manager/cm-cainjector, cert-manager/cm-cert-manager, jx/exdns-external-dns, jx/jenkins-x-controllerbuild, jx/jxui, jx/tekton-bot) were included (based on the include/exclude rules)
[!]  metadata of serviceaccounts that exist in Kubernetes will be updated, as --override-existing-serviceaccounts was set
[ℹ]  6 parallel tasks: { 2 sequential sub-tasks: { create IAM role for serviceaccount "jx/tekton-bot", create serviceaccount "jx/tekton-bot" }, 2 sequential sub-tasks: { create IAM role for serviceaccount "jx/exdns-external-dns", create serviceaccount "jx/exdns-external-dns" }, 2 sequential sub-tasks: { create IAM role for serviceaccount "cert-manager/cm-cert-manager", create serviceaccount "cert-manager/cm-cert-manager" }, 2 sequential sub-tasks: { create IAM role for serviceaccount "cert-manager/cm-cainjector", create serviceaccount "cert-manager/cm-cainjector" }, 2 sequential sub-tasks: { create IAM role for serviceaccount "jx/jenkins-x-controllerbuild", create serviceaccount "jx/jenkins-x-controllerbuild" }, 2 sequential sub-tasks: { create IAM role for serviceaccount "jx/jxui", create serviceaccount "jx/jxui" } }
[ℹ]  building iamserviceaccount stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-exdns-external-dns"
[ℹ]  building iamserviceaccount stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-jxui"
[ℹ]  building iamserviceaccount stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-jenkins-x-controllerbuild"
[ℹ]  building iamserviceaccount stack "eksctl-tpcluster1-addon-iamserviceaccount-cert-manager-cm-cainjector"
[ℹ]  building iamserviceaccount stack "eksctl-tpcluster1-addon-iamserviceaccount-cert-manager-cm-cert-manager"
[ℹ]  building iamserviceaccount stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-tekton-bot"
[ℹ]  deploying stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-jxui"
[ℹ]  deploying stack "eksctl-tpcluster1-addon-iamserviceaccount-cert-manager-cm-cert-manager"
[ℹ]  deploying stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-exdns-external-dns"
[ℹ]  deploying stack "eksctl-tpcluster1-addon-iamserviceaccount-cert-manager-cm-cainjector"
[ℹ]  deploying stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-jenkins-x-controllerbuild"
[ℹ]  deploying stack "eksctl-tpcluster1-addon-iamserviceaccount-jx-tekton-bot"
[ℹ]  created serviceaccount "jx/jenkins-x-controllerbuild"
[ℹ]  created serviceaccount "cert-manager/cm-cainjector"
[ℹ]  created serviceaccount "jx/tekton-bot"
[ℹ]  created serviceaccount "cert-manager/cm-cert-manager"
[ℹ]  created serviceaccount "jx/jxui"
[ℹ]  created serviceaccount "jx/exdns-external-dns"
Cluster looks good, you are ready to 'jx boot' now!


STEP: install-jx-crds command: /bin/sh -c jx upgrade crd in dir: /Users/ajeetraina/jenkins-x-boot-config

Jenkins X CRDs upgraded with success

STEP: install-velero command: /bin/sh -c jx step helm apply --boot --remote --no-vault --name velero in dir: /Users/ajeetraina/jenkins-x-boot-config/systems/velero

Modified file /Users/ajeetraina/jenkins-x-boot-config/systems/velero/Chart.yaml to set the chart to version 1
Namespace velero created

STEP: install-velero-backups command: /bin/sh -c jx step helm apply --boot --remote --no-vault --name velero-backups in dir: /Users/ajeetraina/jenkins-x-boot-config/systems/velero-backups

Modified file /Users/ajeetraina/jenkins-x-boot-config/systems/velero-backups/Chart.yaml to set the chart to version 1
Ignoring templates/default-backup.yaml
No requirements file: /var/folders/mq/z4bncmrs28sbtktxpck2whcm0000gn/T/jx-helm-apply-413282303/velero-backups/requirements.yaml so not checking for missing versions

STEP: install-nginx-controller command: /bin/sh -c jx step helm apply --boot --remote --no-vault --name jxing in dir: /Users/ajeetraina/jenkins-x-boot-config/systems/jxing

Modified file /Users/ajeetraina/jenkins-x-boot-config/systems/jxing/Chart.yaml to set the chart to version 1
```

In case you encounter issue, use this https://github.com/collabnix/testproject/blob/master/jenkinsx/jx/jenkins-x.yml

```
STEP: create-install-values command: /bin/sh -c jx step create install values -b in dir: /Users/ajeetraina/jenkins-x-boot-config/env

Waiting to find the external host name of the ingress controller Service in namespace kube-system with name jxing-nginx-ingress-controller
The Ingress address a20d191ba42ee49c49c52108ddc1807a-47e434127918b62f.elb.us-east-2.amazonaws.com is not an IP address. We recommend we try resolve it to a public IP address and use that for the domain to access services externally.
Waiting for a20d191ba42ee49c49c52108ddc1807a-47e434127918b62f.elb.us-east-2.amazonaws.com to be resolvable to an IP address...
WARNING: retrying after error: Address cannot be resolved yet a20d191ba42ee49c49c52108ddc1807a-47e434127918b62f.elb.us-east-2.amazonaws.com
.
.
.
.
.

a20d191ba42ee49c49c52108ddc1807a-47e434127918b62f.elb.us-east-2.amazonaws.com resolved to IP 3.12.7.211
No domain flag provided so using default 3.12.7.211.nip.io to generate Ingress rules
defaulting the domain to 3.12.7.211.nip.io and modified /Users/ajeetraina/jenkins-x-boot-config/jx-requirements.yml

STEP: install-external-dns command: /bin/sh -c jx step helm apply --boot --remote --no-vault --name exdns in dir: /Users/ajeetraina/jenkins-x-boot-config/systems/external-dns

Modified file /Users/ajeetraina/jenkins-x-boot-config/systems/external-dns/Chart.yaml to set the chart to version 1
Adding missing Helm repo: charts.bitnami.com https://charts.bitnami.com/bitnami
Successfully added Helm repository charts.bitnami.com.
```

```

defaulting to secret storage scheme local found from requirements file at /Users/ajeetraina/jenkins-x-boot-config/jx-requirements.yml
defaulting to secret base path to the cluster name tpcluster1 found from requirements file at /Users/ajeetraina/jenkins-x-boot-config/jx-requirements.yml
generated schema file /Users/ajeetraina/jenkins-x-boot-config/env/parameters.schema.json from template /Users/ajeetraina/jenkins-x-boot-config/env/parameters.tmpl.schema.json
? Jenkins X Admin Username admin
? Jenkins X Admin Password [? for help] *************
? Pipeline bot Git username collabnix
? Pipeline bot Git email address contact@collabnix.com
? Pipeline bot Git token [? for help] *****************************************
X Sorry, your reply was invalid: value is too long. Max length is 40
? Pipeline bot Git token [? for help] ****************************************
Generated token 32f859792ba4a267f454af03539f5d8a06c013911, to use it press enter.
This is the only time you will be shown it so remember to save it
? HMAC token, used to validate incoming webhooks. Press enter to use the generated token [? for help]
? Do you want to configure non default Docker Registry? Yes
? Docker Registry Url https://index.docker.io/v1/
? Docker Registry username ajeetraina
? Docker Registry password [? for help] **********
? Docker Registry email ajeetraina@gmail.com

STEP: create-jx-auth-config command: /bin/sh -c jx step create templated --parameters-file=../../env/parameters.yaml --requirements-dir=../../ --template-file=jx-auth-configmap.tmpl.yaml --config-file=templates/jx-auth-configmap.yaml in dir: /Users/ajeetraina/jenkins-x-boot-config/systems/jx-auth

Saved the rendered configuration into templates/jx-auth-configmap.yaml file

STEP: install-jx-auth-config command: /bin/sh -c jx step helm apply --boot --remote --no-vault --name jx-auth in dir: /Users/ajeetraina/jenkins-x-boot-config/systems/jx-auth

Modified file /Users/ajeetraina/jenkins-x-boot-config/systems/jx-auth/Chart.yaml to set the chart to version 1
Ignoring templates/jx-auth-configmap.yaml
No requirements file: /var/folders/mq/z4bncmrs28sbtktxpck2whcm0000gn/T/jx-helm-apply-255073581/jx-auth/requirements.yaml so not checking for missing versions

STEP: install-jenkins-x command: /bin/sh -c jx step helm apply --boot --remote --name jenkins-x --provider-values-dir ../kubeProviders in dir: /Users/ajeetraina/jenkins-x-boot-config/env

Modified file /Users/ajeetraina/jenkins-x-boot-config/env/Chart.yaml to set the chart to version 1
Ignoring templates/.gitignore
Applying the kubernetes overrides at ../kubeProviders/eks/values.tmpl.yaml
Adding missing Helm repo: chartmuseum.jenkins-x.io http://chartmuseum.jenkins-x.io
Successfully added Helm repository chartmuseum.jenkins-x.io.
```

While asking for Docker Registry , select yes to configure your Docker Registry rather thn default GKE
