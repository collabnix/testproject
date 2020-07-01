## Coniguring Jenkins X for GKE

## Infrastructure

- Macbook
- Google Cloud Platform

# Setting up Jenkins X on GKE Cluster

```
jx create cluster gke
Your browser has been opened to visit:

    https://accounts.google.com/o/oauth2/auth?client_id=32555940559.apps.googleusercontent.com&redirect_uri=http%3A%2F%2Flocalhost%3A8085%2F&scope=openid+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fappengine.admin+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcompute+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Faccounts.reauth&code_challenge=9lBmvCGJmjzqpQpVh2GHaKaOe5ynF8yu9-hCcuC7TH0&code_challenge_method=S256&access_type=offline&response_type=code&prompt=select_account


? Google Cloud Project: famous-hull-276807
Updated property [core/project].
? No cluster name provided so using a generated one: sparrowcrocus
? Defaulting to cluster type: Zonal
? Google Cloud Zone: us-central1-a
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
Creating cluster sparrowcrocus in us-central1-a...
....................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................done.
Created [https://container.googleapis.com/v1/projects/famous-hull-276807/zones/us-central1-a/clusters/sparrowcrocus].
To inspect the contents of your cluster, go to: https://console.cloud.google.com/kubernetes/workload_/gcloud/us-central1-a/sparrowcrocus?project=famous-hull-276807
kubeconfig entry generated for sparrowcrocus.
NAME           LOCATION       MASTER_VERSION  MASTER_IP      MACHINE_TYPE   NODE_VERSION    NUM_NODES  STATUS
sparrowcrocus  us-central1-a  1.14.10-gke.36  35.238.81.203  n1-standard-2  1.14.10-gke.36  3          RUNNING
Initialising cluster ...
? Configured Jenkins installation type: Serverless Jenkins X Pipelines with Tekton
Namespace jx created
Context "gke_famous-hull-276807_us-central1-a_sparrowcrocus" modified.
Setting the docker registry organisation to famous-hull-276807 in the TeamSettings
Git configured for user: jenkins-x-bot and email jenkins-x@googlegroups.com
Helm installed and configured
? No existing ingress controller found in the kube-system namespace, installing one: Yes

Note: this loadbalancer will fail to be provisioned if you have insufficient quotas, this can happen easily on a GKE free account.
To view quotas run: gcloud compute project-info describe
Waiting for external loadbalancer to be created and update the nginx-ingress-controller service in kube-system namespace
External loadbalancer created
Waiting to find the external host name of the ingress controller Service in namespace kube-system with name jxing-nginx-ingress-controller
You can now configure a wildcard DNS pointing to the new Load Balancer address 34.67.95.227
If you don't have a wildcard DNS setup then create a DNS (A) record and point it at: 34.67.95.227, then use the DNS domain in the next input...

If you do not have a custom domain setup yet, Ingress rules will be set for magic DNS nip.io.
Once you have a custom domain ready, you can update with the command jx upgrade ingress --cluster
? Domain 34.67.95.227.nip.io
nginx ingress controller installed and configured
? Default enabling long term logs storage: Yes
No bucket name provided for long term storage, creating a new one
The bucket gs://sparrowcrocus-lts-e52ec7fa-edb0-4266-835e-6b01c70730a9 does not exist so lets create it
Set up a Git username and API token to be able to perform CI/CD
Creating a local Git user for github.com server
? github.com username: ajeetraina
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
Setting the pipelines Git server https://github.com and user name ajeetraina.
Enumerating objects: 1440, done.
Total 1440 (delta 0), reused 0 (delta 0), pack-reused 1440
? Defaulting workload build pack: Kubernetes Workloads: Automated CI+CD with GitOps Promotion
Setting the team build pack to kubernetes-workloads repo: https://github.com/jenkins-x-buildpacks/jenkins-x-kubernetes.git ref: master
Installing jx into namespace jx
Installing jenkins-x-platform version: 2.0.2298



WARNING: waiting for install to be ready, if this is the first time then it will take a while to download images
Jenkins X deployments ready in namespace jx
Configuring the TeamSettings for ImportMode Jenkinsfile
Configure Jenkins API Token
waiting up to 0s for the Jenkins server to be healthy at URL http://jenkins.jx.34.67.95.227.nip.io/login
Generating the API token...
Logged in admin to Jenkins server at http://jenkins.jx.34.67.95.227.nip.io via legacy security realm
Enable CSRF protection at: http://jenkins.jx.34.67.95.227.nip.io/configureSecurity/
Created user admin API Token for Jenkins server jenkins.jx.34.67.95.227.nip.io at http://jenkins.jx.34.67.95.227.nip.io
Updating Jenkins with new external URL details http://jenkins.jx.34.67.95.227.nip.io
Creating default staging and production environments
? Select the organization where you want to create the environment repository: Hubstation
Using Git provider github.com at https://github.com
? Using Git user name: ajeetraina
? Using organisation: Hubstation
Creating repository Hubstation/environment-sparrowcrocus-staging
Creating Git repository Hubstation/environment-sparrowcrocus-staging
Pushed Git repository to https://github.com/Hubstation/environment-sparrowcrocus-staging

Creating staging Environment in namespace jx
Created environment staging
Namespace jx-staging created
Created Jenkins Project: http://jenkins.jx.34.67.95.227.nip.io/job/Hubstation/job/environment-sparrowcrocus-staging/

Note that your first pipeline may take a few minutes to start while the necessary images get downloaded!

Triggered Jenkins job:  http://jenkins.jx.34.67.95.227.nip.io/job/Hubstation/job/environment-sparrowcrocus-staging/
Creating GitHub webhook for Hubstation/environment-sparrowcrocus-staging for url http://jenkins.jx.34.67.95.227.nip.io/github-webhook/
Using Git provider github.com at https://github.com
? Using Git user name: ajeetraina
? Using organisation: Hubstation
Creating repository Hubstation/environment-sparrowcrocus-production
Creating Git repository Hubstation/environment-sparrowcrocus-production
Pushed Git repository to https://github.com/Hubstation/environment-sparrowcrocus-production

Creating production Environment in namespace jx
Created environment production
Namespace jx-production created
Created Jenkins Project: http://jenkins.jx.34.67.95.227.nip.io/job/Hubstation/job/environment-sparrowcrocus-production/

Note that your first pipeline may take a few minutes to start while the necessary images get downloaded!

Triggered Jenkins job:  http://jenkins.jx.34.67.95.227.nip.io/job/Hubstation/job/environment-sparrowcrocus-production/
Creating GitHub webhook for Hubstation/environment-sparrowcrocus-production for url http://jenkins.jx.34.67.95.227.nip.io/github-webhook/

Jenkins X installation completed successfully


	********************************************************

	     NOTE: Your admin password is: m58TtXXXXXNb7

	********************************************************


Your Kubernetes context is now set to the namespace: jx
To switch back to your original namespace use: jx namespace default
Or to use this context/namespace in just one terminal use: jx shell
For help on switching contexts see: https://jenkins-x.io/developing/kube-context/
To import existing projects into Jenkins X:       jx import
To create a new Spring Boot microservice:       jx create spring -d web -d actuator
To create a new microservice from a quickstart: jx create quickstart
Fetching cluster endpoint and auth data.
kubeconfig entry generated for sparrowcrocus.
Context "gke_famous-hull-276807_us-central1-a_sparrowcrocus" modified.
NAME              HOSTS                                    ADDRESS        PORTS   AGE
chartmuseum       chartmuseum.jx.34.67.95.227.nip.io       34.67.95.227   80      2m52s
docker-registry   docker-registry.jx.34.67.95.227.nip.io   34.67.95.227   80      2m53s
jenkins           jenkins.jx.34.67.95.227.nip.io           34.67.95.227   80      2m52s
nexus             nexus.jx.34.67.95.227.nip.io             34.67.95.227   80      2m52s
[Captains-Bay]🚩 >
```

# Retrieving the Environments

```
jx get environments
NAME       LABEL       KIND        PROMOTE NAMESPACE     ORDER CLUSTER SOURCE                                                                 REF PR
dev        Development Development Never   jx            0
staging    Staging     Permanent   Auto    jx-staging    100           https://github.com/Hubstation/environment-sparrowcrocus-staging.git
production Production  Permanent   Manual  jx-production 200           https://github.com/Hubstation/environment-sparrowcrocus-production.git
[Captains-Bay]🚩 >
```

# Test Driving QuickStart


```
jx create quickstart --git-public=true
? select the quickstart you wish to create jenkins-quickstart
Using Git provider github.com at https://github.com
? Do you wish to use ajeetraina as the Git user name? Yes
? Who should be the owner of the repository? ajeetraina
? Enter the new repository name:  test2
Creating repository ajeetraina/test2
Generated quickstart at /Users/ajeetraina/test2
Created project at /Users/ajeetraina/test2
The directory /Users/ajeetraina/test2 is not yet using git
? Would you like to initialise git now? Yes
? Commit message:  Initial import

Git repository created

selected pack: /Users/ajeetraina/.jx/draft/packs/github.com/jenkins-x-buildpacks/jenkins-x-kubernetes/packs/jenkins
replacing placeholders in directory /Users/ajeetraina/test2
app name: test2, git server: github.com, org: ajeetraina, Docker registry org: famous-hull-276807
skipping directory "/Users/ajeetraina/test2/.git"
Draft pack jenkins added
? Would you like to define a different preview namespace? No
Pushed Git repository to https://github.com/ajeetraina/test2
Created Jenkins Project: http://jenkins.jx.34.67.95.227.nip.io/job/ajeetraina/job/test2/

Watch pipeline activity via:    jx get activity -f test2 -w
Browse the pipeline log via:    jx get build logs ajeetraina/test2/master
You can list the pipelines via: jx get pipelines
When the pipeline is complete:  jx get applications

For more help on available commands see: https://jenkins-x.io/developing/browsing/

Note that your first pipeline may take a few minutes to start while the necessary images get downloaded!

Triggered Jenkins job:  http://jenkins.jx.34.67.95.227.nip.io/job/ajeetraina/job/test2/
Creating GitHub webhook for ajeetraina/test2 for url http://jenkins.jx.34.67.95.227.nip.io/github-webhook/
```

## Examining Build Output over Jenkins

```
There is a new version (1.12.0) of Skaffold available. Download it at https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64

[Pipeline] }
[Pipeline] // container
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Promote to Environments)
[Pipeline] container
[Pipeline] {
[Pipeline] sh

++ cat VERSION
+ jx step changelog --version v0.0.1
Using batch mode as inside a pipeline
Generating change log from git ref cf0b8fb9ca0296129f3bfa28af668084a8bd4061 => 039bdf6e1c7794184fd6aeebf5de29cabb8d2e53
Associating user x-0 in users.jenkins.io with email jenkins-x@googlegroups.com to git GitProvider user with login -0 as emails match
Adding label jenkins.io/git-github-userid=-0 to user x-0 in users.jenkins.io
WARNING: Failed to enrich commit d3b8fc6f176a22ec8ab78b47ff47ee721a5f709d with issues: User.jenkins.io "x-0" is invalid: metadata.labels: Invalid value: "-0": a valid label must be an empty string or consist of alphanumeric characters, '-', '_' or '.', and must start and end with an alphanumeric character (e.g. 'MyValue',  or 'my_value',  or '12345', regex used for validation is '(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?')
Finding issues in commit messages using git format
WARNING: No release found for ajeetraina/test2 and tag v0.0.1 so creating a new release

Updated the release information at https://github.com/ajeetraina/test2/releases/tag/v0.0.1
generated: /home/jenkins/agent/workspace/ajeetraina_test2_master/templates/release.yaml
Created Release test2-0-0-1 resource in namespace jx
Updating PipelineActivity ajeetraina-test2-master-1 with version 0.0.1
Updated PipelineActivities ajeetraina-test2-master-1 with release notes URL: https://github.com/ajeetraina/test2/releases/tag/v0.0.1
[Pipeline] }
[Pipeline] // container
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Declarative: Post Actions)
[Pipeline] cleanWs
[WS-CLEANUP] Deleting project workspace...
[WS-CLEANUP] Deferred wipeout is used...
[WS-CLEANUP] done
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // withCredentials
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline

GitHub has been notified of this commit’s build result


Finished: SUCCESS



There is a new version (1.12.0) of Skaffold available. Download it at https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64

[Pipeline] }
[Pipeline] // container
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Promote to Environments)
[Pipeline] container
[Pipeline] {
[Pipeline] sh

++ cat VERSION
+ jx step changelog --version v0.0.1
Using batch mode as inside a pipeline
Generating change log from git ref cf0b8fb9ca0296129f3bfa28af668084a8bd4061 => 039bdf6e1c7794184fd6aeebf5de29cabb8d2e53
Associating user x-0 in users.jenkins.io with email jenkins-x@googlegroups.com to git GitProvider user with login -0 as emails match
Adding label jenkins.io/git-github-userid=-0 to user x-0 in users.jenkins.io
WARNING: Failed to enrich commit d3b8fc6f176a22ec8ab78b47ff47ee721a5f709d with issues: User.jenkins.io "x-0" is invalid: metadata.labels: Invalid value: "-0": a valid label must be an empty string or consist of alphanumeric characters, '-', '_' or '.', and must start and end with an alphanumeric character (e.g. 'MyValue',  or 'my_value',  or '12345', regex used for validation is '(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?')
Finding issues in commit messages using git format
WARNING: No release found for ajeetraina/test2 and tag v0.0.1 so creating a new release

Updated the release information at https://github.com/ajeetraina/test2/releases/tag/v0.0.1
generated: /home/jenkins/agent/workspace/ajeetraina_test2_master/templates/release.yaml
Created Release test2-0-0-1 resource in namespace jx
Updating PipelineActivity ajeetraina-test2-master-1 with version 0.0.1
Updated PipelineActivities ajeetraina-test2-master-1 with release notes URL: https://github.com/ajeetraina/test2/releases/tag/v0.0.1
[Pipeline] }
[Pipeline] // container
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Declarative: Post Actions)
[Pipeline] cleanWs
[WS-CLEANUP] Deleting project workspace...
[WS-CLEANUP] Deferred wipeout is used...
[WS-CLEANUP] done
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // withCredentials
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline

GitHub has been notified of this commit’s build result


Finished: SUCCESS
```


