resource "aws_vpc" "testing" {
    cidr_block = "192.168.1.0/24"
    tags = {
      "Name" = "vpctesting"
      "Owner" = "Samer"
    }
}

resource "aws_subnet" "test-subnet" {
    vpc_id = aws_vpc.testing.id
    cidr_block = "192.168.1.32/27"
    tags = {
      "Name" = "Testing_Subnet" 
    }
}

resource "aws_instance" "server" {
    ami = var.myami
    instance_type = var.instype
    subnet_id = aws_subnet.test-subnet.id
    tags = {
      "Name" = "webserver"
    }
}

resource "aws_s3_bucket" "b1" {
    bucket_prefix = "fadib1-bucket"
}