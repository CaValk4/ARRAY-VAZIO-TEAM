module "ec2" {
  source = "./modules/ec2"

  security_group_allow_http_ssh_id = module.security-group.security_group_id
}

module "security-group" {
  source = "./modules/security-group"

}