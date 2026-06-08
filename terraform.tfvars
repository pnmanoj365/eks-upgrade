aws_region = "ap-south-1"

application_name = "myapp"
env              = "dev"

cluster_name    = "myapp-dev"
cluster_version = "1.34"

vpc_id = "vpc-xxxxxxxx"

private_subnet_ids = [
  "subnet-aaa",
  "subnet-bbb",
  "subnet-ccc"
]

control_plane_subnet_ids = [
  "subnet-aaa",
  "subnet-bbb",
  "subnet-ccc"
]

platform_instance_type = "m5.large"
platform_desired_size  = 1
platform_min_size      = 1
platform_max_size      = 5

buss_instance_type = "m5.large"
buss_desired_size  = 1
buss_min_size      = 1
buss_max_size      = 20
