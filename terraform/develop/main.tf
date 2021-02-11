terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.5.0"
    }
  }
}

# Cloud Provider
provider "digitalocean" {
  token = var.account_token
}

# Create  master server
module "droplet" {
  source = "..//modules/droplet"
  
  account_token = var.account_token
  image_name    = var.image_name
  name          = var.name
  region        = var.region
  droplet_size  = var.droplet_size
  ssh_keys      = var.ssh_keys
}



# Build_SSH_KEY
module "ssh" {                                                            # https://www.terraform.io/docs/language/modules/develop/composition.html
  source = "..//modules/ssh"
  
  account_token     = var.account_token
  algorithm         = var.algorithm
  rsa_bits          = var.rsa_bits
  filename          = var.filename
  file_permission   = var.file_permission
}
