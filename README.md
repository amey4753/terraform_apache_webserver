# terraform_apache_webserver

Deploys a simple Apache web server instance on Ubuntu 20.04 in AWS using Terraform v0.14.6.

Launch the ec2 with Terraform
On first usage, you will need to execute terraform init to initialize the terraform providers used.

To deploy the content, 
terraform plan
terraform apply
When terraform is done, you should see a lot of output ending with something like this:

Apply complete! Resources: 14 added, 0 changed, 0 destroyed.

The state of your infrastructure has been saved to the path
below. This state is required to modify and destroy your
infrastructure, so keep it safe. To inspect the complete state
use the `terraform show` command.

State path: terraform.tfstate

Outputs:

clients_dns = internal-es-test-client-lb-963348710.eu-central-1.elb.amazonaws.com

# MAIN.TF

Includes code to create EC2 instance and adding security groups to Ec2

# SCRIPT.SH

Following script provided in userdata variable to deploy Static content on apche2 web server 

# Variables.tf

Defines the variable servername used in code

# terraform.tfstate

Contains histoty of all the changes to main.tf

# Checker Script


1.copy the script to folder on your local machine
2.navigate to folder 
3.run the script 


