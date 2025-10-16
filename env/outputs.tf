
# Outputs for VPC Module

output "vpc_id" {
  description = "The ID of the VPC created"
  value       = module.vpc_module.vpc_id_out
}

output "subnet_1_id" {
  description = "The ID of Subnet 1"
  value       = module.vpc_module.subnet_1_id_out
}

output "subnet_2_id" {
  description = "The ID of Subnet 2"
  value       = module.vpc_module.subnet_2_id_out
}

output "subnet_3_id" {
  description = "The ID of Subnet 3"
  value       = module.vpc_module.subnet_3_id_out
}

output "subnet_4_id" {
  description = "The ID of Subnet 4"
  value       = module.vpc_module.subnet_4_id_out
}

# Outputs for NAT Gateway Module

output "nat_gateway_id" {
  description = "The ID of the NAT Gateway (if created)"
  value       = length(module.nat_gateway_module) > 0 ? module.nat_gateway_module[0].nat_gateway_id_out : null
}

output "nat_gateway_ip" {
  description = "The public IP of the NAT Gateway (if created)"
  value       = length(module.nat_gateway_module) > 0 ? module.nat_gateway_module[0].nat_gateway_ip_out : null
}
