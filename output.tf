output "instance_public_ip" {
  description = "Public IP address of the web server"
  value       = aws_instance.hug_terraform_prjct1_instance1.public_ip
}

output "webpage_url" {
  description = "URL to view the deployed webpage"
  value       = "http://${aws_instance.hug_terraform_prjct1_instance1.public_ip}"
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.hug_terraform_prjct1_vpc.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.hug_terraform_prjct1_subnet.id
}
