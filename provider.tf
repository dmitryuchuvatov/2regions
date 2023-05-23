terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# we initialize a provider
provider "aws" {
  profile = "default"
  region  = "eu-central-1"
}

# we create a new provider using alias london
provider "aws" {
  alias  = "london"
  region = "eu-west-2"
}
