# Sample repo to create resources in two different regions

[Official documentation](https://developer.hashicorp.com/terraform/language/providers/configuration#alias-multiple-provider-configurations)


# Prerequisites

Install and configure Terraform as per [official documentation](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

# How To

## Clone repository

```
git clone https://github.com/dmitryuchuvatov/2regions.git
```

## Change folder

```
cd 2regions
```

## Initialize Terraform

```
terraform init
```

You should see the following output:

```
Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 4.0"...
- Installing hashicorp/aws v4.67.0...
- Installed hashicorp/aws v4.67.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

## Run Terraform Apply

```
terraform apply
```
When prompted, type **yes** and hit **Enter**:

```
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.rhel will be created
  + resource "aws_instance" "rhel" {
      + ami                                  = "ami-08d9bb4bfe39be5c2"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "server_2"
        }
      + tags_all                             = {
          + "Name" = "server_2"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)
    }

  # aws_instance.ubuntu will be created
  + resource "aws_instance" "ubuntu" {
      + ami                                  = "ami-0ec7f9846da6b0f61"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "server_1"
        }
      + tags_all                             = {
          + "Name" = "server_1"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.ubuntu: Creating...
aws_instance.rhel: Creating...
aws_instance.ubuntu: Still creating... [10s elapsed]
aws_instance.rhel: Still creating... [10s elapsed]
aws_instance.ubuntu: Still creating... [20s elapsed]
aws_instance.rhel: Still creating... [20s elapsed]
aws_instance.ubuntu: Still creating... [30s elapsed]
aws_instance.rhel: Still creating... [30s elapsed]
aws_instance.ubuntu: Creation complete after 31s [id=i-0c824afcd8dd95cf0]
aws_instance.rhel: Creation complete after 32s [id=i-0924a9862589aa81b]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```

## Clean up

```
terraform destroy
```
When prompted, type **yes** and hit **Enter**:

```
aws_instance.rhel: Refreshing state... [id=i-0924a9862589aa81b]
aws_instance.ubuntu: Refreshing state... [id=i-0c824afcd8dd95cf0]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
  - destroy

Terraform will perform the following actions:

...

Plan: 0 to add, 0 to change, 2 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_instance.rhel: Destroying... [id=i-0924a9862589aa81b]
aws_instance.ubuntu: Destroying... [id=i-0c824afcd8dd95cf0]
aws_instance.rhel: Still destroying... [id=i-0924a9862589aa81b, 10s elapsed]
aws_instance.ubuntu: Still destroying... [id=i-0c824afcd8dd95cf0, 10s elapsed]
aws_instance.rhel: Still destroying... [id=i-0924a9862589aa81b, 20s elapsed]
aws_instance.ubuntu: Still destroying... [id=i-0c824afcd8dd95cf0, 20s elapsed]
aws_instance.rhel: Destruction complete after 30s
aws_instance.ubuntu: Destruction complete after 29s

Destroy complete! Resources: 2 destroyed.
```
