terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {
  token = var.account_token
}

# Build SSH KEY 
resource "tls_private_key" "droplet_ssh_key" {
  algorithm     = var.algorithm
  rsa_bits      = var.rsa_bits
}

#Added ssh key to digital ocean
resource "digitalocean_ssh_key" "master_key" {
  name       = var.name
  public_key = "${tls_private_key.droplet_ssh_key.public_key_openssh}"
}

#Write pem to localfile
resource "local_file" "private_key" {
    content         = "${tls_private_key.droplet_ssh_key.private_key_pem}"
    filename        = "${path.module}/master-key"
    file_permission = var.file_permission
}

#Write pem to localfile
resource "local_file" "key" {
    content         = "${tls_private_key.droplet_ssh_key.public_key_openssh}"
    filename        = "${path.module}/master-ke"
    file_permission = var.file_permission
}
