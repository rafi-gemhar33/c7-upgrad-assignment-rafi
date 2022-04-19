module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"

  name        = "bastion-sg"
  description = "sg to ingress ssh access to bastion"
  vpc_id      = module.vpc.vpc_id
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["${chomp(data.http.myip.body)}/32"]
  egress_rules = ["all-all"]
}
