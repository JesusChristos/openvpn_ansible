# Main account config variables
variable "account_token" {}

# Droplet config variables
variable "region" {}
variable "image_name" {}
variable "name" {}
variable "droplet_size" {}
variable "ssh_keys" {}


# Droplet SSH config variables
variable "algorithm" {}
variable "rsa_bits" {}
variable "filename" {}
variable "file_permission" {}
#variable "ssh_key_fingerprint" {
#  description = "Fingerprint of the public ssh key stored on DigitalOcean"
#}