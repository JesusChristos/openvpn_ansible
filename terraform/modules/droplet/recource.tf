provider "digitalocean" {
  token = var.account_token
}

# Build SSH KEY 
resource "tls_private_key" "droplet_ssh_key" {
  algorithm = var.droplet_ssh_algorithm
  rsa_bits  = var.droplet_ssh_bits
}
#Added ssh key to digital ocean
resource "digitalocean_ssh_key" "master_key" {
  name       = "Openvpn_master_key"
  public_key = "${tls_private_key.droplet_ssh_key.public_key_openssh}"
}
# Create a web server
resource "digitalocean_droplet" "openvpn_master" {
  image  = var.droplet_os_type
  name   = var.droplet_name
  region = var.region
  size   = var.droplet_size
  ssh_keys = [digitalocean_ssh_key.master_key.fingerprint]
}

