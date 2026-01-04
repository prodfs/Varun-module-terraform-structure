aws_region = "ap-south-1"

vpc_cidr            = "192.168.0.0/16"
public_subnet_cidr  = "192.168.1.0/24"
private_subnet_cidr = "192.168.2.0/24"
availability_zone   = "ap-south-1a"

ami_id         = "ami-0abcdef12345"
instance_type  = "t3.micro"
instance_count = 2

bucket_name = "my-prodfs-s3-bucket"
bucket_acl  = "private"
