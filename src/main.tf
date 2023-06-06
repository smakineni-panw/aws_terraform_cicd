terraform {
 backend "s3" {
    bucket         = "cloudguru-tf-state"
    key            = "tf-infra/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }

    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 3.27"
        }
    }
}

# Configure and downloading plugins for aws
provider "aws" {
    region = "us-east-1"
}

module "tf-state" {
  source      = "./modules/tf-state"
  bucket_name = "cloudguru-tf-state"
}
