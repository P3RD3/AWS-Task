output "instance_id" {
  description = "ID of the EC2 instance"
  value       = join(",",aws_instance.app_server[*].id)
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = join(",",aws_instance.app_server[*].public_ip)
}

output "instance_name"{
    description = "Name of EC2 instace"
    value = join (",",aws_instance.app_server[*].tags.Name)
}

output "number_of_instaces" {
    description = "Number of EC2 instaces"
    value = var.number_of_ec2instances
}

output "ec2_instance_ami" {
    description = "ami's of instaces"
    value = join (",",aws_instance.app_server[*].ami)
}