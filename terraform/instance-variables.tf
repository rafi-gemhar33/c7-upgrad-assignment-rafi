
variable "instance_type" {
  description = "type of instance"
  type        = string
  default     = "t2.micro"
}

variable "instance_keypair" {
  description = "ssh key pair"
  type        = string
  default     = "RHEL"
}

variable "private_instance_count" {
  description = "count of private instance"
  type        = number
  default     = 1
}
