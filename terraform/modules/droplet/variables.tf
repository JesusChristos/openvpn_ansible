# Main account config variables
variable "account_token" {}

# Droplet config variables
variable "region" {
    type    = string
    default = "fra1"
}

variable "image_name" {
    type    = string
    default = "ubuntu.16.04"
}

variable "name" {
    type    = string
    default = "OpenVPN-Master"
}

variable "droplet_size" {
    type    = string
    default = "s-1vcpu-1gb"
}

variable "ssh_keys" {
    default = "../module/master-ke"
}
