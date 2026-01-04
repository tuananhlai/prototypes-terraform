terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.7.0"
    }
  }

  backend "s3" {
    # Key needs to be different for EVERY terraform project.
    key = "global/single-ec2-remote-state/terraform.tfstate"

    bucket         = "opentofu-remote-state-986377"
    region         = "ap-northeast-3"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
