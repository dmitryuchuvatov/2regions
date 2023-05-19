terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-central-1"
}

provider "aws" {
  alias  = "london"
  region = "eu-west-2"
}