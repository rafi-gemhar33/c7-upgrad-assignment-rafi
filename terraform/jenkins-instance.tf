# Jenkins instance in VPC Private Subnet
module "ec2_jenkins_private" {
  depends_on = [module.vpc]
  source     = "terraform-aws-modules/ec2-instance/aws"
  version    = "2.17.0"
  name          = "ec2-jenkins"
  ami           = "ami-04505e74c0741db8d"
  instance_type = var.instance_type
  key_name      = var.instance_keypair
  vpc_security_group_ids = [module.private_sg.this_security_group_id]
  subnet_ids = [
    module.vpc.private_subnets[0],
    module.vpc.private_subnets[1]
  ]
  instance_count = var.private_instance_count
}
