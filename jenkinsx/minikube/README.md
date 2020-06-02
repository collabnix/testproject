# Getting Started with JenkinsX on Minikube

```
brew install minikube
```

```
[Captains-Bay]🚩 >  minikube version
minikube version: v1.11.0
commit: 57e2f55f47effe9ce396cea42a1e0eb4f611ebbd
```

```
brew upgrade minikube
Updating Homebrew...
Warning: minikube 1.11.0 already installed
[Captains-Bay]🚩 >  minikube start --bootstrapper=kubeadm
😄  minikube v1.11.0 on Darwin 10.13.6
✨  Automatically selected the hyperkit driver. Other choices: docker, virtualbox
💾  Downloading driver docker-machine-driver-hyperkit:
    > docker-machine-driver-hyperkit.sha256: 65 B / 65 B [---] 100.00% ? p/s 0s
    > docker-machine-driver-hyperkit: 10.90 MiB / 10.90 MiB  100.00% 440.16 KiB
🔑  The 'hyperkit' driver requires elevated permissions. The following commands will be executed:

    $ sudo chown root:wheel /Users/ajeetraina/.minikube/bin/docker-machine-driver-hyperkit
    $ sudo chmod u+s /Users/ajeetraina/.minikube/bin/docker-machine-driver-hyperkit


Password:
💿  Downloading VM boot image ...
    > minikube-v1.11.0.iso.sha256: 65 B / 65 B [-------------] 100.00% ? p/s 0s
    > minikube-v1.11.0.iso: 15.05 MiB / 174.99 MiB  8.60% 1.51 MiB p/s ETA 1m46
 ```
 
 
 ```
 [Captains-Bay]🚩 >  jx install --provider=kubernetes     --on-premise
Command "install" is deprecated, it will be removed on Jun 1 2020. We now highly recommend you use jx boot instead. Please check https://jenkins-x.io/docs/getting-started/setup/boot/ for more details.
? Configured Jenkins installation type: Serverless Jenkins X Pipelines with Tekton
Namespace jx created
Context "minikube" modified.
Git configured for user: jenkins-x-bot and email jenkins-x@googlegroups.com
Helm installed and configured
? No existing ingress controller found in the kube-system namespace, installing one: Yes
Using local value overrides file /Users/ajeetraina/myvalues.yaml


Waiting for external loadbalancer to be created and update the nginx-ingress-controller service in kube-system namespace
Using external IP: 192.168.64.2
You can now configure a wildcard DNS pointing to the new Load Balancer address 192.168.64.2
If you don't have a wildcard DNS setup then create a DNS (A) record and point it at: 192.168.64.2, then use the DNS domain in the next input...

If you do not have a custom domain setup yet, Ingress rules will be set for magic DNS nip.io.
Once you have a custom domain ready, you can update with the command jx upgrade ingress --cluster
? Domain 192.168.64.2.nip.io
nginx ingress controller installed and configured
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
Installing jenkins-x-platform version: 2.0.2261
error: installing the Jenkins X platform: failed to install/upgrade the jenkins-x platform chart: failed to run 'kubectl apply --recursive -f /var/folders/mq/z4bncmrs28sbtktxpck2whcm0000gn/T/helm-template-workdir-205954485/jenkins-x/output/namespaces/jx -l jenkins.io/chart-release=jenkins-x --namespace jx --validate=false' command in directory '', output: 'deployment.apps/jenkins-x-chartmuseum created
persistentvolumeclaim/jenkins-x-chartmuseum created
secret/jenkins-x-chartmuseum created
service/jenkins-x-chartmuseum created
role.rbac.authorization.k8s.io/cleanup created
rolebinding.rbac.authorization.k8s.io/cleanup created
serviceaccount/cleanup created
clusterrole.rbac.authorization.k8s.io/controllerrole-jx created
clusterrolebinding.rbac.authorization.k8s.io/controllerrole-jx created
deployment.apps/jenkins-x-controllerrole created
release.jenkins.io/controllerrole-2.1.56 created
role.rbac.authorization.k8s.io/controllerrole created
rolebinding.rbac.authorization.k8s.io/controllerrole created
serviceaccount/jenkins-x-controllerrole created
configmap/jenkins-x-docker-registry-config created
deployment.apps/jenkins-x-docker-registry created
persistentvolumeclaim/jenkins-x-docker-registry created
secret/jenkins-x-docker-registry-secret created
service/jenkins-x-docker-registry created
configmap/exposecontroller created
role.rbac.authorization.k8s.io/expose created
rolebinding.rbac.authorization.k8s.io/expose created
serviceaccount/expose created
clusterrole.rbac.authorization.k8s.io/gcactivities-jx created
clusterrolebinding.rbac.authorization.k8s.io/gcactivities-jx created
cronjob.batch/jenkins-x-gcactivities created
release.jenkins.io/gcactivities-2.1.56 created
role.rbac.authorization.k8s.io/gcactivities created
rolebinding.rbac.authorization.k8s.io/gcactivities created
serviceaccount/jenkins-x-gcactivities created
cronjob.batch/jenkins-x-gcpods created
release.jenkins.io/gcpods-2.1.56 created
role.rbac.authorization.k8s.io/gcpods created
rolebinding.rbac.authorization.k8s.io/gcpods created
serviceaccount/jenkins-x-gcpods created
clusterrole.rbac.authorization.k8s.io/gcpreviews-jx created
clusterrolebinding.rbac.authorization.k8s.io/gcpreviews-jx created
cronjob.batch/jenkins-x-gcpreviews created
release.jenkins.io/gcpreviews-2.1.56 created
role.rbac.authorization.k8s.io/gcpreviews created
rolebinding.rbac.authorization.k8s.io/gcpreviews created
serviceaccount/jenkins-x-gcpreviews created
deployment.apps/jenkins-x-heapster created
clusterrolebinding.rbac.authorization.k8s.io/jenkins-x-heapster created
role.rbac.authorization.k8s.io/jenkins-x-heapster-pod-nanny created
rolebinding.rbac.authorization.k8s.io/jenkins-x-heapster-pod-nanny created
service/heapster created
serviceaccount/jenkins-x-heapster created
configmap/jenkins created
persistentvolumeclaim/jenkins created
service/jenkins-agent created
service/jenkins created
configmap/jenkins-x-git-kinds created
configmap/jenkins-pod-xml-dlang created
clusterrolebinding.rbac.authorization.k8s.io/jenkins-jx-role-binding created
secret/jenkins created
serviceaccount/jenkins created
configmap/jenkins-tests created
configmap/jenkins-pod-xml-dotnet created
configmap/jenkins-pod-xml-maven-nodejs created
configmap/jenkins-pod-xml-python37 created
configmap/jenkins-pod-xml-maven created
configmap/jenkins-pod-xml-promote created
configmap/jenkins-pod-xml-php5x created
configmap/jenkins-pod-xml-jx-base created
configmap/jenkins-pod-xml-nodejs12x created
configmap/jenkins-pod-xml-swift created
configmap/jenkins-pod-xml-newman created
configmap/jenkins-pod-xml-ruby created
configmap/jenkins-pod-xml-maven-graalvm created
configmap/jenkins-pod-xml-python created
configmap/jenkins-pod-xml-php7x created
configmap/jenkins-pod-xml-go created
configmap/jenkins-pod-xml-machine-learning created
configmap/jenkins-pod-xml-nodejs8x created
configmap/jenkins-pod-xml-terraform created
configmap/jenkins-pod-xml-nodejs created
configmap/jenkins-pod-xml-rust created
configmap/jenkins-pod-xml-maven-java11 created
configmap/jenkins-pod-xml-python2 created
configmap/jenkins-pod-xml-machine-learning-gpu created
configmap/jenkins-pod-xml-packer created
configmap/jenkins-pod-xml-aws-cdk created
configmap/jenkins-pod-xml-gradle created
configmap/jenkins-pod-xml-nodejs10x created
configmap/jenkins-pod-xml-scala created
configmap/nexus created
deployment.apps/jenkins-x-nexus created
persistentvolumeclaim/jenkins-x-nexus created
secret/nexus created
service/nexus created
role.rbac.authorization.k8s.io/committer created
secret/jenkins-docker-cfg created
configmap/jenkins-x-devpod-config created
configmap/jenkins-x-docker-registry created
configmap/jenkins-x-extensions created
configmap/jenkins-x-pod-template-dlang created
secret/jx-basic-auth created
role.rbac.authorization.k8s.io/jx-view created
secret/jenkins-maven-settings created
secret/jenkins-npm-token created
role.rbac.authorization.k8s.io/owner created
secret/jenkins-release-gpg created
secret/jenkins-ssh-config created
role.rbac.authorization.k8s.io/viewer created
configmap/jenkins-x-pod-template-dotnet created
configmap/jenkins-x-pod-template-maven-nodejs created
configmap/jenkins-x-pod-template-python37 created
configmap/jenkins-x-pod-template-maven created
configmap/jenkins-x-pod-template-promote created
configmap/jenkins-x-pod-template-php5x created
configmap/jenkins-x-pod-template-jx-base created
configmap/jenkins-x-pod-template-nodejs12x created
configmap/jenkins-x-pod-template-swift created
configmap/jenkins-x-pod-template-newman created
configmap/jenkins-x-pod-template-ruby created
configmap/jenkins-x-pod-template-maven-graalvm created
configmap/jenkins-x-pod-template-python created
configmap/jenkins-x-pod-template-php7x created
configmap/jenkins-x-pod-template-go created
configmap/jenkins-x-pod-template-machine-learning created
configmap/jenkins-x-pod-template-nodejs8x created
configmap/jenkins-x-pod-template-terraform created
configmap/jenkins-x-pod-template-nodejs created
configmap/jenkins-x-pod-template-rust created
configmap/jenkins-x-pod-template-maven-java11 created
configmap/jenkins-x-pod-template-python2 created
configmap/jenkins-x-pod-template-machine-learning-gpu created
configmap/jenkins-x-pod-template-packer created
configmap/jenkins-x-pod-template-aws-cdk created
configmap/jenkins-x-pod-template-gradle created
configmap/jenkins-x-pod-template-nodejs10x created
configmap/jenkins-x-pod-template-scala created
error: unable to recognize "/var/folders/mq/z4bncmrs28sbtktxpck2whcm0000gn/T/helm-template-workdir-205954485/jenkins-x/output/namespaces/jx/jenkins-x-platform/charts/jenkins/templates/part0-jenkins-master-deployment.yaml": no matches for kind "Deployment" in version "extensions/v1beta1"'
[Captains-Bay]🚩 >
```

# Fixing the Error

Just change the entry under var/folders/mq/z4bncmrs28sbtktxpck2whcm0000gn/T/helm-template-workdir-205954485/jenkins-x/output/namespaces/jx/jenkins-x-platform/charts/jenkins/templates/part0-jenkins-master-deployment.yaml

```
From apiVersion: extensions/v1beta1
```

```
To: apiVersion: apps/v1
```


# Re-run the command

```
jx install --provider=kubernetes     --on-premise
Command "install" is deprecated, it will be removed on Jun 1 2020. We now highly recommend you use jx boot instead. Please check https://jenkins-x.io/docs/getting-started/setup/boot/ for more details.
? Configured Jenkins installation type: Serverless Jenkins X Pipelines with Tekton
Context "minikube" modified.
Git configured for user: jenkins-x-bot and email jenkins-x@googlegroups.com
Helm installed and configured
existing ingress controller found, no need to install a new one
Waiting for external loadbalancer to be created and update the nginx-ingress-controller service in kube-system namespace
Using external IP: 192.168.64.2
You can now configure a wildcard DNS pointing to the new Load Balancer address 192.168.64.2
If you don't have a wildcard DNS setup then create a DNS (A) record and point it at: 192.168.64.2, then use the DNS domain in the next input...

If you do not have a custom domain setup yet, Ingress rules will be set for magic DNS nip.io.
Once you have a custom domain ready, you can update with the command jx upgrade ingress --cluster
? Domain 192.168.64.2.nip.io
nginx ingress controller installed and configured
Set up a Git username and API token to be able to perform CI/CD
? Do you wish to use collabnix as the local Git user for github.com server: Yes
Select the CI/CD pipelines Git server and user
? Do you wish to use github.com as the pipelines Git server: Yes
Setting the pipelines Git server https://github.com and user name collabnix.
```

