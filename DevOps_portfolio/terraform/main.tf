provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "rmq" {
    ami = "ami-01e36b7901e884a10"
    instance_type = "t2.micro"
    key_name = "ansible "
    vpc_security_group_ids = ["sg-065dd20ba27c64eea"]

    tags = {
        Name = terraform
        group = tf_group
    }
}