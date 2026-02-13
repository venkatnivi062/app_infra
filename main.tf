module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.cidr_block
  env        = var.env
}

module "subnet" {
  source      = "./modules/subnet"
  vpc_id      = module.vpc.id
  subnet_cidr = var.subnet_cidr
  az          = data.aws_availability_zones.available.names[0]
  env         = var.env
}

module "sg" {
  source = "./modules/security-group"
  vpc_id = module.vpc.id
  env    = var.env
}

module "ec2" {
  source         = "./modules/ec2"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = module.subnet.id
  sg_id          = module.sg.id
  env            = var.env
}
