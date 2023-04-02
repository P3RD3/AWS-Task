variable "number_of_ec2instances" {
  description = "Number of instance to be created"
  type = number

}

variable "ec2_instance_type"{
  description = "Type of the ec2 instances"
  type = string
}

variable "ec2_instance_name" {
  description = "Name for the EC2 instance/s"
  type = string
  }