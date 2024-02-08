module "roboshop" {
  #source = "../terraform-aws-vpc-common_tags-merge_function"
  source = "git::https://github.com/Gokul-sivakumarreddy-devops/14-terraform-aws-vpc.git?ref=main" #if we want to refer in interner
  project_name = var.project_name
  enviroment = var.enviroment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags

  # public subnet
  public_subnets_cidr = var.public_subnets_cidr

  # private subnet
  private_subnets_cidr = var.private_subnets_cidr


  # Database subnet
  database_subnets_cidr = var.database_subnets_cidr

  #peering
  is_peering_required = var.is_peering_required
}