terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.5.0"
    }
  }
}

provider "digitalocean" {
  token = var.account_token
}

resource "digitalocean_ssh_key" "default" {
  name       = "Terraform Example"
  public_key = var.ssh_keys
}

# Create droplet
resource "digitalocean_droplet" "openvpn_master" {
  name            = var.name
  image           = var.image_name
  region          = var.region
  size            = var.droplet_size
  #ssh_keys        = var.ssh_keys
  ssh_keys        = [digitalocean_ssh_key.default.fingerprint]
}