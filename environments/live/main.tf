module "droplets" {
    source = "../../modules/droplets"
    pub_key = var.pub_key
    pvt_key = var.pvt_key
    env_name = "live"
    docker_pwd = var.docker_pwd
}

output "droplet_ip" {
  value = module.droplets[*]
}