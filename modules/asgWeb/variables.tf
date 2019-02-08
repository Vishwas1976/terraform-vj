variable "region" {
    default  = "eu-west-2"
}

variable "theport" {
    default = 8080
}


variable "elbPort" {
    default = 80
}

variable "ami" {
    default  = "ami-061a2d878e5754b62"
}
variable "instance_type" {
    default = "t2.micro"
}


variable "env" {
    default = "prod"

}