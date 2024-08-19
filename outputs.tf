output "instance_private_ip" {
    value = aws_instance.server.private_ip
}

output "vpc_cidr" {
    value = aws_vpc.testing.cidr_block
}