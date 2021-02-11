#Main account config variables
account_token   = "8832589a07758107cb646d6ae9233d681524d9a277a1156ee417df6140b454eb"

# Droplet config variables
region             = "fra1"
image_name         = "ubuntu-18-04-x64" 
name               = "OpenVPN-Master"
droplet_size       = "s-1vcpu-1gb"
ssh_keys           = "../modules/ssh/master-ke"
algorithm          = "RSA"
rsa_bits           = 4096
file_permission    = 0600
filename           = "master_key"