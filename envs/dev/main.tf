module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "10.0.0.0/16"
  env        = "dev"
}

module "subnet" {
  source      = "../../modules/subnet"
  vpc_id      = module.vpc.id
  subnet_cidr = "10.0.1.0/24"
  az          = "us-east-1a"
  env         = "dev"
}

module "sg" {
  source = "../../modules/security-group"
  vpc_id = module.vpc.id
  env    = "dev"
}

module "ec2" {
  source         = "../../modules/ec2"
  ami_id         = "ami-0c55b159cbfafe1f0" # Example Amazon Linux 2
  instance_type  = "t2.micro"
  subnet_id      = module.subnet.id
  sg_id          = module.sg.id
  env            = "dev"
}
