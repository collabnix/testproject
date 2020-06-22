
```
karanveersingh5623@cloudshell:~ (famous-hull-276807)$ terraform version
Terraform v0.12.26
+ provider.google v3.26.0
+ provider.google-beta v3.26.0
+ provider.kubernetes v1.11.3
+ provider.local v1.4.0
+ provider.null v2.1.2
+ provider.random v2.2.1
+ provider.template v2.1.2
```

```
cat main.tf
module "jx" {
  source  = "jenkins-x/jx/google"

  gcp_project = "<my-gcp-project-id>"
}
```

You can then apply this Terraform configuration via:

terraform init
terraform apply

```
1-a/clusters/tf-jx-humane-manatee/nodePools/autoscale-pool]
module.jx.module.cluster.kubernetes_service_account.tekton_sa: Creating...
module.jx.module.cluster.kubernetes_service_account.kaniko_sa: Creating...
module.jx.module.cluster.kubernetes_namespace.jenkins_x_namespace: Creating...
module.jx.module.cluster.kubernetes_service_account.build_controller_sa: Creating...
module.jx.module.cluster.kubernetes_namespace.jenkins_x_namespace: Creation complete after 1s [id=jx]
module.jx.module.dns.google_service_account_iam_member.exdns_external_dns_workload_identity_user: Creating...
module.jx.module.vault.kubernetes_service_account.vault_sa: Creating...
module.jx.module.vault.google_service_account_iam_member.vault_auth_workload_identity_user[0]: Creating...
module.jx.module.vault.google_service_account_iam_member.vault_operator_workload_identity_user[0]: Creating...
module.jx.module.dns.kubernetes_service_account.exdns-external-dns: Creating...
module.jx.module.cluster.kubernetes_service_account.tekton_sa: Still creating... [10s elapsed]
module.jx.module.cluster.kubernetes_service_account.kaniko_sa: Still creating... [10s elapsed]
module.jx.module.cluster.kubernetes_service_account.build_controller_sa: Still creating... [10s elapsed]
module.jx.module.dns.google_service_account_iam_member.exdns_external_dns_workload_identity_user: Still creating... [10s elapsed]
module.jx.module.vault.kubernetes_service_account.vault_sa: Still creating... [10s elapsed]
module.jx.module.vault.google_service_account_iam_member.vault_auth_workload_identity_user[0]: Still creating... [10s elapsed]
module.jx.module.vault.google_service_account_iam_member.vault_operator_workload_identity_user[0]: Still creating... [10s elapsed]
module.jx.module.dns.kubernetes_service_account.exdns-external-dns: Still creating... [10s elapsed]
module.jx.module.dns.google_service_account_iam_member.exdns_external_dns_workload_identity_user: Creation complete after 11s [id=projects/famous-hu
ll-276807/serviceAccounts/tf-jx-humane-manatee-dn@famous-hull-276807.iam.gserviceaccount.com/roles/iam.workloadIdentityUser/serviceaccount:famous-hu
ll-276807.svc.id.goog[jx/exdns-external-dns]]
module.jx.module.vault.google_service_account_iam_member.vault_auth_workload_identity_user[0]: Creation complete after 11s [id=projects/famous-hull-
276807/serviceAccounts/tf-jx-humane-manatee-vt@famous-hull-276807.iam.gserviceaccount.com/roles/iam.workloadIdentityUser/serviceaccount:famous-hull-
276807.svc.id.goog[jx/vault-auth]]
module.jx.module.cluster.kubernetes_service_account.kaniko_sa: Creation complete after 19s [id=jx/kaniko-sa]
module.jx.module.cluster.kubernetes_service_account.tekton_sa: Creation complete after 19s [id=jx/tekton-bot]
module.jx.module.cluster.kubernetes_service_account.build_controller_sa: Creation complete after 19s [id=jx/jenkins-x-controllerbuild]
module.jx.module.dns.kubernetes_service_account.exdns-external-dns: Creation complete after 18s [id=jx/exdns-external-dns]
module.jx.module.vault.kubernetes_service_account.vault_sa: Creation complete after 18s [id=jx/tf-jx-humane-manatee-vt]
module.jx.module.vault.google_service_account_iam_member.vault_operator_workload_identity_user[0]: Still creating... [20s elapsed]
module.jx.module.vault.google_service_account_iam_member.vault_operator_workload_identity_user[0]: Creation complete after 22s [id=projects/famous-h
ull-276807/serviceAccounts/tf-jx-humane-manatee-vt@famous-hull-276807.iam.gserviceaccount.com/roles/iam.workloadIdentityUser/serviceaccount:famous-h
ull-276807.svc.id.goog[jx/tf-jx-humane-manatee-vt]]
```

```
kubectl get ns
NAME              STATUS   AGE
cert-manager      Active   19m
default           Active   23m
jx                Active   13m
kube-node-lease   Active   23m
kube-public       Active   23m
kube-system       Active   23m
```

```
jx boot --requirements jx-requirements.yml
Creating boot config with defaults, as not in an existing boot directory with a git repository.
No Jenkins X pipeline file jenkins-x.yml or no jx boot requirements file jx-requirements.yml found. You are not running this command from inside a J
enkins X Boot git clone
To continue we will clone https://github.com/jenkins-x/jenkins-x-boot-config.git @ master to jenkins-x-boot-config
? Do you want to clone the Jenkins X Boot Git repository? Yes
Cloning https://github.com/jenkins-x/jenkins-x-boot-config.git @ master to jenkins-x-boot-config


STEP: validate-git command: /bin/sh -c jx step git validate in dir: /home/karanveersingh5623/test/jenkins-x-boot-config/env
Git configured for user: collabnix and email contact@collabnix.com
STEP: verify-preinstall command: /bin/sh -c jx step verify preinstall --provider-values-dir="kubeProviders" in dir: /home/karanveersingh5623/test/je
nkins-x-boot-config
Connecting to cluster tf-jx-humane-manatee
? Git Owner name for environment repositories collabnix
Environment repos will be private, if you want to create public environment repos, please set environmentGitPublic to true in jx-requirements.yml
? Comma-separated git provider usernames of approvers for development environment repository collabnix
Locking version stream https://github.com/jenkins-x/jenkins-x-versions.git to release v1.0.506. Jenkins X will use this release rather than master t
o resolve all versions from now on.
writing the following to the OWNERS file for the development environment repository:
approvers:
- collabnix
reviewers:
- collabnix
WARNING: Vault is enabled and TLS is not. This means your secrets will be sent to and from your cluster in the clear. See https://jenkins-x.io/docs/
getting-started/setup/boot/#ingress for more information
WARNING: TLS is not enabled so your webhooks will be called using HTTP. This means your webhook secret will be sent to your cluster in the clear. Se
e https://jenkins-x.io/docs/getting-started/setup/boot/#ingress for more information
? Do you wish to continue? Yes
Verifying the kubernetes cluster before we try to boot Jenkins X in namespace: jx
Trying to lazily create any missing resources to get the current cluster ready to boot Jenkins X
Attempting to lazily create the deploy namespace jx
Verifying Ingress...
Now using namespace 'jx' on server 'https://35.188.152.216'.
Verifying the CLI packages using version stream URL: https://github.com/jenkins-x/jenkins-x-versions.git and git ref: v1.0.506
error: package git is an old version 2.11.0. The version stream requires at least 2.15.0
error: failed to interpret pipeline file /home/karanveersingh5623/test/jenkins-x-boot-config/jenkins-x.yml: failed to run '/bin/sh -c jx step verify
 preinstall --provider-values-dir="kubeProviders"' command in directory '/home/karanveersingh5623/test/jenkins-x-boot-config', ou
 
 
```

```
error: package git is an old version 2.11.0. The version stream requires at least 2.15.0
```

