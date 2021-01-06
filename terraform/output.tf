output "vpc-public" {
  value = module.bookstore-vpc.public_subnets
}

output "vpc-private" {
  value = module.bookstore-vpc.private_subnets
}

output "vpc-cidr-block" {
  value = module.bookstore-vpc.vpc_cidr_block
}

output "azns" {
  value = module.bookstore-vpc.azs
}

output "default_sg" {
  value = module.bookstore-vpc.default_security_group_id
}