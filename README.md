## Learn Terraform with AWS


We learn use Terraform with AWS provider.
Firts we need to create folder that will be our workspace

- In Linux & windows
```bash
mkdir terraform_worksapce
```
After that we need create file with name `main.tf`.
the ending `.tf` symbolizes that is a terraform file.

in Linux
```bash
touch main.tf
```
- In Windows you Can be created via Vscode or Pycharm to more convenience.

Now we need to import the AWS provider. 
Let's open the `main.tf` and enter this code to import:
```bash
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "default"
}
```
In this code we will import the provider and set some settings like region, profile and more..



