#output "private_key_pem" {
#  value = "${tls_private_key.droplet_ssh_key.private_key_pem}"
#}

output "key" {
  value = "${tls_private_key.droplet_ssh_key.public_key_openssh}"
}