
```
 jx create cluster gke
Your browser has been opened to visit:

    https://accounts.google.com/o/oauth2/auth?code_challenge=bjvqWnGEPcL8RkaIGG0A71uzxXJxka-RucYbpkdhjJ4&prompt=select_account&code_challenge_method=S256&access_type=offline&redirect_uri=http%3A%2F%2Flocalhost%3A8085%2F&response_type=code&client_id=32555940559.apps.googleusercontent.com&scope=openid+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fappengine.admin+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcompute+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Faccounts.reauth


Using the only Google Cloud Project famous-hull-276807 to create the cluster
Updated property [core/project].
? No cluster name provided so using a generated one: gargoylelaser
? Defaulting to cluster type: Zonal
? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone:  [Use arrows to move, space to select, type to filter, ? fo? Google Cloud Zone: us-east1-b
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
Creating cluster gargoylelaser in us-east1-b...
............................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................done.
Created [https://container.googleapis.com/v1/projects/famous-hull-276807/zones/us-east1-b/clusters/gargoylelaser].
To inspect the contents of your cluster, go to: https://console.cloud.google.com/kubernetes/workload_/gcloud/us-east1-b/gargoylelaser?project=famous-hull-276807
kubeconfig entry generated for gargoylelaser.
NAME           LOCATION    MASTER_VERSION  MASTER_IP      MACHINE_TYPE   NODE_VERSION    NUM_NODES  STATUS
gargoylelaser  us-east1-b  1.14.10-gke.36  35.196.109.87  n1-standard-2  1.14.10-gke.36  3          RUNNING
Initialising cluster ...
? Configured Jenkins installation type: Serverless Jenkins X Pipelines with Tekton
Namespace jx created
Context "gke_famous-hull-276807_us-east1-b_gargoylelaser" modified.
Setting the docker registry organisation to famous-hull-276807 in the TeamSettings
Git configured for user: jenkins-x-bot and email jenkins-x@googlegroups.com
Helm installed and configured
? No existing ingress controller found in the kube-system namespace, installing one: Yes
Using local value overrides file /Users/ajeetraina/myvalues.yaml

Note: this loadbalancer will fail to be provisioned if you have insufficient quotas, this can happen easily on a GKE free account.
To view quotas run: gcloud compute project-info describe
Waiting for external loadbalancer to be created and update the nginx-ingress-controller service in kube-system namespace
External loadbalancer created
Waiting to find the external host name of the ingress controller Service in namespace kube-system with name jxing-nginx-ingress-controller
You can now configure a wildcard DNS pointing to the new Load Balancer address 35.190.178.69
If you don't have a wildcard DNS setup then create a DNS (A) record and point it at: 35.190.178.69, then use the DNS domain in the next input...

If you do not have a custom domain setup yet, Ingress rules will be set for magic DNS nip.io.
Once you have a custom domain ready, you can update with the command jx upgrade ingress --cluster
? Domain 35.190.178.69.nip.io
nginx ingress controller installed and configured
? Default enabling long term logs storage: Yes
No bucket name provided for long term storage, creating a new one
The bucket gs://gargoylelaser-lts-fea91184-d2ba-4c31-8ea9-55f53b8e2051 does not exist so lets create it
```

```
The bucket gs://gargoylelaser-lts-fea91184-d2ba-4c31-8ea9-55f53b8e2051 does not exist so lets create it
Set up a Git username and API token to be able to perform CI/CD
Creating a local Git user for github.com server
? github.com username: collabnix
To be able to create a repository on github.com we need an API Token
Please click this URL and generate a token
https://github.com/settings/tokens/new?scopes=repo,read:user,read:org,user:email,write:repo_hook,delete_repo

Then COPY the token and enter it below:

? API Token: ****************************************
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
Using local value overrides file /Users/ajeetraina/myvalues.yaml
? Defaulting workload build pack: Kubernetes Workloads: Automated CI+CD with GitOps Promotion
Setting the team build pack to kubernetes-workloads repo: https://github.com/jenkins-x-buildpacks/jenkins-x-kubernetes.git ref: master
Installing jx into namespace jx
Installing jenkins-x-platform version: 2.0.2245

Installing jx into namespace jx
Installing jenkins-x-platform version: 2.0.2245

WARNING: waiting for install to be ready, if this is the first time then it will take a while to download images
WARNING: deployment jenkins failed to become ready in namespace jx
Jenkins X deployments ready in namespace jx
Configuring the TeamSettings for ImportMode Jenkinsfile
Configure Jenkins API Token
waiting up to 0s for the Jenkins server to be healthy at URL http://jenkins.jx.35.190.178.69.nip.io/login
```
