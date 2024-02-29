resource "aws_vpc" "ccVPC" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name      = "ccVPC"
    Project   = "CC TF Demo"
    yor_trace = "74655e5c-80d8-4570-8b45-8ccc3f1b2d26"
  }
}