locals {
  current_project_tag = var.current_project_tag
}


# We can not pass the variable into the variable block so, I have used local block instead of variable block.

locals {
  vpc_cidr       = "10.${var.ip_range}.0.0/16"
  subnet_01_cidr = "10.${var.ip_range}.0.0/20"
  subnet_02_cidr = "10.${var.ip_range}.16.0/20"
  subnet_03_cidr = "10.${var.ip_range}.32.0/20"
  subnet_04_cidr = "10.${var.ip_range}.48.0/20"
}


module "vpc_module" {

  source            = "../modules/vpc"
  vpc_cidr_in       = local.vpc_cidr
  subnet_01_cidr_in = local.subnet_01_cidr
  subnet_02_cidr_in = local.subnet_02_cidr
  subnet_03_cidr_in = local.subnet_03_cidr
  subnet_04_cidr_in = local.subnet_04_cidr
  project_tag_in    = local.current_project_tag
  nat_gateway_id_in      = length(module.nat_gateway_module) > 0 ? module.nat_gateway_module[0].nat_gateway_id_out : null
  nat_gateway_enabled_in = var.do_you_want_nat_gateway


}



module "nat_gateway_module" {

  source         = "../modules/nat_gateway"
  count          = var.do_you_want_nat_gateway ? 1 : 0
  project_tag_in = local.current_project_tag
  subnet_1_id_in = module.vpc_module.subnet_1_id_out



}



