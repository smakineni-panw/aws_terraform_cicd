resource "aws_vpc" "new" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name    = "ccVPC"
    owner = "smakineni"
  }
}