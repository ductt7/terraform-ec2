output "ec2" {
  value = {
    public_ip = [ for v in aws_instance.ductt-ec2 : v.public_ip ]
  }
}