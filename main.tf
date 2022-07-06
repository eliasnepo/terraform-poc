provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

provider "aws" {
  alias = "us-east-2"
  version = "~> 2.0"
  region  = "us-east-2"
}

data "aws_caller_identity" "current" {}

module "queues" {
  source = "./modules/queues"
  env = var.env
}