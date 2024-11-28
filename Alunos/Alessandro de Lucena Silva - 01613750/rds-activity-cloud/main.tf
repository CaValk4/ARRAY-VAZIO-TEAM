module "rds" {
  source = "./modules/rds"

  db_security_group_id = module.security_group.db_security_group_id
}

module "security_group" {
  source = "./modules/security-group"
}