variable "region" {
    default  = "eu-west-2"
}

variable "env" {
    default = "prod"
}

variable "theport" {
    default = 8080
}


variable "ami" {
    default  = "ami-061a2d878e5754b62"
}
variable "instance_type" {
    default = "t2.micro"
}
variable "server_port" {
    default = 8000
}

variable "pass" {}
