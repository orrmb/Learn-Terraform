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
}

#If you want use ec2 that created without terraform you need import 
#e.g terraform import aws_instance.<name> <Instance ID>
resource "aws_instance" "my-instance" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  tags = {
    Name = "orb-test"
  }
}

resource "aws_ec2_instance_state" "state" {
  instance_id = aws_instance.my-instance.id
  state       = "stopped"

}

#If you want use the aws_ec2_instance_state you need to import this!
import {
  to = aws_ec2_instance_state.state
  id = aws_instance.my-instance.id
}
