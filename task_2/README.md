# Task 2 - Simulate Multiple  Deployment

## Overview
This task demonstrates the creation of multiple deployments using Docker Compose and Terraform. The setup involves spinning up multiple PostgreSQL instances, each representing a separate deployment, and managing their databases and users through Terraform. It simulates a scalable multi-deployment scenario.

## Prerequisites
- **Docker**: Ensure Docker is installed and running on your local machine.
- **Docker Compose**: Installed and accessible via the terminal.
- **Terraform**: Install Terraform (version 1.x or higher is recommended).

 **1. Clone the repository**:

 Clone this repository using the command below:
 ```bash
 git clone https://github.com/rezmaleki/rsm-mngmt-mltpl-deployment.git
 cd rsm-mngmt-mltpl-deployment/task2
```

To run the Terraform setup, you need to provide your own configuration values in a `terraform.tfvars` file. Follow these steps:

**2: Copy the Template File**:

The repository includes a template file named `terraform.tfvars.template` with placeholder values. Copy this file to create your own `terraform.tfvars` file:

```bash
cp terraform/terraform.tfvars.template terraform/terraform.tfvars
```
**3.Edit the terraform.tfvars File**:
Open the newly created terraform.tfvars file in a text editor and replace the placeholder values (<password1>, <readonly_password>, etc.) with your actual data.
```bash
vim terraform/terraform.tfvars
```
**4. Spin Up the PostgreSQL Instance**:

Run the PostgreSQL instance using Docker Compose:
```bash
docker-compose up -d
```
**5. Initialize Terraform**:
Navigate to the terraform directory:
```bash
cd terraform
terraform init
terraform plan
```
**5.Apply Terraform Configuration**
To create the databases and users, run:
```bash
terraform apply
```
