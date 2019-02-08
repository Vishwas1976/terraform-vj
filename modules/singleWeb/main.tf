provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "theSingleWeb" {
    ami = "ami-061a2d878e5754b62"
    instance_type = "t2.micro"
    user_data = "${var.user_data}"
    
    key_name = "drvishwas"
    tags {
        Name = "theSingleWeb"
    }
    security_groups = ["${aws_security_group.SecGroupWeb.name}"]
}


resource "aws_security_group" "SecGroupWeb" {
    ingress{
        from_port = 22 
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
}