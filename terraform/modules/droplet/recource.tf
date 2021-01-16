provider "digitalocean" {
  token = var.account_token
}

# Build SSH KEY 
resource "tls_private_key" "droplet_ssh_key" {
  algorithm = var.droplet_ssh_algorithm
  rsa_bits  = var.droplet_ssh_bits
}

# Create a web server
resource "digitalocean_droplet" "web" {
  image  = var.droplet_os_type
  name   = var.droplet_name
  region = var.region
  size   = var.droplet_size
}

