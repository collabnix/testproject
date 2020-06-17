```
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
- Downloading plugin for provider "local" (hashicorp/local) 1.4.0...
- Downloading plugin for provider "kubernetes" (hashicorp/kubernetes) 1.11.1...
- Downloading plugin for provider "null" (hashicorp/null) 2.1.2...
- Downloading plugin for provider "template" (hashicorp/template) 2.1.2...
- Downloading plugin for provider "random" (hashicorp/random) 2.2.1...
- Downloading plugin for provider "aws" (hashicorp/aws) 2.66.0...

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
 # module.eks-jx.module.vault.aws_dynamodb_table.vault-dynamodb-table will be created
  + resource "aws_dynamodb_table" "vault-dynamodb-table" {
      + arn              = (known after apply)
      + billing_mode     = "PROVISIONED"
      + hash_key         = "Path"
      + id               = (known after apply)
      + name             = (known after apply)
      + range_key        = "Key"
      + read_capacity    = 2
      + stream_arn       = (known after apply)
      + stream_label     = (known after apply)
      + stream_view_type = (known after apply)
      + tags             = {
          + "Name" = "vault-dynamo-db-table"
        }
      + write_capacity   = 2

      + attribute {
          + name = "Key"
          + type = "S"
        }
      + attribute {
          + name = "Path"
          + type = "S"
        }

      + point_in_time_recovery {
          + enabled = (known after apply)
        }

      + server_side_encryption {
          + enabled     = (known after apply)
          + kms_key_arn = (known after apply)
        }
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

  # module.eks-jx.module.vault.aws_iam_policy.aws_vault_user_policy will be created
  + resource "aws_iam_policy" "aws_vault_user_policy" {
      + arn         = (known after apply)
      + description = "Vault Policy for the provided IAM User"
      + id          = (known after apply)
      + name        = (known after apply)
      + name_prefix = "vault_us-east-1-"
      + path        = "/"
      + policy      = (known after apply)
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

  # module.eks-jx.module.vault.aws_iam_user_policy_attachment.attach_vault_policy_to_user will be created
  + resource "aws_iam_user_policy_attachment" "attach_vault_policy_to_user" {
      + id         = (known after apply)
      + policy_arn = (known after apply)
      + user       = "jenkins-x-vault"
    }

  # module.eks-jx.module.vault.aws_kms_key.kms_vault_unseal will be created
  + resource "aws_kms_key" "kms_vault_unseal" {
      + arn                      = (known after apply)
      + customer_master_key_spec = "SYMMETRIC_DEFAULT"
      + description              = "KMS Key for bank vault unseal"
      + enable_key_rotation      = false
      + id                       = (known after apply)
      + is_enabled               = true
      + key_id                   = (known after apply)
      + key_usage                = "ENCRYPT_DECRYPT"
      + policy                   = (known after apply)
    }

  # module.eks-jx.module.vault.aws_s3_bucket.vault-unseal-bucket will be created
  + resource "aws_s3_bucket" "vault-unseal-bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = "private"
      + arn                         = (known after apply)
      + bucket                      = (known after apply)
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags                        = {
          + "Name" = "Vault unseal bucket"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + versioning {
          + enabled    = false
          + mfa_delete = false
        }
    }

  # module.eks-jx.module.vault.random_string.suffix will be created
  + resource "random_string" "suffix" {
      + id          = (known after apply)
      + length      = 8
      + lower       = true
      + min_lower   = 0
      + min_numeric = 0
      + min_special = 0
      + min_upper   = 0
      + number      = true
      + result      = (known after apply)
      + special     = false
      + upper       = true
    }

  # module.eks-jx.module.cluster.module.eks.data.null_data_source.node_groups[0] will be read during apply
  # (config refers to values not yet known)
 <= data "null_data_source" "node_groups"  {
      + has_computed_default = (known after apply)
      + id                   = (known after apply)
      + inputs               = {
          + "aws_auth"        = (known after apply)
          + "cluster_name"    = (known after apply)
          + "role_CNI_Policy" = (known after apply)
          + "role_Container"  = (known after apply)
          + "role_NodePolicy" = (known after apply)
        }
      + outputs              = (known after apply)
      + random               = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.data.template_file.kubeconfig[0] will be read during apply
  # (config refers to values not yet known)
 <= data "template_file" "kubeconfig"  {
      + id       = (known after apply)
      + rendered = (known after apply)
      + template = <<~EOT
            apiVersion: v1
            preferences: {}
            kind: Config

            clusters:
            - cluster:
                server: ${endpoint}
                certificate-authority-data: ${cluster_auth_base64}
              name: ${kubeconfig_name}

            contexts:
            - context:
                cluster: ${kubeconfig_name}
                user: ${kubeconfig_name}
              name: ${kubeconfig_name}

            current-context: ${kubeconfig_name}

            users:
            - name: ${kubeconfig_name}
              user:
                exec:
                  apiVersion: client.authentication.k8s.io/v1alpha1
                  command: ${aws_authenticator_command}
                  args:
            ${aws_authenticator_command_args}
            ${aws_authenticator_additional_args}
            ${aws_authenticator_env_variables}
        EOT
      + vars     = {
          + "aws_authenticator_additional_args" = ""
          + "aws_authenticator_command"         = "aws-iam-authenticator"
          + "aws_authenticator_command_args"    = (known after apply)
          + "aws_authenticator_env_variables"   = ""
          + "cluster_auth_base64"               = (known after apply)
          + "endpoint"                          = (known after apply)
          + "kubeconfig_name"                   = (known after apply)
        }
    }

  # module.eks-jx.module.cluster.module.eks.data.template_file.userdata[0] will be read during apply
  # (config refers to values not yet known)
 <= data "template_file" "userdata"  {
      + id       = (known after apply)
      + rendered = (known after apply)
      + template = (known after apply)
      + vars     = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.data.template_file.worker_role_arns[0] will be read during apply
  # (config refers to values not yet known)
 <= data "template_file" "worker_role_arns"  {
      + id       = (known after apply)
      + rendered = (known after apply)
      + template = <<~EOT
            - rolearn: ${worker_role_arn}
              username: system:node:{{EC2PrivateDNSName}}
              groups:
                - system:bootstrappers
                - system:nodes
                %{~ if platform == "windows" ~}
                - eks:kube-proxy-windows
                %{~ endif ~}
        EOT
      + vars     = {
          + "platform"        = (known after apply)
          + "worker_role_arn" = (known after apply)
        }
    }

  # module.eks-jx.module.cluster.module.eks.aws_autoscaling_group.workers[0] will be created
  + resource "aws_autoscaling_group" "workers" {
      + arn                       = (known after apply)
      + availability_zones        = (known after apply)
      + default_cooldown          = (known after apply)
      + desired_capacity          = (known after apply)
      + enabled_metrics           = (known after apply)
      + force_delete              = (known after apply)
      + health_check_grace_period = (known after apply)
      + health_check_type         = (known after apply)
      + id                        = (known after apply)
      + launch_configuration      = (known after apply)
      + load_balancers            = (known after apply)
      + max_instance_lifetime     = (known after apply)
      + max_size                  = (known after apply)
      + metrics_granularity       = "1Minute"
      + min_size                  = (known after apply)
      + name                      = (known after apply)
      + name_prefix               = (known after apply)
      + placement_group           = (known after apply)
      + protect_from_scale_in     = (known after apply)
      + service_linked_role_arn   = (known after apply)
      + suspended_processes       = (known after apply)
      + tags                      = (known after apply)
      + target_group_arns         = (known after apply)
      + termination_policies      = (known after apply)
      + vpc_zone_identifier       = (known after apply)
      + wait_for_capacity_timeout = "10m"
    }

  # module.eks-jx.module.cluster.module.eks.aws_eks_cluster.this[0] will be created
  + resource "aws_eks_cluster" "this" {
      + arn                   = (known after apply)
      + certificate_authority = (known after apply)
      + created_at            = (known after apply)
      + endpoint              = (known after apply)
      + id                    = (known after apply)
      + identity              = (known after apply)
      + name                  = (known after apply)
      + platform_version      = (known after apply)
      + role_arn              = (known after apply)
      + status                = (known after apply)
      + version               = "1.15"

      + timeouts {
          + create = "30m"
          + delete = "15m"
        }

      + vpc_config {
          + cluster_security_group_id = (known after apply)
          + endpoint_private_access   = false
          + endpoint_public_access    = true
          + public_access_cidrs       = [
              + "0.0.0.0/0",
            ]
          + security_group_ids        = (known after apply)
          + subnet_ids                = (known after apply)
          + vpc_id                    = (known after apply)
        }
    }

  # module.eks-jx.module.cluster.module.eks.aws_iam_instance_profile.workers[0] will be created
  + resource "aws_iam_instance_profile" "workers" {
      + arn         = (known after apply)
      + create_date = (known after apply)
      + id          = (known after apply)
      + name        = (known after apply)
      + name_prefix = (known after apply)
      + path        = "/"
      + role        = (known after apply)
      + roles       = (known after apply)
      + unique_id   = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.aws_iam_openid_connect_provider.oidc_provider[0] will be created
  + resource "aws_iam_openid_connect_provider" "oidc_provider" {
      + arn             = (known after apply)
      + client_id_list  = [
          + "sts.amazonaws.com",
        ]
      + id              = (known after apply)
      + thumbprint_list = [
          + "9e99a48a9960b14926bb7f3b02e22da2b0ab7280",
        ]
      + url             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.aws_iam_role.cluster[0] will be created
  + resource "aws_iam_role" "cluster" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "eks.amazonaws.com"
                        }
                      + Sid       = "EKSClusterAssumeRole"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = true
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = (known after apply)
      + name_prefix           = (known after apply)
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.aws_iam_role.workers[0] will be created
  + resource "aws_iam_role" "workers" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "ec2.amazonaws.com"
                        }
                      + Sid       = "EKSWorkerAssumeRole"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = true
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = (known after apply)
      + name_prefix           = (known after apply)
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy[0] will be created
  + resource "aws_iam_role_policy_attachment" "cluster_AmazonEKSClusterPolicy" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
      + role       = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.aws_iam_role_policy_attachment.cluster_AmazonEKSServicePolicy[0] will be created
  + resource "aws_iam_role_policy_attachment" "cluster_AmazonEKSServicePolicy" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
      + role       = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.aws_iam_role_policy_attachment.workers_AmazonEC2ContainerRegistryReadOnly[0] will be created
  + resource "aws_iam_role_policy_attachment" "workers_AmazonEC2ContainerRegistryReadOnly" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
      + role       = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.aws_iam_role_policy_attachment.workers_AmazonEKSWorkerNodePolicy[0] will be created
  + resource "aws_iam_role_policy_attachment" "workers_AmazonEKSWorkerNodePolicy" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
      + role       = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.aws_iam_role_policy_attachment.workers_AmazonEKS_CNI_Policy[0] will be created
  + resource "aws_iam_role_policy_attachment" "workers_AmazonEKS_CNI_Policy" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
      + role       = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.aws_iam_role_policy_attachment.workers_additional_policies[0] will be created
  + resource "aws_iam_role_policy_attachment" "workers_additional_policies" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"
      + role       = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.aws_launch_configuration.workers[0] will be created
  + resource "aws_launch_configuration" "workers" {
      + arn                         = (known after apply)
      + associate_public_ip_address = (known after apply)
      + ebs_optimized               = (known after apply)
      + enable_monitoring           = (known after apply)
      + iam_instance_profile        = (known after apply)
      + id                          = (known after apply)
      + image_id                    = (known after apply)
      + instance_type               = (known after apply)
      + key_name                    = (known after apply)
      + name                        = (known after apply)
      + name_prefix                 = (known after apply)
      + placement_tenancy           = (known after apply)
      + security_groups             = (known after apply)
      + spot_price                  = (known after apply)
      + user_data_base64            = (known after apply)

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + no_device             = (known after apply)
          + snapshot_id           = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = true
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # module.eks-jx.module.cluster.module.eks.aws_security_group.cluster[0] will be created
  + resource "aws_security_group" "cluster" {
      + arn                    = (known after apply)
      + description            = "EKS cluster security group."
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.aws_security_group.workers[0] will be created
  + resource "aws_security_group" "workers" {
      + arn                    = (known after apply)
      + description            = "Security group for all nodes in the cluster."
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.aws_security_group_rule.cluster_egress_internet[0] will be created
  + resource "aws_security_group_rule" "cluster_egress_internet" {
      + cidr_blocks              = [
          + "0.0.0.0/0",
        ]
      + description              = "Allow cluster egress access to the Internet."
      + from_port                = 0
      + id                       = (known after apply)
      + protocol                 = "-1"
      + security_group_id        = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 0
      + type                     = "egress"
    }

  # module.eks-jx.module.cluster.module.eks.aws_security_group_rule.cluster_https_worker_ingress[0] will be created
  + resource "aws_security_group_rule" "cluster_https_worker_ingress" {
      + description              = "Allow pods to communicate with the EKS cluster API."
      + from_port                = 443
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 443
      + type                     = "ingress"
    }

  # module.eks-jx.module.cluster.module.eks.aws_security_group_rule.workers_egress_internet[0] will be created
  + resource "aws_security_group_rule" "workers_egress_internet" {
      + cidr_blocks              = [
          + "0.0.0.0/0",
        ]
      + description              = "Allow nodes all egress to the Internet."
      + from_port                = 0
      + id                       = (known after apply)
      + protocol                 = "-1"
      + security_group_id        = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 0
      + type                     = "egress"
    }

  # module.eks-jx.module.cluster.module.eks.aws_security_group_rule.workers_ingress_cluster[0] will be created
  + resource "aws_security_group_rule" "workers_ingress_cluster" {
      + description              = "Allow workers pods to receive communication from the cluster control plane."
      + from_port                = 1025
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 65535
      + type                     = "ingress"
    }

  # module.eks-jx.module.cluster.module.eks.aws_security_group_rule.workers_ingress_cluster_https[0] will be created
  + resource "aws_security_group_rule" "workers_ingress_cluster_https" {
      + description              = "Allow pods running extension API servers on port 443 to receive communication from cluster control plane."
      + from_port                = 443
      + id                       = (known after apply)
      + protocol                 = "tcp"
      + security_group_id        = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 443
      + type                     = "ingress"
    }

  # module.eks-jx.module.cluster.module.eks.aws_security_group_rule.workers_ingress_self[0] will be created
  + resource "aws_security_group_rule" "workers_ingress_self" {
      + description              = "Allow node to communicate with each other."
      + from_port                = 0
      + id                       = (known after apply)
      + protocol                 = "-1"
      + security_group_id        = (known after apply)
      + self                     = false
      + source_security_group_id = (known after apply)
      + to_port                  = 65535
      + type                     = "ingress"
    }

  # module.eks-jx.module.cluster.module.eks.kubernetes_config_map.aws_auth[0] will be created
  + resource "kubernetes_config_map" "aws_auth" {
      + data = (known after apply)
      + id   = (known after apply)

      + metadata {
          + generation       = (known after apply)
          + name             = "aws-auth"
          + namespace        = "kube-system"
          + resource_version = (known after apply)
          + self_link        = (known after apply)
          + uid              = (known after apply)
        }
    }

  # module.eks-jx.module.cluster.module.eks.local_file.kubeconfig[0] will be created
  + resource "local_file" "kubeconfig" {
      + content              = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = (known after apply)
      + id                   = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.null_resource.wait_for_cluster[0] will be created
  + resource "null_resource" "wait_for_cluster" {
      + id = (known after apply)
    }

  # module.eks-jx.module.cluster.module.eks.random_pet.workers[0] will be created
  + resource "random_pet" "workers" {
      + id        = (known after apply)
      + keepers   = (known after apply)
      + length    = 2
      + separator = "-"
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
              + variable = (known after apply)
            }

          + principals {
              + identifiers = [
                  + (known after apply),
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
      + name                  = (known after apply)
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_cert_manager.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = (known after apply)
      + role       = (known after apply)
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
              + variable = (known after apply)
            }

          + principals {
              + identifiers = [
                  + (known after apply),
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
      + name                  = (known after apply)
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_cm_cainjector.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = (known after apply)
      + role       = (known after apply)
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
              + variable = (known after apply)
            }

          + principals {
              + identifiers = [
                  + (known after apply),
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
      + name                  = (known after apply)
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_controllerbuild.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
      + role       = (known after apply)
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
              + variable = (known after apply)
            }

          + principals {
              + identifiers = [
                  + (known after apply),
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
      + name                  = (known after apply)
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_external_dns.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = (known after apply)
      + role       = (known after apply)
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
              + variable = (known after apply)
            }

          + principals {
              + identifiers = [
                  + (known after apply),
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
      + name                  = (known after apply)
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_jxui.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
      + role       = (known after apply)
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
              + variable = (known after apply)
            }

          + principals {
              + identifiers = [
                  + (known after apply),
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
      + name                  = (known after apply)
      + path                  = "/"
      + unique_id             = (known after apply)
    }

  # module.eks-jx.module.cluster.module.iam_assumable_role_tekton_bot.aws_iam_role_policy_attachment.custom[0] will be created
  + resource "aws_iam_role_policy_attachment" "custom" {
      + id         = (known after apply)
      + policy_arn = (known after apply)
      + role       = (known after apply)
    }

  # module.eks-jx.module.cluster.module.vpc.aws_internet_gateway.this[0] will be created
  + resource "aws_internet_gateway" "this" {
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = (known after apply)
      + vpc_id   = (known after apply)
    }

  # module.eks-jx.module.cluster.module.vpc.aws_route.public_internet_gateway[0] will be created
  + resource "aws_route" "public_internet_gateway" {
      + destination_cidr_block     = "0.0.0.0/0"
      + destination_prefix_list_id = (known after apply)
      + egress_only_gateway_id     = (known after apply)
      + gateway_id                 = (known after apply)
      + id                         = (known after apply)
      + instance_id                = (known after apply)
      + instance_owner_id          = (known after apply)
      + nat_gateway_id             = (known after apply)
      + network_interface_id       = (known after apply)
      + origin                     = (known after apply)
      + route_table_id             = (known after apply)
      + state                      = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.eks-jx.module.cluster.module.vpc.aws_route_table.public[0] will be created
  + resource "aws_route_table" "public" {
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = (known after apply)
      + vpc_id           = (known after apply)
    }

  # module.eks-jx.module.cluster.module.vpc.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.eks-jx.module.cluster.module.vpc.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.eks-jx.module.cluster.module.vpc.aws_route_table_association.public[2] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.eks-jx.module.cluster.module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-1a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.1.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = (known after apply)
      + vpc_id                          = (known after apply)
    }

  # module.eks-jx.module.cluster.module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-1b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.2.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = (known after apply)
      + vpc_id                          = (known after apply)
    }

  # module.eks-jx.module.cluster.module.vpc.aws_subnet.public[2] will be created
  + resource "aws_subnet" "public" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-1c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.3.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = (known after apply)
      + vpc_id                          = (known after apply)
    }

  # module.eks-jx.module.cluster.module.vpc.aws_vpc.this[0] will be created
  + resource "aws_vpc" "this" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = false
      + cidr_block                       = "10.0.0.0/16"
      + default_network_acl_id           = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_group_id        = (known after apply)
      + dhcp_options_id                  = (known after apply)
      + enable_classiclink               = (known after apply)
      + enable_classiclink_dns_support   = (known after apply)
      + enable_dns_hostnames             = true
      + enable_dns_support               = true
      + id                               = (known after apply)
      + instance_tenancy                 = "default"
      + ipv6_association_id              = (known after apply)
      + ipv6_cidr_block                  = (known after apply)
      + main_route_table_id              = (known after apply)
      + owner_id                         = (known after apply)
      + tags                             = (known after apply)
    }

Plan: 74 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' wi
```
