resource "aws_instance" "hug_terraform_prjct1_instance1" {
  ami                         = "ami-0aba19e56f3eaec05"
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.hug_terraform_prjct1_subnet.id
  vpc_security_group_ids      = [aws_security_group.hug_terraform_prjct1_sc_grp.id]
  associate_public_ip_address = true
  key_name = "hug-terraform-key"


  user_data = templatefile("${path.module}/user_data.sh.tpl", {
    full_name = var.full_name
  })

  tags = {
    Name = "${var.project_name}-web-server"
  }
}