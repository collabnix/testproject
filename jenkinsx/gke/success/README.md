```
 gcloud config set project famous-hull-276807
Updated property [core/project].
[Captains-Bay]🚩 >  git clone https://github.com/jenkins-x/jx-tutorial
Cloning into 'jx-tutorial'...
remote: Enumerating objects: 18, done.
remote: Counting objects: 100% (18/18), done.
remote: Compressing objects: 100% (14/14), done.
remote: Total 10463 (delta 7), reused 10 (delta 4), pack-reused 10445
Receiving objects: 100% (10463/10463), 2.47 MiB | 2.08 MiB/s, done.
Resolving deltas: 100% (5302/5302), done.
[Captains-Bay]🚩 >  cd jx-tutorial/
[Captains-Bay]🚩 >  ls
OWNERS			dependency-matrix	install-jx.sh		tutorials
README.md		install-guide.txt	jenkins-x.yml
[Captains-Bay]🚩 >  https://github.com/jenkins-x/jx-tutorial
[Captains-Bay]🚩 >  https://github.com/jenkins-x/jx-tutorialc
[Captains-Bay]🚩 >  source ./install-jx.sh
Downloading & installing Jenkins X 2.1.80
x LICENSE
x README.md
x changelog.md
x jx

Installed
grep: /Users/ajeetraina/.bashrc: No such file or directory
jx is a command line tool for working with Jenkins X
WARNING: Unable to load managed plugins because Get https://35.239.56.185/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/plugins.jenkins.io: dial tcp 35.239.56.185:443: i/o timeout


Installing:
  profile          Set your jx profile
  boot             Boots up Jenkins X in a Kubernetes cluster using GitOps and a Jenkins X Pipeline
  install          Install Jenkins X in the current Kubernetes cluster
  uninstall        Uninstall the Jenkins X platform
  upgrade          Upgrades a resource
  create cluster   Create a new Kubernetes cluster
  create jenkins token Adds a new username and API token for a Jenkins server
  delete jenkins token Deletes one or more Jenkins user API tokens
  init             Init Jenkins X

Adding Projects to Jenkins X:
  import           Imports a local project or Git repository into Jenkins
  create spring    Create a new Spring Boot application and import the generated code into Git and Jenkins for CI/CD
  create quickstart Create a new app from a Quickstart and import the generated code into Git and Jenkins for CI/CD
  create quickstartlocation Create a location of quickstarts for your team

Apps:
  create addon     Creates an addon
  create token addon Adds a new token/login for a user for a given addon
  delete addon     Deletes one or more addons
  delete token addon Deletes one or more API tokens for a user on an issue addon server
  delete app       Deletes one or more apps from Jenkins X (an app is similar to an addon)
  delete application Deletes one or more applications from Jenkins
  add app          Adds an App (an app is similar to an addon)

Git:
  create git server Creates a new Git server from a URL and kind
  delete git server Deletes one or more Git servers
  create git token Adds a new API token for a user on a Git server
  delete git token Deletes one or more API tokens for a user on a Git server
  repository       Opens the web page for the current Git repository in a browser

Working with Kubernetes:
  compliance       Run compliance tests against Kubernetes cluster
  completion       Output shell completion code for the given shell (bash or zsh)
  context          View or change the current Kubernetes context (Kubernetes cluster)
  environment      View or change the current environment in the current Kubernetes cluster
  team             View or change the current team in the current Kubernetes cluster
  namespace        View or change the current namespace context in the current Kubernetes cluster
  prompt           Generate the command line prompt for the current team and environment
  scan             Perform a scan action
  shell            Create a sub shell so that changes to the Kubernetes context, namespace or environment remain local to the shell
  status           status of the Kubernetes cluster or named node

Working with Applications:
  logs             Tails the log of the latest pod for a deployment
  open             Open a service in a browser
  rsh              Opens a terminal in a pod or runs a command in the pod
  sync             Synchronises your local files to a DevPod

Working with Environments:
  preview          Creates or updates a Preview Environment for the current version of an application
  promote          Promotes a version of an application to an Environment
  create addon environment Create an Environment Controller to handle webhooks and promote changes from GitOps
  create environment Create a new Environment which is used to promote your Team's Applications via Continuous Delivery
  delete addon environment Deletes the Environment Controller
  delete environment Deletes one or more Environments
  edit environment Edits an Environment which is used to promote your Team's Applications via Continuous Delivery
  get environments Display one or more Environments

Working with Jenkins X resources:
  get              Display one or more resources
  edit             Edit a resource
  create           Create a new resource
  update           Updates an existing resource
  delete           Deletes one or more resources
  add              Adds a new resource
  start            Starts a process such as a pipeline
  stop             Stops a process such as a pipeline

Jenkins X Pipeline Commands:
  step             pipeline steps

Jenkins X services:
  controller       Runs a controller
  gc               Garbage collects Jenkins X resources

Working with Jenkins X UI:
  ui               Opens the CloudBees Jenkins X UI app for Kubernetes for visualising CI/CD and your environments

Alpha commands:
  alpha            Provides alpha versions of existing commands or adds new alpha commands

Other Commands:
  diagnose         Print diagnostic information about the Jenkins X installation
  docs             Open the documentation in a browser
  help             Help about any command
  version          Print the version information

Options:
  -b, --batch-mode=false: Runs in batch mode without prompting for user input
      --verbose=false: Enables verbose output. The environment variable JX_LOG_LEVEL has precedence over this flag and allows setting the logging level to any value of: panic, fatal, error, warning, info, debug, trace
      --version=false: version for jx
Usage:
  jx [flags] [options]
Use "jx <command> --help" for more information about a given command.
Use "jx options" for a list of global command-line options (applies to all commands).
[Captains-Bay]🚩 >
[Captains-Bay]🚩 >
[Captains-Bay]🚩 >  source ./install-jx.sh
Downloading & installing Jenkins X 2.1.80
x LICENSE
x README.md
x changelog.md
x jx

Installed
Already on path
[Captains-Bay]🚩 >
[Captains-Bay]🚩 >  jx create cluster gke --skip-login
? Google Cloud Project: famous-hull-276807
Updated property [core/project].
? No cluster name provided so using a generated one: buffalocalico
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
Creating cluster buffalocalico in us-east1-b...
..................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................done.
Created [https://container.googleapis.com/v1/projects/famous-hull-276807/zones/us-east1-b/clusters/buffalocalico].
To inspect the contents of your cluster, go to: https://console.cloud.google.com/kubernetes/workload_/gcloud/us-east1-b/buffalocalico?project=famous-hull-276807
kubeconfig entry generated for buffalocalico.
NAME           LOCATION    MASTER_VERSION  MASTER_IP      MACHINE_TYPE   NODE_VERSION    NUM_NODES  STATUS
buffalocalico  us-east1-b  1.14.10-gke.36  35.185.40.202  n1-standard-2  1.14.10-gke.36  3          RUNNING
Initialising cluster ...
? Configured Jenkins installation type: Serverless Jenkins X Pipelines with Tekton
Namespace jx created
Context "gke_famous-hull-276807_us-east1-b_buffalocalico" modified.
Setting the docker registry organisation to famous-hull-276807 in the TeamSettings
Git configured for user: jenkins-x-bot and email jenkins-x@googlegroups.com
Helm installed and configured
? No existing ingress controller found in the kube-system namespace, installing one: Yes

Note: this loadbalancer will fail to be provisioned if you have insufficient quotas, this can happen easily on a GKE free account.
To view quotas run: gcloud compute project-info describe
Waiting for external loadbalancer to be created and update the nginx-ingress-controller service in kube-system namespace
External loadbalancer created
Waiting to find the external host name of the ingress controller Service in namespace kube-system with name jxing-nginx-ingress-controller
You can now configure a wildcard DNS pointing to the new Load Balancer address 104.196.49.126
If you don't have a wildcard DNS setup then create a DNS (A) record and point it at: 104.196.49.126, then use the DNS domain in the next input...

If you do not have a custom domain setup yet, Ingress rules will be set for magic DNS nip.io.
Once you have a custom domain ready, you can update with the command jx upgrade ingress --cluster
? Domain 104.196.49.126.nip.io
nginx ingress controller installed and configured
? Default enabling long term logs storage: Yes
No bucket name provided for long term storage, creating a new one
The bucket gs://buffalocalico-lts-aede5149-a8f5-458b-b804-f9c99efb09c4 does not exist so lets create it
Set up a Git username and API token to be able to perform CI/CD
Creating a local Git user for github.com server
? github.com username: ajeetraina@gmail.com
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
Setting the pipelines Git server https://github.com and user name ajeetraina@gmail.com.
? A local Jenkins X cloud environments repository already exists, recreating with latest: Yes
Enumerating objects: 1440, done.
Total 1440 (delta 0), reused 0 (delta 0), pack-reused 1440
? Defaulting workload build pack: Kubernetes Workloads: Automated CI+CD with GitOps Promotion
Setting the team build pack to kubernetes-workloads repo: https://github.com/jenkins-x-buildpacks/jenkins-x-kubernetes.git ref: master
Installing jx into namespace jx
Installing jenkins-x-platform version: 2.0.2245

WARNING: waiting for install to be ready, if this is the first time then it will take a while to download images
Jenkins X deployments ready in namespace jx
Configuring the TeamSettings for ImportMode Jenkinsfile
Configure Jenkins API Token
Generating the API token...
Logged in admin to Jenkins server at http://jenkins.jx.104.196.49.126.nip.io via legacy security realm
Enable CSRF protection at: http://jenkins.jx.104.196.49.126.nip.io/configureSecurity/
Created user admin API Token for Jenkins server jenkins.jx.104.196.49.126.nip.io at http://jenkins.jx.104.196.49.126.nip.io
Updating Jenkins with new external URL details http://jenkins.jx.104.196.49.126.nip.io
Creating default staging and production environments
? Select the organization where you want to create the environment repository: jenkins-x-testproject
Using Git provider github.com at https://github.com
? Using Git user name: ajeetraina@gmail.com
? Using organisation: jenkins-x-testproject
Creating repository jenkins-x-testproject/environment-buffalocalico-staging
Creating Git repository jenkins-x-testproject/environment-buffalocalico-staging
Pushed Git repository to https://github.com/jenkins-x-testproject/environment-buffalocalico-staging

Creating staging Environment in namespace jx
Created environment staging
Namespace jx-staging created
Created Jenkins Project: http://jenkins.jx.104.196.49.126.nip.io/job/jenkins-x-testproject/job/environment-buffalocalico-staging/

Note that your first pipeline may take a few minutes to start while the necessary images get downloaded!

Triggered Jenkins job:  http://jenkins.jx.104.196.49.126.nip.io/job/jenkins-x-testproject/job/environment-buffalocalico-staging/
Creating GitHub webhook for jenkins-x-testproject/environment-buffalocalico-staging for url http://jenkins.jx.104.196.49.126.nip.io/github-webhook/
Using Git provider github.com at https://github.com
? Using Git user name: ajeetraina@gmail.com
? Using organisation: jenkins-x-testproject
Creating repository jenkins-x-testproject/environment-buffalocalico-production
Creating Git repository jenkins-x-testproject/environment-buffalocalico-production
Pushed Git repository to https://github.com/jenkins-x-testproject/environment-buffalocalico-production

Creating production Environment in namespace jx
Created environment production
Namespace jx-production created
Created Jenkins Project: http://jenkins.jx.104.196.49.126.nip.io/job/jenkins-x-testproject/job/environment-buffalocalico-production/

Note that your first pipeline may take a few minutes to start while the necessary images get downloaded!

Triggered Jenkins job:  http://jenkins.jx.104.196.49.126.nip.io/job/jenkins-x-testproject/job/environment-buffalocalico-production/
Creating GitHub webhook for jenkins-x-testproject/environment-buffalocalico-production for url http://jenkins.jx.104.196.49.126.nip.io/github-webhook/

Jenkins X installation completed successfully


	********************************************************

	     NOTE: Your admin password is: X25B2CO?mVMq8.Vdcdpb

	********************************************************


Your Kubernetes context is now set to the namespace: jx
To switch back to your original namespace use: jx namespace default
Or to use this context/namespace in just one terminal use: jx shell
For help on switching contexts see: https://jenkins-x.io/developing/kube-context/
To import existing projects into Jenkins X:       jx import
To create a new Spring Boot microservice:       jx create spring -d web -d actuator
To create a new microservice from a quickstart: jx create quickstart
Fetching cluster endpoint and auth data.
kubeconfig entry generated for buffalocalico.
Context "gke_famous-hull-276807_us-east1-b_buffalocalico" modified.
NAME              HOSTS                                      ADDRESS          PORTS   AGE
chartmuseum       chartmuseum.jx.104.196.49.126.nip.io       104.196.49.126   80      2m40s
docker-registry   docker-registry.jx.104.196.49.126.nip.io   104.196.49.126   80      2m40s
jenkins           jenkins.jx.104.196.49.126.nip.io           104.196.49.126   80      2m40s
nexus             nexus.jx.104.196.49.126.nip.io             104.196.49.126   80      2m39s
[Captains-Bay]🚩 >
```
