module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0b0dcb5067f052a63"
  instance_type          = "t2.micro"
  #key_name               = "user1"
  monitoring             = true
  #vpc_security_group_ids = [""]
  #subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}