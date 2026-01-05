module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
}

module "ec2" {
  source         = "./modules/ec2"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  instance_count = var.instance_count
  subnet_id      = module.vpc.public_subnet_id
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}
