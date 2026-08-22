# HUG Terraform Lagos/Ibadan Challenge

## Week One Project: Deploy a Web Server on AWS

**Objective:** Use Terraform to provision a web server on a Cloud Platform.

## Project Requirements

Using Terraform, provision:

- A custom VPC
- A Public Subnet
- An Internet Gateway
- A Route Table
- A Security Group allowing SSH (22) & HTTP (80) traffic
- A Compute instance in the public subnet
- A Compute instance boot script to install nginx, serve an HTML page, and display the challenge title

---

## Project Workflow

1. Write IAC in different `.tf` files
2. Run `terraform init`
3. Run `terraform plan`
4. Run `terraform apply`
5. Run `terraform destroy`

## Screenshots

1. ec2 instance.png
2. nginx home page.png
---
