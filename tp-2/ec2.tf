provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWYLAODGM2M37FRMH"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0083662ba17882949"
  instance_type = "t2.micro"
  key_name      = "devops-moussdia"
  tags = {
    Name = "ec2-moussdia"
  }
  root_block_device {
    delete_on_termination = true
  }
}
