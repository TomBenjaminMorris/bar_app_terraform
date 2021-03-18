resource "digitalocean_record" "main-site" {
  domain = "hapihour.io"
  type   = "A"
  name   = var.env_name
  value  = digitalocean_droplet.web[0].ipv4_address
}

resource "digitalocean_record" "admin-site" {
  domain = "hapihour.io"
  type   = "A"
  name   = "admin.${var.env_name}"
  value  = digitalocean_droplet.web[0].ipv4_address
}