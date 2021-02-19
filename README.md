# terraform_apache_webserver

Deploys a simple Apache web server instance on Ubuntu 20.04 in AWS using Terraform v0.14.6.

Initializes the terraform environment. terraform init

Builds the infrastructure. terraform apply


# MAIN.TF

Includes code to create EC2 instance and adding security groups to Ec2

# SCRIPT.SH

Following script provided in userdata variable to deploy Static content on apche2 web server 

# Variables.tf

Defines the variable servername used in code

# terraform.tfstate

Contains histoty of all the changes to main.tf
