terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}

variable "do_token" {}
variable "pub_key" {}
variable "pvt_key" {}
variable "docker_pwd" {}

provider "digitalocean" {
  token = var.do_token
}