module "vpc" {
    source  = "terraform-google-modules/network/google//modules/vpc"
    version = "~> 2.5.0"
    project_id   = "var.project"
    network_name = "ak1-vpc"
    shared_vpc_host = false
}

subnets = [
  {
    subnet_name   = "ak-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]