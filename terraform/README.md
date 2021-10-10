Terraform docs - https://www.terraform.io/

Searched modules:
    1) providers https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs
    2) actual provision - self study

#### Initial commands
export DIGITALOCEAN_TOKEN=your_token

terraform init
terraform plan -out droplet.tfplan
terraform apply

#### Deletion
terraform destroy