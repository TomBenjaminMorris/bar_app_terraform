resource "digitalocean_record" "main-site" {
  domain = "hapihour.io"
  type   = "A"
  name   = var.env_name == "live" ? "@" : var.env_name
  value  = digitalocean_droplet.web[0].ipv4_address
}

resource "digitalocean_record" "admin-site" {
  domain = "hapihour.io"
  type   = "A"
  name   = var.env_name == "live" ? "admin" : "admin.${var.env_name}"
  value  = digitalocean_droplet.web[0].ipv4_address
}

resource "digitalocean_record" "CNAME-www" {
  domain = "hapihour.io"
  type   = "CNAME"
  name   = var.env_name == "live" ? "www" : "www.${var.env_name}"
  value  = var.env_name == "live" ? "@" : "${var.env_name}."
}