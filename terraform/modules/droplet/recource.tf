provider "digitalocean" {
  token = var.account_token
}

# Create a web server
resource "digitalocean_droplet" "openvpn_master" {
  image  = var.droplet_os_type
  name   = var.droplet_name
  region = var.region
  size   = var.droplet_size
  ssh_keys = [digitalocean_ssh_key.master_key.fingerprint]
}

