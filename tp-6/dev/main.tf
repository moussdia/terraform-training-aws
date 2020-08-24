provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWYLAODGM2M37FRMH"
  secret_key = "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"
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-moussdia"
    key    = "moussdia-dev.tfstate"
    region = "us-east-1"
    access_key = "AKIAWYLAODGM2M37FRMH"
    secret_key = "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"
  }
}

module "ec2" {
  source = "../modules/ec2module"
  instancetype = "t2.nano"
  aws_common_tag = {
    Name = "ec2-dev-moussdia"
  }
  sg_name = "dev-moussdia-sg"
}
