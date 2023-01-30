output "ec2-public-ip" {
  value = aws_instance.my-instance-public.public_ip
}
output "ec2-private-ip" {
  value = aws_instance.my-instance-private.private_ip
}