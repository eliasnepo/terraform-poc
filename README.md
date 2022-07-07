# Terraform annotations

## Fundamentals

- Terraform is idempotent, once the resource is created, terraform just makes changes on it.
- Terraform is better to provide your infraestructure, while Ansible can management and do config automations
- State management:
    - Terraform creates a state file that contains everything that is created
    - State file must be shared between the developers
- Output is used to get the return from a created resource. For example: an IP from an EC2 machine.
- Data sources is used to get infraestructures that were already provided

## Commands

Initialize the directory and pull the providers

```hcl
terraform init
```

Format HCL code

```hcl
terraform fmt
```

Validate code for syntax

```hcl
terraform validate
```

Plan the deployment for your infraestructure and put it on output.out

```hcl
terraform plan -out output.out
```

Apply the deployment for your infraestructure and put it on output.out

```hcl
terraform apply output.out
```

Apply the deployment for your infraestructure using the tfvars (variables) of the dev environment

```hcl
terraform apply -var-file="./envirionment/dev.tfvars"
```
