output "IP-Add" {
  description = "The IP ec2"
  value       = aws_instance.my-instance.public_ip
}

output "state" {
  description = "The state machine"
  value       = aws_instance.my-instance.instance_state
}

output "instance-id" {
  value = aws_instance.my-instance.id
}
