#Main account config variables
variable "account_token" {}

# Droplet config variables
variable "algorithm" {
    default = "RSA"
}
variable "rsa_bits" {
    default = 4096
}
variable "name" {
    default = "master_key"
}
variable "file_permission" {
    default = 0600
}
variable "filename" {}