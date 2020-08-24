provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWYLAODGM2M37FRMH"
  secret_key = "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"
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-moussdia"
    key    = "moussdia-prod.tfstate"
    region = "us-east-1"
    access_key = "AKIAWYLAODGM2M37FRMH"
    secret_key = "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"
  }
}

module "ec2" {
  source = "../modules/ec2module"
  instancetype = "t2.micro"
  aws_common_tag = {
    Name = "ec2-prod-moussdia"
  }
  sg_name = "prod-moussdia-sg"
}
