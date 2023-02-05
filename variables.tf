variable "region" {
  default     = "us-east-1"
  description = "The AWS region to use"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "The AWS instance type to use"
}

variable "ami" {
  default     = "ami-0ff8a91507f77f867"
  description = "The AWS AMI to use"
}

variable "subnet_ids" {
  type        = list(string)
  default     = ["subnet-0a1b2c3d4e5f6g7h8", "subnet-0a1b2c3d4e5f6g7h9"]
  description = "The AWS subnet ids to use"
}

variable "availability_zones" {
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
  description = "The AWS availability zones to use"
}
variable "vpc" {
  default     = "alt_vpc"
  description = "The AWS VPC to use"
}