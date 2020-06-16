# JenkinsX for EKS using Terraform


```
[Captains-Bay]🚩 >  terraform version
Terraform v0.12.26
```



```
[Captains-Bay]🚩 >  cat main.tf
module "eks-jx" {
  source  = "jenkins-x/eks-jx/aws"
  
  vault_user="Sudoaccess"
}

output "vault_user_id" {
  value       = module.eks-jx.vault_user_id
  description = "The Vault IAM user id"
}

output "vault_user_secret" {
  value       = module.eks-jx.vault_user_secret
  description = "The Vault IAM user secret"
}
```


```
Captains-Bay]🚩 >  vi main.tf
[Captains-Bay]🚩 >  terraform init
Initializing modules...
Downloading jenkins-x/eks-jx/aws 1.1.0 for eks-jx...
- eks-jx in .terraform/modules/eks-jx/terraform-aws-eks-jx-1.1.0
- eks-jx.cluster in .terraform/modules/eks-jx/terraform-aws-eks-jx-1.1.0/modules/cluster
Downloading terraform-aws-modules/eks/aws 10.0.0 for eks-jx.cluster.eks...
- eks-jx.cluster.eks in .terraform/modules/eks-jx.cluster.eks/terraform-aws-eks-10.0.0
- eks-jx.cluster.eks.node_groups in .terraform/modules/eks-jx.cluster.eks/terraform-aws-eks-10.0.0/modules/node_groups
Downloading terraform-aws-modules/iam/aws 2.6.0 for eks-jx.cluster.iam_assumable_role_cert_manager...
- eks-jx.cluster.iam_assumable_role_cert_manager in .terraform/modules/eks-jx.cluster.iam_assumable_role_cert_manager/terraform-aws-iam-2.6.0/modules/iam-assumable-role-with-oidc
Downloading terraform-aws-modules/iam/aws 2.6.0 for eks-jx.cluster.iam_assumable_role_cm_cainjector...
- eks-jx.cluster.iam_assumable_role_cm_cainjector in .terraform/modules/eks-jx.cluster.iam_assumable_role_cm_cainjector/terraform-aws-iam-2.6.0/modules/iam-assumable-role-with-oidc
Downloading terraform-aws-modules/iam/aws 2.6.0 for eks-jx.cluster.iam_assumable_role_controllerbuild...
- eks-jx.cluster.iam_assumable_role_controllerbuild in .terraform/modules/eks-jx.cluster.iam_assumable_role_controllerbuild/terraform-aws-iam-2.6.0/modules/iam-assumable-role-with-oidc
Downloading terraform-aws-modules/iam/aws 2.6.0 for eks-jx.cluster.iam_assumable_role_external_dns...
- eks-jx.cluster.iam_assumable_role_external_dns in .terraform/modules/eks-jx.cluster.iam_assumable_role_external_dns/terraform-aws-iam-2.6.0/modules/iam-assumable-role-with-oidc
Downloading terraform-aws-modules/iam/aws 2.6.0 for eks-jx.cluster.iam_assumable_role_jxui...
- eks-jx.cluster.iam_assumable_role_jxui in .terraform/modules/eks-jx.cluster.iam_assumable_role_jxui/terraform-aws-iam-2.6.0/modules/iam-assumable-role-with-oidc
Downloading terraform-aws-modules/iam/aws 2.6.0 for eks-jx.cluster.iam_assumable_role_tekton_bot...
- eks-jx.cluster.iam_assumable_role_tekton_bot in .terraform/modules/eks-jx.cluster.iam_assumable_role_tekton_bot/terraform-aws-iam-2.6.0/modules/iam-assumable-role-with-oidc
Downloading terraform-aws-modules/vpc/aws 2.6.0 for eks-jx.cluster.vpc...
- eks-jx.cluster.vpc in .terraform/modules/eks-jx.cluster.vpc/terraform-aws-vpc-2.6.0
- eks-jx.dns in .terraform/modules/eks-jx/terraform-aws-eks-jx-1.1.0/modules/dns
- eks-jx.vault in .terraform/modules/eks-jx/terraform-aws-eks-jx-1.1.0/modules/vault

Initializing the backend...

Initializing provider plugins...
- Checking for available provider plugins...
- Downloading plugin for provider "template" (hashicorp/template) 2.1.2...
- Downloading plugin for provider "random" (hashicorp/random) 2.2.1...
- Downloading plugin for provider "kubernetes" (hashicorp/kubernetes) 1.11.1...
- Downloading plugin for provider "aws" (hashicorp/aws) 2.66.0...
- Downloading plugin for provider "local" (hashicorp/local) 1.4.0...
- Downloading plugin for provider "null" (hashicorp/null) 2.1.2...

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
[Captains-Bay]🚩 >
```

```
terraform apply

...
     + arn                   = (known after apply)
      + assume_role_policy    = (known after apply)
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "tf-tf-jx-enhanced-dove-sa-role-ctrlb-mVz8O3WT"
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_controllerbuild.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
      + role       = "tf-tf-jx-enhanced-dove-sa-role-ctrlb-mVz8O3WT"
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_external_dns.data.aws_iam_policy_document.assume_role_with_oidc[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "assume_role_with_oidc"  {
      + id   = (known after apply)
      + json = (known after apply)

      + statement {
          + actions = [
              + "sts:AssumeRoleWithWebIdentity",
            ]
          + effect  = "Allow"

          + condition {
              + test     = "StringEquals"
              + values   = [
                  + (known after apply),
                ]
              + variable = "oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789:sub"
            }

          + principals {
              + identifiers = [
                  + "arn:aws:iam::125346028423:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789",
                ]
              + type        = "Federated"
            }
        }
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_external_dns.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = (known after apply)
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "tf-tf-jx-enhanced-dove-sa-role-external_dns-mVz8O3WT"
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_external_dns.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::125346028423:policy/jenkins-x-external-dns20200616100156148000000006"
      + role       = "tf-tf-jx-enhanced-dove-sa-role-external_dns-mVz8O3WT"
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_jxui.data.aws_iam_policy_document.assume_role_with_oidc[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "assume_role_with_oidc"  {
      + id   = (known after apply)
      + json = (known after apply)

      + statement {
          + actions = [
              + "sts:AssumeRoleWithWebIdentity",
            ]
          + effect  = "Allow"

          + condition {
              + test     = "StringEquals"
              + values   = [
                  + (known after apply),
                ]
              + variable = "oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789:sub"
            }

          + principals {
              + identifiers = [
                  + "arn:aws:iam::125346028423:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789",
                ]
              + type        = "Federated"
            }
        }
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_jxui.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = (known after apply)
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "tf-tf-jx-enhanced-dove-sa-role-jxui-mVz8O3WT"
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_jxui.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
      + role       = "tf-tf-jx-enhanced-dove-sa-role-jxui-mVz8O3WT"
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_tekton_bot.data.aws_iam_policy_document.assume_role_with_oidc[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "assume_role_with_oidc"  {
      + id   = (known after apply)
      + json = (known after apply)

      + statement {
          + actions = [
              + "sts:AssumeRoleWithWebIdentity",
            ]
          + effect  = "Allow"

          + condition {
              + test     = "StringEquals"
              + values   = [
                  + (known after apply),
                ]
              + variable = "oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789:sub"
            }

          + principals {
              + identifiers = [
                  + "arn:aws:iam::125346028423:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789",
                ]
              + type        = "Federated"
            }
        }
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_tekton_bot.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = (known after apply)
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "tf-tf-jx-enhanced-dove-sa-role-tekton-bot-mVz8O3WT"
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_tekton_bot.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::125346028423:policy/jenkins-x-tekton-bot20200616100156147300000005"
      + role       = "tf-tf-jx-enhanced-dove-sa-role-tekton-bot-mVz8O3WT"
    }

Plan: 25 to add, 2 to change, 2 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: 2

Apply cancelled.
[Captains-Bay]🚩 >  terraform apply
module.eks-jx.random_pet.current: Refreshing state... [id=tf-jx-enhanced-dove]
module.eks-jx.random_string.suffix: Refreshing state... [id=Gqpi2L2l]
module.eks-jx.module.cluster.random_string.suffix: Refreshing state... [id=mVz8O3WT]
module.eks-jx.module.vault.random_string.suffix: Refreshing state... [id=vl4tmEXB]
module.eks-jx.module.cluster.data.aws_caller_identity.current: Refreshing state...
module.eks-jx.module.cluster.data.aws_iam_policy_document.tekton-bot-policy: Refreshing state...
module.eks-jx.module.cluster.aws_s3_bucket.reports_jenkins_x[0]: Refreshing state... [id=reports-tf-jx-enhanced-dove-20200616100156148900000007]
module.eks-jx.module.cluster.module.iam_assumable_role_cert_manager.data.aws_caller_identity.current: Refreshing state...
module.eks-jx.module.cluster.data.aws_iam_policy_document.external-dns-policy: Refreshing state...
module.eks-jx.module.cluster.module.iam_assumable_role_controllerbuild.data.aws_caller_identity.current: Refreshing state...
module.eks-jx.module.cluster.module.iam_assumable_role_external_dns.data.aws_caller_identity.current: Refreshing state...
module.eks-jx.module.cluster.module.iam_assumable_role_tekton_bot.data.aws_caller_identity.current: Refreshing state...
module.eks-jx.module.vault.data.aws_caller_identity.current: Refreshing state...
module.eks-jx.module.cluster.module.eks.data.aws_iam_policy_document.cluster_assume_role_policy: Refreshing state...
module.eks-jx.module.cluster.module.iam_assumable_role_jxui.data.aws_caller_identity.current: Refreshing state...
module.eks-jx.module.cluster.module.eks.data.aws_caller_identity.current: Refreshing state...
module.eks-jx.module.cluster.module.eks.data.aws_iam_policy_document.workers_assume_role_policy: Refreshing state...
module.eks-jx.module.cluster.module.iam_assumable_role_cm_cainjector.data.aws_caller_identity.current: Refreshing state...
module.eks-jx.module.cluster.data.aws_availability_zones.available: Refreshing state...
module.eks-jx.module.cluster.aws_s3_bucket.logs_jenkins_x[0]: Refreshing state... [id=logs-tf-jx-enhanced-dove-20200616100156146800000004]
module.eks-jx.module.cluster.data.aws_iam_policy_document.cert-manager-policy: Refreshing state...
module.eks-jx.module.vault.aws_s3_bucket.vault-unseal-bucket: Refreshing state... [id=vault-unseal-tf-jx-enhanced-dove-20200616100156140500000002]
module.eks-jx.module.cluster.module.eks.data.aws_ami.eks_worker: Refreshing state...
module.eks-jx.module.cluster.module.eks.data.aws_region.current: Refreshing state...
module.eks-jx.module.cluster.module.eks.data.aws_ami.eks_worker_windows: Refreshing state...
module.eks-jx.module.cluster.aws_s3_bucket.repository_jenkins_x[0]: Refreshing state... [id=repository-tf-jx-enhanced-dove-20200616100156142300000003]
module.eks-jx.module.cluster.module.vpc.aws_vpc.this[0]: Refreshing state... [id=vpc-0e4869a929e8f8510]
module.eks-jx.module.vault.aws_dynamodb_table.vault-dynamodb-table: Refreshing state... [id=vault-unseal-tf-jx-enhanced-dove-vl4tmEXB]
module.eks-jx.module.cluster.aws_iam_policy.tekton-bot: Refreshing state... [id=arn:aws:iam::125346028423:policy/jenkins-x-tekton-bot20200616100156147300000005]
module.eks-jx.module.cluster.aws_iam_policy.external-dns: Refreshing state... [id=arn:aws:iam::125346028423:policy/jenkins-x-external-dns20200616100156148000000006]
module.eks-jx.module.cluster.module.eks.aws_iam_role.cluster[0]: Refreshing state... [id=tf-jx-enhanced-dove20200616100156138200000001]
module.eks-jx.module.cluster.aws_iam_policy.cert-manager: Refreshing state... [id=arn:aws:iam::125346028423:policy/jenkins-x-cert-manager20200616100156151100000008]
module.eks-jx.module.vault.aws_kms_key.kms_vault_unseal: Refreshing state... [id=5d2ca5a5-f2a8-493c-85b3-677d5f58ecc8]
module.eks-jx.module.cluster.module.eks.aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy[0]: Refreshing state... [id=tf-jx-enhanced-dove20200616100156138200000001-2020061610020380940000000a]
module.eks-jx.module.cluster.module.eks.aws_iam_role_policy_attachment.cluster_AmazonEKSServicePolicy[0]: Refreshing state... [id=tf-jx-enhanced-dove20200616100156138200000001-20200616100203726200000009]
module.eks-jx.module.cluster.module.eks.aws_security_group.cluster[0]: Refreshing state... [id=sg-08c221454328c54cf]
module.eks-jx.module.cluster.module.vpc.aws_internet_gateway.this[0]: Refreshing state... [id=igw-077f80fd62d09db52]
module.eks-jx.module.cluster.module.vpc.aws_route_table.public[0]: Refreshing state... [id=rtb-0442fc7906b9c8a0d]
module.eks-jx.module.cluster.module.vpc.aws_subnet.public[2]: Refreshing state... [id=subnet-0b45038ffced49d7b]
module.eks-jx.module.cluster.module.vpc.aws_subnet.public[1]: Refreshing state... [id=subnet-0d5891c1fd400c57a]
module.eks-jx.module.cluster.module.vpc.aws_subnet.public[0]: Refreshing state... [id=subnet-0808f3ad5bde61e76]
module.eks-jx.module.cluster.module.eks.aws_security_group_rule.cluster_egress_internet[0]: Refreshing state... [id=sgrule-612770923]
module.eks-jx.module.cluster.module.vpc.aws_route.public_internet_gateway[0]: Refreshing state... [id=r-rtb-0442fc7906b9c8a0d1080289494]
module.eks-jx.module.cluster.module.vpc.aws_route_table_association.public[2]: Refreshing state... [id=rtbassoc-03f940c3520381d5e]
module.eks-jx.module.cluster.module.vpc.aws_route_table_association.public[1]: Refreshing state... [id=rtbassoc-0bc8c0799c79b1250]
module.eks-jx.module.cluster.module.vpc.aws_route_table_association.public[0]: Refreshing state... [id=rtbassoc-06bd9707b6394b65a]
module.eks-jx.module.cluster.module.eks.aws_eks_cluster.this[0]: Refreshing state... [id=tf-jx-enhanced-dove]
module.eks-jx.module.cluster.module.eks.aws_iam_role.workers[0]: Refreshing state... [id=tf-jx-enhanced-dove2020061610134998930000000f]
module.eks-jx.module.cluster.module.eks.null_resource.wait_for_cluster[0]: Refreshing state... [id=4038412331376782134]
module.eks-jx.module.cluster.module.eks.data.template_file.kubeconfig[0]: Refreshing state...
module.eks-jx.module.cluster.data.aws_eks_cluster_auth.cluster: Refreshing state...
module.eks-jx.module.cluster.module.eks.data.template_file.userdata[0]: Refreshing state...
module.eks-jx.module.cluster.data.aws_eks_cluster.cluster: Refreshing state...
module.eks-jx.module.cluster.module.eks.aws_iam_openid_connect_provider.oidc_provider[0]: Refreshing state... [id=arn:aws:iam::125346028423:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789]
module.eks-jx.module.cluster.module.eks.aws_security_group.workers[0]: Refreshing state... [id=sg-0307b07aa2464d9ae]
module.eks-jx.module.cluster.module.eks.local_file.kubeconfig[0]: Refreshing state... [id=08e198ba1ed91e8b8da939eb1936a570f3e7c79f]
module.eks-jx.module.vault.aws_iam_policy.aws_vault_user_policy: Refreshing state... [id=arn:aws:iam::125346028423:policy/vault_us-east-1-2020061610022087670000000c]
module.eks-jx.module.cluster.module.eks.aws_iam_role_policy_attachment.workers_AmazonEKS_CNI_Policy[0]: Refreshing state... [id=tf-jx-enhanced-dove2020061610134998930000000f-20200616101353857100000011]
module.eks-jx.module.cluster.module.eks.aws_iam_role_policy_attachment.workers_AmazonEC2ContainerRegistryReadOnly[0]: Refreshing state... [id=tf-jx-enhanced-dove2020061610134998930000000f-20200616101353865000000012]
module.eks-jx.module.cluster.module.eks.aws_iam_role_policy_attachment.workers_AmazonEKSWorkerNodePolicy[0]: Refreshing state... [id=tf-jx-enhanced-dove2020061610134998930000000f-20200616101353892200000013]
module.eks-jx.module.cluster.module.eks.aws_iam_instance_profile.workers[0]: Refreshing state... [id=tf-jx-enhanced-dove20200616101352759000000010]
module.eks-jx.module.cluster.module.eks.aws_iam_role_policy_attachment.workers_additional_policies[0]: Refreshing state... [id=tf-jx-enhanced-dove2020061610134998930000000f-20200616101353912800000014]
module.eks-jx.module.cluster.module.eks.aws_security_group_rule.workers_ingress_self[0]: Refreshing state... [id=sgrule-3619994669]
module.eks-jx.module.cluster.module.eks.aws_security_group_rule.cluster_https_worker_ingress[0]: Refreshing state... [id=sgrule-3150394532]
module.eks-jx.module.cluster.module.eks.aws_security_group_rule.workers_ingress_cluster[0]: Refreshing state... [id=sgrule-324045972]
module.eks-jx.module.cluster.module.eks.aws_security_group_rule.workers_egress_internet[0]: Refreshing state... [id=sgrule-1726854261]
module.eks-jx.module.cluster.module.eks.aws_security_group_rule.workers_ingress_cluster_https[0]: Refreshing state... [id=sgrule-2063188722]
module.eks-jx.module.cluster.module.eks.data.template_file.worker_role_arns[0]: Refreshing state...
module.eks-jx.module.cluster.module.eks.aws_launch_configuration.workers[0]: Refreshing state... [id=tf-jx-enhanced-dove-worker-group-tf-jx-enhanced-dove20200616101402075100000015]
module.eks-jx.module.cluster.module.eks.kubernetes_config_map.aws_auth[0]: Refreshing state... [id=kube-system/aws-auth]
module.eks-jx.module.vault.aws_iam_user_policy_attachment.attach_vault_policy_to_user: Refreshing state... [id=Sudoaccess-20200616102253510200000001]
module.eks-jx.module.cluster.module.eks.data.null_data_source.node_groups[0]: Refreshing state...
module.eks-jx.module.cluster.module.eks.random_pet.workers[0]: Refreshing state... [id=gentle-mosquito]
module.eks-jx.module.cluster.module.eks.aws_autoscaling_group.workers[0]: Refreshing state... [id=tf-jx-enhanced-dove-worker-group-tf-jx-enhanced-dove20200616101406388500000016]
module.eks-jx.module.cluster.null_resource.kubeconfig: Refreshing state... [id=5588123308192055308]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create
  ~ update in-place
-/+ destroy and then create replacement
 <= read (data resources)

Terraform will perform the following actions:

  # module.eks-jx.local_file.jx-requirements will be created
  + resource "local_file" "jx-requirements" {
      + content              = <<~EOT
            autoUpdate:
              enabled: false
              schedule: ""
            terraform: true
            cluster:
              clusterName: "tf-jx-enhanced-dove"
              environmentGitOwner: ""
              provider: eks
              region: "us-east-1"
            gitops: true
            environments:
              - key: dev
              - key: staging
              - key: production
            ingress:
              domain: ""
              ignoreLoadBalancer: true
              externalDNS: false
              tls:
                email: ""
                enabled: false
                production: false
            kaniko: true
            secretStorage: vault
            vault:
              aws:
                iamUserName: ""
                dynamoDBTable: "vault-unseal-tf-jx-enhanced-dove-vl4tmEXB"
                dynamoDBRegion: "us-east-1"
                kmsKeyId: "5d2ca5a5-f2a8-493c-85b3-677d5f58ecc8"
                kmsRegion: "us-east-1"
                s3Bucket: "vault-unseal-tf-jx-enhanced-dove-20200616100156140500000002"
                s3Region: "us-east-1"
            storage:
              logs:
                enabled: true
                url: s3://logs-tf-jx-enhanced-dove-20200616100156146800000004
              reports:
                enabled: true
                url: s3://reports-tf-jx-enhanced-dove-20200616100156148900000007
              repository:
                enabled: true
                url: s3://repository-tf-jx-enhanced-dove-20200616100156142300000003
            versionStream:
              ref: master
              url: https://github.com/jenkins-x/jenkins-x-versions.git
            webhook: lighthouse
        EOT
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "/Users/ajeetraina/jenkinsx/jx-requirements.yml"
      + id                   = (known after apply)
    }

  # module.eks-jx.module.cluster.kubernetes_namespace.cert_manager will be created
  + resource "kubernetes_namespace" "cert_manager" {
      + id = (known after apply)

      + metadata {
          + generation       = (known after apply)
          + name             = "cert-manager"
          + resource_version = (known after apply)
          + self_link        = (known after apply)
          + uid              = (known after apply)
        }
    }

  # module.eks-jx.module.cluster.kubernetes_namespace.jx will be created
  + resource "kubernetes_namespace" "jx" {
      + id = (known after apply)

      + metadata {
          + generation       = (known after apply)
          + name             = "jx"
          + resource_version = (known after apply)
          + self_link        = (known after apply)
          + uid              = (known after apply)
        }
    }

  # module.eks-jx.module.cluster.kubernetes_service_account.cm-cainjector will be created
  + resource "kubernetes_service_account" "cm-cainjector" {
      + automount_service_account_token = true
      + default_secret_name             = (known after apply)
      + id                              = (known after apply)

      + metadata {
          + annotations      = (known after apply)
          + generation       = (known after apply)
          + name             = "cm-cainjector"
          + namespace        = (known after apply)
          + resource_version = (known after apply)
          + self_link        = (known after apply)
          + uid              = (known after apply)
        }
    }

  # module.eks-jx.module.cluster.kubernetes_service_account.cm-cert-manager will be created
  + resource "kubernetes_service_account" "cm-cert-manager" {
      + automount_service_account_token = true
      + default_secret_name             = (known after apply)
      + id                              = (known after apply)

      + metadata {
          + annotations      = (known after apply)
          + generation       = (known after apply)
          + name             = "cm-cert-manager"
          + namespace        = (known after apply)
          + resource_version = (known after apply)
          + self_link        = (known after apply)
          + uid              = (known after apply)
        }
    }

  # module.eks-jx.module.cluster.kubernetes_service_account.exdns-external-dns will be created
  + resource "kubernetes_service_account" "exdns-external-dns" {
      + automount_service_account_token = true
      + default_secret_name             = (known after apply)
      + id                              = (known after apply)

      + metadata {
          + annotations      = (known after apply)
          + generation       = (known after apply)
          + name             = "exdns-external-dns"
          + namespace        = (known after apply)
          + resource_version = (known after apply)
          + self_link        = (known after apply)
          + uid              = (known after apply)
        }
    }

  # module.eks-jx.module.cluster.kubernetes_service_account.jenkins-x-controllerbuild will be created
  + resource "kubernetes_service_account" "jenkins-x-controllerbuild" {
      + automount_service_account_token = true
      + default_secret_name             = (known after apply)
      + id                              = (known after apply)

      + metadata {
          + annotations      = (known after apply)
          + generation       = (known after apply)
          + name             = "jenkins-x-controllerbuild"
          + namespace        = (known after apply)
          + resource_version = (known after apply)
          + self_link        = (known after apply)
          + uid              = (known after apply)
        }
    }

  # module.eks-jx.module.cluster.kubernetes_service_account.jxui will be created
  + resource "kubernetes_service_account" "jxui" {
      + automount_service_account_token = true
      + default_secret_name             = (known after apply)
      + id                              = (known after apply)

      + metadata {
          + annotations      = (known after apply)
          + generation       = (known after apply)
          + name             = "jxui"
          + namespace        = (known after apply)
          + resource_version = (known after apply)
          + self_link        = (known after apply)
          + uid              = (known after apply)
        }
    }

  # module.eks-jx.module.cluster.kubernetes_service_account.tekton-bot will be created
  + resource "kubernetes_service_account" "tekton-bot" {
      + automount_service_account_token = true
      + default_secret_name             = (known after apply)
      + id                              = (known after apply)

      + metadata {
          + annotations      = (known after apply)
          + generation       = (known after apply)
          + name             = "tekton-bot"
          + namespace        = (known after apply)
          + resource_version = (known after apply)
          + self_link        = (known after apply)
          + uid              = (known after apply)
        }
    }

  # module.eks-jx.module.cluster.null_resource.kubeconfig is tainted, so must be replaced
-/+ resource "null_resource" "kubeconfig" {
      ~ id = "5588123308192055308" -> (known after apply)
    }

  # module.eks-jx.module.vault.data.aws_iam_policy_document.vault_iam_user_policy_document will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "vault_iam_user_policy_document"  {
      + id   = (known after apply)
      + json = (known after apply)

      + statement {
          + actions   = [
              + "dynamodb:BatchGetItem",
              + "dynamodb:BatchWriteItem",
              + "dynamodb:CreateTable",
              + "dynamodb:DeleteItem",
              + "dynamodb:DescribeLimits",
              + "dynamodb:DescribeReservedCapacity",
              + "dynamodb:DescribeReservedCapacityOfferings",
              + "dynamodb:DescribeTable",
              + "dynamodb:DescribeTimeToLive",
              + "dynamodb:GetItem",
              + "dynamodb:GetRecords",
              + "dynamodb:ListTables",
              + "dynamodb:ListTagsOfResource",
              + "dynamodb:PutItem",
              + "dynamodb:Query",
              + "dynamodb:Scan",
              + "dynamodb:UpdateItem",
            ]
          + effect    = "Allow"
          + resources = [
              + "arn:aws:dynamodb:us-east-1:125346028423:table/vault-unseal-tf-jx-enhanced-dove-vl4tmEXB",
            ]
          + sid       = "DynamoDB"
        }
      + statement {
          + actions   = [
              + "s3:GetObject",
              + "s3:PutObject",
            ]
          + effect    = "Allow"
          + resources = [
              + "arn:aws:s3:::vault-unseal-tf-jx-enhanced-dove-20200616100156140500000002/*",
            ]
          + sid       = "S3"
        }
      + statement {
          + actions   = [
              + "s3:ListBucket",
            ]
          + effect    = "Allow"
          + resources = [
              + "arn:aws:s3:::vault-unseal-tf-jx-enhanced-dove-20200616100156140500000002",
            ]
          + sid       = "S3List"
        }
      + statement {
          + actions   = [
              + "kms:Decrypt",
              + "kms:Encrypt",
            ]
          + effect    = "Allow"
          + resources = [
              + "arn:aws:kms:us-east-1:125346028423:key/5d2ca5a5-f2a8-493c-85b3-677d5f58ecc8",
            ]
          + sid       = "KMS"
        }
    }

  # module.eks-jx.module.vault.data.aws_iam_user.vault_user will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_user" "vault_user"  {
      + arn                  = (known after apply)
      + id                   = (known after apply)
      + path                 = (known after apply)
      + permissions_boundary = (known after apply)
      + user_id              = (known after apply)
      + user_name            = "jenkins-x-vault"
    }

  # module.eks-jx.module.vault.aws_iam_access_key.jenkins-x-vault[0] will be created
  + resource "aws_iam_access_key" "jenkins-x-vault" {
      + encrypted_secret     = (known after apply)
      + id                   = (known after apply)
      + key_fingerprint      = (known after apply)
      + secret               = (sensitive value)
      + ses_smtp_password    = (sensitive value)
      + ses_smtp_password_v4 = (sensitive value)
      + status               = (known after apply)
      + user                 = "jenkins-x-vault"
    }

  # module.eks-jx.module.vault.aws_iam_policy.aws_vault_user_policy will be updated in-place
  ~ resource "aws_iam_policy" "aws_vault_user_policy" {
        arn         = "arn:aws:iam::125346028423:policy/vault_us-east-1-2020061610022087670000000c"
        description = "Vault Policy for the provided IAM User"
        id          = "arn:aws:iam::125346028423:policy/vault_us-east-1-2020061610022087670000000c"
        name        = "vault_us-east-1-2020061610022087670000000c"
        name_prefix = "vault_us-east-1-"
        path        = "/"
      ~ policy      = jsonencode(
            {
              - Statement = [
                  - {
                      - Action   = [
                          - "dynamodb:UpdateItem",
                          - "dynamodb:Scan",
                          - "dynamodb:Query",
                          - "dynamodb:PutItem",
                          - "dynamodb:ListTagsOfResource",
                          - "dynamodb:ListTables",
                          - "dynamodb:GetRecords",
                          - "dynamodb:GetItem",
                          - "dynamodb:DescribeTimeToLive",
                          - "dynamodb:DescribeTable",
                          - "dynamodb:DescribeReservedCapacityOfferings",
                          - "dynamodb:DescribeReservedCapacity",
                          - "dynamodb:DescribeLimits",
                          - "dynamodb:DeleteItem",
                          - "dynamodb:CreateTable",
                          - "dynamodb:BatchWriteItem",
                          - "dynamodb:BatchGetItem",
                        ]
                      - Effect   = "Allow"
                      - Resource = "arn:aws:dynamodb:us-east-1:125346028423:table/vault-unseal-tf-jx-enhanced-dove-vl4tmEXB"
                      - Sid      = "DynamoDB"
                    },
                  - {
                      - Action   = [
                          - "s3:PutObject",
                          - "s3:GetObject",
                        ]
                      - Effect   = "Allow"
                      - Resource = "arn:aws:s3:::vault-unseal-tf-jx-enhanced-dove-20200616100156140500000002/*"
                      - Sid      = "S3"
                    },
                  - {
                      - Action   = "s3:ListBucket"
                      - Effect   = "Allow"
                      - Resource = "arn:aws:s3:::vault-unseal-tf-jx-enhanced-dove-20200616100156140500000002"
                      - Sid      = "S3List"
                    },
                  - {
                      - Action   = [
                          - "kms:Encrypt",
                          - "kms:Decrypt",
                        ]
                      - Effect   = "Allow"
                      - Resource = "arn:aws:kms:us-east-1:125346028423:key/5d2ca5a5-f2a8-493c-85b3-677d5f58ecc8"
                      - Sid      = "KMS"
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> (known after apply)
    }

  # module.eks-jx.module.vault.aws_iam_user.jenkins-x-vault[0] will be created
  + resource "aws_iam_user" "jenkins-x-vault" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "jenkins-x-vault"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # module.eks-jx.module.vault.aws_iam_user_policy_attachment.attach_vault_policy_to_user must be replaced
-/+ resource "aws_iam_user_policy_attachment" "attach_vault_policy_to_user" {
      ~ id         = "Sudoaccess-20200616102253510200000001" -> (known after apply)
        policy_arn = "arn:aws:iam::125346028423:policy/vault_us-east-1-2020061610022087670000000c"
      ~ user       = "Sudoaccess" -> "jenkins-x-vault" # forces replacement
    }

  # module.eks-jx.module.vault.aws_kms_key.kms_vault_unseal will be updated in-place
  ~ resource "aws_kms_key" "kms_vault_unseal" {
        arn                      = "arn:aws:kms:us-east-1:125346028423:key/5d2ca5a5-f2a8-493c-85b3-677d5f58ecc8"
        customer_master_key_spec = "SYMMETRIC_DEFAULT"
        description              = "KMS Key for bank vault unseal"
        enable_key_rotation      = false
        id                       = "5d2ca5a5-f2a8-493c-85b3-677d5f58ecc8"
        is_enabled               = true
        key_id                   = "5d2ca5a5-f2a8-493c-85b3-677d5f58ecc8"
        key_usage                = "ENCRYPT_DECRYPT"
      ~ policy                   = jsonencode(
            {
              - Statement = [
                  - {
                      - Action    = "kms:*"
                      - Effect    = "Allow"
                      - Principal = {
                          - AWS = [
                              - "arn:aws:iam::125346028423:root",
                              - "arn:aws:iam::125346028423:user/Sudoaccess",
                            ]
                        }
                      - Resource  = "*"
                      - Sid       = "EnableIAMUserPermissions"
                    },
                ]
              - Version   = "2012-10-17"
            }
        ) -> (known after apply)
        tags                     = {}
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_cert_manager.data.aws_iam_policy_document.assume_role_with_oidc[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "assume_role_with_oidc"  {
      + id   = (known after apply)
      + json = (known after apply)

      + statement {
          + actions = [
              + "sts:AssumeRoleWithWebIdentity",
            ]
          + effect  = "Allow"

          + condition {
              + test     = "StringEquals"
              + values   = [
                  + (known after apply),
                ]
              + variable = "oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789:sub"
            }

          + principals {
              + identifiers = [
                  + "arn:aws:iam::125346028423:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789",
                ]
              + type        = "Federated"
            }
        }
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_cert_manager.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = (known after apply)
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "tf-tf-jx-enhanced-dove-sa-role-cert_manager-mVz8O3WT"
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_cert_manager.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::125346028423:policy/jenkins-x-cert-manager20200616100156151100000008"
      + role       = "tf-tf-jx-enhanced-dove-sa-role-cert_manager-mVz8O3WT"
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_cm_cainjector.data.aws_iam_policy_document.assume_role_with_oidc[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "assume_role_with_oidc"  {
      + id   = (known after apply)
      + json = (known after apply)

      + statement {
          + actions = [
              + "sts:AssumeRoleWithWebIdentity",
            ]
          + effect  = "Allow"

          + condition {
              + test     = "StringEquals"
              + values   = [
                  + (known after apply),
                ]
              + variable = "oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789:sub"
            }

          + principals {
              + identifiers = [
                  + "arn:aws:iam::125346028423:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789",
                ]
              + type        = "Federated"
            }
        }
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_cm_cainjector.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = (known after apply)
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "tf-tf-jx-enhanced-dove-sa-role-cm_cainjector-mVz8O3WT"
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_cm_cainjector.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::125346028423:policy/jenkins-x-cert-manager20200616100156151100000008"
      + role       = "tf-tf-jx-enhanced-dove-sa-role-cm_cainjector-mVz8O3WT"
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_controllerbuild.data.aws_iam_policy_document.assume_role_with_oidc[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "assume_role_with_oidc"  {
      + id   = (known after apply)
      + json = (known after apply)

      + statement {
          + actions = [
              + "sts:AssumeRoleWithWebIdentity",
            ]
          + effect  = "Allow"

          + condition {
              + test     = "StringEquals"
              + values   = [
                  + (known after apply),
                ]
              + variable = "oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789:sub"
            }

          + principals {
              + identifiers = [
                  + "arn:aws:iam::125346028423:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789",
                ]
              + type        = "Federated"
            }
        }
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_controllerbuild.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = (known after apply)
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "tf-tf-jx-enhanced-dove-sa-role-ctrlb-mVz8O3WT"
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_controllerbuild.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
      + role       = "tf-tf-jx-enhanced-dove-sa-role-ctrlb-mVz8O3WT"
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_external_dns.data.aws_iam_policy_document.assume_role_with_oidc[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "assume_role_with_oidc"  {
      + id   = (known after apply)
      + json = (known after apply)

      + statement {
          + actions = [
              + "sts:AssumeRoleWithWebIdentity",
            ]
          + effect  = "Allow"

          + condition {
              + test     = "StringEquals"
              + values   = [
                  + (known after apply),
                ]
              + variable = "oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789:sub"
            }

          + principals {
              + identifiers = [
                  + "arn:aws:iam::125346028423:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789",
                ]
              + type        = "Federated"
            }
        }
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_external_dns.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = (known after apply)
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "tf-tf-jx-enhanced-dove-sa-role-external_dns-mVz8O3WT"
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_external_dns.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::125346028423:policy/jenkins-x-external-dns20200616100156148000000006"
      + role       = "tf-tf-jx-enhanced-dove-sa-role-external_dns-mVz8O3WT"
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_jxui.data.aws_iam_policy_document.assume_role_with_oidc[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "assume_role_with_oidc"  {
      + id   = (known after apply)
      + json = (known after apply)

      + statement {
          + actions = [
              + "sts:AssumeRoleWithWebIdentity",
            ]
          + effect  = "Allow"

          + condition {
              + test     = "StringEquals"
              + values   = [
                  + (known after apply),
                ]
              + variable = "oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789:sub"
            }

          + principals {
              + identifiers = [
                  + "arn:aws:iam::125346028423:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789",
                ]
              + type        = "Federated"
            }
        }
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_jxui.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = (known after apply)
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "tf-tf-jx-enhanced-dove-sa-role-jxui-mVz8O3WT"
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_jxui.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
      + role       = "tf-tf-jx-enhanced-dove-sa-role-jxui-mVz8O3WT"
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_tekton_bot.data.aws_iam_policy_document.assume_role_with_oidc[0] will be read during apply
  # (config refers to values not yet known)
 <= data "aws_iam_policy_document" "assume_role_with_oidc"  {
      + id   = (known after apply)
      + json = (known after apply)

      + statement {
          + actions = [
              + "sts:AssumeRoleWithWebIdentity",
            ]
          + effect  = "Allow"

          + condition {
              + test     = "StringEquals"
              + values   = [
                  + (known after apply),
                ]
              + variable = "oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789:sub"
            }

          + principals {
              + identifiers = [
                  + "arn:aws:iam::125346028423:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/7CFFB634D9685089EE4559A17B605789",
                ]
              + type        = "Federated"
            }
        }
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_tekton_bot.aws_iam_role.this[0] will be created
  + resource "aws_iam_role" "this" {
      + arn                   = (known after apply)
      + assume_role_policy    = (known after apply)
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "tf-tf-jx-enhanced-dove-sa-role-tekton-bot-mVz8O3WT"
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_tekton_bot.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::125346028423:policy/jenkins-x-tekton-bot20200616100156147300000005"
      + role       = "tf-tf-jx-enhanced-dove-sa-role-tekton-bot-mVz8O3WT"
    }

Plan: 25 to add, 2 to change, 2 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.eks-jx.module.cluster.null_resource.kubeconfig: Destroying... [id=5588123308192055308]
module.eks-jx.module.cluster.null_resource.kubeconfig: Destruction complete after 0s
module.eks-jx.module.vault.aws_iam_user_policy_attachment.attach_vault_policy_to_user: Destroying... [id=Sudoaccess-20200616102253510200000001]
module.eks-jx.module.vault.aws_iam_user.jenkins-x-vault[0]: Creating...
module.eks-jx.module.cluster.null_resource.kubeconfig: Creating...
module.eks-jx.module.cluster.null_resource.kubeconfig: Provisioning with 'local-exec'...
module.eks-jx.module.cluster.null_resource.kubeconfig (local-exec): Executing: ["/bin/bash" "-c" "aws eks update-kubeconfig --name tf-jx-enhanced-dove"]
module.eks-jx.module.vault.aws_iam_user_policy_attachment.attach_vault_policy_to_user: Destruction complete after 2s

module.eks-jx.module.cluster.null_resource.kubeconfig (local-exec): An error occurred (ResourceNotFoundException) when calling the DescribeCluster operation: No cluster found for name: tf-jx-enhanced-dove.

module.eks-jx.module.vault.aws_iam_user.jenkins-x-vault[0]: Creation complete after 8s [id=jenkins-x-vault]
module.eks-jx.module.vault.data.aws_iam_user.vault_user: Refreshing state...
module.eks-jx.module.vault.aws_iam_access_key.jenkins-x-vault[0]: Creating...
module.eks-jx.module.vault.aws_iam_access_key.jenkins-x-vault[0]: Creation complete after 2s [id=AKIAR2LZUTOD4IPYTP6P]
module.eks-jx.module.vault.aws_kms_key.kms_vault_unseal: Modifying... [id=5d2ca5a5-f2a8-493c-85b3-677d5f58ecc8]
module.eks-jx.module.vault.aws_kms_key.kms_vault_unseal: Still modifying... [id=5d2ca5a5-f2a8-493c-85b3-677d5f58ecc8, 10s elapsed]
module.eks-jx.module.vault.aws_kms_key.kms_vault_unseal: Modifications complete after 11s [id=5d2ca5a5-f2a8-493c-85b3-677d5f58ecc8]
module.eks-jx.module.vault.data.aws_iam_policy_document.vault_iam_user_policy_document: Refreshing state...
module.eks-jx.module.vault.aws_iam_user_policy_attachment.attach_vault_policy_to_user: Creating...
module.eks-jx.module.vault.aws_iam_user_policy_attachment.attach_vault_policy_to_user: Creation complete after 4s [id=jenkins-x-vault-20200616104914925800000001]

Error: Error running command 'aws eks update-kubeconfig --name tf-jx-enhanced-dove': exit status 254. Output:
An error occurred (ResourceNotFoundException) when calling the DescribeCluster operation: No cluster found for name: tf-jx-enhanced-dove.

```
