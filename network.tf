resource "aws_vpc" "hug_terraform_prjct1_vpc"{

	cidr_block  = var.vpc_cidr
}

resource "aws_subnet" "hug_terraform_prjct1_subnet" {
  vpc_id                  = aws_vpc.hug_terraform_prjct1_vpc.id
  cidr_block               = var.public_subnet
  availability_zone        = var.aws_availability_zone
  map_public_ip_on_launch  = true

}

resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.hug_terraform_prjct1_vpc.id

  tags = {
    Name = "${var.project_name}-igw"
  }
}


resource "aws_route_table" "public_route_tbl" {
  vpc_id = aws_vpc.hug_terraform_prjct1_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_igw.id
  }

  tags = {
    Name = "${var.project_name}-public-rt"
  }
}

resource "aws_route_table_association" "public_route_tbl_assn" {
  subnet_id      = aws_subnet.hug_terraform_prjct1_subnet.id
  route_table_id = aws_route_table.public_route_tbl.id
}
