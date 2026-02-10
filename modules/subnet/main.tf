resource "aws_subnet" "public" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr
  availability_zone = var.az
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.env}-public-subnet"
  }
}
