
output "vpc_id" {
  description = "vpc id"
  value       = module.vpc.vpc_id
}
output "vpc_cidr_block" {
  description = "vpc cidr block"
  value       = module.vpc.vpc_cidr_block
}
output "private_subnets" {
  description = "private subnets"
  value       = module.vpc.private_subnets
}
output "public_subnets" {
  description = "public subnets"
  value       = module.vpc.public_subnets
}
output "nat_public_ips" {
  description = "nat gateway"
  value       = module.vpc.nat_public_ips
}
output "azs" {
  description = "availability zones"
  value       = module.vpc.azs
}
