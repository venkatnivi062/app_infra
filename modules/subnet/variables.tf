variable "vpc_id" {
  description = "VPC ID to attach the subnet"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "az" {
  description = "Availability Zone"
  type        = string
}

variable "env" {
  description = "Environment name"
  type        = string
}
