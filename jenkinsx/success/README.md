

```
 jx version --short
Version 2.1.78+cjxd.11
```

```
jx install dependencies -d kubectl
Installing kubectl
```

```
[Captains-Bay]🚩 >  jx create cluster gke --skip-installation -n mytestproject
Your browser has been opened to visit:

    https://accounts.google.com/o/oauth2/auth?clieccounts.reauth&code_challenge=MzB8fXXJBFwVv2v4oke_xFKm1Lvt694hV_nTj55LnnI&code_challenge_method=S256&access_type=offline&response_type=code&prompt=select_account


? Google Cloud Project: famous-hull-276807
Updated property [core/project].
? Configured cluster name: mytestproject
? Defaulting to cluster type: Zonal
? Google Cloud Zone: us-east1-b
? Defaulting to machine type: n1-standard-2
? Defaulting to minimum number of nodes: 3
? Defaulting to maximum number of nodes: 5
? Defaulting use of preemptible VMs: No
? Defaulting access to Google Cloud Storage / Google Container Registry: Yes
? Defaulting enabling Cloud Build, Container Registry & Container Analysis API's: Yes
? Defaulting enabling Kaniko for building container images: No
Creating cluster...
WARNING: Currently VPC-native is not the default mode during cluster creation. In the future, this will become the default mode and can be disabled using `--no-enable-ip-alias` flag. Use `--[no-]enable-ip-alias` flag to suppress this warning.
WARNING: Newly created clusters and node-pools will have node auto-upgrade enabled by default. This can be disabled using the `--no-enable-autoupgrade` flag.
WARNING: Starting with version 1.18, clusters will have shielded GKE nodes by default.
WARNING: Your Pod address range (`--cluster-ipv4-cidr`) can accommodate at most 1008 node(s).
This will enable the autorepair feature for nodes. Please see https://cloud.google.com/kubernetes-engine/docs/node-auto-repair for more information on node autorepairs.
Creating cluster mytestproject in us-east1-b...
................................done.
Created [https://container.googleapis.com/v1/projects/famous-hull-276807/zones/us-east1-b/clusters/mytestproject].
To inspect the contents of your cluster, go to: https://console.cloud.google.com/kubernetes/workload_/gcloud/us-east1-b/mytestproject?project=famous-hull-276807
kubeconfig entry generated for mytestproject.
NAME           LOCATION    MASTER_VERSION  MASTER_IP     MACHINE_TYPE   NODE_VERSION    NUM_NODES  STATUS
mytestproject  us-east1-b  1.14.10-gke.36  34.73.89.190  n1-standard-2  1.14.10-gke.36  3          RUNNING
Initialising cluster ...
gke cluster created. Skipping Jenkins X installation.
Fetching cluster endpoint and auth data.
kubeconfig entry generated for mytestproject.
Context "gke_famous-hull-276807_us-east1-b_mytestproject" modified.
No resources found.

```

So we got Kubernetes Cluster

```
kubectl get nodes
NAME                                           STATUS   ROLES    AGE   VERSION
gke-mytestproject-default-pool-c87818e4-3vbd   Ready    <none>   50s   v1.14.10-gke.36
gke-mytestproject-default-pool-c87818e4-551t   Ready    <none>   50s   v1.14.10-gke.36
gke-mytestproject-default-pool-c87818e4-qg4b   Ready    <none>   50s   v1.14.10-gke.36
```

First clone the Jenkins X Boot configuration repo and cd into your newly cloned repo.

Open the jx-requirements.yml file of your newly cloned repo, eg. jenkinx-x-boot-config/jx-requirements.yml. This specifies the requirements of your installation, including:



```
 pwd
/Users/ajeetraina/july1
[Captains-Bay]🚩 >  ls
[Captains-Bay]🚩 >  git clone https://github.com/jenkins-x/jenkins-x-boot-config
Cloning into 'jenkins-x-boot-config'...
remote: Enumerating objects: 10, done.
remote: Counting objects: 100% (10/10), done.
remote: Compressing objects: 100% (9/9), done.
remote: Total 2633 (delta 1), reused 7 (delta 1), pack-reused 2623
Receiving objects: 100% (2633/2633), 400.40 KiB | 590.00 KiB/s, done.
Resolving deltas: 100% (1408/1408), done.
[Captains-Bay]🚩 >  cd jenkins-x-boot-config/
[Captains-Bay]🚩 >  ls
Makefile		bdd			jenkins-x-bdd-local.yml	jenkins-x.yml		prowConfig
OWNERS			clearcluster.sh		jenkins-x-bdd-vault.yml	jx-requirements.yml	repositories
README.md		env			jenkins-x-release.yml	kubeProviders		systems
[Captains-Bay]🚩 >
```

```
 jx boot
Creating boot config with defaults, as not in an existing boot directory with a git repository.
No Jenkins X pipeline file jenkins-x.yml or no jx boot requirements file jx-requirements.yml found. You are not running this command from inside a Jenkins X Boot git clone
To continue we will clone https://github.com/cloudbees/cloudbees-jenkins-x-boot-config.git @ 2.1.78+cjxd.11 to cloudbees-jenkins-x-boot-config
? Do you want to clone the Jenkins X Boot Git repository? Yes

Cloning https://github.com/cloudbees/cloudbees-jenkins-x-boot-config.git @ 2.1.78+cjxd.11 to cloudbees-jenkins-x-boot-config
Attempting to resolve version for boot config https://github.com/cloudbees/cloudbees-jenkins-x-boot-config.git from https://github.com/cloudbees/cloudbees-jenkins-x-versions.git
Booting Jenkins X

STEP: validate-git command: /bin/sh -c jx step git validate in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/env

Git configured for user: jenkins-x-bot and email jenkins-x@googlegroups.com

STEP: verify-preinstall command: /bin/sh -c jx step verify preinstall --provider-values-dir="kubeProviders" in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config

Currently connected cluster is mytestproject in us-east1-b in project famous-hull-276807
? Do you want to jx boot the mytestproject cluster? Yes

? Git Owner name for environment repositories jenkins-x-testproject
Environment repos will be public, if you want to create private environment repos, please set environmentGitPublic to false jx-requirements.yml
? Comma-separated git provider usernames of approvers for development environment repository ajeetraina
Locking version stream https://github.com/cloudbees/cloudbees-jenkins-x-versions.git to release v0.0.36. Jenkins X will use this release rather than 2.1.78+cjxd.11 to resolve all versions from now on.
writing the following to the OWNERS file for the development environment repository:
approvers:
- ajeetraina
reviewers:
- ajeetraina
WARNING: Vault is enabled and TLS is not. This means your secrets will be sent to and from your cluster in the clear. See https://go.cloudbees.com/docs/cloudbees-jenkins-x-distribution/tls/ for more information
WARNING: TLS is not enabled so your webhooks will be called using HTTP. This means your webhook secret will be sent to your cluster in the clear. See https://go.cloudbees.com/docs/cloudbees-jenkins-x-distribution/tls/ for more information
? Do you wish to continue? Yes

Verifying the kubernetes cluster before we try to boot Jenkins X in namespace: jx
Trying to lazily create any missing resources to get the current cluster ready to boot Jenkins X
Verifying Ingress...

Using namespace 'jx' from context named 'gke_famous-hull-276807_us-east1-b_mytestproject' on server 'https://34.73.89.190'.

Installing kubectl
Downloading https://storage.googleapis.com/kubernetes-release/release/v1.13.2/bin/darwin/amd64/kubectl to /Users/ajeetraina/.jx/bin/kubectl...
Downloaded /Users/ajeetraina/.jx/bin/kubectl
Installing helm
Downloading https://get.helm.sh/helm-v2.12.2-darwin-amd64.tar.gz to /Users/ajeetraina/.jx/bin/helm.tgz...
Downloaded /Users/ajeetraina/.jx/bin/helm.tgz
Installing helm secrets plugin
Verifying the CLI packages using version stream URL: https://github.com/cloudbees/cloudbees-jenkins-x-versions.git and git ref: v0.0.36
using version 2.1.78+cjxd.11 of jx
CLI packages kubectl, git, helm seem to be setup correctly
NAME                          VERSION
Kubernetes cluster            v1.14.10-gke.36
kubectl (installed in JX_BIN) v1.13.2
git                           2.17.2 (Apple Git-113)

Verifying Storage...
? Long term log storage bucket URL. Press enter to create and use a new bucket
The bucket gs://mytestproject-logs-5bd6af88-2b3b-444f-8bde-fd17306bf5d6 does not exist so lets create it
? Long term report storage bucket URL. Press enter to create and use a new bucket
The bucket gs://mytestproject-reports-4900441c-6e17-4086-8fbf-03584efaa does not exist so lets create it
? Chart repository bucket URL. Press enter to create and use a new bucket
The bucket gs://mytestproject-repository-97a041b1-6ca6-48c7-aaaf-783030 does not exist so lets create it
WARNING: Your requirements have not enabled cloud storage for backup - we recommend enabling this for kubernetes provider gke
Storage configuration looks good

Helm installed and configured
Ensuring Helm chart repository https://storage.googleapis.com/chartmuseum.jenkins-x.io is configured
Validating Kaniko secret in namespace jx
attempting to lazily create the deploy namespace jx
Configuring Kaniko service account mytestproject-ko for project famous-hull-276807
Unable to find service account mytestproject-ko, checking if we have enough permission to create
Creating service account mytestproject-ko
Assigning role roles/storage.admin
Assigning role roles/storage.objectAdmin
Assigning role roles/storage.objectCreator
Downloading service account key
created Secret: kaniko-secret in namespace: jx

verified there is a ConfigMap config in namespace jx
verified there is a ConfigMap plugins in namespace jx
Cluster looks good, you are ready to 'jx boot' now!


STEP: install-jx-crds command: /bin/sh -c jx upgrade crd in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config

Jenkins X CRDs upgraded with success

STEP: install-velero command: /bin/sh -c jx step helm apply --boot --remote --no-vault --name velero in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/velero

Modified file /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/velero/Chart.yaml to set the chart to version 1
Namespace velero created

STEP: install-velero-backups command: /bin/sh -c jx step helm apply --boot --remote --no-vault --name velero-backups in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/velero-backups

Modified file /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/velero-backups/Chart.yaml to set the chart to version 1
Ignoring templates/default-backup.yaml
No requirements file: /var/folders/mq/z4bncmrs28sbtktxpck2whcm0000gn/T/jx-helm-apply-176308753/velero-backups/requirements.yaml so not checking for missing versions

STEP: install-nginx-controller command: /bin/sh -c jx step helm apply --boot --remote --no-vault --name jxing in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/jxing

Modified file /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/jxing/Chart.yaml to set the chart to version 1


STEP: create-install-values command: /bin/sh -c jx step create install values -b in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/env

Waiting to find the external host name of the ingress controller Service in namespace kube-system with name jxing-nginx-ingress-controller
No domain flag provided so using default  to generate Ingress rules
waiting for external Host on the ingress service jxing-nginx-ingress-controller in namespace kube-system ...
Waiting to find the external host name of the ingress controller Service in namespace kube-system with name jxing-nginx-ingress-controller
No domain flag provided so using default 35.237.205.64.nip.io to generate Ingress rules
defaulting the domain to 35.237.205.64.nip.io and modified /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/jx-requirements.yml

STEP: install-external-dns command: /bin/sh -c jx step helm apply --boot --remote --no-vault --name exdns in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/external-dns

Modified file /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/external-dns/Chart.yaml to set the chart to version 1

STEP: install-cert-manager-crds command: /bin/sh -c kubectl apply --wait --validate=false -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.11/deploy/manifests/00-crds.yaml in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config

customresourcedefinition.apiextensions.k8s.io/challenges.acme.cert-manager.io created
customresourcedefinition.apiextensions.k8s.io/orders.acme.cert-manager.io created
customresourcedefinition.apiextensions.k8s.io/certificaterequests.cert-manager.io created
customresourcedefinition.apiextensions.k8s.io/certificates.cert-manager.io created
customresourcedefinition.apiextensions.k8s.io/clusterissuers.cert-manager.io created
customresourcedefinition.apiextensions.k8s.io/issuers.cert-manager.io created

STEP: install-cert-manager command: /bin/sh -c jx step helm apply --boot --remote --no-vault --name cm in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/cm

Modified file /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/cm/Chart.yaml to set the chart to version 1
Namespace cert-manager created

STEP: install-acme-issuer-and-certificate command: /bin/sh -c jx step helm apply --boot --remote --no-vault --name acme in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/acme

Modified file /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/acme/Chart.yaml to set the chart to version 1
Ignoring templates/cert-manager-prod-certificate.yaml
Ignoring templates/cert-manager-prod-issuer.yaml
Ignoring templates/cert-manager-staging-certificate.yaml
Ignoring templates/cert-manager-staging-issuer.yaml
No requirements file: /var/folders/mq/z4bncmrs28sbtktxpck2whcm0000gn/T/jx-helm-apply-564356074/acme/requirements.yaml so not checking for missing versions

STEP: install-vault command: /bin/sh -c jx step boot vault --provider-values-dir ../../kubeProviders in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/vault

? Do you want Jenkins X to create and manage Vault? Yes

Installing vault-operator operator with helm values: [image.repository=banzaicloud/vault-operator image.tag=0.4.16]

Vault operator installed in namespace jx
Applying vault ingress in namespace jx for vault name jx-vault-mytestproject
ingress.extensions/jx-vault-mytestproject created
Unable to find service account mytestproject-vt, checking if we have enough permission to create
Creating service account mytestproject-vt
Assigning role roles/storage.objectAdmin
Assigning role roles/cloudkms.admin
Assigning role roles/cloudkms.cryptoKeyEncrypterDecrypter
Downloading service account key
GCS bucket 'jx-vault-mytestproject-bucket' was created for Vault backend
Vault 'jx-vault-mytestproject' in namespace 'jx' created

STEP: create-helm-values command: /bin/sh -c jx step create values --name parameters in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/env

defaulting to secret storage scheme vault found from requirements file at /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/jx-requirements.yml
defaulting to secret base path to the cluster name mytestproject found from requirements file at /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/jx-requirements.yml
generated schema file /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/env/parameters.schema.json from template /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/env/parameters.tmpl.schema.json
Waiting for vault to be initialized and unsealed...
Waiting for vault to be initialized and unsealed...
? Jenkins X Admin Username admin
? Jenkins X Admin Password [? for help] **********
? Pipeline bot Git username collabnix-bot
? Pipeline bot Git email address rainaajeetsingh1981@gmail.com
? A token for the Git user that will perform git operations inside a pipeline. This includes environment repository creation, and so this token should have full repository permissions. To create a token go to https://github.com/settings/tokens/new?scopes=repo,read:user,read:org,user:email,write:repo_hook,delete_repo then enter a name, click Generate token, and copy and paste the token into this prompt.
? Pipeline bot Git token ****************************************
Generated token 38f5a373c5c662079a336114e50968e43f18f0769, to use it press enter.
This is the only time you will be shown it so remember to save it
? HMAC token, used to validate incoming webhooks. Press enter to use the generated token [? for help]
? Do you want to configure non default Docker Registry? Yes
? Docker Registry Url https://index.docker.io/v1/
? Docker Registry username ajeetraina
? Docker Registry password [? for help] **********
? Docker Registry email ajeetraina@gmail.com

STEP: create-jx-auth-config command: /bin/sh -c jx step create templated --parameters-file=../../env/parameters.yaml --requirements-dir=../../ --template-file=jx-auth-configmap.tmpl.yaml --config-file=templates/jx-auth-configmap.yaml in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/jx-auth

Saved the rendered configuration into templates/jx-auth-configmap.yaml file

STEP: install-jx-auth-config command: /bin/sh -c jx step helm apply --boot --remote --no-vault --name jx-auth in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/jx-auth

Modified file /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/systems/jx-auth/Chart.yaml to set the chart to version 1
Ignoring templates/jx-auth-configmap.yaml
No requirements file: /var/folders/mq/z4bncmrs28sbtktxpck2whcm0000gn/T/jx-helm-apply-084491211/jx-auth/requirements.yaml so not checking for missing versions


STEP: install-jenkins-x command: /bin/sh -c jx step helm apply --boot --remote --name jenkins-x --provider-values-dir ../kubeProviders in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/env

Modified file /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/env/Chart.yaml to set the chart to version 1
Ignoring templates/.gitignore
Applying the kubernetes overrides at ../kubeProviders/gke/values.tmpl.yaml


STEP: verify-jenkins-x-environment command: /bin/sh -c jx step verify env in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config

Storing the requirements in team settings in the dev environment
Validating git repository for dev environment at URL https://github.com/jenkins-x-testproject/environment-mytestproject-dev.git

WARNING: Waiting for the fork of collabnix-bot/environment-mytestproject-dev to appear...
Forked Git repository to https://github.com/collabnix-bot/environment-mytestproject-dev
Pushed Git repository to https://github.com/jenkins-x-testproject/environment-mytestproject-dev
Validating git repository for production environment at URL https://github.com/jenkins-x-testproject/environment-mytestproject-production.git
Using Git provider github at https://github.com
? Using Git user name: collabnix-bot
? Using organisation: jenkins-x-testproject
Creating repository jenkins-x-testproject/environment-mytestproject-staging
Creating Git repository jenkins-x-testproject/environment-mytestproject-staging
Pushed Git repository to https://github.com/jenkins-x-testproject/environment-mytestproject-staging

Environment git repositories look good


STEP: install-repositories command: /bin/sh -c jx step helm apply --boot --name repos in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/repositories

Modified file /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/repositories/Chart.yaml to set the chart to version 1
creating the lock configmap jx-lock-jx
lock configmap jx-lock-jx created
Ignoring templates/default-group.yaml
No requirements file: /var/folders/mq/z4bncmrs28sbtktxpck2whcm0000gn/T/jx-helm-apply-666331140/repositories/requirements.yaml so not checking for missing versions

cleaning the lock configmap jx-lock-jx

STEP: install-pipelines command: /bin/sh -c jx step scheduler config apply --direct=true in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/prowConfig


STEP: update-webhooks command: /bin/sh -c jx update webhooks --verbose --warn-on-fail in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/repositories

Updating webhooks for Owner: jenkins-x-testproject and Repository: environment-mytestproject-dev in git server: https://github.com
Checking hooks for repository jenkins-x-testproject/environment-mytestproject-dev with user collabnix-bot
Creating GitHub webhook for jenkins-x-testproject/environment-mytestproject-dev for url http://hook-jx.35.237.205.64.nip.io/hook
Updating webhooks for Owner: jenkins-x-testproject and Repository: environment-mytestproject-production in git server: https://github.com
Checking hooks for repository jenkins-x-testproject/environment-mytestproject-production with user collabnix-bot
Creating GitHub webhook for jenkins-x-testproject/environment-mytestproject-production for url http://hook-jx.35.237.205.64.nip.io/hook
Updating webhooks for Owner: jenkins-x-testproject and Repository: environment-mytestproject-staging in git server: https://github.com
Checking hooks for repository jenkins-x-testproject/environment-mytestproject-staging with user collabnix-bot
Creating GitHub webhook for jenkins-x-testproject/environment-mytestproject-staging for url http://hook-jx.35.237.205.64.nip.io/hook

STEP: verify-installation command: /bin/sh -c jx step verify install --pod-wait-time 30m in dir: /Users/ajeetraina/july1/cloudbees-jenkins-x-boot-config/env

verifying the Jenkins X installation in namespace jx
verifying pods
Checking pod statuses
POD                                                STATUS
jenkins-x-chartmuseum-d87cbb789-h4kzz              Running
jenkins-x-controllerbuild-847f4f4b79-t6g64         Running
jenkins-x-controllerrole-75d8d87d98-p5p2l          Running
jenkins-x-heapster-54bdffbc79-fwlds                Running
jenkins-x-nexus-b69b7745b-xnzrl                    Running
jx-vault-mytestproject-0                           Running
jx-vault-mytestproject-configurer-5547f59f5b-d2vjk Running
lighthouse-foghorn-dd76f6664-w9ql4                 Running
lighthouse-keeper-5f89b8b978-chkdp                 Running
lighthouse-webhooks-5cdf4b9f65-6mchq               Running
lighthouse-webhooks-5cdf4b9f65-nqjvw               Running
tekton-pipelines-controller-88c7cd9d5-4hr7z        Running
vault-operator-75d5446bb7-mnj6h                    Running
Verifying the git config
Verifying username collabnix-bot at git server github at https://github.com
Found 1 organisations in git server https://github.com: jenkins-x-testproject
Validated pipeline user collabnix-bot on git server https://github.com
Git tokens seem to be setup correctly
Installation is currently looking: GOOD
Using namespace 'jx' from context named 'gke_famous-hull-276807_us-east1-b_mytestproject' on server 'https://34.73.89.190'.

```

```
jx get environments
NAME       LABEL       KIND        PROMOTE NAMESPACE     ORDER CLUSTER SOURCE                                                                            REF    PR
dev        Development Development Never   jx            0             https://github.com/jenkins-x-testproject/environment-mytestproject-dev.git        master
staging    Staging     Permanent   Auto    jx-staging    100           https://github.com/jenkins-x-testproject/environment-mytestproject-staging.git    master
production Production  Permanent   Manual  jx-production 200           https://github.com/jenkins-x-testproject/environment-mytestproject-production.git master
[Captains-Bay]🚩 >
```

# Bringing up UI

```
jx ns jx
Using namespace 'jx' from context named 'gke_famous-hull-276807_us-east1-b_mytestproject' on server 'https://34.73.89.190'.
```

```
[Captains-Bay]🚩 >  jx add app jx-app-ui --version 0.1.211
WARNING: No secrets found on "helm/repos" due: reading the secret "helm/repos" from vault: no secret "helm/repos" not found in vault
Read credentials for http://chartmuseum.jenkins-x.io from vault helm/repos
Preparing questions to configure jx-app-ui. If this is the first time you have installed the app, this may take a couple of minutes.
Questions prepared.
Checking if TLS is enabled in the cluster
Created Pull Request: https://github.com/jenkins-x-testproject/environment-mytestproject-dev/pull/1
Added app via Pull Request https://github.com/jenkins-x-testproject/environment-mytestproject-dev/pull/1
```

```
[Captains-Bay]🚩 >  jx gadd app jx-app-ui --version 0.1.211kubectl get -n jx ingress jenkins-x-jxui
[Captains-Bay]🚩 >  kubectl get -n jx ingress jenkins-x-jxui
Error from server (NotFound): ingresses.extensions "jenkins-x-jxui" not found
[Captains-Bay]🚩 >  jx ui -p 8080
UI not configured to run with TLS - The UI will open in read-only mode with port-forwarding only for the current user
Waiting for the UI to be ready on http://localhost:8080...
.
.
Jenkins X UI: http://localhost:8080
Opening the UI in the browser...
```



