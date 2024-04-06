provider "aws" {
  region = "ap-southeast-1"
}

data "aws_ami" "amazon-linux-2" {
 most_recent = true


 filter {
   name   = "owner-alias"
   values = ["amazon"]
 }


 filter {
   name   = "name"
   values = ["amzn2-ami-hvm*"]
 }
}

resource "aws_instance" "ductt-ec2" {
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = var.instance_type
}
