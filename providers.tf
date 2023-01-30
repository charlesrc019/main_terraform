terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

    github = {
       source = "integrations/github"
       version = "~> 5.0"
    }
  }
}
provider "aws" {
  region                   = "us-west-2"
  shared_credentials_files = ["~/Documents/SynopticData/Terraform/credentials"]
  profile                  = "VScode"
}

provider "github" {
   token = "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"
   organization = "synoptic"
}