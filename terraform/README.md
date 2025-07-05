# Terraform EKS Deployment

This repository contains Terraform scripts for deploying an Amazon Elastic Kubernetes Service (EKS) cluster and associated resources.

## Prerequisites

- AWS account with necessary permissions
- Terraform installed (version 0.14+)
- kubectl installed
- AWS CLI installed and configured

## Resources Created

This Terraform script will create the following resources:

- An EKS cluster
- Associated worker nodes
- Necessary IAM roles and security groups
- VPC, Subnets, and other networking resources

## Usage

1. Clone this repository:
   ```
   git clone https://github.com/zubairzb/demo.git
   ```
2. Navigate to the repository:
   ```
   cd demo/terraform
   ```
3. Initialize Terraform:
   ```
   terraform init
   ```
4. Create a plan:
   ```
   terraform plan -var-file="env.tfvars" -out=tfplan
   ```
5. Apply the plan:
   ```
   terraform apply "tfplan"
   ```

